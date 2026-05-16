inline.NumInlined: 4879
inline.NumDeleted: 1465
begin_hunk_0_@_ZN11OpenImageIO4v3_17Strutil13edit_distanceENS0_17basic_string_viewIcSt11char_traitsIcEEES5_NS1_14EditDistMetricE:bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !82
  %i.i = call fastcc noundef i64 @_ZN11OpenImageIO4v3_1L20levenshtein_distanceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr noundef dead_on_return %3, ptr noundef dead_on_return %4)
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN11OpenImageIO4v3_1L20levenshtein_distanceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr noundef nonnull readonly captures(none) dead_on_return %0, ptr noundef nonnull readonly captures(none) dead_on_return %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82   ; 10 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82   ; 4 uses
  %i.g = icmp eq i64 %i.c, %i.f
  %i.h = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %i.a, ptr %i.d, i64 %i.c)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = shl i64 %i.c, 3                          ; 5 uses
  %i.k = icmp ult i64 %i.j, 65537
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = alloca i8, i64 %i.j, align 16
  br label %.lr.ph.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.m = icmp ugt i64 %i.c, 2305843009213693951
  %i.n = select i1 %i.m, i64 -1, i64 %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #52 ; 2 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %.036 = phi ptr [ %i.l, %bb.e ], [ %i.o, %bb.f ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.036, i64 %i.j
  %i.q = add i64 %i.j, -8                         ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, 4611686018427387900      ; 4 uses
  %i.t = or disjoint i64 %n.vec, 1
  %i.u = shl i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %.036, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.036, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !94
  store <2 x i64> %step.add, ptr %i.x, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.lr.ph.us.preheader, label %.lr.ph.i.preheader73

.lr.ph.i.preheader73:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  %.057.i.ph = phi ptr [ %.036, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader73, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader73 ] ; 2 uses
  %.057.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader73 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.057.i, align 8, !tbaa !94
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i42 = icmp eq ptr %i.z, %i.p
  br i1 %.not.i42, label %.lr.ph.us.preheader, label %.lr.ph.i, !llvm.loop !420

