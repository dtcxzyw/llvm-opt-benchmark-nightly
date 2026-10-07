Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/compare?download=true
inline.NumInlined: 2996
inline.NumDeleted: 1287
begin_hunk_0_@_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA28_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = load ptr, ptr %1, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !149
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_11BooleanTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon, align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167, !nonnull !37, !align !168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit:    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169, !nonnull !37, !align !168
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 3 uses
  %.not.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i1, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !144, !range !36, !noundef !37
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.w, ptr %i.y, ptr null, !prof !95
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit3

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit3:   ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit, %bb.c
  %.0.i2 = phi ptr [ %i.z, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit ]
  store ptr %.0.i2, ptr %i.b, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.a, ptr %3, align 8, !tbaa !769
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !769
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !144, !range !36, !noundef !37
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ne ptr %i.ah, null
  %or.cond.not.i = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !89
  %i.al = call fastcc noundef zeroext i1 @_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_11BooleanTypeEENKUlllE_clEll(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_11BooleanTypeEEUlllE_EEvOT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !171
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = add nsw i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.au)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.av = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 1      ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = extractvalue { i64, i64 } %i.av, 0
  %i.az = call fastcc noundef zeroext i1 @_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_11BooleanTypeEENKUlllE_clEll(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 noundef %i.ay, i64 noundef %i.aw)
  br i1 %i.az, label %bb.f, label %bb.h, !llvm.loop !766

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.ba, align 8, !tbaa !90
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_11BooleanTypeEEUlllE_EEvOT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_11BooleanTypeEEUlllE_EEvOT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !770
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !776, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !776 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !776 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !776
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !776, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !776
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !776, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !776
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !776 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !776
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !776, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !776
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !776 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !776, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !776 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIaEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !776
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !776
  %i.ap = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !776
  %i.as = getelementptr inbounds i8, ptr %.0.i.i2.i, i64 %i.ar
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.am), !noalias !776
  %i.at = icmp eq i32 %bcmp.i.i.i, 0
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 8, !tbaa !90, !noalias !776
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_8Int8TypeEaEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171, !noalias !776
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !87, !noalias !776
  %i.ba = add nsw i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !89, !noalias !776
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.ba, i64 noundef %i.bc), !noalias !776
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.be = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !776 ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = extractvalue { i64, i64 } %i.be, 0      ; 2 uses
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !87, !noalias !776
  %i.bj = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bh
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !776
  %i.bm = getelementptr inbounds i8, ptr %.0.i.i2.i, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bh
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.bn, i64 %i.bf), !noalias !776
  %i.bo = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bo, label %bb.f, label %bb.h, !llvm.loop !773

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.bp, align 8, !tbaa !90, !noalias !776
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !776
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_8Int8TypeEaEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_8Int8TypeEaEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !777
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !783, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !783 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !783 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !783
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !783, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !783
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !783, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !783
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !783 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !783
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !783, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !783
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !783 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !783, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !783 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !783
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !783
  %i.ap = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !783
  %i.as = getelementptr inbounds i8, ptr %.0.i.i2.i, i64 %i.ar
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.am), !noalias !783
  %i.at = icmp eq i32 %bcmp.i.i.i, 0
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 8, !tbaa !90, !noalias !783
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9UInt8TypeEhEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !783
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171, !noalias !783
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !87, !noalias !783
  %i.ba = add nsw i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !89, !noalias !783
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.ba, i64 noundef %i.bc), !noalias !783
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.be = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !783 ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = extractvalue { i64, i64 } %i.be, 0      ; 2 uses
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !87, !noalias !783
  %i.bj = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bh
  %i.bl = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !783
  %i.bm = getelementptr inbounds i8, ptr %.0.i.i2.i, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bh
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.bn, i64 %i.bf), !noalias !783
  %i.bo = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bo, label %bb.f, label %bb.h, !llvm.loop !780

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.bp, align 8, !tbaa !90, !noalias !783
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !783
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9UInt8TypeEhEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9UInt8TypeEhEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !784
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !790, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !790 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !790 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !790
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !790, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !790
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !790, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !790
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !790 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !790
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !790, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !790
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !790 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !790, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !790 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !790
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !790
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !790
  %i.as = getelementptr inbounds [2 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !790
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !790
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int16TypeEsEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !790
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !790
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !790
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !790
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !790
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !790 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !790
  %i.bk = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !790
  %i.bn = getelementptr inbounds [2 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 1
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !790
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !787

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !790
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !790
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int16TypeEsEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int16TypeEsEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !791
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !797, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !797 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !797 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !797
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !797, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !797
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !797, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !797
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !797 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !797
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !797, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !797
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !797 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !797, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !797 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !797
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !797
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !797
  %i.as = getelementptr inbounds [2 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !797
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !797
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt16TypeEtEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !797
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !797
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !797
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !797
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !797
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !797 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !797
  %i.bk = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !797
  %i.bn = getelementptr inbounds [2 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 1
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !797
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !794

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !797
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !797
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt16TypeEtEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt16TypeEtEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !798
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !804, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !804 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !804 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !804
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !804, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !804
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !804, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !804
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !804 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !804
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !804, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !804
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !804 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !804, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !804 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !804
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !804
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !804
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !804
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !804
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int32TypeEiEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !804
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !804
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !804
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !804
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !804
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !804 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !804
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !804
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 2
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !804
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !801

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !804
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !804
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int32TypeEiEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int32TypeEiEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !805
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !811, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !811 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !811 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !811
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !811, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !811
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !811, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !811
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !811 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !811
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !811, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !811
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !811 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !811, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !811 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIjEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !811
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !811
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !811
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !811
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !811
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt32TypeEjEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !811
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !811
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !811
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !811
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !811
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !811 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !811
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !811
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 2
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !811
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !808

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !811
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !811
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt32TypeEjEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt32TypeEjEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !812
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !818, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !818 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !818 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !818
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !818, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !818
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !818, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !818
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !818 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !818
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !818, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !818
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !818 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !818, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !818 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !818
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !818
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !818
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !818
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !818
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int64TypeElEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !818
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !818
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !818
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !818
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !818
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !818 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !818
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !818
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !818
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !815

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !818
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !818
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int64TypeElEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_9Int64TypeElEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !819
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr18is_primitive_ctypeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !825, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !825 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !825 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !825
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !825, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !825
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !825, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !825
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !825 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !825
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !825, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !825
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !825 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !825, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !825 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesImEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !825
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !825
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !825
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !825
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !825
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt64TypeEmEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !825
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !825
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !825
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !825
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !825
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !825 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !825
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !825
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !825
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !822

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !825
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !825
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt64TypeEmEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10UInt64TypeEmEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !826
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_13HalfFloatTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %6 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %7 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %8 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %9 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %10 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %11 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %12 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %13 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %14 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %15 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %16 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %17 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %18 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %19 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %20 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %21 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %22 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %23 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %24 = alloca %"class.arrow::util::Float16", align 2 ; 4 uses
  %25 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !842, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !842 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !842 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !842
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !842
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !842, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !842
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !842 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !842
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !842
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit.i ] ; 16 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !180, !noalias !842, !nonnull !37, !align !168 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !85, !range !36, !noalias !842, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !81, !range !36, !noalias !842, !noundef !37
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !181, !range !36, !noalias !842, !noundef !37
  %i.an = trunc nuw i8 %i.am to i1                ; 4 uses
  br i1 %i.ah, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i
  %.val.i.i.i.i.i = load double, ptr %i.ae, align 8, !tbaa !145, !noalias !842
  %i.ao = fptrunc double %.val.i.i.i.i.i to float ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !171, !noalias !842
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.at = add nsw i64 %i.as, %i.aq                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !89, !noalias !842 ; 12 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !842 ; 9 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !842 ; 2 uses
  %i.bb = icmp ne ptr %i.ba, null
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.k, label %.thread.i.i.i.i.i.i.i.i, !prof !179

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.g, %bb.f
  %i.bc = icmp sgt i64 %i.av, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.h

bb.h:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ce, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.bg = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.bh = getelementptr [2 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !842
  %i.bk = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.bl = getelementptr [2 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !182, !noalias !842 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !842
  store i16 %i.bi, ptr %23, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25, !noalias !842
  store i16 %i.bm, ptr %24, align 2, !noalias !842
  %i.bn = and i16 %i.bi, 32767
  %i.bo = icmp samesign ugt i16 %i.bn, 31744      ; 2 uses
  %i.bp = and i16 %i.bm, 32767
  %i.bq = icmp samesign ugt i16 %i.bp, 31744      ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = icmp eq i16 %i.bi, %i.bm
  br i1 %i.br, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bs = or i16 %i.bm, %i.bi
  %i.bt = and i16 %i.bs, 32767
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bu = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %i.bu, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.j, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %23), !noalias !842
  %i.bw = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %24), !noalias !842
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = call float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp ole float %i.by, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.j ], [ true, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !842
  %i.ca = load i8, ptr %i.bd, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.cb = icmp ne i8 %i.ca, 0
  %i.cc = and i1 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.cb
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.bd, align 8, !tbaa !90, !noalias !842
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit, label %bb.h, !llvm.loop !829

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef %i.av), !noalias !842
  %i.cf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %25), !noalias !842 ; 2 uses
  %i.cg = extractvalue { i64, i64 } %i.cf, 1      ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i:               ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i
  %i.ck = phi i64 [ %i.dq, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cl = phi { i64, i64 } [ %i.dp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i ], [ %i.cf, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ]
  %i.cm = extractvalue { i64, i64 } %i.cl, 0
  %i.cn = icmp sgt i64 %i.ck, 0
  br i1 %i.cn, label %.lr.ph.i10.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i
  %.05.i11.i.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.co = add nsw i64 %.05.i11.i.i.i.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.cp = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.cq = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.co
  %i.cr = getelementptr [2 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.ct = load i64, ptr %i.cj, align 8, !tbaa !88, !noalias !842
  %i.cu = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.co
  %i.cv = getelementptr [2 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !182, !noalias !842 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !842
  store i16 %i.cs, ptr %21, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !842
  store i16 %i.cw, ptr %22, align 2, !noalias !842
  %i.cx = and i16 %i.cs, 32767
  %i.cy = icmp samesign ugt i16 %i.cx, 31744      ; 2 uses
  %i.cz = and i16 %i.cw, 32767
  %i.da = icmp samesign ugt i16 %i.cz, 31744      ; 2 uses
  %or.cond.i.i.i.i12.i.i.i.i.i.i.i.i.i = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond.i.i.i.i12.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i10.i.i.i.i.i.i.i.i.i
  %i.db = icmp eq i16 %i.cs, %i.cw
  br i1 %i.db, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.dc = or i16 %i.cw, %i.cs
  %i.dd = and i16 %i.dc, 32767
  %spec.select.i.i.i.i14.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %spec.select.i.i.i.i14.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i15.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i10.i.i.i.i.i.i.i.i.i
  %i.de = select i1 %i.cy, i1 %i.da, i1 false
  br i1 %i.de, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i15.i.i.i.i.i.i.i.i.i

.thread.i.i.i15.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i.i.i.i.i
  %i.df = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %21), !noalias !842
  %i.dg = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %22), !noalias !842
  %i.dh = fsub float %i.df, %i.dg
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp ole float %i.di, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i15.i.i.i.i.i.i.i.i.i, %bb.m, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i17.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.m ], [ true, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i.i.i.i.i ], [ %i.dj, %.thread.i.i.i15.i.i.i.i.i.i.i.i.i ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !842
  %i.dk = load i8, ptr %i.ci, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.dl = icmp ne i8 %i.dk, 0
  %i.dm = and i1 %.0.i.i.i17.i.i.i.i.i.i.i.i.i, %i.dl
  %i.dn = zext i1 %i.dm to i8
  store i8 %i.dn, ptr %i.ci, align 8, !tbaa !90, !noalias !842
  %i.do = add nuw nsw i64 %.05.i11.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.do, %i.ck
  br i1 %exitcond.not.i18.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i.i.i.i.i.i, !llvm.loop !829

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %25), !noalias !842 ; 2 uses
  %i.dq = extractvalue { i64, i64 } %i.dp, 1      ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.n:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !842 ; 2 uses
  %i.dx = icmp ne ptr %i.dw, null
  %or.cond.not.i.i.i4.i.i.i.i.i = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %or.cond.not.i.i.i4.i.i.i.i.i, label %bb.s, label %.thread.i.i.i5.i.i.i.i.i, !prof !179

.thread.i.i.i5.i.i.i.i.i:                         ; preds = %bb.o, %bb.n
  %i.dy = icmp sgt i64 %i.av, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i6.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i.i.i.i:                      ; preds = %.thread.i.i.i5.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i6.i.i.i.i.i
  %.05.i.i.i.i.i7.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %i.fc, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eb = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.ec = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.05.i.i.i.i.i7.i.i.i.i.i
  %i.ed = getelementptr [2 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !182, !noalias !842 ; 5 uses
  %i.ef = load i64, ptr %i.ea, align 8, !tbaa !88, !noalias !842
  %i.eg = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %.05.i.i.i.i.i7.i.i.i.i.i
  %i.eh = getelementptr [2 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !182, !noalias !842 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !842
  store i16 %i.ee, ptr %18, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !842
  store i16 %i.ei, ptr %19, align 2, !noalias !842
  %i.ej = and i16 %i.ee, 32767
  %i.ek = icmp samesign ugt i16 %i.ej, 31744      ; 2 uses
  %i.el = and i16 %i.ei, 32767
  %i.em = icmp samesign ugt i16 %i.el, 31744      ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i8.i.i.i.i.i = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %or.cond.i.i.i.i.i.i.i.i8.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = icmp eq i16 %i.ee, %i.ei
  br i1 %i.en, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i.i.i.i.i: ; preds = %bb.q
  %i.eo = or i16 %i.ei, %i.ee
  %i.ep = and i16 %i.eo, 32767
  %spec.select.i.i.i.i.i.i.i.i10.i.i.i.i.i = icmp eq i16 %i.ep, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i10.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i11.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i.i.i.i.i, %bb.q
  %i.eq = xor i16 %i.ei, %i.ee
  %i.er = icmp sgt i16 %i.eq, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.es = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %i.es, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i11.i.i.i.i.i

.thread.i.i.i.i.i.i.i11.i.i.i.i.i:                ; preds = %bb.r, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i.i.i.i.i
  %i.et = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %18), !noalias !842
  %i.eu = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %19), !noalias !842
  %i.ev = fsub float %i.et, %i.eu
  %i.ew = call float @llvm.fabs.f32(float %i.ev)
  %i.ex = fcmp ole float %i.ew, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i11.i.i.i.i.i, %bb.r, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i12.i.i.i.i.i = phi i1 [ %i.er, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.r ], [ %i.ex, %.thread.i.i.i.i.i.i.i11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !842
  %i.ey = load i8, ptr %i.dz, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.ez = icmp ne i8 %i.ey, 0
  %i.fa = and i1 %.0.i.i.i.i.i.i.i12.i.i.i.i.i, %i.ez
  %i.fb = zext i1 %i.fa to i8
  store i8 %i.fb, ptr %i.dz, align 8, !tbaa !90, !noalias !842
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i7.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13.i.i.i.i.i = icmp eq i64 %i.fc, %i.av
  br i1 %exitcond.not.i.i.i.i.i13.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit, label %bb.p, !llvm.loop !830

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull %i.dw, i64 noundef %i.at, i64 noundef %i.av), !noalias !842
  %i.fd = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %20), !noalias !842 ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %._crit_edge.i.i.i.i16.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i14.i.i.i.i.i

.lr.ph.i.preheader.i.i.i14.i.i.i.i.i:             ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i15.i.i.i.i.i

.lr.ph.i.i.i.i15.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i14.i.i.i.i.i
  %i.fi = phi i64 [ %i.gq, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.preheader.i.i.i14.i.i.i.i.i ] ; 2 uses
  %i.fj = phi { i64, i64 } [ %i.gp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i ], [ %i.fd, %.lr.ph.i.preheader.i.i.i14.i.i.i.i.i ]
  %i.fk = extractvalue { i64, i64 } %i.fj, 0
  %i.fl = icmp sgt i64 %i.fi, 0
  br i1 %i.fl, label %.lr.ph.i10.i.i.i.i17.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i17.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i15.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i
  %.05.i11.i.i.i.i18.i.i.i.i.i = phi i64 [ %i.go, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i15.i.i.i.i.i ] ; 2 uses
  %i.fm = add nsw i64 %.05.i11.i.i.i.i18.i.i.i.i.i, %i.fk ; 2 uses
  %i.fn = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.fo = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.fm
  %i.fp = getelementptr [2 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !182, !noalias !842 ; 5 uses
  %i.fr = load i64, ptr %i.fh, align 8, !tbaa !88, !noalias !842
  %i.fs = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.fm
  %i.ft = getelementptr [2 x i8], ptr %i.fs, i64 %i.fr
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !182, !noalias !842 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !842
  store i16 %i.fq, ptr %16, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !842
  store i16 %i.fu, ptr %17, align 2, !noalias !842
  %i.fv = and i16 %i.fq, 32767
  %i.fw = icmp samesign ugt i16 %i.fv, 31744      ; 2 uses
  %i.fx = and i16 %i.fu, 32767
  %i.fy = icmp samesign ugt i16 %i.fx, 31744      ; 2 uses
  %or.cond.i.i.i.i12.i.i.i.i19.i.i.i.i.i = select i1 %i.fw, i1 true, i1 %i.fy
  br i1 %or.cond.i.i.i.i12.i.i.i.i19.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i10.i.i.i.i17.i.i.i.i.i
  %i.fz = icmp eq i16 %i.fq, %i.fu
  br i1 %i.fz, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i.i.i.i.i: ; preds = %bb.t
  %i.ga = or i16 %i.fu, %i.fq
  %i.gb = and i16 %i.ga, 32767
  %spec.select.i.i.i.i14.i.i.i.i21.i.i.i.i.i = icmp eq i16 %i.gb, 0
  br i1 %spec.select.i.i.i.i14.i.i.i.i21.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i15.i.i.i.i22.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i.i.i.i.i, %bb.t
  %i.gc = xor i16 %i.fu, %i.fq
  %i.gd = icmp sgt i16 %i.gc, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i10.i.i.i.i17.i.i.i.i.i
  %i.ge = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %i.ge, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i15.i.i.i.i22.i.i.i.i.i

.thread.i.i.i15.i.i.i.i22.i.i.i.i.i:              ; preds = %bb.u, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i.i.i.i.i
  %i.gf = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %16), !noalias !842
  %i.gg = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %17), !noalias !842
  %i.gh = fsub float %i.gf, %i.gg
  %i.gi = call float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp ole float %i.gi, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i15.i.i.i.i22.i.i.i.i.i, %bb.u, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i.i.i.i23.i.i.i.i.i = phi i1 [ %i.gd, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i.i.i.i.i ], [ true, %bb.u ], [ %i.gj, %.thread.i.i.i15.i.i.i.i22.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !842
  %i.gk = load i8, ptr %i.fg, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.gl = icmp ne i8 %i.gk, 0
  %i.gm = and i1 %.0.i.i.i17.i.i.i.i23.i.i.i.i.i, %i.gl
  %i.gn = zext i1 %i.gm to i8
  store i8 %i.gn, ptr %i.fg, align 8, !tbaa !90, !noalias !842
  %i.go = add nuw nsw i64 %.05.i11.i.i.i.i18.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i.i.i24.i.i.i.i.i = icmp eq i64 %i.go, %i.fi
  br i1 %exitcond.not.i18.i.i.i.i24.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i17.i.i.i.i.i, !llvm.loop !830

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i15.i.i.i.i.i
  %i.gp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %20), !noalias !842 ; 2 uses
  %i.gq = extractvalue { i64, i64 } %i.gp, 1      ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %._crit_edge.i.i.i.i16.i.i.i.i.i, label %.lr.ph.i.i.i.i15.i.i.i.i.i

._crit_edge.i.i.i.i16.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.v:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i29.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !842 ; 2 uses
  %i.gx = icmp ne ptr %i.gw, null
  %or.cond.not.i.i.i.i28.i.i.i.i = select i1 %i.gu, i1 %i.gx, i1 false
  br i1 %or.cond.not.i.i.i.i28.i.i.i.i, label %bb.aa, label %.thread.i.i.i.i29.i.i.i.i, !prof !179

.thread.i.i.i.i29.i.i.i.i:                        ; preds = %bb.x, %bb.w
  %i.gy = icmp sgt i64 %i.av, 0
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i.i30.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i30.i.i.i.i:                     ; preds = %.thread.i.i.i.i29.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.y

bb.y:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i30.i.i.i.i
  %.05.i.i.i.i.i.i31.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i30.i.i.i.i ], [ %i.hz, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hb = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.hc = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.05.i.i.i.i.i.i31.i.i.i.i
  %i.hd = getelementptr [2 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !88, !noalias !842
  %i.hg = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %.05.i.i.i.i.i.i31.i.i.i.i
  %i.hh = getelementptr [2 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !182, !noalias !842 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !842
  store i16 %i.he, ptr %13, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !842
  store i16 %i.hi, ptr %14, align 2, !noalias !842
  %i.hj = and i16 %i.he, 32767
  %i.hk = icmp samesign ugt i16 %i.hj, 31744
  %i.hl = and i16 %i.hi, 32767
  %i.hm = icmp samesign ugt i16 %i.hl, 31744
  %or.cond.i.i.i.i.i.i.i.i.i32.i.i.i.i = select i1 %i.hk, i1 true, i1 %i.hm
  br i1 %or.cond.i.i.i.i.i.i.i.i.i32.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hn = icmp eq i16 %i.he, %i.hi
  br i1 %i.hn, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i33.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i33.i.i.i.i: ; preds = %bb.z
  %i.ho = or i16 %i.hi, %i.he
  %i.hp = and i16 %i.ho, 32767
  %spec.select.i.i.i.i.i.i.i.i.i34.i.i.i.i = icmp eq i16 %i.hp, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i.i34.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i33.i.i.i.i, %bb.y
  %i.hq = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %13), !noalias !842
  %i.hr = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %14), !noalias !842
  %i.hs = fsub float %i.hq, %i.hr
  %i.ht = call float @llvm.fabs.f32(float %i.hs)
  %i.hu = fcmp ole float %i.ht, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i33.i.i.i.i, %bb.z
  %.0.i.i.i.i.i.i.i.i35.i.i.i.i = phi i1 [ true, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i33.i.i.i.i ], [ %i.hu, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !842
  %i.hv = load i8, ptr %i.gz, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.hw = icmp ne i8 %i.hv, 0
  %i.hx = and i1 %.0.i.i.i.i.i.i.i.i35.i.i.i.i, %i.hw
  %i.hy = zext i1 %i.hx to i8
  store i8 %i.hy, ptr %i.gz, align 8, !tbaa !90, !noalias !842
  %i.hz = add nuw nsw i64 %.05.i.i.i.i.i.i31.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i36.i.i.i.i = icmp eq i64 %i.hz, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i36.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit, label %bb.y, !llvm.loop !831

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %i.gw, i64 noundef %i.at, i64 noundef %i.av), !noalias !842
  %i.ia = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %15), !noalias !842 ; 2 uses
  %i.ib = extractvalue { i64, i64 } %i.ia, 1      ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %._crit_edge.i.i.i.i.i39.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i37.i.i.i.i

.lr.ph.i.preheader.i.i.i.i37.i.i.i.i:             ; preds = %bb.aa
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i38.i.i.i.i

.lr.ph.i.i.i.i.i38.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i37.i.i.i.i
  %i.if = phi i64 [ %i.jk, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i ], [ %i.ib, %.lr.ph.i.preheader.i.i.i.i37.i.i.i.i ] ; 2 uses
  %i.ig = phi { i64, i64 } [ %i.jj, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i ], [ %i.ia, %.lr.ph.i.preheader.i.i.i.i37.i.i.i.i ]
  %i.ih = extractvalue { i64, i64 } %i.ig, 0
  %i.ii = icmp sgt i64 %i.if, 0
  br i1 %i.ii, label %.lr.ph.i10.i.i.i.i.i40.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i.i40.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i38.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i
  %.05.i11.i.i.i.i.i41.i.i.i.i = phi i64 [ %i.ji, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i38.i.i.i.i ] ; 2 uses
  %i.ij = add nsw i64 %.05.i11.i.i.i.i.i41.i.i.i.i, %i.ih ; 2 uses
  %i.ik = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.il = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.ij
  %i.im = getelementptr [2 x i8], ptr %i.il, i64 %i.ik
  %i.in = load i16, ptr %i.im, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.io = load i64, ptr %i.ie, align 8, !tbaa !88, !noalias !842
  %i.ip = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.ij
  %i.iq = getelementptr [2 x i8], ptr %i.ip, i64 %i.io
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !182, !noalias !842 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !842
  store i16 %i.in, ptr %11, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !842
  store i16 %i.ir, ptr %12, align 2, !noalias !842
  %i.is = and i16 %i.in, 32767
  %i.it = icmp samesign ugt i16 %i.is, 31744
  %i.iu = and i16 %i.ir, 32767
  %i.iv = icmp samesign ugt i16 %i.iu, 31744
  %or.cond.i.i.i.i12.i.i.i.i.i42.i.i.i.i = select i1 %i.it, i1 true, i1 %i.iv
  br i1 %or.cond.i.i.i.i12.i.i.i.i.i42.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i10.i.i.i.i.i40.i.i.i.i
  %i.iw = icmp eq i16 %i.in, %i.ir
  br i1 %i.iw, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i43.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i43.i.i.i.i: ; preds = %bb.ab
  %i.ix = or i16 %i.ir, %i.in
  %i.iy = and i16 %i.ix, 32767
  %spec.select.i.i.i.i14.i.i.i.i.i44.i.i.i.i = icmp eq i16 %i.iy, 0
  br i1 %spec.select.i.i.i.i14.i.i.i.i.i44.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i43.i.i.i.i, %.lr.ph.i10.i.i.i.i.i40.i.i.i.i
  %i.iz = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %11), !noalias !842
  %i.ja = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %12), !noalias !842
  %i.jb = fsub float %i.iz, %i.ja
  %i.jc = call float @llvm.fabs.f32(float %i.jb)
  %i.jd = fcmp ole float %i.jc, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i.i.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i43.i.i.i.i, %bb.ab
  %.0.i.i.i17.i.i.i.i.i45.i.i.i.i = phi i1 [ true, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i.i43.i.i.i.i ], [ %i.jd, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i.i.i.i.i.i ], [ true, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !842
  %i.je = load i8, ptr %i.id, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.jf = icmp ne i8 %i.je, 0
  %i.jg = and i1 %.0.i.i.i17.i.i.i.i.i45.i.i.i.i, %i.jf
  %i.jh = zext i1 %i.jg to i8
  store i8 %i.jh, ptr %i.id, align 8, !tbaa !90, !noalias !842
  %i.ji = add nuw nsw i64 %.05.i11.i.i.i.i.i41.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i.i.i.i46.i.i.i.i = icmp eq i64 %i.ji, %i.if
  br i1 %exitcond.not.i18.i.i.i.i.i46.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i.i40.i.i.i.i, !llvm.loop !831

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i38.i.i.i.i
  %i.jj = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %15), !noalias !842 ; 2 uses
  %i.jk = extractvalue { i64, i64 } %i.jj, 1      ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %._crit_edge.i.i.i.i.i39.i.i.i.i, label %.lr.ph.i.i.i.i.i38.i.i.i.i

._crit_edge.i.i.i.i.i39.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit19.i.i.i.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ac:                                            ; preds = %bb.v
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i8.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.jo = trunc nuw i8 %i.jn to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !842 ; 2 uses
  %i.jr = icmp ne ptr %i.jq, null
  %or.cond.not.i.i.i4.i7.i.i.i.i = select i1 %i.jo, i1 %i.jr, i1 false
  br i1 %or.cond.not.i.i.i4.i7.i.i.i.i, label %bb.ag, label %.thread.i.i.i5.i8.i.i.i.i, !prof !179

.thread.i.i.i5.i8.i.i.i.i:                        ; preds = %bb.ad, %bb.ac
  %i.js = icmp sgt i64 %i.av, 0
  br i1 %i.js, label %.lr.ph.i.i.i.i.i6.i9.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i9.i.i.i.i:                     ; preds = %.thread.i.i.i5.i8.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.ae

bb.ae:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i
  %.05.i.i.i.i.i7.i10.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i ], [ %i.kv, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jv = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.jw = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.05.i.i.i.i.i7.i10.i.i.i.i
  %i.jx = getelementptr [2 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !182, !noalias !842 ; 5 uses
  %i.jz = load i64, ptr %i.ju, align 8, !tbaa !88, !noalias !842
  %i.ka = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %.05.i.i.i.i.i7.i10.i.i.i.i
  %i.kb = getelementptr [2 x i8], ptr %i.ka, i64 %i.jz
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !182, !noalias !842 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !842
  store i16 %i.jy, ptr %8, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !842
  store i16 %i.kc, ptr %9, align 2, !noalias !842
  %i.kd = and i16 %i.jy, 32767
  %i.ke = icmp samesign ugt i16 %i.kd, 31744
  %i.kf = and i16 %i.kc, 32767
  %i.kg = icmp samesign ugt i16 %i.kf, 31744
  %or.cond.i.i.i.i.i.i.i.i8.i11.i.i.i.i = select i1 %i.ke, i1 true, i1 %i.kg
  br i1 %or.cond.i.i.i.i.i.i.i.i8.i11.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i11.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kh = icmp eq i16 %i.jy, %i.kc
  br i1 %i.kh, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i16.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i12.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i12.i.i.i.i: ; preds = %bb.af
  %i.ki = or i16 %i.kc, %i.jy
  %i.kj = and i16 %i.ki, 32767
  %spec.select.i.i.i.i.i.i.i.i10.i13.i.i.i.i = icmp eq i16 %i.kj, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i10.i13.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i16.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i11.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i16.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i12.i.i.i.i, %bb.af
  %i.kk = xor i16 %i.kc, %i.jy
  %i.kl = icmp sgt i16 %i.kk, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i11.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i9.i12.i.i.i.i, %bb.ae
  %i.km = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %8), !noalias !842
  %i.kn = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %9), !noalias !842
  %i.ko = fsub float %i.km, %i.kn
  %i.kp = call float @llvm.fabs.f32(float %i.ko)
  %i.kq = fcmp ole float %i.kp, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i11.i.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i16.i.i.i.i
  %.0.i.i.i.i.i.i.i12.i14.i.i.i.i = phi i1 [ %i.kl, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i16.i.i.i.i ], [ %i.kq, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i.i.i.i.i11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !842
  %i.kr = load i8, ptr %i.jt, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.ks = icmp ne i8 %i.kr, 0
  %i.kt = and i1 %.0.i.i.i.i.i.i.i12.i14.i.i.i.i, %i.ks
  %i.ku = zext i1 %i.kt to i8
  store i8 %i.ku, ptr %i.jt, align 8, !tbaa !90, !noalias !842
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i7.i10.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13.i15.i.i.i.i = icmp eq i64 %i.kv, %i.av
  br i1 %exitcond.not.i.i.i.i.i13.i15.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit, label %bb.ae, !llvm.loop !832

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull %i.jq, i64 noundef %i.at, i64 noundef %i.av), !noalias !842
  %i.kw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %10), !noalias !842 ; 2 uses
  %i.kx = extractvalue { i64, i64 } %i.kw, 1      ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %._crit_edge.i.i.i.i16.i19.i.i.i.i, label %.lr.ph.i.preheader.i.i.i14.i17.i.i.i.i

.lr.ph.i.preheader.i.i.i14.i17.i.i.i.i:           ; preds = %bb.ag
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i15.i18.i.i.i.i

.lr.ph.i.i.i.i15.i18.i.i.i.i:                     ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i14.i17.i.i.i.i
  %i.lb = phi i64 [ %i.mi, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i ], [ %i.kx, %.lr.ph.i.preheader.i.i.i14.i17.i.i.i.i ] ; 2 uses
  %i.lc = phi { i64, i64 } [ %i.mh, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i ], [ %i.kw, %.lr.ph.i.preheader.i.i.i14.i17.i.i.i.i ]
  %i.ld = extractvalue { i64, i64 } %i.lc, 0
  %i.le = icmp sgt i64 %i.lb, 0
  br i1 %i.le, label %.lr.ph.i10.i.i.i.i17.i20.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i

.lr.ph.i10.i.i.i.i17.i20.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i15.i18.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i
  %.05.i11.i.i.i.i18.i21.i.i.i.i = phi i64 [ %i.mg, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i15.i18.i.i.i.i ] ; 2 uses
  %i.lf = add nsw i64 %.05.i11.i.i.i.i18.i21.i.i.i.i, %i.ld ; 2 uses
  %i.lg = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !842
  %i.lh = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.lf
  %i.li = getelementptr [2 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !182, !noalias !842 ; 5 uses
  %i.lk = load i64, ptr %i.la, align 8, !tbaa !88, !noalias !842
  %i.ll = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.lf
  %i.lm = getelementptr [2 x i8], ptr %i.ll, i64 %i.lk
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !182, !noalias !842 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !842
  store i16 %i.lj, ptr %6, align 2, !noalias !842
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !842
  store i16 %i.ln, ptr %7, align 2, !noalias !842
  %i.lo = and i16 %i.lj, 32767
  %i.lp = icmp samesign ugt i16 %i.lo, 31744
  %i.lq = and i16 %i.ln, 32767
  %i.lr = icmp samesign ugt i16 %i.lq, 31744
  %or.cond.i.i.i.i12.i.i.i.i19.i22.i.i.i.i = select i1 %i.lp, i1 true, i1 %i.lr
  br i1 %or.cond.i.i.i.i12.i.i.i.i19.i22.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i22.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i10.i.i.i.i17.i20.i.i.i.i
  %i.ls = icmp eq i16 %i.lj, %i.ln
  br i1 %i.ls, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i23.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i23.i.i.i.i: ; preds = %bb.ah
  %i.lt = or i16 %i.ln, %i.lj
  %i.lu = and i16 %i.lt, 32767
  %spec.select.i.i.i.i14.i.i.i.i21.i24.i.i.i.i = icmp eq i16 %i.lu, 0
  br i1 %spec.select.i.i.i.i14.i.i.i.i21.i24.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i27.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i22.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i27.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i23.i.i.i.i, %bb.ah
  %i.lv = xor i16 %i.ln, %i.lj
  %i.lw = icmp sgt i16 %i.lv, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i22.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i13.i.i.i.i20.i23.i.i.i.i, %.lr.ph.i10.i.i.i.i17.i20.i.i.i.i
  %i.lx = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %6), !noalias !842
  %i.ly = call noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %7), !noalias !842
  %i.lz = fsub float %i.lx, %i.ly
  %i.ma = call float @llvm.fabs.f32(float %i.lz)
  %i.mb = fcmp ole float %i.ma, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i22.i.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i27.i.i.i.i
  %.0.i.i.i17.i.i.i.i23.i25.i.i.i.i = phi i1 [ %i.lw, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i19.i.i.i.i.i27.i.i.i.i ], [ %i.mb, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread5.i.i.i15.i.i.i.i22.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !842
  %i.mc = load i8, ptr %i.kz, align 8, !tbaa !90, !range !36, !noalias !842, !noundef !37
  %i.md = icmp ne i8 %i.mc, 0
  %i.me = and i1 %.0.i.i.i17.i.i.i.i23.i25.i.i.i.i, %i.md
  %i.mf = zext i1 %i.me to i8
  store i8 %i.mf, ptr %i.kz, align 8, !tbaa !90, !noalias !842
  %i.mg = add nuw nsw i64 %.05.i11.i.i.i.i18.i21.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i18.i.i.i.i24.i26.i.i.i.i = icmp eq i64 %i.mg, %i.lb
  br i1 %exitcond.not.i18.i.i.i.i24.i26.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, label %.lr.ph.i10.i.i.i.i17.i20.i.i.i.i, !llvm.loop !832

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i16.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i15.i18.i.i.i.i
  %i.mh = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %10), !noalias !842 ; 2 uses
  %i.mi = extractvalue { i64, i64 } %i.mh, 1      ; 2 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %._crit_edge.i.i.i.i16.i19.i.i.i.i, label %.lr.ph.i.i.i.i15.i18.i.i.i.i

._crit_edge.i.i.i.i16.i19.i.i.i.i:                ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit20.i.i.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ai:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesItEEPKT_i.exit3.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !171, !noalias !842
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !87, !noalias !842 ; 5 uses
  %i.mo = add nsw i64 %i.mn, %i.ml                ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !89, !noalias !842 ; 15 uses
  %.val.i.i.i.i4.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !842 ; 9 uses
  %.not3.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i.i4.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.aj, label %bb.ba

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.an, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i.i11.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.mt = trunc nuw i8 %i.ms to i1
  %i.mu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !842 ; 2 uses
  %i.mw = icmp ne ptr %i.mv, null
  %or.cond.not.i.i.i.i.i10.i.i.i = select i1 %i.mt, i1 %i.mw, i1 false
  br i1 %or.cond.not.i.i.i.i.i10.i.i.i, label %bb.ao, label %.thread.i.i.i.i.i11.i.i.i, !prof !179

.thread.i.i.i.i.i11.i.i.i:                        ; preds = %bb.al, %bb.ak
  %i.mx = icmp sgt i64 %i.mq, 0
  br i1 %i.mx, label %.lr.ph.i.i.i.i.i.i.i12.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i12.i.i.i:                     ; preds = %.thread.i.i.i.i.i11.i.i.i
  %invariant.gep.i.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.mn ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.mz ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.na, align 8, !tbaa !90, !noalias !842
  %i.nb = icmp ne i8 %.promoted.i.i.i.i.i.i.i.i.i.i, 0 ; 3 uses
  %min.iters.check101 = icmp ult i64 %i.mq, 8
  br i1 %min.iters.check101, label %scalar.ph100.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i12.i.i.i
  %n.vec103 = and i64 %i.mq, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert104 = insertelement <8 x i1> poison, i1 %i.nb, i64 0
  %broadcast.splat105 = shufflevector <8 x i1> %broadcast.splatinsert104, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph102
  %index107 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body106 ] ; 3 uses
  %vec.phi108 = phi <8 x i1> [ %broadcast.splat105, %vector.ph102 ], [ %i.nw, %vector.body106 ]
  %i.nc = phi <8 x i1> [ zeroinitializer, %vector.ph102 ], [ %i.nv, %vector.body106 ]
  %i.nd = getelementptr [2 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %index107
  %wide.load109 = load <8 x i16>, ptr %i.nd, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.ne = getelementptr [2 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %index107
  %wide.load110 = load <8 x i16>, ptr %i.ne, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.nf = and <8 x i16> %wide.load109, splat (i16 32767)
  %i.ng = icmp samesign ugt <8 x i16> %i.nf, splat (i16 31744) ; 2 uses
  %i.nh = and <8 x i16> %wide.load110, splat (i16 32767)
  %i.ni = icmp samesign ugt <8 x i16> %i.nh, splat (i16 31744) ; 2 uses
  %i.nj = select <8 x i1> %i.ng, <8 x i1> splat (i1 true), <8 x i1> %i.ni
  %i.nk = xor <8 x i1> %i.nj, splat (i1 true)
  %i.nl = icmp ne <8 x i16> %wide.load109, %wide.load110
  %i.nm = select <8 x i1> %i.nk, <8 x i1> %i.nl, <8 x i1> zeroinitializer
  %i.nn = or <8 x i16> %wide.load110, %wide.load109
  %i.no = and <8 x i16> %i.nn, splat (i16 32767)
  %i.np = icmp ne <8 x i16> %i.no, zeroinitializer
  %i.nq = xor <8 x i1> %i.ng, %i.ni
  %i.nr = select <8 x i1> %i.nm, <8 x i1> %i.np, <8 x i1> zeroinitializer
  %i.ns = or <8 x i1> %i.nq, %i.nr
  %i.nt = freeze <8 x i1> %i.ns                   ; 2 uses
  %i.nu = bitcast <8 x i1> %i.nt to i8
  %.not116 = icmp eq i8 %i.nu, 0                  ; 2 uses
  %i.nv = select i1 %.not116, <8 x i1> %i.nc, <8 x i1> %i.nt ; 2 uses
  %i.nw = select i1 %.not116, <8 x i1> %vec.phi108, <8 x i1> zeroinitializer ; 2 uses
  %index.next111 = add nuw i64 %index107, 8       ; 2 uses
  %i.nx = icmp eq i64 %index.next111, %n.vec103
  br i1 %i.nx, label %middle.block112, label %vector.body106, !llvm.loop !833

middle.block112:                                  ; preds = %vector.body106
  %i.ny = tail call i1 @llvm.experimental.vector.extract.last.active.v8i1(<8 x i1> %i.nw, <8 x i1> %i.nv, i1 %i.nb) ; 2 uses
  %cmp.n113 = icmp eq i64 %i.mq, %n.vec103
  br i1 %cmp.n113, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i12.i.i.i, %middle.block112
  %.ph = phi i1 [ %i.nb, %.lr.ph.i.i.i.i.i.i.i12.i.i.i ], [ %i.ny, %middle.block112 ]
  %.01.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i12.i.i.i ], [ %n.vec103, %middle.block112 ]
  br label %scalar.ph100

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block112
  %.0.i.i.i.i.i.i.i.i.i17.i.i.i.lcssa = phi i1 [ %i.ny, %middle.block112 ], [ %.0.i.i.i.i.i.i.i.i.i17.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.nz = zext i1 %.0.i.i.i.i.i.i.i.i.i17.i.i.i.lcssa to i8
  store i8 %i.nz, ptr %i.na, align 8, !tbaa !90, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

scalar.ph100:                                     ; preds = %scalar.ph100.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.oa = phi i1 [ %.0.i.i.i.i.i.i.i.i.i17.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %scalar.ph100.preheader ] ; 3 uses
  %.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ol, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph100.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.ob = load i16, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %gep3.i.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.oc = load i16, ptr %gep3.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.od = and i16 %i.ob, 32767
  %i.oe = icmp samesign ugt i16 %i.od, 31744      ; 2 uses
  %i.of = and i16 %i.oc, 32767
  %i.og = icmp samesign ugt i16 %i.of, 31744      ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i13.i.i.i = select i1 %i.oe, i1 true, i1 %i.og
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i13.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %scalar.ph100
  %i.oh = icmp eq i16 %i.ob, %i.oc
  br i1 %i.oh, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i14.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i14.i.i.i: ; preds = %bb.am
  %i.oi = or i16 %i.oc, %i.ob
  %i.oj = and i16 %i.oi, 32767
  %spec.select.i.i.i.i.i.i.i.i.i.i15.i.i.i = icmp eq i16 %i.oj, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i15.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i16.i.i.i

bb.an:                                            ; preds = %scalar.ph100
  %i.ok = select i1 %i.oe, i1 %i.og, i1 false
  br i1 %i.ok, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i16.i.i.i

.thread.i.i.i.i.i.i.i.i.i16.i.i.i:                ; preds = %bb.an, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i14.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i16.i.i.i, %bb.an, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i14.i.i.i, %bb.am
  %.0.i.i.i.i.i.i.i.i.i17.i.i.i = phi i1 [ false, %.thread.i.i.i.i.i.i.i.i.i16.i.i.i ], [ %i.oa, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i.i14.i.i.i ], [ %i.oa, %bb.an ], [ %i.oa, %bb.am ] ; 2 uses
  %i.ol = add nuw nsw i64 %.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i18.i.i.i = icmp eq i64 %i.ol, %i.mq
  br i1 %exitcond.not.i.i.i.i.i.i.i18.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph100, !llvm.loop !834

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.mv, i64 noundef %i.mo, i64 noundef %i.mq), !noalias !842
  %i.om = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !842 ; 2 uses
  %i.on = extractvalue { i64, i64 } %i.om, 1      ; 2 uses
  %i.oo = icmp eq i64 %i.on, 0
  br i1 %i.oo, label %._crit_edge.i.i.i.i.i.i21.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i19.i.i.i

.lr.ph.i.preheader.i.i.i.i.i19.i.i.i:             ; preds = %bb.ao
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i.i.i20.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i19.i.i.i
  %i.or = phi i64 [ %i.ql, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i ], [ %i.on, %.lr.ph.i.preheader.i.i.i.i.i19.i.i.i ] ; 5 uses
  %i.os = phi { i64, i64 } [ %i.qk, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i ], [ %i.om, %.lr.ph.i.preheader.i.i.i.i.i19.i.i.i ]
  %i.ot = extractvalue { i64, i64 } %i.os, 0      ; 2 uses
  %i.ou = icmp sgt i64 %i.or, 0
  br i1 %i.ou, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i20.i.i.i
  %i.ov = load i64, ptr %i.mm, align 8, !tbaa !87, !noalias !842
  %invariant.gep.i14.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.ov ; 2 uses
  %i.ow = load i64, ptr %i.oq, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i15.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.ow ; 2 uses
  %.promoted.i16.i.i.i.i.i.i.i.i.i = load i8, ptr %i.op, align 8, !tbaa !90, !noalias !842
  %i.ox = icmp ne i8 %.promoted.i16.i.i.i.i.i.i.i.i.i, 0 ; 3 uses
  %min.iters.check = icmp ult i64 %i.or, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i
  %n.vec = and i64 %i.or, 9223372036854775800     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.ox, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ %broadcast.splat, %vector.ph ], [ %i.pt, %vector.body ]
  %i.oy = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ps, %vector.body ]
  %i.oz = add nsw i64 %index, %i.ot               ; 2 uses
  %i.pa = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.oz
  %wide.load = load <8 x i16>, ptr %i.pa, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.pb = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.oz
  %wide.load99 = load <8 x i16>, ptr %i.pb, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.pc = and <8 x i16> %wide.load, splat (i16 32767)
  %i.pd = icmp samesign ugt <8 x i16> %i.pc, splat (i16 31744) ; 2 uses
  %i.pe = and <8 x i16> %wide.load99, splat (i16 32767)
  %i.pf = icmp samesign ugt <8 x i16> %i.pe, splat (i16 31744) ; 2 uses
  %i.pg = select <8 x i1> %i.pd, <8 x i1> splat (i1 true), <8 x i1> %i.pf
  %i.ph = xor <8 x i1> %i.pg, splat (i1 true)
  %i.pi = icmp ne <8 x i16> %wide.load, %wide.load99
  %i.pj = select <8 x i1> %i.ph, <8 x i1> %i.pi, <8 x i1> zeroinitializer
  %i.pk = or <8 x i16> %wide.load99, %wide.load
  %i.pl = and <8 x i16> %i.pk, splat (i16 32767)
  %i.pm = icmp ne <8 x i16> %i.pl, zeroinitializer
  %i.pn = xor <8 x i1> %i.pd, %i.pf
  %i.po = select <8 x i1> %i.pj, <8 x i1> %i.pm, <8 x i1> zeroinitializer
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = freeze <8 x i1> %i.pp                   ; 2 uses
  %i.pr = bitcast <8 x i1> %i.pq to i8
  %.not = icmp eq i8 %i.pr, 0                     ; 2 uses
  %i.ps = select i1 %.not, <8 x i1> %i.oy, <8 x i1> %i.pq ; 2 uses
  %i.pt = select i1 %.not, <8 x i1> %vec.phi, <8 x i1> zeroinitializer ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !835

middle.block:                                     ; preds = %vector.body
  %i.pv = call i1 @llvm.experimental.vector.extract.last.active.v8i1(<8 x i1> %i.pt, <8 x i1> %i.ps, i1 %i.ox) ; 2 uses
  %cmp.n = icmp eq i64 %i.or, %n.vec
  br i1 %cmp.n, label %._crit_edge.i27.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i, %middle.block
  %.ph122 = phi i1 [ %i.ox, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %i.pv, %middle.block ]
  %.01.i17.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i27.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, %middle.block
  %.0.i.i.i25.i.i.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.pv, %middle.block ], [ %.0.i.i.i25.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i ]
  %i.pw = zext i1 %.0.i.i.i25.i.i.i.i.i.i.i.i.i.lcssa to i8
  store i8 %i.pw, ptr %i.op, align 8, !tbaa !90, !noalias !842
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i
  %i.px = phi i1 [ %.0.i.i.i25.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i ], [ %.ph122, %scalar.ph.preheader ] ; 3 uses
  %.01.i17.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qj, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i ], [ %.01.i17.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.py = add nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, %i.ot ; 2 uses
  %gep.i18.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.py
  %i.pz = load i16, ptr %gep.i18.i.i.i.i.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %gep3.i19.i.i.i.i.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.py
  %i.qa = load i16, ptr %gep3.i19.i.i.i.i.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.qb = and i16 %i.pz, 32767
  %i.qc = icmp samesign ugt i16 %i.qb, 31744      ; 2 uses
  %i.qd = and i16 %i.qa, 32767
  %i.qe = icmp samesign ugt i16 %i.qd, 31744      ; 2 uses
  %or.cond.i.i.i.i20.i.i.i.i.i.i.i.i.i = select i1 %i.qc, i1 true, i1 %i.qe
  br i1 %or.cond.i.i.i.i20.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %scalar.ph
  %i.qf = icmp eq i16 %i.pz, %i.qa
  br i1 %i.qf, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.qg = or i16 %i.qa, %i.pz
  %i.qh = and i16 %i.qg, 32767
  %spec.select.i.i.i.i22.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qh, 0
  br i1 %spec.select.i.i.i.i22.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i23.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %scalar.ph
  %i.qi = select i1 %i.qc, i1 %i.qe, i1 false
  br i1 %i.qi, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i23.i.i.i.i.i.i.i.i.i

.thread.i.i.i23.i.i.i.i.i.i.i.i.i:                ; preds = %bb.aq, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i23.i.i.i.i.i.i.i.i.i, %bb.aq, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i.i.i.i.i, %bb.ap
  %.0.i.i.i25.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.thread.i.i.i23.i.i.i.i.i.i.i.i.i ], [ %i.px, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i.i.i.i.i ], [ %i.px, %bb.aq ], [ %i.px, %bb.ap ] ; 2 uses
  %i.qj = add nuw nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qj, %i.or
  br i1 %exitcond.not.i26.i.i.i.i.i.i.i.i.i, label %._crit_edge.i27.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !836

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i27.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i20.i.i.i
  %i.qk = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !842 ; 2 uses
  %i.ql = extractvalue { i64, i64 } %i.qk, 1      ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %._crit_edge.i.i.i.i.i.i21.i.i.i, label %.lr.ph.i.i.i.i.i.i20.i.i.i

._crit_edge.i.i.i.i.i.i21.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ar:                                            ; preds = %bb.aj
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i.i7.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !noalias !842 ; 2 uses
  %i.qs = icmp ne ptr %i.qr, null
  %or.cond.not.i.i.i4.i.i6.i.i.i = select i1 %i.qp, i1 %i.qs, i1 false
  br i1 %or.cond.not.i.i.i4.i.i6.i.i.i, label %bb.aw, label %.thread.i.i.i5.i.i7.i.i.i, !prof !179

.thread.i.i.i5.i.i7.i.i.i:                        ; preds = %bb.as, %bb.ar
  %i.qt = icmp sgt i64 %i.mq, 0
  br i1 %i.qt, label %.lr.ph.i.i.i.i.i6.i.i8.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i8.i.i.i:                     ; preds = %.thread.i.i.i5.i.i7.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.mn
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i.i.i.i.i8.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.qv
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i.i.i.i.i = load i8, ptr %i.qw, align 8, !tbaa !90, !noalias !842
  %i.qx = icmp ne i8 %.promoted.i.i.i.i.i9.i.i.i.i.i, 0
  br label %bb.at

._crit_edge.i.i.i.i.i19.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.qy = zext i1 %.0.i.i.i.i.i.i.i17.i.i.i.i.i to i8
  store i8 %i.qy, ptr %i.qw, align 8, !tbaa !90, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.at:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i6.i.i8.i.i.i
  %i.qz = phi i1 [ %i.qx, %.lr.ph.i.i.i.i.i6.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i.i17.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01.i.i.i.i.i10.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i8.i.i.i ], [ %i.rn, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i11.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.ra = load i16, ptr %gep.i.i.i.i.i11.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %gep3.i.i.i.i.i12.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.rb = load i16, ptr %gep3.i.i.i.i.i12.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.rc = and i16 %i.ra, 32767
  %i.rd = icmp samesign ugt i16 %i.rc, 31744      ; 2 uses
  %i.re = and i16 %i.rb, 32767
  %i.rf = icmp samesign ugt i16 %i.re, 31744      ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i13.i.i.i.i.i = select i1 %i.rd, i1 true, i1 %i.rf
  br i1 %or.cond.i.i.i.i.i.i.i.i13.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rg = icmp eq i16 %i.ra, %i.rb
  br i1 %i.rg, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i9.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i14.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i14.i.i.i.i.i: ; preds = %bb.au
  %i.rh = or i16 %i.rb, %i.ra
  %i.ri = and i16 %i.rh, 32767
  %spec.select.i.i.i.i.i.i.i.i15.i.i.i.i.i = icmp eq i16 %i.ri, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i15.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i9.i.i.i, label %.thread.i.i.i.i.i.i.i16.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i9.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i14.i.i.i.i.i, %bb.au
  %i.rj = xor i16 %i.rb, %i.ra
  %i.rk = icmp sgt i16 %i.rj, -1
  %i.rl = and i1 %i.qz, %i.rk
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.rm = select i1 %i.rd, i1 %i.rf, i1 false
  br i1 %i.rm, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i16.i.i.i.i.i

.thread.i.i.i.i.i.i.i16.i.i.i.i.i:                ; preds = %bb.av, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i14.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i16.i.i.i.i.i, %bb.av, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i9.i.i.i
  %.0.i.i.i.i.i.i.i17.i.i.i.i.i = phi i1 [ %i.rl, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i.i9.i.i.i ], [ false, %.thread.i.i.i.i.i.i.i16.i.i.i.i.i ], [ %i.qz, %bb.av ] ; 2 uses
  %i.rn = add nuw nsw i64 %.01.i.i.i.i.i10.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i18.i.i.i.i.i = icmp eq i64 %i.rn, %i.mq
  br i1 %exitcond.not.i.i.i.i.i18.i.i.i.i.i, label %._crit_edge.i.i.i.i.i19.i.i.i.i.i, label %bb.at, !llvm.loop !837

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.qr, i64 noundef %i.mo, i64 noundef %i.mq), !noalias !842
  %i.ro = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !842 ; 2 uses
  %i.rp = extractvalue { i64, i64 } %i.ro, 1      ; 2 uses
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %._crit_edge.i.i.i.i22.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i20.i.i.i.i.i

.lr.ph.i.preheader.i.i.i20.i.i.i.i.i:             ; preds = %bb.aw
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i21.i.i.i.i.i

.lr.ph.i.i.i.i21.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i20.i.i.i.i.i
  %i.rt = phi i64 [ %i.ss, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i ], [ %i.rp, %.lr.ph.i.preheader.i.i.i20.i.i.i.i.i ] ; 2 uses
  %i.ru = phi { i64, i64 } [ %i.sr, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i ], [ %i.ro, %.lr.ph.i.preheader.i.i.i20.i.i.i.i.i ]
  %i.rv = extractvalue { i64, i64 } %i.ru, 0
  %i.rw = icmp sgt i64 %i.rt, 0
  br i1 %i.rw, label %.lr.ph.i13.i.i.i.i23.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i23.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i21.i.i.i.i.i
  %i.rx = load i64, ptr %i.mm, align 8, !tbaa !87, !noalias !842
  %invariant.gep.i14.i.i.i.i24.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.rx
  %i.ry = load i64, ptr %i.rs, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i15.i.i.i.i25.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.ry
  %.promoted.i16.i.i.i.i26.i.i.i.i.i = load i8, ptr %i.rr, align 8, !tbaa !90, !noalias !842
  %i.rz = icmp ne i8 %.promoted.i16.i.i.i.i26.i.i.i.i.i, 0
  br label %bb.ax

._crit_edge.i27.i.i.i.i36.i.i.i.i.i:              ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i
  %i.sa = zext i1 %.0.i.i.i25.i.i.i.i34.i.i.i.i.i to i8
  store i8 %i.sa, ptr %i.rr, align 8, !tbaa !90, !noalias !842
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i23.i.i.i.i.i
  %i.sb = phi i1 [ %i.rz, %.lr.ph.i13.i.i.i.i23.i.i.i.i.i ], [ %.0.i.i.i25.i.i.i.i34.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01.i17.i.i.i.i27.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i13.i.i.i.i23.i.i.i.i.i ], [ %i.sq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sc = add nsw i64 %.01.i17.i.i.i.i27.i.i.i.i.i, %i.rv ; 2 uses
  %gep.i18.i.i.i.i28.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i24.i.i.i.i.i, i64 %i.sc
  %i.sd = load i16, ptr %gep.i18.i.i.i.i28.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %gep3.i19.i.i.i.i29.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i25.i.i.i.i.i, i64 %i.sc
  %i.se = load i16, ptr %gep3.i19.i.i.i.i29.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.sf = and i16 %i.sd, 32767
  %i.sg = icmp samesign ugt i16 %i.sf, 31744      ; 2 uses
  %i.sh = and i16 %i.se, 32767
  %i.si = icmp samesign ugt i16 %i.sh, 31744      ; 2 uses
  %or.cond.i.i.i.i20.i.i.i.i30.i.i.i.i.i = select i1 %i.sg, i1 true, i1 %i.si
  br i1 %or.cond.i.i.i.i20.i.i.i.i30.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sj = icmp eq i16 %i.sd, %i.se
  br i1 %i.sj, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i28.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i31.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i31.i.i.i.i.i: ; preds = %bb.ay
  %i.sk = or i16 %i.se, %i.sd
  %i.sl = and i16 %i.sk, 32767
  %spec.select.i.i.i.i22.i.i.i.i32.i.i.i.i.i = icmp eq i16 %i.sl, 0
  br i1 %spec.select.i.i.i.i22.i.i.i.i32.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i28.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i23.i.i.i.i33.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i28.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i31.i.i.i.i.i, %bb.ay
  %i.sm = xor i16 %i.se, %i.sd
  %i.sn = icmp sgt i16 %i.sm, -1
  %i.so = and i1 %i.sb, %i.sn
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.sp = select i1 %i.sg, i1 %i.si, i1 false
  br i1 %i.sp, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i23.i.i.i.i33.i.i.i.i.i

.thread.i.i.i23.i.i.i.i33.i.i.i.i.i:              ; preds = %bb.az, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i31.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i24.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i23.i.i.i.i33.i.i.i.i.i, %bb.az, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i28.i.i.i.i.i.i.i.i.i
  %.0.i.i.i25.i.i.i.i34.i.i.i.i.i = phi i1 [ %i.so, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i28.i.i.i.i.i.i.i.i.i ], [ false, %.thread.i.i.i23.i.i.i.i33.i.i.i.i.i ], [ %i.sb, %bb.az ] ; 2 uses
  %i.sq = add nuw nsw i64 %.01.i17.i.i.i.i27.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i.i35.i.i.i.i.i = icmp eq i64 %i.sq, %i.rt
  br i1 %exitcond.not.i26.i.i.i.i35.i.i.i.i.i, label %._crit_edge.i27.i.i.i.i36.i.i.i.i.i, label %bb.ax, !llvm.loop !837

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i27.i.i.i.i36.i.i.i.i.i, %.lr.ph.i.i.i.i21.i.i.i.i.i
  %i.sr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !842 ; 2 uses
  %i.ss = extractvalue { i64, i64 } %i.sr, 1      ; 2 uses
  %i.st = icmp eq i64 %i.ss, 0
  br i1 %i.st, label %._crit_edge.i.i.i.i22.i.i.i.i.i, label %.lr.ph.i.i.i.i21.i.i.i.i.i

._crit_edge.i.i.i.i22.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit29.i.i.i.i.i.i.i.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.ba:                                            ; preds = %bb.ai
  br i1 %i.an, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i22.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.su = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !noalias !842 ; 2 uses
  %i.sz = icmp ne ptr %i.sy, null
  %or.cond.not.i.i.i.i21.i.i.i.i = select i1 %i.sw, i1 %i.sz, i1 false
  br i1 %or.cond.not.i.i.i.i21.i.i.i.i, label %bb.bg, label %.thread.i.i.i.i22.i.i.i.i, !prof !179

.thread.i.i.i.i22.i.i.i.i:                        ; preds = %bb.bc, %bb.bb
  %i.ta = icmp sgt i64 %i.mq, 0
  br i1 %i.ta, label %.lr.ph.i.i.i.i.i.i23.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i23.i.i.i.i:                     ; preds = %.thread.i.i.i.i22.i.i.i.i
  %invariant.gep.i.i.i.i.i.i24.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.mn
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i.i.i.i.i.i25.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.tc
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i26.i.i.i.i = load i8, ptr %i.td, align 8, !tbaa !90, !noalias !842
  %i.te = icmp ne i8 %.promoted.i.i.i.i.i.i26.i.i.i.i, 0
  br label %bb.bd

._crit_edge.i.i.i.i.i.i33.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.tf = zext i1 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.tf, ptr %i.td, align 8, !tbaa !90, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bd:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i23.i.i.i.i
  %i.tg = phi i1 [ %i.te, %.lr.ph.i.i.i.i.i.i23.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01.i.i.i.i.i.i27.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i23.i.i.i.i ], [ %i.tr, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i.i28.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i.i.i.i24.i.i.i.i, i64 %.01.i.i.i.i.i.i27.i.i.i.i
  %i.th = load i16, ptr %gep.i.i.i.i.i.i28.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %gep3.i.i.i.i.i.i29.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i.i.i.i.i.i25.i.i.i.i, i64 %.01.i.i.i.i.i.i27.i.i.i.i
  %i.ti = load i16, ptr %gep3.i.i.i.i.i.i29.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.tj = and i16 %i.th, 32767
  %i.tk = icmp samesign ugt i16 %i.tj, 31744
  %i.tl = and i16 %i.ti, 32767
  %i.tm = icmp samesign ugt i16 %i.tl, 31744
  %or.cond.i.i.i.i.i.i.i.i.i30.i.i.i.i = select i1 %i.tk, i1 true, i1 %i.tm
  br i1 %or.cond.i.i.i.i.i.i.i.i.i30.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tn = icmp eq i16 %i.th, %i.ti
  br i1 %i.tn, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.to = or i16 %i.ti, %i.th
  %i.tp = and i16 %i.to, 32767
  %spec.select.i.i.i.i.i.i.i.i.i31.i.i.i.i = icmp eq i16 %i.tp, 0
  %i.tq = and i1 %i.tg, %spec.select.i.i.i.i.i.i.i.i.i31.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.bd ], [ %i.tq, %bb.bf ], [ %i.tg, %bb.be ] ; 2 uses
  %i.tr = add nuw nsw i64 %.01.i.i.i.i.i.i27.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i32.i.i.i.i = icmp eq i64 %i.tr, %i.mq
  br i1 %exitcond.not.i.i.i.i.i.i32.i.i.i.i, label %._crit_edge.i.i.i.i.i.i33.i.i.i.i, label %bb.bd, !llvm.loop !838

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.sy, i64 noundef %i.mo, i64 noundef %i.mq), !noalias !842
  %i.ts = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !842 ; 2 uses
  %i.tt = extractvalue { i64, i64 } %i.ts, 1      ; 2 uses
  %i.tu = icmp eq i64 %i.tt, 0
  br i1 %i.tu, label %._crit_edge.i.i.i.i.i36.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i34.i.i.i.i

.lr.ph.i.preheader.i.i.i.i34.i.i.i.i:             ; preds = %bb.bg
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i35.i.i.i.i

.lr.ph.i.i.i.i.i35.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i34.i.i.i.i
  %i.tx = phi i64 [ %i.ut, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i ], [ %i.tt, %.lr.ph.i.preheader.i.i.i.i34.i.i.i.i ] ; 2 uses
  %i.ty = phi { i64, i64 } [ %i.us, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i ], [ %i.ts, %.lr.ph.i.preheader.i.i.i.i34.i.i.i.i ]
  %i.tz = extractvalue { i64, i64 } %i.ty, 0
  %i.ua = icmp sgt i64 %i.tx, 0
  br i1 %i.ua, label %.lr.ph.i13.i.i.i.i.i37.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i37.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i35.i.i.i.i
  %i.ub = load i64, ptr %i.mm, align 8, !tbaa !87, !noalias !842
  %invariant.gep.i14.i.i.i.i.i38.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.ub
  %i.uc = load i64, ptr %i.tw, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i15.i.i.i.i.i39.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.uc
  %.promoted.i16.i.i.i.i.i40.i.i.i.i = load i8, ptr %i.tv, align 8, !tbaa !90, !noalias !842
  %i.ud = icmp ne i8 %.promoted.i16.i.i.i.i.i40.i.i.i.i, 0
  br label %bb.bh

._crit_edge.i25.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i
  %i.ue = zext i1 %.0.i.i.i.i23.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.ue, ptr %i.tv, align 8, !tbaa !90, !noalias !842
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i37.i.i.i.i
  %i.uf = phi i1 [ %i.ud, %.lr.ph.i13.i.i.i.i.i37.i.i.i.i ], [ %.0.i.i.i.i23.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01.i17.i.i.i.i.i41.i.i.i.i = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i37.i.i.i.i ], [ %i.ur, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ug = add nsw i64 %.01.i17.i.i.i.i.i41.i.i.i.i, %i.tz ; 2 uses
  %gep.i18.i.i.i.i.i42.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i.i38.i.i.i.i, i64 %i.ug
  %i.uh = load i16, ptr %gep.i18.i.i.i.i.i42.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %gep3.i19.i.i.i.i.i43.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i.i39.i.i.i.i, i64 %i.ug
  %i.ui = load i16, ptr %gep3.i19.i.i.i.i.i43.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 3 uses
  %i.uj = and i16 %i.uh, 32767
  %i.uk = icmp samesign ugt i16 %i.uj, 31744
  %i.ul = and i16 %i.ui, 32767
  %i.um = icmp samesign ugt i16 %i.ul, 31744
  %or.cond.i.i.i.i20.i.i.i.i.i44.i.i.i.i = select i1 %i.uk, i1 true, i1 %i.um
  br i1 %or.cond.i.i.i.i20.i.i.i.i.i44.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.un = icmp eq i16 %i.uh, %i.ui
  br i1 %i.un, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.uo = or i16 %i.ui, %i.uh
  %i.up = and i16 %i.uo, 32767
  %spec.select.i.i.i.i21.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.up, 0
  %i.uq = and i1 %i.uf, %spec.select.i.i.i.i21.i.i.i.i.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i22.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i.i.i.i23.i.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.bh ], [ %i.uq, %bb.bj ], [ %i.uf, %bb.bi ] ; 2 uses
  %i.ur = add nuw nsw i64 %.01.i17.i.i.i.i.i41.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i24.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ur, %i.tx
  br i1 %exitcond.not.i24.i.i.i.i.i.i.i.i.i, label %._crit_edge.i25.i.i.i.i.i.i.i.i.i, label %bb.bh, !llvm.loop !838

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i25.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i35.i.i.i.i
  %i.us = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !842 ; 2 uses
  %i.ut = extractvalue { i64, i64 } %i.us, 1      ; 2 uses
  %i.uu = icmp eq i64 %i.ut, 0
  br i1 %i.uu, label %._crit_edge.i.i.i.i.i36.i.i.i.i, label %.lr.ph.i.i.i.i.i35.i.i.i.i

._crit_edge.i.i.i.i.i36.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit26.i.i.i.i.i.i.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bk:                                            ; preds = %bb.ba
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i7.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !144, !range !36, !noalias !842, !noundef !37
  %i.ux = trunc nuw i8 %i.uw to i1
  %i.uy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8, !noalias !842 ; 2 uses
  %i.va = icmp ne ptr %i.uz, null
  %or.cond.not.i.i.i4.i6.i.i.i.i = select i1 %i.ux, i1 %i.va, i1 false
  br i1 %or.cond.not.i.i.i4.i6.i.i.i.i, label %bb.bo, label %.thread.i.i.i5.i7.i.i.i.i, !prof !179

.thread.i.i.i5.i7.i.i.i.i:                        ; preds = %bb.bl, %bb.bk
  %i.vb = icmp sgt i64 %i.mq, 0
  br i1 %i.vb, label %.lr.ph.i.i.i.i.i6.i8.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i8.i.i.i.i:                     ; preds = %.thread.i.i.i5.i7.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i9.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.mn
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.vd
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i11.i.i.i.i = load i8, ptr %i.ve, align 8, !tbaa !90, !noalias !842
  %i.vf = icmp ne i8 %.promoted.i.i.i.i.i9.i11.i.i.i.i, 0
  br label %bb.bm

._crit_edge.i.i.i.i.i16.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.vg = zext i1 %.0.i.i.i.i.i.i.i.i17.i.i.i.i to i8
  store i8 %i.vg, ptr %i.ve, align 8, !tbaa !90, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

bb.bm:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i
  %i.vh = phi i1 [ %i.vf, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i17.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %.01.i.i.i.i.i10.i12.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %i.vu, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i11.i13.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i.i.i7.i9.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.vi = load i16, ptr %gep.i.i.i.i.i11.i13.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %gep3.i.i.i.i.i12.i14.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.vj = load i16, ptr %gep3.i.i.i.i.i12.i14.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.vk = and i16 %i.vi, 32767
  %i.vl = icmp samesign ugt i16 %i.vk, 31744
  %i.vm = and i16 %i.vj, 32767
  %i.vn = icmp samesign ugt i16 %i.vm, 31744
  %or.cond.i.i.i.i.i.i.i.i13.i15.i.i.i.i = select i1 %i.vl, i1 true, i1 %i.vn
  br i1 %or.cond.i.i.i.i.i.i.i.i13.i15.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.vo = icmp eq i16 %i.vi, %i.vj
  br i1 %i.vo, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i18.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i16.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i16.i.i.i.i: ; preds = %bb.bn
  %i.vp = or i16 %i.vj, %i.vi
  %i.vq = and i16 %i.vp, 32767
  %spec.select.i.i.i.i.i.i.i.i14.i.i.i.i.i = icmp eq i16 %i.vq, 0
  br i1 %spec.select.i.i.i.i.i.i.i.i14.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i18.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i18.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i16.i.i.i.i, %bb.bn
  %i.vr = xor i16 %i.vj, %i.vi
  %i.vs = icmp sgt i16 %i.vr, -1
  %i.vt = and i1 %i.vh, %i.vs
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i18.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i16.i.i.i.i, %bb.bm
  %.0.i.i.i.i.i.i.i.i17.i.i.i.i = phi i1 [ %i.vt, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i.i.i.i.i.i18.i.i.i.i ], [ false, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i.i.i.i.i.i16.i.i.i.i ], [ false, %bb.bm ] ; 2 uses
  %i.vu = add nuw nsw i64 %.01.i.i.i.i.i10.i12.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %i.vu, %i.mq
  br i1 %exitcond.not.i.i.i.i.i15.i.i.i.i.i, label %._crit_edge.i.i.i.i.i16.i.i.i.i.i, label %bb.bm, !llvm.loop !839

bb.bo:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !842
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.uz, i64 noundef %i.mo, i64 noundef %i.mq), !noalias !842
  %i.vv = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !842 ; 2 uses
  %i.vw = extractvalue { i64, i64 } %i.vv, 1      ; 2 uses
  %i.vx = icmp eq i64 %i.vw, 0
  br i1 %i.vx, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i

.lr.ph.i.preheader.i.i.i17.i.i.i.i.i:             ; preds = %bb.bo
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i18.i.i.i.i.i

.lr.ph.i.i.i.i18.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i
  %i.wa = phi i64 [ %i.wy, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i ], [ %i.vw, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ] ; 2 uses
  %i.wb = phi { i64, i64 } [ %i.wx, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i ], [ %i.vv, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ]
  %i.wc = extractvalue { i64, i64 } %i.wb, 0
  %i.wd = icmp sgt i64 %i.wa, 0
  br i1 %i.wd, label %.lr.ph.i13.i.i.i.i20.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i20.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.we = load i64, ptr %i.mm, align 8, !tbaa !87, !noalias !842
  %invariant.gep.i14.i.i.i.i21.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.we
  %i.wf = load i64, ptr %i.vz, align 8, !tbaa !88, !noalias !842
  %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i = getelementptr [2 x i8], ptr %.0.i.i2.i, i64 %i.wf
  %.promoted.i16.i.i.i.i23.i.i.i.i.i = load i8, ptr %i.vy, align 8, !tbaa !90, !noalias !842
  %i.wg = icmp ne i8 %.promoted.i16.i.i.i.i23.i.i.i.i.i, 0
  br label %bb.bp

._crit_edge.i26.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i
  %i.wh = zext i1 %.0.i.i.i24.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.wh, ptr %i.vy, align 8, !tbaa !90, !noalias !842
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i
  %i.wi = phi i1 [ %i.wg, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %.0.i.i.i24.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i ]
  %.01.i17.i.i.i.i24.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %i.ww, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wj = add nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, %i.wc ; 2 uses
  %gep.i18.i.i.i.i25.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i21.i.i.i.i.i, i64 %i.wj
  %i.wk = load i16, ptr %gep.i18.i.i.i.i25.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %gep3.i19.i.i.i.i26.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i, i64 %i.wj
  %i.wl = load i16, ptr %gep3.i19.i.i.i.i26.i.i.i.i.i, align 2, !tbaa !182, !noalias !842 ; 4 uses
  %i.wm = and i16 %i.wk, 32767
  %i.wn = icmp samesign ugt i16 %i.wm, 31744
  %i.wo = and i16 %i.wl, 32767
  %i.wp = icmp samesign ugt i16 %i.wo, 31744
  %or.cond.i.i.i.i20.i.i.i.i27.i.i.i.i.i = select i1 %i.wn, i1 true, i1 %i.wp
  br i1 %or.cond.i.i.i.i20.i.i.i.i27.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wq = icmp eq i16 %i.wk, %i.wl
  br i1 %i.wq, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i27.i.i.i.i.i.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i19.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i19.i.i.i.i: ; preds = %bb.bq
  %i.wr = or i16 %i.wl, %i.wk
  %i.ws = and i16 %i.wr, 32767
  %spec.select.i.i.i.i22.i.i.i.i.i20.i.i.i.i = icmp eq i16 %i.ws, 0
  br i1 %spec.select.i.i.i.i22.i.i.i.i.i20.i.i.i.i, label %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i27.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i

_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i27.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i19.i.i.i.i, %bb.bq
  %i.wt = xor i16 %i.wl, %i.wk
  %i.wu = icmp sgt i16 %i.wt, -1
  %i.wv = and i1 %i.wi, %i.wu
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i23.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i27.i.i.i.i.i.i.i.i.i, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i19.i.i.i.i, %bb.bp
  %.0.i.i.i24.i.i.i.i.i.i.i.i.i = phi i1 [ %i.wv, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.thread.i.i.i27.i.i.i.i.i.i.i.i.i ], [ false, %_ZN5arrow4utileqENS0_7Float16ES1_.exit.i.i.i21.i.i.i.i.i19.i.i.i.i ], [ false, %bb.bp ] ; 2 uses
  %i.ww = add nuw nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i25.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ww, %i.wa
  br i1 %exitcond.not.i25.i.i.i.i.i.i.i.i.i, label %._crit_edge.i26.i.i.i.i.i.i.i.i.i, label %bb.bp, !llvm.loop !839

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i26.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.wx = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !842 ; 2 uses
  %i.wy = extractvalue { i64, i64 } %i.wx, 1      ; 2 uses
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.i.i.i18.i.i.i.i.i

._crit_edge.i.i.i.i19.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit28.i.i.i.i.i.i.i.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !842
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %.thread.i.i.i5.i.i.i.i.i, %._crit_edge.i.i.i.i16.i.i.i.i.i, %.thread.i.i.i.i29.i.i.i.i, %._crit_edge.i.i.i.i.i39.i.i.i.i, %.thread.i.i.i5.i8.i.i.i.i, %._crit_edge.i.i.i.i16.i19.i.i.i.i, %.thread.i.i.i.i.i11.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i21.i.i.i, %.thread.i.i.i5.i.i7.i.i.i, %._crit_edge.i.i.i.i.i19.i.i.i.i.i, %._crit_edge.i.i.i.i22.i.i.i.i.i, %.thread.i.i.i.i22.i.i.i.i, %._crit_edge.i.i.i.i.i.i33.i.i.i.i, %._crit_edge.i.i.i.i.i36.i.i.i.i, %.thread.i.i.i5.i7.i.i.i.i, %._crit_edge.i.i.i.i.i16.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !843
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_9FloatTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %6 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %7 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %8 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %9 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !880, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !880 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !880 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !880
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !880
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !880, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !880
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !880 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !880
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !880
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i ] ; 16 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !180, !noalias !880, !nonnull !37, !align !168 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !85, !range !36, !noalias !880, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !81, !range !36, !noalias !880, !noundef !37
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !181, !range !36, !noalias !880, !noundef !37
  %i.an = trunc nuw i8 %i.am to i1                ; 4 uses
  br i1 %i.ah, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i
  %.val.i.i.i.i.i = load double, ptr %i.ae, align 8, !tbaa !145, !noalias !880
  %i.ao = fptrunc double %.val.i.i.i.i.i to float ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !171, !noalias !880
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !880 ; 5 uses
  %i.at = add nsw i64 %i.as, %i.aq                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !89, !noalias !880 ; 24 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !880 ; 9 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !880 ; 2 uses
  %i.bb = icmp ne ptr %i.ba, null
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.j, label %.thread.i.i.i.i.i.i.i.i, !prof !179

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.g, %bb.f
  %i.bc = icmp sgt i64 %i.av, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i.i.i
  %invariant.gep.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted7.i.i.i.i.i = load i8, ptr %i.bf, align 8, !tbaa !90, !noalias !880
  %i.bg = icmp ne i8 %.promoted7.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %n.vec415 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.bh = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.bg, i64 0
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat417 = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph414
  %index419 = phi i64 [ 0, %vector.ph414 ], [ %index.next428, %vector.body418 ] ; 3 uses
  %vec.phi420 = phi <4 x i1> [ %i.bh, %vector.ph414 ], [ %predphi426, %vector.body418 ]
  %vec.phi421 = phi <4 x i1> [ splat (i1 true), %vector.ph414 ], [ %predphi427, %vector.body418 ]
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %index419 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load422 = load <4 x float>, ptr %i.bi, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load423 = load <4 x float>, ptr %i.bj, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %index419 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %wide.load424 = load <4 x float>, ptr %i.bk, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load425 = load <4 x float>, ptr %i.bl, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.bm = fcmp oeq <4 x float> %wide.load422, %wide.load424
  %i.bn = fcmp oeq <4 x float> %wide.load423, %wide.load425
  %i.bo = fcmp uno <4 x float> %wide.load422, zeroinitializer
  %i.bp = fcmp uno <4 x float> %wide.load423, zeroinitializer
  %i.bq = fcmp uno <4 x float> %wide.load424, zeroinitializer
  %i.br = fcmp uno <4 x float> %wide.load425, zeroinitializer
  %i.bs = and <4 x i1> %i.bo, %i.bq
  %i.bt = and <4 x i1> %i.bp, %i.br
  %i.bu = fsub <4 x float> %wide.load422, %wide.load424
  %i.bv = fsub <4 x float> %wide.load423, %wide.load425
  %i.bw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bu)
  %i.bx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bv)
  %i.by = fcmp ole <4 x float> %i.bw, %broadcast.splat417
  %i.bz = fcmp ole <4 x float> %i.bx, %broadcast.splat417
  %i.ca = or <4 x i1> %i.bs, %i.bm
  %i.cb = or <4 x i1> %i.bt, %i.bn
  %i.cc = select <4 x i1> %i.ca, <4 x i1> splat (i1 true), <4 x i1> %i.by
  %predphi426 = and <4 x i1> %vec.phi420, %i.cc   ; 2 uses
  %i.cd = select <4 x i1> %i.cb, <4 x i1> splat (i1 true), <4 x i1> %i.bz
  %predphi427 = and <4 x i1> %vec.phi421, %i.cd   ; 2 uses
  %index.next428 = add nuw i64 %index419, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next428, %n.vec415
  br i1 %i.ce, label %middle.block429, label %vector.body418, !llvm.loop !846

middle.block429:                                  ; preds = %vector.body418
  %bin.rdx430 = and <4 x i1> %predphi427, %predphi426
  %i.cf = bitcast <4 x i1> %bin.rdx430 to i4
  %i.cg = icmp eq i4 %i.cf, -1                    ; 2 uses
  %cmp.n431 = icmp eq i64 %i.av, %n.vec415
  br i1 %cmp.n431, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block429
  %.ph = phi i1 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cg, %middle.block429 ]
  %.01.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %n.vec415, %middle.block429 ]
  br label %scalar.ph412

scalar.ph412:                                     ; preds = %scalar.ph412.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.ch = phi i1 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %scalar.ph412.preheader ] ; 3 uses
  %.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph412.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.ci = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.cj = load float, ptr %gep3.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.ck = fcmp oeq float %i.ci, %i.cj
  br i1 %i.ck, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %scalar.ph412
  %i.cl = fcmp uno float %i.ci, 0.000000e+00
  %i.cm = fcmp uno float %i.cj, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.cl, %i.cm
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = fsub float %i.ci, %i.cj
  %i.co = tail call float @llvm.fabs.f32(float %i.cn)
  %i.cp = fcmp ole float %i.co, %i.ao
  %i.cq = and i1 %i.ch, %i.cp
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %scalar.ph412
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ch, %bb.h ], [ %i.ch, %scalar.ph412 ], [ %i.cq, %bb.i ] ; 2 uses
  %i.cr = add nuw nsw i64 %.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cr, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph412, !llvm.loop !847

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef %i.av), !noalias !880
  %i.cs = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !880 ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 1      ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i:               ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert394 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat395 = shufflevector <4 x float> %broadcast.splatinsert394, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i
  %i.cx = phi i64 [ %i.et, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cy = phi { i64, i64 } [ %i.es, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.cs, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ]
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 2 uses
  %i.da = icmp sgt i64 %i.cx, 0
  br i1 %i.da, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.db ; 2 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.dc ; 2 uses
  %.promoted5.i.i.i.i.i = load i8, ptr %i.cv, align 8, !tbaa !90, !noalias !880
  %i.dd = icmp ne i8 %.promoted5.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check391 = icmp ult i64 %i.cx, 8
  br i1 %min.iters.check391, label %scalar.ph390.preheader, label %vector.ph392

vector.ph392:                                     ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i
  %n.vec393 = and i64 %i.cx, 9223372036854775800  ; 3 uses
  %i.de = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.dd, i64 0
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph392
  %index397 = phi i64 [ 0, %vector.ph392 ], [ %index.next406, %vector.body396 ] ; 2 uses
  %vec.phi398 = phi <4 x i1> [ %i.de, %vector.ph392 ], [ %predphi404, %vector.body396 ]
  %vec.phi399 = phi <4 x i1> [ splat (i1 true), %vector.ph392 ], [ %predphi405, %vector.body396 ]
  %i.df = add nsw i64 %index397, %i.cz            ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.df ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  %wide.load400 = load <4 x float>, ptr %i.dg, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load401 = load <4 x float>, ptr %i.dh, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.df ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load402 = load <4 x float>, ptr %i.di, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load403 = load <4 x float>, ptr %i.dj, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.dk = fcmp oeq <4 x float> %wide.load400, %wide.load402
  %i.dl = fcmp oeq <4 x float> %wide.load401, %wide.load403
  %i.dm = fcmp uno <4 x float> %wide.load400, zeroinitializer
  %i.dn = fcmp uno <4 x float> %wide.load401, zeroinitializer
  %i.do = fcmp uno <4 x float> %wide.load402, zeroinitializer
  %i.dp = fcmp uno <4 x float> %wide.load403, zeroinitializer
  %i.dq = and <4 x i1> %i.dm, %i.do
  %i.dr = and <4 x i1> %i.dn, %i.dp
  %i.ds = fsub <4 x float> %wide.load400, %wide.load402
  %i.dt = fsub <4 x float> %wide.load401, %wide.load403
  %i.du = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ds)
  %i.dv = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dt)
  %i.dw = fcmp ole <4 x float> %i.du, %broadcast.splat395
  %i.dx = fcmp ole <4 x float> %i.dv, %broadcast.splat395
  %i.dy = or <4 x i1> %i.dq, %i.dk
  %i.dz = or <4 x i1> %i.dr, %i.dl
  %i.ea = select <4 x i1> %i.dy, <4 x i1> splat (i1 true), <4 x i1> %i.dw
  %predphi404 = and <4 x i1> %vec.phi398, %i.ea   ; 2 uses
  %i.eb = select <4 x i1> %i.dz, <4 x i1> splat (i1 true), <4 x i1> %i.dx
  %predphi405 = and <4 x i1> %vec.phi399, %i.eb   ; 2 uses
  %index.next406 = add nuw i64 %index397, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next406, %n.vec393
  br i1 %i.ec, label %middle.block407, label %vector.body396, !llvm.loop !848

middle.block407:                                  ; preds = %vector.body396
  %bin.rdx408 = and <4 x i1> %predphi405, %predphi404
  %i.ed = bitcast <4 x i1> %bin.rdx408 to i4
  %i.ee = icmp eq i4 %i.ed, -1                    ; 2 uses
  %cmp.n409 = icmp eq i64 %i.cx, %n.vec393
  br i1 %cmp.n409, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph390.preheader

scalar.ph390.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i, %middle.block407
  %.ph435 = phi i1 [ %i.dd, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %i.ee, %middle.block407 ]
  %.01.i16.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %n.vec393, %middle.block407 ]
  br label %scalar.ph390

scalar.ph390:                                     ; preds = %scalar.ph390.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.ef = phi i1 [ %.0.i.i.i22.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph435, %scalar.ph390.preheader ] ; 3 uses
  %.01.i16.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i16.i.i.i.i.i.i.i.i.i.ph, %scalar.ph390.preheader ] ; 2 uses
  %i.eg = add nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, %i.cz ; 2 uses
  %gep.i17.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.eg
  %i.eh = load float, ptr %gep.i17.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i18.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.eg
  %i.ei = load float, ptr %gep3.i18.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.ej = fcmp oeq float %i.eh, %i.ei
  br i1 %i.ej, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %scalar.ph390
  %i.ek = fcmp uno float %i.eh, 0.000000e+00
  %i.el = fcmp uno float %i.ei, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.ek, %i.el
  br i1 %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.em = fsub float %i.eh, %i.ei
  %i.en = call float @llvm.fabs.f32(float %i.em)
  %i.eo = fcmp ole float %i.en, %i.ao
  %i.ep = and i1 %i.ef, %i.eo
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %scalar.ph390
  %.0.i.i.i22.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ef, %bb.k ], [ %i.ef, %scalar.ph390 ], [ %i.ep, %bb.l ] ; 2 uses
  %i.eq = add nuw nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, %i.cx
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph390, !llvm.loop !849

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block407
  %.0.i.i.i22.i.i.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.ee, %middle.block407 ], [ %.0.i.i.i22.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.er = zext i1 %.0.i.i.i22.i.i.i.i.i.i.i.i.i.lcssa to i8
  store i8 %i.er, ptr %i.cv, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.es = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !880 ; 2 uses
  %i.et = extractvalue { i64, i64 } %i.es, 1      ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.m:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !880 ; 2 uses
  %i.fa = icmp ne ptr %i.ez, null
  %or.cond.not.i.i.i4.i.i.i.i.i = select i1 %i.ex, i1 %i.fa, i1 false
  br i1 %or.cond.not.i.i.i4.i.i.i.i.i, label %bb.r, label %.thread.i.i.i5.i.i.i.i.i, !prof !179

.thread.i.i.i5.i.i.i.i.i:                         ; preds = %bb.n, %bb.m
  %i.fb = icmp sgt i64 %i.av, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i6.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i.i.i.i:                      ; preds = %.thread.i.i.i5.i.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i8.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.fd ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted3.i.i.i.i.i = load i8, ptr %i.fe, align 8, !tbaa !90, !noalias !880
  %i.ff = icmp ne i8 %.promoted3.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check367, label %scalar.ph366.preheader, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph.i.i.i.i.i6.i.i.i.i.i
  %n.vec369 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.fg = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.ff, i64 0
  %broadcast.splatinsert370 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat371 = shufflevector <4 x float> %broadcast.splatinsert370, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph368
  %index373 = phi i64 [ 0, %vector.ph368 ], [ %index.next384, %vector.body372 ] ; 3 uses
  %vec.phi374 = phi <4 x i1> [ %i.fg, %vector.ph368 ], [ %i.gh, %vector.body372 ]
  %vec.phi375 = phi <4 x i1> [ splat (i1 true), %vector.ph368 ], [ %i.gi, %vector.body372 ]
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %index373 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  %wide.load376 = load <4 x float>, ptr %i.fh, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %wide.load377 = load <4 x float>, ptr %i.fi, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.fj = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %index373 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %wide.load378 = load <4 x float>, ptr %i.fj, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %wide.load379 = load <4 x float>, ptr %i.fk, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.fl = fcmp une <4 x float> %wide.load376, %wide.load378
  %i.fm = fcmp une <4 x float> %wide.load377, %wide.load379
  %i.fn = fcmp uno <4 x float> %wide.load376, zeroinitializer
  %i.fo = fcmp uno <4 x float> %wide.load377, zeroinitializer
  %i.fp = fcmp uno <4 x float> %wide.load378, zeroinitializer
  %i.fq = fcmp uno <4 x float> %wide.load379, zeroinitializer
  %i.fr = and <4 x i1> %i.fn, %i.fp
  %i.fs = and <4 x i1> %i.fo, %i.fq
  %i.ft = fsub <4 x float> %wide.load376, %wide.load378
  %i.fu = fsub <4 x float> %wide.load377, %wide.load379
  %i.fv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ft)
  %i.fw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fu)
  %i.fx = fcmp ole <4 x float> %i.fv, %broadcast.splat371
  %i.fy = fcmp ole <4 x float> %i.fw, %broadcast.splat371
  %i.fz = bitcast <4 x float> %wide.load376 to <4 x i32>
  %i.ga = bitcast <4 x float> %wide.load377 to <4 x i32>
  %i.gb = bitcast <4 x float> %wide.load378 to <4 x i32>
  %i.gc = bitcast <4 x float> %wide.load379 to <4 x i32>
  %i.gd = xor <4 x i32> %i.gb, %i.fz
  %i.ge = xor <4 x i32> %i.gc, %i.ga
  %i.gf = icmp sgt <4 x i32> %i.gd, splat (i32 -1)
  %i.gg = icmp sgt <4 x i32> %i.ge, splat (i32 -1)
  %predphi380 = select <4 x i1> %i.fr, <4 x i1> splat (i1 true), <4 x i1> %i.fx
  %predphi381 = select <4 x i1> %i.fl, <4 x i1> %predphi380, <4 x i1> %i.gf
  %predphi382 = select <4 x i1> %i.fs, <4 x i1> splat (i1 true), <4 x i1> %i.fy
  %predphi383 = select <4 x i1> %i.fm, <4 x i1> %predphi382, <4 x i1> %i.gg
  %i.gh = and <4 x i1> %vec.phi374, %predphi381   ; 2 uses
  %i.gi = and <4 x i1> %vec.phi375, %predphi383   ; 2 uses
  %index.next384 = add nuw i64 %index373, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next384, %n.vec369
  br i1 %i.gj, label %middle.block385, label %vector.body372, !llvm.loop !850

middle.block385:                                  ; preds = %vector.body372
  %bin.rdx386 = and <4 x i1> %i.gi, %i.gh
  %i.gk = bitcast <4 x i1> %bin.rdx386 to i4
  %i.gl = icmp eq i4 %i.gk, -1                    ; 2 uses
  %cmp.n387 = icmp eq i64 %i.av, %n.vec369
  br i1 %cmp.n387, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph366.preheader

scalar.ph366.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i.i.i.i.i, %middle.block385
  %.ph437 = phi i1 [ %i.ff, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %i.gl, %middle.block385 ]
  %.01.i.i.i.i.i9.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %n.vec369, %middle.block385 ]
  br label %scalar.ph366

scalar.ph366:                                     ; preds = %scalar.ph366.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.gm = phi i1 [ %i.gz, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph437, %scalar.ph366.preheader ]
  %.01.i.i.i.i.i9.i.i.i.i.i = phi i64 [ %i.ha, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i9.i.i.i.i.i.ph, %scalar.ph366.preheader ] ; 3 uses
  %gep.i.i.i.i.i10.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.gn = load float, ptr %gep.i.i.i.i.i10.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %gep3.i.i.i.i.i11.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.go = load float, ptr %gep3.i.i.i.i.i11.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.gp = fcmp oeq float %i.gn, %i.go
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %scalar.ph366
  %i.gq = bitcast float %i.gn to i32
  %i.gr = bitcast float %i.go to i32
  %i.gs = xor i32 %i.gr, %i.gq
  %i.gt = icmp sgt i32 %i.gs, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %scalar.ph366
  %i.gu = fcmp uno float %i.gn, 0.000000e+00
  %i.gv = fcmp uno float %i.go, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i = and i1 %i.gu, %i.gv
  br i1 %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gw = fsub float %i.gn, %i.go
  %i.gx = tail call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fcmp ole float %i.gx, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i14.i.i.i.i.i = phi i1 [ %i.gt, %bb.o ], [ true, %bb.p ], [ %i.gy, %bb.q ]
  %i.gz = and i1 %i.gm, %.0.i.i.i.i.i.i.i14.i.i.i.i.i ; 2 uses
  %i.ha = add nuw nsw i64 %.01.i.i.i.i.i9.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %i.ha, %i.av
  br i1 %exitcond.not.i.i.i.i.i15.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph366, !llvm.loop !851

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %i.ez, i64 noundef %i.at, i64 noundef %i.av), !noalias !880
  %i.hb = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !880 ; 2 uses
  %i.hc = extractvalue { i64, i64 } %i.hb, 1      ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %._crit_edge.i.i.i.i18.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i

.lr.ph.i.preheader.i.i.i16.i.i.i.i.i:             ; preds = %bb.r
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert346 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat347 = shufflevector <4 x float> %broadcast.splatinsert346, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i17.i.i.i.i.i

.lr.ph.i.i.i.i17.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i
  %i.hg = phi i64 [ %i.jm, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.hc, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i ] ; 5 uses
  %i.hh = phi { i64, i64 } [ %i.jl, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.hb, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i ]
  %i.hi = extractvalue { i64, i64 } %i.hh, 0      ; 2 uses
  %i.hj = icmp sgt i64 %i.hg, 0
  br i1 %i.hj, label %.lr.ph.i13.i.i.i.i19.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i19.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i17.i.i.i.i.i
  %i.hk = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i20.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.hk ; 2 uses
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.hl ; 2 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.he, align 8, !tbaa !90, !noalias !880
  %i.hm = icmp ne i8 %.promoted.i.i.i.i.i, 0      ; 2 uses
  %min.iters.check343 = icmp ult i64 %i.hg, 8
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph.i13.i.i.i.i19.i.i.i.i.i
  %n.vec345 = and i64 %i.hg, 9223372036854775800  ; 3 uses
  %i.hn = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.hm, i64 0
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph344
  %index349 = phi i64 [ 0, %vector.ph344 ], [ %index.next360, %vector.body348 ] ; 2 uses
  %vec.phi350 = phi <4 x i1> [ %i.hn, %vector.ph344 ], [ %i.ip, %vector.body348 ]
  %vec.phi351 = phi <4 x i1> [ splat (i1 true), %vector.ph344 ], [ %i.iq, %vector.body348 ]
  %i.ho = add nsw i64 %index349, %i.hi            ; 2 uses
  %i.hp = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i20.i.i.i.i.i, i64 %i.ho ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  %wide.load352 = load <4 x float>, ptr %i.hp, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %wide.load353 = load <4 x float>, ptr %i.hq, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.hr = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i, i64 %i.ho ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  %wide.load354 = load <4 x float>, ptr %i.hr, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %wide.load355 = load <4 x float>, ptr %i.hs, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.ht = fcmp une <4 x float> %wide.load352, %wide.load354
  %i.hu = fcmp une <4 x float> %wide.load353, %wide.load355
  %i.hv = fcmp uno <4 x float> %wide.load352, zeroinitializer
  %i.hw = fcmp uno <4 x float> %wide.load353, zeroinitializer
  %i.hx = fcmp uno <4 x float> %wide.load354, zeroinitializer
  %i.hy = fcmp uno <4 x float> %wide.load355, zeroinitializer
  %i.hz = and <4 x i1> %i.hv, %i.hx
  %i.ia = and <4 x i1> %i.hw, %i.hy
  %i.ib = fsub <4 x float> %wide.load352, %wide.load354
  %i.ic = fsub <4 x float> %wide.load353, %wide.load355
  %i.id = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ib)
  %i.ie = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ic)
  %i.if = fcmp ole <4 x float> %i.id, %broadcast.splat347
  %i.ig = fcmp ole <4 x float> %i.ie, %broadcast.splat347
  %i.ih = bitcast <4 x float> %wide.load352 to <4 x i32>
  %i.ii = bitcast <4 x float> %wide.load353 to <4 x i32>
  %i.ij = bitcast <4 x float> %wide.load354 to <4 x i32>
  %i.ik = bitcast <4 x float> %wide.load355 to <4 x i32>
  %i.il = xor <4 x i32> %i.ij, %i.ih
  %i.im = xor <4 x i32> %i.ik, %i.ii
  %i.in = icmp sgt <4 x i32> %i.il, splat (i32 -1)
  %i.io = icmp sgt <4 x i32> %i.im, splat (i32 -1)
  %predphi356 = select <4 x i1> %i.hz, <4 x i1> splat (i1 true), <4 x i1> %i.if
  %predphi357 = select <4 x i1> %i.ht, <4 x i1> %predphi356, <4 x i1> %i.in
  %predphi358 = select <4 x i1> %i.ia, <4 x i1> splat (i1 true), <4 x i1> %i.ig
  %predphi359 = select <4 x i1> %i.hu, <4 x i1> %predphi358, <4 x i1> %i.io
  %i.ip = and <4 x i1> %vec.phi350, %predphi357   ; 2 uses
  %i.iq = and <4 x i1> %vec.phi351, %predphi359   ; 2 uses
  %index.next360 = add nuw i64 %index349, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next360, %n.vec345
  br i1 %i.ir, label %middle.block361, label %vector.body348, !llvm.loop !852

middle.block361:                                  ; preds = %vector.body348
  %bin.rdx362 = and <4 x i1> %i.iq, %i.ip
  %i.is = bitcast <4 x i1> %bin.rdx362 to i4
  %i.it = icmp eq i4 %i.is, -1                    ; 2 uses
  %cmp.n363 = icmp eq i64 %i.hg, %n.vec345
  br i1 %cmp.n363, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i19.i.i.i.i.i, %middle.block361
  %.ph441 = phi i1 [ %i.hm, %.lr.ph.i13.i.i.i.i19.i.i.i.i.i ], [ %i.it, %middle.block361 ]
  %.01.i16.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i19.i.i.i.i.i ], [ %n.vec345, %middle.block361 ]
  br label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.iu = phi i1 [ %i.ji, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph441, %scalar.ph342.preheader ]
  %.01.i16.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.jj, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i16.i.i.i.i22.i.i.i.i.i.ph, %scalar.ph342.preheader ] ; 2 uses
  %i.iv = add nsw i64 %.01.i16.i.i.i.i22.i.i.i.i.i, %i.hi ; 2 uses
  %gep.i17.i.i.i.i23.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i20.i.i.i.i.i, i64 %i.iv
  %i.iw = load float, ptr %gep.i17.i.i.i.i23.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %gep3.i18.i.i.i.i24.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i, i64 %i.iv
  %i.ix = load float, ptr %gep3.i18.i.i.i.i24.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 4 uses
  %i.iy = fcmp oeq float %i.iw, %i.ix
  br i1 %i.iy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %scalar.ph342
  %i.iz = bitcast float %i.iw to i32
  %i.ja = bitcast float %i.ix to i32
  %i.jb = xor i32 %i.ja, %i.iz
  %i.jc = icmp sgt i32 %i.jb, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %scalar.ph342
  %i.jd = fcmp uno float %i.iw, 0.000000e+00
  %i.je = fcmp uno float %i.ix, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i26.i.i.i.i.i = and i1 %i.jd, %i.je
  br i1 %or.cond.i.i.i20.i.i.i.i26.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jf = fsub float %i.iw, %i.ix
  %i.jg = call float @llvm.fabs.f32(float %i.jf)
  %i.jh = fcmp ole float %i.jg, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i.i22.i.i.i.i27.i.i.i.i.i = phi i1 [ %i.jc, %bb.s ], [ true, %bb.t ], [ %i.jh, %bb.u ]
  %i.ji = and i1 %i.iu, %.0.i.i.i22.i.i.i.i27.i.i.i.i.i ; 2 uses
  %i.jj = add nuw nsw i64 %.01.i16.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i28.i.i.i.i.i = icmp eq i64 %i.jj, %i.hg
  br i1 %exitcond.not.i23.i.i.i.i28.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph342, !llvm.loop !853

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block361
  %.lcssa114 = phi i1 [ %i.it, %middle.block361 ], [ %i.ji, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.jk = zext i1 %.lcssa114 to i8
  store i8 %i.jk, ptr %i.he, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i17.i.i.i.i.i
  %i.jl = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !880 ; 2 uses
  %i.jm = extractvalue { i64, i64 } %i.jl, 1      ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %._crit_edge.i.i.i.i18.i.i.i.i.i, label %.lr.ph.i.i.i.i17.i.i.i.i.i

._crit_edge.i.i.i.i18.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block429
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.cg, %middle.block429 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.jo = zext i1 %.0.i.i.i.i.i.i.i.i.i.i.i.i.lcssa to i8
  store i8 %i.jo, ptr %i.bf, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block385
  %.lcssa = phi i1 [ %i.gl, %middle.block385 ], [ %i.gz, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.jp = zext i1 %.lcssa to i8
  store i8 %i.jp, ptr %i.fe, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.v:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i18.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.js = trunc nuw i8 %i.jr to i1
  %i.jt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !880 ; 2 uses
  %i.jv = icmp ne ptr %i.ju, null
  %or.cond.not.i.i.i.i17.i.i.i.i = select i1 %i.js, i1 %i.jv, i1 false
  br i1 %or.cond.not.i.i.i.i17.i.i.i.i, label %bb.y, label %.thread.i.i.i.i18.i.i.i.i, !prof !179

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.x, %bb.w
  %i.jw = icmp sgt i64 %i.av, 0
  br i1 %i.jw, label %.lr.ph.i.i.i.i.i.i19.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i19.i.i.i.i:                     ; preds = %.thread.i.i.i.i18.i.i.i.i
  %invariant.gep.i.i.i.i.i.i20.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i.i21.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.jy ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.jz, align 8, !tbaa !90, !range !36, !noalias !880
  %i.ka = icmp ne i8 %.pre.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check323 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check323, label %scalar.ph322.preheader, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i.i.i.i.i.i19.i.i.i.i
  %n.vec325 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.kb = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.ka, i64 0
  %broadcast.splatinsert326 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat327 = shufflevector <4 x float> %broadcast.splatinsert326, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph324
  %index329 = phi i64 [ 0, %vector.ph324 ], [ %index.next336, %vector.body328 ] ; 3 uses
  %vec.phi330 = phi <4 x i1> [ %i.kb, %vector.ph324 ], [ %i.kq, %vector.body328 ]
  %vec.phi331 = phi <4 x i1> [ splat (i1 true), %vector.ph324 ], [ %i.kr, %vector.body328 ]
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i20.i.i.i.i, i64 %index329 ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 16
  %wide.load332 = load <4 x float>, ptr %i.kc, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load333 = load <4 x float>, ptr %i.kd, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.ke = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i21.i.i.i.i, i64 %index329 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 16
  %wide.load334 = load <4 x float>, ptr %i.ke, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.kf, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.kg = fcmp oeq <4 x float> %wide.load332, %wide.load334
  %i.kh = fcmp oeq <4 x float> %wide.load333, %wide.load335
  %i.ki = fsub <4 x float> %wide.load332, %wide.load334
  %i.kj = fsub <4 x float> %wide.load333, %wide.load335
  %i.kk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ki)
  %i.kl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kj)
  %i.km = fcmp ole <4 x float> %i.kk, %broadcast.splat327
  %i.kn = fcmp ole <4 x float> %i.kl, %broadcast.splat327
  %i.ko = select <4 x i1> %i.kg, <4 x i1> splat (i1 true), <4 x i1> %i.km
  %i.kp = select <4 x i1> %i.kh, <4 x i1> splat (i1 true), <4 x i1> %i.kn
  %i.kq = and <4 x i1> %vec.phi330, %i.ko         ; 2 uses
  %i.kr = and <4 x i1> %vec.phi331, %i.kp         ; 2 uses
  %index.next336 = add nuw i64 %index329, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next336, %n.vec325
  br i1 %i.ks, label %middle.block337, label %vector.body328, !llvm.loop !854

middle.block337:                                  ; preds = %vector.body328
  %bin.rdx338 = and <4 x i1> %i.kr, %i.kq
  %i.kt = bitcast <4 x i1> %bin.rdx338 to i4
  %i.ku = icmp eq i4 %i.kt, -1                    ; 2 uses
  %cmp.n339 = icmp eq i64 %i.av, %n.vec325
  br i1 %cmp.n339, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph322.preheader

scalar.ph322.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i19.i.i.i.i, %middle.block337
  %.ph445 = phi i1 [ %i.ka, %.lr.ph.i.i.i.i.i.i19.i.i.i.i ], [ %i.ku, %middle.block337 ]
  %.01.i.i.i.i.i.i22.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i19.i.i.i.i ], [ %n.vec325, %middle.block337 ]
  br label %scalar.ph322

scalar.ph322:                                     ; preds = %scalar.ph322.preheader, %scalar.ph322
  %i.kv = phi i1 [ %i.lc, %scalar.ph322 ], [ %.ph445, %scalar.ph322.preheader ]
  %.01.i.i.i.i.i.i22.i.i.i.i = phi i64 [ %i.ld, %scalar.ph322 ], [ %.01.i.i.i.i.i.i22.i.i.i.i.ph, %scalar.ph322.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i23.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i20.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i.i.i.i
  %i.kw = load float, ptr %gep.i.i.i.i.i.i23.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i.i.i.i.i.i24.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i21.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i.i.i.i
  %i.kx = load float, ptr %gep3.i.i.i.i.i.i24.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.ky = fcmp oeq float %i.kw, %i.kx
  %i.kz = fsub float %i.kw, %i.kx
  %i.la = tail call float @llvm.fabs.f32(float %i.kz)
  %i.lb = fcmp ole float %i.la, %i.ao
  %.0.i.i.i.i.i.i.i.i25.i.i.i.i = select i1 %i.ky, i1 true, i1 %i.lb
  %i.lc = and i1 %i.kv, %.0.i.i.i.i.i.i.i.i25.i.i.i.i ; 2 uses
  %i.ld = add nuw nsw i64 %.01.i.i.i.i.i.i22.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i26.i.i.i.i = icmp eq i64 %i.ld, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i26.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph322, !llvm.loop !855

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull %i.ju, i64 noundef %i.at, i64 noundef %i.av), !noalias !880
  %i.le = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %7), !noalias !880 ; 2 uses
  %i.lf = extractvalue { i64, i64 } %i.le, 1      ; 2 uses
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %._crit_edge.i.i.i.i.i29.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i

.lr.ph.i.preheader.i.i.i.i27.i.i.i.i:             ; preds = %bb.y
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert306 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat307 = shufflevector <4 x float> %broadcast.splatinsert306, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i.i28.i.i.i.i

.lr.ph.i.i.i.i.i28.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i
  %i.lj = phi i64 [ %i.mx, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.lf, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i ] ; 5 uses
  %i.lk = phi { i64, i64 } [ %i.mw, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.le, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i ]
  %i.ll = extractvalue { i64, i64 } %i.lk, 0      ; 2 uses
  %i.lm = icmp sgt i64 %i.lj, 0
  br i1 %i.lm, label %.lr.ph.i13.i.i.i.i.i30.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i30.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.ln = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i.i31.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.ln ; 2 uses
  %i.lo = load i64, ptr %i.li, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.lo ; 2 uses
  %.pre.i16.i.i.i.i.i.i.i.i.i = load i8, ptr %i.lh, align 8, !tbaa !90, !range !36, !noalias !880
  %i.lp = icmp ne i8 %.pre.i16.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.lj, 8
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %.lr.ph.i13.i.i.i.i.i30.i.i.i.i
  %n.vec305 = and i64 %i.lj, 9223372036854775800  ; 3 uses
  %i.lq = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.lp, i64 0
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph304
  %index309 = phi i64 [ 0, %vector.ph304 ], [ %index.next316, %vector.body308 ] ; 2 uses
  %vec.phi310 = phi <4 x i1> [ %i.lq, %vector.ph304 ], [ %i.mg, %vector.body308 ]
  %vec.phi311 = phi <4 x i1> [ splat (i1 true), %vector.ph304 ], [ %i.mh, %vector.body308 ]
  %i.lr = add nsw i64 %index309, %i.ll            ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i.i.i.i, i64 %i.lr ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 16
  %wide.load312 = load <4 x float>, ptr %i.ls, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load313 = load <4 x float>, ptr %i.lt, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.lu = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i, i64 %i.lr ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 16
  %wide.load314 = load <4 x float>, ptr %i.lu, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load315 = load <4 x float>, ptr %i.lv, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.lw = fcmp oeq <4 x float> %wide.load312, %wide.load314
  %i.lx = fcmp oeq <4 x float> %wide.load313, %wide.load315
  %i.ly = fsub <4 x float> %wide.load312, %wide.load314
  %i.lz = fsub <4 x float> %wide.load313, %wide.load315
  %i.ma = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ly)
  %i.mb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lz)
  %i.mc = fcmp ole <4 x float> %i.ma, %broadcast.splat307
  %i.md = fcmp ole <4 x float> %i.mb, %broadcast.splat307
  %i.me = select <4 x i1> %i.lw, <4 x i1> splat (i1 true), <4 x i1> %i.mc
  %i.mf = select <4 x i1> %i.lx, <4 x i1> splat (i1 true), <4 x i1> %i.md
  %i.mg = and <4 x i1> %vec.phi310, %i.me         ; 2 uses
  %i.mh = and <4 x i1> %vec.phi311, %i.mf         ; 2 uses
  %index.next316 = add nuw i64 %index309, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next316, %n.vec305
  br i1 %i.mi, label %middle.block317, label %vector.body308, !llvm.loop !856

middle.block317:                                  ; preds = %vector.body308
  %bin.rdx318 = and <4 x i1> %i.mh, %i.mg
  %i.mj = bitcast <4 x i1> %bin.rdx318 to i4
  %i.mk = icmp eq i4 %i.mj, -1                    ; 2 uses
  %cmp.n319 = icmp eq i64 %i.lj, %n.vec305
  br i1 %cmp.n319, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph302.preheader

scalar.ph302.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i30.i.i.i.i, %middle.block317
  %.ph449 = phi i1 [ %i.lp, %.lr.ph.i13.i.i.i.i.i30.i.i.i.i ], [ %i.mk, %middle.block317 ]
  %.01.i17.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i30.i.i.i.i ], [ %n.vec305, %middle.block317 ]
  br label %scalar.ph302

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %i.ml = phi i1 [ %i.mt, %scalar.ph302 ], [ %.ph449, %scalar.ph302.preheader ]
  %.01.i17.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mu, %scalar.ph302 ], [ %.01.i17.i.i.i.i.i.i.i.i.i.ph, %scalar.ph302.preheader ] ; 2 uses
  %i.mm = add nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, %i.ll ; 2 uses
  %gep.i18.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i.i.i.i, i64 %i.mm
  %i.mn = load float, ptr %gep.i18.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i19.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i, i64 %i.mm
  %i.mo = load float, ptr %gep3.i19.i.i.i.i.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.mp = fcmp oeq float %i.mn, %i.mo
  %i.mq = fsub float %i.mn, %i.mo
  %i.mr = call float @llvm.fabs.f32(float %i.mq)
  %i.ms = fcmp ole float %i.mr, %i.ao
  %.0.i.i.i21.i.i.i.i.i.i.i.i.i = select i1 %i.mp, i1 true, i1 %i.ms
  %i.mt = and i1 %i.ml, %.0.i.i.i21.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.mu = add nuw nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i22.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mu, %i.lj
  br i1 %exitcond.not.i22.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph302, !llvm.loop !857

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %scalar.ph302, %middle.block317
  %.lcssa116 = phi i1 [ %i.mk, %middle.block317 ], [ %i.mt, %scalar.ph302 ]
  %i.mv = zext i1 %.lcssa116 to i8
  store i8 %i.mv, ptr %i.lh, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.mw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %7), !noalias !880 ; 2 uses
  %i.mx = extractvalue { i64, i64 } %i.mw, 1      ; 2 uses
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %._crit_edge.i.i.i.i.i29.i.i.i.i, label %.lr.ph.i.i.i.i.i28.i.i.i.i

._crit_edge.i.i.i.i.i29.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i8.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !noalias !880 ; 2 uses
  %i.ne = icmp ne ptr %i.nd, null
  %or.cond.not.i.i.i4.i7.i.i.i.i = select i1 %i.nb, i1 %i.ne, i1 false
  br i1 %or.cond.not.i.i.i4.i7.i.i.i.i, label %bb.ad, label %.thread.i.i.i5.i8.i.i.i.i, !prof !179

.thread.i.i.i5.i8.i.i.i.i:                        ; preds = %bb.aa, %bb.z
  %i.nf = icmp sgt i64 %i.av, 0
  br i1 %i.nf, label %.lr.ph.i.i.i.i.i6.i9.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i9.i.i.i.i:                     ; preds = %.thread.i.i.i5.i8.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i10.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.nh ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ni, align 8, !tbaa !90, !noalias !880
  %i.nj = icmp ne i8 %.promoted.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check281 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check281, label %scalar.ph280.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph.i.i.i.i.i6.i9.i.i.i.i
  %n.vec283 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.nk = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.nj, i64 0
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph282
  %index287 = phi i64 [ 0, %vector.ph282 ], [ %index.next296, %vector.body286 ] ; 3 uses
  %vec.phi288 = phi <4 x i1> [ %i.nk, %vector.ph282 ], [ %i.of, %vector.body286 ]
  %vec.phi289 = phi <4 x i1> [ splat (i1 true), %vector.ph282 ], [ %i.og, %vector.body286 ]
  %i.nl = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i10.i.i.i.i, i64 %index287 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 16
  %wide.load290 = load <4 x float>, ptr %i.nl, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load291 = load <4 x float>, ptr %i.nm, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.nn = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i, i64 %index287 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nn, i64 16
  %wide.load292 = load <4 x float>, ptr %i.nn, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load293 = load <4 x float>, ptr %i.no, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.np = fcmp oeq <4 x float> %wide.load290, %wide.load292
  %i.nq = fcmp oeq <4 x float> %wide.load291, %wide.load293
  %i.nr = fsub <4 x float> %wide.load290, %wide.load292
  %i.ns = fsub <4 x float> %wide.load291, %wide.load293
  %i.nt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nr)
  %i.nu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ns)
  %i.nv = fcmp ole <4 x float> %i.nt, %broadcast.splat285
  %i.nw = fcmp ole <4 x float> %i.nu, %broadcast.splat285
  %i.nx = bitcast <4 x float> %wide.load290 to <4 x i32>
  %i.ny = bitcast <4 x float> %wide.load291 to <4 x i32>
  %i.nz = bitcast <4 x float> %wide.load292 to <4 x i32>
  %i.oa = bitcast <4 x float> %wide.load293 to <4 x i32>
  %i.ob = xor <4 x i32> %i.nz, %i.nx
  %i.oc = xor <4 x i32> %i.oa, %i.ny
  %i.od = icmp sgt <4 x i32> %i.ob, splat (i32 -1)
  %i.oe = icmp sgt <4 x i32> %i.oc, splat (i32 -1)
  %predphi294 = select <4 x i1> %i.np, <4 x i1> %i.od, <4 x i1> %i.nv
  %predphi295 = select <4 x i1> %i.nq, <4 x i1> %i.oe, <4 x i1> %i.nw
  %i.of = and <4 x i1> %vec.phi288, %predphi294   ; 2 uses
  %i.og = and <4 x i1> %vec.phi289, %predphi295   ; 2 uses
  %index.next296 = add nuw i64 %index287, 8       ; 2 uses
  %i.oh = icmp eq i64 %index.next296, %n.vec283
  br i1 %i.oh, label %middle.block297, label %vector.body286, !llvm.loop !858

middle.block297:                                  ; preds = %vector.body286
  %bin.rdx298 = and <4 x i1> %i.og, %i.of
  %i.oi = bitcast <4 x i1> %bin.rdx298 to i4
  %i.oj = icmp eq i4 %i.oi, -1                    ; 2 uses
  %cmp.n299 = icmp eq i64 %i.av, %n.vec283
  br i1 %cmp.n299, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph280.preheader

scalar.ph280.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i9.i.i.i.i, %middle.block297
  %.ph453 = phi i1 [ %i.nj, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i ], [ %i.oj, %middle.block297 ]
  %.01.i.i.i.i.i9.i12.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i ], [ %n.vec283, %middle.block297 ]
  br label %scalar.ph280

scalar.ph280:                                     ; preds = %scalar.ph280.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.ok = phi i1 [ %i.ov, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph453, %scalar.ph280.preheader ]
  %.01.i.i.i.i.i9.i12.i.i.i.i = phi i64 [ %i.ow, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i9.i12.i.i.i.i.ph, %scalar.ph280.preheader ] ; 3 uses
  %gep.i.i.i.i.i10.i13.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i10.i.i.i.i, i64 %.01.i.i.i.i.i9.i12.i.i.i.i
  %i.ol = load float, ptr %gep.i.i.i.i.i10.i13.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i.i.i.i.i11.i14.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i, i64 %.01.i.i.i.i.i9.i12.i.i.i.i
  %i.om = load float, ptr %gep3.i.i.i.i.i11.i14.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.on = fcmp oeq float %i.ol, %i.om
  br i1 %i.on, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %scalar.ph280
  %i.oo = bitcast float %i.ol to i32
  %i.op = bitcast float %i.om to i32
  %i.oq = xor i32 %i.op, %i.oo
  %i.or = icmp sgt i32 %i.oq, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %scalar.ph280
  %i.os = fsub float %i.ol, %i.om
  %i.ot = tail call float @llvm.fabs.f32(float %i.os)
  %i.ou = fcmp ole float %i.ot, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i13.i.i.i.i.i = phi i1 [ %i.or, %bb.ab ], [ %i.ou, %bb.ac ]
  %i.ov = and i1 %i.ok, %.0.i.i.i.i.i.i.i13.i.i.i.i.i ; 2 uses
  %i.ow = add nuw nsw i64 %.01.i.i.i.i.i9.i12.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i14.i.i.i.i.i = icmp eq i64 %i.ow, %i.av
  br i1 %exitcond.not.i.i.i.i.i14.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph280, !llvm.loop !859

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %i.nd, i64 noundef %i.at, i64 noundef %i.av), !noalias !880
  %i.ox = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !880 ; 2 uses
  %i.oy = extractvalue { i64, i64 } %i.ox, 1      ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %._crit_edge.i.i.i.i17.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i

.lr.ph.i.preheader.i.i.i15.i.i.i.i.i:             ; preds = %bb.ad
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i16.i.i.i.i.i

.lr.ph.i.i.i.i16.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i
  %i.pc = phi i64 [ %i.ra, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.oy, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i ] ; 5 uses
  %i.pd = phi { i64, i64 } [ %i.qz, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.ox, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i ]
  %i.pe = extractvalue { i64, i64 } %i.pd, 0      ; 2 uses
  %i.pf = icmp sgt i64 %i.pc, 0
  br i1 %i.pf, label %.lr.ph.i13.i.i.i.i18.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i18.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i16.i.i.i.i.i
  %i.pg = load i64, ptr %i.ar, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i19.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.pg ; 2 uses
  %i.ph = load i64, ptr %i.pb, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.ph ; 2 uses
  %.promoted.i16.i.i.i.i.i.i.i.i.i = load i8, ptr %i.pa, align 8, !tbaa !90, !noalias !880
  %i.pi = icmp ne i8 %.promoted.i16.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.pc, 8
  br i1 %min.iters.check261, label %scalar.ph260.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph.i13.i.i.i.i18.i.i.i.i.i
  %n.vec263 = and i64 %i.pc, 9223372036854775800  ; 3 uses
  %i.pj = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.pi, i64 0
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next274, %vector.body264 ] ; 2 uses
  %vec.phi266 = phi <4 x i1> [ %i.pj, %vector.ph262 ], [ %i.qf, %vector.body264 ]
  %vec.phi267 = phi <4 x i1> [ splat (i1 true), %vector.ph262 ], [ %i.qg, %vector.body264 ]
  %i.pk = add nsw i64 %index265, %i.pe            ; 2 uses
  %i.pl = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.pk ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  %wide.load268 = load <4 x float>, ptr %i.pl, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load269 = load <4 x float>, ptr %i.pm, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.pn = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.pk ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 16
  %wide.load270 = load <4 x float>, ptr %i.pn, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load271 = load <4 x float>, ptr %i.po, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.pp = fcmp oeq <4 x float> %wide.load268, %wide.load270
  %i.pq = fcmp oeq <4 x float> %wide.load269, %wide.load271
  %i.pr = fsub <4 x float> %wide.load268, %wide.load270
  %i.ps = fsub <4 x float> %wide.load269, %wide.load271
  %i.pt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pr)
  %i.pu = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ps)
  %i.pv = fcmp ole <4 x float> %i.pt, %broadcast.splat
  %i.pw = fcmp ole <4 x float> %i.pu, %broadcast.splat
  %i.px = bitcast <4 x float> %wide.load268 to <4 x i32>
  %i.py = bitcast <4 x float> %wide.load269 to <4 x i32>
  %i.pz = bitcast <4 x float> %wide.load270 to <4 x i32>
  %i.qa = bitcast <4 x float> %wide.load271 to <4 x i32>
  %i.qb = xor <4 x i32> %i.pz, %i.px
  %i.qc = xor <4 x i32> %i.qa, %i.py
  %i.qd = icmp sgt <4 x i32> %i.qb, splat (i32 -1)
  %i.qe = icmp sgt <4 x i32> %i.qc, splat (i32 -1)
  %predphi272 = select <4 x i1> %i.pp, <4 x i1> %i.qd, <4 x i1> %i.pv
  %predphi273 = select <4 x i1> %i.pq, <4 x i1> %i.qe, <4 x i1> %i.pw
  %i.qf = and <4 x i1> %vec.phi266, %predphi272   ; 2 uses
  %i.qg = and <4 x i1> %vec.phi267, %predphi273   ; 2 uses
  %index.next274 = add nuw i64 %index265, 8       ; 2 uses
  %i.qh = icmp eq i64 %index.next274, %n.vec263
  br i1 %i.qh, label %middle.block275, label %vector.body264, !llvm.loop !860

middle.block275:                                  ; preds = %vector.body264
  %bin.rdx276 = and <4 x i1> %i.qg, %i.qf
  %i.qi = bitcast <4 x i1> %bin.rdx276 to i4
  %i.qj = icmp eq i4 %i.qi, -1                    ; 2 uses
  %cmp.n277 = icmp eq i64 %i.pc, %n.vec263
  br i1 %cmp.n277, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i18.i.i.i.i.i, %middle.block275
  %.ph457 = phi i1 [ %i.pi, %.lr.ph.i13.i.i.i.i18.i.i.i.i.i ], [ %i.qj, %middle.block275 ]
  %.01.i17.i.i.i.i21.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i18.i.i.i.i.i ], [ %n.vec263, %middle.block275 ]
  br label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.qk = phi i1 [ %i.qw, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph457, %scalar.ph260.preheader ]
  %.01.i17.i.i.i.i21.i.i.i.i.i = phi i64 [ %i.qx, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i17.i.i.i.i21.i.i.i.i.i.ph, %scalar.ph260.preheader ] ; 2 uses
  %i.ql = add nsw i64 %.01.i17.i.i.i.i21.i.i.i.i.i, %i.pe ; 2 uses
  %gep.i18.i.i.i.i22.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.ql
  %i.qm = load float, ptr %gep.i18.i.i.i.i22.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i19.i.i.i.i23.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.ql
  %i.qn = load float, ptr %gep3.i19.i.i.i.i23.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.qo = fcmp oeq float %i.qm, %i.qn
  br i1 %i.qo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %scalar.ph260
  %i.qp = bitcast float %i.qm to i32
  %i.qq = bitcast float %i.qn to i32
  %i.qr = xor i32 %i.qq, %i.qp
  %i.qs = icmp sgt i32 %i.qr, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %scalar.ph260
  %i.qt = fsub float %i.qm, %i.qn
  %i.qu = call float @llvm.fabs.f32(float %i.qt)
  %i.qv = fcmp ole float %i.qu, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i22.i.i.i.i.i15.i.i.i.i = phi i1 [ %i.qs, %bb.ae ], [ %i.qv, %bb.af ]
  %i.qw = and i1 %i.qk, %.0.i.i.i22.i.i.i.i.i15.i.i.i.i ; 2 uses
  %i.qx = add nuw nsw i64 %.01.i17.i.i.i.i21.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i16.i.i.i.i = icmp eq i64 %i.qx, %i.pc
  br i1 %exitcond.not.i23.i.i.i.i.i16.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph260, !llvm.loop !861

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block275
  %.lcssa118 = phi i1 [ %i.qj, %middle.block275 ], [ %i.qw, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.qy = zext i1 %.lcssa118 to i8
  store i8 %i.qy, ptr %i.pa, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i.i.i.i
  %i.qz = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !880 ; 2 uses
  %i.ra = extractvalue { i64, i64 } %i.qz, 1      ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %._crit_edge.i.i.i.i17.i.i.i.i.i, label %.lr.ph.i.i.i.i16.i.i.i.i.i

._crit_edge.i.i.i.i17.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i: ; preds = %scalar.ph322, %middle.block337
  %.lcssa115 = phi i1 [ %i.ku, %middle.block337 ], [ %i.lc, %scalar.ph322 ]
  %i.rc = zext i1 %.lcssa115 to i8
  store i8 %i.rc, ptr %i.jz, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block297
  %.lcssa117 = phi i1 [ %i.oj, %middle.block297 ], [ %i.ov, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.rd = zext i1 %.lcssa117 to i8
  store i8 %i.rd, ptr %i.ni, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.ag:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !171, !noalias !880
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !87, !noalias !880 ; 5 uses
  %i.ri = add nsw i64 %i.rh, %i.rf                ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !89, !noalias !880 ; 24 uses
  %.val.i.i.i.i4.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !880 ; 9 uses
  %.not3.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i.i4.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.an, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i.i32.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.rl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.rn = trunc nuw i8 %i.rm to i1
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !880 ; 2 uses
  %i.rq = icmp ne ptr %i.rp, null
  %or.cond.not.i.i.i.i.i31.i.i.i = select i1 %i.rn, i1 %i.rq, i1 false
  br i1 %or.cond.not.i.i.i.i.i31.i.i.i, label %bb.ak, label %.thread.i.i.i.i.i32.i.i.i, !prof !179

.thread.i.i.i.i.i32.i.i.i:                        ; preds = %bb.aj, %bb.ai
  %i.rr = icmp sgt i64 %i.rk, 0
  br i1 %i.rr, label %.lr.ph.i.i.i.i.i.i.i33.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i33.i.i.i:                     ; preds = %.thread.i.i.i.i.i32.i.i.i
  %invariant.gep.i.i.i.i.i.i.i34.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.rh ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i.i.i35.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.rt ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i36.i.i.i = load i8, ptr %i.ru, align 8, !tbaa !90, !noalias !880
  %i.rv = icmp ne i8 %.promoted.i.i.i.i.i.i.i36.i.i.i, 0 ; 2 uses
  %min.iters.check243 = icmp ult i64 %i.rk, 8
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i.i
  %n.vec245 = and i64 %i.rk, 9223372036854775800  ; 3 uses
  %i.rw = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.rv, i64 0
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next254, %vector.body246 ] ; 3 uses
  %vec.phi248 = phi <4 x i1> [ %i.rw, %vector.ph244 ], [ %i.sl, %vector.body246 ]
  %vec.phi249 = phi <4 x i1> [ splat (i1 true), %vector.ph244 ], [ %i.sm, %vector.body246 ]
  %i.rx = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i34.i.i.i, i64 %index247 ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 16
  %wide.load250 = load <4 x float>, ptr %i.rx, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load251 = load <4 x float>, ptr %i.ry, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.rz = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i35.i.i.i, i64 %index247 ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 16
  %wide.load252 = load <4 x float>, ptr %i.rz, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load253 = load <4 x float>, ptr %i.sa, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.sb = fcmp oeq <4 x float> %wide.load250, %wide.load252
  %i.sc = fcmp oeq <4 x float> %wide.load251, %wide.load253
  %i.sd = fcmp uno <4 x float> %wide.load250, zeroinitializer
  %i.se = fcmp uno <4 x float> %wide.load251, zeroinitializer
  %i.sf = fcmp uno <4 x float> %wide.load252, zeroinitializer
  %i.sg = fcmp uno <4 x float> %wide.load253, zeroinitializer
  %i.sh = and <4 x i1> %i.sd, %i.sf
  %i.si = and <4 x i1> %i.se, %i.sg
  %i.sj = or <4 x i1> %i.sb, %i.sh
  %i.sk = or <4 x i1> %i.sc, %i.si
  %i.sl = and <4 x i1> %vec.phi248, %i.sj         ; 2 uses
  %i.sm = and <4 x i1> %vec.phi249, %i.sk         ; 2 uses
  %index.next254 = add nuw i64 %index247, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next254, %n.vec245
  br i1 %i.sn, label %middle.block255, label %vector.body246, !llvm.loop !862

middle.block255:                                  ; preds = %vector.body246
  %bin.rdx256 = and <4 x i1> %i.sm, %i.sl
  %i.so = bitcast <4 x i1> %bin.rdx256 to i4
  %i.sp = icmp eq i4 %i.so, -1                    ; 2 uses
  %cmp.n257 = icmp eq i64 %i.rk, %n.vec245
  br i1 %cmp.n257, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i.i, %middle.block255
  %.ph461 = phi i1 [ %i.rv, %.lr.ph.i.i.i.i.i.i.i33.i.i.i ], [ %i.sp, %middle.block255 ]
  %.01.i.i.i.i.i.i.i37.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i33.i.i.i ], [ %n.vec245, %middle.block255 ]
  br label %scalar.ph242

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph242, %middle.block255
  %.lcssa119 = phi i1 [ %i.sp, %middle.block255 ], [ %i.sx, %scalar.ph242 ]
  %i.sq = zext i1 %.lcssa119 to i8
  store i8 %i.sq, ptr %i.ru, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

scalar.ph242:                                     ; preds = %scalar.ph242.preheader, %scalar.ph242
  %i.sr = phi i1 [ %i.sx, %scalar.ph242 ], [ %.ph461, %scalar.ph242.preheader ]
  %.01.i.i.i.i.i.i.i37.i.i.i = phi i64 [ %i.sy, %scalar.ph242 ], [ %.01.i.i.i.i.i.i.i37.i.i.i.ph, %scalar.ph242.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i38.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i34.i.i.i, i64 %.01.i.i.i.i.i.i.i37.i.i.i
  %i.ss = load float, ptr %gep.i.i.i.i.i.i.i38.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i.i.i.i.i.i.i39.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i35.i.i.i, i64 %.01.i.i.i.i.i.i.i37.i.i.i
  %i.st = load float, ptr %gep3.i.i.i.i.i.i.i39.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.su = fcmp oeq float %i.ss, %i.st
  %i.sv = fcmp uno float %i.ss, 0.000000e+00
  %i.sw = fcmp uno float %i.st, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i40.i.i.i = and i1 %i.sv, %i.sw
  %.0.i.i.i.i.i.i.i.i.i41.i.i.i = or i1 %i.su, %or.cond.i.i.i.i.i.i.i.i.i40.i.i.i
  %i.sx = and i1 %i.sr, %.0.i.i.i.i.i.i.i.i.i41.i.i.i ; 2 uses
  %i.sy = add nuw nsw i64 %.01.i.i.i.i.i.i.i37.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i42.i.i.i = icmp eq i64 %i.sy, %i.rk
  br i1 %exitcond.not.i.i.i.i.i.i.i42.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph242, !llvm.loop !863

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.rp, i64 noundef %i.ri, i64 noundef %i.rk), !noalias !880
  %i.sz = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !880 ; 2 uses
  %i.ta = extractvalue { i64, i64 } %i.sz, 1      ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 0
  br i1 %i.tb, label %._crit_edge.i.i.i.i.i.i45.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i

.lr.ph.i.preheader.i.i.i.i.i43.i.i.i:             ; preds = %bb.ak
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i.i44.i.i.i

.lr.ph.i.i.i.i.i.i44.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i
  %i.te = phi i64 [ %i.ur, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.ta, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i ] ; 5 uses
  %i.tf = phi { i64, i64 } [ %i.uq, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.sz, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i ]
  %i.tg = extractvalue { i64, i64 } %i.tf, 0      ; 2 uses
  %i.th = icmp sgt i64 %i.te, 0
  br i1 %i.th, label %.lr.ph.i13.i.i.i.i.i.i46.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i46.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i44.i.i.i
  %i.ti = load i64, ptr %i.rg, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i.i.i47.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.ti ; 2 uses
  %i.tj = load i64, ptr %i.td, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.tj ; 2 uses
  %.promoted.i16.i.i.i.i.i.i49.i.i.i = load i8, ptr %i.tc, align 8, !tbaa !90, !noalias !880
  %i.tk = icmp ne i8 %.promoted.i16.i.i.i.i.i.i49.i.i.i, 0 ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.te, 8
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i13.i.i.i.i.i.i46.i.i.i
  %n.vec227 = and i64 %i.te, 9223372036854775800  ; 3 uses
  %i.tl = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.tk, i64 0
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next236, %vector.body228 ] ; 2 uses
  %vec.phi230 = phi <4 x i1> [ %i.tl, %vector.ph226 ], [ %i.ub, %vector.body228 ]
  %vec.phi231 = phi <4 x i1> [ splat (i1 true), %vector.ph226 ], [ %i.uc, %vector.body228 ]
  %i.tm = add nsw i64 %index229, %i.tg            ; 2 uses
  %i.tn = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i47.i.i.i, i64 %i.tm ; 2 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 16
  %wide.load232 = load <4 x float>, ptr %i.tn, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load233 = load <4 x float>, ptr %i.to, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.tp = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i, i64 %i.tm ; 2 uses
  %i.tq = getelementptr i8, ptr %i.tp, i64 16
  %wide.load234 = load <4 x float>, ptr %i.tp, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load235 = load <4 x float>, ptr %i.tq, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.tr = fcmp oeq <4 x float> %wide.load232, %wide.load234
  %i.ts = fcmp oeq <4 x float> %wide.load233, %wide.load235
  %i.tt = fcmp uno <4 x float> %wide.load232, zeroinitializer
  %i.tu = fcmp uno <4 x float> %wide.load233, zeroinitializer
  %i.tv = fcmp uno <4 x float> %wide.load234, zeroinitializer
  %i.tw = fcmp uno <4 x float> %wide.load235, zeroinitializer
  %i.tx = and <4 x i1> %i.tt, %i.tv
  %i.ty = and <4 x i1> %i.tu, %i.tw
  %i.tz = or <4 x i1> %i.tr, %i.tx
  %i.ua = or <4 x i1> %i.ts, %i.ty
  %i.ub = and <4 x i1> %vec.phi230, %i.tz         ; 2 uses
  %i.uc = and <4 x i1> %vec.phi231, %i.ua         ; 2 uses
  %index.next236 = add nuw i64 %index229, 8       ; 2 uses
  %i.ud = icmp eq i64 %index.next236, %n.vec227
  br i1 %i.ud, label %middle.block237, label %vector.body228, !llvm.loop !864

middle.block237:                                  ; preds = %vector.body228
  %bin.rdx238 = and <4 x i1> %i.uc, %i.ub
  %i.ue = bitcast <4 x i1> %bin.rdx238 to i4
  %i.uf = icmp eq i4 %i.ue, -1                    ; 2 uses
  %cmp.n239 = icmp eq i64 %i.te, %n.vec227
  br i1 %cmp.n239, label %._crit_edge.i23.i.i.i.i.i.i.i.i.i, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i.i46.i.i.i, %middle.block237
  %.ph465 = phi i1 [ %i.tk, %.lr.ph.i13.i.i.i.i.i.i46.i.i.i ], [ %i.uf, %middle.block237 ]
  %.01.i17.i.i.i.i.i.i50.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i46.i.i.i ], [ %n.vec227, %middle.block237 ]
  br label %scalar.ph224

._crit_edge.i23.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph224, %middle.block237
  %.lcssa120 = phi i1 [ %i.uf, %middle.block237 ], [ %i.uo, %scalar.ph224 ]
  %i.ug = zext i1 %.lcssa120 to i8
  store i8 %i.ug, ptr %i.tc, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %i.uh = phi i1 [ %i.uo, %scalar.ph224 ], [ %.ph465, %scalar.ph224.preheader ]
  %.01.i17.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.up, %scalar.ph224 ], [ %.01.i17.i.i.i.i.i.i50.i.i.i.ph, %scalar.ph224.preheader ] ; 2 uses
  %i.ui = add nsw i64 %.01.i17.i.i.i.i.i.i50.i.i.i, %i.tg ; 2 uses
  %gep.i18.i.i.i.i.i.i51.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i47.i.i.i, i64 %i.ui
  %i.uj = load float, ptr %gep.i18.i.i.i.i.i.i51.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i19.i.i.i.i.i.i52.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i, i64 %i.ui
  %i.uk = load float, ptr %gep3.i19.i.i.i.i.i.i52.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.ul = fcmp oeq float %i.uj, %i.uk
  %i.um = fcmp uno float %i.uj, 0.000000e+00
  %i.un = fcmp uno float %i.uk, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i.i.i53.i.i.i = and i1 %i.um, %i.un
  %.0.i.i.i21.i.i.i.i.i.i54.i.i.i = or i1 %i.ul, %or.cond.i.i.i20.i.i.i.i.i.i53.i.i.i
  %i.uo = and i1 %i.uh, %.0.i.i.i21.i.i.i.i.i.i54.i.i.i ; 2 uses
  %i.up = add nuw nsw i64 %.01.i17.i.i.i.i.i.i50.i.i.i, 1 ; 2 uses
  %exitcond.not.i22.i.i.i.i.i.i55.i.i.i = icmp eq i64 %i.up, %i.te
  br i1 %exitcond.not.i22.i.i.i.i.i.i55.i.i.i, label %._crit_edge.i23.i.i.i.i.i.i.i.i.i, label %scalar.ph224, !llvm.loop !865

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i44.i.i.i
  %i.uq = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !880 ; 2 uses
  %i.ur = extractvalue { i64, i64 } %i.uq, 1      ; 2 uses
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %._crit_edge.i.i.i.i.i.i45.i.i.i, label %.lr.ph.i.i.i.i.i.i44.i.i.i

._crit_edge.i.i.i.i.i.i45.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.al:                                            ; preds = %bb.ah
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i.i22.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ut = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.uv = trunc nuw i8 %i.uu to i1
  %i.uw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8, !noalias !880 ; 2 uses
  %i.uy = icmp ne ptr %i.ux, null
  %or.cond.not.i.i.i4.i.i21.i.i.i = select i1 %i.uv, i1 %i.uy, i1 false
  br i1 %or.cond.not.i.i.i4.i.i21.i.i.i, label %bb.ap, label %.thread.i.i.i5.i.i22.i.i.i, !prof !179

.thread.i.i.i5.i.i22.i.i.i:                       ; preds = %bb.am, %bb.al
  %i.uz = icmp sgt i64 %i.rk, 0
  br i1 %i.uz, label %.lr.ph.i.i.i.i.i6.i.i23.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i23.i.i.i:                    ; preds = %.thread.i.i.i5.i.i22.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i24.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.rh ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.vb ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i.i.i.i.i = load i8, ptr %i.vc, align 8, !tbaa !90, !noalias !880
  %i.vd = icmp ne i8 %.promoted.i.i.i.i.i9.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.rk, 8
  br i1 %min.iters.check205, label %scalar.ph204.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph.i.i.i.i.i6.i.i23.i.i.i
  %n.vec207 = and i64 %i.rk, 9223372036854775800  ; 3 uses
  %i.ve = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.vd, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next218, %vector.body208 ] ; 3 uses
  %vec.phi210 = phi <4 x i1> [ %i.ve, %vector.ph206 ], [ %i.vz, %vector.body208 ]
  %vec.phi211 = phi <4 x i1> [ splat (i1 true), %vector.ph206 ], [ %i.wa, %vector.body208 ]
  %i.vf = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i24.i.i.i, i64 %index209 ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 16
  %wide.load212 = load <4 x float>, ptr %i.vf, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load213 = load <4 x float>, ptr %i.vg, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.vh = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i, i64 %index209 ; 2 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 16
  %wide.load214 = load <4 x float>, ptr %i.vh, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load215 = load <4 x float>, ptr %i.vi, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.vj = fcmp oeq <4 x float> %wide.load212, %wide.load214
  %i.vk = fcmp oeq <4 x float> %wide.load213, %wide.load215
  %i.vl = fcmp uno <4 x float> %wide.load212, zeroinitializer
  %i.vm = fcmp uno <4 x float> %wide.load213, zeroinitializer
  %i.vn = fcmp uno <4 x float> %wide.load214, zeroinitializer
  %i.vo = fcmp uno <4 x float> %wide.load215, zeroinitializer
  %i.vp = and <4 x i1> %i.vl, %i.vn
  %i.vq = and <4 x i1> %i.vm, %i.vo
  %i.vr = bitcast <4 x float> %wide.load212 to <4 x i32>
  %i.vs = bitcast <4 x float> %wide.load213 to <4 x i32>
  %i.vt = bitcast <4 x float> %wide.load214 to <4 x i32>
  %i.vu = bitcast <4 x float> %wide.load215 to <4 x i32>
  %i.vv = xor <4 x i32> %i.vt, %i.vr
  %i.vw = xor <4 x i32> %i.vu, %i.vs
  %i.vx = icmp sgt <4 x i32> %i.vv, splat (i32 -1)
  %i.vy = icmp sgt <4 x i32> %i.vw, splat (i32 -1)
  %predphi216 = select <4 x i1> %i.vj, <4 x i1> %i.vx, <4 x i1> %i.vp
  %predphi217 = select <4 x i1> %i.vk, <4 x i1> %i.vy, <4 x i1> %i.vq
  %i.vz = and <4 x i1> %vec.phi210, %predphi216   ; 2 uses
  %i.wa = and <4 x i1> %vec.phi211, %predphi217   ; 2 uses
  %index.next218 = add nuw i64 %index209, 8       ; 2 uses
  %i.wb = icmp eq i64 %index.next218, %n.vec207
  br i1 %i.wb, label %middle.block219, label %vector.body208, !llvm.loop !866

middle.block219:                                  ; preds = %vector.body208
  %bin.rdx220 = and <4 x i1> %i.wa, %i.vz
  %i.wc = bitcast <4 x i1> %bin.rdx220 to i4
  %i.wd = icmp eq i4 %i.wc, -1                    ; 2 uses
  %cmp.n221 = icmp eq i64 %i.rk, %n.vec207
  br i1 %cmp.n221, label %._crit_edge.i.i.i.i.i16.i.i.i.i.i, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i.i23.i.i.i, %middle.block219
  %.ph469 = phi i1 [ %i.vd, %.lr.ph.i.i.i.i.i6.i.i23.i.i.i ], [ %i.wd, %middle.block219 ]
  %.01.i.i.i.i.i10.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i23.i.i.i ], [ %n.vec207, %middle.block219 ]
  br label %scalar.ph204

._crit_edge.i.i.i.i.i16.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block219
  %.lcssa121 = phi i1 [ %i.wd, %middle.block219 ], [ %i.wp, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.we = zext i1 %.lcssa121 to i8
  store i8 %i.we, ptr %i.vc, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.wf = phi i1 [ %i.wp, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph469, %scalar.ph204.preheader ]
  %.01.i.i.i.i.i10.i.i.i.i.i = phi i64 [ %i.wq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i10.i.i.i.i.i.ph, %scalar.ph204.preheader ] ; 3 uses
  %gep.i.i.i.i.i11.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i24.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.wg = load float, ptr %gep.i.i.i.i.i11.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i.i.i.i.i12.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.wh = load float, ptr %gep3.i.i.i.i.i12.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.wi = fcmp oeq float %i.wg, %i.wh
  br i1 %i.wi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %scalar.ph204
  %i.wj = bitcast float %i.wg to i32
  %i.wk = bitcast float %i.wh to i32
  %i.wl = xor i32 %i.wk, %i.wj
  %i.wm = icmp sgt i32 %i.wl, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %scalar.ph204
  %i.wn = fcmp uno float %i.wg, 0.000000e+00
  %i.wo = fcmp uno float %i.wh, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i13.i.i26.i.i.i = and i1 %i.wn, %i.wo
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i14.i.i27.i.i.i = phi i1 [ %i.wm, %bb.an ], [ %or.cond.i.i.i.i.i.i.i13.i.i26.i.i.i, %bb.ao ]
  %i.wp = and i1 %i.wf, %.0.i.i.i.i.i.i.i14.i.i27.i.i.i ; 2 uses
  %i.wq = add nuw nsw i64 %.01.i.i.i.i.i10.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i28.i.i.i = icmp eq i64 %i.wq, %i.rk
  br i1 %exitcond.not.i.i.i.i.i15.i.i28.i.i.i, label %._crit_edge.i.i.i.i.i16.i.i.i.i.i, label %scalar.ph204, !llvm.loop !867

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.ux, i64 noundef %i.ri, i64 noundef %i.rk), !noalias !880
  %i.wr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !880 ; 2 uses
  %i.ws = extractvalue { i64, i64 } %i.wr, 1      ; 2 uses
  %i.wt = icmp eq i64 %i.ws, 0
  br i1 %i.wt, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i

.lr.ph.i.preheader.i.i.i17.i.i.i.i.i:             ; preds = %bb.ap
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i18.i.i.i.i.i

.lr.ph.i.i.i.i18.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i
  %i.ww = phi i64 [ %i.yt, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i ], [ %i.ws, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ] ; 5 uses
  %i.wx = phi { i64, i64 } [ %i.ys, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i ], [ %i.wr, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ]
  %i.wy = extractvalue { i64, i64 } %i.wx, 0      ; 2 uses
  %i.wz = icmp sgt i64 %i.ww, 0
  br i1 %i.wz, label %.lr.ph.i13.i.i.i.i20.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i20.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.xa = load i64, ptr %i.rg, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i21.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.xa ; 2 uses
  %i.xb = load i64, ptr %i.wv, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.xb ; 2 uses
  %.promoted.i16.i.i.i.i23.i.i.i.i.i = load i8, ptr %i.wu, align 8, !tbaa !90, !noalias !880
  %i.xc = icmp ne i8 %.promoted.i16.i.i.i.i23.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.ww, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph.i13.i.i.i.i20.i.i.i.i.i
  %n.vec188 = and i64 %i.ww, 9223372036854775800  ; 3 uses
  %i.xd = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.xc, i64 0
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body189 ] ; 2 uses
  %vec.phi191 = phi <4 x i1> [ %i.xd, %vector.ph187 ], [ %i.xz, %vector.body189 ]
  %vec.phi192 = phi <4 x i1> [ splat (i1 true), %vector.ph187 ], [ %i.ya, %vector.body189 ]
  %i.xe = add nsw i64 %index190, %i.wy            ; 2 uses
  %i.xf = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i21.i.i.i.i.i, i64 %i.xe ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 16
  %wide.load193 = load <4 x float>, ptr %i.xf, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load194 = load <4 x float>, ptr %i.xg, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.xh = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i, i64 %i.xe ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 16
  %wide.load195 = load <4 x float>, ptr %i.xh, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %wide.load196 = load <4 x float>, ptr %i.xi, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.xj = fcmp oeq <4 x float> %wide.load193, %wide.load195
  %i.xk = fcmp oeq <4 x float> %wide.load194, %wide.load196
  %i.xl = fcmp uno <4 x float> %wide.load193, zeroinitializer
  %i.xm = fcmp uno <4 x float> %wide.load194, zeroinitializer
  %i.xn = fcmp uno <4 x float> %wide.load195, zeroinitializer
  %i.xo = fcmp uno <4 x float> %wide.load196, zeroinitializer
  %i.xp = and <4 x i1> %i.xl, %i.xn
  %i.xq = and <4 x i1> %i.xm, %i.xo
  %i.xr = bitcast <4 x float> %wide.load193 to <4 x i32>
  %i.xs = bitcast <4 x float> %wide.load194 to <4 x i32>
  %i.xt = bitcast <4 x float> %wide.load195 to <4 x i32>
  %i.xu = bitcast <4 x float> %wide.load196 to <4 x i32>
  %i.xv = xor <4 x i32> %i.xt, %i.xr
  %i.xw = xor <4 x i32> %i.xu, %i.xs
  %i.xx = icmp sgt <4 x i32> %i.xv, splat (i32 -1)
  %i.xy = icmp sgt <4 x i32> %i.xw, splat (i32 -1)
  %predphi = select <4 x i1> %i.xj, <4 x i1> %i.xx, <4 x i1> %i.xp
  %predphi197 = select <4 x i1> %i.xk, <4 x i1> %i.xy, <4 x i1> %i.xq
  %i.xz = and <4 x i1> %vec.phi191, %predphi      ; 2 uses
  %i.ya = and <4 x i1> %vec.phi192, %predphi197   ; 2 uses
  %index.next198 = add nuw i64 %index190, 8       ; 2 uses
  %i.yb = icmp eq i64 %index.next198, %n.vec188
  br i1 %i.yb, label %middle.block199, label %vector.body189, !llvm.loop !868

middle.block199:                                  ; preds = %vector.body189
  %bin.rdx200 = and <4 x i1> %i.ya, %i.xz
  %i.yc = bitcast <4 x i1> %bin.rdx200 to i4
  %i.yd = icmp eq i4 %i.yc, -1                    ; 2 uses
  %cmp.n201 = icmp eq i64 %i.ww, %n.vec188
  br i1 %cmp.n201, label %._crit_edge.i24.i.i.i.i.i.i.i.i.i, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i20.i.i.i.i.i, %middle.block199
  %.ph473 = phi i1 [ %i.xc, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %i.yd, %middle.block199 ]
  %.01.i17.i.i.i.i24.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %n.vec188, %middle.block199 ]
  br label %scalar.ph185

._crit_edge.i24.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block199
  %.lcssa122 = phi i1 [ %i.yd, %middle.block199 ], [ %i.yq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.ye = zext i1 %.lcssa122 to i8
  store i8 %i.ye, ptr %i.wu, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.yf = phi i1 [ %i.yq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph473, %scalar.ph185.preheader ]
  %.01.i17.i.i.i.i24.i.i.i.i.i = phi i64 [ %i.yr, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i17.i.i.i.i24.i.i.i.i.i.ph, %scalar.ph185.preheader ] ; 2 uses
  %i.yg = add nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, %i.wy ; 2 uses
  %gep.i18.i.i.i.i25.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i21.i.i.i.i.i, i64 %i.yg
  %i.yh = load float, ptr %gep.i18.i.i.i.i25.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %gep3.i19.i.i.i.i26.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i, i64 %i.yg
  %i.yi = load float, ptr %gep3.i19.i.i.i.i26.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 3 uses
  %i.yj = fcmp oeq float %i.yh, %i.yi
  br i1 %i.yj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %scalar.ph185
  %i.yk = bitcast float %i.yh to i32
  %i.yl = bitcast float %i.yi to i32
  %i.ym = xor i32 %i.yl, %i.yk
  %i.yn = icmp sgt i32 %i.ym, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %scalar.ph185
  %i.yo = fcmp uno float %i.yh, 0.000000e+00
  %i.yp = fcmp uno float %i.yi, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i27.i.i.i.i.i = and i1 %i.yo, %i.yp
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i22.i.i.i.i.i.i29.i.i.i = phi i1 [ %i.yn, %bb.aq ], [ %or.cond.i.i.i20.i.i.i.i27.i.i.i.i.i, %bb.ar ]
  %i.yq = and i1 %i.yf, %.0.i.i.i22.i.i.i.i.i.i29.i.i.i ; 2 uses
  %i.yr = add nuw nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i.i30.i.i.i = icmp eq i64 %i.yr, %i.ww
  br i1 %exitcond.not.i23.i.i.i.i.i.i30.i.i.i, label %._crit_edge.i24.i.i.i.i.i.i.i.i.i, label %scalar.ph185, !llvm.loop !869

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.ys = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !880 ; 2 uses
  %i.yt = extractvalue { i64, i64 } %i.ys, 1      ; 2 uses
  %i.yu = icmp eq i64 %i.yt, 0
  br i1 %i.yu, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.i.i.i18.i.i.i.i.i

._crit_edge.i.i.i.i19.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.as:                                            ; preds = %bb.ag
  br i1 %i.an, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i17.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.yx = trunc nuw i8 %i.yw to i1
  %i.yy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !880 ; 2 uses
  %i.za = icmp ne ptr %i.yz, null
  %or.cond.not.i.i.i.i16.i.i.i.i = select i1 %i.yx, i1 %i.za, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i, label %bb.av, label %.thread.i.i.i.i17.i.i.i.i, !prof !179

.thread.i.i.i.i17.i.i.i.i:                        ; preds = %bb.au, %bb.at
  %i.zb = icmp sgt i64 %i.rk, 0
  br i1 %i.zb, label %.lr.ph.i.i.i.i.i.i18.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i18.i.i.i.i:                     ; preds = %.thread.i.i.i.i17.i.i.i.i
  %invariant.gep.i.i.i.i.i.i19.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.rh ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i.i20.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.zd ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i21.i.i.i.i = load i8, ptr %i.ze, align 8, !tbaa !90, !noalias !880
  %i.zf = icmp ne i8 %.promoted.i.i.i.i.i.i21.i.i.i.i, 0 ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.rk, 8
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i.i.i.i.i18.i.i.i.i
  %n.vec170 = and i64 %i.rk, 9223372036854775800  ; 3 uses
  %i.zg = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.zf, i64 0
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body171 ] ; 3 uses
  %vec.phi173 = phi <4 x i1> [ %i.zg, %vector.ph169 ], [ %i.zn, %vector.body171 ]
  %vec.phi174 = phi <4 x i1> [ splat (i1 true), %vector.ph169 ], [ %i.zo, %vector.body171 ]
  %i.zh = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i19.i.i.i.i, i64 %index172 ; 2 uses
  %i.zi = getelementptr i8, ptr %i.zh, i64 16
  %wide.load175 = load <4 x float>, ptr %i.zh, align 4, !tbaa !147, !noalias !880
  %wide.load176 = load <4 x float>, ptr %i.zi, align 4, !tbaa !147, !noalias !880
  %i.zj = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i20.i.i.i.i, i64 %index172 ; 2 uses
  %i.zk = getelementptr i8, ptr %i.zj, i64 16
  %wide.load177 = load <4 x float>, ptr %i.zj, align 4, !tbaa !147, !noalias !880
  %wide.load178 = load <4 x float>, ptr %i.zk, align 4, !tbaa !147, !noalias !880
  %i.zl = fcmp oeq <4 x float> %wide.load175, %wide.load177
  %i.zm = fcmp oeq <4 x float> %wide.load176, %wide.load178
  %i.zn = and <4 x i1> %vec.phi173, %i.zl         ; 2 uses
  %i.zo = and <4 x i1> %vec.phi174, %i.zm         ; 2 uses
  %index.next179 = add nuw i64 %index172, 8       ; 2 uses
  %i.zp = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.zp, label %middle.block180, label %vector.body171, !llvm.loop !870

middle.block180:                                  ; preds = %vector.body171
  %bin.rdx181 = and <4 x i1> %i.zo, %i.zn
  %i.zq = bitcast <4 x i1> %bin.rdx181 to i4
  %i.zr = icmp eq i4 %i.zq, -1                    ; 2 uses
  %cmp.n182 = icmp eq i64 %i.rk, %n.vec170
  br i1 %cmp.n182, label %._crit_edge.i.i.i.i.i.i26.i.i.i.i, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i18.i.i.i.i, %middle.block180
  %.ph477 = phi i1 [ %i.zf, %.lr.ph.i.i.i.i.i.i18.i.i.i.i ], [ %i.zr, %middle.block180 ]
  %.01.i.i.i.i.i.i22.i12.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i18.i.i.i.i ], [ %n.vec170, %middle.block180 ]
  br label %scalar.ph167

._crit_edge.i.i.i.i.i.i26.i.i.i.i:                ; preds = %scalar.ph167, %middle.block180
  %.lcssa123 = phi i1 [ %i.zr, %middle.block180 ], [ %i.zx, %scalar.ph167 ]
  %i.zs = zext i1 %.lcssa123 to i8
  store i8 %i.zs, ptr %i.ze, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %i.zt = phi i1 [ %i.zx, %scalar.ph167 ], [ %.ph477, %scalar.ph167.preheader ]
  %.01.i.i.i.i.i.i22.i12.i.i.i = phi i64 [ %i.zy, %scalar.ph167 ], [ %.01.i.i.i.i.i.i22.i12.i.i.i.ph, %scalar.ph167.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i23.i13.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i19.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i12.i.i.i
  %i.zu = load float, ptr %gep.i.i.i.i.i.i23.i13.i.i.i, align 4, !tbaa !147, !noalias !880
  %gep3.i.i.i.i.i.i24.i14.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i20.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i12.i.i.i
  %i.zv = load float, ptr %gep3.i.i.i.i.i.i24.i14.i.i.i, align 4, !tbaa !147, !noalias !880
  %i.zw = fcmp oeq float %i.zu, %i.zv
  %i.zx = and i1 %i.zt, %i.zw                     ; 2 uses
  %i.zy = add nuw nsw i64 %.01.i.i.i.i.i.i22.i12.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i25.i.i.i.i = icmp eq i64 %i.zy, %i.rk
  br i1 %exitcond.not.i.i.i.i.i.i25.i.i.i.i, label %._crit_edge.i.i.i.i.i.i26.i.i.i.i, label %scalar.ph167, !llvm.loop !871

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.yz, i64 noundef %i.ri, i64 noundef %i.rk), !noalias !880
  %i.zz = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !880 ; 2 uses
  %i.aaa = extractvalue { i64, i64 } %i.zz, 1     ; 2 uses
  %i.aab = icmp eq i64 %i.aaa, 0
  br i1 %i.aab, label %._crit_edge.i.i.i.i.i29.i17.i.i.i, label %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i

.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i:           ; preds = %bb.av
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i28.i16.i.i.i

.lr.ph.i.i.i.i.i28.i16.i.i.i:                     ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i
  %i.aae = phi i64 [ %i.abh, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i ], [ %i.aaa, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i ] ; 5 uses
  %i.aaf = phi { i64, i64 } [ %i.abg, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i ], [ %i.zz, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i ]
  %i.aag = extractvalue { i64, i64 } %i.aaf, 0    ; 2 uses
  %i.aah = icmp sgt i64 %i.aae, 0
  br i1 %i.aah, label %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i30.i18.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i28.i16.i.i.i
  %i.aai = load i64, ptr %i.rg, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.aai ; 2 uses
  %i.aaj = load i64, ptr %i.aad, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.aaj ; 2 uses
  %.promoted.i16.i.i.i.i.i33.i.i.i.i = load i8, ptr %i.aac, align 8, !tbaa !90, !noalias !880
  %i.aak = icmp ne i8 %.promoted.i16.i.i.i.i.i33.i.i.i.i, 0 ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.aae, 8
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i
  %n.vec152 = and i64 %i.aae, 9223372036854775800 ; 3 uses
  %i.aal = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.aak, i64 0
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %vec.phi155 = phi <4 x i1> [ %i.aal, %vector.ph151 ], [ %i.aat, %vector.body153 ]
  %vec.phi156 = phi <4 x i1> [ splat (i1 true), %vector.ph151 ], [ %i.aau, %vector.body153 ]
  %i.aam = add nsw i64 %index154, %i.aag          ; 2 uses
  %i.aan = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i, i64 %i.aam ; 2 uses
  %i.aao = getelementptr i8, ptr %i.aan, i64 16
  %wide.load157 = load <4 x float>, ptr %i.aan, align 4, !tbaa !147, !noalias !880
  %wide.load158 = load <4 x float>, ptr %i.aao, align 4, !tbaa !147, !noalias !880
  %i.aap = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i, i64 %i.aam ; 2 uses
  %i.aaq = getelementptr i8, ptr %i.aap, i64 16
  %wide.load159 = load <4 x float>, ptr %i.aap, align 4, !tbaa !147, !noalias !880
  %wide.load160 = load <4 x float>, ptr %i.aaq, align 4, !tbaa !147, !noalias !880
  %i.aar = fcmp oeq <4 x float> %wide.load157, %wide.load159
  %i.aas = fcmp oeq <4 x float> %wide.load158, %wide.load160
  %i.aat = and <4 x i1> %vec.phi155, %i.aar       ; 2 uses
  %i.aau = and <4 x i1> %vec.phi156, %i.aas       ; 2 uses
  %index.next161 = add nuw i64 %index154, 8       ; 2 uses
  %i.aav = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.aav, label %middle.block162, label %vector.body153, !llvm.loop !872

middle.block162:                                  ; preds = %vector.body153
  %bin.rdx163 = and <4 x i1> %i.aau, %i.aat
  %i.aaw = bitcast <4 x i1> %bin.rdx163 to i4
  %i.aax = icmp eq i4 %i.aaw, -1                  ; 2 uses
  %cmp.n164 = icmp eq i64 %i.aae, %n.vec152
  br i1 %cmp.n164, label %._crit_edge.i21.i.i.i.i.i.i.i.i.i, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i, %middle.block162
  %.ph481 = phi i1 [ %i.aak, %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i ], [ %i.aax, %middle.block162 ]
  %.01.i17.i.i.i.i.i34.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i ], [ %n.vec152, %middle.block162 ]
  br label %scalar.ph149

._crit_edge.i21.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph149, %middle.block162
  %.lcssa124 = phi i1 [ %i.aax, %middle.block162 ], [ %i.abe, %scalar.ph149 ]
  %i.aay = zext i1 %.lcssa124 to i8
  store i8 %i.aay, ptr %i.aac, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %i.aaz = phi i1 [ %i.abe, %scalar.ph149 ], [ %.ph481, %scalar.ph149.preheader ]
  %.01.i17.i.i.i.i.i34.i.i.i.i = phi i64 [ %i.abf, %scalar.ph149 ], [ %.01.i17.i.i.i.i.i34.i.i.i.i.ph, %scalar.ph149.preheader ] ; 2 uses
  %i.aba = add nsw i64 %.01.i17.i.i.i.i.i34.i.i.i.i, %i.aag ; 2 uses
  %gep.i18.i.i.i.i.i35.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i, i64 %i.aba
  %i.abb = load float, ptr %gep.i18.i.i.i.i.i35.i.i.i.i, align 4, !tbaa !147, !noalias !880
  %gep3.i19.i.i.i.i.i36.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i, i64 %i.aba
  %i.abc = load float, ptr %gep3.i19.i.i.i.i.i36.i.i.i.i, align 4, !tbaa !147, !noalias !880
  %i.abd = fcmp oeq float %i.abb, %i.abc
  %i.abe = and i1 %i.aaz, %i.abd                  ; 2 uses
  %i.abf = add nuw nsw i64 %.01.i17.i.i.i.i.i34.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abf, %i.aae
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.i, label %._crit_edge.i21.i.i.i.i.i.i.i.i.i, label %scalar.ph149, !llvm.loop !873

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i21.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i16.i.i.i
  %i.abg = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !880 ; 2 uses
  %i.abh = extractvalue { i64, i64 } %i.abg, 1    ; 2 uses
  %i.abi = icmp eq i64 %i.abh, 0
  br i1 %i.abi, label %._crit_edge.i.i.i.i.i29.i17.i.i.i, label %.lr.ph.i.i.i.i.i28.i16.i.i.i

._crit_edge.i.i.i.i.i29.i17.i.i.i:                ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.aw:                                            ; preds = %bb.as
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i7.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.abj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !144, !range !36, !noalias !880, !noundef !37
  %i.abl = trunc nuw i8 %i.abk to i1
  %i.abm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.abn = load ptr, ptr %i.abm, align 8, !noalias !880 ; 2 uses
  %i.abo = icmp ne ptr %i.abn, null
  %or.cond.not.i.i.i4.i6.i.i.i.i = select i1 %i.abl, i1 %i.abo, i1 false
  br i1 %or.cond.not.i.i.i4.i6.i.i.i.i, label %bb.ay, label %.thread.i.i.i5.i7.i.i.i.i, !prof !179

.thread.i.i.i5.i7.i.i.i.i:                        ; preds = %bb.ax, %bb.aw
  %i.abp = icmp sgt i64 %i.rk, 0
  br i1 %i.abp, label %.lr.ph.i.i.i.i.i6.i8.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i8.i.i.i.i:                     ; preds = %.thread.i.i.i5.i7.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i9.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.rh ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abr = load i64, ptr %i.abq, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.abr ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i11.i.i.i.i = load i8, ptr %i.abs, align 8, !tbaa !90, !noalias !880
  %i.abt = icmp ne i8 %.promoted.i.i.i.i.i9.i11.i.i.i.i, 0 ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.rk, 8
  br i1 %min.iters.check132, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.i.i6.i8.i.i.i.i
  %n.vec134 = and i64 %i.rk, 9223372036854775800  ; 3 uses
  %i.abu = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.abt, i64 0
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next143, %vector.body135 ] ; 3 uses
  %vec.phi137 = phi <4 x i1> [ %i.abu, %vector.ph133 ], [ %i.acl, %vector.body135 ]
  %vec.phi138 = phi <4 x i1> [ splat (i1 true), %vector.ph133 ], [ %i.acm, %vector.body135 ]
  %i.abv = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i9.i.i.i.i, i64 %index136 ; 2 uses
  %i.abw = getelementptr i8, ptr %i.abv, i64 16
  %wide.load139 = load <4 x float>, ptr %i.abv, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load140 = load <4 x float>, ptr %i.abw, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.abx = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i, i64 %index136 ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 16
  %wide.load141 = load <4 x float>, ptr %i.abx, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load142 = load <4 x float>, ptr %i.aby, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.abz = fcmp oeq <4 x float> %wide.load139, %wide.load141
  %i.aca = fcmp oeq <4 x float> %wide.load140, %wide.load142
  %i.acb = bitcast <4 x float> %wide.load139 to <4 x i32>
  %i.acc = bitcast <4 x float> %wide.load140 to <4 x i32>
  %i.acd = bitcast <4 x float> %wide.load141 to <4 x i32>
  %i.ace = bitcast <4 x float> %wide.load142 to <4 x i32>
  %i.acf = xor <4 x i32> %i.acd, %i.acb
  %i.acg = xor <4 x i32> %i.ace, %i.acc
  %i.ach = icmp sgt <4 x i32> %i.acf, splat (i32 -1)
  %i.aci = icmp sgt <4 x i32> %i.acg, splat (i32 -1)
  %i.acj = and <4 x i1> %i.abz, %i.ach
  %i.ack = and <4 x i1> %i.aca, %i.aci
  %i.acl = and <4 x i1> %vec.phi137, %i.acj       ; 2 uses
  %i.acm = and <4 x i1> %vec.phi138, %i.ack       ; 2 uses
  %index.next143 = add nuw i64 %index136, 8       ; 2 uses
  %i.acn = icmp eq i64 %index.next143, %n.vec134
  br i1 %i.acn, label %middle.block144, label %vector.body135, !llvm.loop !874

middle.block144:                                  ; preds = %vector.body135
  %bin.rdx145 = and <4 x i1> %i.acm, %i.acl
  %i.aco = bitcast <4 x i1> %bin.rdx145 to i4
  %i.acp = icmp eq i4 %i.aco, -1                  ; 2 uses
  %cmp.n146 = icmp eq i64 %i.rk, %n.vec134
  br i1 %cmp.n146, label %._crit_edge.i.i.i.i.i14.i.i.i.i.i, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i8.i.i.i.i, %middle.block144
  %.ph485 = phi i1 [ %i.abt, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %i.acp, %middle.block144 ]
  %.01.i.i.i.i.i10.i12.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %n.vec134, %middle.block144 ]
  br label %scalar.ph131

._crit_edge.i.i.i.i.i14.i.i.i.i.i:                ; preds = %scalar.ph131, %middle.block144
  %.lcssa125 = phi i1 [ %i.acp, %middle.block144 ], [ %i.acz, %scalar.ph131 ]
  %i.acq = zext i1 %.lcssa125 to i8
  store i8 %i.acq, ptr %i.abs, align 8, !tbaa !90, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

scalar.ph131:                                     ; preds = %scalar.ph131.preheader, %scalar.ph131
  %i.acr = phi i1 [ %i.acz, %scalar.ph131 ], [ %.ph485, %scalar.ph131.preheader ]
  %.01.i.i.i.i.i10.i12.i.i.i.i = phi i64 [ %i.ada, %scalar.ph131 ], [ %.01.i.i.i.i.i10.i12.i.i.i.i.ph, %scalar.ph131.preheader ] ; 3 uses
  %gep.i.i.i.i.i11.i13.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i9.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.acs = load float, ptr %gep.i.i.i.i.i11.i13.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i.i.i.i.i12.i14.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.act = load float, ptr %gep3.i.i.i.i.i12.i14.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.acu = fcmp oeq float %i.acs, %i.act
  %i.acv = bitcast float %i.acs to i32
  %i.acw = bitcast float %i.act to i32
  %i.acx = xor i32 %i.acw, %i.acv
  %i.acy = icmp sgt i32 %i.acx, -1
  %.0.i.i.i.i.i.i.i.i15.i.i.i.i = and i1 %i.acu, %i.acy
  %i.acz = and i1 %i.acr, %.0.i.i.i.i.i.i.i.i15.i.i.i.i ; 2 uses
  %i.ada = add nuw nsw i64 %.01.i.i.i.i.i10.i12.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13.i.i.i.i.i = icmp eq i64 %i.ada, %i.rk
  br i1 %exitcond.not.i.i.i.i.i13.i.i.i.i.i, label %._crit_edge.i.i.i.i.i14.i.i.i.i.i, label %scalar.ph131, !llvm.loop !875

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !880
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.abn, i64 noundef %i.ri, i64 noundef %i.rk), !noalias !880
  %i.adb = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !880 ; 2 uses
  %i.adc = extractvalue { i64, i64 } %i.adb, 1    ; 2 uses
  %i.add = icmp eq i64 %i.adc, 0
  br i1 %i.add, label %._crit_edge.i.i.i.i17.i.i8.i.i.i, label %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i

.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i:            ; preds = %bb.ay
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i16.i.i7.i.i.i

.lr.ph.i.i.i.i16.i.i7.i.i.i:                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i
  %i.adg = phi i64 [ %i.aex, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.adc, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i ] ; 5 uses
  %i.adh = phi { i64, i64 } [ %i.aew, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.adb, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i ]
  %i.adi = extractvalue { i64, i64 } %i.adh, 0    ; 2 uses
  %i.adj = icmp sgt i64 %i.adg, 0
  br i1 %i.adj, label %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i18.i.i9.i.i.i:                  ; preds = %.lr.ph.i.i.i.i16.i.i7.i.i.i
  %i.adk = load i64, ptr %i.rg, align 8, !tbaa !87, !noalias !880
  %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.adk ; 2 uses
  %i.adl = load i64, ptr %i.adf, align 8, !tbaa !88, !noalias !880
  %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.adl ; 2 uses
  %.promoted.i16.i.i.i.i21.i.i.i.i.i = load i8, ptr %i.ade, align 8, !tbaa !90, !noalias !880
  %i.adm = icmp ne i8 %.promoted.i16.i.i.i.i21.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check = icmp ult i64 %i.adg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i
  %n.vec = and i64 %i.adg, 9223372036854775800    ; 3 uses
  %i.adn = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.adm, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ %i.adn, %vector.ph ], [ %i.aef, %vector.body ]
  %vec.phi127 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aeg, %vector.body ]
  %i.ado = add nsw i64 %index, %i.adi             ; 2 uses
  %i.adp = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.ado ; 2 uses
  %i.adq = getelementptr i8, ptr %i.adp, i64 16
  %wide.load = load <4 x float>, ptr %i.adp, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.adq, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.adr = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.ado ; 2 uses
  %i.ads = getelementptr i8, ptr %i.adr, i64 16
  %wide.load129 = load <4 x float>, ptr %i.adr, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %wide.load130 = load <4 x float>, ptr %i.ads, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.adt = fcmp oeq <4 x float> %wide.load, %wide.load129
  %i.adu = fcmp oeq <4 x float> %wide.load128, %wide.load130
  %i.adv = bitcast <4 x float> %wide.load to <4 x i32>
  %i.adw = bitcast <4 x float> %wide.load128 to <4 x i32>
  %i.adx = bitcast <4 x float> %wide.load129 to <4 x i32>
  %i.ady = bitcast <4 x float> %wide.load130 to <4 x i32>
  %i.adz = xor <4 x i32> %i.adx, %i.adv
  %i.aea = xor <4 x i32> %i.ady, %i.adw
  %i.aeb = icmp sgt <4 x i32> %i.adz, splat (i32 -1)
  %i.aec = icmp sgt <4 x i32> %i.aea, splat (i32 -1)
  %i.aed = and <4 x i1> %i.adt, %i.aeb
  %i.aee = and <4 x i1> %i.adu, %i.aec
  %i.aef = and <4 x i1> %vec.phi, %i.aed          ; 2 uses
  %i.aeg = and <4 x i1> %vec.phi127, %i.aee       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aeh = icmp eq i64 %index.next, %n.vec
  br i1 %i.aeh, label %middle.block, label %vector.body, !llvm.loop !876

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.aeg, %i.aef
  %i.aei = bitcast <4 x i1> %bin.rdx to i4
  %i.aej = icmp eq i4 %i.aei, -1                  ; 2 uses
  %cmp.n = icmp eq i64 %i.adg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i, %middle.block
  %.ph489 = phi i1 [ %i.adm, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %i.aej, %middle.block ]
  %.01.i17.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i22.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph, %middle.block
  %.lcssa126 = phi i1 [ %i.aej, %middle.block ], [ %i.aeu, %scalar.ph ]
  %i.aek = zext i1 %.lcssa126 to i8
  store i8 %i.aek, ptr %i.ade, align 8, !tbaa !90, !noalias !880
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ael = phi i1 [ %i.aeu, %scalar.ph ], [ %.ph489, %scalar.ph.preheader ]
  %.01.i17.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.aev, %scalar.ph ], [ %.01.i17.i.i.i.i22.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aem = add nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, %i.adi ; 2 uses
  %gep.i18.i.i.i.i23.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.aem
  %i.aen = load float, ptr %gep.i18.i.i.i.i23.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %gep3.i19.i.i.i.i24.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.aem
  %i.aeo = load float, ptr %gep3.i19.i.i.i.i24.i.i.i.i.i, align 4, !tbaa !147, !noalias !880 ; 2 uses
  %i.aep = fcmp oeq float %i.aen, %i.aeo
  %i.aeq = bitcast float %i.aen to i32
  %i.aer = bitcast float %i.aeo to i32
  %i.aes = xor i32 %i.aer, %i.aeq
  %i.aet = icmp sgt i32 %i.aes, -1
  %.0.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.aep, %i.aet
  %i.aeu = and i1 %i.ael, %.0.i.i.i20.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aev = add nuw nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i21.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aev, %i.adg
  br i1 %exitcond.not.i21.i.i.i.i.i.i.i.i.i, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !877

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i22.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i7.i.i.i
  %i.aew = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !880 ; 2 uses
  %i.aex = extractvalue { i64, i64 } %i.aew, 1    ; 2 uses
  %i.aey = icmp eq i64 %i.aex, 0
  br i1 %i.aey, label %._crit_edge.i.i.i.i17.i.i8.i.i.i, label %.lr.ph.i.i.i.i16.i.i7.i.i.i

._crit_edge.i.i.i.i17.i.i8.i.i.i:                 ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !880
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit: ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %.thread.i.i.i5.i.i.i.i.i, %._crit_edge.i.i.i.i18.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i18.i.i.i.i, %._crit_edge.i.i.i.i.i29.i.i.i.i, %.thread.i.i.i5.i8.i.i.i.i, %._crit_edge.i.i.i.i17.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i.i32.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i45.i.i.i, %.thread.i.i.i5.i.i22.i.i.i, %._crit_edge.i.i.i.i.i16.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i.i.i.i, %.thread.i.i.i.i17.i.i.i.i, %._crit_edge.i.i.i.i.i.i26.i.i.i.i, %._crit_edge.i.i.i.i.i29.i17.i.i.i, %.thread.i.i.i5.i7.i.i.i.i, %._crit_edge.i.i.i.i.i14.i.i.i.i.i, %._crit_edge.i.i.i.i17.i.i8.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !881
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10DoubleTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %6 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %7 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %8 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %9 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !914, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !914 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !914 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !914
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !914
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !914, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !914
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !914 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !914
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !914
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit.i ] ; 16 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !180, !noalias !914, !nonnull !37, !align !168 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !85, !range !36, !noalias !914, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !81, !range !36, !noalias !914, !noundef !37
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !181, !range !36, !noalias !914, !noundef !37
  %i.an = trunc nuw i8 %i.am to i1                ; 4 uses
  br i1 %i.ah, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit3.i
  %.val.i.i.i.i.i = load double, ptr %i.ae, align 8, !tbaa !145, !noalias !914 ; 13 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !171, !noalias !914
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87, !noalias !914 ; 5 uses
  %i.as = add nsw i64 %i.ar, %i.ap                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !89, !noalias !914 ; 18 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !914 ; 9 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !914 ; 2 uses
  %i.ba = icmp ne ptr %i.az, null
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.k, label %.thread.i.i.i.i.i.i.i.i, !prof !179

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.g, %bb.f
  %i.bb = icmp sgt i64 %i.au, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i.i.i
  %invariant.gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ar
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted7.i.i.i.i.i = load i8, ptr %i.be, align 8, !tbaa !90, !noalias !914
  %i.bf = icmp ne i8 %.promoted7.i.i.i.i.i, 0
  br label %bb.h

bb.h:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bg = phi i1 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bq, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.bh = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.bi = load double, ptr %gep3.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.bj = fcmp oeq double %i.bh, %i.bi
  br i1 %i.bj, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = fcmp uno double %i.bh, 0.000000e+00
  %i.bl = fcmp uno double %i.bi, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = fsub double %i.bh, %i.bi
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ole double %i.bn, %.val.i.i.i.i.i
  %i.bp = and i1 %i.bg, %i.bo
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.bg, %bb.i ], [ %i.bg, %bb.h ], [ %i.bp, %bb.j ] ; 2 uses
  %i.bq = add nuw nsw i64 %.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, %i.au
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %bb.h, !llvm.loop !884

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %i.az, i64 noundef %i.as, i64 noundef %i.au), !noalias !914
  %i.br = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !914 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 1      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i:               ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i
  %i.bw = phi i64 [ %i.cr, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.bs, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = phi { i64, i64 } [ %i.cq, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ]
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = icmp sgt i64 %i.bw, 0
  br i1 %i.bz, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ca
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.cb
  %.promoted5.i.i.i.i.i = load i8, ptr %i.bu, align 8, !tbaa !90, !noalias !914
  %i.cc = icmp ne i8 %.promoted5.i.i.i.i.i, 0
  br label %bb.l

bb.l:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i.i.i.i.i
  %i.cd = phi i1 [ %i.cc, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i22.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.01.i16.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %i.co, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ce = add nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, %i.by ; 2 uses
  %gep.i17.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.ce
  %i.cf = load double, ptr %gep.i17.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i18.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.ce
  %i.cg = load double, ptr %gep3.i18.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.ch = fcmp oeq double %i.cf, %i.cg
  br i1 %i.ch, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = fcmp uno double %i.cf, 0.000000e+00
  %i.cj = fcmp uno double %i.cg, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = fsub double %i.cf, %i.cg
  %i.cl = call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ole double %i.cl, %.val.i.i.i.i.i
  %i.cn = and i1 %i.cd, %i.cm
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.i.i22.i.i.i.i.i.i.i.i.i = phi i1 [ %i.cd, %bb.m ], [ %i.cd, %bb.l ], [ %i.cn, %bb.n ] ; 2 uses
  %i.co = add nuw nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.bw
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %bb.l, !llvm.loop !884

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.cp = zext i1 %.0.i.i.i22.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.cp, ptr %i.bu, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cq = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !914 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 1      ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.o:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !914 ; 2 uses
  %i.cy = icmp ne ptr %i.cx, null
  %or.cond.not.i.i.i4.i.i.i.i.i = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond.not.i.i.i4.i.i.i.i.i, label %bb.u, label %.thread.i.i.i5.i.i.i.i.i, !prof !179

.thread.i.i.i5.i.i.i.i.i:                         ; preds = %bb.p, %bb.o
  %i.cz = icmp sgt i64 %i.au, 0
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i6.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i.i.i.i:                      ; preds = %.thread.i.i.i5.i.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ar
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i8.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.db
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted3.i.i.i.i.i = load i8, ptr %i.dc, align 8, !tbaa !90, !noalias !914
  %i.dd = icmp ne i8 %.promoted3.i.i.i.i.i, 0
  br label %bb.q

bb.q:                                             ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i6.i.i.i.i.i
  %i.de = phi i1 [ %i.dd, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %i.dr, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %.01.i.i.i.i.i9.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %i.ds, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i10.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.df = load double, ptr %gep.i.i.i.i.i10.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %gep3.i.i.i.i.i11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.dg = load double, ptr %gep3.i.i.i.i.i11.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %i.dh = fcmp oeq double %i.df, %i.dg
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.di = bitcast double %i.df to i64
  %i.dj = bitcast double %i.dg to i64
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = icmp sgt i64 %i.dk, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dm = fcmp uno double %i.df, 0.000000e+00
  %i.dn = fcmp uno double %i.dg, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i = and i1 %i.dm, %i.dn
  br i1 %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = fsub double %i.df, %i.dg
  %i.dp = tail call double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp ole double %i.dp, %.val.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i14.i.i.i.i.i = phi i1 [ %i.dl, %bb.r ], [ true, %bb.s ], [ %i.dq, %bb.t ]
  %i.dr = and i1 %i.de, %.0.i.i.i.i.i.i.i14.i.i.i.i.i ; 2 uses
  %i.ds = add nuw nsw i64 %.01.i.i.i.i.i9.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %i.ds, %i.au
  br i1 %exitcond.not.i.i.i.i.i15.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %bb.q, !llvm.loop !885

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %i.cx, i64 noundef %i.as, i64 noundef %i.au), !noalias !914
  %i.dt = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !914 ; 2 uses
  %i.du = extractvalue { i64, i64 } %i.dt, 1      ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %._crit_edge.i.i.i.i18.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i

.lr.ph.i.preheader.i.i.i16.i.i.i.i.i:             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert346 = insertelement <2 x double> poison, double %.val.i.i.i.i.i, i64 0
  %broadcast.splat347 = shufflevector <2 x double> %broadcast.splatinsert346, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i17.i.i.i.i.i

.lr.ph.i.i.i.i17.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i
  %i.dy = phi i64 [ %i.ge, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.du, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i ] ; 5 uses
  %i.dz = phi { i64, i64 } [ %i.gd, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.dt, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i ]
  %i.ea = extractvalue { i64, i64 } %i.dz, 0      ; 2 uses
  %i.eb = icmp sgt i64 %i.dy, 0
  br i1 %i.eb, label %.lr.ph.i13.i.i.i.i19.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i19.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i17.i.i.i.i.i
  %i.ec = load i64, ptr %i.aq, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i20.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ec ; 2 uses
  %i.ed = load i64, ptr %i.dx, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.ed ; 2 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.dw, align 8, !tbaa !90, !noalias !914
  %i.ee = icmp ne i8 %.promoted.i.i.i.i.i, 0      ; 2 uses
  %min.iters.check343 = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check343, label %scalar.ph342.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %.lr.ph.i13.i.i.i.i19.i.i.i.i.i
  %n.vec345 = and i64 %i.dy, 9223372036854775804  ; 3 uses
  %i.ef = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.ee, i64 0
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph344
  %index349 = phi i64 [ 0, %vector.ph344 ], [ %index.next360, %vector.body348 ] ; 2 uses
  %vec.phi350 = phi <2 x i1> [ %i.ef, %vector.ph344 ], [ %i.fh, %vector.body348 ]
  %vec.phi351 = phi <2 x i1> [ splat (i1 true), %vector.ph344 ], [ %i.fi, %vector.body348 ]
  %i.eg = add nsw i64 %index349, %i.ea            ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i20.i.i.i.i.i, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %wide.load352 = load <2 x double>, ptr %i.eh, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %wide.load353 = load <2 x double>, ptr %i.ei, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i, i64 %i.eg ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  %wide.load354 = load <2 x double>, ptr %i.ej, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %wide.load355 = load <2 x double>, ptr %i.ek, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %i.el = fcmp une <2 x double> %wide.load352, %wide.load354
  %i.em = fcmp une <2 x double> %wide.load353, %wide.load355
  %i.en = fcmp uno <2 x double> %wide.load352, zeroinitializer
  %i.eo = fcmp uno <2 x double> %wide.load353, zeroinitializer
  %i.ep = fcmp uno <2 x double> %wide.load354, zeroinitializer
  %i.eq = fcmp uno <2 x double> %wide.load355, zeroinitializer
  %i.er = and <2 x i1> %i.en, %i.ep
  %i.es = and <2 x i1> %i.eo, %i.eq
  %i.et = fsub <2 x double> %wide.load352, %wide.load354
  %i.eu = fsub <2 x double> %wide.load353, %wide.load355
  %i.ev = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.et)
  %i.ew = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eu)
  %i.ex = fcmp ole <2 x double> %i.ev, %broadcast.splat347
  %i.ey = fcmp ole <2 x double> %i.ew, %broadcast.splat347
  %i.ez = bitcast <2 x double> %wide.load352 to <2 x i64>
  %i.fa = bitcast <2 x double> %wide.load353 to <2 x i64>
  %i.fb = bitcast <2 x double> %wide.load354 to <2 x i64>
  %i.fc = bitcast <2 x double> %wide.load355 to <2 x i64>
  %i.fd = xor <2 x i64> %i.fb, %i.ez
  %i.fe = xor <2 x i64> %i.fc, %i.fa
  %i.ff = icmp sgt <2 x i64> %i.fd, splat (i64 -1)
  %i.fg = icmp sgt <2 x i64> %i.fe, splat (i64 -1)
  %predphi356 = select <2 x i1> %i.er, <2 x i1> splat (i1 true), <2 x i1> %i.ex
  %predphi357 = select <2 x i1> %i.el, <2 x i1> %predphi356, <2 x i1> %i.ff
  %predphi358 = select <2 x i1> %i.es, <2 x i1> splat (i1 true), <2 x i1> %i.ey
  %predphi359 = select <2 x i1> %i.em, <2 x i1> %predphi358, <2 x i1> %i.fg
  %i.fh = and <2 x i1> %vec.phi350, %predphi357   ; 2 uses
  %i.fi = and <2 x i1> %vec.phi351, %predphi359   ; 2 uses
  %index.next360 = add nuw i64 %index349, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next360, %n.vec345
  br i1 %i.fj, label %middle.block361, label %vector.body348, !llvm.loop !886

middle.block361:                                  ; preds = %vector.body348
  %bin.rdx362 = and <2 x i1> %i.fi, %i.fh
  %i.fk = bitcast <2 x i1> %bin.rdx362 to i2
  %i.fl = icmp eq i2 %i.fk, -1                    ; 2 uses
  %cmp.n363 = icmp eq i64 %i.dy, %n.vec345
  br i1 %cmp.n363, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph342.preheader

scalar.ph342.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i19.i.i.i.i.i, %middle.block361
  %.ph = phi i1 [ %i.ee, %.lr.ph.i13.i.i.i.i19.i.i.i.i.i ], [ %i.fl, %middle.block361 ]
  %.01.i16.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i19.i.i.i.i.i ], [ %n.vec345, %middle.block361 ]
  br label %scalar.ph342

scalar.ph342:                                     ; preds = %scalar.ph342.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.fm = phi i1 [ %i.ga, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph, %scalar.ph342.preheader ]
  %.01.i16.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.gb, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i16.i.i.i.i22.i.i.i.i.i.ph, %scalar.ph342.preheader ] ; 2 uses
  %i.fn = add nsw i64 %.01.i16.i.i.i.i22.i.i.i.i.i, %i.ea ; 2 uses
  %gep.i17.i.i.i.i23.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i20.i.i.i.i.i, i64 %i.fn
  %i.fo = load double, ptr %gep.i17.i.i.i.i23.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %gep3.i18.i.i.i.i24.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i21.i.i.i.i.i, i64 %i.fn
  %i.fp = load double, ptr %gep3.i18.i.i.i.i24.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 4 uses
  %i.fq = fcmp oeq double %i.fo, %i.fp
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %scalar.ph342
  %i.fr = bitcast double %i.fo to i64
  %i.fs = bitcast double %i.fp to i64
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = icmp sgt i64 %i.ft, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %scalar.ph342
  %i.fv = fcmp uno double %i.fo, 0.000000e+00
  %i.fw = fcmp uno double %i.fp, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i26.i.i.i.i.i = and i1 %i.fv, %i.fw
  br i1 %or.cond.i.i.i20.i.i.i.i26.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = fsub double %i.fo, %i.fp
  %i.fy = call double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp ole double %i.fy, %.val.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i.i22.i.i.i.i27.i.i.i.i.i = phi i1 [ %i.fu, %bb.v ], [ true, %bb.w ], [ %i.fz, %bb.x ]
  %i.ga = and i1 %i.fm, %.0.i.i.i22.i.i.i.i27.i.i.i.i.i ; 2 uses
  %i.gb = add nuw nsw i64 %.01.i16.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i28.i.i.i.i.i = icmp eq i64 %i.gb, %i.dy
  br i1 %exitcond.not.i23.i.i.i.i28.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph342, !llvm.loop !887

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block361
  %.lcssa114 = phi i1 [ %i.fl, %middle.block361 ], [ %i.ga, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.gc = zext i1 %.lcssa114 to i8
  store i8 %i.gc, ptr %i.dw, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i17.i.i.i.i.i
  %i.gd = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !914 ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 1      ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %._crit_edge.i.i.i.i18.i.i.i.i.i, label %.lr.ph.i.i.i.i17.i.i.i.i.i

._crit_edge.i.i.i.i18.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.gg = zext i1 %.0.i.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.gg, ptr %i.be, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.gh = zext i1 %i.dr to i8
  store i8 %i.gh, ptr %i.dc, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.y:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i18.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !914 ; 2 uses
  %i.gn = icmp ne ptr %i.gm, null
  %or.cond.not.i.i.i.i17.i.i.i.i = select i1 %i.gk, i1 %i.gn, i1 false
  br i1 %or.cond.not.i.i.i.i17.i.i.i.i, label %bb.ab, label %.thread.i.i.i.i18.i.i.i.i, !prof !179

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.aa, %bb.z
  %i.go = icmp sgt i64 %i.au, 0
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i19.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i19.i.i.i.i:                     ; preds = %.thread.i.i.i.i18.i.i.i.i
  %invariant.gep.i.i.i.i.i.i20.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ar ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i.i21.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.gq ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gr, align 8, !tbaa !90, !range !36, !noalias !914
  %i.gs = icmp ne i8 %.pre.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check323 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check323, label %scalar.ph322.preheader, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i.i.i.i.i.i19.i.i.i.i
  %n.vec325 = and i64 %i.au, 9223372036854775804  ; 3 uses
  %i.gt = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.gs, i64 0
  %broadcast.splatinsert326 = insertelement <2 x double> poison, double %.val.i.i.i.i.i, i64 0
  %broadcast.splat327 = shufflevector <2 x double> %broadcast.splatinsert326, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph324
  %index329 = phi i64 [ 0, %vector.ph324 ], [ %index.next336, %vector.body328 ] ; 3 uses
  %vec.phi330 = phi <2 x i1> [ %i.gt, %vector.ph324 ], [ %i.hi, %vector.body328 ]
  %vec.phi331 = phi <2 x i1> [ splat (i1 true), %vector.ph324 ], [ %i.hj, %vector.body328 ]
  %i.gu = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i20.i.i.i.i, i64 %index329 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load332 = load <2 x double>, ptr %i.gu, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.gv, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i21.i.i.i.i, i64 %index329 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  %wide.load334 = load <2 x double>, ptr %i.gw, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load335 = load <2 x double>, ptr %i.gx, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.gy = fcmp oeq <2 x double> %wide.load332, %wide.load334
  %i.gz = fcmp oeq <2 x double> %wide.load333, %wide.load335
  %i.ha = fsub <2 x double> %wide.load332, %wide.load334
  %i.hb = fsub <2 x double> %wide.load333, %wide.load335
  %i.hc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ha)
  %i.hd = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hb)
  %i.he = fcmp ole <2 x double> %i.hc, %broadcast.splat327
  %i.hf = fcmp ole <2 x double> %i.hd, %broadcast.splat327
  %i.hg = select <2 x i1> %i.gy, <2 x i1> splat (i1 true), <2 x i1> %i.he
  %i.hh = select <2 x i1> %i.gz, <2 x i1> splat (i1 true), <2 x i1> %i.hf
  %i.hi = and <2 x i1> %vec.phi330, %i.hg         ; 2 uses
  %i.hj = and <2 x i1> %vec.phi331, %i.hh         ; 2 uses
  %index.next336 = add nuw i64 %index329, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next336, %n.vec325
  br i1 %i.hk, label %middle.block337, label %vector.body328, !llvm.loop !888

middle.block337:                                  ; preds = %vector.body328
  %bin.rdx338 = and <2 x i1> %i.hj, %i.hi
  %i.hl = bitcast <2 x i1> %bin.rdx338 to i2
  %i.hm = icmp eq i2 %i.hl, -1                    ; 2 uses
  %cmp.n339 = icmp eq i64 %i.au, %n.vec325
  br i1 %cmp.n339, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph322.preheader

scalar.ph322.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i19.i.i.i.i, %middle.block337
  %.ph369 = phi i1 [ %i.gs, %.lr.ph.i.i.i.i.i.i19.i.i.i.i ], [ %i.hm, %middle.block337 ]
  %.01.i.i.i.i.i.i22.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i19.i.i.i.i ], [ %n.vec325, %middle.block337 ]
  br label %scalar.ph322

scalar.ph322:                                     ; preds = %scalar.ph322.preheader, %scalar.ph322
  %i.hn = phi i1 [ %i.hu, %scalar.ph322 ], [ %.ph369, %scalar.ph322.preheader ]
  %.01.i.i.i.i.i.i22.i.i.i.i = phi i64 [ %i.hv, %scalar.ph322 ], [ %.01.i.i.i.i.i.i22.i.i.i.i.ph, %scalar.ph322.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i23.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i20.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i.i.i.i
  %i.ho = load double, ptr %gep.i.i.i.i.i.i23.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i.i.i.i.i.i24.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i21.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i.i.i.i
  %i.hp = load double, ptr %gep3.i.i.i.i.i.i24.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.hq = fcmp oeq double %i.ho, %i.hp
  %i.hr = fsub double %i.ho, %i.hp
  %i.hs = tail call double @llvm.fabs.f64(double %i.hr)
  %i.ht = fcmp ole double %i.hs, %.val.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i25.i.i.i.i = select i1 %i.hq, i1 true, i1 %i.ht
  %i.hu = and i1 %i.hn, %.0.i.i.i.i.i.i.i.i25.i.i.i.i ; 2 uses
  %i.hv = add nuw nsw i64 %.01.i.i.i.i.i.i22.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i26.i.i.i.i = icmp eq i64 %i.hv, %i.au
  br i1 %exitcond.not.i.i.i.i.i.i26.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph322, !llvm.loop !889

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull %i.gm, i64 noundef %i.as, i64 noundef %i.au), !noalias !914
  %i.hw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %7), !noalias !914 ; 2 uses
  %i.hx = extractvalue { i64, i64 } %i.hw, 1      ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %._crit_edge.i.i.i.i.i29.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i

.lr.ph.i.preheader.i.i.i.i27.i.i.i.i:             ; preds = %bb.ab
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert306 = insertelement <2 x double> poison, double %.val.i.i.i.i.i, i64 0
  %broadcast.splat307 = shufflevector <2 x double> %broadcast.splatinsert306, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i.i28.i.i.i.i

.lr.ph.i.i.i.i.i28.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i
  %i.ib = phi i64 [ %i.jp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.hx, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i ] ; 5 uses
  %i.ic = phi { i64, i64 } [ %i.jo, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.hw, %.lr.ph.i.preheader.i.i.i.i27.i.i.i.i ]
  %i.id = extractvalue { i64, i64 } %i.ic, 0      ; 2 uses
  %i.ie = icmp sgt i64 %i.ib, 0
  br i1 %i.ie, label %.lr.ph.i13.i.i.i.i.i30.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i30.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.if = load i64, ptr %i.aq, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i.i31.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.if ; 2 uses
  %i.ig = load i64, ptr %i.ia, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.ig ; 2 uses
  %.pre.i16.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hz, align 8, !tbaa !90, !range !36, !noalias !914
  %i.ih = icmp ne i8 %.pre.i16.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.ib, 4
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %.lr.ph.i13.i.i.i.i.i30.i.i.i.i
  %n.vec305 = and i64 %i.ib, 9223372036854775804  ; 3 uses
  %i.ii = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.ih, i64 0
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph304
  %index309 = phi i64 [ 0, %vector.ph304 ], [ %index.next316, %vector.body308 ] ; 2 uses
  %vec.phi310 = phi <2 x i1> [ %i.ii, %vector.ph304 ], [ %i.iy, %vector.body308 ]
  %vec.phi311 = phi <2 x i1> [ splat (i1 true), %vector.ph304 ], [ %i.iz, %vector.body308 ]
  %i.ij = add nsw i64 %index309, %i.id            ; 2 uses
  %i.ik = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i.i.i.i, i64 %i.ij ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %wide.load312 = load <2 x double>, ptr %i.ik, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load313 = load <2 x double>, ptr %i.il, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.im = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i, i64 %i.ij ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 16
  %wide.load314 = load <2 x double>, ptr %i.im, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load315 = load <2 x double>, ptr %i.in, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.io = fcmp oeq <2 x double> %wide.load312, %wide.load314
  %i.ip = fcmp oeq <2 x double> %wide.load313, %wide.load315
  %i.iq = fsub <2 x double> %wide.load312, %wide.load314
  %i.ir = fsub <2 x double> %wide.load313, %wide.load315
  %i.is = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.iq)
  %i.it = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ir)
  %i.iu = fcmp ole <2 x double> %i.is, %broadcast.splat307
  %i.iv = fcmp ole <2 x double> %i.it, %broadcast.splat307
  %i.iw = select <2 x i1> %i.io, <2 x i1> splat (i1 true), <2 x i1> %i.iu
  %i.ix = select <2 x i1> %i.ip, <2 x i1> splat (i1 true), <2 x i1> %i.iv
  %i.iy = and <2 x i1> %vec.phi310, %i.iw         ; 2 uses
  %i.iz = and <2 x i1> %vec.phi311, %i.ix         ; 2 uses
  %index.next316 = add nuw i64 %index309, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next316, %n.vec305
  br i1 %i.ja, label %middle.block317, label %vector.body308, !llvm.loop !890

middle.block317:                                  ; preds = %vector.body308
  %bin.rdx318 = and <2 x i1> %i.iz, %i.iy
  %i.jb = bitcast <2 x i1> %bin.rdx318 to i2
  %i.jc = icmp eq i2 %i.jb, -1                    ; 2 uses
  %cmp.n319 = icmp eq i64 %i.ib, %n.vec305
  br i1 %cmp.n319, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph302.preheader

scalar.ph302.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i30.i.i.i.i, %middle.block317
  %.ph373 = phi i1 [ %i.ih, %.lr.ph.i13.i.i.i.i.i30.i.i.i.i ], [ %i.jc, %middle.block317 ]
  %.01.i17.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i30.i.i.i.i ], [ %n.vec305, %middle.block317 ]
  br label %scalar.ph302

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %i.jd = phi i1 [ %i.jl, %scalar.ph302 ], [ %.ph373, %scalar.ph302.preheader ]
  %.01.i17.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jm, %scalar.ph302 ], [ %.01.i17.i.i.i.i.i.i.i.i.i.ph, %scalar.ph302.preheader ] ; 2 uses
  %i.je = add nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, %i.id ; 2 uses
  %gep.i18.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i.i.i.i, i64 %i.je
  %i.jf = load double, ptr %gep.i18.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i19.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i.i.i.i, i64 %i.je
  %i.jg = load double, ptr %gep3.i19.i.i.i.i.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.jh = fcmp oeq double %i.jf, %i.jg
  %i.ji = fsub double %i.jf, %i.jg
  %i.jj = call double @llvm.fabs.f64(double %i.ji)
  %i.jk = fcmp ole double %i.jj, %.val.i.i.i.i.i
  %.0.i.i.i21.i.i.i.i.i.i.i.i.i = select i1 %i.jh, i1 true, i1 %i.jk
  %i.jl = and i1 %i.jd, %.0.i.i.i21.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jm = add nuw nsw i64 %.01.i17.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i22.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jm, %i.ib
  br i1 %exitcond.not.i22.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph302, !llvm.loop !891

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %scalar.ph302, %middle.block317
  %.lcssa116 = phi i1 [ %i.jc, %middle.block317 ], [ %i.jl, %scalar.ph302 ]
  %i.jn = zext i1 %.lcssa116 to i8
  store i8 %i.jn, ptr %i.hz, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i.i.i.i
  %i.jo = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %7), !noalias !914 ; 2 uses
  %i.jp = extractvalue { i64, i64 } %i.jo, 1      ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %._crit_edge.i.i.i.i.i29.i.i.i.i, label %.lr.ph.i.i.i.i.i28.i.i.i.i

._crit_edge.i.i.i.i.i29.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.ac:                                            ; preds = %bb.y
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i8.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.jt = trunc nuw i8 %i.js to i1
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !914 ; 2 uses
  %i.jw = icmp ne ptr %i.jv, null
  %or.cond.not.i.i.i4.i7.i.i.i.i = select i1 %i.jt, i1 %i.jw, i1 false
  br i1 %or.cond.not.i.i.i4.i7.i.i.i.i, label %bb.ag, label %.thread.i.i.i5.i8.i.i.i.i, !prof !179

.thread.i.i.i5.i8.i.i.i.i:                        ; preds = %bb.ad, %bb.ac
  %i.jx = icmp sgt i64 %i.au, 0
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i6.i9.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i9.i.i.i.i:                     ; preds = %.thread.i.i.i5.i8.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i10.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ar ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.jz ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ka, align 8, !tbaa !90, !noalias !914
  %i.kb = icmp ne i8 %.promoted.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check281 = icmp ult i64 %i.au, 4
  br i1 %min.iters.check281, label %scalar.ph280.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph.i.i.i.i.i6.i9.i.i.i.i
  %n.vec283 = and i64 %i.au, 9223372036854775804  ; 3 uses
  %i.kc = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.kb, i64 0
  %broadcast.splatinsert284 = insertelement <2 x double> poison, double %.val.i.i.i.i.i, i64 0
  %broadcast.splat285 = shufflevector <2 x double> %broadcast.splatinsert284, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph282
  %index287 = phi i64 [ 0, %vector.ph282 ], [ %index.next296, %vector.body286 ] ; 3 uses
  %vec.phi288 = phi <2 x i1> [ %i.kc, %vector.ph282 ], [ %i.kx, %vector.body286 ]
  %vec.phi289 = phi <2 x i1> [ splat (i1 true), %vector.ph282 ], [ %i.ky, %vector.body286 ]
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i10.i.i.i.i, i64 %index287 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %wide.load290 = load <2 x double>, ptr %i.kd, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load291 = load <2 x double>, ptr %i.ke, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.kf = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i, i64 %index287 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 16
  %wide.load292 = load <2 x double>, ptr %i.kf, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load293 = load <2 x double>, ptr %i.kg, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.kh = fcmp oeq <2 x double> %wide.load290, %wide.load292
  %i.ki = fcmp oeq <2 x double> %wide.load291, %wide.load293
  %i.kj = fsub <2 x double> %wide.load290, %wide.load292
  %i.kk = fsub <2 x double> %wide.load291, %wide.load293
  %i.kl = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.kj)
  %i.km = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.kk)
  %i.kn = fcmp ole <2 x double> %i.kl, %broadcast.splat285
  %i.ko = fcmp ole <2 x double> %i.km, %broadcast.splat285
  %i.kp = bitcast <2 x double> %wide.load290 to <2 x i64>
  %i.kq = bitcast <2 x double> %wide.load291 to <2 x i64>
  %i.kr = bitcast <2 x double> %wide.load292 to <2 x i64>
  %i.ks = bitcast <2 x double> %wide.load293 to <2 x i64>
  %i.kt = xor <2 x i64> %i.kr, %i.kp
  %i.ku = xor <2 x i64> %i.ks, %i.kq
  %i.kv = icmp sgt <2 x i64> %i.kt, splat (i64 -1)
  %i.kw = icmp sgt <2 x i64> %i.ku, splat (i64 -1)
  %predphi294 = select <2 x i1> %i.kh, <2 x i1> %i.kv, <2 x i1> %i.kn
  %predphi295 = select <2 x i1> %i.ki, <2 x i1> %i.kw, <2 x i1> %i.ko
  %i.kx = and <2 x i1> %vec.phi288, %predphi294   ; 2 uses
  %i.ky = and <2 x i1> %vec.phi289, %predphi295   ; 2 uses
  %index.next296 = add nuw i64 %index287, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next296, %n.vec283
  br i1 %i.kz, label %middle.block297, label %vector.body286, !llvm.loop !892

middle.block297:                                  ; preds = %vector.body286
  %bin.rdx298 = and <2 x i1> %i.ky, %i.kx
  %i.la = bitcast <2 x i1> %bin.rdx298 to i2
  %i.lb = icmp eq i2 %i.la, -1                    ; 2 uses
  %cmp.n299 = icmp eq i64 %i.au, %n.vec283
  br i1 %cmp.n299, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph280.preheader

scalar.ph280.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i9.i.i.i.i, %middle.block297
  %.ph377 = phi i1 [ %i.kb, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i ], [ %i.lb, %middle.block297 ]
  %.01.i.i.i.i.i9.i12.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i9.i.i.i.i ], [ %n.vec283, %middle.block297 ]
  br label %scalar.ph280

scalar.ph280:                                     ; preds = %scalar.ph280.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.lc = phi i1 [ %i.ln, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph377, %scalar.ph280.preheader ]
  %.01.i.i.i.i.i9.i12.i.i.i.i = phi i64 [ %i.lo, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i9.i12.i.i.i.i.ph, %scalar.ph280.preheader ] ; 3 uses
  %gep.i.i.i.i.i10.i13.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i10.i.i.i.i, i64 %.01.i.i.i.i.i9.i12.i.i.i.i
  %i.ld = load double, ptr %gep.i.i.i.i.i10.i13.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i.i.i.i.i11.i14.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i11.i.i.i.i, i64 %.01.i.i.i.i.i9.i12.i.i.i.i
  %i.le = load double, ptr %gep3.i.i.i.i.i11.i14.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.lf = fcmp oeq double %i.ld, %i.le
  br i1 %i.lf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %scalar.ph280
  %i.lg = bitcast double %i.ld to i64
  %i.lh = bitcast double %i.le to i64
  %i.li = xor i64 %i.lh, %i.lg
  %i.lj = icmp sgt i64 %i.li, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %scalar.ph280
  %i.lk = fsub double %i.ld, %i.le
  %i.ll = tail call double @llvm.fabs.f64(double %i.lk)
  %i.lm = fcmp ole double %i.ll, %.val.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i13.i.i.i.i.i = phi i1 [ %i.lj, %bb.ae ], [ %i.lm, %bb.af ]
  %i.ln = and i1 %i.lc, %.0.i.i.i.i.i.i.i13.i.i.i.i.i ; 2 uses
  %i.lo = add nuw nsw i64 %.01.i.i.i.i.i9.i12.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i14.i.i.i.i.i = icmp eq i64 %i.lo, %i.au
  br i1 %exitcond.not.i.i.i.i.i14.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph280, !llvm.loop !893

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %i.jv, i64 noundef %i.as, i64 noundef %i.au), !noalias !914
  %i.lp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !914 ; 2 uses
  %i.lq = extractvalue { i64, i64 } %i.lp, 1      ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %._crit_edge.i.i.i.i17.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i

.lr.ph.i.preheader.i.i.i15.i.i.i.i.i:             ; preds = %bb.ag
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.val.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i16.i.i.i.i.i

.lr.ph.i.i.i.i16.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i
  %i.lu = phi i64 [ %i.ns, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.lq, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i ] ; 5 uses
  %i.lv = phi { i64, i64 } [ %i.nr, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.lp, %.lr.ph.i.preheader.i.i.i15.i.i.i.i.i ]
  %i.lw = extractvalue { i64, i64 } %i.lv, 0      ; 2 uses
  %i.lx = icmp sgt i64 %i.lu, 0
  br i1 %i.lx, label %.lr.ph.i13.i.i.i.i18.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i18.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i16.i.i.i.i.i
  %i.ly = load i64, ptr %i.aq, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i19.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ly ; 2 uses
  %i.lz = load i64, ptr %i.lt, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.lz ; 2 uses
  %.promoted.i16.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ls, align 8, !tbaa !90, !noalias !914
  %i.ma = icmp ne i8 %.promoted.i16.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check261 = icmp ult i64 %i.lu, 4
  br i1 %min.iters.check261, label %scalar.ph260.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph.i13.i.i.i.i18.i.i.i.i.i
  %n.vec263 = and i64 %i.lu, 9223372036854775804  ; 3 uses
  %i.mb = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.ma, i64 0
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next274, %vector.body264 ] ; 2 uses
  %vec.phi266 = phi <2 x i1> [ %i.mb, %vector.ph262 ], [ %i.mx, %vector.body264 ]
  %vec.phi267 = phi <2 x i1> [ splat (i1 true), %vector.ph262 ], [ %i.my, %vector.body264 ]
  %i.mc = add nsw i64 %index265, %i.lw            ; 2 uses
  %i.md = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.mc ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16
  %wide.load268 = load <2 x double>, ptr %i.md, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load269 = load <2 x double>, ptr %i.me, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.mf = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.mc ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 16
  %wide.load270 = load <2 x double>, ptr %i.mf, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load271 = load <2 x double>, ptr %i.mg, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.mh = fcmp oeq <2 x double> %wide.load268, %wide.load270
  %i.mi = fcmp oeq <2 x double> %wide.load269, %wide.load271
  %i.mj = fsub <2 x double> %wide.load268, %wide.load270
  %i.mk = fsub <2 x double> %wide.load269, %wide.load271
  %i.ml = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mj)
  %i.mm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mk)
  %i.mn = fcmp ole <2 x double> %i.ml, %broadcast.splat
  %i.mo = fcmp ole <2 x double> %i.mm, %broadcast.splat
  %i.mp = bitcast <2 x double> %wide.load268 to <2 x i64>
  %i.mq = bitcast <2 x double> %wide.load269 to <2 x i64>
  %i.mr = bitcast <2 x double> %wide.load270 to <2 x i64>
  %i.ms = bitcast <2 x double> %wide.load271 to <2 x i64>
  %i.mt = xor <2 x i64> %i.mr, %i.mp
  %i.mu = xor <2 x i64> %i.ms, %i.mq
  %i.mv = icmp sgt <2 x i64> %i.mt, splat (i64 -1)
  %i.mw = icmp sgt <2 x i64> %i.mu, splat (i64 -1)
  %predphi272 = select <2 x i1> %i.mh, <2 x i1> %i.mv, <2 x i1> %i.mn
  %predphi273 = select <2 x i1> %i.mi, <2 x i1> %i.mw, <2 x i1> %i.mo
  %i.mx = and <2 x i1> %vec.phi266, %predphi272   ; 2 uses
  %i.my = and <2 x i1> %vec.phi267, %predphi273   ; 2 uses
  %index.next274 = add nuw i64 %index265, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next274, %n.vec263
  br i1 %i.mz, label %middle.block275, label %vector.body264, !llvm.loop !894

middle.block275:                                  ; preds = %vector.body264
  %bin.rdx276 = and <2 x i1> %i.my, %i.mx
  %i.na = bitcast <2 x i1> %bin.rdx276 to i2
  %i.nb = icmp eq i2 %i.na, -1                    ; 2 uses
  %cmp.n277 = icmp eq i64 %i.lu, %n.vec263
  br i1 %cmp.n277, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph260.preheader

scalar.ph260.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i18.i.i.i.i.i, %middle.block275
  %.ph381 = phi i1 [ %i.ma, %.lr.ph.i13.i.i.i.i18.i.i.i.i.i ], [ %i.nb, %middle.block275 ]
  %.01.i17.i.i.i.i21.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i18.i.i.i.i.i ], [ %n.vec263, %middle.block275 ]
  br label %scalar.ph260

scalar.ph260:                                     ; preds = %scalar.ph260.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.nc = phi i1 [ %i.no, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph381, %scalar.ph260.preheader ]
  %.01.i17.i.i.i.i21.i.i.i.i.i = phi i64 [ %i.np, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i17.i.i.i.i21.i.i.i.i.i.ph, %scalar.ph260.preheader ] ; 2 uses
  %i.nd = add nsw i64 %.01.i17.i.i.i.i21.i.i.i.i.i, %i.lw ; 2 uses
  %gep.i18.i.i.i.i22.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.nd
  %i.ne = load double, ptr %gep.i18.i.i.i.i22.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i19.i.i.i.i23.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.nd
  %i.nf = load double, ptr %gep3.i19.i.i.i.i23.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.ng = fcmp oeq double %i.ne, %i.nf
  br i1 %i.ng, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %scalar.ph260
  %i.nh = bitcast double %i.ne to i64
  %i.ni = bitcast double %i.nf to i64
  %i.nj = xor i64 %i.ni, %i.nh
  %i.nk = icmp sgt i64 %i.nj, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %scalar.ph260
  %i.nl = fsub double %i.ne, %i.nf
  %i.nm = call double @llvm.fabs.f64(double %i.nl)
  %i.nn = fcmp ole double %i.nm, %.val.i.i.i.i.i
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i22.i.i.i.i.i15.i.i.i.i = phi i1 [ %i.nk, %bb.ah ], [ %i.nn, %bb.ai ]
  %i.no = and i1 %i.nc, %.0.i.i.i22.i.i.i.i.i15.i.i.i.i ; 2 uses
  %i.np = add nuw nsw i64 %.01.i17.i.i.i.i21.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i16.i.i.i.i = icmp eq i64 %i.np, %i.lu
  br i1 %exitcond.not.i23.i.i.i.i.i16.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph260, !llvm.loop !895

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block275
  %.lcssa118 = phi i1 [ %i.nb, %middle.block275 ], [ %i.no, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.nq = zext i1 %.lcssa118 to i8
  store i8 %i.nq, ptr %i.ls, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i.i.i.i
  %i.nr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %6), !noalias !914 ; 2 uses
  %i.ns = extractvalue { i64, i64 } %i.nr, 1      ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %._crit_edge.i.i.i.i17.i.i.i.i.i, label %.lr.ph.i.i.i.i16.i.i.i.i.i

._crit_edge.i.i.i.i17.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i: ; preds = %scalar.ph322, %middle.block337
  %.lcssa115 = phi i1 [ %i.hm, %middle.block337 ], [ %i.hu, %scalar.ph322 ]
  %i.nu = zext i1 %.lcssa115 to i8
  store i8 %i.nu, ptr %i.gr, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block297
  %.lcssa117 = phi i1 [ %i.lb, %middle.block297 ], [ %i.ln, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.nv = zext i1 %.lcssa117 to i8
  store i8 %i.nv, ptr %i.ka, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.aj:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIdEEPKT_i.exit3.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !171, !noalias !914
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !87, !noalias !914 ; 5 uses
  %i.oa = add nsw i64 %i.nz, %i.nx                ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !89, !noalias !914 ; 24 uses
  %.val.i.i.i.i4.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !914 ; 9 uses
  %.not3.i.i.i.i.i5.i.i.i = icmp eq ptr %.val.i.i.i.i4.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.an, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i.i32.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.od = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.of = trunc nuw i8 %i.oe to i1
  %i.og = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !noalias !914 ; 2 uses
  %i.oi = icmp ne ptr %i.oh, null
  %or.cond.not.i.i.i.i.i31.i.i.i = select i1 %i.of, i1 %i.oi, i1 false
  br i1 %or.cond.not.i.i.i.i.i31.i.i.i, label %bb.an, label %.thread.i.i.i.i.i32.i.i.i, !prof !179

.thread.i.i.i.i.i32.i.i.i:                        ; preds = %bb.am, %bb.al
  %i.oj = icmp sgt i64 %i.oc, 0
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i.i33.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i33.i.i.i:                     ; preds = %.thread.i.i.i.i.i32.i.i.i
  %invariant.gep.i.i.i.i.i.i.i34.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.nz ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i.i.i35.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.ol ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i.i36.i.i.i = load i8, ptr %i.om, align 8, !tbaa !90, !noalias !914
  %i.on = icmp ne i8 %.promoted.i.i.i.i.i.i.i36.i.i.i, 0 ; 2 uses
  %min.iters.check243 = icmp ult i64 %i.oc, 4
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i.i
  %n.vec245 = and i64 %i.oc, 9223372036854775804  ; 3 uses
  %i.oo = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.on, i64 0
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next254, %vector.body246 ] ; 3 uses
  %vec.phi248 = phi <2 x i1> [ %i.oo, %vector.ph244 ], [ %i.pd, %vector.body246 ]
  %vec.phi249 = phi <2 x i1> [ splat (i1 true), %vector.ph244 ], [ %i.pe, %vector.body246 ]
  %i.op = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i34.i.i.i, i64 %index247 ; 2 uses
  %i.oq = getelementptr i8, ptr %i.op, i64 16
  %wide.load250 = load <2 x double>, ptr %i.op, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load251 = load <2 x double>, ptr %i.oq, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.or = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i35.i.i.i, i64 %index247 ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 16
  %wide.load252 = load <2 x double>, ptr %i.or, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load253 = load <2 x double>, ptr %i.os, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.ot = fcmp oeq <2 x double> %wide.load250, %wide.load252
  %i.ou = fcmp oeq <2 x double> %wide.load251, %wide.load253
  %i.ov = fcmp uno <2 x double> %wide.load250, zeroinitializer
  %i.ow = fcmp uno <2 x double> %wide.load251, zeroinitializer
  %i.ox = fcmp uno <2 x double> %wide.load252, zeroinitializer
  %i.oy = fcmp uno <2 x double> %wide.load253, zeroinitializer
  %i.oz = and <2 x i1> %i.ov, %i.ox
  %i.pa = and <2 x i1> %i.ow, %i.oy
  %i.pb = or <2 x i1> %i.ot, %i.oz
  %i.pc = or <2 x i1> %i.ou, %i.pa
  %i.pd = and <2 x i1> %vec.phi248, %i.pb         ; 2 uses
  %i.pe = and <2 x i1> %vec.phi249, %i.pc         ; 2 uses
  %index.next254 = add nuw i64 %index247, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next254, %n.vec245
  br i1 %i.pf, label %middle.block255, label %vector.body246, !llvm.loop !896

middle.block255:                                  ; preds = %vector.body246
  %bin.rdx256 = and <2 x i1> %i.pe, %i.pd
  %i.pg = bitcast <2 x i1> %bin.rdx256 to i2
  %i.ph = icmp eq i2 %i.pg, -1                    ; 2 uses
  %cmp.n257 = icmp eq i64 %i.oc, %n.vec245
  br i1 %cmp.n257, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i.i, %middle.block255
  %.ph385 = phi i1 [ %i.on, %.lr.ph.i.i.i.i.i.i.i33.i.i.i ], [ %i.ph, %middle.block255 ]
  %.01.i.i.i.i.i.i.i37.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i33.i.i.i ], [ %n.vec245, %middle.block255 ]
  br label %scalar.ph242

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph242, %middle.block255
  %.lcssa119 = phi i1 [ %i.ph, %middle.block255 ], [ %i.pp, %scalar.ph242 ]
  %i.pi = zext i1 %.lcssa119 to i8
  store i8 %i.pi, ptr %i.om, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

scalar.ph242:                                     ; preds = %scalar.ph242.preheader, %scalar.ph242
  %i.pj = phi i1 [ %i.pp, %scalar.ph242 ], [ %.ph385, %scalar.ph242.preheader ]
  %.01.i.i.i.i.i.i.i37.i.i.i = phi i64 [ %i.pq, %scalar.ph242 ], [ %.01.i.i.i.i.i.i.i37.i.i.i.ph, %scalar.ph242.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i38.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i34.i.i.i, i64 %.01.i.i.i.i.i.i.i37.i.i.i
  %i.pk = load double, ptr %gep.i.i.i.i.i.i.i38.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i.i.i.i.i.i.i39.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i35.i.i.i, i64 %.01.i.i.i.i.i.i.i37.i.i.i
  %i.pl = load double, ptr %gep3.i.i.i.i.i.i.i39.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.pm = fcmp oeq double %i.pk, %i.pl
  %i.pn = fcmp uno double %i.pk, 0.000000e+00
  %i.po = fcmp uno double %i.pl, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i40.i.i.i = and i1 %i.pn, %i.po
  %.0.i.i.i.i.i.i.i.i.i41.i.i.i = or i1 %i.pm, %or.cond.i.i.i.i.i.i.i.i.i40.i.i.i
  %i.pp = and i1 %i.pj, %.0.i.i.i.i.i.i.i.i.i41.i.i.i ; 2 uses
  %i.pq = add nuw nsw i64 %.01.i.i.i.i.i.i.i37.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i42.i.i.i = icmp eq i64 %i.pq, %i.oc
  br i1 %exitcond.not.i.i.i.i.i.i.i42.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph242, !llvm.loop !897

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.oh, i64 noundef %i.oa, i64 noundef %i.oc), !noalias !914
  %i.pr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !914 ; 2 uses
  %i.ps = extractvalue { i64, i64 } %i.pr, 1      ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 0
  br i1 %i.pt, label %._crit_edge.i.i.i.i.i.i45.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i

.lr.ph.i.preheader.i.i.i.i.i43.i.i.i:             ; preds = %bb.an
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i.i44.i.i.i

.lr.ph.i.i.i.i.i.i44.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i
  %i.pw = phi i64 [ %i.rj, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.ps, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i ] ; 5 uses
  %i.px = phi { i64, i64 } [ %i.ri, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.pr, %.lr.ph.i.preheader.i.i.i.i.i43.i.i.i ]
  %i.py = extractvalue { i64, i64 } %i.px, 0      ; 2 uses
  %i.pz = icmp sgt i64 %i.pw, 0
  br i1 %i.pz, label %.lr.ph.i13.i.i.i.i.i.i46.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i46.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i44.i.i.i
  %i.qa = load i64, ptr %i.ny, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i.i.i47.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.qa ; 2 uses
  %i.qb = load i64, ptr %i.pv, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.qb ; 2 uses
  %.promoted.i16.i.i.i.i.i.i49.i.i.i = load i8, ptr %i.pu, align 8, !tbaa !90, !noalias !914
  %i.qc = icmp ne i8 %.promoted.i16.i.i.i.i.i.i49.i.i.i, 0 ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.pw, 4
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i13.i.i.i.i.i.i46.i.i.i
  %n.vec227 = and i64 %i.pw, 9223372036854775804  ; 3 uses
  %i.qd = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.qc, i64 0
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next236, %vector.body228 ] ; 2 uses
  %vec.phi230 = phi <2 x i1> [ %i.qd, %vector.ph226 ], [ %i.qt, %vector.body228 ]
  %vec.phi231 = phi <2 x i1> [ splat (i1 true), %vector.ph226 ], [ %i.qu, %vector.body228 ]
  %i.qe = add nsw i64 %index229, %i.py            ; 2 uses
  %i.qf = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i47.i.i.i, i64 %i.qe ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 16
  %wide.load232 = load <2 x double>, ptr %i.qf, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load233 = load <2 x double>, ptr %i.qg, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.qh = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i, i64 %i.qe ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 16
  %wide.load234 = load <2 x double>, ptr %i.qh, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load235 = load <2 x double>, ptr %i.qi, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.qj = fcmp oeq <2 x double> %wide.load232, %wide.load234
  %i.qk = fcmp oeq <2 x double> %wide.load233, %wide.load235
  %i.ql = fcmp uno <2 x double> %wide.load232, zeroinitializer
  %i.qm = fcmp uno <2 x double> %wide.load233, zeroinitializer
  %i.qn = fcmp uno <2 x double> %wide.load234, zeroinitializer
  %i.qo = fcmp uno <2 x double> %wide.load235, zeroinitializer
  %i.qp = and <2 x i1> %i.ql, %i.qn
  %i.qq = and <2 x i1> %i.qm, %i.qo
  %i.qr = or <2 x i1> %i.qj, %i.qp
  %i.qs = or <2 x i1> %i.qk, %i.qq
  %i.qt = and <2 x i1> %vec.phi230, %i.qr         ; 2 uses
  %i.qu = and <2 x i1> %vec.phi231, %i.qs         ; 2 uses
  %index.next236 = add nuw i64 %index229, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next236, %n.vec227
  br i1 %i.qv, label %middle.block237, label %vector.body228, !llvm.loop !898

middle.block237:                                  ; preds = %vector.body228
  %bin.rdx238 = and <2 x i1> %i.qu, %i.qt
  %i.qw = bitcast <2 x i1> %bin.rdx238 to i2
  %i.qx = icmp eq i2 %i.qw, -1                    ; 2 uses
  %cmp.n239 = icmp eq i64 %i.pw, %n.vec227
  br i1 %cmp.n239, label %._crit_edge.i23.i.i.i.i.i.i.i.i.i, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i.i46.i.i.i, %middle.block237
  %.ph389 = phi i1 [ %i.qc, %.lr.ph.i13.i.i.i.i.i.i46.i.i.i ], [ %i.qx, %middle.block237 ]
  %.01.i17.i.i.i.i.i.i50.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i46.i.i.i ], [ %n.vec227, %middle.block237 ]
  br label %scalar.ph224

._crit_edge.i23.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph224, %middle.block237
  %.lcssa120 = phi i1 [ %i.qx, %middle.block237 ], [ %i.rg, %scalar.ph224 ]
  %i.qy = zext i1 %.lcssa120 to i8
  store i8 %i.qy, ptr %i.pu, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %i.qz = phi i1 [ %i.rg, %scalar.ph224 ], [ %.ph389, %scalar.ph224.preheader ]
  %.01.i17.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.rh, %scalar.ph224 ], [ %.01.i17.i.i.i.i.i.i50.i.i.i.ph, %scalar.ph224.preheader ] ; 2 uses
  %i.ra = add nsw i64 %.01.i17.i.i.i.i.i.i50.i.i.i, %i.py ; 2 uses
  %gep.i18.i.i.i.i.i.i51.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i47.i.i.i, i64 %i.ra
  %i.rb = load double, ptr %gep.i18.i.i.i.i.i.i51.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i19.i.i.i.i.i.i52.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i48.i.i.i, i64 %i.ra
  %i.rc = load double, ptr %gep3.i19.i.i.i.i.i.i52.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.rd = fcmp oeq double %i.rb, %i.rc
  %i.re = fcmp uno double %i.rb, 0.000000e+00
  %i.rf = fcmp uno double %i.rc, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i.i.i53.i.i.i = and i1 %i.re, %i.rf
  %.0.i.i.i21.i.i.i.i.i.i54.i.i.i = or i1 %i.rd, %or.cond.i.i.i20.i.i.i.i.i.i53.i.i.i
  %i.rg = and i1 %i.qz, %.0.i.i.i21.i.i.i.i.i.i54.i.i.i ; 2 uses
  %i.rh = add nuw nsw i64 %.01.i17.i.i.i.i.i.i50.i.i.i, 1 ; 2 uses
  %exitcond.not.i22.i.i.i.i.i.i55.i.i.i = icmp eq i64 %i.rh, %i.pw
  br i1 %exitcond.not.i22.i.i.i.i.i.i55.i.i.i, label %._crit_edge.i23.i.i.i.i.i.i.i.i.i, label %scalar.ph224, !llvm.loop !899

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i44.i.i.i
  %i.ri = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !noalias !914 ; 2 uses
  %i.rj = extractvalue { i64, i64 } %i.ri, 1      ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %._crit_edge.i.i.i.i.i.i45.i.i.i, label %.lr.ph.i.i.i.i.i.i44.i.i.i

._crit_edge.i.i.i.i.i.i45.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.ao:                                            ; preds = %bb.ak
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i.i22.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.rn = trunc nuw i8 %i.rm to i1
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !914 ; 2 uses
  %i.rq = icmp ne ptr %i.rp, null
  %or.cond.not.i.i.i4.i.i21.i.i.i = select i1 %i.rn, i1 %i.rq, i1 false
  br i1 %or.cond.not.i.i.i4.i.i21.i.i.i, label %bb.as, label %.thread.i.i.i5.i.i22.i.i.i, !prof !179

.thread.i.i.i5.i.i22.i.i.i:                       ; preds = %bb.ap, %bb.ao
  %i.rr = icmp sgt i64 %i.oc, 0
  br i1 %i.rr, label %.lr.ph.i.i.i.i.i6.i.i23.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i23.i.i.i:                    ; preds = %.thread.i.i.i5.i.i22.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i24.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.nz ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.rt ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i.i.i.i.i = load i8, ptr %i.ru, align 8, !tbaa !90, !noalias !914
  %i.rv = icmp ne i8 %.promoted.i.i.i.i.i9.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.oc, 4
  br i1 %min.iters.check205, label %scalar.ph204.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph.i.i.i.i.i6.i.i23.i.i.i
  %n.vec207 = and i64 %i.oc, 9223372036854775804  ; 3 uses
  %i.rw = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.rv, i64 0
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next218, %vector.body208 ] ; 3 uses
  %vec.phi210 = phi <2 x i1> [ %i.rw, %vector.ph206 ], [ %i.sr, %vector.body208 ]
  %vec.phi211 = phi <2 x i1> [ splat (i1 true), %vector.ph206 ], [ %i.ss, %vector.body208 ]
  %i.rx = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i24.i.i.i, i64 %index209 ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 16
  %wide.load212 = load <2 x double>, ptr %i.rx, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load213 = load <2 x double>, ptr %i.ry, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.rz = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i, i64 %index209 ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 16
  %wide.load214 = load <2 x double>, ptr %i.rz, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load215 = load <2 x double>, ptr %i.sa, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.sb = fcmp oeq <2 x double> %wide.load212, %wide.load214
  %i.sc = fcmp oeq <2 x double> %wide.load213, %wide.load215
  %i.sd = fcmp uno <2 x double> %wide.load212, zeroinitializer
  %i.se = fcmp uno <2 x double> %wide.load213, zeroinitializer
  %i.sf = fcmp uno <2 x double> %wide.load214, zeroinitializer
  %i.sg = fcmp uno <2 x double> %wide.load215, zeroinitializer
  %i.sh = and <2 x i1> %i.sd, %i.sf
  %i.si = and <2 x i1> %i.se, %i.sg
  %i.sj = bitcast <2 x double> %wide.load212 to <2 x i64>
  %i.sk = bitcast <2 x double> %wide.load213 to <2 x i64>
  %i.sl = bitcast <2 x double> %wide.load214 to <2 x i64>
  %i.sm = bitcast <2 x double> %wide.load215 to <2 x i64>
  %i.sn = xor <2 x i64> %i.sl, %i.sj
  %i.so = xor <2 x i64> %i.sm, %i.sk
  %i.sp = icmp sgt <2 x i64> %i.sn, splat (i64 -1)
  %i.sq = icmp sgt <2 x i64> %i.so, splat (i64 -1)
  %predphi216 = select <2 x i1> %i.sb, <2 x i1> %i.sp, <2 x i1> %i.sh
  %predphi217 = select <2 x i1> %i.sc, <2 x i1> %i.sq, <2 x i1> %i.si
  %i.sr = and <2 x i1> %vec.phi210, %predphi216   ; 2 uses
  %i.ss = and <2 x i1> %vec.phi211, %predphi217   ; 2 uses
  %index.next218 = add nuw i64 %index209, 4       ; 2 uses
  %i.st = icmp eq i64 %index.next218, %n.vec207
  br i1 %i.st, label %middle.block219, label %vector.body208, !llvm.loop !900

middle.block219:                                  ; preds = %vector.body208
  %bin.rdx220 = and <2 x i1> %i.ss, %i.sr
  %i.su = bitcast <2 x i1> %bin.rdx220 to i2
  %i.sv = icmp eq i2 %i.su, -1                    ; 2 uses
  %cmp.n221 = icmp eq i64 %i.oc, %n.vec207
  br i1 %cmp.n221, label %._crit_edge.i.i.i.i.i16.i.i.i.i.i, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i.i23.i.i.i, %middle.block219
  %.ph393 = phi i1 [ %i.rv, %.lr.ph.i.i.i.i.i6.i.i23.i.i.i ], [ %i.sv, %middle.block219 ]
  %.01.i.i.i.i.i10.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i23.i.i.i ], [ %n.vec207, %middle.block219 ]
  br label %scalar.ph204

._crit_edge.i.i.i.i.i16.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %middle.block219
  %.lcssa121 = phi i1 [ %i.sv, %middle.block219 ], [ %i.th, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.sw = zext i1 %.lcssa121 to i8
  store i8 %i.sw, ptr %i.ru, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.sx = phi i1 [ %i.th, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph393, %scalar.ph204.preheader ]
  %.01.i.i.i.i.i10.i.i.i.i.i = phi i64 [ %i.ti, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i10.i.i.i.i.i.ph, %scalar.ph204.preheader ] ; 3 uses
  %gep.i.i.i.i.i11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i24.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.sy = load double, ptr %gep.i.i.i.i.i11.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i.i.i.i.i12.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i25.i.i.i, i64 %.01.i.i.i.i.i10.i.i.i.i.i
  %i.sz = load double, ptr %gep3.i.i.i.i.i12.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.ta = fcmp oeq double %i.sy, %i.sz
  br i1 %i.ta, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %scalar.ph204
  %i.tb = bitcast double %i.sy to i64
  %i.tc = bitcast double %i.sz to i64
  %i.td = xor i64 %i.tc, %i.tb
  %i.te = icmp sgt i64 %i.td, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %scalar.ph204
  %i.tf = fcmp uno double %i.sy, 0.000000e+00
  %i.tg = fcmp uno double %i.sz, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i13.i.i26.i.i.i = and i1 %i.tf, %i.tg
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i14.i.i27.i.i.i = phi i1 [ %i.te, %bb.aq ], [ %or.cond.i.i.i.i.i.i.i13.i.i26.i.i.i, %bb.ar ]
  %i.th = and i1 %i.sx, %.0.i.i.i.i.i.i.i14.i.i27.i.i.i ; 2 uses
  %i.ti = add nuw nsw i64 %.01.i.i.i.i.i10.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i28.i.i.i = icmp eq i64 %i.ti, %i.oc
  br i1 %exitcond.not.i.i.i.i.i15.i.i28.i.i.i, label %._crit_edge.i.i.i.i.i16.i.i.i.i.i, label %scalar.ph204, !llvm.loop !901

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.rp, i64 noundef %i.oa, i64 noundef %i.oc), !noalias !914
  %i.tj = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !914 ; 2 uses
  %i.tk = extractvalue { i64, i64 } %i.tj, 1      ; 2 uses
  %i.tl = icmp eq i64 %i.tk, 0
  br i1 %i.tl, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i

.lr.ph.i.preheader.i.i.i17.i.i.i.i.i:             ; preds = %bb.as
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i18.i.i.i.i.i

.lr.ph.i.i.i.i18.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i
  %i.to = phi i64 [ %i.vl, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i ], [ %i.tk, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ] ; 5 uses
  %i.tp = phi { i64, i64 } [ %i.vk, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i ], [ %i.tj, %.lr.ph.i.preheader.i.i.i17.i.i.i.i.i ]
  %i.tq = extractvalue { i64, i64 } %i.tp, 0      ; 2 uses
  %i.tr = icmp sgt i64 %i.to, 0
  br i1 %i.tr, label %.lr.ph.i13.i.i.i.i20.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i20.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.ts = load i64, ptr %i.ny, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i21.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ts ; 2 uses
  %i.tt = load i64, ptr %i.tn, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.tt ; 2 uses
  %.promoted.i16.i.i.i.i23.i.i.i.i.i = load i8, ptr %i.tm, align 8, !tbaa !90, !noalias !914
  %i.tu = icmp ne i8 %.promoted.i16.i.i.i.i23.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.to, 4
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph.i13.i.i.i.i20.i.i.i.i.i
  %n.vec188 = and i64 %i.to, 9223372036854775804  ; 3 uses
  %i.tv = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.tu, i64 0
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next198, %vector.body189 ] ; 2 uses
  %vec.phi191 = phi <2 x i1> [ %i.tv, %vector.ph187 ], [ %i.ur, %vector.body189 ]
  %vec.phi192 = phi <2 x i1> [ splat (i1 true), %vector.ph187 ], [ %i.us, %vector.body189 ]
  %i.tw = add nsw i64 %index190, %i.tq            ; 2 uses
  %i.tx = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i21.i.i.i.i.i, i64 %i.tw ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tx, i64 16
  %wide.load193 = load <2 x double>, ptr %i.tx, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load194 = load <2 x double>, ptr %i.ty, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.tz = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i, i64 %i.tw ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 16
  %wide.load195 = load <2 x double>, ptr %i.tz, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %wide.load196 = load <2 x double>, ptr %i.ua, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.ub = fcmp oeq <2 x double> %wide.load193, %wide.load195
  %i.uc = fcmp oeq <2 x double> %wide.load194, %wide.load196
  %i.ud = fcmp uno <2 x double> %wide.load193, zeroinitializer
  %i.ue = fcmp uno <2 x double> %wide.load194, zeroinitializer
  %i.uf = fcmp uno <2 x double> %wide.load195, zeroinitializer
  %i.ug = fcmp uno <2 x double> %wide.load196, zeroinitializer
  %i.uh = and <2 x i1> %i.ud, %i.uf
  %i.ui = and <2 x i1> %i.ue, %i.ug
  %i.uj = bitcast <2 x double> %wide.load193 to <2 x i64>
  %i.uk = bitcast <2 x double> %wide.load194 to <2 x i64>
  %i.ul = bitcast <2 x double> %wide.load195 to <2 x i64>
  %i.um = bitcast <2 x double> %wide.load196 to <2 x i64>
  %i.un = xor <2 x i64> %i.ul, %i.uj
  %i.uo = xor <2 x i64> %i.um, %i.uk
  %i.up = icmp sgt <2 x i64> %i.un, splat (i64 -1)
  %i.uq = icmp sgt <2 x i64> %i.uo, splat (i64 -1)
  %predphi = select <2 x i1> %i.ub, <2 x i1> %i.up, <2 x i1> %i.uh
  %predphi197 = select <2 x i1> %i.uc, <2 x i1> %i.uq, <2 x i1> %i.ui
  %i.ur = and <2 x i1> %vec.phi191, %predphi      ; 2 uses
  %i.us = and <2 x i1> %vec.phi192, %predphi197   ; 2 uses
  %index.next198 = add nuw i64 %index190, 4       ; 2 uses
  %i.ut = icmp eq i64 %index.next198, %n.vec188
  br i1 %i.ut, label %middle.block199, label %vector.body189, !llvm.loop !902

middle.block199:                                  ; preds = %vector.body189
  %bin.rdx200 = and <2 x i1> %i.us, %i.ur
  %i.uu = bitcast <2 x i1> %bin.rdx200 to i2
  %i.uv = icmp eq i2 %i.uu, -1                    ; 2 uses
  %cmp.n201 = icmp eq i64 %i.to, %n.vec188
  br i1 %cmp.n201, label %._crit_edge.i24.i.i.i.i.i.i.i.i.i, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i20.i.i.i.i.i, %middle.block199
  %.ph397 = phi i1 [ %i.tu, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %i.uv, %middle.block199 ]
  %.01.i17.i.i.i.i24.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i20.i.i.i.i.i ], [ %n.vec188, %middle.block199 ]
  br label %scalar.ph185

._crit_edge.i24.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block199
  %.lcssa122 = phi i1 [ %i.uv, %middle.block199 ], [ %i.vi, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.uw = zext i1 %.lcssa122 to i8
  store i8 %i.uw, ptr %i.tm, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.ux = phi i1 [ %i.vi, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph397, %scalar.ph185.preheader ]
  %.01.i17.i.i.i.i24.i.i.i.i.i = phi i64 [ %i.vj, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i17.i.i.i.i24.i.i.i.i.i.ph, %scalar.ph185.preheader ] ; 2 uses
  %i.uy = add nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, %i.tq ; 2 uses
  %gep.i18.i.i.i.i25.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i21.i.i.i.i.i, i64 %i.uy
  %i.uz = load double, ptr %gep.i18.i.i.i.i25.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %gep3.i19.i.i.i.i26.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i22.i.i.i.i.i, i64 %i.uy
  %i.va = load double, ptr %gep3.i19.i.i.i.i26.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 3 uses
  %i.vb = fcmp oeq double %i.uz, %i.va
  br i1 %i.vb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %scalar.ph185
  %i.vc = bitcast double %i.uz to i64
  %i.vd = bitcast double %i.va to i64
  %i.ve = xor i64 %i.vd, %i.vc
  %i.vf = icmp sgt i64 %i.ve, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %scalar.ph185
  %i.vg = fcmp uno double %i.uz, 0.000000e+00
  %i.vh = fcmp uno double %i.va, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i27.i.i.i.i.i = and i1 %i.vg, %i.vh
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i22.i.i.i.i.i.i29.i.i.i = phi i1 [ %i.vf, %bb.at ], [ %or.cond.i.i.i20.i.i.i.i27.i.i.i.i.i, %bb.au ]
  %i.vi = and i1 %i.ux, %.0.i.i.i22.i.i.i.i.i.i29.i.i.i ; 2 uses
  %i.vj = add nuw nsw i64 %.01.i17.i.i.i.i24.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i.i30.i.i.i = icmp eq i64 %i.vj, %i.to
  br i1 %exitcond.not.i23.i.i.i.i.i.i30.i.i.i, label %._crit_edge.i24.i.i.i.i.i.i.i.i.i, label %scalar.ph185, !llvm.loop !903

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i18.i.i.i.i.i
  %i.vk = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !914 ; 2 uses
  %i.vl = extractvalue { i64, i64 } %i.vk, 1      ; 2 uses
  %i.vm = icmp eq i64 %i.vl, 0
  br i1 %i.vm, label %._crit_edge.i.i.i.i19.i.i.i.i.i, label %.lr.ph.i.i.i.i18.i.i.i.i.i

._crit_edge.i.i.i.i19.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit25.i.i.i.i.i.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.av:                                            ; preds = %bb.aj
  br i1 %i.an, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i.i17.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.vn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.vp = trunc nuw i8 %i.vo to i1
  %i.vq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !914 ; 2 uses
  %i.vs = icmp ne ptr %i.vr, null
  %or.cond.not.i.i.i.i16.i.i.i.i = select i1 %i.vp, i1 %i.vs, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i, label %bb.ay, label %.thread.i.i.i.i17.i.i.i.i, !prof !179

.thread.i.i.i.i17.i.i.i.i:                        ; preds = %bb.ax, %bb.aw
  %i.vt = icmp sgt i64 %i.oc, 0
  br i1 %i.vt, label %.lr.ph.i.i.i.i.i.i18.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i18.i.i.i.i:                     ; preds = %.thread.i.i.i.i17.i.i.i.i
  %invariant.gep.i.i.i.i.i.i19.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.nz ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i.i20.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.vv ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i.i21.i.i.i.i = load i8, ptr %i.vw, align 8, !tbaa !90, !noalias !914
  %i.vx = icmp ne i8 %.promoted.i.i.i.i.i.i21.i.i.i.i, 0 ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.oc, 4
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i.i.i.i.i18.i.i.i.i
  %n.vec170 = and i64 %i.oc, 9223372036854775804  ; 3 uses
  %i.vy = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.vx, i64 0
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body171 ] ; 3 uses
  %vec.phi173 = phi <2 x i1> [ %i.vy, %vector.ph169 ], [ %i.wf, %vector.body171 ]
  %vec.phi174 = phi <2 x i1> [ splat (i1 true), %vector.ph169 ], [ %i.wg, %vector.body171 ]
  %i.vz = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i19.i.i.i.i, i64 %index172 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 16
  %wide.load175 = load <2 x double>, ptr %i.vz, align 8, !tbaa !110, !noalias !914
  %wide.load176 = load <2 x double>, ptr %i.wa, align 8, !tbaa !110, !noalias !914
  %i.wb = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i20.i.i.i.i, i64 %index172 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %wide.load177 = load <2 x double>, ptr %i.wb, align 8, !tbaa !110, !noalias !914
  %wide.load178 = load <2 x double>, ptr %i.wc, align 8, !tbaa !110, !noalias !914
  %i.wd = fcmp oeq <2 x double> %wide.load175, %wide.load177
  %i.we = fcmp oeq <2 x double> %wide.load176, %wide.load178
  %i.wf = and <2 x i1> %vec.phi173, %i.wd         ; 2 uses
  %i.wg = and <2 x i1> %vec.phi174, %i.we         ; 2 uses
  %index.next179 = add nuw i64 %index172, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.wh, label %middle.block180, label %vector.body171, !llvm.loop !904

middle.block180:                                  ; preds = %vector.body171
  %bin.rdx181 = and <2 x i1> %i.wg, %i.wf
  %i.wi = bitcast <2 x i1> %bin.rdx181 to i2
  %i.wj = icmp eq i2 %i.wi, -1                    ; 2 uses
  %cmp.n182 = icmp eq i64 %i.oc, %n.vec170
  br i1 %cmp.n182, label %._crit_edge.i.i.i.i.i.i26.i.i.i.i, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i18.i.i.i.i, %middle.block180
  %.ph401 = phi i1 [ %i.vx, %.lr.ph.i.i.i.i.i.i18.i.i.i.i ], [ %i.wj, %middle.block180 ]
  %.01.i.i.i.i.i.i22.i12.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i18.i.i.i.i ], [ %n.vec170, %middle.block180 ]
  br label %scalar.ph167

._crit_edge.i.i.i.i.i.i26.i.i.i.i:                ; preds = %scalar.ph167, %middle.block180
  %.lcssa123 = phi i1 [ %i.wj, %middle.block180 ], [ %i.wp, %scalar.ph167 ]
  %i.wk = zext i1 %.lcssa123 to i8
  store i8 %i.wk, ptr %i.vw, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %i.wl = phi i1 [ %i.wp, %scalar.ph167 ], [ %.ph401, %scalar.ph167.preheader ]
  %.01.i.i.i.i.i.i22.i12.i.i.i = phi i64 [ %i.wq, %scalar.ph167 ], [ %.01.i.i.i.i.i.i22.i12.i.i.i.ph, %scalar.ph167.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i23.i13.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i19.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i12.i.i.i
  %i.wm = load double, ptr %gep.i.i.i.i.i.i23.i13.i.i.i, align 8, !tbaa !110, !noalias !914
  %gep3.i.i.i.i.i.i24.i14.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i.i20.i.i.i.i, i64 %.01.i.i.i.i.i.i22.i12.i.i.i
  %i.wn = load double, ptr %gep3.i.i.i.i.i.i24.i14.i.i.i, align 8, !tbaa !110, !noalias !914
  %i.wo = fcmp oeq double %i.wm, %i.wn
  %i.wp = and i1 %i.wl, %i.wo                     ; 2 uses
  %i.wq = add nuw nsw i64 %.01.i.i.i.i.i.i22.i12.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i25.i.i.i.i = icmp eq i64 %i.wq, %i.oc
  br i1 %exitcond.not.i.i.i.i.i.i25.i.i.i.i, label %._crit_edge.i.i.i.i.i.i26.i.i.i.i, label %scalar.ph167, !llvm.loop !905

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.vr, i64 noundef %i.oa, i64 noundef %i.oc), !noalias !914
  %i.wr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !914 ; 2 uses
  %i.ws = extractvalue { i64, i64 } %i.wr, 1      ; 2 uses
  %i.wt = icmp eq i64 %i.ws, 0
  br i1 %i.wt, label %._crit_edge.i.i.i.i.i29.i17.i.i.i, label %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i

.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i:           ; preds = %bb.ay
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i.i28.i16.i.i.i

.lr.ph.i.i.i.i.i28.i16.i.i.i:                     ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i
  %i.ww = phi i64 [ %i.xz, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i ], [ %i.ws, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i ] ; 5 uses
  %i.wx = phi { i64, i64 } [ %i.xy, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i ], [ %i.wr, %.lr.ph.i.preheader.i.i.i.i27.i15.i.i.i ]
  %i.wy = extractvalue { i64, i64 } %i.wx, 0      ; 2 uses
  %i.wz = icmp sgt i64 %i.ww, 0
  br i1 %i.wz, label %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i30.i18.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i28.i16.i.i.i
  %i.xa = load i64, ptr %i.ny, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.xa ; 2 uses
  %i.xb = load i64, ptr %i.wv, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.xb ; 2 uses
  %.promoted.i16.i.i.i.i.i33.i.i.i.i = load i8, ptr %i.wu, align 8, !tbaa !90, !noalias !914
  %i.xc = icmp ne i8 %.promoted.i16.i.i.i.i.i33.i.i.i.i, 0 ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.ww, 4
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i
  %n.vec152 = and i64 %i.ww, 9223372036854775804  ; 3 uses
  %i.xd = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.xc, i64 0
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %vec.phi155 = phi <2 x i1> [ %i.xd, %vector.ph151 ], [ %i.xl, %vector.body153 ]
  %vec.phi156 = phi <2 x i1> [ splat (i1 true), %vector.ph151 ], [ %i.xm, %vector.body153 ]
  %i.xe = add nsw i64 %index154, %i.wy            ; 2 uses
  %i.xf = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i, i64 %i.xe ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xf, i64 16
  %wide.load157 = load <2 x double>, ptr %i.xf, align 8, !tbaa !110, !noalias !914
  %wide.load158 = load <2 x double>, ptr %i.xg, align 8, !tbaa !110, !noalias !914
  %i.xh = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i, i64 %i.xe ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 16
  %wide.load159 = load <2 x double>, ptr %i.xh, align 8, !tbaa !110, !noalias !914
  %wide.load160 = load <2 x double>, ptr %i.xi, align 8, !tbaa !110, !noalias !914
  %i.xj = fcmp oeq <2 x double> %wide.load157, %wide.load159
  %i.xk = fcmp oeq <2 x double> %wide.load158, %wide.load160
  %i.xl = and <2 x i1> %vec.phi155, %i.xj         ; 2 uses
  %i.xm = and <2 x i1> %vec.phi156, %i.xk         ; 2 uses
  %index.next161 = add nuw i64 %index154, 4       ; 2 uses
  %i.xn = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.xn, label %middle.block162, label %vector.body153, !llvm.loop !906

middle.block162:                                  ; preds = %vector.body153
  %bin.rdx163 = and <2 x i1> %i.xm, %i.xl
  %i.xo = bitcast <2 x i1> %bin.rdx163 to i2
  %i.xp = icmp eq i2 %i.xo, -1                    ; 2 uses
  %cmp.n164 = icmp eq i64 %i.ww, %n.vec152
  br i1 %cmp.n164, label %._crit_edge.i21.i.i.i.i.i.i.i.i.i, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i, %middle.block162
  %.ph405 = phi i1 [ %i.xc, %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i ], [ %i.xp, %middle.block162 ]
  %.01.i17.i.i.i.i.i34.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i30.i18.i.i.i ], [ %n.vec152, %middle.block162 ]
  br label %scalar.ph149

._crit_edge.i21.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph149, %middle.block162
  %.lcssa124 = phi i1 [ %i.xp, %middle.block162 ], [ %i.xw, %scalar.ph149 ]
  %i.xq = zext i1 %.lcssa124 to i8
  store i8 %i.xq, ptr %i.wu, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %i.xr = phi i1 [ %i.xw, %scalar.ph149 ], [ %.ph405, %scalar.ph149.preheader ]
  %.01.i17.i.i.i.i.i34.i.i.i.i = phi i64 [ %i.xx, %scalar.ph149 ], [ %.01.i17.i.i.i.i.i34.i.i.i.i.ph, %scalar.ph149.preheader ] ; 2 uses
  %i.xs = add nsw i64 %.01.i17.i.i.i.i.i34.i.i.i.i, %i.wy ; 2 uses
  %gep.i18.i.i.i.i.i35.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i.i31.i19.i.i.i, i64 %i.xs
  %i.xt = load double, ptr %gep.i18.i.i.i.i.i35.i.i.i.i, align 8, !tbaa !110, !noalias !914
  %gep3.i19.i.i.i.i.i36.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i.i32.i20.i.i.i, i64 %i.xs
  %i.xu = load double, ptr %gep3.i19.i.i.i.i.i36.i.i.i.i, align 8, !tbaa !110, !noalias !914
  %i.xv = fcmp oeq double %i.xt, %i.xu
  %i.xw = and i1 %i.xr, %i.xv                     ; 2 uses
  %i.xx = add nuw nsw i64 %.01.i17.i.i.i.i.i34.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i20.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.xx, %i.ww
  br i1 %exitcond.not.i20.i.i.i.i.i.i.i.i.i, label %._crit_edge.i21.i.i.i.i.i.i.i.i.i, label %scalar.ph149, !llvm.loop !907

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i21.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i28.i16.i.i.i
  %i.xy = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !914 ; 2 uses
  %i.xz = extractvalue { i64, i64 } %i.xy, 1      ; 2 uses
  %i.ya = icmp eq i64 %i.xz, 0
  br i1 %i.ya, label %._crit_edge.i.i.i.i.i29.i17.i.i.i, label %.lr.ph.i.i.i.i.i28.i16.i.i.i

._crit_edge.i.i.i.i.i29.i17.i.i.i:                ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

bb.az:                                            ; preds = %bb.av
  br i1 %.not3.i.i.i.i.i5.i.i.i, label %.thread.i.i.i5.i7.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 9
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !144, !range !36, !noalias !914, !noundef !37
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i4.i.i.i, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8, !noalias !914 ; 2 uses
  %i.yg = icmp ne ptr %i.yf, null
  %or.cond.not.i.i.i4.i6.i.i.i.i = select i1 %i.yd, i1 %i.yg, i1 false
  br i1 %or.cond.not.i.i.i4.i6.i.i.i.i, label %bb.bb, label %.thread.i.i.i5.i7.i.i.i.i, !prof !179

.thread.i.i.i5.i7.i.i.i.i:                        ; preds = %bb.ba, %bb.az
  %i.yh = icmp sgt i64 %i.oc, 0
  br i1 %i.yh, label %.lr.ph.i.i.i.i.i6.i8.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i8.i.i.i.i:                     ; preds = %.thread.i.i.i5.i7.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i9.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.nz ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.yj ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted.i.i.i.i.i9.i11.i.i.i.i = load i8, ptr %i.yk, align 8, !tbaa !90, !noalias !914
  %i.yl = icmp ne i8 %.promoted.i.i.i.i.i9.i11.i.i.i.i, 0 ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.oc, 4
  br i1 %min.iters.check132, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.i.i6.i8.i.i.i.i
  %n.vec134 = and i64 %i.oc, 9223372036854775804  ; 3 uses
  %i.ym = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.yl, i64 0
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next143, %vector.body135 ] ; 3 uses
  %vec.phi137 = phi <2 x i1> [ %i.ym, %vector.ph133 ], [ %i.zd, %vector.body135 ]
  %vec.phi138 = phi <2 x i1> [ splat (i1 true), %vector.ph133 ], [ %i.ze, %vector.body135 ]
  %i.yn = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i9.i.i.i.i, i64 %index136 ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yn, i64 16
  %wide.load139 = load <2 x double>, ptr %i.yn, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load140 = load <2 x double>, ptr %i.yo, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.yp = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i, i64 %index136 ; 2 uses
  %i.yq = getelementptr i8, ptr %i.yp, i64 16
  %wide.load141 = load <2 x double>, ptr %i.yp, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load142 = load <2 x double>, ptr %i.yq, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.yr = fcmp oeq <2 x double> %wide.load139, %wide.load141
  %i.ys = fcmp oeq <2 x double> %wide.load140, %wide.load142
  %i.yt = bitcast <2 x double> %wide.load139 to <2 x i64>
  %i.yu = bitcast <2 x double> %wide.load140 to <2 x i64>
  %i.yv = bitcast <2 x double> %wide.load141 to <2 x i64>
  %i.yw = bitcast <2 x double> %wide.load142 to <2 x i64>
  %i.yx = xor <2 x i64> %i.yv, %i.yt
  %i.yy = xor <2 x i64> %i.yw, %i.yu
  %i.yz = icmp sgt <2 x i64> %i.yx, splat (i64 -1)
  %i.za = icmp sgt <2 x i64> %i.yy, splat (i64 -1)
  %i.zb = and <2 x i1> %i.yr, %i.yz
  %i.zc = and <2 x i1> %i.ys, %i.za
  %i.zd = and <2 x i1> %vec.phi137, %i.zb         ; 2 uses
  %i.ze = and <2 x i1> %vec.phi138, %i.zc         ; 2 uses
  %index.next143 = add nuw i64 %index136, 4       ; 2 uses
  %i.zf = icmp eq i64 %index.next143, %n.vec134
  br i1 %i.zf, label %middle.block144, label %vector.body135, !llvm.loop !908

middle.block144:                                  ; preds = %vector.body135
  %bin.rdx145 = and <2 x i1> %i.ze, %i.zd
  %i.zg = bitcast <2 x i1> %bin.rdx145 to i2
  %i.zh = icmp eq i2 %i.zg, -1                    ; 2 uses
  %cmp.n146 = icmp eq i64 %i.oc, %n.vec134
  br i1 %cmp.n146, label %._crit_edge.i.i.i.i.i14.i.i.i.i.i, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i8.i.i.i.i, %middle.block144
  %.ph409 = phi i1 [ %i.yl, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %i.zh, %middle.block144 ]
  %.01.i.i.i.i.i10.i12.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i8.i.i.i.i ], [ %n.vec134, %middle.block144 ]
  br label %scalar.ph131

._crit_edge.i.i.i.i.i14.i.i.i.i.i:                ; preds = %scalar.ph131, %middle.block144
  %.lcssa125 = phi i1 [ %i.zh, %middle.block144 ], [ %i.zr, %scalar.ph131 ]
  %i.zi = zext i1 %.lcssa125 to i8
  store i8 %i.zi, ptr %i.yk, align 8, !tbaa !90, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

scalar.ph131:                                     ; preds = %scalar.ph131.preheader, %scalar.ph131
  %i.zj = phi i1 [ %i.zr, %scalar.ph131 ], [ %.ph409, %scalar.ph131.preheader ]
  %.01.i.i.i.i.i10.i12.i.i.i.i = phi i64 [ %i.zs, %scalar.ph131 ], [ %.01.i.i.i.i.i10.i12.i.i.i.i.ph, %scalar.ph131.preheader ] ; 3 uses
  %gep.i.i.i.i.i11.i13.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i7.i9.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.zk = load double, ptr %gep.i.i.i.i.i11.i13.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i.i.i.i.i12.i14.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i.i.i.i.i8.i10.i.i.i.i, i64 %.01.i.i.i.i.i10.i12.i.i.i.i
  %i.zl = load double, ptr %gep3.i.i.i.i.i12.i14.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.zm = fcmp oeq double %i.zk, %i.zl
  %i.zn = bitcast double %i.zk to i64
  %i.zo = bitcast double %i.zl to i64
  %i.zp = xor i64 %i.zo, %i.zn
  %i.zq = icmp sgt i64 %i.zp, -1
  %.0.i.i.i.i.i.i.i.i15.i.i.i.i = and i1 %i.zm, %i.zq
  %i.zr = and i1 %i.zj, %.0.i.i.i.i.i.i.i.i15.i.i.i.i ; 2 uses
  %i.zs = add nuw nsw i64 %.01.i.i.i.i.i10.i12.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i13.i.i.i.i.i = icmp eq i64 %i.zs, %i.oc
  br i1 %exitcond.not.i.i.i.i.i13.i.i.i.i.i, label %._crit_edge.i.i.i.i.i14.i.i.i.i.i, label %scalar.ph131, !llvm.loop !909

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !914
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.yf, i64 noundef %i.oa, i64 noundef %i.oc), !noalias !914
  %i.zt = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !914 ; 2 uses
  %i.zu = extractvalue { i64, i64 } %i.zt, 1      ; 2 uses
  %i.zv = icmp eq i64 %i.zu, 0
  br i1 %i.zv, label %._crit_edge.i.i.i.i17.i.i8.i.i.i, label %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i

.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i:            ; preds = %bb.bb
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %.lr.ph.i.i.i.i16.i.i7.i.i.i

.lr.ph.i.i.i.i16.i.i7.i.i.i:                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i
  %i.zy = phi i64 [ %i.abp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.zu, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i ] ; 5 uses
  %i.zz = phi { i64, i64 } [ %i.abo, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i ], [ %i.zt, %.lr.ph.i.preheader.i.i.i15.i.i6.i.i.i ]
  %i.aaa = extractvalue { i64, i64 } %i.zz, 0     ; 2 uses
  %i.aab = icmp sgt i64 %i.zy, 0
  br i1 %i.aab, label %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i18.i.i9.i.i.i:                  ; preds = %.lr.ph.i.i.i.i16.i.i7.i.i.i
  %i.aac = load i64, ptr %i.ny, align 8, !tbaa !87, !noalias !914
  %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.aac ; 2 uses
  %i.aad = load i64, ptr %i.zx, align 8, !tbaa !88, !noalias !914
  %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i = getelementptr [8 x i8], ptr %.0.i.i2.i, i64 %i.aad ; 2 uses
  %.promoted.i16.i.i.i.i21.i.i.i.i.i = load i8, ptr %i.zw, align 8, !tbaa !90, !noalias !914
  %i.aae = icmp ne i8 %.promoted.i16.i.i.i.i21.i.i.i.i.i, 0 ; 2 uses
  %min.iters.check = icmp ult i64 %i.zy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i
  %n.vec = and i64 %i.zy, 9223372036854775804     ; 3 uses
  %i.aaf = insertelement <2 x i1> <i1 poison, i1 true>, i1 %i.aae, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ %i.aaf, %vector.ph ], [ %i.aax, %vector.body ]
  %vec.phi127 = phi <2 x i1> [ splat (i1 true), %vector.ph ], [ %i.aay, %vector.body ]
  %i.aag = add nsw i64 %index, %i.aaa             ; 2 uses
  %i.aah = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 16
  %wide.load = load <2 x double>, ptr %i.aah, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load128 = load <2 x double>, ptr %i.aai, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.aaj = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.aag ; 2 uses
  %i.aak = getelementptr i8, ptr %i.aaj, i64 16
  %wide.load129 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %i.aak, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.aal = fcmp oeq <2 x double> %wide.load, %wide.load129
  %i.aam = fcmp oeq <2 x double> %wide.load128, %wide.load130
  %i.aan = bitcast <2 x double> %wide.load to <2 x i64>
  %i.aao = bitcast <2 x double> %wide.load128 to <2 x i64>
  %i.aap = bitcast <2 x double> %wide.load129 to <2 x i64>
  %i.aaq = bitcast <2 x double> %wide.load130 to <2 x i64>
  %i.aar = xor <2 x i64> %i.aap, %i.aan
  %i.aas = xor <2 x i64> %i.aaq, %i.aao
  %i.aat = icmp sgt <2 x i64> %i.aar, splat (i64 -1)
  %i.aau = icmp sgt <2 x i64> %i.aas, splat (i64 -1)
  %i.aav = and <2 x i1> %i.aal, %i.aat
  %i.aaw = and <2 x i1> %i.aam, %i.aau
  %i.aax = and <2 x i1> %vec.phi, %i.aav          ; 2 uses
  %i.aay = and <2 x i1> %vec.phi127, %i.aaw       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aaz = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaz, label %middle.block, label %vector.body, !llvm.loop !910

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i1> %i.aay, %i.aax
  %i.aba = bitcast <2 x i1> %bin.rdx to i2
  %i.abb = icmp eq i2 %i.aba, -1                  ; 2 uses
  %cmp.n = icmp eq i64 %i.zy, %n.vec
  br i1 %cmp.n, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i, %middle.block
  %.ph413 = phi i1 [ %i.aae, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %i.abb, %middle.block ]
  %.01.i17.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i22.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph, %middle.block
  %.lcssa126 = phi i1 [ %i.abb, %middle.block ], [ %i.abm, %scalar.ph ]
  %i.abc = zext i1 %.lcssa126 to i8
  store i8 %i.abc, ptr %i.zw, align 8, !tbaa !90, !noalias !914
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.abd = phi i1 [ %i.abm, %scalar.ph ], [ %.ph413, %scalar.ph.preheader ]
  %.01.i17.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.abn, %scalar.ph ], [ %.01.i17.i.i.i.i22.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.abe = add nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, %i.aaa ; 2 uses
  %gep.i18.i.i.i.i23.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.abe
  %i.abf = load double, ptr %gep.i18.i.i.i.i23.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %gep3.i19.i.i.i.i24.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.abe
  %i.abg = load double, ptr %gep3.i19.i.i.i.i24.i.i.i.i.i, align 8, !tbaa !110, !noalias !914 ; 2 uses
  %i.abh = fcmp oeq double %i.abf, %i.abg
  %i.abi = bitcast double %i.abf to i64
  %i.abj = bitcast double %i.abg to i64
  %i.abk = xor i64 %i.abj, %i.abi
  %i.abl = icmp sgt i64 %i.abk, -1
  %.0.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.abh, %i.abl
  %i.abm = and i1 %i.abd, %.0.i.i.i20.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.abn = add nuw nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i21.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abn, %i.zy
  br i1 %exitcond.not.i21.i.i.i.i.i.i.i.i.i, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !911

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i22.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i7.i.i.i
  %i.abo = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !914 ; 2 uses
  %i.abp = extractvalue { i64, i64 } %i.abo, 1    ; 2 uses
  %i.abq = icmp eq i64 %i.abp, 0
  br i1 %i.abq, label %._crit_edge.i.i.i.i17.i.i8.i.i.i, label %.lr.ph.i.i.i.i16.i.i7.i.i.i

._crit_edge.i.i.i.i17.i.i8.i.i.i:                 ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !914
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit: ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %.thread.i.i.i5.i.i.i.i.i, %._crit_edge.i.i.i.i18.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i18.i.i.i.i, %._crit_edge.i.i.i.i.i29.i.i.i.i, %.thread.i.i.i5.i8.i.i.i.i, %._crit_edge.i.i.i.i17.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i.i32.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i45.i.i.i, %.thread.i.i.i5.i.i22.i.i.i, %._crit_edge.i.i.i.i.i16.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i.i.i.i, %.thread.i.i.i.i17.i.i.i.i, %._crit_edge.i.i.i.i.i.i26.i.i.i.i, %._crit_edge.i.i.i.i.i29.i17.i.i.i, %.thread.i.i.i5.i7.i.i.i.i, %._crit_edge.i.i.i.i.i14.i.i.i.i.i, %._crit_edge.i.i.i.i17.i.i8.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !915
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10BinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !924, !nonnull !37, !align !168 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !924 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !924
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !95
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i:  ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169, !noalias !924, !nonnull !37, !align !168 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170, !noalias !924 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i2.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !924 ; 3 uses
  %i.x = icmp ne ptr %.0.i.i, null
  %i.y = icmp ne ptr %i.w, null
  %i.z = select i1 %i.u, i1 %i.y, i1 false, !prof !95
  %or.cond.i = and i1 %i.x, %i.z
  br i1 %or.cond.i, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !171, !noalias !924
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !924
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !95
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ad
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !87, !noalias !924 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.am ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i3.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !171, !noalias !924
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !924
  %i.ax = select i1 %i.au, ptr %i.aw, ptr null, !prof !95
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ar
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i: ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i
  %.0.i.i4.i.i = phi ptr [ %i.ay, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !88, !noalias !924
  %i.bb = getelementptr inbounds [4 x i8], ptr %.0.i.i4.i.i, i64 %i.ba ; 6 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i6.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !924 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond.not.i.i.i = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.h, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i: ; preds = %bb.f, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !89, !noalias !924 ; 3 uses
  %smax.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %exitcond.not.i.i.i.i19 = icmp slt i64 %i.bk, 1
  br i1 %exitcond.not.i.i.i.i19, label %._crit_edge, label %.lr.ph21

bb.g:                                             ; preds = %.lr.ph21
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bl, %smax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph21, !llvm.loop !918

.lr.ph21:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, %bb.g
  %.016.i.i.i.i20 = phi i64 [ %i.bl, %bb.g ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i ] ; 3 uses
  %i.bl = add nuw i64 %.016.i.i.i.i20, 1          ; 4 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10, !noalias !924
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.016.i.i.i.i20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10, !noalias !924
  %i.bq = sub nsw i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bl
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10, !noalias !924
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.016.i.i.i.i20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10, !noalias !924
  %i.bv = sub nsw i32 %i.bs, %i.bu
  %.not.i8.i.i.i = icmp eq i32 %i.bq, %i.bv
  br i1 %.not.i8.i.i.i, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !918

._crit_edge:                                      ; preds = %bb.g, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i
  %i.bw = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !924 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.bb, align 4, !tbaa !10, !noalias !924
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bk
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10, !noalias !924
  %i.cc = sub nsw i32 %i.cb, %i.bw
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bx
  %i.cf = getelementptr inbounds i8, ptr %i.w, i64 %i.bz
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ce, ptr nonnull readonly %i.cf, i64 range(i64 -2147483648, 2147483648) %i.cd), !noalias !924
  %i.cg = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.ch = zext i1 %i.cg to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %.lr.ph21, %._crit_edge
  %.1.i.i.i.i = phi i8 [ %i.ch, %._crit_edge ], [ 0, %.lr.ph21 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i.i.i.i, ptr %i.ci, align 8, !tbaa !90, !noalias !924
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !924
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !171, !noalias !924
  %i.cl = add nsw i64 %i.ck, %i.am
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !89, !noalias !924
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.bh, i64 noundef %i.cl, i64 noundef %i.cn), !noalias !924
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %bb.h
  %i.co = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !924 ; 2 uses
  %i.cp = extractvalue { i64, i64 } %i.co, 1      ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = extractvalue { i64, i64 } %i.co, 0      ; 5 uses
  %i.cs = add nsw i64 %i.cp, %i.cr                ; 2 uses
  %smax.i9.i.i.i = call i64 @llvm.smax.i64(i64 %i.cr, i64 %i.cs)
  %exitcond.not.i11.i.i.i17.not = icmp sgt i64 %i.cp, 0
  br i1 %exitcond.not.i11.i.i.i17.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i

bb.k:                                             ; preds = %.lr.ph
  %exitcond.not.i11.i.i.i = icmp eq i64 %i.ct, %smax.i9.i.i.i
  br i1 %exitcond.not.i11.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, label %.lr.ph, !llvm.loop !918

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.016.i10.i.i.i18 = phi i64 [ %i.ct, %bb.k ], [ %i.cr, %bb.j ] ; 3 uses
  %i.ct = add i64 %.016.i10.i.i.i18, 1            ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10, !noalias !924
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.016.i10.i.i.i18
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10, !noalias !924
  %i.cy = sub nsw i32 %i.cv, %i.cx
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ct
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10, !noalias !924
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.016.i10.i.i.i18
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10, !noalias !924
  %i.dd = sub nsw i32 %i.da, %i.dc
  %.not.i12.i.i.i = icmp eq i32 %i.cy, %i.dd
  br i1 %.not.i12.i.i.i, label %bb.k, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !918

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i: ; preds = %bb.k, %bb.j
  %i.de = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cr
  %i.df = load i32, ptr %i.de, align 4, !tbaa !10, !noalias !924 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cr
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !10, !noalias !924
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cs
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10, !noalias !924
  %i.dm = sub nsw i32 %i.dl, %i.df
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.dg
  %i.dp = getelementptr inbounds i8, ptr %i.w, i64 %i.dj
  %bcmp.i.i18.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.do, ptr nonnull readonly %i.dp, i64 range(i64 -2147483648, 2147483648) %i.dn), !noalias !924
  %i.dq = icmp eq i32 %bcmp.i.i18.i.i.i, 0
  br i1 %i.dq, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !919

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dr, align 8, !tbaa !90, !noalias !924
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !924
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i5.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !171, !noalias !924
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !924
  %i.eb = select i1 %i.dy, ptr %i.ea, ptr null, !prof !95
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dv
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i: ; preds = %bb.l, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %.0.i.i.i7.i = phi ptr [ %i.ec, %bb.l ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !87, !noalias !924 ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %.0.i.i.i7.i, i64 %i.ee ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i4.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !171, !noalias !924
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 9
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !924
  %i.ep = select i1 %i.em, ptr %i.eo, ptr null, !prof !95
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ej
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i: ; preds = %bb.m, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i
  %.0.i.i5.i.i = phi ptr [ %i.eq, %bb.m ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !88, !noalias !924
  %i.et = getelementptr inbounds [4 x i8], ptr %.0.i.i5.i.i, i64 %i.es ; 4 uses
  %i.eu = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !924 ; 3 uses
  %.not.i.i7.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i7.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 9
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !144, !range !36, !noalias !924, !noundef !37
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !924 ; 2 uses
  %i.fa = icmp ne ptr %i.ez, null
  %or.cond.not.i.i8.i = select i1 %i.ex, i1 %i.fa, i1 false
  br i1 %or.cond.not.i.i8.i, label %bb.p, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i: ; preds = %bb.n, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !89, !noalias !924 ; 3 uses
  %smax.i.i.i10.i = tail call i64 @llvm.smax.i64(i64 %i.fc, i64 0)
  %exitcond.i.i.i.i28 = icmp slt i64 %i.fc, 1
  br i1 %exitcond.i.i.i.i28, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30

bb.o:                                             ; preds = %.lr.ph30
  %exitcond.i.i.i.i = icmp eq i64 %i.fd, %smax.i.i.i10.i
  br i1 %exitcond.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30, !llvm.loop !920

.lr.ph30:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, %bb.o
  %.016.i.i.i11.i29 = phi i64 [ %i.fd, %bb.o ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ] ; 4 uses
  %i.fd = add nuw i64 %.016.i.i.i11.i29, 1        ; 4 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !10, !noalias !924
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.016.i.i.i11.i29
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !10, !noalias !924
  %i.fi = sub nsw i32 %i.ff, %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fd
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !10, !noalias !924
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.016.i.i.i11.i29
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !10, !noalias !924
  %i.fn = sub nsw i32 %i.fk, %i.fm
  %.not.i8.i.i12.i = icmp eq i32 %i.fi, %i.fn
  br i1 %.not.i8.i.i12.i, label %bb.o, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, !llvm.loop !920

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge: ; preds = %.lr.ph30
  %i.fo = icmp sge i64 %.016.i.i.i11.i29, %i.fc
  %i.fp = zext i1 %i.fo to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !920

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %bb.o, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i
  %.016.i.lcssa.i.i.i = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ], [ %i.fp, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge ], [ 1, %bb.o ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.016.i.lcssa.i.i.i, ptr %i.fq, align 8, !tbaa !90, !noalias !924
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !924
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !171, !noalias !924
  %i.ft = add nsw i64 %i.fs, %i.ee
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !89, !noalias !924
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.ez, i64 noundef %i.ft, i64 noundef %i.fv), !noalias !924
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.p
  %i.fw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !924 ; 2 uses
  %i.fx = extractvalue { i64, i64 } %i.fw, 1      ; 3 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.critedge.i.i16.i, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.fz = extractvalue { i64, i64 } %i.fw, 0      ; 3 uses
  %i.ga = add nsw i64 %i.fx, %i.fz                ; 2 uses
  %smax.i9.i.i13.i = call i64 @llvm.smax.i64(i64 %i.fz, i64 %i.ga)
  %exitcond.i11.i.i.i22.not = icmp sgt i64 %i.fx, 0
  br i1 %exitcond.i11.i.i.i22.not, label %.lr.ph25, label %.critedge.backedge

bb.r:                                             ; preds = %.lr.ph25
  %exitcond.i11.i.i.i = icmp eq i64 %i.gb, %smax.i9.i.i13.i
  br i1 %exitcond.i11.i.i.i, label %.critedge.backedge, label %.lr.ph25, !llvm.loop !920

.lr.ph25:                                         ; preds = %bb.q, %bb.r
  %.016.i10.i.i14.i23 = phi i64 [ %i.gb, %bb.r ], [ %i.fz, %bb.q ] ; 4 uses
  %i.gb = add i64 %.016.i10.i.i14.i23, 1          ; 4 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !10, !noalias !924
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.016.i10.i.i14.i23
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !10, !noalias !924
  %i.gg = sub nsw i32 %i.gd, %i.gf
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.gb
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !10, !noalias !924
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.016.i10.i.i14.i23
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !10, !noalias !924
  %i.gl = sub nsw i32 %i.gi, %i.gk
  %.not.i12.i.i15.i = icmp eq i32 %i.gg, %i.gl
  br i1 %.not.i12.i.i15.i, label %bb.r, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, !llvm.loop !920

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge: ; preds = %.lr.ph25
  %i.gm = icmp slt i64 %.016.i10.i.i14.i23, %i.ga
  br i1 %i.gm, label %bb.s, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.r, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, %bb.q
  br label %.critedge, !llvm.loop !921

bb.s:                                             ; preds = %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.gn, align 8, !tbaa !90, !noalias !924
  br label %.critedge.i.i16.i

.critedge.i.i16.i:                                ; preds = %.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !924
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i16.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !925
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !87   ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %.0.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169, !nonnull !37, !align !168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !118  ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1, label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !171
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !144, !range !36, !noundef !37
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %i.ae, ptr null, !prof !95
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.z
  br label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3

_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3: ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit, %bb.c
  %.0.i.i2 = phi ptr [ %i.ag, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88
  %i.aj = getelementptr inbounds [16 x i8], ptr %.0.i.i2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !118 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !144, !range !36, !noundef !37
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp ne ptr %i.ar, null
  %or.cond.not.i = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %or.cond.not.i, label %bb.g, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !89 ; 2 uses
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, %bb.f
  %.01114.i.i = phi i64 [ %i.bt, %bb.f ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.01114.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !128 ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.01114.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.e, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %.sroa.011.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32
  %i.ay = icmp slt i32 %.sroa.011.0.extract.trunc.i.i.i, 13
  br i1 %i.ay, label %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %sext.i.i.i = shl i64 %.sroa.22.0.copyload.i.i, 32
  %i.az = ashr exact i64 %sext.i.i.i, 28
  %i.ba = getelementptr inbounds i8, ptr %i.ak, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ashr i64 %.sroa.22.0.copyload.i.i, 32
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %sext15.i.i.i = shl i64 %.sroa.2.0.copyload.i.i, 32
  %i.bg = ashr exact i64 %sext15.i.i.i, 28
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ashr i64 %.sroa.2.0.copyload.i.i, 32
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = add i64 %.sroa.01.0.copyload.i.i, 4294967292
  %i.bq = and i64 %i.bp, 4294967295
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %i.bo, i64 %i.bq)
  %i.br = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.br, label %bb.f, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i

_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i: ; preds = %bb.e
  %i.bs = icmp eq i64 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.bs, label %bb.f, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i

bb.f:                                             ; preds = %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i, %.split.i.i
  %i.bt = add nuw nsw i64 %.01114.i.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %i.au
  br i1 %exitcond.not.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i, label %.lr.ph.i.i, !llvm.loop !926

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i: ; preds = %bb.f, %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i, %.split.i.i, %.lr.ph.i.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i
  %.lcssa.i.i = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i ], [ 0, %.lr.ph.i.i ], [ 0, %.split.i.i ], [ 0, %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i ], [ 1, %bb.f ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa.i.i, ptr %i.bu, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_5VisitERKNS_14BinaryViewTypeEEUlllE_EEvOT_.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !171
  %i.bx = add nsw i64 %i.bw, %i.q
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.ar, i64 noundef %i.bx, i64 noundef %i.bz)
  %i.ca = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.cb = extractvalue { i64, i64 } %i.ca, 1      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i
  %i.cd = phi i64 [ %i.dh, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i ], [ %i.cb, %bb.g ] ; 2 uses
  %i.ce = phi { i64, i64 } [ %i.dg, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i ], [ %i.ca, %bb.g ]
  %i.cf = extractvalue { i64, i64 } %i.ce, 0      ; 2 uses
  %i.cg = add nsw i64 %i.cf, %i.cd
  %i.ch = icmp slt i64 %i.cd, 1
  br i1 %i.ch, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i, %bb.i
  %.01114.i10.i = phi i64 [ %i.df, %bb.i ], [ %i.cf, %.lr.ph.i ] ; 3 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.r, i64 %.01114.i10.i ; 2 uses
  %.sroa.01.0.copyload.i11.i = load i64, ptr %i.ci, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.22.0.copyload.i13.i = load i64, ptr %.sroa.22.0..sroa_idx.i12.i, align 8, !tbaa !128 ; 3 uses
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %.01114.i10.i ; 2 uses
  %.sroa.0.0.copyload.i14.i = load i64, ptr %i.cj, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2.0.copyload.i16.i = load i64, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !tbaa !128 ; 3 uses
  %.not.i.i17.i = icmp eq i64 %.sroa.01.0.copyload.i11.i, %.sroa.0.0.copyload.i14.i
  br i1 %.not.i.i17.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i9.i
  %.sroa.011.0.extract.trunc.i.i19.i = trunc i64 %.sroa.01.0.copyload.i11.i to i32
  %i.ck = icmp slt i32 %.sroa.011.0.extract.trunc.i.i19.i, 13
  br i1 %i.ck, label %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, label %.split.i20.i

.split.i20.i:                                     ; preds = %bb.h
  %sext.i.i21.i = shl i64 %.sroa.22.0.copyload.i13.i, 32
  %i.cl = ashr exact i64 %sext.i.i21.i, 28
  %i.cm = getelementptr inbounds i8, ptr %i.ak, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !118
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ashr i64 %.sroa.22.0.copyload.i13.i, 32
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  %sext15.i.i22.i = shl i64 %.sroa.2.0.copyload.i16.i, 32
  %i.cs = ashr exact i64 %sext15.i.i22.i, 28
  %i.ct = getelementptr inbounds i8, ptr %i.al, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !118
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ashr i64 %.sroa.2.0.copyload.i16.i, 32
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = add i64 %.sroa.01.0.copyload.i11.i, 4294967292
  %i.dc = and i64 %i.db, 4294967295
  %bcmp.i.i23.i = call i32 @bcmp(ptr nonnull %i.cz, ptr nonnull %i.da, i64 %i.dc)
  %i.dd = icmp eq i32 %bcmp.i.i23.i, 0
  br i1 %i.dd, label %bb.i, label %bb.j

_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i: ; preds = %bb.h
  %i.de = icmp eq i64 %.sroa.22.0.copyload.i13.i, %.sroa.2.0.copyload.i16.i
  br i1 %i.de, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, %.split.i20.i
  %i.df = add nsw i64 %.01114.i10.i, 1            ; 2 uses
  %.not.i24.i = icmp slt i64 %i.df, %i.cg
  br i1 %.not.i24.i, label %.lr.ph.i9.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, !llvm.loop !926

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i: ; preds = %bb.i, %.lr.ph.i
  %i.dg = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.dg, 1      ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge.i, label %.lr.ph.i, !llvm.loop !927

bb.j:                                             ; preds = %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, %.split.i20.i, %.lr.ph.i9.i
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dj, align 8, !tbaa !90
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_5VisitERKNS_14BinaryViewTypeEEUlllE_EEvOT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_5VisitERKNS_14BinaryViewTypeEEUlllE_EEvOT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !930
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_15LargeBinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !939, !nonnull !37, !align !168 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !939 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !939
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !95
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i:  ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169, !noalias !939, !nonnull !37, !align !168 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170, !noalias !939 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i2.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !939 ; 3 uses
  %i.x = icmp ne ptr %.0.i.i, null
  %i.y = icmp ne ptr %i.w, null
  %i.z = select i1 %i.u, i1 %i.y, i1 false, !prof !95
  %or.cond.i = and i1 %i.x, %i.z
  br i1 %or.cond.i, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !171, !noalias !939
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !939
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !95
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ad
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !87, !noalias !939 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.am ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i3.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !171, !noalias !939
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !939
  %i.ax = select i1 %i.au, ptr %i.aw, ptr null, !prof !95
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ar
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i: ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i
  %.0.i.i4.i.i = phi ptr [ %i.ay, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !88, !noalias !939
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0.i.i4.i.i, i64 %i.ba ; 6 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i6.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !939 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond.not.i.i.i = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.h, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i: ; preds = %bb.f, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !89, !noalias !939 ; 3 uses
  %smax.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %exitcond.not.i.i.i.i19 = icmp slt i64 %i.bk, 1
  br i1 %exitcond.not.i.i.i.i19, label %._crit_edge, label %.lr.ph21

bb.g:                                             ; preds = %.lr.ph21
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bl, %smax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph21, !llvm.loop !933

.lr.ph21:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, %bb.g
  %.016.i.i.i.i20 = phi i64 [ %i.bl, %bb.g ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i ] ; 3 uses
  %i.bl = add nuw i64 %.016.i.i.i.i20, 1          ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !119, !noalias !939
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.016.i.i.i.i20
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !119, !noalias !939
  %i.bq = sub nsw i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !119, !noalias !939
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.016.i.i.i.i20
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !119, !noalias !939
  %i.bv = sub nsw i64 %i.bs, %i.bu
  %.not.i8.i.i.i = icmp eq i64 %i.bq, %i.bv
  br i1 %.not.i8.i.i.i, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !933

._crit_edge:                                      ; preds = %bb.g, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i
  %i.bw = load i64, ptr %i.an, align 8, !tbaa !119, !noalias !939 ; 2 uses
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !119, !noalias !939
  %i.by = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bk
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !119, !noalias !939
  %i.ca = sub nsw i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bw
  %i.cc = getelementptr inbounds i8, ptr %i.w, i64 %i.bx
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.cb, ptr nonnull readonly %i.cc, i64 %i.ca), !noalias !939
  %i.cd = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.ce = zext i1 %i.cd to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %.lr.ph21, %._crit_edge
  %.1.i.i.i.i = phi i8 [ %i.ce, %._crit_edge ], [ 0, %.lr.ph21 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i.i.i.i, ptr %i.cf, align 8, !tbaa !90, !noalias !939
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !939
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !171, !noalias !939
  %i.ci = add nsw i64 %i.ch, %i.am
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !89, !noalias !939
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.bh, i64 noundef %i.ci, i64 noundef %i.ck), !noalias !939
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %bb.h
  %i.cl = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !939 ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 1      ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = extractvalue { i64, i64 } %i.cl, 0      ; 5 uses
  %i.cp = add nsw i64 %i.cm, %i.co                ; 2 uses
  %smax.i9.i.i.i = call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cp)
  %exitcond.not.i11.i.i.i17.not = icmp sgt i64 %i.cm, 0
  br i1 %exitcond.not.i11.i.i.i17.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i

bb.k:                                             ; preds = %.lr.ph
  %exitcond.not.i11.i.i.i = icmp eq i64 %i.cq, %smax.i9.i.i.i
  br i1 %exitcond.not.i11.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, label %.lr.ph, !llvm.loop !933

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.016.i10.i.i.i18 = phi i64 [ %i.cq, %bb.k ], [ %i.co, %bb.j ] ; 3 uses
  %i.cq = add i64 %.016.i10.i.i.i18, 1            ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !119, !noalias !939
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.016.i10.i.i.i18
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !119, !noalias !939
  %i.cv = sub nsw i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cq
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !119, !noalias !939
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.016.i10.i.i.i18
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !119, !noalias !939
  %i.da = sub nsw i64 %i.cx, %i.cz
  %.not.i12.i.i.i = icmp eq i64 %i.cv, %i.da
  br i1 %.not.i12.i.i.i, label %bb.k, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !933

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i: ; preds = %bb.k, %bb.j
  %i.db = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.co
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !119, !noalias !939 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.co
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !119, !noalias !939
  %i.df = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cp
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !119, !noalias !939
  %i.dh = sub nsw i64 %i.dg, %i.dc
  %i.di = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.dc
  %i.dj = getelementptr inbounds i8, ptr %i.w, i64 %i.de
  %bcmp.i.i18.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.di, ptr nonnull readonly %i.dj, i64 %i.dh), !noalias !939
  %i.dk = icmp eq i32 %bcmp.i.i18.i.i.i, 0
  br i1 %i.dk, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !934

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dl, align 8, !tbaa !90, !noalias !939
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !939
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i5.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !171, !noalias !939
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !939
  %i.dv = select i1 %i.ds, ptr %i.du, ptr null, !prof !95
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dp
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i: ; preds = %bb.l, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %.0.i.i.i7.i = phi ptr [ %i.dw, %bb.l ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !87, !noalias !939 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0.i.i.i7.i, i64 %i.dy ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i4.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !171, !noalias !939
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !939
  %i.ej = select i1 %i.eg, ptr %i.ei, ptr null, !prof !95
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ed
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i: ; preds = %bb.m, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i
  %.0.i.i5.i.i = phi ptr [ %i.ek, %bb.m ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !88, !noalias !939
  %i.en = getelementptr inbounds [8 x i8], ptr %.0.i.i5.i.i, i64 %i.em ; 4 uses
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !939 ; 3 uses
  %.not.i.i7.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i7.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 9
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !144, !range !36, !noalias !939, !noundef !37
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !noalias !939 ; 2 uses
  %i.eu = icmp ne ptr %i.et, null
  %or.cond.not.i.i8.i = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %or.cond.not.i.i8.i, label %bb.p, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i: ; preds = %bb.n, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !89, !noalias !939 ; 3 uses
  %smax.i.i.i10.i = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 0)
  %exitcond.i.i.i.i28 = icmp slt i64 %i.ew, 1
  br i1 %exitcond.i.i.i.i28, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30

bb.o:                                             ; preds = %.lr.ph30
  %exitcond.i.i.i.i = icmp eq i64 %i.ex, %smax.i.i.i10.i
  br i1 %exitcond.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30, !llvm.loop !935

.lr.ph30:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, %bb.o
  %.016.i.i.i11.i29 = phi i64 [ %i.ex, %bb.o ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ] ; 4 uses
  %i.ex = add nuw i64 %.016.i.i.i11.i29, 1        ; 4 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !119, !noalias !939
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.016.i.i.i11.i29
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !119, !noalias !939
  %i.fc = sub nsw i64 %i.ez, %i.fb
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.ex
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !119, !noalias !939
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.016.i.i.i11.i29
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !119, !noalias !939
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %.not.i8.i.i12.i = icmp eq i64 %i.fc, %i.fh
  br i1 %.not.i8.i.i12.i, label %bb.o, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, !llvm.loop !935

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge: ; preds = %.lr.ph30
  %i.fi = icmp sge i64 %.016.i.i.i11.i29, %i.ew
  %i.fj = zext i1 %i.fi to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !935

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %bb.o, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i
  %.016.i.lcssa.i.i.i = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ], [ %i.fj, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge ], [ 1, %bb.o ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.016.i.lcssa.i.i.i, ptr %i.fk, align 8, !tbaa !90, !noalias !939
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !939
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !171, !noalias !939
  %i.fn = add nsw i64 %i.fm, %i.dy
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !89, !noalias !939
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.et, i64 noundef %i.fn, i64 noundef %i.fp), !noalias !939
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.p
  %i.fq = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !939 ; 2 uses
  %i.fr = extractvalue { i64, i64 } %i.fq, 1      ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.critedge.i.i16.i, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ft = extractvalue { i64, i64 } %i.fq, 0      ; 3 uses
  %i.fu = add nsw i64 %i.fr, %i.ft                ; 2 uses
  %smax.i9.i.i13.i = call i64 @llvm.smax.i64(i64 %i.ft, i64 %i.fu)
  %exitcond.i11.i.i.i22.not = icmp sgt i64 %i.fr, 0
  br i1 %exitcond.i11.i.i.i22.not, label %.lr.ph25, label %.critedge.backedge

bb.r:                                             ; preds = %.lr.ph25
  %exitcond.i11.i.i.i = icmp eq i64 %i.fv, %smax.i9.i.i13.i
  br i1 %exitcond.i11.i.i.i, label %.critedge.backedge, label %.lr.ph25, !llvm.loop !935

.lr.ph25:                                         ; preds = %bb.q, %bb.r
  %.016.i10.i.i14.i23 = phi i64 [ %i.fv, %bb.r ], [ %i.ft, %bb.q ] ; 4 uses
  %i.fv = add i64 %.016.i10.i.i14.i23, 1          ; 4 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !119, !noalias !939
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.016.i10.i.i14.i23
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !119, !noalias !939
  %i.ga = sub nsw i64 %i.fx, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fv
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !119, !noalias !939
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.016.i10.i.i14.i23
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !119, !noalias !939
  %i.gf = sub nsw i64 %i.gc, %i.ge
  %.not.i12.i.i15.i = icmp eq i64 %i.ga, %i.gf
  br i1 %.not.i12.i.i15.i, label %bb.r, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, !llvm.loop !935

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge: ; preds = %.lr.ph25
  %i.gg = icmp slt i64 %.016.i10.i.i14.i23, %i.fu
  br i1 %i.gg, label %bb.s, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.r, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, %bb.q
  br label %.critedge, !llvm.loop !936

bb.s:                                             ; preds = %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.gh, align 8, !tbaa !90, !noalias !939
  br label %.critedge.i.i16.i

.critedge.i.i16.i:                                ; preds = %.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !939
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i16.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !940
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_19FixedSizeBinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167, !nonnull !37, !align !168 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !144, !range !36, !noundef !37
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !95
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit:    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169, !nonnull !37, !align !168 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118  ; 3 uses
  %.not.i3 = icmp eq ptr %i.v, null
  br i1 %.not.i3, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5:   ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !144, !range !36, !noundef !37
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp ne ptr %.0.i, null
  %i.ac = icmp ne ptr %i.aa, null
  %i.ad = select i1 %i.y, i1 %i.ac, i1 false, !prof !95
  %or.cond = and i1 %i.ab, %i.ad
  br i1 %or.cond, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !118 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i: ; preds = %bb.d, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !171
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = sext i32 %i.d to i64                    ; 3 uses
  %i.at = mul nsw i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %.0.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171
  %i.az = add i64 %i.ay, %i.aw
  %i.ba = mul nsw i64 %i.az, %i.as
  %i.bb = getelementptr inbounds i8, ptr %i.aa, i64 %i.ba
  %i.bc = mul nsw i64 %i.am, %i.as
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.bb, i64 %i.bc)
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = zext i1 %i.bd to i8
  store i8 %i.bf, ptr %i.be, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !171
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !87
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.aj, i64 noundef %i.bk, i64 noundef %i.bm)
  %i.bn = sext i32 %i.d to i64                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4) ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 1      ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = extractvalue { i64, i64 } %i.bp, 0      ; 2 uses
  %i.bt = load i64, ptr %i.bi, align 8, !tbaa !87
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !167, !nonnull !37, !align !168
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !171
  %i.bx = add i64 %i.bt, %i.bs
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = mul nsw i64 %i.by, %i.bn
  %i.ca = getelementptr inbounds i8, ptr %.0.i, i64 %i.bz
  %i.cb = load i64, ptr %i.bo, align 8, !tbaa !88
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !169, !nonnull !37, !align !168
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !171
  %i.cf = add i64 %i.cb, %i.bs
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = mul nsw i64 %i.cg, %i.bn
  %i.ci = getelementptr inbounds i8, ptr %i.aa, i64 %i.ch
  %i.cj = mul nsw i64 %i.bq, %i.bn
  %bcmp.i8.i = call i32 @bcmp(ptr nonnull %i.ca, ptr nonnull %i.ci, i64 %i.cj)
  %i.ck = icmp eq i32 %bcmp.i8.i, 0
  br i1 %i.ck, label %bb.f, label %bb.h, !llvm.loop !941

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.cl, align 8, !tbaa !90
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !118 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i6, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i8, label %bb.i

bb.i:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !144, !range !36, !noundef !37
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp ne ptr %i.cr, null
  %or.cond.not.i7 = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %or.cond.not.i7, label %bb.j, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i8, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i8: ; preds = %bb.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.ct, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !171
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !87
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.cr, i64 noundef %i.cy, i64 noundef %i.da)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.db = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.dc = extractvalue { i64, i64 } %i.db, 1
  %.not.i9 = icmp eq i64 %i.dc, 0
  br i1 %.not.i9, label %.critedge.i10, label %bb.k, !llvm.loop !942

.critedge.i10:                                    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit: ; preds = %.critedge.i10, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i8, %.critedge.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !945
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_12DurationTypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !951, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !951 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !951 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !951
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !951, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !951
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !951, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !951
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !951 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !951
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !951, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !951
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !951 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !951, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !951 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !951
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !951
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !951
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !951
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !951
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_12DurationTypeElEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !951
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !951
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !951
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !951
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !951
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !951 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !951
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !951
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !951
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !948

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !951
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !951
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_12DurationTypeElEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_12DurationTypeElEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !952
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !958, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !958 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !958 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !958
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !958, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !958
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !958, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !958
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !958 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !958
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !958, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !958
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !958 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !958, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !958 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !958
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !958
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !958
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !958
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !958
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date32TypeEiEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !958
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !958
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !958
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !958
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !958
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !958 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !958
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !958
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 2
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !958
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !955

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !958
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !958
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date32TypeEiEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date32TypeEiEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !959
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !965, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !965 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !965 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !965
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !965, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !965
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !965, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !965
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !965 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !965
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !965, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !965
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !965 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !965, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !965 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !965
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !965
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !965
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !965
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !965
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date64TypeElEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !965
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !965
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !965
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !965
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !965
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !965 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !965
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !965
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !965
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !962

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !965
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !965
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date64TypeElEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Date64TypeElEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !966
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_13TimestampTypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !972, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !972 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !972 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !972
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !972, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !972
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !972, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !972
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !972 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !972
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !972, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !972
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !972 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !972, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !972 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !972
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !972
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !972
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !972
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !972
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_13TimestampTypeElEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !972
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !972
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !972
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !972
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !972
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !972 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !972
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !972
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !972
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !969

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !972
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !972
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_13TimestampTypeElEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_13TimestampTypeElEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !973
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !979, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !979 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !979 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !979
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !979, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !979
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !979, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !979
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !979 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !979
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !979, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !979
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !979 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !979, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !979 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !979
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !979
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !979
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !979
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !979
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time32TypeEiEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !979
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !979
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !979
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !979
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !979
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !979 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !979
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !979
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 2
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !979
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !976

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !979
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !979
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time32TypeEiEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time32TypeEiEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !980
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !986, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !986 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !986 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !986
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !986, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !986
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !986, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !986
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !986 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !986
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !986, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !986
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !986 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !986, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !986 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !986
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !986
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !986
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !986
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !986
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time64TypeElEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !986
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !986
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !986
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !986
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !986
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !986 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !986
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !986
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !986
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !983

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !986
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !986
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time64TypeElEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_10Time64TypeElEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !987
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_24MonthDayNanoIntervalTypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !993, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !993 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !993 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !993
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !993, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !993
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !993, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !993
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !993 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !993
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !993, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !993
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit3.i: ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !993 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !993, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !993 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesINS_24MonthDayNanoIntervalType13MonthDayNanosEEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !993
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !993
  %i.ap = getelementptr inbounds [16 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !993
  %i.as = getelementptr inbounds [16 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !993
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !993
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_24MonthDayNanoIntervalTypeENS3_13MonthDayNanosEEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !993
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !993
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !993
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !993
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !993
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !993 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !993
  %i.bk = getelementptr inbounds [16 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !993
  %i.bn = getelementptr inbounds [16 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 4
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !993
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !990

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !993
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !993
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_24MonthDayNanoIntervalTypeENS3_13MonthDayNanosEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_24MonthDayNanoIntervalTypeENS3_13MonthDayNanosEEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !994
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_17MonthIntervalTypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1000, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !1000 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !1000 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !1000
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !1000, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1000
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !1000, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !1000
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !1000 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !1000
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !1000, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1000
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !1000 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !1000, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1000 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !1000
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !1000
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !1000
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 2
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !1000
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !1000
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_17MonthIntervalTypeEiEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1000
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !1000
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !1000
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !1000
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !1000
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !1000 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !1000
  %i.bk = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !1000
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 2
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !1000
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !997

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !1000
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1000
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_17MonthIntervalTypeEiEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_17MonthIntervalTypeEiEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1001
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitINS_19DayTimeIntervalTypeEEENSt9enable_ifIXsr16is_temporal_typeIT_EE5valueENS_6StatusEE4typeERKS5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1007, !nonnull !37, !align !168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170, !noalias !1007 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !1007 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !171, !noalias !1007
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144, !range !36, !noalias !1007, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1007
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !95
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !169, !noalias !1007, !nonnull !37, !align !168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170, !noalias !1007
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118, !noalias !1007 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !171, !noalias !1007
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !144, !range !36, !noalias !1007, !noundef !37
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1007
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !95
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit3.i: ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !118, !noalias !1007 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit3.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !144, !range !36, !noalias !1007, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1007 ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesINS_19DayTimeIntervalType15DayMillisecondsEEEPKT_i.exit3.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !89, !noalias !1007
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87, !noalias !1007
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !88, !noalias !1007
  %i.as = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.ar
  %i.at = shl i64 %i.am, 3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.ap, ptr %i.as, i64 %i.at), !noalias !1007
  %i.au = icmp eq i32 %bcmp.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !90, !noalias !1007
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_19DayTimeIntervalTypeENS3_15DayMillisecondsEEENS_6StatusERKT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1007
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !171, !noalias !1007
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !1007
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !1007
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.aj, i64 noundef %i.bb, i64 noundef %i.bd), !noalias !1007
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bf = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !1007 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !87, !noalias !1007
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !88, !noalias !1007
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i2.i, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bi
  %i.bp = shl i64 %i.bg, 3
  %bcmp.i8.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.bp), !noalias !1007
  %i.bq = icmp eq i32 %bcmp.i8.i.i, 0
  br i1 %i.bq, label %bb.f, label %bb.h, !llvm.loop !1004

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.br, align 8, !tbaa !90, !noalias !1007
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1007
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_19DayTimeIntervalTypeENS3_15DayMillisecondsEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl16ComparePrimitiveINS_19DayTimeIntervalTypeENS3_15DayMillisecondsEEENS_6StatusERKT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1008
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_8ListTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1017, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !1017
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1017 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !1017, !nonnull !37, !align !168 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !noalias !1017
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !noalias !1017 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170, !noalias !1017 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1017 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !171, !noalias !1017
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144, !range !36, !noalias !1017, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1017
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !95
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87, !noalias !1017 ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.y ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170, !noalias !1017
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118, !noalias !1017 ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i3.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !171, !noalias !1017
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !144, !range !36, !noalias !1017, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1017
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !95
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  %.0.i.i4.i = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88, !noalias !1017
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i4.i, i64 %i.ao ; 6 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !118, !noalias !1017 ; 3 uses
  %.not.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i7, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !144, !range !36, !noalias !1017, !noundef !37
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1017 ; 2 uses
  %i.aw = icmp ne ptr %i.av, null
  %or.cond.not = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond.not, label %bb.f, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !89, !noalias !1017 ; 3 uses
  %smax27 = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 0)
  %exitcond28.not37 = icmp slt i64 %i.ay, 1
  br i1 %exitcond28.not37, label %._crit_edge, label %.lr.ph39

bb.e:                                             ; preds = %.lr.ph39
  %exitcond28.not = icmp eq i64 %i.az, %smax27
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph39, !llvm.loop !1011

.lr.ph39:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, %bb.e
  %.016.i238 = phi i64 [ %i.az, %bb.e ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread ] ; 3 uses
  %i.az = add nuw i64 %.016.i238, 1               ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !10, !noalias !1017
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.016.i238
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10, !noalias !1017
  %i.be = sub nsw i32 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.az
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10, !noalias !1017
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.016.i238
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10, !noalias !1017
  %i.bj = sub nsw i32 %i.bg, %i.bi
  %.not.i5 = icmp eq i32 %i.be, %i.bj
  br i1 %.not.i5, label %bb.e, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6, !llvm.loop !1011

._crit_edge:                                      ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread
  %i.bk = load i32, ptr %i.z, align 4, !tbaa !10, !noalias !1017 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !1017
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ay
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10, !noalias !1017
  %i.bq = sub nsw i32 %i.bp, %i.bk
  %i.br = sext i32 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1017
  %i.bs = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1017, !nonnull !37, !align !168
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !85, !range !36, !noalias !1017, !noundef !37
  store ptr %i.bs, ptr %2, align 8, !tbaa !83, !noalias !1017
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.bu, ptr %i.bv, align 8, !tbaa !85, !noalias !1017
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.bw, align 8, !tbaa !86, !noalias !1017
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.j, ptr %i.bx, align 8, !tbaa !86, !noalias !1017
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.bl, ptr %i.by, align 8, !tbaa !87, !noalias !1017
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bn, ptr %i.bz, align 8, !tbaa !88, !noalias !1017
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.br, ptr %i.ca, align 8, !tbaa !89, !noalias !1017
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.cb, align 8, !tbaa !90, !noalias !1017
  %i.cc = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %2), !noalias !1017, !inline_history !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1017
  %i.cd = zext i1 %i.cc to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6: ; preds = %.lr.ph39, %._crit_edge
  %.1.i4 = phi i8 [ %i.cd, %._crit_edge ], [ 0, %.lr.ph39 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i4, ptr %i.ce, align 8, !tbaa !90, !noalias !1017
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1017
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !171, !noalias !1017
  %i.ch = add nsw i64 %i.cg, %i.y
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !89, !noalias !1017
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.av, i64 noundef %i.ch, i64 noundef %i.cj), !noalias !1017, !inline_history !1013
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, %bb.f
  %i.cs = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1017, !inline_history !1013 ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 1      ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = extractvalue { i64, i64 } %i.cs, 0      ; 5 uses
  %i.cw = add nsw i64 %i.cv, %i.ct                ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.cv, i64 %i.cw)
  %exitcond.not35.not = icmp sgt i64 %i.ct, 0
  br i1 %exitcond.not35.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit

bb.i:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.cx, %smax
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, label %.lr.ph, !llvm.loop !1011

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.016.i36 = phi i64 [ %i.cx, %bb.i ], [ %i.cv, %bb.h ] ; 3 uses
  %i.cx = add i64 %.016.i36, 1                    ; 4 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !10, !noalias !1017
  %i.da = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.016.i36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !10, !noalias !1017
  %i.dc = sub nsw i32 %i.cz, %i.db
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cx
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !10, !noalias !1017
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.016.i36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !10, !noalias !1017
  %i.dh = sub nsw i32 %i.de, %i.dg
  %.not.i = icmp eq i32 %i.dc, %i.dh
  br i1 %.not.i, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread, !llvm.loop !1011

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit: ; preds = %bb.i, %bb.h
  %i.di = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cv
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !10, !noalias !1017 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !10, !noalias !1017
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.cw
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10, !noalias !1017
  %i.dq = sub nsw i32 %i.dp, %i.dj
  %i.dr = sext i32 %i.dq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1017
  %i.ds = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1017, !nonnull !37, !align !168
  %i.dt = load i8, ptr %i.ck, align 8, !tbaa !85, !range !36, !noalias !1017, !noundef !37
  store ptr %i.ds, ptr %3, align 8, !tbaa !83, !noalias !1017
  store i8 %i.dt, ptr %i.cl, align 8, !tbaa !85, !noalias !1017
  store ptr %i.e, ptr %i.cm, align 8, !tbaa !86, !noalias !1017
  store ptr %i.j, ptr %i.cn, align 8, !tbaa !86, !noalias !1017
  store i64 %i.dk, ptr %i.co, align 8, !tbaa !87, !noalias !1017
  store i64 %i.dn, ptr %i.cp, align 8, !tbaa !88, !noalias !1017
  store i64 %i.dr, ptr %i.cq, align 8, !tbaa !89, !noalias !1017
  store i8 0, ptr %i.cr, align 8, !tbaa !90, !noalias !1017
  %i.du = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1017, !inline_history !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1017
  br i1 %i.du, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread, !llvm.loop !1014

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dv, align 8, !tbaa !90, !noalias !1017
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1017
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_11CompareListINS_8ListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1018
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_13LargeListTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1027, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !1027
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1027 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !1027, !nonnull !37, !align !168 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !noalias !1027
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !noalias !1027 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170, !noalias !1027 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1027 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !171, !noalias !1027
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144, !range !36, !noalias !1027, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1027
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !95
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87, !noalias !1027 ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.y ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170, !noalias !1027
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118, !noalias !1027 ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i3.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !171, !noalias !1027
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !144, !range !36, !noalias !1027, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1027
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !95
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  %.0.i.i4.i = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88, !noalias !1027
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i4.i, i64 %i.ao ; 6 uses
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !118, !noalias !1027 ; 3 uses
  %.not.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i7, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !144, !range !36, !noalias !1027, !noundef !37
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1027 ; 2 uses
  %i.aw = icmp ne ptr %i.av, null
  %or.cond.not = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond.not, label %bb.f, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !89, !noalias !1027 ; 3 uses
  %smax27 = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 0)
  %exitcond28.not37 = icmp slt i64 %i.ay, 1
  br i1 %exitcond28.not37, label %._crit_edge, label %.lr.ph39

bb.e:                                             ; preds = %.lr.ph39
  %exitcond28.not = icmp eq i64 %i.az, %smax27
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph39, !llvm.loop !1021

.lr.ph39:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, %bb.e
  %.016.i238 = phi i64 [ %i.az, %bb.e ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread ] ; 3 uses
  %i.az = add nuw i64 %.016.i238, 1               ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !119, !noalias !1027
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.016.i238
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !119, !noalias !1027
  %i.be = sub nsw i64 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.az
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !119, !noalias !1027
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.016.i238
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !119, !noalias !1027
  %i.bj = sub nsw i64 %i.bg, %i.bi
  %.not.i5 = icmp eq i64 %i.be, %i.bj
  br i1 %.not.i5, label %bb.e, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6, !llvm.loop !1021

._crit_edge:                                      ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !119, !noalias !1027 ; 2 uses
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !119, !noalias !1027
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ay
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !119, !noalias !1027
  %i.bo = sub nsw i64 %i.bn, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1027
  %i.bp = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1027, !nonnull !37, !align !168
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !85, !range !36, !noalias !1027, !noundef !37
  store ptr %i.bp, ptr %2, align 8, !tbaa !83, !noalias !1027
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !85, !noalias !1027
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.bt, align 8, !tbaa !86, !noalias !1027
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.j, ptr %i.bu, align 8, !tbaa !86, !noalias !1027
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.bk, ptr %i.bv, align 8, !tbaa !87, !noalias !1027
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bl, ptr %i.bw, align 8, !tbaa !88, !noalias !1027
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bo, ptr %i.bx, align 8, !tbaa !89, !noalias !1027
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.by, align 8, !tbaa !90, !noalias !1027
  %i.bz = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %2), !noalias !1027, !inline_history !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1027
  %i.ca = zext i1 %i.bz to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6: ; preds = %.lr.ph39, %._crit_edge
  %.1.i4 = phi i8 [ %i.ca, %._crit_edge ], [ 0, %.lr.ph39 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i4, ptr %i.cb, align 8, !tbaa !90, !noalias !1027
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1027
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !171, !noalias !1027
  %i.ce = add nsw i64 %i.cd, %i.y
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !89, !noalias !1027
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.av, i64 noundef %i.ce, i64 noundef %i.cg), !noalias !1027, !inline_history !1023
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, %bb.f
  %i.cp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1027, !inline_history !1023 ; 2 uses
  %i.cq = extractvalue { i64, i64 } %i.cp, 1      ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = extractvalue { i64, i64 } %i.cp, 0      ; 5 uses
  %i.ct = add nsw i64 %i.cs, %i.cq                ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.cs, i64 %i.ct)
  %exitcond.not35.not = icmp sgt i64 %i.cq, 0
  br i1 %exitcond.not35.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit

bb.i:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.cu, %smax
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, label %.lr.ph, !llvm.loop !1021

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.016.i36 = phi i64 [ %i.cu, %bb.i ], [ %i.cs, %bb.h ] ; 3 uses
  %i.cu = add i64 %.016.i36, 1                    ; 4 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !119, !noalias !1027
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.016.i36
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !119, !noalias !1027
  %i.cz = sub nsw i64 %i.cw, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cu
  %i.db = load i64, ptr %i.da, align 8, !tbaa !119, !noalias !1027
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.016.i36
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !119, !noalias !1027
  %i.de = sub nsw i64 %i.db, %i.dd
  %.not.i = icmp eq i64 %i.cz, %i.de
  br i1 %.not.i, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread, !llvm.loop !1021

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit: ; preds = %bb.i, %bb.h
  %i.df = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cs
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !119, !noalias !1027 ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cs
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !119, !noalias !1027
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ct
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !119, !noalias !1027
  %i.dl = sub nsw i64 %i.dk, %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1027
  %i.dm = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1027, !nonnull !37, !align !168
  %i.dn = load i8, ptr %i.ch, align 8, !tbaa !85, !range !36, !noalias !1027, !noundef !37
  store ptr %i.dm, ptr %3, align 8, !tbaa !83, !noalias !1027
  store i8 %i.dn, ptr %i.ci, align 8, !tbaa !85, !noalias !1027
  store ptr %i.e, ptr %i.cj, align 8, !tbaa !86, !noalias !1027
  store ptr %i.j, ptr %i.ck, align 8, !tbaa !86, !noalias !1027
  store i64 %i.dg, ptr %i.cl, align 8, !tbaa !87, !noalias !1027
  store i64 %i.di, ptr %i.cm, align 8, !tbaa !88, !noalias !1027
  store i64 %i.dl, ptr %i.cn, align 8, !tbaa !89, !noalias !1027
  store i8 0, ptr %i.co, align 8, !tbaa !90, !noalias !1027
  %i.do = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1027, !inline_history !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1027
  br i1 %i.do, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread, !llvm.loop !1024

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit, %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dp, align 8, !tbaa !90, !noalias !1027
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1027
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_11CompareListINS_13LargeListTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit6, %.critedge.i.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1028
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_12ListViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 12 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1038, !nonnull !37, !align !168 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !1038
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1038 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !1038, !nonnull !37, !align !168 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !noalias !1038
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !noalias !1038 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170, !noalias !1038 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1038 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i10, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !171, !noalias !1038
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144, !range !36, !noalias !1038, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1038
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !95
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12:   ; preds = %bb.a, %bb.b
  %.0.i.i11 = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87, !noalias !1038 ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.0.i.i11, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170, !noalias !1038 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118, !noalias !1038 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !171, !noalias !1038
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !144, !range !36, !noalias !1038, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1038
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !95
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12, %bb.c
  %.0.i.i8 = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88, !noalias !1038 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i8, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118, !noalias !1038 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !171, !noalias !1038
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !144, !range !36, !noalias !1038, !noundef !37
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1038
  %i.az = select i1 %i.aw, ptr %i.ay, ptr null, !prof !95
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.at
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9, %bb.d
  %.0.i.i5 = phi ptr [ %i.ba, %bb.d ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9 ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %.0.i.i5, i64 %i.y ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !118, !noalias !1038 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i2, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !171, !noalias !1038
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !144, !range !36, !noalias !1038, !noundef !37
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1038
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !95
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bf
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6, %bb.e
  %.0.i.i3 = phi ptr [ %i.bm, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6 ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i3, i64 %i.ao ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !118, !noalias !1038 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !144, !range !36, !noalias !1038, !noundef !37
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1038 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, null
  %or.cond.not = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond.not, label %bb.j, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !89, !noalias !1038 ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph28, %select.unfold16
  %.015.i.i27 = phi i64 [ 0, %.lr.ph28 ], [ %i.cv, %select.unfold16 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.015.i.i27
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10, !noalias !1038 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.015.i.i27
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10, !noalias !1038
  %.not.i8.i = icmp eq i32 %i.ch, %i.cj
  br i1 %.not.i8.i, label %bb.h, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp eq i32 %i.ch, 0
  br i1 %i.ck, label %select.unfold16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1038
  %i.cl = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1038, !nonnull !37, !align !168
  %i.cm = load i8, ptr %i.by, align 8, !tbaa !85, !range !36, !noalias !1038, !noundef !37
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.015.i.i27
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10, !noalias !1038
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.015.i.i27
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10, !noalias !1038
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.ch to i64
  store ptr %i.cl, ptr %3, align 8, !tbaa !83, !noalias !1038
  store i8 %i.cm, ptr %i.bz, align 8, !tbaa !85, !noalias !1038
  store ptr %i.e, ptr %i.ca, align 8, !tbaa !86, !noalias !1038
  store ptr %i.j, ptr %i.cb, align 8, !tbaa !86, !noalias !1038
  store i64 %i.cp, ptr %i.cc, align 8, !tbaa !87, !noalias !1038
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !88, !noalias !1038
  store i64 %i.ct, ptr %i.ce, align 8, !tbaa !89, !noalias !1038
  store i8 0, ptr %i.cf, align 8, !tbaa !90, !noalias !1038
  %i.cu = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1038, !inline_history !1031
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1038
  br i1 %i.cu, label %select.unfold16, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

select.unfold16:                                  ; preds = %bb.i, %bb.h
  %i.cv = add nuw nsw i64 %.015.i.i27, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.bw
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %bb.g, !llvm.loop !1032

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i: ; preds = %select.unfold16, %bb.g, %bb.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %.lcssa = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %select.unfold16 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa, ptr %i.cw, align 8, !tbaa !90, !noalias !1038
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1038
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !171, !noalias !1038
  %i.cz = add nsw i64 %i.cy, %i.y
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !89, !noalias !1038
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.bt, i64 noundef %i.cz, i64 noundef %i.db), !noalias !1038, !inline_history !1033
  %i.dc = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1038, !inline_history !1033 ; 2 uses
  %i.dd = extractvalue { i64, i64 } %i.dc, 1      ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.critedge.i, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dp = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.dq = insertelement <2 x ptr> %i.dp, ptr %i.j, i64 1
  br label %bb.k

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit: ; preds = %.thread19, %bb.k
  %i.dr = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1038, !inline_history !1033 ; 2 uses
  %i.ds = extractvalue { i64, i64 } %i.dr, 1      ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.critedge.i, label %bb.k, !llvm.loop !1034

bb.k:                                             ; preds = %.lr.ph26, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit
  %i.du = phi i64 [ %i.dd, %.lr.ph26 ], [ %i.ds, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ] ; 2 uses
  %i.dv = phi { i64, i64 } [ %i.dc, %.lr.ph26 ], [ %i.dr, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ]
  %i.dw = extractvalue { i64, i64 } %i.dv, 0      ; 2 uses
  %i.dx = add nsw i64 %i.dw, %i.du
  %i.dy = icmp sgt i64 %i.du, 0
  br i1 %i.dy, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit

.lr.ph:                                           ; preds = %bb.k, %.thread19
  %.015.i9.i25 = phi i64 [ %i.fp, %.thread19 ], [ %i.dw, %bb.k ] ; 5 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.015.i9.i25
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10, !noalias !1038 ; 3 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.015.i9.i25
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10, !noalias !1038
  %.not.i11.i = icmp eq i32 %i.ea, %i.ec
  br i1 %.not.i11.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.ed = icmp eq i32 %i.ea, 0
  br i1 %i.ed, label %.thread19, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1038
  %i.ee = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1038, !nonnull !37, !align !168
  %i.ef = load i8, ptr %i.df, align 8, !tbaa !85, !range !36, !noalias !1038, !noundef !37
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.015.i9.i25
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !10, !noalias !1038 ; 2 uses
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.015.i9.i25
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !10, !noalias !1038 ; 2 uses
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = sext i32 %i.ea to i64                   ; 6 uses
  store ptr %i.ee, ptr %2, align 8, !tbaa !83, !noalias !1038
  store i8 %i.ef, ptr %i.dg, align 8, !tbaa !85, !noalias !1038
  store <2 x ptr> %i.dq, ptr %i.dh, align 8, !tbaa !86, !noalias !1038
  store i64 %i.ei, ptr %i.dj, align 8, !tbaa !87, !noalias !1038
  store i64 %i.el, ptr %i.dk, align 8, !tbaa !88, !noalias !1038
  store i64 %i.em, ptr %i.dl, align 8, !tbaa !89, !noalias !1038
  store i8 0, ptr %i.dm, align 8, !tbaa !90, !noalias !1038
  %i.en = icmp eq i32 %i.eh, 0
  %i.eo = icmp eq i32 %i.ek, 0
  %or.cond.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ep = load i64, ptr %i.dn, align 8, !tbaa !80, !noalias !1038
  %i.eq = icmp eq i64 %i.ep, %i.em
  br i1 %i.eq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.er = load i64, ptr %i.do, align 8, !tbaa !80, !noalias !1038
  %i.es = icmp eq i64 %i.er, %i.em
  br i1 %i.es, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.et = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e), !noalias !1038, !inline_history !1035
  %i.eu = load ptr, ptr %i.di, align 8, !tbaa !169, !noalias !1038, !nonnull !37, !align !168
  %i.ev = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.eu), !noalias !1038, !inline_history !1035
  %.not.i = icmp eq i64 %i.et, %i.ev
  br i1 %.not.i, label %._crit_edge, label %.thread22

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.dh, align 8, !tbaa !167, !noalias !1038
  %.pre33 = load i64, ptr %i.dj, align 8, !tbaa !87, !noalias !1038
  %.pre34 = load ptr, ptr %i.di, align 8, !tbaa !169, !noalias !1038
  %.pre35 = load i64, ptr %i.dk, align 8, !tbaa !88, !noalias !1038
  %.pre36 = load i64, ptr %i.dl, align 8, !tbaa !89, !noalias !1038
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.n, %bb.m
  %i.ew = phi i64 [ %.pre36, %._crit_edge ], [ %i.em, %bb.o ], [ %i.em, %bb.n ], [ %i.em, %bb.m ]
  %i.ex = phi i64 [ %.pre35, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.el, %bb.m ]
  %i.ey = phi ptr [ %.pre34, %._crit_edge ], [ %i.j, %bb.o ], [ %i.j, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %i.ez = phi i64 [ %.pre33, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.ei, %bb.m ]
  %i.fa = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.o ], [ %i.e, %bb.n ], [ %i.e, %bb.m ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !170, !noalias !1038
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !171, !noalias !1038
  %i.ff = add nsw i64 %i.ez, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170, !noalias !1038
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !171, !noalias !1038
  %i.fk = add nsw i64 %i.ex, %i.fj
  %i.fl = call noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 noundef %i.fk, i64 noundef %i.ew), !noalias !1038, !inline_history !1035
  br i1 %i.fl, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, label %.thread22

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit: ; preds = %bb.q
  %i.fm = load ptr, ptr %i.dh, align 8, !tbaa !167, !noalias !1038, !nonnull !37, !align !168
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !45, !noalias !1038
  %i.fo = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareWithTypeERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.fn), !noalias !1038, !inline_history !1035
  br i1 %i.fo, label %bb.r, label %.thread22

.thread22:                                        ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1038
  br label %.loopexit

bb.r:                                             ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1038
  br label %.thread19

.thread19:                                        ; preds = %bb.l, %bb.r
  %i.fp = add nsw i64 %.015.i9.i25, 1             ; 2 uses
  %i.fq = icmp slt i64 %i.fp, %i.dx
  br i1 %i.fq, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, !llvm.loop !1032

.loopexit:                                        ; preds = %.lr.ph, %.thread22
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.fr, align 8, !tbaa !90, !noalias !1038
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1038
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1039
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_17LargeListViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 12 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !noalias !1049, !nonnull !37, !align !168 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !1049
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !noalias !1049 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !1049, !nonnull !37, !align !168 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185, !noalias !1049
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42, !noalias !1049 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170, !noalias !1049 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1049 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i10, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !171, !noalias !1049
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144, !range !36, !noalias !1049, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1049
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !95
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12:   ; preds = %bb.a, %bb.b
  %.0.i.i11 = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87, !noalias !1049 ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0.i.i11, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170, !noalias !1049 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118, !noalias !1049 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !171, !noalias !1049
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !144, !range !36, !noalias !1049, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1049
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !95
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12, %bb.c
  %.0.i.i8 = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88, !noalias !1049 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i8, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118, !noalias !1049 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !171, !noalias !1049
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !144, !range !36, !noalias !1049, !noundef !37
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1049
  %i.az = select i1 %i.aw, ptr %i.ay, ptr null, !prof !95
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.at
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9, %bb.d
  %.0.i.i5 = phi ptr [ %i.ba, %bb.d ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0.i.i5, i64 %i.y ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !118, !noalias !1049 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i2, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !171, !noalias !1049
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !144, !range !36, !noalias !1049, !noundef !37
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1049
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !95
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bf
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit:     ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6, %bb.e
  %.0.i.i3 = phi ptr [ %i.bm, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6 ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i3, i64 %i.ao ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !118, !noalias !1049 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !144, !range !36, !noalias !1049, !noundef !37
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1049 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, null
  %or.cond.not = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond.not, label %bb.j, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !89, !noalias !1049 ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph28, %select.unfold16
  %.015.i.i27 = phi i64 [ 0, %.lr.ph28 ], [ %i.cs, %select.unfold16 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.015.i.i27
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !119, !noalias !1049 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.015.i.i27
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !119, !noalias !1049
  %.not.i8.i = icmp eq i64 %i.ch, %i.cj
  br i1 %.not.i8.i, label %bb.h, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp eq i64 %i.ch, 0
  br i1 %i.ck, label %select.unfold16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1049
  %i.cl = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1049, !nonnull !37, !align !168
  %i.cm = load i8, ptr %i.by, align 8, !tbaa !85, !range !36, !noalias !1049, !noundef !37
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.015.i.i27
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !119, !noalias !1049
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.015.i.i27
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !119, !noalias !1049
  store ptr %i.cl, ptr %3, align 8, !tbaa !83, !noalias !1049
  store i8 %i.cm, ptr %i.bz, align 8, !tbaa !85, !noalias !1049
  store ptr %i.e, ptr %i.ca, align 8, !tbaa !86, !noalias !1049
  store ptr %i.j, ptr %i.cb, align 8, !tbaa !86, !noalias !1049
  store i64 %i.co, ptr %i.cc, align 8, !tbaa !87, !noalias !1049
  store i64 %i.cq, ptr %i.cd, align 8, !tbaa !88, !noalias !1049
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !89, !noalias !1049
  store i8 0, ptr %i.cf, align 8, !tbaa !90, !noalias !1049
  %i.cr = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1049, !inline_history !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1049
  br i1 %i.cr, label %select.unfold16, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

select.unfold16:                                  ; preds = %bb.i, %bb.h
  %i.cs = add nuw nsw i64 %.015.i.i27, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bw
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %bb.g, !llvm.loop !1043

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i: ; preds = %select.unfold16, %bb.g, %bb.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %.lcssa = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %select.unfold16 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa, ptr %i.ct, align 8, !tbaa !90, !noalias !1049
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1049
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !171, !noalias !1049
  %i.cw = add nsw i64 %i.cv, %i.y
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !89, !noalias !1049
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.bt, i64 noundef %i.cw, i64 noundef %i.cy), !noalias !1049, !inline_history !1044
  %i.cz = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1049, !inline_history !1044 ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cz, 1      ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.critedge.i, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dm = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.dn = insertelement <2 x ptr> %i.dm, ptr %i.j, i64 1
  br label %bb.k

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit: ; preds = %.thread19, %bb.k
  %i.do = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1049, !inline_history !1044 ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 1      ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.critedge.i, label %bb.k, !llvm.loop !1045

bb.k:                                             ; preds = %.lr.ph26, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit
  %i.dr = phi i64 [ %i.da, %.lr.ph26 ], [ %i.dp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ] ; 2 uses
  %i.ds = phi { i64, i64 } [ %i.cz, %.lr.ph26 ], [ %i.do, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ]
  %i.dt = extractvalue { i64, i64 } %i.ds, 0      ; 2 uses
  %i.du = add nsw i64 %i.dt, %i.dr
  %i.dv = icmp sgt i64 %i.dr, 0
  br i1 %i.dv, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit

.lr.ph:                                           ; preds = %bb.k, %.thread19
  %.015.i9.i25 = phi i64 [ %i.fj, %.thread19 ], [ %i.dt, %bb.k ] ; 5 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.015.i9.i25
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !119, !noalias !1049 ; 8 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.015.i9.i25
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !119, !noalias !1049
  %.not.i11.i = icmp eq i64 %i.dx, %i.dz
  br i1 %.not.i11.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %.thread19, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1049
  %i.eb = load ptr, ptr %1, align 8, !tbaa !180, !noalias !1049, !nonnull !37, !align !168
  %i.ec = load i8, ptr %i.dc, align 8, !tbaa !85, !range !36, !noalias !1049, !noundef !37
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.015.i9.i25
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !119, !noalias !1049 ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.015.i9.i25
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !119, !noalias !1049 ; 3 uses
  store ptr %i.eb, ptr %2, align 8, !tbaa !83, !noalias !1049
  store i8 %i.ec, ptr %i.dd, align 8, !tbaa !85, !noalias !1049
  store <2 x ptr> %i.dn, ptr %i.de, align 8, !tbaa !86, !noalias !1049
  store i64 %i.ee, ptr %i.dg, align 8, !tbaa !87, !noalias !1049
  store i64 %i.eg, ptr %i.dh, align 8, !tbaa !88, !noalias !1049
  store i64 %i.dx, ptr %i.di, align 8, !tbaa !89, !noalias !1049
  store i8 0, ptr %i.dj, align 8, !tbaa !90, !noalias !1049
  %i.eh = icmp eq i64 %i.ee, 0
  %i.ei = icmp eq i64 %i.eg, 0
  %or.cond.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ej = load i64, ptr %i.dk, align 8, !tbaa !80, !noalias !1049
  %i.ek = icmp eq i64 %i.dx, %i.ej
  br i1 %i.ek, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.el = load i64, ptr %i.dl, align 8, !tbaa !80, !noalias !1049
  %i.em = icmp eq i64 %i.dx, %i.el
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.en = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e), !noalias !1049, !inline_history !1046
  %i.eo = load ptr, ptr %i.df, align 8, !tbaa !169, !noalias !1049, !nonnull !37, !align !168
  %i.ep = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.eo), !noalias !1049, !inline_history !1046
  %.not.i = icmp eq i64 %i.en, %i.ep
  br i1 %.not.i, label %._crit_edge, label %.thread22

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !167, !noalias !1049
  %.pre33 = load i64, ptr %i.dg, align 8, !tbaa !87, !noalias !1049
  %.pre34 = load ptr, ptr %i.df, align 8, !tbaa !169, !noalias !1049
  %.pre35 = load i64, ptr %i.dh, align 8, !tbaa !88, !noalias !1049
  %.pre36 = load i64, ptr %i.di, align 8, !tbaa !89, !noalias !1049
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.n, %bb.m
  %i.eq = phi i64 [ %.pre36, %._crit_edge ], [ %i.dx, %bb.o ], [ %i.dx, %bb.n ], [ %i.dx, %bb.m ]
  %i.er = phi i64 [ %.pre35, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.eg, %bb.m ]
  %i.es = phi ptr [ %.pre34, %._crit_edge ], [ %i.j, %bb.o ], [ %i.j, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %i.et = phi i64 [ %.pre33, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.ee, %bb.m ]
  %i.eu = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.o ], [ %i.e, %bb.n ], [ %i.e, %bb.m ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !170, !noalias !1049
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !171, !noalias !1049
  %i.ez = add nsw i64 %i.et, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !170, !noalias !1049
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !171, !noalias !1049
  %i.fe = add nsw i64 %i.er, %i.fd
  %i.ff = call noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i64 noundef %i.fe, i64 noundef %i.eq), !noalias !1049, !inline_history !1046
  br i1 %i.ff, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, label %.thread22

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit: ; preds = %bb.q
  %i.fg = load ptr, ptr %i.de, align 8, !tbaa !167, !noalias !1049, !nonnull !37, !align !168
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !45, !noalias !1049
  %i.fi = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareWithTypeERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.fh), !noalias !1049, !inline_history !1046
  br i1 %i.fi, label %bb.r, label %.thread22

.thread22:                                        ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1049
  br label %.loopexit

bb.r:                                             ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1049
  br label %.thread19

.thread19:                                        ; preds = %bb.l, %bb.r
  %i.fj = add nsw i64 %.015.i9.i25, 1             ; 2 uses
  %i.fk = icmp slt i64 %i.fj, %i.du
  br i1 %i.fk, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, !llvm.loop !1043

.loopexit:                                        ; preds = %.lr.ph, %.thread22
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.fl, align 8, !tbaa !90, !noalias !1049
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1049
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1050
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_17FixedSizeListTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, i32 %.72.val) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !37, !align !168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169, !nonnull !37, !align !168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !185
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !144, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond.not = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond.not, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.v = load ptr, ptr %1, align 8, !tbaa !180, !nonnull !37, !align !168
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !85, !range !36, !noundef !37
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !171
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = sext i32 %.72.val to i64                ; 3 uses
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !171
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = mul nsw i64 %i.aj, %i.ad
  %i.al = mul nsw i64 %i.u, %i.ad
  store ptr %i.v, ptr %2, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.x, ptr %i.am, align 8, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.an, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.j, ptr %i.ao, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ae, ptr %i.ap, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.ak, ptr %i.aq, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.al, ptr %i.ar, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.as, align 8, !tbaa !90
  %i.at = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %2), !inline_history !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_17FixedSizeListTypeEEUlllE_EEvOT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !171
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !87
  %i.ba = add nsw i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.r, i64 noundef %i.ba, i64 noundef %i.bc), !inline_history !1052
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = sext i32 %.72.val to i64                ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.bn = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !inline_history !1052 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 1      ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = extractvalue { i64, i64 } %i.bn, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.br = load ptr, ptr %1, align 8, !tbaa !180, !nonnull !37, !align !168
  %i.bs = load i8, ptr %i.bd, align 8, !tbaa !85, !range !36, !noundef !37
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !87
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !37, !align !168
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !171
  %i.bx = add i64 %i.bt, %i.bq
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = mul nsw i64 %i.by, %i.be
  %i.ca = load i64, ptr %i.bf, align 8, !tbaa !88
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !169, !nonnull !37, !align !168
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !171
  %i.ce = add i64 %i.ca, %i.bq
  %i.cf = add i64 %i.ce, %i.cd
  %i.cg = mul nsw i64 %i.cf, %i.be
  %i.ch = mul nsw i64 %i.bo, %i.be
  store ptr %i.br, ptr %3, align 8, !tbaa !83
  store i8 %i.bs, ptr %i.bg, align 8, !tbaa !85
  store ptr %i.e, ptr %i.bh, align 8, !tbaa !86
  store ptr %i.j, ptr %i.bi, align 8, !tbaa !86
  store i64 %i.bz, ptr %i.bj, align 8, !tbaa !87
  store i64 %i.cg, ptr %i.bk, align 8, !tbaa !88
  store i64 %i.ch, ptr %i.bl, align 8, !tbaa !89
  store i8 0, ptr %i.bm, align 8, !tbaa !90
  %i.ci = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !inline_history !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %i.ci, label %bb.d, label %bb.f, !llvm.loop !1053

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.cj, align 8, !tbaa !90
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_17FixedSizeListTypeEEUlllE_EEvOT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_17FixedSizeListTypeEEUlllE_EEvOT_.exit: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !94, !alias.scope !1056
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 10 uses
  %4 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 12 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 4                         ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !167, !nonnull !37, !align !168 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !144, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne ptr %i.s, null
  %or.cond.not = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond.not, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, !prof !179

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !89
  %i.w = icmp slt i32 %i.i, 1
  br i1 %i.w, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit4, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.trip.count24 = and i64 %i.h, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit4, label %bb.d, !llvm.loop !1057

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv21 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next22, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ag = load ptr, ptr %1, align 8, !tbaa !180, !nonnull !37, !align !168
  %i.ah = load i8, ptr %i.x, align 8, !tbaa !85, !range !36, !noundef !37
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !167, !nonnull !37, !align !168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !185
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv21
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !169, !nonnull !37, !align !168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !185
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv21
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !171
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !171
  store ptr %i.ag, ptr %3, align 8, !tbaa !83
  store i8 %i.ah, ptr %i.aa, align 8, !tbaa !85
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !86
  store ptr %i.ar, ptr %i.ac, align 8, !tbaa !86
  %i.aw = load <2 x i64>, ptr %i.z, align 8, !tbaa !119
  %i.ax = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.ay = insertelement <2 x i64> %i.ax, i64 %i.av, i64 1
  %i.az = add nsw <2 x i64> %i.ay, %i.aw
  store <2 x i64> %i.az, ptr %i.ad, align 8, !tbaa !119
  store i64 %i.v, ptr %i.ae, align 8, !tbaa !89
  store i8 0, ptr %i.af, align 8, !tbaa !90
  %i.ba = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !inline_history !1058
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %i.ba, label %bb.c, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit4

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit4: ; preds = %bb.d, %bb.c, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread
  %.lcssa = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread ], [ 1, %bb.c ], [ 0, %bb.d ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa, ptr %i.bb, align 8, !tbaa !90
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_10StructTypeEEUlllE_EEvOT_.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !87
  %i.bg = add nsw i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !89
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %i.s, i64 noundef %i.bg, i64 noundef %i.bi), !inline_history !1059
  %i.bj = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %5), !inline_history !1059 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 1      ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.critedge.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e
  %i.bm = icmp sgt i32 %i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 56
  br i1 %i.bm, label %.lr.ph.us.preheader, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit.loopexit

.lr.ph.us.preheader:                              ; preds = %.lr.ph15
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit.loopexit_crit_edge.us
  %i.bx = phi i64 [ %i.eb, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit.loopexit_crit_edge.us ], [ %i.bk, %.lr.ph.us.preheader ] ; 6 uses
  %i.by = phi { i64, i64 } [ %i.ea, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit.loopexit_crit_edge.us ], [ %i.bj, %.lr.ph.us.preheader ]
  %i.bz = extractvalue { i64, i64 } %i.by, 0      ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10StructTypeEENKUlllE_clEll.exit.loopexit_crit_edge.us, label %bb.g, !llvm.loop !1057

bb.g:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ca = load ptr, ptr %1, align 8, !tbaa !180, !nonnull !37, !align !168
  %i.cb = load i8, ptr %i.bn, align 8, !tbaa !85, !range !36, !noundef !37
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !167, !nonnull !37, !align !168 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !185
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 6 uses
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !169, !nonnull !37, !align !168 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !185
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 5 uses
  %i.cm = load i64, ptr %i.be, align 8, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !171
  %i.cp = add i64 %i.cm, %i.bz
  %i.cq = add i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = load i64, ptr %i.bp, align 8, !tbaa !88
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !171
  %i.cu = add i64 %i.cr, %i.bz
  %i.cv = add i64 %i.cu, %i.ct                    ; 3 uses
  store ptr %i.ca, ptr %4, align 8, !tbaa !83
  store i8 %i.cb, ptr %i.bq, align 8, !tbaa !85
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !86
  store ptr %i.cl, ptr %i.bs, align 8, !tbaa !86
  store i64 %i.cq, ptr %i.bt, align 8, !tbaa !87
  store i64 %i.cv, ptr %i.bu, align 8, !tbaa !88
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !89
  store i8 0, ptr %i.bw, align 8, !tbaa !90
  %i.cw = icmp eq i64 %i.cq, 0
  %i.cx = icmp eq i64 %i.cv, 0
  %or.cond.i.us = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond.i.us, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !80
  %i.da = icmp eq i64 %i.bx, %i.cz
  br i1 %i.da, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !80
  %i.dd = icmp eq i64 %i.bx, %i.dc
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.de = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.cg), !inline_history !1060
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !169, !nonnull !37, !align !168
  %i.dg = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.df), !inline_history !1060
  %.not.i6.us = icmp eq i64 %i.de, %i.dg
  br i1 %.not.i6.us, label %._crit_edge, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit.thread

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !167
  %.pre26 = load i64, ptr %i.bt, align 8, !tbaa !87
  %.pre27 = load ptr, ptr %i.bs, align 8, !tbaa !169
  %.pre28 = load i64, ptr %i.bu, align 8, !tbaa !88
  %.pre29 = load i64, ptr %i.bv, align 8, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i, %bb.h, %bb.g
  %i.dh = phi i64 [ %.pre29, %._crit_edge ], [ %i.bx, %bb.i ], [ %i.bx, %bb.h ], [ %i.bx, %bb.g ]
  %i.di = phi i64 [ %.pre28, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.cv, %bb.g ]
  %i.dj = phi ptr [ %.pre27, %._crit_edge ], [ %i.cl, %bb.i ], [ %i.cl, %bb.h ], [ %i.cl, %bb.g ] ; 2 uses
  %i.dk = phi i64 [ %.pre26, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.h ], [ %i.cq, %bb.g ]
  %i.dl = phi ptr [ %.pre, %._crit_edge ], [ %i.cg, %bb.i ], [ %i.cg, %bb.h ], [ %i.cg, %bb.g ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !170
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !171
  %i.dq = add nsw i64 %i.dk, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !170
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !171
  %i.dv = add nsw i64 %i.di, %i.du
  %i.dw = call noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 noundef %i.dv, i64 noundef %i.dh), !inline_history !1060
  br i1 %i.dw, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit.us, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit.thread

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit.us: ; preds = %bb.k
  %i.dx = load ptr, ptr %i.br, align 8, !tbaa !167, !nonnull !37, !align !168
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !45
  %i.dz = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareWithTypeERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.dy), !inline_history !1060
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.dz, label %bb.f, label %.loopexit
end_hunk_0
