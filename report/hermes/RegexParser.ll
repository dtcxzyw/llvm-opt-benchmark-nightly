inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE17consumeAtomEscapeEv:bb.a
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond32 = select i1 %.not, i1 true, i1 %i.fs
  br i1 %or.cond32, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  store ptr %i.ft, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.fu, ptr %11, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.fv, align 8, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 5, ptr %i.fw, align 4, !tbaa !30
  %.not.i.i71 = icmp eq ptr %i.ft, %i.f
  br i1 %.not.i.i71, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i72

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i72: ; preds = %bb.al
  %i.fx = load i16, ptr %i.ft, align 2, !tbaa !31
  %i.fy = icmp eq i16 %i.fx, 60
  br i1 %i.fy, label %bb.am, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread

bb.am:                                            ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i72
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.fz, ptr %i.c, align 8, !tbaa !15
  %i.ga = call noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE19tryConsumeGroupNameERN4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br i1 %i.ga, label %.critedge34, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread: ; preds = %bb.al, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i72, %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !17
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.an, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit74

bb.an:                                            ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread
  store i32 14, ptr %i.gb, align 8, !tbaa !17
  %i.ge = load ptr, ptr %i.e, align 8, !tbaa !16
  store ptr %i.ge, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit74

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit74: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit73.thread, %bb.an
  %i.gf = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fu
  br i1 %i.gg, label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit74
  call void @free(ptr noundef %i.gf) #15
  br label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit:           ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit74, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

.critedge34:                                      ; preds = %bb.am
  %i.gh = load ptr, ptr %0, align 8, !tbaa !7
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE16pushNamedBackRefEON4llvh11SmallVectorIDsLj5EEE(ptr noundef nonnull align 8 dereferenceable(336) %i.gh, ptr noundef nonnull align 8 dereferenceable(26) %11)
  %i.gi = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fu
  br i1 %i.gj, label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit75, label %bb.ap

bb.ap:                                            ; preds = %.critedge34
  call void @free(ptr noundef %i.gi) #15
  br label %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit75

_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit75:         ; preds = %.critedge34, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.aq:                                            ; preds = %bb.ak
  %i.gk = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 304
  store i8 1, ptr %i.gl, align 8, !tbaa !413
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.aq
  %i.gm = phi ptr [ %.pre, %._crit_edge ], [ %i.gk, %bb.aq ] ; 2 uses
  %i.gn = tail call noundef i32 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE22consumeCharacterEscapeEv(ptr noundef nonnull align 8 dereferenceable(41) %0) ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 136 ; 2 uses
  %.sroa.0.0.copyload.i.i76 = load i8, ptr %i.go, align 8, !tbaa !18 ; 4 uses
  %i.gp = and i8 %.sroa.0.0.copyload.i.i76, 1
  %.not.i77 = icmp eq i8 %i.gp, 0
  br i1 %.not.i77, label %_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = and i8 %.sroa.0.0.copyload.i.i76, 8
  %i.gr = icmp ne i8 %i.gq, 0                     ; 2 uses
  %i.gs = icmp ult i32 %i.gn, 128
  br i1 %i.gs, label %bb.at, label %bb.au, !prof !44

bb.at:                                            ; preds = %bb.as
  %i.gt = and i32 %i.gn, 95                       ; 2 uses
  %i.gu = add nsw i32 %i.gt, -65
  %or.cond17.i.i82 = icmp ult i32 %i.gu, 26
  %i.gv = select i1 %i.gr, i32 32, i32 0
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %.015.i.i83 = select i1 %or.cond17.i.i82, i32 %i.gw, i32 %i.gn
  br label %_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79

bb.au:                                            ; preds = %bb.as
  %i.gx = tail call noundef i32 @_ZN6hermes12canonicalizeEjb(i32 noundef %i.gn, i1 noundef zeroext %i.gr) #15
  %.sroa.0.0.copyload.i6.pre.i78 = load i8, ptr %i.go, align 8, !tbaa !18
  br label %_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79

