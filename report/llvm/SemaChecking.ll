Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaChecking?download=true
inline.NumInlined: 16706
inline.NumDeleted: 6578
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5clang4Sema9checkCallEPNS_9NamedDeclEPKNS_17FunctionProtoTypeEPKNS_4ExprEN4llvm8ArrayRefIS8_EEbNS_14SourceLocationENS_11SourceRangeENS_16VariadicCallTypeE:bb.a
_ZNK4llvm14SmallBitVector9referencecvbEv.exit:    ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit
  %i.gb = lshr i32 %.0169489, 6
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !1152
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gc
  %i.gf = and i32 %.0169489, 63
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !1130
  %i.gh = zext nneg i32 %i.gf to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = and i64 %i.gg, %i.gi
  %.not433 = icmp eq i64 %i.gj, 0
  br i1 %.not433, label %.critedge, label %bb.ag

.critedge:                                        ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit, %.split, %.split387, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit
  call void @_ZN5clang4Sema21checkVariadicArgumentEPKNS_4ExprENS_16VariadicCallTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.fm, i32 noundef %9) #31
  br label %bb.ag

bb.ag:                                            ; preds = %.split387, %_ZNK4llvm14SmallBitVector9referencecvbEv.exit, %.critedge, %.lr.ph
  %i.gk = add i32 %.0169489, 1                    ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = icmp ugt i64 %5, %i.gl
  br i1 %i.gm, label %.lr.ph, label %.loopexit448, !llvm.loop !2130

.loopexit448:                                     ; preds = %bb.ag, %_ZN4llvm15isa_and_nonnullIJN5clang14ObjCMethodDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclENS1_9NamedDeclEEEDaPT0_.exit
  %.not202615 = phi i1 [ false, %_ZN4llvm15isa_and_nonnullIJN5clang14ObjCMethodDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread ], [ true, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclENS1_9NamedDeclEEEDaPT0_.exit ], [ false, %bb.ag ] ; 2 uses
  %.0.i.i611 = phi ptr [ %.0.i.i610620625, %_ZN4llvm15isa_and_nonnullIJN5clang14ObjCMethodDeclEEPNS1_9NamedDeclEEEbRKT0_.exit.thread ], [ %spec.select.i.i.i, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclENS1_9NamedDeclEEEDaPT0_.exit ], [ %.0.i.i610620625, %bb.ag ] ; 2 uses
  %.not206 = icmp eq ptr %.0.i.i611, null
  br i1 %.not206, label %.loopexit448.thread, label %.thread637

.loopexit448.thread:                              ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclENS1_9NamedDeclEEEDaPT0_.exit.thread, %.loopexit448
  %.not202612 = phi i1 [ %.not202615, %.loopexit448 ], [ true, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclENS1_9NamedDeclEEEDaPT0_.exit.thread ]
  %i.gn = icmp ne ptr %1, null                    ; 2 uses
  %i.go = icmp ne ptr %2, null
  %or.cond = or i1 %i.gn, %i.go
  br i1 %or.cond, label %bb.ah, label %.critedge226

.thread637:                                       ; preds = %.loopexit448, %bb.aa
  %.not202613 = phi i1 [ false, %bb.aa ], [ %.not202615, %.loopexit448 ]
  %.0.i.i609 = phi ptr [ %spec.select.i.i.i, %bb.aa ], [ %.0.i.i611, %.loopexit448 ] ; 3 uses
  call void @_ZN5clang4Sema22checkLifetimeCaptureByEPNS_12FunctionDeclEbPKNS_4ExprEN4llvm8ArrayRefIS5_EE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i.i609, i1 noundef zeroext %6, ptr noundef %3, ptr %4, i64 %5)
  %i.gp = icmp ne ptr %1, null                    ; 2 uses
  %i.gq = icmp ne ptr %2, null
  %or.cond641 = or i1 %i.gp, %i.gq
  br i1 %or.cond641, label %bb.ah, label %.thread425.thread

bb.ah:                                            ; preds = %.thread637, %.loopexit448.thread
  %i.gr = phi i1 [ %i.gp, %.thread637 ], [ %i.gn, %.loopexit448.thread ]
  %.not206391646 = phi i1 [ false, %.thread637 ], [ true, %.loopexit448.thread ] ; 5 uses
  %.0.i.i608645 = phi ptr [ %.0.i.i609, %.thread637 ], [ null, %.loopexit448.thread ] ; 5 uses
  %.not202612642 = phi i1 [ %.not202613, %.thread637 ], [ %.not202612, %.loopexit448.thread ]
  %.sroa.0100.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !1152
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !1149
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [792 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -792
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !1202
  %i.ha = and i32 %i.gz, -2
  %spec.select.i.i.i257 = icmp eq i32 %i.ha, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.hc = load i8, ptr %i.hb, align 8, !range !1111
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = select i1 %spec.select.i.i.i257, i1 true, i1 %i.hd
  br i1 %i.he, label %_ZL21CheckNonNullArgumentsRN5clang4SemaEPKNS_9NamedDeclEPKNS_17FunctionProtoTypeEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store i64 1, ptr %12, align 8, !tbaa !1436
  br i1 %.not201, label %.critedge.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, 256
  %.not.i.i.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i, label %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i

_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i: ; preds = %bb.aj
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1152 ; 2 uses
  %.pre.i.i = load i32, ptr %i.hf, align 4
  %.pre4.i.i = and i32 %.pre.i.i, 256
  %i.hk = icmp eq i32 %.pre4.i.i, 0
  br i1 %i.hk, label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i
  %i.hl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1152
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !1149
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hp
  br label %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i

_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i: ; preds = %bb.ak, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i, %bb.aj
  %i.hr = phi ptr [ %i.hj, %bb.ak ], [ %i.hj, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i ], [ null, %bb.aj ]
  %i.hs = phi ptr [ %i.hq, %bb.ak ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_11NonNullAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i ], [ null, %bb.aj ] ; 5 uses
  %i.ht = trunc i64 %5 to i32                     ; 2 uses
  %.not93205.i = icmp eq i64 %5, 0
  br label %bb.al

bb.al:                                            ; preds = %.loopexit193.i, %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i
  %.sroa.0148.0.i = phi ptr [ %i.hr, %_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i ], [ %i.ki, %.loopexit193.i ] ; 8 uses
  %i.hu = icmp ult ptr %.sroa.0148.0.i, %i.hs
  br i1 %i.hu, label %.lr.ph.i.i.i.i, label %bb.an

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.07.1.i.i.i = phi ptr [ %i.hz, %bb.am ], [ %.sroa.0148.0.i, %bb.al ] ; 3 uses
  %i.hv = load ptr, ptr %.sroa.07.1.i.i.i, align 8, !tbaa !1205
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  %i.hx = load i16, ptr %i.hw, align 4
  %i.hy = icmp eq i16 %i.hx, 109
  br i1 %i.hy, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i107.i = icmp eq ptr %i.hz, %i.hs
  br i1 %.not.i.i.i107.i, label %.critedge.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

bb.an:                                            ; preds = %bb.al
  %.not2.i3.i.i.i = icmp eq ptr %i.hs, %.sroa.0148.0.i
  br i1 %.not2.i3.i.i.i, label %.critedge.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.an, %bb.ao
  %.sroa.0.1.i.i.i = phi ptr [ %i.ie, %bb.ao ], [ %i.hs, %bb.an ] ; 3 uses
  %i.ia = load ptr, ptr %.sroa.0.1.i.i.i, align 8, !tbaa !1205
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 36
  %i.ic = load i16, ptr %i.ib, align 4
  %i.id = icmp eq i16 %i.ic, 109
  br i1 %i.id, label %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ie, %.sroa.0148.0.i
  br i1 %.not.i5.i.i.i, label %.critedge.i, label %.lr.ph.i4.i.i.i, !llvm.loop !9

_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i: ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.07.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0148.0.i, %.lr.ph.i4.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hs, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.i, %.lr.ph.i4.i.i.i ]
  %.not187.i = icmp eq ptr %.sroa.07.0.i.i.i, %.sroa.0.0.i.i.i
  br i1 %.not187.i, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i
  %i.if = load ptr, ptr %.sroa.0148.0.i, align 8, !tbaa !1205 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.ih = load i16, ptr %i.ig, align 4
  %i.ii = icmp eq i16 %i.ih, 109
  br i1 %i.ii, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, label %.lr.ph.i.i.i263

.lr.ph.i.i.i263:                                  ; preds = %bb.ap, %.lr.ph.i.i.i263
  %i.ij = phi ptr [ %i.ik, %.lr.ph.i.i.i263 ], [ %.sroa.0148.0.i, %bb.ap ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !1205 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 36
  %i.in = load i16, ptr %i.im, align 4
  %i.io = icmp eq i16 %i.in, 109
  br i1 %i.io, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, label %.lr.ph.i.i.i263, !llvm.loop !10

_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i: ; preds = %.lr.ph.i.i.i263, %bb.ap
  %.sroa.0148.1.i = phi ptr [ %.sroa.0148.0.i, %bb.ap ], [ %i.ik, %.lr.ph.i.i.i263 ]
  %i.ip = phi ptr [ %i.if, %bb.ap ], [ %i.il, %.lr.ph.i.i.i263 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !1474 ; 2 uses
  %.not92.not.i = icmp eq i32 %i.ir, 0            ; 2 uses
  br i1 %.not92.not.i, label %bb.aq, label %.lr.ph.preheader.i

bb.aq:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i
  br i1 %.not93205.i, label %.loopexit.loopexit227.i, label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.aq, %bb.as
  %.082206.i = phi ptr [ %i.iv, %bb.as ], [ %4, %bb.aq ] ; 2 uses
  %i.is = load ptr, ptr %.082206.i, align 8, !tbaa !1154 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.sroa.0.0.copyload.i108.i = load i64, ptr %i.it, align 8, !tbaa !1129
  %i.iu = call noundef zeroext i1 @_ZN5clang4Sema22isValidPointerAttrTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i108.i, i1 noundef zeroext false) #31
  br i1 %i.iu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph207.i
  call fastcc void @_ZL20CheckNonNullArgumentRN5clang4SemaEPKNS_4ExprENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.is, i32 %.sroa.0100.0.copyload)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph207.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.082206.i, i64 8 ; 2 uses
  %.not93.i = icmp eq ptr %i.iv, %i.h
  br i1 %.not93.i, label %.loopexit193.i, label %.lr.ph207.i

.lr.ph.preheader.i:                               ; preds = %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !1475 ; 2 uses
  %i.iy = zext i32 %i.ir to i64
  %.idx219.i = shl nuw nsw i64 %i.iy, 2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.idx219.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm14SmallBitVector3setEj.exit.i, %.lr.ph.preheader.i
  %.085204.i = phi ptr [ %i.kh, %_ZN4llvm14SmallBitVector3setEj.exit.i ], [ %i.ix, %.lr.ph.preheader.i ] ; 2 uses
  %i.ja = load i32, ptr %.085204.i, align 4       ; 2 uses
  %i.jb = and i32 %i.ja, 1073741823
  %33 = add nsw i32 %i.jb, -1
  %34 = shl i32 %i.ja, 1
  %35 = ashr i32 %34, 31
  %i.jc = add nsw i32 %33, %35                    ; 3 uses
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %.not105.i = icmp ugt i64 %5, %i.jd
  br i1 %.not105.i, label %bb.at, label %_ZN4llvm14SmallBitVector3setEj.exit.i

bb.at:                                            ; preds = %.lr.ph.i
  %i.je = load i64, ptr %12, align 8, !tbaa !1436 ; 5 uses
  %i.jf = trunc i64 %i.je to i1
  br i1 %i.jf, label %.split.i, label %_ZNK4llvm14SmallBitVector5emptyEv.exit.i

.split.i:                                         ; preds = %bb.at
  %i.jg = icmp ult i64 %i.je, 288230376151711744
  br i1 %i.jg, label %bb.au, label %bb.av

_ZNK4llvm14SmallBitVector5emptyEv.exit.i:         ; preds = %bb.at
  %i.jh = inttoptr i64 %i.je to ptr
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !1435
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit.i, %.split.i
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.ht, i1 noundef zeroext false)
  %.pre.i264 = load i64, ptr %12, align 8, !tbaa !1436
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK4llvm14SmallBitVector5emptyEv.exit.i, %.split.i
  %i.jl = phi i64 [ %i.je, %.split.i ], [ %.pre.i264, %bb.au ], [ %i.je, %_ZNK4llvm14SmallBitVector5emptyEv.exit.i ] ; 5 uses
  %i.jm = trunc i64 %i.jl to i1
  br i1 %i.jm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jn = lshr i64 %i.jl, 1
  %i.jo = lshr i64 %i.jl, 58
  %i.jp = shl nsw i64 -1, %i.jo
  %i.jq = xor i64 %i.jp, -1
  %i.jr = shl nuw i64 1, %i.jd
  %i.js = or i64 %i.jn, %i.jr
  %i.jt = and i64 %i.js, %i.jq
  %i.ju = shl nuw i64 %i.jt, 1
  %i.jv = and i64 %i.jl, -288230376151711743
  %i.jw = or i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %12, align 8, !tbaa !1436
  br label %_ZN4llvm14SmallBitVector3setEj.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.jx = inttoptr i64 %i.jl to ptr
  %i.jy = and i32 %i.jc, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl nuw i64 1, %i.jz
  %i.kb = lshr i32 %i.jc, 6
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !1152
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kc ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1130
  %i.kg = or i64 %i.kf, %i.ka
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !1130
  br label %_ZN4llvm14SmallBitVector3setEj.exit.i

_ZN4llvm14SmallBitVector3setEj.exit.i:            ; preds = %bb.ax, %bb.aw, %.lr.ph.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.085204.i, i64 4 ; 2 uses
  %.not94.i = icmp eq ptr %i.kh, %i.iz
  br i1 %.not94.i, label %.loopexit193.i, label %.lr.ph.i

.loopexit193.i:                                   ; preds = %_ZN4llvm14SmallBitVector3setEj.exit.i, %bb.as
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0148.1.i, i64 8
  br i1 %.not92.not.i, label %.loopexit.loopexit227.i, label %bb.al

.critedge.i:                                      ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, %bb.an, %bb.ao, %bb.am
  %i.kj = load i32, ptr %i.hf, align 4
  %i.kk = and i32 %i.kj, 127                      ; 2 uses
  switch i32 %i.kk, label %.critedge.thread.i [
    i32 40, label %bb.ay
    i32 39, label %bb.ay
    i32 38, label %bb.ay
    i32 37, label %bb.ay
    i32 36, label %bb.ay
    i32 35, label %bb.ay
    i32 20, label %bb.ay
  ]

