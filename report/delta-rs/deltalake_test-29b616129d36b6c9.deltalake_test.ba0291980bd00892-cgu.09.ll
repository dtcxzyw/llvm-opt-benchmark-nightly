inline.NumInlined: 191
inline.NumDeleted: 116
begin_hunk_0_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 15 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.i:                                             ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !212, !noalias !215 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !234
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @35, ptr noundef nonnull %i.l), !noalias !237
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !234 ; 3 uses
  %.phi.trans.insert19.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.at = phi ptr [ %.pre.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i._RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread5.i_crit_edge.i ], [ %.pre.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !234
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !257
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i.i unwind label %bb.l, !noalias !237

.noexc17.i.i:                                     ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread5.i.i
  %i.au = load i64, ptr %i.h, align 8, !range !5, !noalias !257, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !6, !noalias !257, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.p, !prof !7

bb.m:                                             ; preds = %.noexc17.i.i
end_hunk_2
begin_hunk_3_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.n:                                             ; preds = %bb.w, %bb.o
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.w ], [ %i.ba, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #19
          to label %.body.i.i unwind label %bb.aa, !noalias !260

bb.o:                                             ; preds = %.split54.us.i.i.i
end_hunk_3
begin_hunk_4_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.p:                                             ; preds = %.noexc17.i.i
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !257, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !257
  store i64 %i.ax, ptr %i.i, align 8, !noalias !257
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !257
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !257
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as ; 8 uses
  br label %bb.q
end_hunk_4
begin_hunk_5_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
.split54.us.i.i.i:                                ; preds = %.split.us.i.i.i, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB1d_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE14reset_fmt_args0ENtB5_8Searcher4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.12.0.i.i.i
  %gepdiff43.i.i.i = sub nuw nsw i64 %i.as, %.sroa.12.0.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %gepdiff43.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.o, !noalias !260

.noexc.i.i.i:                                     ; preds = %.split54.us.i.i.i
end_hunk_5
begin_hunk_6_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.eq = phi i64 [ %.sroa.12.0.i.i.i, %.split56.us.i.i.i ], [ %i.cs, %bb.v ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.12.0.i.i.i
  %gepdiff.i.i.i = sub nuw nsw i64 %i.eq, %.sroa.12.0.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %gepdiff.i.i.i)
          to label %.noexc23.i.i.i unwind label %bb.w, !noalias !260

.noexc23.i.i.i:                                   ; preds = %.sink.split.i.i.i.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.ew = phi i64 [ %.pre.i22.i.i.i, %bb.y ], [ %i.es, %.noexc23.i.i.i ]
  %i.ex = add i64 %i.ew, %gepdiff.i.i.i
  store i64 %i.ex, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !278, !noalias !257
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
          to label %bb.q unwind label %bb.w, !noalias !260

bb.aa:                                            ; preds = %bb.n
end_hunk_7
begin_hunk_8_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.fd = phi i64 [ %.pre.i.i.i.i, %bb.x ], [ %i.el, %.noexc.i.i.i ]
  %i.fe = add i64 %i.fd, %gepdiff43.i.i.i
  store i64 %i.fe, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !275, !noalias !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !257
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !234, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
end_hunk_8
begin_hunk_9_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.an:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !309
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @35, ptr noundef nonnull %i.l)
  %.phi.trans.insert.i35.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.pre.i36.i = load ptr, ptr %.phi.trans.insert.i35.i, align 8, !noalias !309 ; 2 uses
  %.phi.trans.insert79.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.pre80.i.i = load i64, ptr %.phi.trans.insert79.i.i, align 8, !noalias !309 ; 4 uses
  %i.fw = icmp samesign ult i64 %.pre80.i.i, 16
  br i1 %i.fw, label %.preheader.i.i.i30.i, label %bb.ao
end_hunk_9
begin_hunk_10_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

.body58.i.i:                                      ; preds = %bb.dx, %bb.dr, %.body.i20.i, %bb.aq
  %.pn35.i.i = phi { ptr, i32 } [ %.pn.i21.i, %.body.i20.i ], [ %i.rj, %bb.dr ], [ %i.gc, %bb.aq ], [ %i.rp, %bb.dx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %common.resume.i unwind label %bb.dz

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i66.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i57.i.i, %bb.as, %bb.ar, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i, %bb.ao
end_hunk_10
begin_hunk_11_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
          to label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.aq

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i: ; preds = %.lr.ph.i.i.i32.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !309
  store i64 0, ptr %i.f, align 8, !noalias !309
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !309
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !309
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 4)
          to label %bb.ax unwind label %bb.aw

_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i, %bb.as, %.noexc39.i.i, %.noexc38.i.i
  %.sroa.0.0.i19.i = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i ], [ true, %.noexc39.i.i ], [ true, %.noexc38.i.i ], [ %i.gm, %bb.as ] ; 2 uses
  %i.gn = load i64, ptr %i.g, align 8, !range !6, !alias.scope !333, !noalias !309, !noundef !4
  %i.go = icmp eq i64 %i.gn, -9223372036854775808
  br i1 %i.go, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE19color_wrap_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.at

