Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SanitizerArgs?download=true
inline.NumInlined: 2772
inline.NumDeleted: 587
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL21parseCoverageFeaturesRKN5clang6driver6DriverEPKN4llvm3opt3ArgEb:bb.a
  %i.em = phi ptr [ %i.el, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ej, %bb.q ] ; 2 uses
  %i.en = ptrtoint ptr %i.i to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.em, align 8, !tbaa !234
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  store i8 1, ptr %i.er, align 1, !tbaa !24
  %i.es = load ptr, ptr %3, align 8, !tbaa !221   ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i8, ptr %i.es, align 8, !tbaa !234 ; 2 uses
  %i.ev = add i8 %i.eu, 1
  store i8 %i.ev, ptr %i.es, align 8, !tbaa !234
  %i.ew = zext i8 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ew
  store i64 %i.en, ptr %i.ex, align 8, !tbaa !235
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcEERKS0_RKT_.exit, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit165
  %i.ey = or i32 %spec.select.i, %.0131020        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !515
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDES5_EEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca [2 x %"class.llvm::opt::OptSpecifier"], align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 %2, ptr %4, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.a, align 4
  %i.b = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nonnull %4, i64 2) #18 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.b, 32    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = and i64 %i.b, 4294967295                 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %.sroa.4.0.extract.shift ; 8 uses
  %.not26.i.i = icmp samesign eq i64 %i.e, %.sroa.4.0.extract.shift
  br i1 %.not26.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %.not23.i.i = icmp eq i32 %2, 0
  br i1 %.not23.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.lr.ph.i.i.preheader.split

.lr.ph.i.i.preheader.split:                       ; preds = %.lr.ph.i.i.preheader
  %.not23.1.i.i = icmp eq i32 %3, 0
  br i1 %.not23.1.i.i, label %.lr.ph.i.i.us42, label %.lr.ph.i.i

.lr.ph.i.i.us42:                                  ; preds = %.lr.ph.i.i.preheader.split, %.thread21.i.i.us44
  %.sroa.033.0.us43 = phi ptr [ %i.j, %.thread21.i.i.us44 ], [ %i.f, %.lr.ph.i.i.preheader.split ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.033.0.us43, align 8, !tbaa !157 ; 2 uses
  %.not14.i.i.us = icmp eq ptr %i.h, null
  br i1 %.not14.i.i.us, label %.thread21.i.i.us44, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.us42
  %i.i = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 %2) #18
  br i1 %i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.thread21.i.i.us44

.thread21.i.i.us44:                               ; preds = %bb.b, %.lr.ph.i.i.us42
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.033.0.us43, i64 8 ; 2 uses
  %.not.i.i.us45 = icmp eq ptr %i.j, %i.g
  br i1 %.not.i.i.us45, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.lr.ph.i.i.us42, !llvm.loop !12

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.split, %.thread21.i.i
  %.sroa.033.0 = phi ptr [ %i.n, %.thread21.i.i ], [ %i.f, %.lr.ph.i.i.preheader.split ] ; 4 uses
  %i.k = load ptr, ptr %.sroa.033.0, align 8, !tbaa !157 ; 3 uses
  %.not14.i.i = icmp eq ptr %i.k, null
  br i1 %.not14.i.i, label %.thread21.i.i, label %bb.c

.preheader.1.i.i:                                 ; preds = %bb.c
  %i.l = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 %3) #18
  br i1 %i.l, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.thread21.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 %2) #18
  br i1 %i.m, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.preheader.1.i.i

