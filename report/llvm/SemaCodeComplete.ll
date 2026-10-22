Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaCodeComplete?download=true
inline.NumInlined: 13082
inline.NumDeleted: 5708
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_113ResultBuilder9AddResultEN5clang20CodeCompletionResultEPNS1_11DeclContextEPNS1_9NamedDeclEbNS1_8QualTypeEbb:bb.a
  br i1 %i.fv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fw = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i105 to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit107

bb.ae:                                            ; preds = %bb.ac
  %i.fx = and i64 %.0.copyload.i.i.i.i.i.i.i.i105, -5
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !780
  br label %_ZNK5clang4Decl14getDeclContextEv.exit107

_ZNK5clang4Decl14getDeclContextEv.exit107:        ; preds = %bb.ad, %bb.ae
  %.0.i.i106 = phi ptr [ %i.fw, %bb.ad ], [ %i.fz, %bb.ae ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i106, i64 8
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = and i16 %i.gb, 127                      ; 2 uses
  %.not = icmp eq i16 %i.gc, 78
  br i1 %.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit107
  %i.gd = getelementptr inbounds i8, ptr %.0.i.i106, i64 -48
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = or i64 %i.ge, 2
  store i64 %i.gf, ptr %i.fo, align 8, !tbaa !94
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit107
  %i.gg = add nsw i16 %i.gc, -64
  %i.gh = icmp ult i16 %i.gg, -5
  br i1 %i.gh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds i8, ptr %.0.i.i106, i64 -64
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1605, !nonnull !56, !align !772
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 232
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !771, !nonnull !56, !align !772
  %i.gn = tail call i64 @_ZNK5clang10ASTContext10getTagTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_7TagDeclEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.gm, i32 noundef 6, i64 0, ptr noundef nonnull %i.gi, i1 noundef zeroext false) #28
  %i.go = and i64 %i.gn, -16
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = load ptr, ptr %i.gp, align 16, !tbaa !63
  %i.gr = ptrtoint ptr %i.gq to i64
  store i64 %i.gr, ptr %i.fo, align 8, !tbaa !94
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gs = and i8 %i.fm, -13
  store i8 %i.gs, ptr %i.fl, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ab, %.critedge
  br i1 %4, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !795
  %i.gv = add i32 %i.gu, 2
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !795
  %i.gw = load i8, ptr %i.fl, align 8
  %i.gx = or i8 %i.gw, 2
  store i8 %i.gx, ptr %i.fl, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder27AdjustResultPriorityForDeclERN5clang20CodeCompletionResultE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !1593, !range !55, !noundef !56
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hb = load i32, ptr %i.c, align 8, !tbaa !794
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %1, align 8, !tbaa !93
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 28
  %i.hf = load i32, ptr %i.he, align 4            ; 2 uses
  %i.hg = and i32 %i.hf, 124
  %i.hh = icmp eq i32 %i.hg, 36
  br i1 %i.hh, label %.critedge80, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = and i32 %i.hf, 127
  %i.hj = add nsw i32 %i.hi, -50
  %i.hk = icmp ult i32 %i.hj, 3
  br i1 %i.hk, label %.critedge80, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !1592, !range !55, !noundef !56
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.aq, label %.critedge82