bb.at:                                            ; preds = %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test.exit.sink.split.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
end_hunk_11
begin_hunk_12_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

.body.i20.i:                                      ; preds = %bb.do, %bb.dl, %bb.di, %.loopexit79.i.i.i, %bb.aw
  %.pn.i21.i = phi { ptr, i32 } [ %i.rd, %bb.di ], [ %i.re, %bb.dl ], [ %.pn.i.i24.i, %.loopexit79.i.i.i ], [ %i.gr, %bb.aw ], [ %i.rg, %bb.do ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #19
          to label %.body58.i.i unwind label %bb.dz

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit55.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i51.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i26.i, %bb.bc, %bb.bb, %bb.az, %bb.ax, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i
end_hunk_12
begin_hunk_13_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %.pre.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !336, !noalias !309
  %i.gw = add i64 %.pre.i.i.i, 4
  store i64 %i.gw, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !336, !noalias !309
  %i.gx = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
end_hunk_13
begin_hunk_14_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.gy, label %bb.dw, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !309
  %i.gz = load ptr, ptr %.phi.trans.insert.i35.i, align 8, !noalias !309, !nonnull !4 ; 5 uses
  %i.ha = load i64, ptr %.phi.trans.insert79.i.i, align 8, !noalias !309 ; 4 uses
  %i.hb = load ptr, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !309, !nonnull !4, !noundef !4 ; 2 uses
  %i.hc = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !309, !noundef !4 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.hc, 4
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ha ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !339
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i.i unwind label %bb.aw
end_hunk_14
begin_hunk_15_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.hk = icmp ule i64 %spec.select.i.i.i, %i.hg
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !339
  store i64 %i.hg, ptr %i.c, align 8, !noalias !339
  %.sroa.4.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr %i.hj, ptr %.sroa.4.0..sroa_idx.i.i22.i, align 8, !noalias !339
  %.sroa.512.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 20 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !339
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gz, i64 noundef %i.ha, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 4)
end_hunk_15
begin_hunk_16_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

.loopexit79.i.i.i:                                ; preds = %.loopexit.split-lp.i.i.i, %.loopexit79.split.i.loopexit.split-lp.i.i, %.loopexit79.split.i.loopexit.i.i, %.loopexit79.split.us.i.i.i, %bb.bd
  %.pn.i.i24.i = phi { ptr, i32 } [ %i.hl, %bb.bd ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.us.i.i.i, %.loopexit79.split.us.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit79.split.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit79.split.i.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.body.i20.i unwind label %bb.dg, !noalias !344

bb.bd:                                            ; preds = %.loopexit.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
end_hunk_16
begin_hunk_17_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %.sroa.18.3.us.i.i.i = add i64 %.sroa.753.4.us.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.04.0.us.i.i.i
  %gepdiff.us.i.i.i = sub nuw nsw i64 %.sroa.753.4.us.i.i.i, %.sroa.04.0.us.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i.i.i)
          to label %.noexc31.us.i.i.i unwind label %.loopexit79.split.us.i.i.i, !noalias !344

.noexc31.us.i.i.i:                                ; preds = %.loopexit.i.us.i.i.i
end_hunk_17
begin_hunk_18_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.ka = phi i64 [ %.pre.i30.us.i.i.i, %bb.bq ], [ %i.jw, %.noexc31.us.i.i.i ]
  %i.kb = add i64 %i.ka, %gepdiff.us.i.i.i
  store i64 %i.kb, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !363, !noalias !339
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hc)
          to label %.noexc35.us.i.i.i unwind label %.loopexit79.split.us.i.i.i, !noalias !344

.noexc35.us.i.i.i:                                ; preds = %bb.br
end_hunk_18
begin_hunk_19_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

.loopexit.i.i.peel.i.i:                           ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i, %bb.cn, %.loopexit206.i.peel.i.i, %bb.cm, %bb.ce
  %.sroa.48.1203.i.peel.i.i = phi i64 [ %.sroa.442.0.copyload.i.i.i, %.loopexit206.i.peel.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %bb.cm ], [ %.sroa.442.0.copyload.i.i.i, %bb.ce ], [ %i.mq, %bb.cn ], [ %i.mq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i ], [ %i.mq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i ], [ %i.mq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i ] ; 6 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.48.1203.i.peel.i.i)
          to label %.noexc31.i.peel.i.i unwind label %.loopexit79.split.i.loopexit.split-lp.i.i, !noalias !344

.noexc31.i.peel.i.i:                              ; preds = %.loopexit.i.i.peel.i.i
end_hunk_19
begin_hunk_20_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.nm = phi i64 [ %.pre.i30.i.peel.i.i, %bb.co ], [ %i.ni, %.noexc31.i.peel.i.i ]
  %i.nn = add i64 %i.nm, %.sroa.48.1203.i.peel.i.i
  store i64 %i.nn, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !363, !noalias !339
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hc)
          to label %.noexc35.i.peel.i.i unwind label %.loopexit79.split.i.loopexit.split-lp.i.i, !noalias !344