_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79: ; preds = %bb.au, %bb.at, %bb.ar
  %.sroa.0.0.copyload.i6.i80 = phi i8 [ %.sroa.0.0.copyload.i.i76, %bb.ar ], [ %.sroa.0.0.copyload.i.i76, %bb.at ], [ %.sroa.0.0.copyload.i6.pre.i78, %bb.au ]
  %.0.i81 = phi i32 [ %i.gn, %bb.ar ], [ %.015.i.i83, %bb.at ], [ %i.gx, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.gy, ptr %1, align 8, !tbaa !27
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ha, align 4, !tbaa !30
  store i32 %.0.i81, ptr %i.gy, align 8
  store i32 1, ptr %i.gz, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i8 %.sroa.0.0.copyload.i6.i80, ptr %2, align 1
  %i.hb = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.gm, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.hc = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gy
  br i1 %i.hd, label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit84, label %bb.av

bb.av:                                            ; preds = %_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79
  call void @free(ptr noundef %i.hc) #15
  br label %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit84

_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit84: ; preds = %_ZN6hermes5regex16UTF16RegexTraits12canonicalizeEjb.exit.i79, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit: ; preds = %bb.u, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit70, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit60, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit, %_ZN4llvh11SmallVectorIDsLj5EED2Ev.exit75, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit84, %_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE8pushCharEj.exit, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.hermes::CodePointRange", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %class.anon.252, align 8            ; 9 uses
  %3 = alloca %"class.llvh::Optional.253", align 8 ; 12 uses
  %4 = alloca %"class.llvh::Optional.253", align 8 ; 9 uses
  %5 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::ClassAtom", align 8 ; 6 uses
  %6 = alloca %"struct.hermes::regex::Parser<hermes::regex::Regex<hermes::regex::UTF16RegexTraits>, const char16_t *>::ClassAtom", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.e, %i.j
  br i1 %.not.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i: ; preds = %bb.a
  %i.k = load i16, ptr %i.e, align 2, !tbaa !31
  %i.l = icmp eq i16 %i.k, 94
  br i1 %i.l, label %bb.b, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit

bb.b:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.m, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit: ; preds = %bb.a, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i, %bb.b
  %i.n = phi i8 [ 1, %bb.b ], [ 0, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.o = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.n, ptr %i.a, align 1, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BracketNodeIS2_EEJRS2_RbRNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.b, align 8, !tbaa !414
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.b, ptr %2, align 8, !tbaa !416
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4

._crit_edge:                                      ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %.lcssa = phi ptr [ %i.s, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit ], [ %8, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.c:                                             ; preds = %._crit_edge
  store i32 4, ptr %i.ag, align 8, !tbaa !17
  store ptr %.lcssa, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit
  %i.aj = phi ptr [ %i.r, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph ], [ %7, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit ] ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31
  %i.al = icmp eq i16 %i.ak, 93
  br i1 %i.al, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.am, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeBracketClassAtomEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.253") align 8 %3, ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.an = load i8, ptr %i.u, align 8, !tbaa !418, !range !278, !noundef !242
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit, !llvm.loop !423

bb.d:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !15  ; 3 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !16
  %.not.i.i6 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i6, label %bb.e, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7: ; preds = %bb.d
  %i.ar = load i16, ptr %i.ap, align 2, !tbaa !31
  %i.as = icmp eq i16 %i.ar, 45
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7, %bb.d
  %i.at = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br i1 %i.at, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit, label %.thread, !llvm.loop !423

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.f:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.au, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeBracketClassAtomEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.253") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.av = load i8, ptr %i.v, align 8, !tbaa !418, !range !278, !noundef !242
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 45, ptr %5, align 8, !tbaa !424
  store i8 0, ptr %i.w, align 2, !tbaa !434
  store i8 0, ptr %i.x, align 8, !tbaa !435
  %i.ay = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %select.unfold, !llvm.loop !423

bb.h:                                             ; preds = %bb.f
  %.pre = load i8, ptr %i.aa, align 2, !range !278 ; 2 uses
  %.pre39 = load i8, ptr %i.ab, align 2, !range !278 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %i.y, align 8, !tbaa !436, !range !278, !noundef !242
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load i8, ptr %i.z, align 8, !range !278
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bc
  %i.bd = trunc nuw i8 %.pre to i1
  %or.cond18 = select i1 %or.cond, i1 true, i1 %i.bd
  %i.be = trunc nuw i8 %.pre39 to i1
  %or.cond22 = select i1 %or.cond18, i1 true, i1 %i.be
  br i1 %or.cond22, label %bb.j, label %.thread59

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.backedge, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit.sink.split

bb.k:                                             ; preds = %bb.h
  %.pre41 = trunc nuw i8 %.pre to i1
  %.pre42 = trunc nuw i8 %.pre39 to i1
  %i.bh = select i1 %.pre41, i1 true, i1 %.pre42
  br i1 %i.bh, label %bb.l, label %.thread59

bb.l:                                             ; preds = %bb.k
  %i.bi = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 45, ptr %6, align 8, !tbaa !424
  store i8 0, ptr %i.ae, align 2, !tbaa !434
  store i8 0, ptr %i.af, align 8, !tbaa !435
  %i.bj = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bk = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 0 uses
  br label %select.unfold, !llvm.loop !423

.thread59:                                        ; preds = %bb.i, %bb.k
  %i.bl = load i32, ptr %3, align 8, !tbaa !424   ; 3 uses
  %i.bm = load i32, ptr %4, align 8, !tbaa !424   ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread59
  %i.bo = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.backedge, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit.sink.split

bb.n:                                             ; preds = %.thread59
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !414 ; 2 uses
  %i.br = sub nuw i32 %i.bm, %i.bl
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = call { ptr, ptr } @_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_(ptr noundef %i.bv, ptr noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0      ; 6 uses
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1      ; 6 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = call noundef ptr @_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

bb.q:                                             ; preds = %bb.o
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cg = load i32, ptr %1, align 8, !tbaa !3     ; 2 uses
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cf, i32 %i.cg) ; 2 uses
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !437
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !439
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !437
  %i.co = add i32 %i.cn, %i.cl
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.co)
  %i.cp = sub i32 %.sroa.speculated.i.i, %i.ch
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.cs = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cc to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp sgt i64 %i.cx, 8
  br i1 %i.cy, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr nonnull align 4 %i.cc, i64 %i.cx, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = icmp eq i64 %i.cx, 8
  br i1 %i.cz, label %bb.t, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.da = load i64, ptr %i.cc, align 4
  store i64 %i.da, ptr %i.cq, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 %i.cx
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.bw, align 8, !tbaa !29
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit: ; preds = %bb.n, %bb.p, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit

.backedge:                                        ; preds = %bb.m, %bb.j
  store i32 7, ptr %i.ac, align 8, !tbaa !17
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !16
  store ptr %i.di, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit.sink.split

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit.sink.split: ; preds = %.backedge, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit: ; preds = %bb.e, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %7 = load ptr, ptr %i.c, align 8, !tbaa !15     ; 2 uses
  %8 = load ptr, ptr %i.i, align 8, !tbaa !16     ; 2 uses
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %._crit_edge, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4, !llvm.loop !423

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit.loopexit.sink.split, %.thread, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18, !noalias !440 ; 7 uses
  %.sroa.0.0.copyload.i = load i8, ptr %1, align 1, !tbaa !18, !noalias !440
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LeftAnchorNodeE, i64 16), ptr %i.a, align 8, !tbaa !195, !noalias !440
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i8 %.sroa.0.0.copyload.i, 2
  %.lobit.i.i = and i8 %i.c, 1
  store i8 %.lobit.i.i, ptr %i.b, align 8, !tbaa !443, !noalias !440
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !178
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !180  ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !25
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.y = add i64 %i.l, -8
  %i.z = sub i64 %i.y, %i.m                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep19 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.ak = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %wide.load21 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !453, !noalias !450
  store <2 x i64> %wide.load21, ptr %i.al, align 8, !tbaa !25, !alias.scope !453, !noalias !450
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !25, !alias.scope !450, !noalias !445
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !448, !noalias !445
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !445, !noalias !448
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !448, !noalias !445
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !456

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #16
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.v, ptr %i.d, align 8, !tbaa !180
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !178
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47
  %.not.i.i4 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.av, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex14LeftAnchorNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !49 ; 4 uses
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #18 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.a, ptr %i.bl, align 8, !tbaa !25
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
end_hunk_0