.lr.ph.us.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %xtraiter = and i64 %i.c, 1
  %i.aa = icmp eq i64 %i.c, 1
  %unroll_iter = and i64 %i.c, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = trunc i64 %i.c to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03756.us = phi i64 [ %i.bj, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %.03855.us = phi i64 [ %.lcssa, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 %.03756.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7   ; 3 uses
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.03454.us = phi i64 [ %i.ay, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 4 uses
  %.03553.us = phi i64 [ %i.au, %.lr.ph.us.new ], [ %.03756.us, %.lr.ph.us ]
  %.152.us = phi i64 [ %i.ax, %.lr.ph.us.new ], [ %.03855.us, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03454.us
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = icmp ne i8 %i.ac, %i.ae
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %.03553.us, %i.ag               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.036, i64 %.03454.us ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !94 ; 2 uses
  %.152.us. = call i64 @llvm.umin.i64(i64 %i.aj, i64 %.152.us) ; 2 uses
  %i.ak = icmp ugt i64 %i.ah, %.152.us.
  %i.al = add i64 %.152.us., 1
  %i.am = select i1 %i.ak, i64 %i.al, i64 %i.ah   ; 2 uses
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !94
  %i.an = or disjoint i64 %.03454.us, 1           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  %i.aq = icmp ne i8 %i.ac, %i.ap
  %i.ar = zext i1 %i.aq to i64
  %i.as = add i64 %i.aj, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.036, i64 %i.an ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !94 ; 3 uses
  %.152.us..1 = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.am) ; 2 uses
  %i.av = icmp ugt i64 %i.as, %.152.us..1
  %i.aw = add i64 %.152.us..1, 1
  %i.ax = select i1 %i.av, i64 %i.aw, i64 %i.as   ; 4 uses
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !94
  %i.ay = add nuw i64 %.03454.us, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !421

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.03454.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ay, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.03553.us.epil.init = phi i64 [ %.03756.us, %.lr.ph.us ], [ %i.au, %._crit_edge.us.unr-lcssa ]
  %.152.us.epil.init = phi i64 [ %.03855.us, %.lr.ph.us ], [ %i.ax, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod75)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03454.us.epil.init
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !7
  %i.bb = icmp ne i8 %i.ac, %i.ba
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.03553.us.epil.init, %i.bc     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.036, i64 %.03454.us.epil.init ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !94
  %.152.us..epil = call i64 @llvm.umin.i64(i64 %i.bf, i64 %.152.us.epil.init) ; 2 uses
  %i.bg = icmp ugt i64 %i.bd, %.152.us..epil
  %i.bh = add i64 %.152.us..epil, 1
  %i.bi = select i1 %i.bg, i64 %i.bh, i64 %i.bd   ; 2 uses
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !94
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ax, %._crit_edge.us.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 3 uses
  %i.bj = add nuw i64 %.03756.us, 1               ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bj, %i.f
  br i1 %exitcond62.not, label %._crit_edge58, label %.lr.ph.us, !llvm.loop !422

._crit_edge58:                                    ; preds = %._crit_edge.us
  %.not.i43 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i43, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i44

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i44: ; preds = %._crit_edge58
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #49
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i44, %._crit_edge58, %.thread, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  %.0 = phi i64 [ %i.c, %.thread ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.f, %bb.c ], [ 0, %bb.b ], [ %.lcssa, %._crit_edge58 ], [ %.lcssa, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i44 ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12eval_as_boolENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef captures(none) dead_on_return %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.promoted.i.i = load i64, ptr %i.c, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i = icmp eq i64 %.promoted.i.i, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not4.i.i, label %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.promoted.i2.pr.i = phi i64 [ %i.g, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.a ] ; 5 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  switch i8 %i.e, label %.lr.ph.i3.i [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !79
  %i.g = add i64 %.promoted.i2.pr.i, -1           ; 3 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %.lr.ph.i.i, !llvm.loop !83

.lr.ph.i3.i:                                      ; preds = %.lr.ph.i.i, %bb.c
  %i.h = phi i64 [ %i.l, %bb.c ], [ %.promoted.i2.pr.i, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  switch i8 %i.k, label %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i3.i, %.lr.ph.i3.i, %.lr.ph.i3.i, %.lr.ph.i3.i
  %i.l = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !82
  %.not.i4.i = icmp eq i64 %i.l, 0
  br i1 %.not.i4.i, label %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %.lr.ph.i3.i, !llvm.loop !384

_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.b, %.lr.ph.i3.i, %bb.c, %bb.a
  %i.m = phi i64 [ %i.h, %.lr.ph.i3.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ] ; 7 uses
  %i.n = phi ptr [ %i.d, %.lr.ph.i3.i ], [ %.pre, %bb.a ], [ %i.d, %bb.c ], [ %i.f, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %i.n, ptr %2, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !82
  %i.p = call noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull %i.b, i32 noundef 10) ; 0 uses
  %i.q = load i64, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.loopexit35, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.m) ; 2 uses
  %i.r = sub i64 %i.m, %spec.select.i.i           ; 2 uses
  %.not4.i.i1 = icmp eq i64 %i.r, 0
  br i1 %.not4.i.i1, label %.loopexit36, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.i.i
  br label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.preheader, %bb.e
  %i.t = phi i64 [ %i.x, %bb.e ], [ %i.r, %.lr.ph.i.i2.preheader ]
  %i.u = phi ptr [ %i.w, %bb.e ], [ %i.s, %.lr.ph.i.i2.preheader ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7
  switch i8 %i.v, label %.loopexit35 [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i2, %.lr.ph.i.i2, %.lr.ph.i.i2, %.lr.ph.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = add i64 %i.t, -1                         ; 2 uses
  %.not.i.i3 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i3, label %.loopexit36, label %.lr.ph.i.i2, !llvm.loop !83

.loopexit36:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.n, ptr %3, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.y, align 8, !tbaa !82
  %i.z = call noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %3, ptr noundef null, i32 noundef 10)
  %i.aa = icmp ne i32 %i.z, 0
  br label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17

.loopexit35:                                      ; preds = %.lr.ph.i.i2, %_ZN11OpenImageIO4v3_17Strutil15trim_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %i.n, ptr %1, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.ab, align 8, !tbaa !82
  %i.ac = call noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %.not.i4 = icmp eq i64 %i.ad, 0
  br i1 %.not.i4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit35
  %spec.select.i.i5 = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.m) ; 2 uses
  %i.ae = sub i64 %i.m, %spec.select.i.i5         ; 2 uses
  %.not4.i.i6 = icmp eq i64 %i.ae, 0
  br i1 %.not4.i.i6, label %.loopexit34, label %.lr.ph.i.i7.preheader

.lr.ph.i.i7.preheader:                            ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.i.i5
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i.i7.preheader, %bb.g
  %i.ag = phi i64 [ %i.ak, %bb.g ], [ %i.ae, %.lr.ph.i.i7.preheader ]
  %i.ah = phi ptr [ %i.aj, %bb.g ], [ %i.af, %.lr.ph.i.i7.preheader ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  switch i8 %i.ai, label %.loopexit [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i.i7, %.lr.ph.i.i7, %.lr.ph.i.i7, %.lr.ph.i.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = add i64 %i.ag, -1                       ; 2 uses
  %.not.i.i8 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i8, label %.loopexit34, label %.lr.ph.i.i7, !llvm.loop !83

.loopexit34:                                      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.al = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %i.al, ptr %4, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %i.c, align 8, !tbaa !82
  store i64 %i.an, ptr %i.am, align 8, !tbaa !82
  %i.ao = call noundef float @_ZN11OpenImageIO4v3_17Strutil4stofENS0_17basic_string_viewIcSt11char_traitsIcEEEPm(ptr noundef nonnull dead_on_return %4, ptr noundef null)
  %i.ap = fcmp une float %i.ao, 0.000000e+00
  br label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17

.loopexit:                                        ; preds = %.lr.ph.i.i7, %.loopexit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !82  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.as = load ptr, ptr %0, align 8, !tbaa !79    ; 3 uses
  %i.at = trunc i64 %i.aq to i32
  switch i32 %i.at, label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17 [
    i32 5, label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit
    i32 2, label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit13
    i32 3, label %bb.i
  ]

_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit: ; preds = %bb.h
  %i.au = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_15c_locE, align 8, !tbaa !248
  %i.av = call noundef i32 @strncasecmp_l(ptr noundef %i.as, ptr noundef nonnull @.str.37, i64 noundef 5, ptr noundef %i.au) #47
  %i.aw = icmp ne i32 %i.av, 0
  br label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17

_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit13: ; preds = %bb.h
  %.pre43 = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_15c_locE, align 8, !tbaa !248
  %i.ax = call noundef i32 @strncasecmp_l(ptr noundef %i.as, ptr noundef nonnull @.str.38, i64 noundef 2, ptr noundef %.pre43) #47
  %i.ay = icmp ne i32 %i.ax, 0
  br label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17

bb.i:                                             ; preds = %bb.h
  %.pre44 = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_15c_locE, align 8, !tbaa !248
  %i.az = call noundef i32 @strncasecmp_l(ptr noundef %i.as, ptr noundef nonnull @.str.39, i64 noundef 3, ptr noundef %.pre44) #47
  %i.ba = icmp ne i32 %i.az, 0
  br label %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17

_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit17: ; preds = %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit13, %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit, %bb.i, %bb.h, %.loopexit, %.loopexit34, %.loopexit36
  %.0 = phi i1 [ %i.aa, %.loopexit36 ], [ %i.ap, %.loopexit34 ], [ true, %bb.h ], [ %i.ay, %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit13 ], [ false, %.loopexit ], [ %i.ba, %bb.i ], [ %i.aw, %_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.40() #30 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #31 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::file_print_buffer", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !423
  %i.b = and i32 %i.a, 2
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.a
  tail call void @_ZN3fmt3v1215vprint_bufferedEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, ptr %4)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvE4growERNS1_6bufferIcEEm, ptr %i.e, align 8, !tbaa !428
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !430
  tail call void @flockfile(ptr noundef nonnull %0) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !432  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !433
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit, label %putc_unlocked.exit.i.i

putc_unlocked.exit.i.i:                           ; preds = %bb.b
  %i.l = tail call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 0), !inline_history !434 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !432
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !432
  br label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit

_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit: ; preds = %bb.b, %putc_unlocked.exit.i.i
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.n, %putc_unlocked.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_0
