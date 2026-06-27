inline.NumInlined: 7937
inline.NumDeleted: 2595
begin_hunk_0_@_ZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.am:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #34
  %i.ga = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIsEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 384
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef signext i16 %i.gd(ptr noundef nonnull align 8 dereferenceable(112) %i.ga, i32 noundef %1), !inline_history !253 ; 2 uses
  store i16 %i.ge, ptr %i.y, align 2, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #34
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !128
  %.not.i.i.i7.i = icmp eq i8 %i.gg, 2
  br i1 %.not.i.i.i7.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i8.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i8.i: ; preds = %bb.am
  %i.gh = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ao, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE2EEERKDav.exit.i.i

bb.ao:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i8.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE2EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i8.i
  %i.gj = load i16, ptr %i.gh, align 2, !tbaa !254 ; 2 uses
  store i16 %i.gj, ptr %i.z, align 2, !tbaa !254
  %i.gk = load ptr, ptr %0, align 8, !tbaa !195
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !26 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 17
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !233, !range !65, !noundef !66
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE2EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.gm, ptr %i.x, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #34
  store ptr %i.x, ptr %33, align 8, !tbaa !235
  %i.gq = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.y, ptr %i.gq, align 8, !tbaa !256
  %i.gr = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.z, ptr %i.gr, align 8, !tbaa !256
  %i.gs = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIsE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKsS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %33), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.gt = icmp eq i32 %i.gs, 0
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE2EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.aq:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE2EEERKDav.exit.i.i
  %i.gu = icmp eq i16 %i.ge, %i.gj
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE2EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE2EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i: ; preds = %bb.aq, %bb.ap
  %i.gv = phi i1 [ %i.gt, %bb.ap ], [ %i.gu, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.ar:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #34
  %i.gw = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIlEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 384
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = tail call noundef i64 %i.gz(ptr noundef nonnull align 8 dereferenceable(136) %i.gw, i32 noundef %1), !inline_history !258 ; 2 uses
  store i64 %i.ha, ptr %i.v, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #34
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !128
  %.not.i.i.i9.i = icmp eq i8 %i.hc, 4
  br i1 %.not.i.i.i9.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i10.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 4) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i10.i: ; preds = %bb.ar
  %i.hd = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.at, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE4EEERKDav.exit.i.i

bb.at:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i10.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE4EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i10.i
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !67 ; 2 uses
  store i64 %i.hf, ptr %i.w, align 8, !tbaa !67
  %i.hg = load ptr, ptr %0, align 8, !tbaa !195
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 17
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !233, !range !65, !noundef !66
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE4EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.hi, ptr %i.u, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #34
  store ptr %i.u, ptr %32, align 8, !tbaa !235
  %i.hm = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.v, ptr %i.hm, align 8, !tbaa !259
  %i.hn = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.w, ptr %i.hn, align 8, !tbaa !259
  %i.ho = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIlE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKlS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %32), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hp = icmp eq i32 %i.ho, 0
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE4EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.av:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE4EEERKDav.exit.i.i
  %i.hq = icmp eq i64 %i.ha, %i.hf
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE4EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE4EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i: ; preds = %bb.av, %bb.au
  %i.hr = phi i1 [ %i.hp, %bb.au ], [ %i.hq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.aw:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #34
  %i.hs = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 16, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 384
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = tail call noundef nonnull align 16 dereferenceable(16) ptr %i.hv(ptr noundef nonnull align 16 dereferenceable(176) %i.hs, i32 noundef %1), !inline_history !260
  %i.hx = load i128, ptr %i.hw, align 16, !tbaa !261 ; 2 uses
  store i128 %i.hx, ptr %i.s, align 16, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #34
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !128
  %.not.i.i.i11.i = icmp eq i8 %i.hz, 10
  br i1 %.not.i.i.i11.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i12.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 10) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i12.i: ; preds = %bb.aw
  %i.ia = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.ay, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE10EEERKDav.exit.i.i