.noexc35.i.peel.i.i:                              ; preds = %bb.cp
end_hunk_20
begin_hunk_21_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %.sroa.04.0120.i.i.i = phi i64 [ 0, %.loopexit206.i.peel.i.i ], [ 0, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i ], [ %.sroa.04.0.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.04.0.us.i.i.i, %bb.bx ], [ %.sroa.04.0.us.i.i.i, %bb.bo ], [ %.sroa.04.0.us.i.i.i, %bb.bf ], [ %.sroa.1351.0.copyload.i.i.i, %bb.ct ] ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.04.0120.i.i.i
  %gepdiff74.i.i.i = sub nuw nsw i64 %i.ha, %.sroa.04.0120.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff74.i.i.i)
          to label %.noexc28.i.i.i unwind label %bb.bd, !noalias !344

.noexc28.i.i.i:                                   ; preds = %.loopexit.i.i.i
end_hunk_21
begin_hunk_22_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
.loopexit.i.i.i.i:                                ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.i.i, %bb.dc, %bb.db
  %.sroa.48.1203.i.i.i = phi i64 [ %.sroa.1351.0.copyload.i.i.i, %bb.db ], [ %i.pm, %bb.dc ], [ %i.pm, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.i.i ], [ %i.pm, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.i.i ], [ %i.pm, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.i.i ] ; 3 uses
  %gepdiff.i.i29.i = sub nuw nsw i64 %.sroa.48.1203.i.i.i, %.sroa.04.0156.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.i.i29.i)
          to label %bb.de unwind label %.loopexit79.split.i.loopexit.i.i, !noalias !344

bb.de:                                            ; preds = %.loopexit.i.i.i.i
end_hunk_22
begin_hunk_23_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %.pre.i30.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !363, !noalias !339
  %i.qt = add i64 %.pre.i30.i.i.i, %gepdiff.i.i29.i
  store i64 %i.qt, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !363, !noalias !339
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hc)
          to label %.noexc35.i.i.i unwind label %.loopexit79.split.i.loopexit.i.i, !noalias !344

.noexc35.i.i.i:                                   ; preds = %bb.de
end_hunk_23
begin_hunk_24_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.qx = phi i64 [ %.pre.i.i.i25.i, %bb.dd ], [ %i.qk, %.noexc28.i.i.i ]
  %i.qy = add i64 %i.qx, %gepdiff74.i.i.i
  store i64 %i.qy, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !alias.scope !383, !noalias !339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !309
  store ptr %i.e, ptr %i.d, align 8, !noalias !309
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !309
  %i.qz = load ptr, ptr %1, align 8, !alias.scope !389, !noalias !390, !nonnull !4, !noundef !4
end_hunk_24
begin_hunk_25_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.di:                                            ; preds = %bb.dh
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #19
          to label %.body.i20.i unwind label %bb.dz

bb.dj:                                            ; preds = %bb.dh
end_hunk_25
begin_hunk_26_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.rc, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i26.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i20.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
end_hunk_26
begin_hunk_27_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i26.i: ; preds = %bb.dk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i27.i unwind label %bb.aw

bb.dn:                                            ; preds = %bb.dj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i51.i.i unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i20.i unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
end_hunk_27
begin_hunk_28_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i51.i.i: ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit55.i.i unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit55.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !309
  %i.ri = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
          to label %bb.dq unwind label %bb.aw     ; 2 uses

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit55.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i57.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body58.i.i unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
end_hunk_28
begin_hunk_29_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i57.i.i: ; preds = %bb.dq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit61.i.i unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit61.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i57.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !309
  %i.rl = load i64, ptr %i.g, align 8, !range !6, !alias.scope !391, !noalias !309, !noundef !4
  %i.rm = icmp eq i64 %i.rl, -9223372036854775808
  br i1 %i.rm, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE19color_wrap_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit61.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test.exit.sink.split.i.i unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
end_hunk_29
begin_hunk_30_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test.exit.sink.split.i.i: ; preds = %bb.dt, %bb.at
  %.sroa.0.1.ph.i.i = phi i1 [ %.sroa.0.0.i19.i, %bb.at ], [ %i.ri, %bb.dt ]
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE19color_wrap_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i27.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !309
  br label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i27.i, %bb.ba, %bb.ay
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i66.i.i unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body58.i.i unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
end_hunk_30
begin_hunk_31_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i66.i.i: ; preds = %bb.dw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i unwind label %bb.aq

bb.dz:                                            ; preds = %bb.di, %.body.i20.i, %.body58.i.i
end_hunk_31
begin_hunk_32_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !309
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i

_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE19color_wrap_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test.exit.sink.split.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit61.i.i, %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %.sroa.0.1.i.i = phi i1 [ %i.ri, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit61.i.i ], [ %.sroa.0.0.i19.i, %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %.sroa.0.1.ph.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !309
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit

_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %bb.e, %bb.h, %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE14reset_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.ak, %bb.al, %bb.am, %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE19color_wrap_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i
end_hunk_32