bb.ay:                                            ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  %i.kl = icmp samesign ult i32 %i.kk, 35
  br i1 %i.kl, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1297
  %i.ko = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #31
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !1476
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !1471
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0144.0.i = phi ptr [ %i.kq, %bb.ba ], [ %i.kn, %bb.az ] ; 2 uses
  %.sroa.7.0.in.i = phi i32 [ %i.ks, %bb.ba ], [ %i.ko, %bb.az ] ; 2 uses
  %.sroa.7.0.i = zext i32 %.sroa.7.0.in.i to i64
  %.idx220.i = shl nuw nsw i64 %.sroa.7.0.i, 3
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.i, i64 %.idx220.i
  %.not103208.i = icmp eq i32 %.sroa.7.0.in.i, 0
  br i1 %.not103208.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread.i, label %.lr.ph211.i

.lr.ph211.i:                                      ; preds = %bb.bb, %_ZN4llvm14SmallBitVector3setEj.exit116.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4llvm14SmallBitVector3setEj.exit116.i ], [ 0, %bb.bb ] ; 4 uses
  %.083210.i = phi ptr [ %i.mr, %_ZN4llvm14SmallBitVector3setEj.exit116.i ], [ %.sroa.0144.0.i, %bb.bb ] ; 2 uses
  %i.ku = load ptr, ptr %.083210.i, align 8, !tbaa !1299 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 28
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = and i32 %i.kw, 256
  %.not.i.i259 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i259, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph211.i
  %i.ky = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ku) #31 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !1152 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !1149 ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.lc, 3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i.i260 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i.i260, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i, label %.lr.ph.i.i.i.i.i.i261

.lr.ph.i.i.i.i.i.i261:                            ; preds = %bb.bc, %bb.bd
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.li, %bb.bd ], [ %i.kz, %bb.bc ] ; 3 uses
  %i.le = load ptr, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !1205
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 36
  %i.lg = load i16, ptr %i.lf, align 4
  %i.lh = icmp eq i16 %i.lg, 109
  br i1 %i.lh, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i.i.i261
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i262 = icmp eq ptr %i.li, %i.ld
  br i1 %.not.i.i.i.i.i.i262, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i, label %.lr.ph.i.i.i.i.i.i261, !llvm.loop !9

_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i261
  %.not189.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i, %i.ld
  br i1 %.not189.i, label %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i, label %bb.be

_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i: ; preds = %bb.bd, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.i, %bb.bc, %.lr.ph211.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  %.sroa.0.0.copyload.i114.i = load i64, ptr %i.lj, align 8, !tbaa !1129
  %i.lk = and i64 %.sroa.0.0.copyload.i114.i, -16
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = load ptr, ptr %i.ll, align 16, !tbaa !1324
  %i.ln = call i8 @_ZNK5clang4Type14getNullabilityEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lm) #31
  %i.lo = icmp eq i8 %i.ln, 1
  br i1 %i.lo, label %bb.be, label %_ZN4llvm14SmallBitVector3setEj.exit116.i

bb.be:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.thread169.i, %_ZNK5clang4Decl7hasAttrINS_11NonNullAttrEEEbv.exit.i
  %i.lp = load i64, ptr %12, align 8, !tbaa !1436 ; 5 uses
  %i.lq = trunc i64 %i.lp to i1
  br i1 %i.lq, label %.split171.i, label %_ZNK4llvm14SmallBitVector5emptyEv.exit115.i

.split171.i:                                      ; preds = %bb.be
  %i.lr = icmp ult i64 %i.lp, 288230376151711744
  br i1 %i.lr, label %bb.bf, label %bb.bg

_ZNK4llvm14SmallBitVector5emptyEv.exit115.i:      ; preds = %bb.be
  %i.ls = inttoptr i64 %i.lp to ptr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !1435
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNK4llvm14SmallBitVector5emptyEv.exit115.i, %.split171.i
  call void @_ZN4llvm14SmallBitVector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.ht, i1 noundef zeroext false)
  %.pre236.i = load i64, ptr %12, align 8, !tbaa !1436
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNK4llvm14SmallBitVector5emptyEv.exit115.i, %.split171.i
  %i.lw = phi i64 [ %i.lp, %.split171.i ], [ %.pre236.i, %bb.bf ], [ %i.lp, %_ZNK4llvm14SmallBitVector5emptyEv.exit115.i ] ; 5 uses
  %i.lx = trunc i64 %i.lw to i1
  br i1 %i.lx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ly = lshr i64 %i.lw, 1
  %i.lz = lshr i64 %i.lw, 58
  %i.ma = shl nsw i64 -1, %i.lz
  %i.mb = xor i64 %i.ma, -1
  %i.mc = shl nuw i64 1, %indvars.iv.i
  %i.md = or i64 %i.ly, %i.mc
  %i.me = and i64 %i.md, %i.mb
  %i.mf = shl nuw i64 %i.me, 1
  %i.mg = and i64 %i.lw, -288230376151711743
  %i.mh = or i64 %i.mf, %i.mg
  store i64 %i.mh, ptr %12, align 8, !tbaa !1436
  br label %_ZN4llvm14SmallBitVector3setEj.exit116.i

bb.bi:                                            ; preds = %bb.bg
  %i.mi = inttoptr i64 %i.lw to ptr
  %i.mj = and i64 %indvars.iv.i, 63
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = lshr i64 %indvars.iv.i, 6
  %i.mm = and i64 %i.ml, 67108863
end_hunk_0
begin_hunk_1_@_ZN5clang4Sema9checkCallEPNS_9NamedDeclEPKNS_17FunctionProtoTypeEPKNS_4ExprEN4llvm8ArrayRefIS8_EEbNS_14SourceLocationENS_11SourceRangeENS_16VariadicCallTypeE:bb.a

_ZN5clangneENS_22specific_attr_iteratorINS_10ArmNewAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not5.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.aat
  br i1 %.not5.i.i, label %.thread405, label %bb.ec

bb.ec:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_10ArmNewAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.aaz = load ptr, ptr %i.aap, align 8, !tbaa !1205 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 36
  %i.abb = load i16, ptr %i.aba, align 4
  %i.abc = icmp eq i16 %i.abb, 145
  br i1 %i.abc, label %.loopexit, label %.lr.ph.i.i.i.i300

.lr.ph.i.i.i.i300:                                ; preds = %bb.ec, %.lr.ph.i.i.i.i300
  %i.abd = phi ptr [ %i.abe, %.lr.ph.i.i.i.i300 ], [ %i.aap, %bb.ec ]
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8 ; 2 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !1205 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 36
  %i.abh = load i16, ptr %i.abg, align 4
  %i.abi = icmp eq i16 %i.abh, 145
  br i1 %i.abi, label %.loopexit, label %.lr.ph.i.i.i.i300, !llvm.loop !2141

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i300, %bb.ec
  %i.abj = phi ptr [ %i.aaz, %bb.ec ], [ %i.abf, %.lr.ph.i.i.i.i300 ] ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 48 ; 2 uses
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !2151 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 40 ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !2152
  %i.abo = zext i32 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.abo ; 2 uses
  %i.abq = call noundef ptr @_ZSt9__find_ifIPN4llvm9StringRefEN9__gnu_cxx5__ops16_Iter_equals_valIA3_KcEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %i.abl, ptr noundef %i.abp, ptr nonnull align 1 dereferenceable(3) @.str.102)
  %i.abr = icmp ne ptr %i.abq, %i.abp
  %i.abs = load ptr, ptr %i.abk, align 8, !tbaa !2151 ; 2 uses
  %i.abt = load i32, ptr %i.abm, align 8, !tbaa !2152
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [16 x i8], ptr %i.abs, i64 %i.abu ; 2 uses
  %i.abw = call noundef ptr @_ZSt9__find_ifIPN4llvm9StringRefEN9__gnu_cxx5__ops16_Iter_equals_valIA4_KcEEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %i.abs, ptr noundef %i.abv, ptr nonnull align 1 dereferenceable(4) @.str.103)
  %i.abx = icmp ne ptr %i.abw, %i.abv
  br label %.thread405

.thread405:                                       ; preds = %bb.eb, %bb.dz, %bb.ea, %_ZN5clangneENS_22specific_attr_iteratorINS_10ArmNewAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, %.loopexit
  %.0172408 = phi i1 [ %i.abr, %.loopexit ], [ false, %bb.dz ], [ false, %_ZN5clangneENS_22specific_attr_iteratorINS_10ArmNewAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ false, %bb.ea ], [ false, %bb.eb ] ; 3 uses
  %.0170 = phi i1 [ %i.abx, %.loopexit ], [ false, %bb.dz ], [ false, %_ZN5clangneENS_22specific_attr_iteratorINS_10ArmNewAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ false, %bb.ea ], [ false, %bb.eb ] ; 3 uses
  %i.aby = getelementptr inbounds i8, ptr %i.ys, i64 -24
  %.sroa.0.0.copyload.i301 = load i64, ptr %i.aby, align 8, !tbaa !1129
  %i.abz = and i64 %.sroa.0.0.copyload.i301, -16
  %i.aca = inttoptr i64 %i.abz to ptr
  %i.acb = load ptr, ptr %i.aca, align 16, !tbaa !1324 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acd = load i8, ptr %i.acc, align 16
  %.not.i303 = icmp eq i8 %i.acd, 24
  br i1 %.not.i303, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411, label %bb.ed

bb.ed:                                            ; preds = %.thread405
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ace, align 8, !tbaa !1129
  %i.acf = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.acg = inttoptr i64 %i.acf to ptr
  %i.ach = load ptr, ptr %i.acg, align 16, !tbaa !1324
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.acj = load i8, ptr %i.aci, align 16
  %i.ack = icmp eq i8 %i.acj, 24
  br i1 %i.ack, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.ed
  %i.acl = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.acb) #31 ; 2 uses
  %.not218 = icmp eq ptr %i.acl, null
  br i1 %.not218, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411: ; preds = %.thread405, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %.1.i414 = phi ptr [ %i.acl, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %i.acb, %.thread405 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %21, ptr noundef nonnull align 16 dereferenceable(48) %.1.i414)
  %i.acm = getelementptr inbounds nuw i8, ptr %21, i64 136
  %i.acn = load i16, ptr %i.acm, align 8
  %i.aco = and i16 %i.acn, 224
  %i.acp = icmp ne i16 %i.aco, 0
  %i.acq = or i1 %.0172408, %i.acp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %22, ptr noundef nonnull align 16 dereferenceable(48) %.1.i414)
  %i.acr = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.acs = load i16, ptr %i.acr, align 8
  %i.act = and i16 %i.acs, 1792
  %i.acu = icmp ne i16 %i.act, 0
  %i.acv = or i1 %.0170, %i.acu
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread: ; preds = %bb.ed, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411, %bb.dy
  %.2174 = phi i1 [ false, %bb.dy ], [ %i.acq, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411 ], [ %.0172408, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %.0172408, %bb.ed ] ; 2 uses
  %.2 = phi i1 [ false, %bb.dy ], [ %i.acv, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread411 ], [ %.0170, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ %.0170, %bb.ed ]
  %i.acw = icmp eq i32 %i.aag, 0                  ; 2 uses
  %or.cond17 = or i1 %i.acw, %.2174
  br i1 %or.cond17, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.039.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.acx, i32 %.sroa.039.0.copyload, i32 noundef 5117) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #31
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread
  %i.acy = icmp eq i32 %i.aai, 0
  %or.cond19 = or i1 %i.acy, %.2
  br i1 %or.cond19, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.038.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.acz, i32 %.sroa.038.0.copyload, i32 noundef 5118) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %24) #31
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ada = and i1 %i.acw, %i.aaj
  %or.cond23 = and i1 %i.ada, %.2174
  br i1 %or.cond23, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.037.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.adb, i32 %.sroa.037.0.copyload, i32 noundef 5115) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #31
  %.sroa.036.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.adb, i32 %.sroa.036.0.copyload, i32 noundef 6544) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %26) #31
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread395
  br i1 %.not201, label %bb.ex, label %.thread415

.thread415:                                       ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang17FunctionProtoTypeEEPKNS1_12FunctionTypeEEEbRKT0_.exit, %bb.ck, %bb.ek
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.add = load i32, ptr %i.adc, align 4
  %i.ade = and i32 %i.add, 256
  %.not.i304 = icmp eq i32 %i.ade, 0
  br i1 %.not.i304, label %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread, label %bb.el

bb.el:                                            ; preds = %.thread415
  %i.adf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !1152 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !1149 ; 2 uses
  %i.adj = zext i32 %i.adi to i64
  %.idx.i.i305 = shl nuw nsw i64 %i.adj, 3
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 %.idx.i.i305 ; 2 uses
  %.not.i.i306 = icmp eq i32 %i.adi, 0
  br i1 %.not.i.i306, label %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread, label %.lr.ph.i.i.i.i.i307

.lr.ph.i.i.i.i.i307:                              ; preds = %bb.el, %bb.em
  %.sroa.07.1.i.i.i.i308 = phi ptr [ %i.adp, %bb.em ], [ %i.adg, %bb.el ] ; 3 uses
  %i.adl = load ptr, ptr %.sroa.07.1.i.i.i.i308, align 8, !tbaa !1205
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 36
  %i.adn = load i16, ptr %i.adm, align 4
  %i.ado = icmp eq i16 %i.adn, 135
  br i1 %i.ado, label %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit, label %bb.em

bb.em:                                            ; preds = %.lr.ph.i.i.i.i.i307
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i308, i64 8 ; 2 uses
  %.not.i.i.i.i.i309 = icmp eq ptr %i.adp, %i.adk
  br i1 %.not.i.i.i.i.i309, label %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread419, label %.lr.ph.i.i.i.i.i307, !llvm.loop !2142

_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread419: ; preds = %bb.em
  br i1 %.not206391646, label %.critedge226, label %.thread425.thread

_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread: ; preds = %.thread415, %bb.el
  br i1 %.not206391646, label %.critedge226, label %.thread425.thread

_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i307
  %.not437 = icmp eq ptr %.sroa.07.1.i.i.i.i308, %i.adk
  br i1 %.not437, label %bb.ex, label %bb.en

bb.en:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit
  %i.adq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #31
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !1152 ; 2 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !1205 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 36
  %i.adu = load i16, ptr %i.adt, align 4
  %i.adv = icmp eq i16 %i.adu, 135
  br i1 %i.adv, label %_ZNK5clang4Decl7getAttrINS_14AllocAlignAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i317

.lr.ph.i.i.i.i317:                                ; preds = %bb.en, %.lr.ph.i.i.i.i317
  %i.adw = phi ptr [ %i.adx, %.lr.ph.i.i.i.i317 ], [ %i.adr, %bb.en ]
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 2 uses
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !1205 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 36
  %i.aea = load i16, ptr %i.adz, align 4
  %i.aeb = icmp eq i16 %i.aea, 135
  br i1 %i.aeb, label %_ZNK5clang4Decl7getAttrINS_14AllocAlignAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i317, !llvm.loop !2143