bb.ay:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i12.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE10EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i12.i
  %i.ic = load i128, ptr %i.ia, align 16, !tbaa !261 ; 2 uses
  store i128 %i.ic, ptr %i.t, align 16, !tbaa !261
  %i.id = load ptr, ptr %0, align 8, !tbaa !195
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !26 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 17
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !233, !range !65, !noundef !66
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE10EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.if, ptr %i.r, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  store ptr %i.r, ptr %31, align 8, !tbaa !235
  %i.ij = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.s, ptr %i.ij, align 8, !tbaa !263
  %i.ik = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %i.t, ptr %i.ik, align 8, !tbaa !263
  %i.il = call noundef i32 @_ZZN8facebook5velox12SimpleVectorInE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKnS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %31), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.im = icmp eq i32 %i.il, 0
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE10EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.ba:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE10EEERKDav.exit.i.i
  %i.in = icmp eq i128 %i.hx, %i.ic
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE10EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE10EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i: ; preds = %bb.ba, %bb.az
  %i.io = phi i1 [ %i.im, %bb.az ], [ %i.in, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.bb:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34
  %i.ip = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIfEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 384
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = tail call noundef float %i.is(ptr noundef nonnull align 8 dereferenceable(120) %i.ip, i32 noundef %1), !inline_history !265 ; 4 uses
  store float %i.it, ptr %i.p, align 4, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !128
  %.not.i.i.i13.i = icmp eq i8 %i.iv, 5
  br i1 %.not.i.i.i13.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i14.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 5) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i14.i: ; preds = %bb.bb
  %i.iw = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.bd, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE5EEERKDav.exit.i.i

bb.bd:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i14.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE5EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i14.i
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !266 ; 4 uses
  store float %i.iy, ptr %i.q, align 4, !tbaa !266
  %i.iz = load ptr, ptr %0, align 8, !tbaa !195
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !26 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 17
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !233, !range !65, !noundef !66
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE5EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.jb, ptr %i.o, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store ptr %i.o, ptr %30, align 8, !tbaa !235
  %i.jf = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %i.p, ptr %i.jf, align 8, !tbaa !268
  %i.jg = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.q, ptr %i.jg, align 8, !tbaa !268
  %i.jh = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIfE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKfS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %30), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE5EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.bf:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE5EEERKDav.exit.i.i
  %38 = fcmp ord float %i.it, 0.000000e+00        ; 2 uses
  %i.ji = fcmp ord float %i.iy, 0.000000e+00      ; 2 uses
  %i.jj = zext i1 %i.ji to i32
  %.010.i.i.i = select i1 %38, i32 -1, i32 %i.jj
  %.0.i.not.i.i = select i1 %38, i1 %i.ji, i1 false
  br i1 %.0.i.not.i.i, label %bb.bg, label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE5EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.jk = fcmp olt float %i.it, %i.iy
  %i.jl = fcmp une float %i.it, %i.iy
  %i.jm = zext i1 %i.jl to i32
  %i.jn = select i1 %i.jk, i32 -1, i32 %i.jm
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE5EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE5EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.jo = phi i32 [ %i.jh, %bb.be ], [ %i.jn, %bb.bg ], [ %.010.i.i.i, %bb.bf ]
  %i.jp = icmp eq i32 %i.jo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.bh:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #34
  %i.jq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIdEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 384
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = tail call noundef double %i.jt(ptr noundef nonnull align 8 dereferenceable(136) %i.jq, i32 noundef %1), !inline_history !270 ; 4 uses
  store double %i.ju, ptr %i.m, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !128
  %.not.i.i.i15.i = icmp eq i8 %i.jw, 6
  br i1 %.not.i.i.i15.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i16.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 6) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i16.i: ; preds = %bb.bh
  %i.jx = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.bj, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE6EEERKDav.exit.i.i