bb.aq:                                            ; preds = %bb.ap
  %i.ho = load ptr, ptr %1, align 8, !tbaa !816   ; 8 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 28
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = and i32 %i.hq, 124
  %i.hs = icmp ne i32 %i.hr, 36
  %.not73164 = icmp eq ptr %i.ho, null
  %.not73 = or i1 %.not73164, %i.hs
  br i1 %.not73, label %.critedge82, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ht = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ho) #28
  br i1 %i.ht, label %.critedge82, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hu = tail call fastcc i64 @"_ZZN12_GLOBAL__N_113ResultBuilder9AddResultEN5clang20CodeCompletionResultEPNS1_11DeclContextEPNS1_9NamedDeclEbNS1_8QualTypeEbbENK3$_0clEPKNS1_13CXXMethodDeclE"(ptr noundef %i.ho) ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !1804 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, %i.hu
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !795
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !795
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ib = tail call i64 @_ZN5clangmiENS_10QualifiersES0_(i64 %i.hw, i64 %i.hu)
  %.not165 = icmp eq i64 %i.ib, 0
  br i1 %.not165, label %bb.av, label %.critedge80

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ic = tail call noundef i32 @_ZNK5clang13CXXMethodDecl15getRefQualifierEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ho)
  switch i32 %i.ic, label %bb.ay [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !1597
  %.not74 = icmp eq i32 %i.ie, 1
  %i.if = trunc i64 %i.hu to i1
  %or.cond159 = or i1 %.not74, %i.if
  br i1 %or.cond159, label %bb.ay, label %.critedge80

bb.ax:                                            ; preds = %bb.av
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !1597
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %.critedge80, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.ik, align 8, !tbaa !94
  store ptr %2, ptr %10, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.il, align 8
  %i.im = call fastcc noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPN5clang11DeclContextEmEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_EixEOS6_(ptr noundef nonnull align 1 dereferenceable(1) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %10) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.val = load i64, ptr %i.im, align 8            ; 3 uses
  %i.in = icmp ult i64 %.val, 8
  br i1 %i.in, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.val83 = load i32, ptr %i.io, align 8
  %i.ip = and i64 %.val, 4
  %.not.i111 = icmp eq i64 %i.ip, 0
  %i.iq = and i64 %.val, -5                       ; 3 uses
  br i1 %.not.i111, label %.lr.ph, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !68 ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = or i64 %i.it, 4
  %i.iv = inttoptr i64 %i.iq to ptr
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !67
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.iy
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = or i64 %i.ja, 4
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit: ; preds = %bb.ay, %bb.ba
  %.sroa.0.1.i154 = phi i64 [ %i.iu, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.jb, %bb.ba ], [ 0, %bb.ay ] ; 2 uses
  %.not223 = icmp eq i64 %.sroa.0.1.i154, %.sroa.0.0.i
  br i1 %.not223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit
  %.sroa.0.0.i219 = phi i64 [ %.sroa.0.0.i, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ 0, %bb.az ]
  %.sroa.4.1.i153218 = phi i32 [ 0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ %.val83, %bb.az ]
  %.sroa.0.1.i154217 = phi i64 [ %.sroa.0.1.i154, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ %i.iq, %bb.az ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %.critedge76
  %.sroa.0123.0171 = phi i64 [ %.sroa.0.1.i154217, %.lr.ph ], [ %spec.select161, %.critedge76 ] ; 2 uses
  %.sroa.8.0170 = phi i32 [ %.sroa.4.1.i153218, %.lr.ph ], [ %spec.select160, %.critedge76 ] ; 2 uses
  %i.jd = and i64 %.sroa.0123.0171, 4
  %i.je = icmp ne i64 %i.jd, 0                    ; 3 uses
  %i.jf = and i64 %.sroa.0123.0171, -5            ; 3 uses
  %.not.not1.i = icmp eq i64 %i.jf, 0
  %.not.not.i = or i1 %i.je, %.not.not1.i
  br i1 %.not.not.i, label %bb.bc, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit

bb.bc:                                            ; preds = %bb.bb
  %i.jg = inttoptr i64 %i.jf to ptr
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit: ; preds = %bb.bb, %bb.bc
  %.sroa.3.1.i = phi i32 [ %.sroa.3.0.copyload.i, %bb.bc ], [ %.sroa.8.0170, %bb.bb ]
  %i.jh = zext i32 %.sroa.3.1.i to i64
  %i.ji = load ptr, ptr %0, align 8, !tbaa !1594
  %i.jj = getelementptr inbounds nuw [96 x i8], ptr %i.ji, i64 %i.jh ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !816
  %i.jl = load i32, ptr %i.jc, align 8, !tbaa !1597
  %i.jm = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %i.jn = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %i.jm) #29
  %i.jo = tail call fastcc noundef i32 @_ZL16compareOverloadsRKN5clang13CXXMethodDeclES2_RKNS_10QualifiersENS_13ExprValueKindERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(168) %i.ho, ptr noundef nonnull align 8 dereferenceable(168) %i.jk, i32 noundef %i.jl, ptr noundef nonnull align 8 dereferenceable(23904) %i.jn)
  switch i32 %i.jo, label %.critedge76 [
    i32 1, label %bb.bd
    i32 2, label %.critedge80
  ]

bb.bd:                                            ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit
  %i.jp = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN5clang20CodeCompletionResultaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.jj, ptr noundef nonnull align 8 dereferenceable(96) %1) #28 ; 0 uses
  br label %.critedge80

.critedge76:                                      ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit
  %i.jq = add nuw i64 %i.jf, 20
  %spec.select160 = select i1 %i.je, i32 %.sroa.8.0170, i32 0 ; 2 uses
  %spec.select161 = select i1 %i.je, i64 %i.jq, i64 0 ; 2 uses
  %i.jr = icmp ne i64 %spec.select161, %.sroa.0.0.i219
  %i.js = icmp ne i32 %spec.select160, 0
  %spec.select.i.not.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %spec.select.i.not.i, label %bb.bb, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge76, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !1567
  %i.jv = load ptr, ptr %0, align 8, !tbaa !1594
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = sdiv exact i64 %i.jy, 96
  %i.ka = trunc i64 %i.jz to i32
  tail call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3AddEPKN5clang9NamedDeclEj(ptr noundef nonnull align 8 dereferenceable(12) %i.im, ptr noundef nonnull %i.ho, i32 noundef %i.ka)
  br label %.critedge82

.critedge82:                                      ; preds = %._crit_edge, %bb.aq, %bb.ar, %bb.ap
  %i.kb = load i8, ptr %i.fl, align 8
  %i.kc = select i1 %6, i8 32, i8 0
  %i.kd = and i8 %i.kb, -33
  %i.ke = or disjoint i8 %i.kd, %i.kc
  store i8 %i.ke, ptr %i.fl, align 8
  %i.kf = load ptr, ptr %1, align 8, !tbaa !816
  %i.kg = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113ResultBuilder19canFunctionBeCalledEPKN5clang9NamedDeclENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef %i.kf, i64 %5)
  %i.kh = xor i1 %7, true
  %i.ki = and i1 %i.kg, %i.kh
  %i.kj = load i8, ptr %i.fl, align 8
  %i.kk = select i1 %i.ki, i8 64, i8 0
  %i.kl = and i8 %i.kj, -65
  %i.km = or disjoint i8 %i.kl, %i.kk
  store i8 %i.km, ptr %i.fl, align 8
  tail call void @_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br i1 %i.ej, label %.critedge80, label %bb.be