_ZNK5clang4Decl7getAttrINS_14AllocAlignAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i317, %bb.en
  %i.aec = phi ptr [ %i.ads, %bb.en ], [ %i.ady, %.lr.ph.i.i.i.i317 ]
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 40
  %.sroa.0.0.copyload.i318 = load i32, ptr %i.aed, align 8, !tbaa !1129 ; 2 uses
  %i.aee = and i32 %.sroa.0.0.copyload.i318, 1073741823
  %36 = add nsw i32 %i.aee, -1
  %37 = shl i32 %.sroa.0.0.copyload.i318, 1
  %38 = ashr i32 %37, 31
  %i.aef = add nsw i32 %36, %38
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aeg
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !1154 ; 6 uses
  %i.aej = load i24, ptr %i.aei, align 8
  %i.aek = and i24 %i.aej, 131072
  %.not438 = icmp eq i24 %i.aek, 0
  br i1 %.not438, label %bb.eo, label %bb.ex

bb.eo:                                            ; preds = %_ZNK5clang4Decl7getAttrINS_14AllocAlignAttrEEEPT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  store i8 0, ptr %27, align 8, !tbaa !1303
  %i.ael = getelementptr inbounds nuw i8, ptr %27, i64 1
  store i8 0, ptr %i.ael, align 1, !tbaa !1304
  %i.aem = getelementptr inbounds nuw i8, ptr %27, i64 2
  store i8 0, ptr %i.aem, align 2, !tbaa !1305
  %i.aen = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.aen, align 8, !tbaa !1306
  %i.aeo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store i32 0, ptr %i.aeo, align 8, !tbaa !1310
  %i.aep = getelementptr inbounds nuw i8, ptr %27, i64 20 ; 2 uses
  %i.aeq = load i8, ptr %i.aep, align 4
  %i.aer = and i8 %i.aeq, -2
  store i8 %i.aer, ptr %i.aep, align 4
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.aeu = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.aei, ptr noundef nonnull align 8 dereferenceable(72) %27, ptr noundef nonnull align 8 dereferenceable(23904) %i.aet, i32 noundef 0, i1 noundef zeroext false) #31
  br i1 %i.aeu, label %bb.ep, label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  %i.aev = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.aex = load i32, ptr %i.aew, align 8, !tbaa !1247
  %i.aey = icmp ult i32 %i.aex, 65
  br i1 %i.aey, label %bb.eq, label %.split422

bb.eq:                                            ; preds = %bb.ep
  %i.aez = load i64, ptr %i.aev, align 8, !tbaa !1129
  %i.afa = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aez)
  %or.cond428 = icmp eq i64 %i.afa, 1
  br i1 %or.cond428, label %bb.er, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

.split422:                                        ; preds = %bb.ep
  %i.afb = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.aev) #32
  br i1 %i.afb, label %bb.er, label %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread

_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread:        ; preds = %bb.eq, %.split422
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afd = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aei) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.afc, i32 %i.afd, i32 noundef 6684) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  %i.afe = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aei) #32
  store i64 %i.afe, ptr %29, align 8
  %i.aff = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %28, ptr noundef nonnull align 4 dereferenceable(8) %29) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.split422, %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.afg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 64, ptr %i.afg, align 8, !tbaa !1247, !alias.scope !2153
  store i64 4294967296, ptr %11, align 8, !alias.scope !2153
  %i.afh = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %i.afh, align 4, !tbaa !1249, !alias.scope !2153
  %i.afi = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %i.aev, ptr noundef nonnull align 8 dereferenceable(13) %11)
  %i.afj = load i32, ptr %i.afg, align 8, !tbaa !1247
  %i.afk = icmp ugt i32 %i.afj, 64
  br i1 %i.afk, label %bb.es, label %_ZNK4llvm6APSIntgtEl.exit

bb.es:                                            ; preds = %bb.er
  %i.afl = load ptr, ptr %11, align 8, !tbaa !1129 ; 2 uses
  %i.afm = icmp eq ptr %i.afl, null
  br i1 %i.afm, label %_ZNK4llvm6APSIntgtEl.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @_ZdaPv(ptr noundef nonnull %i.afl) #33
  br label %_ZNK4llvm6APSIntgtEl.exit

_ZNK4llvm6APSIntgtEl.exit:                        ; preds = %bb.er, %bb.es, %bb.et
  %i.afn = icmp sgt i32 %i.afi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br i1 %i.afn, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_ZNK4llvm6APSIntgtEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afp = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aei) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.afo, i32 %i.afp, i32 noundef 6723) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  %i.afq = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aei) #32
  store i64 %i.afq, ptr %31, align 8
  %i.afr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %30, ptr noundef nonnull align 4 dereferenceable(8) %31)
  %i.afs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsImEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.afr, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5clang4Sema16MaximumAlignmentE) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %30) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br label %bb.ev

bb.ev:                                            ; preds = %_ZNK4llvm6APSIntgtEl.exit, %bb.eu, %bb.eo
  %i.aft = load i32, ptr %i.aeo, align 8, !tbaa !1310
  %switch.i.i = icmp ult i32 %i.aft, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aeo) #31
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %bb.ev, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br i1 %.not206391646, label %.critedge226, label %.thread425.thread

bb.ex:                                            ; preds = %_ZNK5clang4Decl7getAttrINS_14AllocAlignAttrEEEPT_v.exit, %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit, %bb.ek
  br i1 %.not206391646, label %.critedge226, label %.thread425.thread

.thread425.thread:                                ; preds = %.thread637, %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread, %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread419, %_ZN5clang4Expr10EvalResultD2Ev.exit, %bb.ex
  %.0.i.i608643 = phi ptr [ %.0.i.i608645, %bb.ex ], [ %.0.i.i608645, %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread ], [ %.0.i.i608645, %_ZNK5clang4Decl7hasAttrINS_14AllocAlignAttrEEEbv.exit.thread419 ], [ %.0.i.i608645, %_ZN5clang4Expr10EvalResultD2Ev.exit ], [ %.0.i.i609, %.thread637 ] ; 2 uses
  %i.afu = call noundef zeroext i1 @_ZNK5clang12FunctionDecl10isVariadicEv(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i608643) #31
  br i1 %i.afu, label %bb.ey, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread

bb.ey:                                            ; preds = %.thread425.thread
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 88
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = and i64 %i.afy, 68719476736
  %.not220 = icmp eq i64 %i.afz, 0
  br i1 %.not220, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !1152
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !1149
  %i.age = zext i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [792 x i8], ptr %i.agb, i64 %i.age
  %i.agg = getelementptr inbounds i8, ptr %i.agf, i64 -792
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !1202
  switch i32 %i.agh, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit [
    i32 0, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
    i32 3, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
    i32 1, label %_ZNK5clang4Sema20isUnevaluatedContextEv.exit.thread
  ]

_ZNK5clang4Sema20isUnevaluatedContextEv.exit:     ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !2154
  %.sroa.025.0.copyload = load i32, ptr %13, align 4, !tbaa !1103
  call void @_ZN5clang8SemaSYCL16DiagIfDeviceCodeENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.agj, i32 %.sroa.025.0.copyload, i32 noundef 5568) #31
  %i.agk = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %32, i64 120
  %i.agm = load i8, ptr %i.agl, align 8, !tbaa !1110, !range !1111, !noundef !734
  %i.agn = trunc nuw i8 %i.agm to i1
  br i1 %i.agn, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit
  %i.ago = load ptr, ptr %i.agk, align 8, !tbaa !1115 ; 2 uses
  %.not.i.i.i.i.i323 = icmp eq ptr %i.ago, null
  br i1 %.not.i.i.i.i.i323, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %"_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_4diag11OffloadLang4$_13EvEERKS1_OT_.exit.i"

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.fa
  %i.agp = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !1116
  %i.agr = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.agq) ; 2 uses
  store ptr %i.agr, ptr %i.agk, align 8, !tbaa !1115
  br label %"_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_4diag11OffloadLang4$_13EvEERKS1_OT_.exit.i"

"_ZNK5clang8SemaBase20ImmediateDiagBuilderlsINS_4diag11OffloadLang4$_13EvEERKS1_OT_.exit.i": ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.fa
  %i.ags = phi ptr [ %i.agr, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.ago, %bb.fa ] ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 1
  %i.agu = load i8, ptr %i.ags, align 8, !tbaa !1128
  %i.agv = zext i8 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.agv
  store i8 2, ptr %i.agw, align 1, !tbaa !1129
  %i.agx = load ptr, ptr %i.agk, align 8, !tbaa !1115 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  %i.agz = load i8, ptr %i.agx, align 8, !tbaa !1128 ; 2 uses
  %i.aha = add i8 %i.agz, 1
  store i8 %i.aha, ptr %i.agx, align 8, !tbaa !1128
  %i.ahb = zext i8 %i.agz to i64
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %i.ahb
  store i64 1, ptr %i.ahc, align 8, !tbaa !1130
  br label %"_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_4diag11OffloadLang4$_13EvEERKS1_OT_.exit"

bb.fb:                                            ; preds = %_ZNK5clang4Sema20isUnevaluatedContextEv.exit
  %i.ahd = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.ahe = getelementptr inbounds nuw i8, ptr %32, i64 132
  %i.ahf = load i8, ptr %i.ahe, align 4, !tbaa !1132, !range !1111, !noundef !734
  %i.ahg = trunc nuw i8 %i.ahf to i1
  br i1 %i.ahg, label %bb.fc, label %"_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_4diag11OffloadLang4$_13EvEERKS1_OT_.exit"

bb.fc:                                            ; preds = %bb.fb
  %i.ahh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %32) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ahi = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !1141 ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i321, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i, label %bb.fd
end_hunk_1
begin_hunk_2_@_ZN4llvm14SmallBitVector6resizeEjb:bb.a
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !1130
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.o, %bb.p
  %i.ds = load i64, ptr %0, align 8, !tbaa !1436  ; 2 uses
  %i.dt = lshr i64 %i.ds, 1
  %i.du = lshr i64 %i.ds, 58                      ; 3 uses
  %i.dv = shl nsw i64 -1, %i.du
  %i.dw = xor i64 %i.dv, -1
  %i.dx = and i64 %i.dt, %i.dw
  %.not26 = icmp eq i64 %i.du, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm9BitVector9referenceaSEb.exit, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.dy = ptrtoint ptr %i.bx to i64
  store i64 %i.dy, ptr %0, align 8, !tbaa !1436
  br label %_ZN4llvm9BitVector6resizeEjb.exit

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %_ZN4llvm9BitVector9referenceaSEb.exit
  %.027 = phi i64 [ %i.ek, %_ZN4llvm9BitVector9referenceaSEb.exit ], [ 0, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 4 uses
  %i.dz = lshr i64 %i.dx, %.027
  %i.ea = trunc i64 %i.dz to i1
  %i.eb = lshr i64 %.027, 6
  %i.ec = and i64 %i.eb, 67108863
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ec ; 3 uses
  %i.ee = shl nuw i64 1, %.027                    ; 2 uses
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !1130
  %i.eg = or i64 %i.ef, %i.ee
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

bb.r:                                             ; preds = %.lr.ph
  %i.eh = xor i64 %i.ee, -1
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !1130
  %i.ej = and i64 %i.ei, %i.eh
  br label %_ZN4llvm9BitVector9referenceaSEb.exit

_ZN4llvm9BitVector9referenceaSEb.exit:            ; preds = %bb.q, %bb.r
  %storemerge = phi i64 [ %i.ej, %bb.r ], [ %i.eg, %bb.q ]
  store i64 %storemerge, ptr %i.ed, align 8, !tbaa !1130
  %i.ek = add nuw nsw i64 %.027, 1                ; 2 uses
  %.not = icmp eq i64 %i.ek, %i.du
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2158

_ZN4llvm9BitVector6resizeEjb.exit:                ; preds = %bb.i, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema17CheckFormatStringEPKNS_17FormatMatchesAttrEN4llvm8ArrayRefIPKNS_4ExprEEEbNS_16VariadicCallTypeENS_14SourceLocationENS_11SourceRangeERNS4_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, i32 %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1462 ; 2 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %i.b, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.ph = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.c ]
  %i.f = tail call noundef ptr @_ZNK5clang17FormatMatchesAttr15getFormatStringEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1463
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1327 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1329
  %i.m = and i64 %i.l, 4294967295
  %i.n = tail call noundef i32 @_ZN5clang4Sema19GetFormatStringTypeEN4llvm9StringRefE(ptr nonnull %i.k, i64 %i.m)
  %i.o = tail call noundef zeroext i1 @_ZN5clang4Sema20CheckFormatArgumentsEN4llvm8ArrayRefIPKNS_4ExprEEENS0_25FormatArgumentPassingKindEPNS_13StringLiteralEjjNS_16FormatStringTypeENS_16VariadicCallTypeENS_14SourceLocationENS_11SourceRangeERNS1_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr %2, i64 %3, i32 noundef 3, ptr noundef %i.f, i32 noundef %.sroa.0.0.ph, i32 noundef 0, i32 noundef %i.n, i32 noundef %5, i32 %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit

