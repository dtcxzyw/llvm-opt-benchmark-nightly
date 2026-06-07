inline.NumInlined: 191
inline.NumDeleted: 116
begin_hunk_0_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr nonnull readonly align 1 %i.er, i64 %gepdiff.i.i.i, i1 false), !noalias !262
  %.pre.i22.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !280, !noalias !259
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc23.i.i.i
  %i.ew = phi i64 [ %.pre.i22.i.i.i, %bb.y ], [ %i.es, %.noexc23.i.i.i ]
  %i.ex = add i64 %i.ew, %gepdiff.i.i.i
  store i64 %i.ex, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !280, !noalias !259
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 0)
          to label %bb.q unwind label %bb.w, !noalias !262

bb.aa:                                            ; preds = %bb.n
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19, !noalias !262
  unreachable

_RNvYNvYRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtINtNtNtBM_3ops8function2FnTRB5_QNtBK_9FormatterEE4callCsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i
  %.sroa.0.0.in.i.i = phi i1 [ %i.fj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %i.ar, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i.i ]
  %i.ez = load i64, ptr %i.k, align 8, !range !6, !alias.scope !283, !noalias !236, !noundef !4
  %i.fa = icmp eq i64 %i.ez, -9223372036854775808
  br i1 %i.fa, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE14reset_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvYNvYRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtINtNtNtBM_3ops8function2FnTRB5_QNtBK_9FormatterEE4callCsfY7SmN0bPrO_14deltalake_test.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume.i:                                  ; preds = %bb.du, %bb.au, %.body58.i.i, %bb.ac, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.fb, %bb.ac ], [ %i.rj, %bb.du ], [ %i.gp, %bb.au ], [ %.pn35.i.i, %.body58.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %bb.ab
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE14reset_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.ae:                                            ; preds = %bb.x, %.noexc.i.i.i
  %i.fd = phi i64 [ %.pre.i.i.i.i, %bb.x ], [ %i.el, %.noexc.i.i.i ]
  %i.fe = add i64 %i.fd, %gepdiff43.i.i.i
  store i64 %i.fe, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !alias.scope !277, !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !259
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !236, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !236, !noundef !4
  %i.fj = invoke noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fg, i64 noundef %i.fi)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %.body.i.i unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !236
  br label %_RNvYNvYRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtINtNtNtBM_3ops8function2FnTRB5_QNtBK_9FormatterEE4callCsfY7SmN0bPrO_14deltalake_test.exit.i.i

bb.aj:                                            ; preds = %bb.af, %.body.i.i
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE14reset_fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, %_RNvYNvYRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtINtNtNtBM_3ops8function2FnTRB5_QNtBK_9FormatterEE4callCsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !236
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit

bb.ak:                                            ; preds = %bb.f
  %i.fo = tail call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
  br i1 %i.fo, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.fp = load ptr, ptr %0, align 8, !alias.scope !293, !noalias !296, !nonnull !4, !align !167, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !300, !noalias !303, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !300, !noalias !303, !noundef !4
  %i.fu = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fr, i64 noundef %i.ft, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !305
  br i1 %i.fu, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = tail call noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
  br label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE8fmt_argsCsfY7SmN0bPrO_14deltalake_test.exit

bb.an:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !311
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @35, ptr noundef nonnull %i.l)
  %.phi.trans.insert.i36.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.pre.i37.i = load ptr, ptr %.phi.trans.insert.i36.i, align 8, !noalias !311 ; 2 uses
  %.phi.trans.insert79.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.pre80.i.i = load i64, ptr %.phi.trans.insert79.i.i, align 8, !noalias !311 ; 4 uses
  %i.fw = icmp samesign ult i64 %.pre80.i.i, 16
  br i1 %i.fw, label %.preheader.i.i.i31.i, label %bb.ao

.preheader.i.i.i31.i:                             ; preds = %bb.an
  %.not.i.i.i32.i = icmp eq i64 %.pre80.i.i, 0
  br i1 %.not.i.i.i32.i, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i, label %.lr.ph.i.i.i33.i

bb.ao:                                            ; preds = %bb.an
  %i.fx = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef 27, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.pre.i37.i, i64 noundef range(i64 0, -9223372036854775808) %.pre80.i.i)
          to label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i17.i unwind label %bb.aq