bb.be:                                            ; preds = %.critedge82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 36, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZNSt6vectorIN5clang9FixItHintESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 8 dereferenceable(24) %i.ko)
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 32, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder26MaybeAddConstructorResultsEN5clang20CodeCompletionResultE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr nofree noundef align 8 dereferenceable(96) %11)
  call void @_ZN5clang20CodeCompletionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #28
  br label %.critedge80

.critedge80:                                      ; preds = %.lr.ph.i.i, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratordeEv.exit, %bb.aw, %bb.bd, %bb.ao, %bb.an, %bb.be, %.critedge82, %bb.ax, %bb.au, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.q, %_ZL13isConstructorPKN5clang4DeclE.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.m, %bb.d, %bb.c, %.critedge80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang18SemaCodeCompletion30CodeCompleteOffsetOfDesignatorENS_8QualTypeERKNS_11DesignationE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::CodeCompletionContext", align 8 ; 13 uses
  %4 = alloca %class.anon.1824, align 8           ; 4 uses
  %5 = alloca %"class.clang::CodeCompletionContext", align 8 ; 15 uses
  %6 = alloca %"class.(anonymous namespace)::ResultBuilder", align 8 ; 16 uses
  %7 = alloca %"class.(anonymous namespace)::CodeCompletionDeclConsumer", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %0, ptr %4, align 8, !tbaa !1806
  %i.a = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !771, !nonnull !56, !align !772
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = ptrtoint ptr %4 to i64
  %i.f = call fastcc i64 @_ZL17getDesignatedTypeRN5clang10ASTContextENS_8QualTypeERKNS_11DesignationERNS_17HeuristicResolverEN4llvm12function_refIFPKNS_9FieldDeclEPNS_10RecordDeclERKNS_10DesignatorEEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.c, i64 %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr nonnull @"_ZN4llvm12function_refIFPKN5clang9FieldDeclEPNS1_10RecordDeclERKNS1_10DesignatorEEE11callback_fnIZNS1_18SemaCodeCompletion30CodeCompleteOffsetOfDesignatorENS1_8QualTypeERKNS1_11DesignationEE3$_0EES4_lS6_S9_", i64 %i.e) ; 4 uses
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %_ZL15getAsRecordDeclN5clang8QualTypeERNS_17HeuristicResolverE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i64 @_ZN5clang17HeuristicResolver12simplifyTypeENS_8QualTypeEPKNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 %i.f, ptr noundef null, i1 noundef zeroext false) #28
  %i.i = call noundef ptr @_ZNK5clang17HeuristicResolver20resolveTypeToTagDeclENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 %i.h) #28 ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZL15getAsRecordDeclN5clang8QualTypeERNS_17HeuristicResolverE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = add nsw i32 %i.l, -59
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %_ZNSt6vectorIN5clang9FixItHintESaIS1_EED2Ev.exit, label %_ZL15getAsRecordDeclN5clang8QualTypeERNS_17HeuristicResolverE.exit.thread

_ZNSt6vectorIN5clang9FixItHintESaIS1_EED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 10, ptr %5, align 8, !tbaa !1550
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 0, ptr %i.o, align 4, !tbaa !1551
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i8 0, ptr %i.q, align 8, !tbaa !1552
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1553
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 8, ptr %i.t, align 8, !tbaa !1554
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 108
  store i32 0, ptr %i.u, align 4, !tbaa !1555
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store i8 1, ptr %i.v, align 8, !tbaa !1556
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.f, ptr %i.w, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.x = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1539 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !919
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef nonnull align 8 dereferenceable(80) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.z) #28
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !1539 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !919
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(40) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #28
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilderC2ERN5clang4SemaERNS1_23CodeCompletionAllocatorERNS1_20CodeCompletionTUInfoERKNS1_21CodeCompletionContextEMS0_KFbPKNS1_9NamedDeclEE(ptr noundef nonnull align 8 dereferenceable(496) %6, ptr noundef nonnull align 8 dereferenceable(18640) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(184) %5, i64 ptrtoint (ptr @_ZNK12_GLOBAL__N_113ResultBuilder15IsOffsetofFieldEPKN5clang9NamedDeclE to i64), i64 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ak = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #28
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1564
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !1564
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_126CodeCompletionDeclConsumerE, i64 16), ptr %7, align 8, !tbaa !919
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.aq, align 8, !tbaa !1599
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !1603
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.ax, i8 0, i64 26, i1 false)
  %i.ay = load i16, ptr %i.aw, align 8
  %i.az = and i16 %i.ay, 127
  %i.ba = add nsw i16 %i.az, -60
  %i.bb = icmp ult i16 %i.ba, 3
  %spec.select.i.i.i14 = select i1 %i.bb, ptr %i.i, ptr null
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %spec.select.i.i.i14, ptr %i.bc, align 8, !tbaa !1604
  store i64 %i.f, ptr %i.as, align 8, !tbaa !60
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !1539
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = and i8 %i.bg, 32
  %i.bi = icmp ne i8 %i.bh, 0
  call void @_ZN5clang4Sema18LookupVisibleDeclsEPNS_11DeclContextENS0_14LookupNameKindERNS_19VisibleDeclConsumerEbbb(ptr noundef nonnull align 8 dereferenceable(18640) %i.bd, ptr noundef nonnull %i.ap, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %i.bi) #28
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1573 ; 3 uses
  %i.bl = load i64, ptr %i.am, align 8, !tbaa !1564
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %i.am, align 8, !tbaa !1564
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call fastcc void @_ZN4llvm8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 40) #30
  %i.bo = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !56, !align !772
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !1539 ; 3 uses
  %.val10 = load ptr, ptr %6, align 8, !tbaa !1574 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val11 = load ptr, ptr %i.bq, align 8, !tbaa !1574 ; 2 uses
  %i.br = icmp eq ptr %.val10, %.val11
  %spec.select.i = select i1 %i.br, ptr null, ptr %.val10
  %i.bs = ptrtoint ptr %.val11 to i64
  %i.bt = ptrtoint ptr %.val10 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 96
  %i.bw = trunc i64 %i.bv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i15 = icmp eq ptr %i.bp, null
  br i1 %.not.i15, label %_ZL25HandleCodeCompleteResultsPN5clang4SemaEPNS_20CodeCompleteConsumerERKNS_21CodeCompletionContextEPNS_20CodeCompletionResultEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5clang9FixItHintESaIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %i.bx, i64 40, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 392
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !1552
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !1552, !range !55, !noundef !56
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.e, label %_ZN5clang21CodeCompletionContextC2ERKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 344
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113ResultBuilder14MaybeAddResultEN5clang20CodeCompletionResultEPNS1_11DeclContextE:bb.a
  br i1 %.not.i.i1.i.i, label %_ZN5clang20CodeCompletionResultD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !1571
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #30
  br label %_ZN5clang20CodeCompletionResultD2Ev.exit