_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit: ; preds = %bb.b, %bb.d
  %.0 = phi i1 [ %i.o, %bb.d ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK5clang4Decl14specific_attrsINS_10FormatAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 256
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl17specific_attr_endINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit

_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #31
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1152 ; 2 uses
  %.pre = load i32, ptr %i.a, align 4
  %.pre4 = and i32 %.pre, 256
  %i.f = icmp eq i32 %.pre4, 0
  br i1 %i.f, label %_ZNK5clang4Decl17specific_attr_endINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #31 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1152
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1149
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  br label %_ZNK5clang4Decl17specific_attr_endINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit

_ZNK5clang4Decl17specific_attr_endINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit: ; preds = %bb.a, %_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit, %bb.b
  %i.m = phi ptr [ %i.e, %bb.b ], [ %i.e, %_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit ], [ null, %bb.a ]
  %i.n = phi ptr [ %i.l, %bb.b ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_10FormatAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit ], [ null, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.n, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema20CheckFormatArgumentsEPKNS_10FormatAttrEN4llvm8ArrayRefIPKNS_4ExprEEEbNS_16VariadicCallTypeENS_14SourceLocationENS_11SourceRangeERNS4_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5, i32 %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1465 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1466 ; 3 uses
  %i.e = icmp ne i32 %5, 4
  %i.f = icmp eq i32 %i.d, 0
  %..i = zext i1 %i.e to i32
  %.sink.i = select i1 %i.f, i32 2, i32 %..i
  %i.g = add i32 %i.b, -1                         ; 2 uses
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.b, -2
  %.not.i = icmp ugt i32 %i.d, 1
  %i.k = sext i1 %.not.i to i32
  %spec.select = add i32 %i.h, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.ph = phi i32 [ %i.h, %bb.a ], [ %spec.select, %bb.c ]
  %.sroa.0.0.ph = phi i32 [ %i.g, %bb.a ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1467
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1327 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.o, align 8, !tbaa !1329
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call noundef i32 @_ZN5clang4Sema19GetFormatStringTypeEN4llvm9StringRefE(ptr nonnull %i.p, i64 %i.r)
  %i.t = tail call noundef zeroext i1 @_ZN5clang4Sema20CheckFormatArgumentsEN4llvm8ArrayRefIPKNS_4ExprEEENS0_25FormatArgumentPassingKindEPNS_13StringLiteralEjjNS_16FormatStringTypeENS_16VariadicCallTypeENS_14SourceLocationENS_11SourceRangeERNS1_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr %2, i64 %3, i32 noundef %.sink.i, ptr noundef null, i32 noundef %.sroa.0.0.ph, i32 noundef %.sroa.5.0.ph, i32 noundef %i.s, i32 noundef %5, i32 %6, i64 %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit

_ZN5clang4Sema19getFormatStringInfoEjjbbPNS0_16FormatStringInfoE.exit: ; preds = %bb.b, %bb.d
  %.0 = phi i1 [ %i.t, %bb.d ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @_ZN5clang4Sema21checkVariadicArgumentEPKNS_4ExprENS_16VariadicCallTypeE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema24CheckArgumentWithTypeTagEPKNS_23ArgumentWithTypeTagAttrEN4llvm8ArrayRefIPKNS_4ExprEEENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 11 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.clang::QualType", align 8  ; 6 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %13 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %14 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %15 = alloca %"class.clang::QualType", align 8  ; 6 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %18 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2175 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !1379
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2176, !range !1111, !noundef !734
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !1129 ; 2 uses
  %i.n = and i32 %.sroa.0.0.copyload.i, 1073741823
  %19 = add nsw i32 %i.n, -1
  %20 = shl i32 %.sroa.0.0.copyload.i, 1
  %21 = ashr i32 %20, 31
  %i.o = add nsw i32 %19, %21
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not = icmp ugt i64 %3, %i.p
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 %4, i32 noundef 5199) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i32 0, ptr %i.c, align 4, !tbaa !1103
  %i.r = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.m, align 4, !tbaa !1129
  %i.s = and i32 %.sroa.0.0.copyload.i65, 1073741823
  store i32 %i.s, ptr %i.d, align 4, !tbaa !1103
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1154 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1487 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1152
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1149
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [792 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -792
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1202
  %i.ai = and i32 %i.ah, -2
  %spec.select.i.i = icmp eq i32 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.ak = load i8, ptr %i.aj, align 8, !range !1111
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %spec.select.i.i, i1 true, i1 %i.al
  %.not49.i.i = icmp eq ptr %i.v, null
  br i1 %.not49.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.backedge.i.i
  %.02850.i.i = phi ptr [ %.028.be.i.i, %.backedge.i.i ], [ %i.v, %bb.c ]
  %i.an = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.02850.i.i) #32
  %i.ao = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #32 ; 11 uses
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 511                      ; 2 uses
  switch i16 %i.aq, label %.thread [
    i16 4, label %bb.d
    i16 73, label %bb.q
    i16 54, label %bb.f
    i16 133, label %bb.m
    i16 132, label %bb.m
    i16 122, label %bb.o
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ar = load i32, ptr %i.ao, align 8
  %i.as = and i32 %i.ar, 15728640
  %switch.i.i = icmp eq i32 %i.as, 2097152
  br i1 %switch.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1399
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.p, %bb.n, %bb.e
  %.028.be.i.i = phi ptr [ %i.au, %bb.e ], [ %.331.i.i, %bb.n ], [ %i.cf, %bb.p ] ; 2 uses
  %.not.i.i = icmp eq ptr %.028.be.i.i, null
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1489, !noalias !2179 ; 5 uses
  %i.ay = icmp ugt i32 %i.ax, 64
  br i1 %i.ay, label %_ZNK5clang12APIntStorage8getValueEv.exit.i.i, label %_ZNK5clang12APIntStorage8getValueEv.exit.thread.i.i

_ZNK5clang12APIntStorage8getValueEv.exit.thread.i.i: ; preds = %bb.f
  %i.az = load i64, ptr %i.av, align 8, !tbaa !1129, !noalias !2179 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ax, ptr %i.ba, align 8, !tbaa !1247, !alias.scope !2179
  store i64 %i.az, ptr %5, align 8, !tbaa !1129, !alias.scope !2179
  br label %bb.g

_ZNK5clang12APIntStorage8getValueEv.exit.i.i:     ; preds = %bb.f
  %i.bb = zext i32 %i.ax to i64
  %i.bc = add nuw nsw i64 %i.bb, 63
  %i.bd = lshr i64 %i.bc, 6
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !1129, !noalias !2179
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.ax, ptr %i.be, i64 %i.bd) #31
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1247 ; 3 uses
  %i.bf = icmp ult i32 %.pre.i.i, 65
  br i1 %i.bf, label %_ZNK5clang12APIntStorage8getValueEv.exit.i._crit_edge.i, label %bb.h

_ZNK5clang12APIntStorage8getValueEv.exit.i._crit_edge.i: ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit.i.i
  %.pre.i = load i64, ptr %5, align 8, !tbaa !1129
  br label %bb.g

bb.g:                                             ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit.i._crit_edge.i, %_ZNK5clang12APIntStorage8getValueEv.exit.thread.i.i
  %i.bg = phi i64 [ %i.az, %_ZNK5clang12APIntStorage8getValueEv.exit.thread.i.i ], [ %.pre.i, %_ZNK5clang12APIntStorage8getValueEv.exit.i._crit_edge.i ]
  %i.bh = phi i32 [ %i.ax, %_ZNK5clang12APIntStorage8getValueEv.exit.thread.i.i ], [ %.pre.i.i, %_ZNK5clang12APIntStorage8getValueEv.exit.i._crit_edge.i ] ; 2 uses
  %.neg.i.i.i.i = add nsw i32 %i.bh, -64
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = add nsw i32 %.neg.i.i.i.i, %i.bj
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

bb.h:                                             ; preds = %_ZNK5clang12APIntStorage8getValueEv.exit.i.i
  %i.bl = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #32
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.h, %bb.g
  %i.bm = phi i1 [ true, %bb.g ], [ false, %bb.h ]
  %i.bn = phi i32 [ %i.bh, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bl, %bb.h ]
  %i.bo = sub i32 %i.bn, %.0.i.i.i.i
  %i.bp = icmp ult i32 %i.bo, 65                  ; 2 uses
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.bq = load ptr, ptr %5, align 8
  %spec.select.i.i.i = select i1 %i.bm, ptr %5, ptr %i.bq
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !1129
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.035.i = phi i64 [ %.0.i.i.i, %bb.i ], [ undef, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %i.br = icmp ugt i32 %i.bn, 64
  br i1 %i.br, label %bb.k, label %_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %5, align 8, !tbaa !1129  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #33
  br label %_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bu = icmp eq i16 %i.aq, 132
  %.1.in.v.i.i.i = select i1 %i.bu, i64 24, i64 32
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1313
  %i.bv = call noundef zeroext i1 @_ZNK5clang4Expr26EvaluateAsBooleanConditionERbRKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %.1.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(23904) %i.x, i1 noundef zeroext %i.am) #31
  br i1 %i.bv, label %bb.n, label %.thread41.i.i

.thread41.i.i:                                    ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i8, ptr %i.a, align 1, !tbaa !1203, !range !1111, !noundef !734
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i16, ptr %i.ao, align 8
  %i.bz = and i16 %i.by, 511
  %i.ca = icmp eq i16 %i.bz, 132                  ; 2 uses
  %.1.in.v.i36.i.i = select i1 %i.ca, i64 40, i64 48
  %.1.in.v.i33.i.i = select i1 %i.ca, i64 32, i64 40
  %.1.in.v.i36.pn.i.i = select i1 %i.bx, i64 %.1.in.v.i33.i.i, i64 %.1.in.v.i36.i.i
  %.331.in.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.in.v.i36.pn.i.i
  %.331.i.i = load ptr, ptr %.331.in.i.i, align 8, !tbaa !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.backedge.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cb = load i32, ptr %i.ao, align 8
  %i.cc = and i32 %i.cb, 33030144
  %i.cd = icmp eq i32 %i.cc, 16777216
  br i1 %i.cd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1313
  br label %.backedge.i.i

_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %i.bp, label %.thread.i, label %.thread

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1371 ; 3 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, 256
  %.not.i25.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i25.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ch) #31 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1152 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !1149 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.cp, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %bb.t
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.cv, %bb.t ], [ %i.cm, %bb.s ] ; 3 uses
  %i.cr = load ptr, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !1205
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.ct = load i16, ptr %i.cs, align 4
  %i.cu = icmp eq i16 %i.ct, 407
  br i1 %i.cu, label %_ZN5clangneENS_22specific_attr_iteratorINS_22TypeTagForDatatypeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2163

_ZN5clangneENS_22specific_attr_iteratorINS_22TypeTagForDatatypeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not5.i.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i, %i.cq
  br i1 %.not5.i.i.i, label %.thread, label %bb.u

bb.u:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_22TypeTagForDatatypeAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i.i
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !1205 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i16, ptr %i.cx, align 4
  %i.cz = icmp eq i16 %i.cy, 407
  br i1 %i.cz, label %_ZNK5clang4Decl7getAttrINS_22TypeTagForDatatypeAttrEEEPT_v.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.cm, %bb.u ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1205 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = icmp eq i16 %i.de, 407
  br i1 %i.df, label %_ZNK5clang4Decl7getAttrINS_22TypeTagForDatatypeAttrEEEPT_v.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2164

_ZNK5clang4Decl7getAttrINS_22TypeTagForDatatypeAttrEEEPT_v.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.u
  %i.dg = phi ptr [ %i.cw, %bb.u ], [ %i.dc, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2181
  %.not24.i = icmp eq ptr %i.di, %i.i
  br i1 %.not24.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNK5clang4Decl7getAttrINS_22TypeTagForDatatypeAttrEEEPT_v.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2182
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !2183, !range !1111, !noundef !734
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 57
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !2184, !range !1111, !noundef !734
  %i.dp = shl nuw nsw i8 %i.do, 1
  %i.dq = or disjoint i8 %i.dp, %i.dm
  br label %_ZL16GetMatchingCTypePKN5clang14IdentifierInfoEPKNS_4ExprERKNS_10ASTContextEPKN4llvm8DenseMapISt4pairIS2_mENS_4Sema11TypeTagDataENS9_12DenseMapInfoISC_vEENS9_6detail12DenseMapPairISC_SE_EEEERbRSE_b.exit

.thread.i:                                        ; preds = %bb.q, %_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i
  %.1364449.i = phi i64 [ undef, %bb.q ], [ %.035.i, %_ZL15FindTypeTagExprPKN5clang4ExprERKNS_10ASTContextEPPKNS_9ValueDeclEPmb.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.z, null
  br i1 %.not22.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %.thread.i
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !1492, !noalias !2185 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1493, !noalias !2185 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !1494, !noalias !2185 ; 4 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %.loopexit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = add i32 %i.dv, -1                       ; 2 uses
  %i.dy = ptrtoint ptr %i.i to i64
  %i.dz = mul i64 %i.dy, -4658895280553007687     ; 2 uses
  %i.ea = lshr i64 %i.dz, 31
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %.1364449.i, -4658895280553007687 ; 2 uses
  %i.ed = lshr i64 %i.ec, 31
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = shl i64 %i.eb, 32
  %i.eg = and i64 %i.ee, 4294967295
  %i.eh = or disjoint i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -4658895280553007687     ; 2 uses
  %i.ej = lshr i64 %i.ei, 31
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = trunc i64 %i.ek to i32
  %i.em = and i32 %i.dx, %i.el                    ; 3 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = lshr i64 %i.en, 5
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !1103, !noalias !2186
  %i.er = and i32 %i.em, 31
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i1
  br i1 %i.et, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !1495

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %bb.y
  %i.eu = phi i64 [ %i.fe, %bb.y ], [ %i.en, %bb.x ]
  %.017.i.i.i.i = phi i32 [ %i.fd, %bb.y ], [ %i.em, %bb.x ]
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.eu ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1497, !noalias !2186
  %i.ex = icmp eq ptr %i.i, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !2186
  %i.fa = icmp eq i64 %.1364449.i, %i.ez
  %i.fb = select i1 %i.ex, i1 %i.fa, i1 false
  br i1 %i.fb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.loopexit.i, label %bb.y, !prof !1151

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fc = add nuw i32 %.017.i.i.i.i, 1
  %i.fd = and i32 %i.fc, %i.dx                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = lshr i64 %i.fe, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !1103, !noalias !2186
  %i.fi = and i32 %i.fd, 31
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = trunc i32 %i.fj to i1
  br i1 %i.fk, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !1498

.loopexit.i.i.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  %i.fl = zext i32 %i.dv to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.fl
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre72.i = zext i32 %i.dv to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre72.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.loopexit.i ], [ %i.fl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ev, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.loopexit.i ], [ %i.fm, %.loopexit.i.i.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %.pre-phi.i
  %.not63.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.fn
  br i1 %.not63.i, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E4findERKS7_.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 24
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !1129
  br label %_ZL16GetMatchingCTypePKN5clang14IdentifierInfoEPKNS_4ExprERKNS_10ASTContextEPKN4llvm8DenseMapISt4pairIS2_mENS_4Sema11TypeTagDataENS9_12DenseMapInfoISC_vEENS9_6detail12DenseMapPairISC_SE_EEEERbRSE_b.exit

bb.aa:                                            ; preds = %_ZNK5clang4Decl7getAttrINS_22TypeTagForDatatypeAttrEEEPT_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.fp, i32 %i.fq, i32 noundef 7720) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.fr = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #32
  store i64 %i.fr, ptr %8, align 8
  %i.fs = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.thread

_ZL16GetMatchingCTypePKN5clang14IdentifierInfoEPKNS_4ExprERKNS_10ASTContextEPKN4llvm8DenseMapISt4pairIS2_mENS_4Sema11TypeTagDataENS9_12DenseMapInfoISC_vEENS9_6detail12DenseMapPairISC_SE_EEEERbRSE_b.exit: ; preds = %bb.z, %bb.v
  %.sroa.078.0.in = phi ptr [ %i.fo, %bb.z ], [ %i.dk, %bb.v ]
  %.sroa.6.0 = phi i8 [ %.sroa.6.0.copyload, %bb.z ], [ %i.dq, %bb.v ] ; 4 uses
  %.sroa.078.0 = load i64, ptr %.sroa.078.0.in, align 8, !tbaa !1129 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.ft, align 8, !tbaa !1129 ; 2 uses
  %i.fu = and i32 %.sroa.0.0.copyload.i66, 1073741823
  %22 = add nsw i32 %i.fu, -1
  %23 = shl i32 %.sroa.0.0.copyload.i66, 1
  %24 = ashr i32 %23, 31
  %i.fv = add nsw i32 %22, %24
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %.not56 = icmp ugt i64 %3, %i.fw
  br i1 %.not56, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZL16GetMatchingCTypePKN5clang14IdentifierInfoEPKNS_4ExprERKNS_10ASTContextEPKN4llvm8DenseMapISt4pairIS2_mENS_4Sema11TypeTagDataENS9_12DenseMapInfoISC_vEENS9_6detail12DenseMapPairISC_SE_EEEERbRSE_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i32 %4, i32 noundef 5199) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i32 1, ptr %i.e, align 4, !tbaa !1103
  %i.fy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.ft, align 8, !tbaa !1129
  %i.fz = and i32 %.sroa.0.0.copyload.i67, 1073741823
  store i32 %i.fz, ptr %i.f, align 4, !tbaa !1103
  %i.ga = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIjvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.fy, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.thread

bb.ac:                                            ; preds = %_ZL16GetMatchingCTypePKN5clang14IdentifierInfoEPKNS_4ExprERKNS_10ASTContextEPKN4llvm8DenseMapISt4pairIS2_mENS_4Sema11TypeTagDataENS9_12DenseMapInfoISC_vEENS9_6detail12DenseMapPairISC_SE_EEEERbRSE_b.exit
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fw
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !1154 ; 11 uses
  br i1 %i.l, label %bb.ad, label %.thread98

bb.ad:                                            ; preds = %bb.ac
  %i.gd = load i16, ptr %i.gc, align 8
  %i.ge = and i16 %i.gd, 511
  %.not124 = icmp eq i16 %i.ge, 81
  br i1 %.not124, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.0.0.copyload.i69 = load i64, ptr %i.gf, align 8, !tbaa !1129
  %i.gg = and i64 %.sroa.0.0.copyload.i69, -16
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load ptr, ptr %i.gh, align 16, !tbaa !1324
  %i.gj = call noundef zeroext i1 @_ZNK5clang4Type17isVoidPointerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gi) #31
  br i1 %i.gj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.gk = load i32, ptr %i.gc, align 8
  %i.gl = and i32 %i.gk, 66584576
  %i.gm = icmp eq i32 %i.gl, 524288
  br i1 %i.gm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1500
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ad, %bb.ag, %bb.af
  %.1.ph = phi ptr [ %i.gc, %bb.ae ], [ %i.gc, %bb.ad ], [ %i.gc, %bb.af ], [ %i.go, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.gp = getelementptr inbounds nuw i8, ptr %.1.ph, i64 8
  %.sroa.0.0.copyload.i7094 = load i64, ptr %i.gp, align 8, !tbaa !1129 ; 3 uses
  store i64 %.sroa.0.0.copyload.i7094, ptr %10, align 8
  %i.gq = and i64 %.sroa.0.0.copyload.i7094, -16
  %i.gr = inttoptr i64 %i.gq to ptr               ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 16, !tbaa !1324
  %i.gt = call noundef zeroext i1 @_ZNK5clang4Type17isVoidPointerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gs) #31
  br i1 %i.gt, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = and i8 %.sroa.6.0, 2
  %.not58 = icmp eq i8 %i.gu, 0
  %.pre141 = load ptr, ptr %i.w, align 8, !tbaa !737 ; 2 uses
  br i1 %.not58, label %.thread106, label %bb.aj