.lr.ph.i.i.i33.i:                                 ; preds = %.preheader.i.i.i31.i, %bb.ap
  %.sroa.01.05.i.i.i34.i = phi i64 [ %i.gb, %bb.ap ], [ 0, %.preheader.i.i.i31.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre.i37.i, i64 %.sroa.01.05.i.i.i34.i
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !312, !noundef !4
  %i.ga = icmp eq i8 %i.fz, 27
  br i1 %i.ga, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i33.i
  %i.gb = add nuw nsw i64 %.sroa.01.05.i.i.i34.i, 1 ; 2 uses
  %exitcond.not.i.i.i35.i = icmp eq i64 %i.gb, %.pre80.i.i
  br i1 %exitcond.not.i.i.i35.i, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i, label %.lr.ph.i.i.i33.i

.body58.i.i:                                      ; preds = %bb.dx, %bb.dr, %.body.i20.i, %bb.aq
  %.pn35.i.i = phi { ptr, i32 } [ %.pn.i21.i, %.body.i20.i ], [ %i.rf, %bb.dr ], [ %i.gc, %bb.aq ], [ %i.rl, %bb.dx ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.g) #18
          to label %common.resume.i unwind label %bb.dz

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i66.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i57.i.i, %bb.as, %bb.ar, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i, %bb.ao
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i17.i: ; preds = %bb.ao
  %i.gd = extractvalue { i64, i64 } %i.fx, 0
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i: ; preds = %bb.ap, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i17.i, %.preheader.i.i.i31.i
  %i.gf = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
          to label %.noexc38.i.i unwind label %bb.aq

.noexc38.i.i:                                     ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i18.i
  br i1 %i.gf, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc38.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.gg = load ptr, ptr %0, align 8, !alias.scope !323, !noalias !326, !nonnull !4, !align !167, !noundef !4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !330, !noalias !333, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !330, !noalias !333, !noundef !4
  %i.gl = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gk, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc39.i.i unwind label %bb.aq

.noexc39.i.i:                                     ; preds = %bb.ar
  br i1 %i.gl, label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %bb.as

bb.as:                                            ; preds = %.noexc39.i.i
  %i.gm = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
          to label %_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.aq

_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i: ; preds = %.lr.ph.i.i.i33.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !311
  store i64 0, ptr %i.f, align 8, !noalias !311
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !311
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !311
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 4)
          to label %bb.ax unwind label %bb.aw

_RNvMs0_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringE15color_fmt_valueCsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i, %bb.as, %.noexc39.i.i, %.noexc38.i.i
  %.sroa.0.0.i19.i = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit70.i.i ], [ true, %.noexc39.i.i ], [ true, %.noexc38.i.i ], [ %i.gm, %bb.as ] ; 2 uses
  %i.gn = load i64, ptr %i.g, align 8, !range !6, !alias.scope !335, !noalias !311, !noundef !4
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
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #19
  unreachable

.body.i20.i:                                      ; preds = %bb.do, %bb.dl, %bb.di, %.loopexit78.i.i.i, %bb.aw
  %.pn.i21.i = phi { ptr, i32 } [ %i.qz, %bb.di ], [ %i.ra, %bb.dl ], [ %.pn.i.i24.i, %.loopexit78.i.i.i ], [ %i.gr, %bb.aw ], [ %i.rc, %bb.do ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #18
          to label %.body58.i.i unwind label %bb.dz

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit55.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i51.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i26.i, %bb.bc, %bb.bb, %bb.az, %bb.ax, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20.i

bb.ax:                                            ; preds = %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2.i.i
  %i.gs = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !311, !noundef !4 ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, -1
  call void @llvm.assume(i1 %i.gt)
  %i.gu = load ptr, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !311, !nonnull !4, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gs
  store i32 1831885595, ptr %i.gv, align 1
  %.pre.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !311
  %i.gw = add i64 %.pre.i.i.i, 4
  store i64 %i.gw, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !311
  %i.gx = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @34)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.gx, label %bb.dw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gy = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_prefix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
          to label %bb.ba unwind label %bb.aw