_ZN5clang20CodeCompletionResultD2Ev.exit:         ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i, %bb.k
  %i.cn = load ptr, ptr %i.ag, align 8, !tbaa !1569 ; 3 uses
  %i.co = load ptr, ptr %i.ah, align 8, !tbaa !1570 ; 2 uses
  %.not4.i.i.i.i109 = icmp eq ptr %i.cn, %i.co
  br i1 %.not4.i.i.i.i109, label %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i117, label %.lr.ph.i.i.i.i110

.lr.ph.i.i.i.i110:                                ; preds = %_ZN5clang20CodeCompletionResultD2Ev.exit, %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113
  %.05.i.i.i.i111 = phi ptr [ %i.cv, %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113 ], [ %i.cn, %_ZN5clang20CodeCompletionResultD2Ev.exit ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i111, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !845 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i111, i64 40 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i112: ; preds = %.lr.ph.i.i.i.i110
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !60
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #30
  br label %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113

_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113: ; preds = %.lr.ph.i.i.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i112
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i111, i64 64 ; 2 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cv, %i.co
  br i1 %.not.i.i.i.i114, label %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exitthread-pre-split.i.i115, label %.lr.ph.i.i.i.i110, !llvm.loop !5

_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exitthread-pre-split.i.i115: ; preds = %_ZSt8_DestroyIN5clang9FixItHintEEvPT_.exit.i.i.i.i113
  %.pr.i.i116 = load ptr, ptr %i.ag, align 8, !tbaa !1569
  br label %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i117

_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i117: ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exitthread-pre-split.i.i115, %_ZN5clang20CodeCompletionResultD2Ev.exit
  %i.cw = phi ptr [ %.pr.i.i116, %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exitthread-pre-split.i.i115 ], [ %i.cn, %_ZN5clang20CodeCompletionResultD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i118 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i.i118, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i117
  %i.cx = load ptr, ptr %i.aj, align 8, !tbaa !1571
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZSt8_DestroyIPN5clang9FixItHintEEvT_S3_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_.exit

.thread:                                          ; preds = %bb.e
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !919
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #28, !inline_history !2 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.dg = load i32, ptr %i.df, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.dh = load ptr, ptr %1, align 8, !tbaa !816
  %i.di = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_113ResultBuilder17isInterestingDeclEPKN5clang9NamedDeclERb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br i1 %i.di, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.thread
  %i.dj = load ptr, ptr %1, align 8, !tbaa !816   ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = and i32 %i.dl, 127                      ; 2 uses
  %i.dn = icmp ne i32 %i.dm, 72
  %.not2.i = icmp eq ptr %i.dj, null
  %.not.i121 = or i1 %.not2.i, %i.dn
  br i1 %.not.i121, label %_ZL13isConstructorPKN5clang4DeclE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !885
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.pre3.i = and i32 %.pre.i, 127
  br label %_ZL13isConstructorPKN5clang4DeclE.exit

_ZL13isConstructorPKN5clang4DeclE.exit:           ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i32 [ %.pre3.i, %bb.o ], [ %i.dm, %bb.n ]
  %i.dq = icmp eq i32 %.pre-phi.i, 39
  br i1 %i.dq, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_ZL13isConstructorPKN5clang4DeclE.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1573 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.dv, align 8, !tbaa !94 ; 2 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !1842, !noalias !2495 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1843, !noalias !2495 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !1844, !noalias !2495 ; 4 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = add i32 %i.ea, -1                       ; 2 uses
  %i.ed = mul i64 %.sroa.0.0.copyload.i, -4658895280553007687 ; 2 uses
  %i.ee = lshr i64 %i.ed, 31
  %i.ef = xor i64 %i.ee, %i.ed
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = and i32 %i.ec, %i.eg                    ; 3 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 5
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !64, !noalias !2496
  %i.em = and i32 %i.eh, 31
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i1
  br i1 %i.eo, label %.lr.ph.i.i.i.i122, label %.loopexit.i.i, !prof !1657

.lr.ph.i.i.i.i122:                                ; preds = %bb.q, %bb.r
  %i.ep = phi i64 [ %i.eu, %bb.r ], [ %i.ei, %bb.q ]
  %.0143.i.i.i.i = phi i32 [ %i.et, %bb.r ], [ %i.eh, %bb.q ]
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.ep ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eq, align 8, !tbaa !94, !noalias !2496
  %i.er = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.er, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit, label %bb.r, !prof !860

bb.r:                                             ; preds = %.lr.ph.i.i.i.i122
  %i.es = add nuw i32 %.0143.i.i.i.i, 1
  %i.et = and i32 %i.es, %i.ec                    ; 3 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = lshr i64 %i.eu, 5
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !64, !noalias !2496
  %i.ey = and i32 %i.et, 31
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i1
  br i1 %i.fa, label %.lr.ph.i.i.i.i122, label %.loopexit.i.i, !prof !1658

.loopexit.i.i:                                    ; preds = %bb.r, %bb.q, %bb.p
  %i.fb = zext i32 %i.ea to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.fb
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i122
  %.pre332 = zext i32 %i.ea to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre332, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit ], [ %i.fb, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.eq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit ], [ %i.fc, %.loopexit.i.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.pre-phi
  %.not297 = icmp eq ptr %.lcssa.sink.i.i, %i.fd
  br i1 %.not297, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %.val69 = load i64, ptr %i.fe, align 8          ; 3 uses
  %i.ff = icmp ult i64 %.val69, 8
  br i1 %i.ff, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr i8, ptr %.lcssa.sink.i.i, i64 16
  %.val70 = load i32, ptr %i.fg, align 8
  %i.fh = and i64 %.val69, 4
  %.not.i123 = icmp eq i64 %i.fh, 0
  %i.fi = and i64 %.val69, -5                     ; 3 uses
  br i1 %.not.i123, label %.lr.ph.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = or i64 %i.fl, 4
  %i.fn = inttoptr i64 %i.fi to ptr
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !67
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fq
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = or i64 %i.fs, 4
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit: ; preds = %bb.u, %bb.s, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit
  %.sroa.0255.0 = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit ], [ %i.ft, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %.sroa.0258.0 = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit ], [ %i.fm, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %.not394 = icmp eq i64 %.sroa.0258.0, %.sroa.0255.0
  br i1 %.not394, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit
  %.sroa.9262.0369 = phi i32 [ 0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ %.val70, %bb.t ]
  %.sroa.0258.0368 = phi i64 [ %.sroa.0258.0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ %i.fi, %bb.t ]
  %.sroa.0255.0367 = phi i64 [ %.sroa.0255.0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ], [ 0, %bb.t ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge65
  %.sroa.9262.1308 = phi i32 [ %spec.select291, %.critedge65 ], [ %.sroa.9262.0369, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0258.1307 = phi i64 [ %spec.select292, %.critedge65 ], [ %.sroa.0258.0368, %.lr.ph.preheader ] ; 2 uses
  %i.fu = and i64 %.sroa.0258.1307, 4
  %i.fv = icmp ne i64 %i.fu, 0                    ; 3 uses
  %i.fw = and i64 %.sroa.0258.1307, -5            ; 3 uses
  %i.fx = inttoptr i64 %i.fw to ptr               ; 3 uses
  %.not.not1.i.i = icmp eq i64 %i.fw, 0
  %.not.not.i.i = or i1 %i.fv, %.not.not1.i.i
  br i1 %.not.not.i.i, label %bb.v, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit135

bb.v:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fx, align 8
  %.sroa.3.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.3.0.copyload.i.i134 = load i32, ptr %.sroa.3.0..sroa_idx.i.i133, align 8
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit135

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit135: ; preds = %.lr.ph, %bb.v
  %.sroa.0.1.i.i282 = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.v ], [ %i.fx, %.lr.ph ] ; 2 uses
  %.sroa.3.1.i.i128 = phi i32 [ %.sroa.3.0.copyload.i.i134, %bb.v ], [ %.sroa.9262.1308, %.lr.ph ]
  %i.fy = load ptr, ptr %.sroa.0.1.i.i282, align 8, !tbaa !919
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = tail call noundef ptr %i.ga(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.0.1.i.i282) #28, !inline_history !2
  %.not63 = icmp eq ptr %i.gb, %i.de
  br i1 %.not63, label %bb.w, label %.critedge65

bb.w:                                             ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit135
  %i.gc = load ptr, ptr %1, align 8, !tbaa !816
  %i.gd = zext i32 %.sroa.3.1.i.i128 to i64
  %i.ge = load ptr, ptr %0, align 8, !tbaa !1594
  %i.gf = getelementptr inbounds nuw [96 x i8], ptr %i.ge, i64 %i.gd
  store ptr %i.gc, ptr %i.gf, align 8, !tbaa !816
  br label %.loopexit

.critedge65:                                      ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit135
  %i.gg = add nuw i64 %i.fw, 20
  %spec.select291 = select i1 %i.fv, i32 %.sroa.9262.1308, i32 0 ; 2 uses
  %spec.select292 = select i1 %i.fv, i64 %i.gg, i64 0 ; 2 uses
  %i.gh = icmp ne i64 %spec.select292, %.sroa.0255.0367
  %i.gi = icmp ne i32 %spec.select291, 0
  %spec.select.i.not.i = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %spec.select.i.not.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2484

._crit_edge.loopexit:                             ; preds = %.critedge65
  %.pre329 = load ptr, ptr %i.ds, align 8, !tbaa !1573
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit
  %i.gj = phi ptr [ %.pre329, %._crit_edge.loopexit ], [ %i.dt, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit ] ; 2 uses
  %.sroa.0240.0313 = load ptr, ptr %i.dr, align 8, !tbaa !1591 ; 2 uses
  %.not298314 = icmp eq ptr %.sroa.0240.0313, %i.gj
  br i1 %.not298314, label %._crit_edge318, label %.lr.ph317

.lr.ph317:                                        ; preds = %._crit_edge
  %i.gk = and i32 %i.dg, 141033472
  %i.gl = icmp ne i32 %i.gk, 0                    ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph317, %.critedge67
  %.sroa.0240.0315 = phi ptr [ %.sroa.0240.0313, %.lr.ph317 ], [ %.sroa.0240.0, %.critedge67 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0240.0315, i64 16
  %i.gn = load ptr, ptr %1, align 8, !tbaa !816
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %.sroa.0.0.copyload.i136 = load i64, ptr %i.go, align 8, !tbaa !94 ; 2 uses
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !1842, !noalias !2497 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0240.0315, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1843, !noalias !2497 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0240.0315, i64 36
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1844, !noalias !2497 ; 4 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.loopexit.i.i137, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = add i32 %i.gt, -1                       ; 2 uses
  %i.gw = mul i64 %.sroa.0.0.copyload.i136, -4658895280553007687 ; 2 uses
  %i.gx = lshr i64 %i.gw, 31
  %i.gy = xor i64 %i.gx, %i.gw
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = and i32 %i.gv, %i.gz                    ; 3 uses
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = lshr i64 %i.hb, 5
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !64, !noalias !2498
  %i.hf = and i32 %i.ha, 31
  %i.hg = lshr i32 %i.he, %i.hf
  %i.hh = trunc i32 %i.hg to i1
  br i1 %i.hh, label %.lr.ph.i.i.i.i140, label %.loopexit.i.i137, !prof !1657

.lr.ph.i.i.i.i140:                                ; preds = %bb.y, %bb.z
  %i.hi = phi i64 [ %i.hn, %bb.z ], [ %i.hb, %bb.y ]
  %.0143.i.i.i.i141 = phi i32 [ %i.hm, %bb.z ], [ %i.ha, %bb.y ]
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %i.hi ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i142 = load i64, ptr %i.hj, align 8, !tbaa !94, !noalias !2498
  %i.hk = icmp eq i64 %.sroa.0.0.copyload.i136, %.sroa.0.0.copyload.i.i.i.i142
  br i1 %i.hk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143.loopexit, label %bb.z, !prof !860

bb.z:                                             ; preds = %.lr.ph.i.i.i.i140
  %i.hl = add nuw i32 %.0143.i.i.i.i141, 1
  %i.hm = and i32 %i.hl, %i.gv                    ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = lshr i64 %i.hn, 5
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !64, !noalias !2498
  %i.hr = and i32 %i.hm, 31
  %i.hs = lshr i32 %i.hq, %i.hr
  %i.ht = trunc i32 %i.hs to i1
  br i1 %i.ht, label %.lr.ph.i.i.i.i140, label %.loopexit.i.i137, !prof !1658

.loopexit.i.i137:                                 ; preds = %bb.z, %bb.y, %bb.x
  %i.hu = zext i32 %i.gt to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %i.hu
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143.loopexit: ; preds = %.lr.ph.i.i.i.i140
  %.pre333 = zext i32 %i.gt to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143.loopexit, %.loopexit.i.i137
  %.pre-phi334 = phi i64 [ %.pre333, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143.loopexit ], [ %i.hu, %.loopexit.i.i137 ]
  %.lcssa.sink.i.i138 = phi ptr [ %i.hj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143.loopexit ], [ %i.hv, %.loopexit.i.i137 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %.pre-phi334
  %.not300 = icmp eq ptr %.lcssa.sink.i.i138, %i.hw
  br i1 %.not300, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143
  %i.hx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i138, i64 8
  %.val = load i64, ptr %i.hx, align 8            ; 3 uses
  %i.hy = icmp ult i64 %.val, 8
  br i1 %i.hy, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hz = getelementptr i8, ptr %.lcssa.sink.i.i138, i64 16
  %.val68 = load i32, ptr %i.hz, align 8
  %i.ia = and i64 %.val, 4
  %.not.i147 = icmp eq i64 %i.ia, 0
  %i.ib = and i64 %.val, -5                       ; 3 uses
  br i1 %.not.i147, label %.lr.ph312.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !68 ; 2 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = or i64 %i.ie, 4
  %i.ig = inttoptr i64 %i.ib to ptr
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !67
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ij
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = or i64 %i.il, 4
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157: ; preds = %bb.ac, %bb.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143
  %.sroa.0229.0 = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143 ], [ %i.if, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.0226.0 = phi i64 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit143 ], [ %i.im, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.not395 = icmp eq i64 %.sroa.0229.0, %.sroa.0226.0
  br i1 %.not395, label %.critedge67, label %.lr.ph312.preheader

.lr.ph312.preheader:                              ; preds = %bb.ab, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157
  %.sroa.0226.0378 = phi i64 [ %.sroa.0226.0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157 ], [ 0, %bb.ab ]
  %.sroa.0229.0377 = phi i64 [ %.sroa.0229.0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157 ], [ %i.ib, %bb.ab ]
  %.sroa.12.0376 = phi i32 [ 0, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157 ], [ %.val68, %bb.ab ]
  br label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201
  %.sroa.0229.1311 = phi i64 [ %spec.select294, %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201 ], [ %.sroa.0229.0377, %.lr.ph312.preheader ] ; 2 uses
  %.sroa.12.1310 = phi i32 [ %spec.select293, %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201 ], [ %.sroa.12.0376, %.lr.ph312.preheader ]
  %i.in = and i64 %.sroa.0229.1311, 4
  %i.io = icmp ne i64 %i.in, 0                    ; 3 uses
  %i.ip = and i64 %.sroa.0229.1311, -5            ; 3 uses
  %i.iq = inttoptr i64 %i.ip to ptr               ; 9 uses
  %.not.not1.i.i159 = icmp eq i64 %i.ip, 0
  %.not.not.i.i160 = or i1 %i.io, %.not.not1.i.i159 ; 2 uses
  br i1 %.not.not.i.i160, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168.thread

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168: ; preds = %.lr.ph312
  %.sroa.0.0.copyload.i.i165 = load ptr, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i165, i64 28
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = and i32 %i.is, 1056899072
  %i.iu = icmp eq i32 %i.it, 393216
  %i.iv = and i1 %i.gl, %i.iu
  br i1 %i.iv, label %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178.thread

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168.thread: ; preds = %.lr.ph312
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 28
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = and i32 %i.ix, 1056899072
  %i.iz = icmp eq i32 %i.iy, 393216
  %i.ja = and i1 %i.gl, %i.iz
  br i1 %i.ja, label %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178: ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168.thread
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 28
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = or i32 %i.jc, %i.dg
  %i.je = and i32 %i.jd, 4194304
  %or.cond = icmp eq i32 %i.je, 0
  br i1 %or.cond, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit188

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178.thread: ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168
  %.sroa.0.0.copyload.i.i175 = load ptr, ptr %i.iq, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i175, i64 28
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = or i32 %i.jg, %i.dg
  %i.ji = and i32 %i.jh, 4194304
  %or.cond382 = icmp eq i32 %i.ji, 0
  br i1 %or.cond382, label %.critedge.thread, label %.thread383

.thread383:                                       ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178.thread
  %.sroa.0.0.copyload.i.i185 = load ptr, ptr %i.iq, align 8
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit188

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit188: ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178, %.thread383
  %.sroa.0.1.i.i182 = phi ptr [ %.sroa.0.0.copyload.i.i185, %.thread383 ], [ %i.iq, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i182, i64 28
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = xor i32 %i.jk, %i.dg
  %i.jm = and i32 %i.jl, 1073676288
  %.not62 = icmp eq i32 %i.jm, 0
  br i1 %.not62, label %.critedge, label %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201

.critedge:                                        ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit188
  br i1 %.not.not.i.i160, label %.critedge.thread, label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198

.critedge.thread:                                 ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178.thread, %.critedge
  %.sroa.0.0.copyload.i.i195 = load ptr, ptr %i.iq, align 8
  br label %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198

_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198: ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178, %.critedge, %.critedge.thread
  %.sroa.0.1.i.i192 = phi ptr [ %.sroa.0.0.copyload.i.i195, %.critedge.thread ], [ %i.iq, %.critedge ], [ %i.iq, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit178 ]
  %i.jn = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113ResultBuilder17CheckHiddenResultERN5clang20CodeCompletionResultEPNS1_11DeclContextEPKNS1_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2, ptr noundef %.sroa.0.1.i.i192)
  br i1 %i.jn, label %.loopexit, label %.critedge67

_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201: ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168.thread, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit188, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit168
  %i.jo = add nuw i64 %i.ip, 20
  %spec.select293 = select i1 %i.io, i32 %.sroa.12.1310, i32 0 ; 2 uses
  %spec.select294 = select i1 %i.io, i64 %i.jo, i64 0 ; 2 uses
  %i.jp = icmp ne i64 %spec.select294, %.sroa.0226.0378
  %i.jq = icmp ne i32 %spec.select293, 0
  %spec.select.i.not.i158 = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %spec.select.i.not.i158, label %.lr.ph312, label %.critedge67, !llvm.loop !2493

.critedge67:                                      ; preds = %_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorppEv.exit201, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3endEv.exit157, %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198
  %.sroa.0240.0 = load ptr, ptr %.sroa.0240.0315, align 8, !tbaa !1591 ; 2 uses
  %.not298 = icmp eq ptr %.sroa.0240.0, %i.gj
  br i1 %.not298, label %._crit_edge318, label %bb.x, !llvm.loop !2494

._crit_edge318:                                   ; preds = %.critedge67, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm15SmallPtrSetImplIPKN5clang4DeclEE6insertES4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.2252") align 8 %5, ptr noundef nonnull align 8 dereferenceable(17) %i.jr, ptr noundef nonnull %i.de)
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jt = load i8, ptr %i.js, align 8, !tbaa !1847, !range !55, !noundef !56
  %i.ju = trunc nuw i8 %i.jt to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.ju, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %._crit_edge318
  %i.jv = load i8, ptr %i.b, align 1, !tbaa !932, !range !55, !noundef !56
  %i.jw = trunc nuw i8 %i.jv to i1                ; 2 uses
  br i1 %i.jw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 8
  %i.jz = or i8 %i.jy, 8                          ; 2 uses
  store i8 %i.jz, ptr %i.jx, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 75, ptr %i.ka, align 8, !tbaa !795
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder27AdjustResultPriorityForDeclERN5clang20CodeCompletionResultE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre331 = load i8, ptr %.phi.trans.insert, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kb = phi i8 [ %.pre331, %bb.af ], [ %i.jz, %bb.ae ] ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.kd = and i8 %i.kb, 4
  %.not56 = icmp eq i8 %i.kd, 0
  br i1 %.not56, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !904
  %i.kg = icmp eq i64 %i.kf, 0
  %i.kh = and i8 %i.kb, 8
  %.not57 = icmp eq i8 %i.kh, 0
  %or.cond295 = and i1 %.not57, %i.kg
  br i1 %or.cond295, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.ki = load ptr, ptr %1, align 8, !tbaa !816
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8 ; 3 uses
  %i.kk = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.km = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

bb.ak:                                            ; preds = %bb.ai
  %i.kn = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !780
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.aj, %bb.ak
  %.0.i.i = phi ptr [ %i.km, %bb.aj ], [ %i.kp, %bb.ak ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.kr = load i16, ptr %i.kq, align 8
  %i.ks = and i16 %i.kr, 127                      ; 2 uses
  %.not299 = icmp eq i16 %i.ks, 78
  br i1 %.not299, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.kt = getelementptr inbounds i8, ptr %.0.i.i, i64 -48
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = or i64 %i.ku, 2
  store i64 %i.kv, ptr %i.ke, align 8, !tbaa !94
  br label %bb.ap

bb.am:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.kw = add nsw i16 %i.ks, -64
  %i.kx = icmp ult i16 %i.kw, -5
  br i1 %i.kx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = getelementptr inbounds i8, ptr %.0.i.i, i64 -64
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1605, !nonnull !56, !align !772
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 232
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !771, !nonnull !56, !align !772
  %i.ld = call i64 @_ZNK5clang10ASTContext10getTagTypeENS_21ElaboratedTypeKeywordENS_19NestedNameSpecifierEPKNS_7TagDeclEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.lc, i32 noundef 6, i64 0, ptr noundef nonnull %i.ky, i1 noundef zeroext false) #28
  %i.le = and i64 %i.ld, -16
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = load ptr, ptr %i.lf, align 16, !tbaa !63
  %i.lh = ptrtoint ptr %i.lg to i64
  store i64 %i.lh, ptr %i.ke, align 8, !tbaa !94
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.li = and i8 %i.kb, -13
  store i8 %i.li, ptr %i.kc, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao, %bb.an, %bb.ah, %bb.ag
  %i.lj = load ptr, ptr %1, align 8, !tbaa !816
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %.sroa.0.0.copyload.i204 = load i64, ptr %i.lk, align 8, !tbaa !94
  %i.ll = call fastcc noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang15DeclarationNameEN12_GLOBAL__N_113ResultBuilder14ShadowMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixEOS3_(ptr noundef nonnull align 1 dereferenceable(1) %i.du, i64 %.sroa.0.0.copyload.i204)
  %i.lm = load ptr, ptr %1, align 8, !tbaa !816
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !1567
  %i.lp = load ptr, ptr %0, align 8, !tbaa !1594
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = sdiv exact i64 %i.ls, 96
  %i.lu = trunc i64 %i.lt to i32
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder14ShadowMapEntry3AddEPKN5clang9NamedDeclEj(ptr noundef nonnull align 8 dereferenceable(12) %i.ll, ptr noundef %i.lm, i32 noundef %i.lu)
  call void @_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br i1 %i.jw, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 36, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZNSt6vectorIN5clang9FixItHintESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(24) %i.lw)
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %i.kc, i64 32, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_113ResultBuilder26MaybeAddConstructorResultsEN5clang20CodeCompletionResultE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr nofree noundef align 8 dereferenceable(96) %6)
  call void @_ZN5clang20CodeCompletionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #28
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK12_GLOBAL__N_113ResultBuilder14ShadowMapEntry8iteratorptEv.exit198, %bb.w, %bb.ap, %bb.aq, %._crit_edge318, %_ZL13isConstructorPKN5clang4DeclE.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5clang20CodeCompletionResultESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.m, %bb.d, %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang18SemaCodeCompletion29CodeCompleteObjCForCollectionEPNS_5ScopeENS_9OpaquePtrINS_12DeclGroupRefEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::SemaCodeCompletion::CodeCompleteExpressionData", align 8 ; 9 uses
  %4 = alloca %"class.clang::DeclGroupRef", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %3, i8 0, i64 11, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !815
  store i8 1, ptr %i.a, align 1, !tbaa !1682
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %2, ptr %4, align 8
  %i.f = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = and i64 %i.f, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.0.i = select i1 %i.h, ptr %4, ptr %i.k        ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_ZN5clang12DeclGroupRef3endEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 8, !tbaa !2501
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  br label %_ZN5clang12DeclGroupRef3endEv.exit

_ZN5clang12DeclGroupRef3endEv.exit:               ; preds = %bb.c, %bb.d
  %.0.i10 = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.not815 = icmp eq ptr %.0.i, %.0.i10
  br i1 %.not815, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit, %_ZN5clang12DeclGroupRef3endEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
end_hunk_1