.thread98:                                        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.0.0.copyload.i70 = load i64, ptr %i.gv, align 8, !tbaa !1129 ; 4 uses
  store i64 %.sroa.0.0.copyload.i70, ptr %10, align 8
  %i.gw = and i8 %.sroa.6.0, 2
  %.not58100 = icmp eq i8 %i.gw, 0
  br i1 %.not58100, label %.thread103, label %.thread98._crit_edge

.thread98._crit_edge:                             ; preds = %.thread98
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !737
  br label %bb.aj

.thread103:                                       ; preds = %.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  store i64 %.sroa.078.0, ptr %15, align 8, !tbaa !1129
  %i.gx = and i8 %.sroa.6.0, 1
  %.not59 = icmp eq i8 %i.gx, 0
  br i1 %.not59, label %.thread103._crit_edge, label %bb.ao

.thread103._crit_edge:                            ; preds = %.thread103
  %.pre144 = and i64 %.sroa.0.0.copyload.i70, -16
  %.pre145 = inttoptr i64 %.pre144 to ptr
  br label %bb.al

bb.aj:                                            ; preds = %.thread98._crit_edge, %bb.ai
  %i.gy = phi ptr [ %.pre, %.thread98._crit_edge ], [ %.pre141, %bb.ai ]
  %.195101 = phi ptr [ %i.gc, %.thread98._crit_edge ], [ %.1.ph, %bb.ai ] ; 3 uses
  %i.gz = call noundef i32 @_ZNK5clang4Expr21isNullPointerConstantERNS_10ASTContextENS0_34NullPointerConstantValueDependenceE(ptr noundef nonnull align 8 dereferenceable(16) %.195101, ptr noundef nonnull align 8 dereferenceable(23904) %i.gy, i32 noundef 2) #31
  %.not60 = icmp eq i32 %i.gz, 0
  br i1 %.not60, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hb = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.195101) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i32 %i.hb, i32 noundef 7718) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !1379
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1327 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !1329
  %i.hh = and i64 %i.hg, 4294967295
  store ptr %i.hf, ptr %12, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hh, ptr %i.hi, align 8
  %i.hj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.hk = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.195101) #32
  store i64 %i.hk, ptr %13, align 8
  %i.hl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hj, ptr noundef nonnull align 4 dereferenceable(8) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.hm = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #32
  store i64 %i.hm, ptr %14, align 8
  %i.hn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hl, ptr noundef nonnull align 4 dereferenceable(8) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.ap

.thread106:                                       ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.ho = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %.pre141, i64 %.sroa.078.0) #31 ; 3 uses
  store i64 %i.ho, ptr %15, align 8, !tbaa !1129
  %i.hp = and i8 %.sroa.6.0, 1
  %.not59108 = icmp eq i8 %i.hp, 0
  br i1 %.not59108, label %bb.al, label %.split

bb.al:                                            ; preds = %.thread103._crit_edge, %.thread106
  %.pre-phi146 = phi ptr [ %.pre145, %.thread103._crit_edge ], [ %i.gr, %.thread106 ] ; 2 uses
  %.0.copyload.i.i.i.i.i73 = phi i64 [ %.sroa.078.0, %.thread103._crit_edge ], [ %i.ho, %.thread106 ] ; 3 uses
  %.sroa.06.0.copyload = phi i64 [ %.sroa.0.0.copyload.i70, %.thread103._crit_edge ], [ %.sroa.0.0.copyload.i7094, %.thread106 ] ; 2 uses
  %.195102105111 = phi ptr [ %i.gc, %.thread103._crit_edge ], [ %.1.ph, %.thread106 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre-phi146, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !1129
  %i.hs = and i64 %.sroa.06.0.copyload, 7
  %i.ht = or i64 %i.hr, %i.hs
  %i.hu = and i64 %.0.copyload.i.i.i.i.i73, -16
  %i.hv = inttoptr i64 %i.hu to ptr               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !1129
  %i.hy = and i64 %.0.copyload.i.i.i.i.i73, 7
  %i.hz = or i64 %i.hx, %i.hy
  %i.ia = icmp eq i64 %i.ht, %i.hz
  br i1 %i.ia, label %.critedge64, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.l, label %bb.an, label %.critedge62

bb.an:                                            ; preds = %bb.am
  %i.ib = load ptr, ptr %.pre-phi146, align 8, !tbaa !1324
  %i.ic = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ib) #31
  %i.id = load ptr, ptr %i.hv, align 16, !tbaa !1324
  %i.ie = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.id) #31
  %i.if = call fastcc noundef zeroext i1 @_ZL14IsSameCharTypeN5clang8QualTypeES0_(i64 %i.ic, i64 %i.ie)
  br i1 %i.if, label %.critedge64, label %.thread116

.critedge62:                                      ; preds = %bb.am
  %i.ig = call fastcc noundef zeroext i1 @_ZL14IsSameCharTypeN5clang8QualTypeES0_(i64 %.sroa.06.0.copyload, i64 %.0.copyload.i.i.i.i.i73)
  br i1 %i.ig, label %.critedge64, label %.thread116

.split:                                           ; preds = %.thread106
  %i.ih = load ptr, ptr %i.gr, align 16, !tbaa !1324
  %i.ii = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ih) #31
  %i.ij = and i64 %i.ho, -16
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = load ptr, ptr %i.ik, align 16, !tbaa !1324
  %i.im = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.il) #31
  %i.in = call fastcc noundef zeroext i1 @_ZL18isLayoutCompatibleRKN5clang10ASTContextENS_8QualTypeES3_(i64 %i.ii, i64 %i.im)
  br i1 %i.in, label %.critedge64, label %.thread116

bb.ao:                                            ; preds = %.thread103
  %i.io = call fastcc noundef zeroext i1 @_ZL18isLayoutCompatibleRKN5clang10ASTContextENS_8QualTypeES3_(i64 %.sroa.0.0.copyload.i70, i64 %.sroa.078.0)
  br i1 %i.io, label %.critedge64, label %.thread116

.thread116:                                       ; preds = %bb.an, %.critedge62, %.split, %bb.ao
  %.195102105109119 = phi ptr [ %.1.ph, %.split ], [ %i.gc, %bb.ao ], [ %.195102105111, %.critedge62 ], [ %.195102105111, %bb.an ] ; 2 uses
  %i.ip = phi i32 [ 1, %.split ], [ 1, %bb.ao ], [ 0, %.critedge62 ], [ 0, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ir = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.195102105109119) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.iq, i32 %i.ir, i32 noundef 7719) #31
  %i.is = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %i.it = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPKNS_14IdentifierInfoEEERKNS_8SemaBase21SemaDiagnosticBuilderES7_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.is, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store i32 %i.ip, ptr %i.g, align 4, !tbaa !1103
end_hunk_2
begin_hunk_3_@_ZL21checkFormatStringExprRN5clang4SemaEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefIS7_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeENS_16VariadicCallTypeEbRNS8_14SmallBitVectorERN12_GLOBAL__N_119UncoveredArgHandlerENS8_6APSIntEPSt8optionalIjEb:bb.a
bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.sroa.0577.0.ph = phi i32 [ %i.lw, %bb.bu ], [ %i.lu, %bb.bs ]
  %i.lx = load i32, ptr %i.fy, align 8
  %i.ly = lshr i32 %i.lx, 20
  %i.lz = and i32 %i.ly, 255                      ; 2 uses
  %i.ma = icmp eq i32 %i.lz, 255
  br i1 %i.ma, label %bb.bw, label %_ZNK5clang11ParmVarDecl21getFunctionScopeIndexEv.exit523

bb.bw:                                            ; preds = %bb.bv
  %i.mb = call noundef i32 @_ZNK5clang11ParmVarDecl22getParameterIndexLargeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.dw) #31
  br label %_ZNK5clang11ParmVarDecl21getFunctionScopeIndexEv.exit523

_ZNK5clang11ParmVarDecl21getFunctionScopeIndexEv.exit523: ; preds = %bb.bv, %bb.bw
  %i.mc = phi i32 [ %i.mb, %bb.bw ], [ %i.lz, %bb.bv ]
  %i.md = icmp eq i32 %i.mc, %.sroa.0577.0.ph
  br i1 %i.md, label %bb.bx, label %_ZN5clang4Sema19getFormatStringInfoEPKNS_4DeclEjjPNS0_16FormatStringInfoE.exit522

bb.bx:                                            ; preds = %_ZNK5clang11ParmVarDecl21getFunctionScopeIndexEv.exit523
  %i.me = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1467
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1327 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !1329
  %i.mk = and i64 %i.mj, 4294967295
  %i.ml = call noundef i32 @_ZN5clang4Sema19GetFormatStringTypeEN4llvm9StringRefE(ptr nonnull %i.mi, i64 %i.mk)
  %.not448 = icmp eq i32 %8, %i.ml
  br i1 %.not448, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mo = zext i32 %6 to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mo
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !1154
  %i.mr = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mq) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.mn, i32 %i.mr, i32 noundef 7144) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.ms = load ptr, ptr %i.mm, align 8, !tbaa !1467
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !1327 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load i64, ptr %i.mu, align 8, !tbaa !1329
  %i.mx = and i64 %i.mw, 4294967295
  store ptr %i.mv, ptr %26, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.mx, ptr %i.my, align 8
  %i.mz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(16) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  %i.na = call { ptr, i64 } @_ZN5clang4Sema23GetFormatStringTypeNameENS_16FormatStringTypeE(i32 noundef %8) ; 2 uses
  %i.nb = extractvalue { ptr, i64 } %i.na, 0
  store ptr %i.nb, ptr %27, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.nd = extractvalue { ptr, i64 } %i.na, 1
  store i64 %i.nd, ptr %i.nc, align 8
  %i.ne = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.mz, ptr noundef nonnull align 8 dereferenceable(16) %27) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br i1 %10, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nf = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.mn, i32 %i.nf, i32 noundef 6147) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %28) #31
  br label %_ZN4llvm5APIntD2Ev.exit554

bb.ca:                                            ; preds = %bb.bx
  %i.ng = select i1 %.2.i519, i32 256, i32 0
  %i.nh = select i1 %i.lt, i32 512, i32 %i.ng
  %i.ni = or i32 %i.nh, %5
  %i.nj = trunc i32 %i.ni to i16
  switch i16 %i.nj, label %_ZN5clang4Sema19getFormatStringInfoEPKNS_4DeclEjjPNS0_16FormatStringInfoE.exit522 [
    i16 514, label %_ZN4llvm5APIntD2Ev.exit554
    i16 0, label %_ZN4llvm5APIntD2Ev.exit554
    i16 1, label %_ZN4llvm5APIntD2Ev.exit554
    i16 258, label %_ZN4llvm5APIntD2Ev.exit554
  ]

_ZN5clang4Sema19getFormatStringInfoEPKNS_4DeclEjjPNS0_16FormatStringInfoE.exit522: ; preds = %_ZNK5clang11ParmVarDecl21getFunctionScopeIndexEv.exit523, %bb.ca, %bb.bt
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0578.1, i64 8
  br label %bb.bi

bb.cb:                                            ; preds = %bb.c, %bb.c
  %i.nl = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !1313
  %i.nn = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #31 ; 5 uses
  %.not.i.i526 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i526, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 28 ; 3 uses
  %i.np = load i32, ptr %i.no, align 4            ; 2 uses
  %i.nq = and i32 %i.np, 124
  %i.nr = add nsw i32 %i.nq, -20
  %i.ns = icmp ult i32 %i.nr, 64
  br i1 %i.ns, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit: ; preds = %bb.cc
  %i.nt = and i32 %i.np, 256
  %.not.i.i.i528 = icmp eq i32 %i.nt, 0
  br i1 %.not.i.i.i528, label %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit
  %i.nu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.nn) #31
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1152 ; 2 uses
  %.pre.i = load i32, ptr %i.no, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.nw = icmp eq i32 %.pre4.i, 0
  br i1 %i.nw, label %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.nx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.nn) #31 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1152
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !1149
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.ob
  br label %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit, %_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.cd
  %i.od = phi ptr [ %i.nv, %bb.cd ], [ %i.nv, %_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit ]
  %i.oe = phi ptr [ %i.oc, %bb.cd ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_13FormatArgAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit ] ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.oj = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit544, %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.0575.0 = phi ptr [ %i.od, %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.qa, %_ZN4llvm5APIntD2Ev.exit544 ] ; 8 uses
  %.0403 = phi i1 [ true, %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ false, %_ZN4llvm5APIntD2Ev.exit544 ] ; 2 uses
  %.0401 = phi i32 [ undef, %_ZNK5clang4Decl14specific_attrsINS_13FormatArgAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %spec.select459, %_ZN4llvm5APIntD2Ev.exit544 ] ; 2 uses
  %i.ok = icmp ult ptr %.sroa.0575.0, %i.oe
  br i1 %i.ok, label %.lr.ph.i.i.i537, label %bb.cg