bb.ba:                                            ; preds = %bb.az
  br i1 %i.gy, label %bb.dw, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !311
  %i.gz = load ptr, ptr %.phi.trans.insert.i36.i, align 8, !noalias !311, !nonnull !4 ; 5 uses
  %i.ha = load i64, ptr %.phi.trans.insert79.i.i, align 8, !noalias !311 ; 4 uses
  %i.hb = load ptr, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !311, !nonnull !4, !noundef !4 ; 2 uses
  %i.hc = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !311, !noundef !4 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.hc, 4
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ha ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !341
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc45.i.i unwind label %bb.aw

.noexc45.i.i:                                     ; preds = %bb.bb
  %i.hd = load i64, ptr %i.a, align 8, !range !5, !noalias !341, !noundef !4
  %i.he = trunc nuw i64 %i.hd to i1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !range !6, !noalias !341, !noundef !4 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.he, label %bb.bc, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, !prof !7

bb.bc:                                            ; preds = %.noexc45.i.i
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !341
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hg, i64 %i.hi) #17
          to label %.noexc46.i.i unwind label %bb.aw

.noexc46.i.i:                                     ; preds = %bb.bc
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %.noexc45.i.i
  %i.hj = load ptr, ptr %i.hh, align 8, !noalias !341, !nonnull !4, !noundef !4
  %i.hk = icmp ule i64 %spec.select.i.i.i, %i.hg
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !341
  store i64 %i.hg, ptr %i.c, align 8, !noalias !341
  %.sroa.4.0..sroa_idx.i.i22.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr %i.hj, ptr %.sroa.4.0..sroa_idx.i.i22.i, align 8, !noalias !341
  %.sroa.512.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 20 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i23.i, align 8, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !341
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gz, i64 noundef %i.ha, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 4)
          to label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i unwind label %bb.bd, !noalias !346

.loopexit78.i.i.i:                                ; preds = %.loopexit.split-lp.i.i.i, %.loopexit78.split.i.loopexit.split-lp.i.i, %.loopexit78.split.i.loopexit.i.i, %.loopexit78.split.us.i.i.i, %bb.bd
  %.pn.i.i24.i = phi { ptr, i32 } [ %i.hl, %bb.bd ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.us.i.i.i, %.loopexit78.split.us.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit78.split.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit78.split.i.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %.body.i20.i unwind label %bb.dg, !noalias !346

bb.bd:                                            ; preds = %.loopexit.i.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit78.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %.sroa.041.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !341
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.442.0.copyload.i.i.i = load i64, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 27 uses
  %.sroa.644.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.644.0.copyload.i.i.i = load i64, ptr %.sroa.644.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 5 uses
  %.sroa.745.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.745.0.copyload.i.i.i = load i64, ptr %.sroa.745.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 2 uses
  %.sroa.846.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.846.0.copyload.i.i.i = load i64, ptr %.sroa.846.0..sroa_idx.i.i.i, align 8, !noalias !341
  %.sroa.1048.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.1048.0.copyload.i.i.i = load i64, ptr %.sroa.1048.0..sroa_idx.i.i.i, align 8, !noalias !341
  %.sroa.1250.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1250.0.copyload.i.i.i = load ptr, ptr %.sroa.1250.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 17 uses
  %.sroa.1351.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.1351.0.copyload.i.i.i = load i64, ptr %.sroa.1351.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 42 uses
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 5 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !341
  %i.hm = trunc nuw i64 %.sroa.041.0.copyload.i.i.i to i1
  %i.hn = add nsw i64 %.sroa.15.0.copyload.i.i.i, -1 ; 3 uses
  %.not.i33.i.i.i = icmp eq i64 %i.hc, 0          ; 3 uses
  br i1 %i.hm, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i: ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i) ]
  %i.ho = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.644.0.copyload.i.i.i
  %umax54.i50.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.442.0.copyload.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %i.hp = add i64 %.sroa.442.0.copyload.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.hp, %.sroa.15.0.copyload.i.i.i
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %.not73.us.i.i.i = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %exitcond.not.i52.us.i.i.i202.not = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %invariant.op296 = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %.not73.us.i.us.i.i205 = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br label %bb.be