.thread21.i.i:                                    ; preds = %.preheader.1.i.i, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj2EEC2ES5_S5_RA2_KNS0_12OptSpecifierE.exit: ; preds = %.preheader.1.i.i, %bb.c, %.thread21.i.i, %bb.b, %.thread21.i.i.us44, %.lr.ph.i.i.preheader, %bb.a
  %.sroa.033.1 = phi ptr [ %i.f, %bb.a ], [ %.sroa.033.0.us43, %bb.b ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.g, %.thread21.i.i.us44 ], [ %.sroa.033.0, %.preheader.1.i.i ], [ %i.g, %.thread21.i.i ], [ %.sroa.033.0, %bb.c ]
  %.sroa.6.20.insert.ext = zext i32 %3 to i64
  %.sroa.6.20.insert.shift = shl nuw i64 %.sroa.6.20.insert.ext, 32
  %.sroa.6.16.insert.ext = zext i32 %2 to i64
  %.sroa.6.20.insert.insert = or disjoint i64 %.sroa.6.20.insert.shift, %.sroa.6.16.insert.ext ; 2 uses
  store ptr %.sroa.033.1, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.20.insert.insert, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.o, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6.20.insert.insert, ptr %.sroa.541.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL27parseBinaryMetadataFeaturesRKN5clang6driver6DriverEPKN4llvm3opt3ArgEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %.not114 = icmp eq i32 %i.b, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %2, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.f = zext i32 %i.b to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.h = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.013115.us = phi i32 [ %i.at, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us ], [ 0, %.lr.ph.split.us ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236  ; 10 uses
  %.not.i.us = icmp eq ptr %i.j, null
  br i1 %.not.i.us, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us, label %_ZN4llvm9StringRefC2EPKc.exit.us

_ZN4llvm9StringRefC2EPKc.exit.us:                 ; preds = %bb.b
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #18
  switch i64 %i.k, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us [
    i64 7, label %bb.d
    i64 3, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.us
  %i.l = load i16, ptr %i.j, align 1
  %i.m = xor i16 %i.l, 24949
  %i.n = getelementptr i8, ptr %i.j, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i16
  %i.q = xor i16 %i.p, 114
  %i.r = or i16 %i.m, %i.q
  %i.s = icmp ne i16 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i27.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.i27.us, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us, label %.thread109.us

.thread109.us:                                    ; preds = %bb.c
  %i.u = load i16, ptr %i.j, align 1
  %i.v = xor i16 %i.u, 27745
  %i.w = getelementptr i8, ptr %i.j, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 108
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i35.us = icmp eq i32 %i.ac, 0
  %spec.select.us = select i1 %.not.i.i35.us, i64 8589934591, i64 0
  br label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.us
  %i.ad = load i32, ptr %i.j, align 1
  %i.ae = xor i32 %i.ad, 1702260579
  %i.af = getelementptr i8, ptr %i.j, i64 3
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 1684370021
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i.us = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.us, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.j, align 1
  %i.am = xor i32 %i.al, 1836020833
  %i.an = getelementptr i8, ptr %i.j, i64 3
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = xor i32 %i.ao, 1935894893
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i19.us = icmp eq i32 %i.as, 0
  %spec.select113.us = select i1 %.not.i.i19.us, i64 4294967298, i64 0
  br label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us

_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us: ; preds = %bb.e, %bb.d, %.thread109.us, %bb.c, %_ZN4llvm9StringRefC2EPKc.exit.us, %bb.b
  %.sroa.12.3.us = phi i64 [ 0, %bb.b ], [ %spec.select113.us, %bb.e ], [ %spec.select.us, %.thread109.us ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit.us ], [ 4294967300, %bb.c ], [ 4294967297, %bb.d ]
  %spec.select.i.us117 = tail call i64 @llvm.umax.i64(i64 %.sroa.12.3.us, i64 4294967296)
  %spec.select.i.us = trunc i64 %spec.select.i.us117 to i32
  %i.at = or i32 %.013115.us, %spec.select.i.us   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.us, label %._crit_edge, label %bb.b, !llvm.loop !517

._crit_edge:                                      ; preds = %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us, %bb.j, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.cx, %bb.j ], [ %i.at, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37.us ]
  ret i32 %.013.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.j
  %indvars.iv122 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next123, %bb.j ] ; 2 uses
  %.013115 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.cx, %bb.j ]
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv122
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !236 ; 11 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %.lr.ph.split
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #18
  switch i64 %i.ax, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37 [
    i64 7, label %bb.f
    i64 3, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ay = load i32, ptr %i.aw, align 1
  %i.az = xor i32 %i.ay, 1702260579
  %i.ba = getelementptr i8, ptr %i.aw, i64 3
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = xor i32 %i.bb, 1684370021
  %i.bd = or i32 %i.az, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.aw, align 1
  %i.bh = xor i32 %i.bg, 1836020833
  %i.bi = getelementptr i8, ptr %i.aw, i64 3
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = xor i32 %i.bj, 1935894893
  %i.bl = or i32 %i.bh, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i19 = icmp eq i32 %i.bn, 0
  %spec.select113 = select i1 %.not.i.i19, i64 4294967298, i64 0
  br label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37

bb.h:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bo = load i16, ptr %i.aw, align 1
  %i.bp = xor i16 %i.bo, 24949
  %i.bq = getelementptr i8, ptr %i.aw, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = xor i16 %i.bs, 114
  %i.bu = or i16 %i.bp, %i.bt
  %i.bv = icmp ne i16 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not.i.i27 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i27, label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37, label %.thread109

.thread109:                                       ; preds = %bb.h
  %i.bx = load i16, ptr %i.aw, align 1
  %i.by = xor i16 %i.bx, 27745
  %i.bz = getelementptr i8, ptr %i.aw, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = xor i16 %i.cb, 108
  %i.cd = or i16 %i.by, %i.cc
  %i.ce = icmp ne i16 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not.i.i35 = icmp eq i32 %i.cf, 0
  %spec.select = select i1 %.not.i.i35, i64 8589934591, i64 0
  br label %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37

_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37: ; preds = %bb.g, %_ZN4llvm9StringRefC2EPKc.exit, %bb.f, %.thread109, %.lr.ph.split, %bb.h
  %.sroa.12.3 = phi i64 [ 0, %.lr.ph.split ], [ %spec.select113, %bb.g ], [ %spec.select, %.thread109 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit ], [ 4294967300, %bb.h ], [ 4294967297, %bb.f ]
  %spec.select.i118 = call i64 @llvm.umax.i64(i64 %.sroa.12.3, i64 4294967296)
  %spec.select.i = trunc i64 %spec.select.i118 to i32 ; 2 uses
  %i.cg = icmp eq i32 %spec.select.i, 0
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ch = load ptr, ptr %0, align 8, !tbaa !216, !noalias !520, !nonnull !49, !align !150
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %i.ch, i32 0, i32 noundef 513) #18
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !236
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i38, align 8, !tbaa !235
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ci = load ptr, ptr %3, align 8, !tbaa !221   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIPKcEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.i
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !222
  %i.ck = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cj) ; 2 uses
  store ptr %i.ck, ptr %3, align 8, !tbaa !221
  br label %_ZNK5clang17DiagnosticBuilderlsIPKcEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIPKcEERKS0_RKT_.exit: ; preds = %bb.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.cl = phi ptr [ %i.ck, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ci, %bb.i ] ; 2 uses
  %i.cm = ptrtoint ptr %i.aw to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.co = load i8, ptr %i.cl, align 8, !tbaa !234
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !24
  %i.cr = load ptr, ptr %3, align 8, !tbaa !221   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i8, ptr %i.cr, align 8, !tbaa !234 ; 2 uses
  %i.cu = add i8 %i.ct, 1
  store i8 %i.cu, ptr %i.cr, align 8, !tbaa !234
  %i.cv = zext i8 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cv
  store i64 %i.cm, ptr %i.cw, align 8, !tbaa !235
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIPKcEERKS0_RKT_.exit, %_ZN4llvm12StringSwitchIiiE4CaseENS_13StringLiteralEi.exit37
  %i.cx = or i32 %.013115, %spec.select.i         ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next123, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !517
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDES5_S5_S5_S5_S5_EEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %7 = alloca [6 x %"class.llvm::opt::OptSpecifier"], align 4 ; 9 uses
  %8 = alloca %"class.llvm::opt::arg_iterator.195", align 8 ; 12 uses
  %9 = alloca %"class.llvm::opt::arg_iterator.195", align 8 ; 12 uses
  %10 = alloca %"class.llvm::opt::arg_iterator.195", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !523
  store i32 %1, ptr %7, align 4, !noalias !523
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %2, ptr %i.a, align 4, !noalias !523
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %3, ptr %i.b, align 4, !noalias !523
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %4, ptr %i.c, align 4, !noalias !523
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %5, ptr %i.d, align 4, !noalias !523
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %6, ptr %i.e, align 4, !noalias !523
  %i.f = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull %7, i64 6) #18, !noalias !523 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.f, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !523
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151, !noalias !523 ; 2 uses
  %i.i = and i64 %i.f, 4294967295
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.4.0.extract.shift.i ; 3 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !282, !noalias !523
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !283, !noalias !523
  %.ptr8.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %1, ptr %.ptr8.i.i, align 8, !tbaa !259, !noalias !523
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %2, ptr %i.m, align 4, !tbaa !259, !noalias !523
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %3, ptr %i.n, align 8, !tbaa !259, !noalias !523
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %4, ptr %i.o, align 4, !tbaa !259, !noalias !523
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %5, ptr %i.p, align 8, !tbaa !259, !noalias !523
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 %6, ptr %i.q, align 4, !tbaa !259, !noalias !523
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj6EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(40) %8), !noalias !523
  store ptr %i.k, ptr %9, align 8, !tbaa !282, !noalias !523
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.k, ptr %i.r, align 8, !tbaa !283, !noalias !523
  %.ptr8.i23.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %1, ptr %.ptr8.i23.i, align 8, !tbaa !259, !noalias !523
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %2, ptr %i.s, align 4, !tbaa !259, !noalias !523
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %3, ptr %i.t, align 8, !tbaa !259, !noalias !523
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %4, ptr %i.u, align 4, !tbaa !259, !noalias !523
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %5, ptr %i.v, align 8, !tbaa !259, !noalias !523
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 %6, ptr %i.w, align 4, !tbaa !259, !noalias !523
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj6EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(40) %9), !noalias !523
  %.sroa.419.40.copyload = load ptr, ptr %9, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.sroa.011.0.copyload20 = load ptr, ptr %10, align 8, !tbaa !280 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.011.0.copyload20, %.sroa.419.40.copyload
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %i.x, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.0.copyload22 = phi ptr [ %.sroa.011.0.copyload, %.lr.ph ], [ %.sroa.011.0.copyload20, %bb.a ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.011.0.copyload22, align 8, !tbaa !157 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.x, ptr %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 44 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload22, i64 8
  store ptr %i.ad, ptr %10, align 8, !tbaa !282
  call void @_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj6EE13SkipToNextArgEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
  %.sroa.011.0.copyload = load ptr, ptr %10, align 8, !tbaa !280 ; 2 uses
  %.not = icmp eq ptr %.sroa.011.0.copyload, %.sroa.419.40.copyload
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef i32 @_ZN5clang22AsanDtorKindFromStringEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef i32 @_ZN5clang43AsanDetectStackUseAfterReturnModeFromStringEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm3opt7ArgList7hasFlagENS0_12OptSpecifierES2_S2_b(ptr noundef nonnull align 8 dereferenceable(176), i32, i32, i32, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN5clang20SanitizerMaskCutoffs5clearENS_13SanitizerMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang6driver13SanitizerArgs7addArgsERKNS0_9ToolChainERKN4llvm3opt7ArgListERNS5_11SmallVectorIPKcLj16EEENS0_5types2IDE(ptr noundef nonnull align 8 dereferenceable(378) %0, ptr noundef nonnull align 8 dereferenceable(2568) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvm::SmallVector.69", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca [20 x %"struct.std::pair.110"], align 16 ; 43 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca [3 x %"struct.std::pair.116"], align 16 ; 27 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %48 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 8 uses
end_hunk_0