.lr.ph.i.i.i537:                                  ; preds = %bb.ce, %bb.cf
  %.sroa.07.1.i.i538 = phi ptr [ %i.op, %bb.cf ], [ %.sroa.0575.0, %bb.ce ] ; 3 uses
  %i.ol = load ptr, ptr %.sroa.07.1.i.i538, align 8, !tbaa !1205
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.on = load i16, ptr %i.om, align 4
  %i.oo = icmp eq i16 %i.on, 230
  br i1 %i.oo, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i537
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i538, i64 8 ; 2 uses
  %.not.i.i.i539 = icmp eq ptr %i.op, %i.oe
  br i1 %.not.i.i.i539, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i.i.i537, !llvm.loop !14

bb.cg:                                            ; preds = %bb.ce
  %.not2.i3.i.i531 = icmp eq ptr %i.oe, %.sroa.0575.0
  br i1 %.not2.i3.i.i531, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i532

.lr.ph.i4.i.i532:                                 ; preds = %bb.cg, %bb.ch
  %.sroa.0.1.i.i533 = phi ptr [ %i.ou, %bb.ch ], [ %i.oe, %bb.cg ] ; 3 uses
  %i.oq = load ptr, ptr %.sroa.0.1.i.i533, align 8, !tbaa !1205
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 36
  %i.os = load i16, ptr %i.or, align 4
  %i.ot = icmp eq i16 %i.os, 230
  br i1 %i.ot, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i4.i.i532
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i533, i64 8 ; 2 uses
  %.not.i5.i.i534 = icmp eq ptr %i.ou, %.sroa.0575.0
  br i1 %.not.i5.i.i534, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %.lr.ph.i4.i.i532, !llvm.loop !14

_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit: ; preds = %.lr.ph.i4.i.i532, %.lr.ph.i.i.i537
  %.sroa.07.0.i.i535 = phi ptr [ %.sroa.07.1.i.i538, %.lr.ph.i.i.i537 ], [ %.sroa.0575.0, %.lr.ph.i4.i.i532 ]
  %.sroa.0.0.i.i536 = phi ptr [ %i.oe, %.lr.ph.i.i.i537 ], [ %.sroa.0.1.i.i533, %.lr.ph.i4.i.i532 ]
  %.not690 = icmp eq ptr %.sroa.07.0.i.i535, %.sroa.0.0.i.i536
  br i1 %.not690, label %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread, label %bb.ci

_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread: ; preds = %bb.cg, %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit, %bb.ch, %bb.cf
  br i1 %.0403, label %bb.cn, label %_ZN4llvm5APIntD2Ev.exit554

bb.ci:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit
  %i.ov = load ptr, ptr %.sroa.0575.0, align 8, !tbaa !1205 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %i.ox = load i16, ptr %i.ow, align 4
  %i.oy = icmp eq i16 %i.ox, 230
  br i1 %i.oy, label %_ZNK5clang22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i541

.lr.ph.i.i541:                                    ; preds = %bb.ci, %.lr.ph.i.i541
  %i.oz = phi ptr [ %i.pa, %.lr.ph.i.i541 ], [ %.sroa.0575.0, %bb.ci ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 3 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !1205 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 36
  %i.pd = load i16, ptr %i.pc, align 4
  %i.pe = icmp eq i16 %i.pd, 230
  br i1 %i.pe, label %_ZNK5clang22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i541, !llvm.loop !15

_ZNK5clang22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i541, %bb.ci
  %.sroa.0575.1 = phi ptr [ %.sroa.0575.0, %bb.ci ], [ %i.pa, %.lr.ph.i.i541 ]
  %i.pf = phi ptr [ %i.ov, %bb.ci ], [ %i.pb, %.lr.ph.i.i541 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  %.sroa.0.0.copyload.i542 = load i32, ptr %i.pg, align 8, !tbaa !1129 ; 2 uses
  %i.ph = and i32 %.sroa.0.0.copyload.i542, 1073741823
  %43 = add nsw i32 %i.ph, -1
  %44 = shl i32 %.sroa.0.0.copyload.i542, 1
  %45 = ashr i32 %44, 31
  %i.pi = add nsw i32 %43, %45
  %i.pj = load i32, ptr %i.aw, align 8
  %i.pk = lshr i32 %i.pj, 19
  %i.pl = and i32 %i.pk, 1
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.pm
  %i.po = zext i32 %i.pi to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !1154
  %i.pr = load i32, ptr %i.oh, align 8, !tbaa !1247 ; 2 uses
  store i32 %i.pr, ptr %i.og, align 8, !tbaa !1247
  %i.ps = icmp ult i32 %i.pr, 65
  br i1 %i.ps, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.pt = load i64, ptr %13, align 8, !tbaa !1129
  store i64 %i.pt, ptr %29, align 8, !tbaa !1129
  br label %_ZN4llvm6APSIntC2ERKS0_.exit543

bb.ck:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %29, ptr noundef nonnull align 8 dereferenceable(13) %13) #31
  br label %_ZN4llvm6APSIntC2ERKS0_.exit543

_ZN4llvm6APSIntC2ERKS0_.exit543:                  ; preds = %bb.cj, %bb.ck
  %i.pu = load i8, ptr %i.oj, align 4, !tbaa !1249, !range !1111, !noundef !734
  store i8 %i.pu, ptr %i.oi, align 4, !tbaa !1249
  %i.pv = call fastcc noundef i32 @_ZL21checkFormatStringExprRN5clang4SemaEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefIS7_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeENS_16VariadicCallTypeEbRNS8_14SmallBitVectorERN12_GLOBAL__N_119UncoveredArgHandlerENS8_6APSIntEPSt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.pq, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr nofree noundef align 8 dereferenceable(16) %29, ptr noundef %14, i1 noundef zeroext %15)
  %i.pw = load i32, ptr %i.og, align 8, !tbaa !1247
  %i.px = icmp ugt i32 %i.pw, 64
  br i1 %i.px, label %bb.cl, label %_ZN4llvm5APIntD2Ev.exit544

bb.cl:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit543
  %i.py = load ptr, ptr %29, align 8, !tbaa !1129 ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %_ZN4llvm5APIntD2Ev.exit544, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.py) #33
  br label %_ZN4llvm5APIntD2Ev.exit544

_ZN4llvm5APIntD2Ev.exit544:                       ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit543, %bb.cl, %bb.cm
  %spec.select459 = select i1 %.0403, i32 %i.pv, i32 %.0401
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0575.1, i64 8
  br label %bb.ce

bb.cn:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13FormatArgAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread
  %i.qb = load i32, ptr %i.no, align 4
  %i.qc = and i32 %i.qb, 127
  %i.qd = add nsw i32 %i.qc, -41
  %i.qe = icmp ult i32 %i.qd, -6
  br i1 %i.qe, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qf = call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %i.nn, i1 noundef zeroext false) #31 ; 2 uses
  switch i32 %i.qf, label %_ZN4llvm5APIntD2Ev.exit547 [
    i32 240, label %bb.cp
    i32 221, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co, %bb.co
  %i.qg = load i32, ptr %i.aw, align 8
  %i.qh = lshr i32 %i.qg, 19
  %i.qi = and i32 %i.qh, 1
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.qj
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !1154
  %i.qm = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.qn = load i32, ptr %i.oh, align 8, !tbaa !1247 ; 2 uses
  store i32 %i.qn, ptr %i.qm, align 8, !tbaa !1247
  %i.qo = icmp ult i32 %i.qn, 65
  br i1 %i.qo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.qp = load i64, ptr %13, align 8, !tbaa !1129
  store i64 %i.qp, ptr %30, align 8, !tbaa !1129
  br label %_ZN4llvm6APSIntC2ERKS0_.exit546

bb.cr:                                            ; preds = %bb.cp
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %30, ptr noundef nonnull align 8 dereferenceable(13) %13) #31
  br label %_ZN4llvm6APSIntC2ERKS0_.exit546

_ZN4llvm6APSIntC2ERKS0_.exit546:                  ; preds = %bb.cq, %bb.cr
  %i.qq = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.qr = load i8, ptr %i.oj, align 4, !tbaa !1249, !range !1111, !noundef !734
  store i8 %i.qr, ptr %i.qq, align 4, !tbaa !1249
  %i.qs = call fastcc noundef i32 @_ZL21checkFormatStringExprRN5clang4SemaEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefIS7_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeENS_16VariadicCallTypeEbRNS8_14SmallBitVectorERN12_GLOBAL__N_119UncoveredArgHandlerENS8_6APSIntEPSt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.ql, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr nofree noundef align 8 dereferenceable(16) %30, ptr noundef %14, i1 noundef zeroext %15) ; 3 uses
  %i.qt = load i32, ptr %i.qm, align 8, !tbaa !1247
  %i.qu = icmp ugt i32 %i.qt, 64
  br i1 %i.qu, label %bb.cs, label %_ZN4llvm5APIntD2Ev.exit547

bb.cs:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit546
  %i.qv = load ptr, ptr %30, align 8, !tbaa !1129 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %_ZN4llvm5APIntD2Ev.exit547, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.qv) #33
  br label %_ZN4llvm5APIntD2Ev.exit547

_ZN4llvm5APIntD2Ev.exit547:                       ; preds = %bb.ct, %bb.cs, %_ZN4llvm6APSIntC2ERKS0_.exit546, %bb.co
  %.19 = phi i32 [ 0, %bb.co ], [ %i.qs, %_ZN4llvm6APSIntC2ERKS0_.exit546 ], [ %i.qs, %bb.cs ], [ %i.qs, %bb.ct ] ; 2 uses
  switch i32 %i.qf, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread [
    i32 240, label %_ZN4llvm5APIntD2Ev.exit554
    i32 221, label %_ZN4llvm5APIntD2Ev.exit554
  ]

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread: ; preds = %bb.cn, %_ZN4llvm5APIntD2Ev.exit547, %bb.cb, %bb.cc
  %i.qx = load ptr, ptr %i.r, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.qy = call fastcc noundef ptr @_ZL27maybeConstEvalStringLiteralRN5clang10ASTContextEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.qx, ptr noundef %i.aw) ; 2 uses
  %.not439 = icmp eq ptr %i.qy, null
  br i1 %.not439, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.cu

bb.cu:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.thread
  %i.qz = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !1247 ; 2 uses
  store i32 %i.rb, ptr %i.qz, align 8, !tbaa !1247
  %i.rc = icmp ult i32 %i.rb, 65
  br i1 %i.rc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.rd = load i64, ptr %13, align 8, !tbaa !1129
  store i64 %i.rd, ptr %31, align 8, !tbaa !1129
  br label %_ZN4llvm6APSIntC2ERKS0_.exit548

bb.cw:                                            ; preds = %bb.cu
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %31, ptr noundef nonnull align 8 dereferenceable(13) %13) #31
  br label %_ZN4llvm6APSIntC2ERKS0_.exit548

_ZN4llvm6APSIntC2ERKS0_.exit548:                  ; preds = %bb.cv, %bb.cw
  %i.re = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.rf = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.rg = load i8, ptr %i.rf, align 4, !tbaa !1249, !range !1111, !noundef !734
  store i8 %i.rg, ptr %i.re, align 4, !tbaa !1249
  %i.rh = call fastcc noundef i32 @_ZL21checkFormatStringExprRN5clang4SemaEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefIS7_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeENS_16VariadicCallTypeEbRNS8_14SmallBitVectorERN12_GLOBAL__N_119UncoveredArgHandlerENS8_6APSIntEPSt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef nonnull %i.qy, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr nofree noundef align 8 dereferenceable(16) %31, ptr noundef %14, i1 noundef zeroext %15) ; 3 uses
  %i.ri = load i32, ptr %i.qz, align 8, !tbaa !1247
  %i.rj = icmp ugt i32 %i.ri, 64
  br i1 %i.rj, label %bb.cx, label %_ZN4llvm5APIntD2Ev.exit554

bb.cx:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit548
  %i.rk = load ptr, ptr %31, align 8, !tbaa !1129 ; 2 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @_ZdaPv(ptr noundef nonnull %i.rk) #33
  br label %_ZN4llvm5APIntD2Ev.exit554

bb.cz:                                            ; preds = %bb.c
  %i.rm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.rn = load i32, ptr %i.rm, align 8
  %i.ro = and i32 %i.rn, 16777216
  %.not.i550 = icmp eq i32 %i.ro, 0
  %i.rp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.rq = load i64, ptr %i.rp, align 8            ; 2 uses
  %i.rr = inttoptr i64 %i.rq to ptr               ; 4 uses
  %.not432688 = icmp eq i64 %i.rq, 0
  %.not432 = select i1 %.not.i550, i1 true, i1 %.not432688
  br i1 %.not432, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rs = call noundef ptr @_ZNK5clang4Decl7getAttrINS_13FormatArgAttrEEEPT_v(ptr noundef nonnull align 8 dereferenceable(33) %i.rr) ; 2 uses
  %.not433 = icmp eq ptr %i.rs, null
  br i1 %.not433, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 56
  %i.ru = load i24, ptr %i.rt, align 8
  %i.rv = and i24 %i.ru, 131072
  %.not689 = icmp eq i24 %i.rv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  br i1 %.not689, label %.critedge, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rw = call noundef ptr @_ZN5clang14ObjCMethodDecl17getClassInterfaceEv(ptr noundef nonnull align 8 dereferenceable(136) %i.rr) #31 ; 2 uses
  %.not434 = icmp eq ptr %i.rw, null
  br i1 %.not434, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !1256
  %i.rz = and i64 %i.ry, -8
  %i.sa = inttoptr i64 %i.rz to ptr
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !1327 ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !1329
  %i.se = and i64 %i.sd, 4294967295
  %i.sf = icmp eq i64 %i.se, 8
  br i1 %i.sf, label %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit, label %.critedge

_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit: ; preds = %bb.dd
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sh = load i64, ptr %i.sg, align 1
  %i.si = icmp ne i64 %i.sh, 7308326720891933518
  %i.sj = zext i1 %i.si to i32
  %i.sk = icmp eq i32 %i.sj, 0
  br i1 %i.sk, label %bb.de, label %.critedge