bb.be:                                            ; preds = %bb.bv, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i
  %.sroa.18.0.us.i.i.i = phi i64 [ %.sroa.846.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.bv ] ; 3 uses
  %.sroa.3015.0.us.i.i.i = phi i64 [ %.sroa.1048.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.3015.3.us.i.i.i, %bb.bv ] ; 2 uses
  %.sroa.04.0.us.i.i.i = phi i64 [ 0, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.bv ] ; 7 uses
  %i.hq = icmp eq i64 %.sroa.3015.0.us.i.i.i, -1
  %i.hr = add i64 %.sroa.18.0.us.i.i.i, %i.hn     ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %.sroa.1351.0.copyload.i.i.i ; 2 uses
  br i1 %i.hq, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  br i1 %i.hs, label %.lr.ph.i39.us.i.i.i, label %.loopexit.i.i.i

.lr.ph.i39.us.i.i.i:                              ; preds = %bb.bf, %.sink.split.i.us.i.i.i
  %i.ht = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.3015.0.us.i.i.i, %bb.bf ] ; 3 uses
  %i.hu = phi i64 [ %i.ix, %.sink.split.i.us.i.i.i ], [ %i.hr, %bb.bf ]
  %i.hv = phi i64 [ %.ph76.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.18.0.us.i.i.i, %bb.bf ] ; 8 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.hu
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %.sroa.745.0.copyload.i.i.i
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i39.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 %.sroa.442.0.copyload.i.i.i) ; 4 uses
  %umax54.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i197.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i197.not, label %.lr.ph, label %.preheader75.us.i.i.i.preheader

bb.bh:                                            ; preds = %bb.bi
  %i.id = add i64 %.sroa.04.0.i.us.i.i.i198, 1    ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.id, %umax54.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader75.us.i.i.i.preheader, label %.lr.ph

.preheader75.us.i.i.i.preheader:                  ; preds = %bb.bh, %bb.bg
  %i.ie = icmp ult i64 %i.ht, %.sroa.442.0.copyload.i.i.i
  br i1 %i.ie, label %.lr.ph200, label %.loopexit.i.us.i.i.i

.lr.ph:                                           ; preds = %bb.bg, %bb.bh
  %.sroa.04.0.i.us.i.i.i198 = phi i64 [ %i.id, %bb.bh ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.bg ] ; 4 uses
  %i.if = add i64 %.sroa.04.0.i.us.i.i.i198, %i.hv ; 2 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.ig, label %bb.bi, label %.split.us.i.i30.i

bb.bi:                                            ; preds = %.lr.ph
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.04.0.i.us.i.i.i198
  %i.ii = load i8, ptr %i.ih, align 1, !alias.scope !350, !noalias !355, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.if
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %.not23.i.us.i.i.i = icmp eq i8 %i.ii, %i.ik
  br i1 %.not23.i.us.i.i.i, label %bb.bh, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.hv, %invariant.op
  %i.il = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.us.i.i.i198
  br label %.sink.split.i.us.i.i.i

.preheader75.us.i.i.i:                            ; preds = %bb.bl
  %i.im = icmp ult i64 %i.ht, %i.in
  br i1 %i.im, label %.lr.ph200, label %.loopexit.i.us.i.i.i

.lr.ph200:                                        ; preds = %.preheader75.us.i.i.i.preheader, %.preheader75.us.i.i.i
  %.sroa.2.0.i.us.i.i.i199 = phi i64 [ %i.in, %.preheader75.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader75.us.i.i.i.preheader ]
  %i.in = add i64 %.sroa.2.0.i.us.i.i.i199, -1    ; 6 uses
  %i.io = icmp ult i64 %i.in, %.sroa.15.0.copyload.i.i.i
  br i1 %i.io, label %bb.bk, label %.split133.us.invoke.i.i.i

bb.bk:                                            ; preds = %.lr.ph200
  %i.ip = add i64 %i.in, %i.hv                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.iq, label %bb.bl, label %.split133.us.invoke.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.in
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !350, !noalias !355, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %.not.i40.us.i.i.i = icmp eq i8 %i.is, %i.iu
  br i1 %.not.i40.us.i.i.i, label %.preheader75.us.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iv = add i64 %i.hv, %.sroa.644.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i39.us.i.i.i
  %i.iw = add i64 %i.hv, %.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

end_hunk_0