bb.bj:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i16.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE6EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i16.i
  %i.jz = load double, ptr %i.jx, align 8, !tbaa !91 ; 4 uses
  store double %i.jz, ptr %i.n, align 8, !tbaa !91
  %i.ka = load ptr, ptr %0, align 8, !tbaa !195
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !26 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 17
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !233, !range !65, !noundef !66
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE6EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.kc, ptr %i.l, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  store ptr %i.l, ptr %29, align 8, !tbaa !235
  %i.kg = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %i.m, ptr %i.kg, align 8, !tbaa !271
  %i.kh = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.n, ptr %i.kh, align 8, !tbaa !271
  %i.ki = call noundef i32 @_ZZN8facebook5velox12SimpleVectorIdE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKdS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %29), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE6EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.bl:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE6EEERKDav.exit.i.i
  %39 = fcmp ord double %i.ju, 0.000000e+00       ; 2 uses
  %i.kj = fcmp ord double %i.jz, 0.000000e+00     ; 2 uses
  %i.kk = zext i1 %i.kj to i32
  %.010.i.i17.i = select i1 %39, i32 -1, i32 %i.kk
  %.0.i.not.i18.i = select i1 %39, i1 %i.kj, i1 false
  br i1 %.0.i.not.i18.i, label %bb.bm, label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE6EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.kl = fcmp olt double %i.ju, %i.jz
  %i.km = fcmp une double %i.ju, %i.jz
  %i.kn = zext i1 %i.km to i32
  %i.ko = select i1 %i.kl, i32 -1, i32 %i.kn
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE6EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE6EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.kp = phi i32 [ %i.ki, %bb.bk ], [ %i.ko, %bb.bm ], [ %.010.i.i17.i, %bb.bl ]
  %i.kq = icmp eq i32 %i.kp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  br label %"_ZZN8facebook5velox4core12_GLOBAL__N_110equalsImplERKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantEENK3$_0clEv.exit"

bb.bn:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  %i.kr = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 0) #34, !inline_history !245 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !31
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 384
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(208) %i.kr, i32 noundef %1), !inline_history !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa.struct !274
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !128
  %.not.i.i.i19.i = icmp eq i8 %i.kx, 7
  br i1 %.not.i.i.i19.i, label %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i20.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZNK8facebook5velox7Variant21throwCheckIsKindErrorENS0_8TypeKindE(ptr noundef nonnull align 8 dereferenceable(10) %2, i8 noundef signext 7) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i20.i: ; preds = %bb.bn
  %i.ky = load ptr, ptr %2, align 8, !tbaa !120   ; 3 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bp, label %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE7EEERKDav.exit.i.i

bb.bp:                                            ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i20.i
  tail call void @_ZNK8facebook5velox7Variant18throwCheckPtrErrorEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #35, !inline_history !245
  unreachable

_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE7EEERKDav.exit.i.i: ; preds = %_ZNK8facebook5velox7Variant11checkIsKindENS0_8TypeKindE.exit.i.i20.i
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !22 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !25 ; 2 uses
  %i.ld = trunc i64 %i.lc to i32                  ; 9 uses
  store i32 %i.ld, ptr %28, align 8, !tbaa !275
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %bb.bq, label %bb.bt, !prof !21

bb.bq:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE7EEERKDav.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34, !noalias !277
  store i32 %i.ld, ptr %25, align 16, !tbaa !24, !noalias !277
  %i.lf = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.lf, align 16, !tbaa !24, !noalias !277
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %25), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34, !noalias !277
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr nonnull @.str.23) #35
          to label %bb.br unwind label %bb.bs, !inline_history !245

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = load ptr, ptr %26, align 8, !tbaa !22   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bs
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !24
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #38, !inline_history !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  br label %common.resume

bb.bt:                                            ; preds = %_ZNK8facebook5velox7Variant5valueILNS0_8TypeKindE7EEERKDav.exit.i.i
  %i.lm = icmp samesign ult i32 %i.ld, 13         ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 5 uses
  br i1 %i.lm, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.ln, align 4
  %i.lo = icmp eq i32 %i.ld, 0
  br i1 %i.lo, label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lp = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %i.lp, align 8, !tbaa !24
  %i.lq = and i64 %i.lc, 15
  %i.lr = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.lq) #34, !inline_history !245, !srcloc !280
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ln, ptr align 1 %i.la, i64 %i.lr, i1 false)
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.ls = load i32, ptr %i.la, align 1
  store i32 %i.ls, ptr %i.ln, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.la, ptr %i.lt, align 8, !tbaa !24
  br label %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.lu = load ptr, ptr %0, align 8, !tbaa !195
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !26 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 17
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !233, !range !65, !noundef !66
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.lw, ptr %i.k, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  store ptr %i.k, ptr %24, align 8, !tbaa !235
  %i.ma = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %27, ptr %i.ma, align 8, !tbaa !281
  %i.mb = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %28, ptr %i.mb, align 8, !tbaa !281
  %i.mc = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %24), !inline_history !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.md = icmp eq i32 %i.mc, 0
  br label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE7EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.by:                                            ; preds = %_ZN8facebook5velox10StringViewC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mg = load i32, ptr %i.ln, align 4, !tbaa !3
  %.not.i.i6.i.i = icmp eq i32 %i.mf, %i.mg
  br i1 %.not.i.i6.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mh = load i32, ptr %i.me, align 1
  %i.mi = load i32, ptr %i.ln, align 1
  %i.mj = tail call i32 @llvm.bswap.i32(i32 %i.mh)
  %i.mk = tail call i32 @llvm.bswap.i32(i32 %i.mi)
  %i.ml = tail call i32 @llvm.ucmp.i32.i32(i32 %i.mj, i32 %i.mk)
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i