bb.de:                                            ; preds = %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rr, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.sl, align 8, !tbaa !1130
  store i64 %.sroa.0.0.copyload.i.i, ptr %32, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(48) @constinit.137, i64 48, i1 false), !tbaa.struct !2312
  %i.sm = call noundef zeroext i1 @_ZNK5clang8Selector17isKeywordSelectorEN4llvm8ArrayRefINS1_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr nonnull %33, i64 3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  %spec.select461 = or i1 %15, %i.sm
  br label %bb.df

.critedge:                                        ; preds = %bb.dd, %bb.db, %bb.dc, %_ZNK5clang14IdentifierInfo5isStrILm9EEEbRAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.critedge
  %.0372.shrunk = phi i1 [ %15, %.critedge ], [ %spec.select461, %bb.de ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rs, i64 40
  %.sroa.0.0.copyload.i552 = load i32, ptr %i.sn, align 8, !tbaa !1129 ; 2 uses
  %i.so = and i32 %.sroa.0.0.copyload.i552, 1073741823
  %46 = add nsw i32 %i.so, -1
  %47 = shl i32 %.sroa.0.0.copyload.i552, 1
  %48 = ashr i32 %47, 31
  %i.sp = add nsw i32 %46, %48
  %i.sq = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.sr = zext i32 %i.sp to i64
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sr
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !1154
  %i.su = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !1247 ; 2 uses
  store i32 %i.sw, ptr %i.su, align 8, !tbaa !1247
  %i.sx = icmp ult i32 %i.sw, 65
  br i1 %i.sx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sy = load i64, ptr %13, align 8, !tbaa !1129
  store i64 %i.sy, ptr %34, align 8, !tbaa !1129
  br label %_ZN4llvm6APSIntC2ERKS0_.exit553

bb.dh:                                            ; preds = %bb.df
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %34, ptr noundef nonnull align 8 dereferenceable(13) %13) #31
  br label %_ZN4llvm6APSIntC2ERKS0_.exit553

_ZN4llvm6APSIntC2ERKS0_.exit553:                  ; preds = %bb.dg, %bb.dh
  %i.sz = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.ta = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.tb = load i8, ptr %i.ta, align 4, !tbaa !1249, !range !1111, !noundef !734
  store i8 %i.tb, ptr %i.sz, align 4, !tbaa !1249
  %i.tc = call fastcc noundef i32 @_ZL21checkFormatStringExprRN5clang4SemaEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefIS7_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeENS_16VariadicCallTypeEbRNS8_14SmallBitVectorERN12_GLOBAL__N_119UncoveredArgHandlerENS8_6APSIntEPSt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, ptr noundef %i.st, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr nofree noundef align 8 dereferenceable(16) %34, ptr noundef %14, i1 noundef zeroext %.0372.shrunk) ; 3 uses
  %i.td = load i32, ptr %i.su, align 8, !tbaa !1247
  %i.te = icmp ugt i32 %i.td, 64
  br i1 %i.te, label %bb.di, label %_ZN4llvm5APIntD2Ev.exit554

bb.di:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit553
  %i.tf = load ptr, ptr %34, align 8, !tbaa !1129 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZdaPv(ptr noundef nonnull %i.tf) #33
  br label %_ZN4llvm5APIntD2Ev.exit554

bb.dk:                                            ; preds = %bb.c
  %i.th = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !1624 ; 2 uses
  %.not431 = icmp eq ptr %i.ti, null
  br i1 %.not431, label %_ZN4llvm5APIntD2Ev.exit554, label %.thread662

.thread662:                                       ; preds = %bb.c, %bb.dk
  %.0371665 = phi ptr [ %i.ti, %bb.dk ], [ %i.aw, %bb.c ] ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.tk = load i8, ptr %i.tj, align 4, !tbaa !1249, !range !1111, !noundef !734
  %i.tl = trunc nuw i8 %i.tk to i1
  br i1 %i.tl, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %_ZNK4llvm6APSInt10isNegativeEv.exit

_ZNK4llvm6APSInt10isNegativeEv.exit:              ; preds = %.thread662
  %i.tm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !1247 ; 2 uses
  %i.to = add i32 %i.tn, -1                       ; 2 uses
  %i.tp = and i32 %i.to, 63
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = shl nuw i64 1, %i.tq
  %i.ts = icmp ult i32 %i.tn, 65
  %i.tt = load ptr, ptr %13, align 8
  %i.tu = lshr i32 %i.to, 6
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tv
  %.in.i.i.i.i = select i1 %i.ts, ptr %13, ptr %i.tw
  %i.tx = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !1129
  %i.ty = and i64 %i.tr, %i.tx
  %.not687 = icmp eq i64 %i.ty, 0
  br i1 %.not687, label %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, label %_ZN4llvm5APIntD2Ev.exit554

_ZNK4llvm6APSInt10isNegativeEv.exit.thread:       ; preds = %.thread662, %_ZNK4llvm6APSInt10isNegativeEv.exit
  %i.tz = getelementptr inbounds nuw i8, ptr %.0371665, i64 16
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !1103
  %i.ub = zext i32 %i.ua to i64
  %i.uc = call noundef zeroext i1 @_ZNK4llvm6APSIntgtEl(ptr noundef nonnull align 8 dereferenceable(13) %13, i64 noundef %i.ub)
  br i1 %i.uc, label %_ZN4llvm5APIntD2Ev.exit554, label %bb.dl

bb.dl:                                            ; preds = %_ZNK4llvm6APSInt10isNegativeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %36, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 64) #31
  %i.ud = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !1247 ; 3 uses
  %i.uf = icmp ult i32 %i.ue, 65
  br i1 %i.uf, label %_ZNK4llvm5APInt12getSExtValueEv.exit, label %bb.dm

_ZNK4llvm5APInt12getSExtValueEv.exit:             ; preds = %bb.dl
  %i.ug = load i64, ptr %36, align 8, !tbaa !1129
  %i.uh = icmp eq i32 %i.ue, 0
  %i.ui = sub nuw nsw i32 64, %i.ue
  %i.uj = zext nneg i32 %i.ui to i64              ; 2 uses
  %i.uk = shl i64 %i.ug, %i.uj
  %i.ul = ashr exact i64 %i.uk, %i.uj
  %.0.i.i557 = select i1 %i.uh, i64 0, i64 %i.ul
  store ptr %.0371665, ptr %35, align 8, !tbaa !1646
  %i.um = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %.0.i.i557, ptr %i.um, align 8, !tbaa !1647
  br label %_ZN4llvm5APIntD2Ev.exit558

bb.dm:                                            ; preds = %bb.dl
  %i.un = load ptr, ptr %36, align 8, !tbaa !1129 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !1130
  store ptr %.0371665, ptr %35, align 8, !tbaa !1646
  %i.up = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !1647
  call void @_ZdaPv(ptr noundef nonnull %i.un) #33
  br label %_ZN4llvm5APIntD2Ev.exit558

_ZN4llvm5APIntD2Ev.exit558:                       ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  call fastcc void @_ZL17CheckFormatStringRN5clang4SemaEPKN12_GLOBAL__N_119FormatStringLiteralEPKNS_13StringLiteralEPKNS_4ExprEN4llvm8ArrayRefISB_EENS0_25FormatArgumentPassingKindEjjNS_16FormatStringTypeEbNS_16VariadicCallTypeERNSC_14SmallBitVectorERNS2_19UncoveredArgHandlerEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %35, ptr noundef %1, ptr noundef nonnull %i.aw, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %10, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(56) %12, i1 noundef zeroext %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %_ZN4llvm5APIntD2Ev.exit554

bb.dn:                                            ; preds = %bb.c
  %i.uq = load i32, ptr %i.aw, align 8
  %i.ur = lshr i32 %i.uq, 19
  %i.us = and i32 %i.ur, 63
  %i.ut = add nsw i32 %i.us, -5
  %i.uu = icmp ult i32 %i.ut, 2
  br i1 %i.uu, label %bb.do, label %_ZN4llvm5APIntD2Ev.exit554

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store i8 0, ptr %37, align 8, !tbaa !1303
  store i8 0, ptr %i.ac, align 1, !tbaa !1304
  store i8 0, ptr %i.ad, align 2, !tbaa !1305
  store ptr null, ptr %i.ae, align 8, !tbaa !1306
  store i32 0, ptr %i.af, align 8, !tbaa !1310
  %i.uv = load i8, ptr %i.ag, align 4
  %i.uw = and i8 %i.uv, -2
  store i8 %i.uw, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  store i8 0, ptr %38, align 8, !tbaa !1303
  store i8 0, ptr %i.ah, align 1, !tbaa !1304
  store i8 0, ptr %i.ai, align 2, !tbaa !1305
  store ptr null, ptr %i.aj, align 8, !tbaa !1306
  store i32 0, ptr %i.ak, align 8, !tbaa !1310
  %i.ux = load i8, ptr %i.al, align 4
  %i.uy = and i8 %i.ux, -2
  store i8 %i.uy, ptr %i.al, align 4
  %i.uz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !1313
  %i.vb = load ptr, ptr %i.r, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.vc = load ptr, ptr %i.c, align 8, !tbaa !1152
  %i.vd = load i32, ptr %i.e, align 8, !tbaa !1149
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [792 x i8], ptr %i.vc, i64 %i.ve
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 -792
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !1202
  %i.vi = and i32 %i.vh, -2
  %spec.select.i.i559 = icmp eq i32 %i.vi, 4
  %i.vj = load i8, ptr %i.l, align 8, !range !1111
  %i.vk = trunc nuw i8 %i.vj to i1
  %i.vl = select i1 %spec.select.i.i559, i1 true, i1 %i.vk
  %i.vm = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(23904) %i.vb, i32 noundef 0, i1 noundef zeroext %i.vl) #31 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !1313
  %i.vp = load ptr, ptr %i.r, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.vq = load ptr, ptr %i.c, align 8, !tbaa !1152
  %i.vr = load i32, ptr %i.e, align 8, !tbaa !1149
  %i.vs = zext i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [792 x i8], ptr %i.vq, i64 %i.vs
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 -792
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !1202
  %i.vw = and i32 %i.vv, -2
  %spec.select.i.i560 = icmp eq i32 %i.vw, 4
  %i.vx = load i8, ptr %i.l, align 8, !range !1111
  %i.vy = trunc nuw i8 %i.vx to i1
  %i.vz = select i1 %spec.select.i.i560, i1 true, i1 %i.vy
  %i.wa = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %i.vo, ptr noundef nonnull align 8 dereferenceable(72) %38, ptr noundef nonnull align 8 dereferenceable(23904) %i.vp, i32 noundef 0, i1 noundef zeroext %i.vz) #31
  %i.wb = xor i1 %i.vm, %i.wa
  br i1 %i.wb, label %bb.dp, label %.thread668

bb.dp:                                            ; preds = %bb.do
  %i.wc = load i32, ptr %i.aw, align 8
  %i.wd = lshr i32 %i.wc, 19
  %i.we = and i32 %i.wd, 63                       ; 2 uses
  br i1 %i.vm, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.wf = icmp eq i32 %i.we, 5
  br i1 %i.wf, label %bb.dr, label %.thread668

bb.dr:                                            ; preds = %bb.dq
  %i.wg = load i32, ptr %i.at, align 8, !tbaa !1247 ; 2 uses
  store i32 %i.wg, ptr %i.as, align 8, !tbaa !1247
  %i.wh = icmp ult i32 %i.wg, 65
  br i1 %i.wh, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.wi = load i64, ptr %i.ar, align 8, !tbaa !1129
  store i64 %i.wi, ptr %39, align 8, !tbaa !1129
  br label %_ZN4llvm6APSIntC2ERKS0_.exit561

bb.dt:                                            ; preds = %bb.dr
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %39, ptr noundef nonnull align 8 dereferenceable(13) %i.ar) #31
  br label %_ZN4llvm6APSIntC2ERKS0_.exit561

_ZN4llvm6APSIntC2ERKS0_.exit561:                  ; preds = %bb.ds, %bb.dt
end_hunk_3
begin_hunk_4_@_ZN5clang4Sema28DiagnoseAlwaysNonNullPointerEPNS_4ExprENS1_23NullPointerConstantKindEbNS_11SourceRangeE:bb.a
  br i1 %.not139, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 128
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1732 ; 2 uses
  %.not.i198 = icmp eq ptr %i.hx, null
  br i1 %.not.i198, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit:        ; preds = %bb.aq
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = and i32 %i.hz, 8388608
  %.not265 = icmp eq i32 %i.ia, 0
  br i1 %.not265, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %.critedge156

.critedge156:                                     ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ic = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.id = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i32 %i.id, i32 noundef 7239) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i32 3, ptr %i.e, align 4, !tbaa !1103
  %i.ie = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.if = load ptr, ptr %i.hv, align 8, !tbaa !1143
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call i64 %i.ih(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #32
  store i64 %i.ii, ptr %14, align 8
  %i.ij = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ie, ptr noundef nonnull align 4 dereferenceable(8) %14)
  %i.ik = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ij, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.il = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ik, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %.critedge154

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread: ; preds = %bb.aq, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit, %bb.ap, %bb.ao, %.critedge152
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !1154 ; 2 uses
  %i.in = load i16, ptr %i.im, align 8
  %i.io = and i16 %i.in, 511
  switch i16 %i.io, label %.critedge154 [
    i16 73, label %bb.as
    i16 46, label %bb.ar
  ]

bb.ar:                                            ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread
  br label %bb.as

