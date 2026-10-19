Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.15?download=true
inline.NumInlined: 264
inline.NumDeleted: 141
begin_hunk_0_@_RNvNvMs4_NtNtCsa9sSWSfjDbm_4jiff3fmt7strtimeNtB7_14BrokenDownTime7to_date7to_date:bb.a
  %.not52 = icmp eq i8 %i.ha, %i.ic
  br i1 %.not52, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit, %.thread140
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.10.3143, ptr %i.id, align 2
  br label %bb.bn

bb.bm:                                            ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ie = tail call fastcc noundef i8 @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date7weekday(i32 noundef %.sroa.10.3143) #23
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.ha, ptr %i.if, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.ie, ptr %i.ig, align 2
  store i8 14, ptr %i.t, align 8
  %i.ih = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ih, ptr %i.ii, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bq, %bb.l, %bb.o, %bb.ab, %bb.aq, %bb.bh, %bb.bi, %bb.bm, %bb.br, %bb.bl
  %.sink = phi i16 [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.ab ], [ 1, %bb.aq ], [ 1, %bb.bh ], [ 1, %bb.bi ], [ 1, %bb.bm ], [ 0, %bb.bl ], [ 1, %bb.br ], [ 0, %bb.bq ], [ 1, %bb.bo ]
  store i16 %.sink, ptr %0, align 8
  ret void

bb.bo:                                            ; preds = %bb.k
  %i.ij = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.il, align 8
  br label %bb.bn

bb.bp:                                            ; preds = %bb.k
  %i.im = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.sroa.035.0.copyload = load i16, ptr %i.im, align 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.in = trunc i16 %.sroa.035.0.copyload to i1
  br i1 %i.in, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.4.0.copyload, ptr %i.io, align 2
  br label %bb.bn

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 29, ptr %i.w, align 8
  %i.ip = call noundef ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ip, ptr %i.iq, align 8
  br label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtNtB20_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B3v_NtB3v_18ZoneInfoNamesInner9available0ENCB4y_s_0EE9from_iterB3D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !348
  store ptr %i.n, ptr %i.h, align 8, !noalias !349
  %i.o = icmp eq ptr %1, %2
  br i1 %i.o, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.q, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !349
  store ptr %i.p, ptr %i.g, align 8, !noalias !349, !captures !5
  %i.r = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs3_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtBW_18ZoneInfoNamesInner9available0INtB7_5FnMutTRRNtBW_12ZoneInfoNameEE8call_mutB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !350
  br i1 %i.r, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !349
  %i.s = icmp eq ptr %i.q, %2
  br i1 %i.s, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.thread, label %.lr.ph.i.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !348
  br label %bb.c

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.l, align 8, !alias.scope !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !348
  %.val.i = load ptr, ptr %i.p, align 8, !noalias !352, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
  %.pr = load i64, ptr %i.j, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.thread, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit
  store i64 0, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit10, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit unwind label %bb.n

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.x = load i64, ptr %i.f, align 8, !range !6, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !noundef !4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %.noexc
  %i.ac = load i64, ptr %i.ab, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #25
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = icmp ugt i64 %i.aa, 3
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 %i.aa, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.af = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ag = load ptr, ptr %i.m, align 8, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !353
  store ptr %i.af, ptr %i.e, align 8, !noalias !355
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !355
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !356
  store ptr %i.ai, ptr %i.b, align 8, !noalias !357
  %i.aj = icmp eq ptr %i.af, %i.ag
  br i1 %i.aj, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.thread.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.h, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i
  %.promoted.i.i.i9.i.i = phi ptr [ %.promoted.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i ], [ %i.af, %bb.h ]
  %i.ak = phi ptr [ %i.ax, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i ], [ %i.ag, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.preheader.i.i
  %i.al = phi ptr [ %i.am, %bb.i ], [ %.promoted.i.i.i9.i.i, %.lr.ph.i.i.i.preheader.i.i ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !361
  store ptr %i.al, ptr %i.a, align 8, !noalias !361, !captures !5
  %i.an = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs3_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5innerNtBW_18ZoneInfoNamesInner9available0INtB7_5FnMutTRRNtBW_12ZoneInfoNameEE8call_mutB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.an, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !361
  %i.ao = icmp eq ptr %i.am, %i.ak
  br i1 %i.ao, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.thread.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  br label %.loopexit10

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i.i.i: ; preds = %.noexc7
  store ptr %i.am, ptr %i.e, align 8, !alias.scope !363, !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %.loopexit10, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !noalias !364, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i
  %.pr.i.i = load i64, ptr %i.d, align 8, !noalias !355
  %.not.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i.i, label %.loopexit10, label %bb.j

bb.j:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !355
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !355, !noundef !4 ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.k, align 8, !range !10, !alias.scope !355, !noundef !4
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.l, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.l, %bb.j
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !355, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.aw = add nuw nsw i64 %i.aq, 1
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !355
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !368
  store ptr %i.ai, ptr %i.b, align 8, !noalias !369
  %i.ax = load ptr, ptr %i.ah, align 8, !alias.scope !370, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !370, !noalias !355 ; 2 uses
  %i.ay = icmp eq ptr %.promoted.i.i.i.i.i, %i.ax
  br i1 %i.ay, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.thread.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

bb.k:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.aq, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1K_NtB1K_18ZoneInfoNamesInner9available0ENCB2N_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.k ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #26
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit unwind label %bb.n

.loopexit10:                                      ; preds = %.noexc8, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENCNvMs3_B1u_NtB1u_18ZoneInfoNamesInner9available0ENtNtNtB9_6traits8iterator8Iterator4nextB1C_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.d

bb.n:                                             ; preds = %bb.e, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define noundef ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB2_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 14) %0, i8 %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef %0, i8 %1) #21
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = load i8, ptr %0, align 1, !range !23, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  switch i8 %i.m, label %default.unreachable95 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
  ]

default.unreachable95:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 109)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 98)
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 80)
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 88)
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 82)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 94)
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.u = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.u, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.v = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !13, !noundef !4
  %i.y = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull @48, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.z = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.z, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.aa = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ad = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noundef nonnull @49, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ae = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.ae, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.af = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ai = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noundef nonnull @50, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.aj = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.aj, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ak = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !align !13, !noundef !4
  %i.an = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull @51, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.ao = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ao, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !align !13, !noundef !4
  %i.as = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noundef nonnull @52, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.at = load i8, ptr %i.n, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.at, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.au = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ax = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noundef nonnull @53, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  %i.ay = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 119)
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.az = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 70)
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.o, %bb.n, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.b ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.y, %bb.h ], [ %i.ad, %bb.i ], [ %i.ai, %bb.j ], [ %i.an, %bb.k ], [ %i.as, %bb.l ], [ %i.ax, %bb.m ], [ %i.ay, %bb.n ], [ %i.az, %bb.o ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff3fmt7strtime8MeridiemNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
end_hunk_0