bb.ca:                                            ; preds = %bb.by
  %i.mm = load i32, ptr %27, align 8, !tbaa !3    ; 5 uses
  %i.mn = tail call i32 @llvm.umin.i32(i32 %i.ld, i32 %i.mm) ; 2 uses
  %i.mo = add nsw i32 %i.mn, -4                   ; 2 uses
  %i.mp = icmp samesign ult i32 %i.mn, 5
  br i1 %i.mp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mq = sub i32 %i.mm, %i.ld
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.mr = icmp ult i32 %i.mm, 13                  ; 2 uses
  %or.cond.i.i.i.i = and i1 %i.lm, %i.mr
  %i.ms = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  br i1 %or.cond.i.i.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mu = zext nneg i32 %i.mo to i64
  %i.mv = call i32 @memcmp(ptr noundef nonnull %i.ms, ptr noundef nonnull %i.mt, i64 noundef %i.mu) #39, !inline_history !245 ; 2 uses
  %.not21.i.i.i.i = icmp eq i32 %i.mv, 0
  %i.mw = sub nsw i32 %i.mm, %i.ld
  %i.mx = select i1 %.not21.i.i.i.i, i32 %i.mw, i32 %i.mv
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.my = load ptr, ptr %i.ms, align 8
  %.sroa.gep9.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.sroa.sel10.i.i = select i1 %i.mr, ptr %i.ms, ptr %.sroa.gep9.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8
  %.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %.sroa.sel.i.i = select i1 %i.lm, ptr %i.mz, ptr %.sroa.gep7.i.i
  %i.nb = zext nneg i32 %i.mo to i64
  %i.nc = call i32 @memcmp(ptr noundef nonnull %.sroa.sel10.i.i, ptr noundef nonnull %.sroa.sel.i.i, i64 noundef %i.nb) #39, !inline_history !245 ; 2 uses
  %.not20.i.i.i.i = icmp eq i32 %i.nc, 0
  %i.nd = sub i32 %i.mm, %i.ld
  %i.ne = select i1 %.not20.i.i.i.i, i32 %i.nd, i32 %i.nc
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i

_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i: ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.bz
  %.1.i.i.i.i = phi i32 [ %i.ml, %bb.bz ], [ %i.mq, %bb.cb ], [ %i.mx, %bb.cd ], [ %i.ne, %bb.ce ]
  %i.nf = icmp slt i32 %.1.i.i.i.i, 0
  br i1 %i.nf, label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE7EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNK8facebook5velox10StringViewssERKS1_.exit.i.i
  %i.ng = load i64, ptr %27, align 8              ; 3 uses
  %i.nh = load i64, ptr %28, align 8, !tbaa !67
  %.not.i.i.i = icmp eq i64 %i.ng, %i.nh
  %i.ni = trunc i64 %i.ng to i32                  ; 2 uses
  br i1 %.not.i.i.i, label %bb.cg, label %_ZN8facebook5velox4core12_GLOBAL__N_113equalsNoNullsILNS0_8TypeKindE7EEEbRKSt10shared_ptrINS0_10BaseVectorEEiRKNS0_7VariantE.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.nj = icmp ult i32 %i.ni, 13
  br i1 %i.nj, label %bb.ch, label %bb.cj

end_hunk_0