bb.as:                                            ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, %bb.ar
  %.sink = phi i64 [ 24, %bb.ar ], [ 16, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %.sink
  %.1121 = load ptr, ptr %i.ip, align 8, !tbaa !1733 ; 6 uses
  %.not142 = icmp eq ptr %.1121, null
  br i1 %.not142, label %.critedge154, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iq = call noundef zeroext i1 @_ZNK5clang9ValueDecl6isWeakEv(ptr noundef nonnull align 8 dereferenceable(56) %.1121) #31
  br i1 %i.iq, label %.critedge154, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.ir = getelementptr inbounds nuw i8, ptr %.1121, i64 28
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = and i32 %i.is, 127
  %i.iu = icmp eq i32 %i.it, 44
  %spec.select.i.i201 = select i1 %i.iu, ptr %.1121, ptr null ; 2 uses
  store ptr %spec.select.i.i201, ptr %i.f, align 8, !tbaa !1299
  %.not143 = icmp eq ptr %spec.select.i.i201, null
  br i1 %.not143, label %.critedge168, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !1149 ; 2 uses
  %.not.i.i202 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i202, label %.critedge168, label %_ZNK5clang4Sema14getCurFunctionEv.exit

_ZNK5clang4Sema14getCurFunctionEv.exit:           ; preds = %bb.av
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !1152
  %i.iz = zext i32 %i.iw to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !1734 ; 2 uses
  %.not144 = icmp eq ptr %i.jc, null
  br i1 %.not144, label %.critedge168, label %_ZNK5clang4Sema14getCurFunctionEv.exit204

_ZNK5clang4Sema14getCurFunctionEv.exit204:        ; preds = %_ZNK5clang4Sema14getCurFunctionEv.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 640
  %i.je = call noundef i32 @_ZNK4llvm15SmallPtrSetImplIPKN5clang11ParmVarDeclEE5countES4_(ptr noundef nonnull align 8 dereferenceable(17) %i.jd, ptr noundef nonnull %.1121)
  %.not145 = icmp eq i32 %i.je, 0
  br i1 %.not145, label %bb.aw, label %.critedge168

bb.aw:                                            ; preds = %_ZNK5clang4Sema14getCurFunctionEv.exit204
  %i.jf = load ptr, ptr %i.f, align 8, !tbaa !1299
  %i.jg = call noundef ptr @_ZNK5clang4Decl7getAttrINS_11NonNullAttrEEEPT_v(ptr noundef nonnull align 8 dereferenceable(33) %i.jf) ; 2 uses
  %.not146 = icmp eq ptr %i.jg, null
  br i1 %.not146, label %.critedge160, label %.critedge169.sink.split

.critedge160:                                     ; preds = %bb.aw
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !1299
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ji, align 8 ; 3 uses
  %i.jj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.critedge160
  %i.jl = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

bb.ay:                                            ; preds = %.critedge160
  %i.jm = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1507
  br label %_ZNK5clang4Decl14getDeclContextEv.exit

_ZNK5clang4Decl14getDeclContextEv.exit:           ; preds = %bb.ax, %bb.ay
  %.0.i.i = phi ptr [ %i.jl, %bb.ax ], [ %i.jo, %bb.ay ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.jq = load i16, ptr %i.jp, align 8
  %i.jr = and i16 %i.jq, 127
  %i.js = add nsw i16 %i.jr, -41
  %i.jt = icmp ult i16 %i.js, -6
  %i.ju = getelementptr inbounds i8, ptr %.0.i.i, i64 -72 ; 4 uses
  br i1 %i.jt, label %.critedge168, label %bb.az

bb.az:                                            ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit
  %i.jv = call noundef i32 @_ZNK5clang12FunctionDecl16getTemplatedKindEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ju) #31
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %.critedge169, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1297
  %i.jz = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ju) #31
  %i.ka = zext i32 %i.jz to i64
  store ptr %i.jy, ptr %15, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ka, ptr %i.kb, align 8
  %i.kc = call noundef ptr @_ZN4llvm4findINS_8ArrayRefIPN5clang11ParmVarDeclEEEPKS3_EEDaOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !1297
  %i.ke = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ju) #31 ; 0 uses
  %i.kf = ptrtoint ptr %i.kc to i64
  %i.kg = ptrtoint ptr %i.kd to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = lshr exact i64 %i.kh, 3
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = call { ptr, ptr } @_ZNK5clang4Decl14specific_attrsINS_11NonNullAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ju) ; 2 uses
  %i.kl = extractvalue { ptr, ptr } %i.kk, 0      ; 2 uses
  %i.km = extractvalue { ptr, ptr } %i.kk, 1      ; 2 uses
  %i.kn = call noundef zeroext i1 @_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_(ptr %i.kl, ptr %i.km)
  br i1 %i.kn, label %.lr.ph, label %.critedge168

.lr.ph:                                           ; preds = %bb.ba, %.critedge
  %.sroa.0237.0279 = phi ptr [ %i.lj, %.critedge ], [ %i.kl, %bb.ba ] ; 3 uses
  %i.ko = load ptr, ptr %.sroa.0237.0279, align 8, !tbaa !1205 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 36
  %i.kq = load i16, ptr %i.kp, align 4
  %i.kr = icmp eq i16 %i.kq, 109
  br i1 %i.kr, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %i.ks = phi ptr [ %i.kt, %.lr.ph.i.i ], [ %.sroa.0237.0279, %.lr.ph ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !1205 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  %i.kw = load i16, ptr %i.kv, align 4
  %i.kx = icmp eq i16 %i.kw, 109
  br i1 %i.kx, label %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit: ; preds = %.lr.ph.i.i, %.lr.ph
  %.sroa.0237.1 = phi ptr [ %.sroa.0237.0279, %.lr.ph ], [ %i.kt, %.lr.ph.i.i ]
  %i.ky = phi ptr [ %i.ko, %.lr.ph ], [ %i.ku, %.lr.ph.i.i ] ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !1474 ; 2 uses
  %.not148 = icmp eq i32 %i.la, 0
  br i1 %.not148, label %.critedge169.sink.split, label %.critedge162.preheader

.critedge162.preheader:                           ; preds = %_ZNK5clang22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1475 ; 2 uses
  %i.ld = zext i32 %i.la to i64
  %.idx = shl nuw nsw i64 %i.ld, 2
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %.idx
  br label %.critedge162

bb.bb:                                            ; preds = %.critedge162
  %i.lf = getelementptr inbounds nuw i8, ptr %.0119278, i64 4 ; 2 uses
  %.not149 = icmp eq ptr %i.lf, %i.le
  br i1 %.not149, label %.critedge, label %.critedge162

.critedge162:                                     ; preds = %.critedge162.preheader, %bb.bb
  %.0119278 = phi ptr [ %i.lf, %bb.bb ], [ %i.lc, %.critedge162.preheader ] ; 2 uses
  %i.lg = load i32, ptr %.0119278, align 4        ; 2 uses
  %i.lh = and i32 %i.lg, 1073741823
  %28 = add nsw i32 %i.lh, -1
  %29 = shl i32 %i.lg, 1
  %30 = ashr i32 %29, 31
  %i.li = add nsw i32 %28, %30
  %.not150 = icmp eq i32 %i.li, %i.kj
  br i1 %.not150, label %.critedge169.sink.split, label %bb.bb

.critedge:                                        ; preds = %bb.bb
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0237.1, i64 8 ; 2 uses
  %i.lk = call noundef zeroext i1 @_ZN5clangneENS_22specific_attr_iteratorINS_11NonNullAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_(ptr nonnull %i.lj, ptr %i.km)
  br i1 %i.lk, label %.lr.ph, label %.critedge168

.critedge168:                                     ; preds = %.critedge, %bb.ba, %bb.av, %_ZNK5clang4Decl14getDeclContextEv.exit, %bb.au, %_ZNK5clang4Sema14getCurFunctionEv.exit204, %_ZNK5clang4Sema14getCurFunctionEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.ll = getelementptr inbounds nuw i8, ptr %.1121, i64 48
  %.sroa.0.0.copyload.i208 = load i64, ptr %i.ll, align 8, !tbaa !1129
  %i.lm = and i64 %.sroa.0.0.copyload.i208, -16
  %i.ln = inttoptr i64 %i.lm to ptr               ; 4 uses
  %i.lo = load ptr, ptr %i.ln, align 16, !tbaa !1324 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.lp, align 8, !tbaa !1129
  %i.lq = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.lr = inttoptr i64 %i.lq to ptr
  %i.ls = load ptr, ptr %i.lr, align 16, !tbaa !1324
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i8, ptr %i.lt, align 16
  %i.lv = and i8 %i.lu, -2
  %spec.select.i.i.i.i.i.i.i.i.i209 = icmp eq i8 %i.lv, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i209, label %bb.bc, label %.thread260

bb.bc:                                            ; preds = %.critedge168
  %i.lw = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lo) #31
  %i.lx = and i64 %i.lw, -16
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !1324
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.sroa.0.0.copyload.i.i.i.i212 = load i64, ptr %i.ma, align 8, !tbaa !1129
  %i.mb = and i64 %.sroa.0.0.copyload.i.i.i.i212, -16
  %i.mc = inttoptr i64 %i.mb to ptr
  %i.md = load ptr, ptr %i.mc, align 16, !tbaa !1324
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load i8, ptr %i.me, align 16
  %i.mg = add i8 %i.mf, -23
  %spec.select.i.i.i.i.i.i.i.i.i213 = icmp ult i8 %i.mg, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i213, label %bb.bd, label %.thread260

bb.bd:                                            ; preds = %bb.bc
  %i.mh = load ptr, ptr %i.ln, align 16, !tbaa !1324
  %i.mi = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.mh) #31
  %.pre287 = and i64 %i.mi, -16
  %.pre288 = inttoptr i64 %.pre287 to ptr
  br label %.thread260

.thread260:                                       ; preds = %.critedge168, %bb.bd, %bb.bc
  %.pre-phi289 = phi ptr [ %i.ln, %.critedge168 ], [ %.pre288, %bb.bd ], [ %i.ln, %bb.bc ]
  %.not270 = phi i1 [ true, %.critedge168 ], [ false, %bb.bd ], [ true, %bb.bc ]
  %i.mj = load ptr, ptr %.pre-phi289, align 8, !tbaa !1324
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.sroa.0.0.copyload.i.i.i.i216 = load i64, ptr %i.mk, align 8, !tbaa !1129
  %i.ml = and i64 %.sroa.0.0.copyload.i.i.i.i216, -16
  %i.mm = inttoptr i64 %i.ml to ptr
  %i.mn = load ptr, ptr %i.mm, align 16, !tbaa !1324
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i8, ptr %i.mo, align 16            ; 2 uses
  %i.mq = add i8 %i.mp, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.mq, 5
  %i.mr = add i8 %i.mp, -23
  %spec.select.i.i.i.i.i.i.i.i.i219 = icmp ult i8 %i.mr, 2 ; 4 uses
  %i.ms = or i1 %spec.select.i.i.i.i.i.i.i.i.i219, %switch.i.i.i.i.i.i.i.i.i
  %i.mt = xor i1 %spec.select.i.i.i.i.i.i.i.i.i219, true
  %or.cond171 = select i1 %i.ao, i1 %i.mt, i1 %i.ms
  br i1 %or.cond171, label %bb.be, label %.critedge154

bb.be:                                            ; preds = %.thread260
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.mu, ptr %16, align 8, !tbaa !1315
  %i.mv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.mv, align 8, !tbaa !1255
  store i8 0, ptr %i.mu, align 8, !tbaa !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.mw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %i.mw, align 8, !tbaa !1340
  %i.mx = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i8 0, ptr %i.mx, align 8, !tbaa !1341
  %i.my = getelementptr inbounds nuw i8, ptr %17, i64 44
  store i32 1, ptr %i.my, align 4, !tbaa !1342
  %i.mz = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %17, align 8, !tbaa !1143
  %i.na = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %16, ptr %i.na, align 8, !tbaa !1637
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef null, i64 noundef 0, i32 noundef 0) #31
  %i.nb = load ptr, ptr %i.b, align 8, !tbaa !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !737, !nonnull !734, !align !735
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !1508
  %i.ng = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.nd, ptr noundef nonnull align 1 %i.nf) #31 ; 2 uses
  %i.nh = extractvalue { i64, ptr } %i.ng, 0
  store i64 %i.nh, ptr %18, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.nj = extractvalue { i64, ptr } %i.ng, 1
  store ptr %i.nj, ptr %i.ni, align 8
  store ptr @.str.58, ptr %19, align 8, !tbaa !1240
  %i.nk = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.nk, align 8, !tbaa !1311
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.nb, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %19, ptr noundef null) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.nl = load i8, ptr %i.d, align 1, !tbaa !1203, !range !1111, !noundef !734
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = select i1 %i.nm, i32 7415, i32 7239
  %spec.select = select i1 %spec.select.i.i.i.i.i.i.i.i.i219, i32 1, i32 2
  %.0242 = select i1 %i.ao, i32 0, i32 %spec.select
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.np = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.nq = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.no, i32 %i.nq, i32 noundef %i.nn) #31
  %i.nr = call fastcc noundef nonnull align 8 dereferenceable(136) ptr @"_ZN5clanglsIZNS_4Sema28DiagnoseAlwaysNonNullPointerEPNS_4ExprENS2_23NullPointerConstantKindEbNS_11SourceRangeEE3$_0EERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_"(ptr noundef nonnull align 8 dereferenceable(136) %20, i32 %.0242) ; 0 uses
  %i.ns = load ptr, ptr %i.na, align 8, !tbaa !1736, !nonnull !734, !align !735
  %i.nt = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS_8SemaBase21SemaDiagnosticBuilderESA_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.ns)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %i.nu = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.nv = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nu) #32
  store i64 %i.nv, ptr %21, align 8
  %i.nw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nt, ptr noundef nonnull align 4 dereferenceable(8) %21)
  %i.nx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nw, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ny = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIbEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.nx, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %or.cond22.not = and i1 %.not270, %spec.select.i.i.i.i.i.i.i.i.i219
  br i1 %or.cond22.not, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.nz = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.oa = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nz) #32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.no, i32 %i.oa, i32 noundef 6167) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.ob = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.oc = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ob) #32
  call void @_ZN5clang9FixItHint15CreateInsertionENS_14SourceLocationEN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %23, i32 %i.oc, ptr nonnull @.str.63, i64 1, i1 noundef zeroext false)
  %i.od = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %22, ptr noundef nonnull align 8 dereferenceable(57) %23) ; 0 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !1254 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !1129
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #33
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  store i64 0, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.ok = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.ok, ptr %25, align 8, !tbaa !1152
  %i.ol = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 0, ptr %i.ol, align 8, !tbaa !1149
  %i.om = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i32 4, ptr %i.om, align 4, !tbaa !1150
  %i.on = load ptr, ptr %i.b, align 8, !tbaa !1154
  %i.oo = call noundef zeroext i1 @_ZN5clang4Sema13tryExprAsCallERNS_4ExprERNS_8QualTypeERNS_17UnresolvedSetImplE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25) #31 ; 0 uses
  %.0.copyload.i.i.i.i = load i64, ptr %24, align 8 ; 2 uses
  %i.op = icmp ult i64 %.0.copyload.i.i.i.i, 16
  br i1 %i.op, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZN5clang9FixItHintD2Ev.exit
  %i.oq = load i8, ptr %i.d, align 1, !tbaa !1203, !range !1111, !noundef !734
  %i.or = trunc nuw i8 %i.oq to i1
  %i.os = and i64 %.0.copyload.i.i.i.i, -16
  %i.ot = inttoptr i64 %i.os to ptr
  %i.ou = load ptr, ptr %i.ot, align 16, !tbaa !1324 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.0.0.copyload.i.i.i.i221 = load i64, ptr %i.ov, align 8, !tbaa !1129
  %i.ow = and i64 %.sroa.0.0.copyload.i.i.i.i221, -16
  %i.ox = inttoptr i64 %i.ow to ptr
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !1324 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 16            ; 2 uses
  br i1 %i.or, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.pb = icmp eq i8 %i.pa, 40
  br i1 %i.pb, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pc = add i32 %2, -1
  %or.cond24 = icmp ult i32 %i.pc, 2
  br i1 %or.cond24, label %bb.bj, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.pd = call noundef zeroext i1 @_ZNK5clang4Type13isIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ou)
  br i1 %i.pd, label %bb.bl, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread
end_hunk_4
