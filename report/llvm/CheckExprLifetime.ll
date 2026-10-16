Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CheckExprLifetime?download=true
inline.NumInlined: 2619
inline.NumDeleted: 1635
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb:bb.a
  %i.o = and i16 %i.n, 511
  %.not = icmp eq i16 %i.o, 115
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !757
  store i32 0, ptr %8, align 8, !tbaa !731
  store ptr %.0, ptr %i.e, align 8, !tbaa !732
  store ptr %i.q, ptr %i.f, align 8, !tbaa !24
  %i.r = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.s = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !733

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = zext i32 %i.r to i64
  %.val.i = load ptr, ptr %0, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.v = load i32, ptr %i.c, align 8, !tbaa !40
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.x = call noundef ptr @_ZN5clang18CXXDefaultInitExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %.0) #15 ; 2 uses
  %.pre = load i16, ptr %i.x, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit, %bb.b
  %i.y = phi i16 [ %i.n, %bb.b ], [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit ]
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit ] ; 2 uses
  %i.z = and i16 %i.y, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.z, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !744
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2389 = phi ptr [ %.1, %bb.f ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.h, ptr %5, align 8, !tbaa !39
  store i32 0, ptr %i.i, align 8, !tbaa !40
  store i32 8, ptr %i.j, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.k, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %i.l, align 8, !tbaa !40
  store i32 8, ptr %i.m, align 4, !tbaa !41
  %i.ac = call noundef ptr @_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsERN4llvm15SmallVectorImplIPKS0_EERNS2_INS_19SubobjectAdjustmentEEE(ptr noundef nonnull align 8 dereferenceable(16) %.2389, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #15 ; 3 uses
  %i.ad = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.k
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIN5clang19SubobjectAdjustmentELj8EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.ad) #15
  br label %_ZN4llvm11SmallVectorIN5clang19SubobjectAdjustmentELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIN5clang19SubobjectAdjustmentELj8EED2Ev.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.af = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang19SubobjectAdjustmentELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.af) #15
  br label %_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit

_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang19SubobjectAdjustmentELj8EED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ah = load i16, ptr %i.ac, align 8
  %i.ai = and i16 %i.ah, 511
  %.not404 = icmp eq i16 %i.ai, 120
  br i1 %.not404, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !952
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit
  %.3 = phi ptr [ %i.ac, %_ZNK5clang4Expr30skipRValueSubobjectAdjustmentsEv.exit ], [ %i.ak, %bb.k ]
  %i.al = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.3) #16 ; 8 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = and i16 %i.am, 511
  %i.ao = add nsw i16 %i.an, -91
  %spec.select.i.i.i.i.i.i.i.i248 = icmp ult i16 %i.ao, -10
  br i1 %spec.select.i.i.i.i.i.i.i.i248, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr %i.al, align 8
  %i.aq = lshr i32 %i.ap, 19
  %i.ar = and i32 %i.aq, 127
  switch i32 %i.ar, label %.critedge232 [
    i32 4, label %bb.n
    i32 5, label %bb.t
    i32 1, label %bb.t
    i32 6, label %bb.t
    i32 7, label %bb.t
    i32 8, label %bb.t
    i32 9, label %bb.t
    i32 10, label %bb.t
    i32 19, label %bb.t
    i32 20, label %bb.t
    i32 21, label %bb.t
    i32 22, label %bb.t
    i32 26, label %bb.t
    i32 27, label %bb.t
    i32 40, label %bb.t
    i32 41, label %bb.t
    i32 42, label %bb.t
    i32 63, label %bb.t
    i32 11, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i32 3, ptr %9, align 8, !tbaa !731
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.al, ptr %i.as, align 8, !tbaa !732
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !24
  %i.au = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.av = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i250 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i250, label %bb.p, label %bb.o, !prof !733

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %9)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit252

bb.p:                                             ; preds = %bb.n
  %i.aw = zext i32 %i.au to i64
  %.val.i251 = load ptr, ptr %0, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.val.i251, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ay = load i32, ptr %i.c, align 8, !tbaa !40
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit252

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit252: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %7, ptr %10, align 8, !tbaa !775
  %i.ba = ptrtoint ptr %10 to i64
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.al, i32 noundef 0, ptr nonnull @"_ZN4llvm12function_refIFbRNS_15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS2_4ExprENS4_13ReferenceKindEEE11callback_fnIZNS3_L32visitLocalsRetainedByInitializerES7_S9_SC_bE3$_0EEblS7_S9_SA_", i64 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.critedge232

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i32 1, ptr %11, align 8, !tbaa !731
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !732
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !24
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.be = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i253 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i253, label %bb.s, label %bb.r, !prof !733

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %11)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit255

bb.s:                                             ; preds = %bb.q
  %i.bf = zext i32 %i.bd to i64
  %.val.i254 = load ptr, ptr %0, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %.val.i254, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !40
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit255

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit255: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !754
  %.sroa.0132.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2133.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bk, i32 noundef 0, ptr %.sroa.0132.0.copyload, i64 %.sroa.2133.0.copyload)
  br label %.critedge232

bb.t:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !754
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.4 = phi ptr [ %i.al, %bb.l ], [ %i.bm, %bb.t ] ; 39 uses
  %.not217 = icmp eq ptr %.0, %.4
  br i1 %.not217, label %bb.v, label %bb.b, !llvm.loop !945

bb.v:                                             ; preds = %bb.u
  %i.bn = load i16, ptr %.4, align 8
  %i.bo = and i16 %i.bn, 511
  switch i16 %i.bo, label %.loopexit [
    i16 101, label %bb.w
    i16 55, label %bb.x
    i16 53, label %bb.bc
  ]

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !954
  %.sroa.0128.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2129.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bq, i32 noundef 1, ptr %.sroa.0128.0.copyload, i64 %.sroa.2129.0.copyload)
  br label %.critedge232

bb.x:                                             ; preds = %bb.v
  br i1 %4, label %bb.y, label %.critedge232

bb.y:                                             ; preds = %bb.x
  %i.br = call noundef zeroext i1 @_ZNK5clang12InitListExpr13isTransparentEv(ptr noundef nonnull align 8 dereferenceable(64) %.4) #15
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !749
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !750
  %.sroa.0112.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2113.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bu, ptr %.sroa.0112.0.copyload, i64 %.sroa.2113.0.copyload, i1 noundef zeroext true)
  br label %.critedge232

bb.aa:                                            ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.bw = and i64 %.sroa.0.0.copyload.i, -16
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !736
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !24
  %i.ca = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !736 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i8, ptr %i.cd, align 16            ; 4 uses
  %i.cf = add i8 %i.ce, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cf, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.4, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !955
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !749
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = and i64 %i.cm, 34359738360
  %.not223426 = icmp eq i64 %i.cn, 0
  br i1 %.not223426, label %.critedge232, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %bb.ab
  %i.co = lshr exact i64 %i.cm, 3
  %i.cp = and i64 %i.co, 4294967295
  %.sroa.0106.0.copyload.pre = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2107.0.copyload.pre = load i64, ptr %i.b, align 8, !tbaa !776
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %.lr.ph428
  %indvars.iv443 = phi i64 [ 0, %.lr.ph428.preheader ], [ %indvars.iv.next444, %.lr.ph428 ] ; 2 uses
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !749
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv443
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !750
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cs, ptr %.sroa.0106.0.copyload.pre, i64 %.sroa.2107.0.copyload.pre, i1 noundef zeroext true)
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %.not223 = icmp eq i64 %indvars.iv.next444, %i.cp
  br i1 %.not223, label %.critedge232, label %.lr.ph428, !llvm.loop !946

bb.ac:                                            ; preds = %bb.aa
  %i.ct = add i8 %i.ce, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ct, 3
  %i.cu = and i8 %i.ce, 62
  %spec.select.i.i.i = icmp eq i8 %i.cu, 48
  %or.cond.i = and i1 %switch.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i
  br i1 %or.cond.i, label %bb.ad, label %.critedge232

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !782 ; 3 uses
  %i.cx = icmp eq i8 %i.ce, 49
  br i1 %i.cx, label %bb.ae, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = and i32 %i.cz, 127
  %i.db = add nsw i32 %i.da, -60
  %i.dc = icmp ult i32 %i.db, 3
  br i1 %i.dc, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %.critedge232

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.ae, %bb.ad
  %i.dd = call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.cw) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.dd, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.cw, ptr %i.dd ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select, i64 72
  %i.df = load i16, ptr %i.de, align 8
  %.mask.i = and i16 %i.df, -8192
  %i.dg = icmp eq i16 %.mask.i, 16384
  br i1 %i.dg, label %bb.af, label %.critedge

bb.af:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.4, i64 56
  %.sroa.0.0.copyload.i.i.i.i262 = load i64, ptr %i.dh, align 8 ; 2 uses
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i.i262, 2
  %.not.i.i.i = icmp eq i64 %i.di, 0
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i262, -3 ; 2 uses
  %.not221408 = icmp eq i64 %i.dj, 0
  %.not221 = or i1 %.not.i.i.i, %.not221408
  br i1 %.not221, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.0.0.copyload.i266 = load i64, ptr %i.dl, align 8, !tbaa !24
  %i.dm = and i64 %.sroa.0.0.copyload.i266, -16
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !736
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.0.0.copyload.i.i.i.i268 = load i64, ptr %i.dp, align 8, !tbaa !24
  %i.dq = and i64 %.sroa.0.0.copyload.i.i.i.i268, -16
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load ptr, ptr %i.dr, align 16, !tbaa !736
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i8, ptr %i.dt, align 16
  %i.dv = and i8 %i.du, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dv, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !749
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !750
  %.sroa.0100.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2101.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.dy, i32 noundef 0, ptr %.sroa.0100.0.copyload, i64 %.sroa.2101.0.copyload)
  br label %.critedge232

.critedge:                                        ; preds = %bb.af, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.4, i64 24 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %spec.select, i64 104
  %i.ec = getelementptr inbounds nuw i8, ptr %spec.select, i64 128
  br label %bb.ai

bb.ai:                                            ; preds = %bb.au, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %.critedge ] ; 5 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !789 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ee, align 8 ; 3 uses
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 1
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eg, i64 %i.eh, i64 0 ; 3 uses
  %i.ei = icmp ugt i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.ei, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.ej = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ej, 0
  %i.ek = and i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, -4
  %i.el = inttoptr i64 %i.ek to ptr               ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 18624
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !792 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 2632 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !793 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = add i64 %i.eq, 24                       ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 2640
  %i.et = load i64, ptr %i.es, align 8, !tbaa !794
  %i.eu = icmp ult i64 %i.er, %i.et
  br i1 %i.eu, label %bb.am, label %bb.an, !prof !733

bb.am:                                            ; preds = %bb.al
  %i.ev = inttoptr i64 %i.er to ptr
  store ptr %i.ev, ptr %i.eo, align 8, !tbaa !793
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ew = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.eo, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb:bb.a
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = trunc i32 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0358.0423, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.go, align 8
  %.not.i272 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.gp = select i1 %i.gn, i1 %.not.i272, i1 false
  br i1 %i.gp, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = zext i32 %.1195424 to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !750 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0358.0423, i64 48
  %.sroa.0.0.copyload.i273 = load i64, ptr %i.gt, align 8, !tbaa !24
  %i.gu = and i64 %.sroa.0.0.copyload.i273, -16
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load ptr, ptr %i.gv, align 16, !tbaa !736
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.sroa.0.0.copyload.i.i.i.i275 = load i64, ptr %i.gx, align 8, !tbaa !24
  %i.gy = and i64 %.sroa.0.0.copyload.i.i.i.i275, -16
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = load ptr, ptr %i.gz, align 16, !tbaa !736
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i8, ptr %i.hb, align 16
  %i.hd = and i8 %i.hc, -2
  %spec.select.i.i.i.i.i.i.i.i.i276 = icmp eq i8 %i.hd, 42
  %.sroa.083.0.copyload = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.284.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776 ; 2 uses
  br i1 %spec.select.i.i.i.i.i.i.i.i.i276, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gs, i32 noundef 0, ptr %.sroa.083.0.copyload, i64 %.sroa.284.0.copyload)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gs, ptr %.sroa.083.0.copyload, i64 %.sroa.284.0.copyload, i1 noundef zeroext true)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.he = add nuw i32 %.1195424, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.2196.ph = phi i32 [ %.1195424, %bb.av ], [ %i.he, %bb.az ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0358.0423, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.hf, align 8
  %i.hg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.hh = inttoptr i64 %i.hg to ptr               ; 2 uses
  %.not1.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not1.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ba, %bb.bb
  %.sroa.0358.1 = phi ptr [ %i.hp, %bb.bb ], [ %i.hh, %bb.ba ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0358.1, i64 28
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, 127
  %i.hl = add nsw i32 %i.hk, -50
  %i.hm = icmp ult i32 %i.hl, 3
  br i1 %i.hm, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0358.1, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.hn, align 8
  %i.ho = and i64 %.0.copyload.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.hp = inttoptr i64 %i.ho to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, label %.lr.ph.i.i, !llvm.loop !949

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit: ; preds = %.lr.ph.i.i, %bb.bb, %bb.ba
  %.sroa.0358.2 = phi ptr [ %i.hh, %bb.ba ], [ %i.hp, %bb.bb ], [ %.sroa.0358.1, %.lr.ph.i.i ] ; 2 uses
  %.not409 = icmp eq ptr %.sroa.0358.2, null
  br i1 %.not409, label %.critedge232, label %.lr.ph

bb.bc:                                            ; preds = %bb.v
  %i.hq = call noundef ptr @_ZNK5clang10LambdaExpr13capture_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %.4) #15
  %i.hr = getelementptr inbounds nuw i8, ptr %.4, i64 32 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %i.ht = load i16, ptr %i.hs, align 4            ; 2 uses
  %i.hu = zext i16 %i.ht to i64
  %.idx = shl nuw nsw i64 %i.hu, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx
  %.not225429 = icmp eq i16 %i.ht, 0
  br i1 %.not225429, label %.loopexit, label %.lr.ph432

.lr.ph432:                                        ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph432, %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread
  %.0198431 = phi ptr [ %i.hq, %.lr.ph432 ], [ %i.hz, %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread ] ; 4 uses
  %.0199430 = phi ptr [ %i.hr, %.lr.ph432 ], [ %i.iy, %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread ] ; 2 uses
  %i.hy = load ptr, ptr %.0199430, align 8, !tbaa !30 ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0198431, i64 16
  %.not230 = icmp eq ptr %i.hy, null
  br i1 %.not230, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.0.copyload.i.i.i.i = load i64, ptr %.0198431, align 8
  %i.ia = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %.not.i.i.i278 = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i.i278, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit

_ZNK5clang13LambdaCapture16capturesVariableEv.exit: ; preds = %bb.be
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = and i32 %i.id, 127
  %i.if = add nsw i32 %i.ie, -27
  %i.ig = icmp ult i32 %i.if, 27
  br i1 %i.ig, label %bb.bf, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread

bb.bf:                                            ; preds = %_ZNK5clang13LambdaCapture16capturesVariableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store i32 6, ptr %12, align 8, !tbaa !731
  store ptr %i.hy, ptr %i.hw, align 8, !tbaa !732
  store ptr %.0198431, ptr %i.hx, align 8, !tbaa !24
  %i.ih = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i280 = icmp ult i32 %i.ih, %i.ii
  br i1 %.not.i280, label %bb.bh, label %bb.bg, !prof !733

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %12)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit282

bb.bh:                                            ; preds = %bb.bf
  %i.ij = zext i32 %i.ih to i64
  %.val.i281 = load ptr, ptr %0, align 8, !tbaa !39
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %.val.i281, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ik, ptr noundef nonnull readonly align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.il = load i32, ptr %i.c, align 8, !tbaa !40
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit282

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit282: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread

_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread: ; preds = %bb.be, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit282, %_ZNK5clang13LambdaCapture16capturesVariableEv.exit
  %i.in = load i24, ptr %i.hy, align 8
  %i.io = and i24 %i.in, 1536
  %.not411 = icmp eq i24 %i.io, 0
  %.sroa.059.0.copyload = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.260.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776 ; 2 uses
  br i1 %.not411, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.hy, i32 noundef 0, ptr %.sroa.059.0.copyload, i64 %.sroa.260.0.copyload)
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNK5clang13LambdaCapture16capturesVariableEv.exit.thread
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.hy, ptr %.sroa.059.0.copyload, i64 %.sroa.260.0.copyload, i1 noundef zeroext true)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.copyload.i.i.i.i283 = load i64, ptr %.0198431, align 8
  %i.ip = and i64 %.0.copyload.i.i.i.i283, -8     ; 2 uses
  %.not.i.i.i284 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.i284, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286

_ZNK5clang13LambdaCapture16capturesVariableEv.exit286: ; preds = %bb.bk
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 28
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = and i32 %i.is, 127
  %i.iu = add nsw i32 %i.it, -27
  %i.iv = icmp ult i32 %i.iu, 27
  br i1 %i.iv, label %bb.bl, label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread

bb.bl:                                            ; preds = %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286
  %i.iw = load i32, ptr %i.c, align 8, !tbaa !40
  %i.ix = add i32 %i.iw, -1
  store i32 %i.ix, ptr %i.c, align 8, !tbaa !40
  br label %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread

_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread: ; preds = %bb.bk, %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286, %bb.bl, %bb.bd
  %i.iy = getelementptr inbounds nuw i8, ptr %.0199430, i64 8 ; 2 uses
  %.not225 = icmp eq ptr %i.iy, %i.hv
  br i1 %.not225, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %_ZNK5clang13LambdaCapture16capturesVariableEv.exit286.thread, %bb.v, %bb.bc
  %i.iz = load i16, ptr %.4, align 8              ; 2 uses
  %i.ja = and i16 %i.iz, 511
  %i.jb = add nsw i16 %i.ja, -119
  %spec.select.i.i.i.i.i.i.i.i287 = icmp ult i16 %i.jb, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i287, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %.loopexit
  %i.jc = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.je = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.jd, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.pre447 = load i16, ptr %.4, align 8           ; 3 uses
  br i1 %i.je, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.jf = and i16 %.pre447, 511
  %.not.i.i.i289 = icmp eq i16 %i.jf, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i289, i64 48, i64 40
  %i.jg = getelementptr inbounds nuw i8, ptr %.4, i64 %spec.select.v.i.i.i
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !30 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 8
  %i.jj = and i16 %i.ji, 511
  %.not414 = icmp eq i16 %i.jj, 50
  br i1 %.not414, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %.0.copyload.i.i.i.i.i.i292 = load i64, ptr %i.jk, align 8 ; 3 uses
  %i.jl = and i64 %.0.copyload.i.i.i.i.i.i292, 4
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jn = inttoptr i64 %.0.copyload.i.i.i.i.i.i292 to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.bq:                                            ; preds = %bb.bo
  %i.jo = and i64 %.0.copyload.i.i.i.i.i.i292, -5
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !769
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.bp, %bb.bq
  %i.js = phi ptr [ %i.jn, %bb.bp ], [ %i.jr, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.jt = load ptr, ptr %i.jc, align 8, !tbaa !834
  store i32 5, ptr %13, align 8, !tbaa !731
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.js, ptr %i.ju, align 8, !tbaa !732
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.jt, ptr %i.jv, align 8, !tbaa !24
  %i.jw = load i32, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.jx = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i293 = icmp ult i32 %i.jw, %i.jx
  br i1 %.not.i293, label %bb.bs, label %bb.br, !prof !733

bb.br:                                            ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %13)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit295

bb.bs:                                            ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %i.jy = zext i32 %i.jw to i64
  %.val.i294 = load ptr, ptr %0, align 8, !tbaa !39
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %.val.i294, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jz, ptr noundef nonnull readonly align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.ka = load i32, ptr %i.c, align 8, !tbaa !40
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit295

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit295: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %.sroa.049.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.250.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.js, ptr %.sroa.049.0.copyload, i64 %.sroa.250.0.copyload, i1 noundef zeroext true)
  %i.kc = load i32, ptr %i.c, align 8, !tbaa !40
  %i.kd = add i32 %i.kc, -1
  store i32 %i.kd, ptr %i.c, align 8, !tbaa !40
  %.pre446 = load i16, ptr %.4, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bn, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit295, %bb.bm, %.loopexit
  %i.ke = phi i16 [ %.pre447, %bb.bn ], [ %.pre446, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit295 ], [ %.pre447, %bb.bm ], [ %i.iz, %.loopexit ]
  %i.kf = and i16 %i.ke, 511
  switch i16 %i.kf, label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit [
    i16 118, label %bb.bu
    i16 117, label %bb.bu
    i16 95, label %bb.bu
    i16 94, label %bb.bu
    i16 93, label %bb.bu
    i16 92, label %bb.bu
    i16 91, label %bb.bu
    i16 106, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %.sroa.047.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.248.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.4, ptr %.sroa.047.0.copyload, i64 %.sroa.248.0.copyload)
  br label %.critedge232

bb.bv:                                            ; preds = %bb.bt
  %i.kg = load i32, ptr %i.c, align 8, !tbaa !40  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  store i32 12, ptr %14, align 8, !tbaa !731
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.4, ptr %i.kh, align 8, !tbaa !732
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %i.ki, align 8, !tbaa !24
  %i.kj = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i299 = icmp ult i32 %i.kg, %i.kj
  br i1 %.not.i299, label %bb.bx, label %bb.bw, !prof !733

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %14)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301

bb.bx:                                            ; preds = %bb.bv
  %i.kk = zext i32 %i.kg to i64
  %.val.i300 = load ptr, ptr %0, align 8, !tbaa !39
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %.val.i300, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.kl, ptr noundef nonnull readonly align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.km = load i32, ptr %i.c, align 8, !tbaa !40
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.ko = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !962 ; 2 uses
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.4, i64 48 ; 2 uses
  %.idx436 = shl nuw nsw i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx436
  %.not229433 = icmp eq i32 %i.kp, 0
  br i1 %.not229433, label %._crit_edge, label %.lr.ph435

._crit_edge:                                      ; preds = %bb.cd, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301
  %i.kt = zext i32 %i.kg to i64                   ; 2 uses
  %i.ku = load i32, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %i.kv = icmp eq i32 %i.kg, %i.ku
  br i1 %i.kv, label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit, label %bb.by

bb.by:                                            ; preds = %._crit_edge
  %i.kw = icmp ult i32 %i.kg, %i.ku
  br i1 %i.kw, label %.sink.split.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kx = load i32, ptr %i.g, align 4, !tbaa !41
  %i.ky = icmp ugt i32 %i.kg, %i.kx
  br i1 %i.ky, label %bb.ca, label %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.kz, i64 noundef range(i64 0, 4294967296) %i.kt, i64 noundef 24) #15
  %.val12.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i: ; preds = %bb.ca, %bb.bz
  %.pre-phi.i.i.in.i = phi i32 [ %i.ku, %bb.bz ], [ %.val12.pre.i.i.i, %bb.ca ] ; 2 uses
  %.val11.i.i.i = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i, i64 %i.kt
  %.not13.i.i.i = icmp eq i32 %i.kg, %.pre-phi.i.i.in.i
  br i1 %.not13.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i
  %.pre-phi.i.i.i = zext i32 %.pre-phi.i.i.in.i to i64
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i, i64 %.pre-phi.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.014.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i ], [ %i.lb, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  store ptr null, ptr %i.lc, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.ld, %i.la
  br i1 %.not.i.i.i304, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i, %bb.by
  store i32 %i.kg, ptr %i.c, align 8, !tbaa !40
  br label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit

.lr.ph435:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301, %bb.cd
  %.0197434 = phi ptr [ %i.lh, %bb.cd ], [ %i.kr, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit301 ] ; 2 uses
  %i.le = load ptr, ptr %.0197434, align 8, !tbaa !30 ; 3 uses
  %i.lf = load i24, ptr %i.le, align 8
  %i.lg = and i24 %i.lf, 1536
  %.not416 = icmp eq i24 %i.lg, 0
  %.sroa.031.0.copyload = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.232.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776 ; 2 uses
  br i1 %.not416, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph435
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.le, i32 noundef 0, ptr %.sroa.031.0.copyload, i64 %.sroa.232.0.copyload)
  br label %bb.cd

bb.cc:                                            ; preds = %.lr.ph435
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.le, ptr %.sroa.031.0.copyload, i64 %.sroa.232.0.copyload, i1 noundef zeroext true)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.lh = getelementptr inbounds nuw i8, ptr %.0197434, i64 8 ; 2 uses
  %.not229 = icmp eq ptr %i.lh, %i.ks
  br i1 %.not229, label %._crit_edge, label %.lr.ph435

_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit: ; preds = %bb.bt, %.sink.split.i.i.i, %._crit_edge
  %i.li = load i16, ptr %.4, align 8
  %i.lj = and i16 %i.li, 511                      ; 3 uses
  switch i16 %i.lj, label %.critedge232 [
    i16 4, label %bb.ce
    i16 122, label %bb.ch
    i16 132, label %bb.cm
    i16 133, label %bb.cm
    i16 121, label %bb.co
    i16 131, label %bb.cq
  ]

bb.ce:                                            ; preds = %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit
end_hunk_1
begin_hunk_2_@_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb:bb.a
  %i.nz = icmp eq i32 %i.ny, 236978176
  br i1 %i.nz, label %bb.cn, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit.thread:        ; preds = %bb.cm, %_ZNK5clang4Type10isVoidTypeEv.exit
  %.sroa.09.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.210.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.1.i314, ptr %.sroa.09.0.copyload, i64 %.sroa.210.0.copyload, i1 noundef zeroext true)
  %.pre448 = load i16, ptr %.4, align 8
  %.pre449 = and i16 %.pre448, 511
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread, %_ZNK5clang4Type10isVoidTypeEv.exit
  %.pre-phi = phi i16 [ %.pre449, %_ZNK5clang4Type10isVoidTypeEv.exit.thread ], [ %i.lj, %_ZNK5clang4Type10isVoidTypeEv.exit ]
  %i.oa = icmp eq i16 %.pre-phi, 132
  %.1.in.v.i321 = select i1 %i.oa, i64 40, i64 48
  %.1.in.i322 = getelementptr inbounds nuw i8, ptr %.4, i64 %.1.in.v.i321
  %.1.i323 = load ptr, ptr %.1.in.i322, align 8, !tbaa !750 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1.i323, i64 8
  %.sroa.0.0.copyload.i324 = load i64, ptr %i.ob, align 8, !tbaa !24
  %i.oc = and i64 %.sroa.0.0.copyload.i324, -16
  %i.od = inttoptr i64 %i.oc to ptr
  %i.oe = load ptr, ptr %i.od, align 16, !tbaa !736
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i326 = load i64, ptr %i.of, align 8, !tbaa !24
  %i.og = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i326, -16
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = load ptr, ptr %i.oh, align 16, !tbaa !736 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 16
  %i.ol = icmp eq i8 %i.ok, 13
  %.not7.i.i327 = icmp ne ptr %i.oi, null
  %.not.not.not.i.i328 = and i1 %.not7.i.i327, %i.ol
  br i1 %.not.not.not.i.i328, label %_ZNK5clang4Type10isVoidTypeEv.exit330, label %_ZNK5clang4Type10isVoidTypeEv.exit330.thread

_ZNK5clang4Type10isVoidTypeEv.exit330:            ; preds = %bb.cn
  %i.om = load i32, ptr %i.oj, align 16
  %i.on = and i32 %i.om, 536346624
  %i.oo = icmp eq i32 %i.on, 236978176
  br i1 %i.oo, label %.critedge232, label %_ZNK5clang4Type10isVoidTypeEv.exit330.thread

_ZNK5clang4Type10isVoidTypeEv.exit330.thread:     ; preds = %bb.cn, %_ZNK5clang4Type10isVoidTypeEv.exit330
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !31
  %.sroa.2.0.copyload = load i64, ptr %i.b, align 8, !tbaa !776
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.1.i323, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext true)
  br label %.critedge232

bb.co:                                            ; preds = %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit
  %i.op = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !965 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 112
  %i.os = load i32, ptr %i.or, align 8, !tbaa !969
  %.not.i334 = icmp ne i32 %i.os, 0
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.ou = load i16, ptr %i.ot, align 8
  %i.ov = and i16 %i.ou, 16384
  %i.ow = icmp ne i16 %i.ov, 0
  %i.ox = select i1 %.not.i334, i1 true, i1 %i.ow
  br i1 %i.ox, label %bb.cp, label %.critedge232

bb.cp:                                            ; preds = %bb.co
  %.val244 = load ptr, ptr %7, align 8, !tbaa !971
  %.val245 = load i64, ptr %i.b, align 8, !tbaa !972
  %i.oy = call noundef zeroext i1 %.val244(i64 noundef %.val245, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.4, i32 noundef 0) #15, !inline_history !0 ; 0 uses
  br label %.critedge232

bb.cq:                                            ; preds = %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit
  %.val242 = load ptr, ptr %7, align 8, !tbaa !971
  %.val243 = load i64, ptr %i.b, align 8, !tbaa !972
  %i.oz = call noundef zeroext i1 %.val242(i64 noundef %.val243, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.4, i32 noundef 0) #15, !inline_history !0 ; 0 uses
  br label %.critedge232

.critedge232:                                     ; preds = %bb.m, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, %.lr.ph, %.lr.ph428, %.critedge6, %bb.ab, %bb.ac, %bb.ae, %bb.ch, %bb.z, %bb.x, %bb.ah, %bb.w, %bb.cf, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit255, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit252, %bb.cq, %bb.cp, %bb.co, %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit, %bb.ce, %bb.cg, %bb.cj, %bb.cl, %bb.ck, %_ZNK5clang4Type10isVoidTypeEv.exit330.thread, %_ZNK5clang4Type10isVoidTypeEv.exit330, %bb.bu
  %i.pa = zext i32 %i.d to i64                    ; 2 uses
  %i.pb = load i32, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %i.pc = icmp eq i32 %i.d, %i.pb
  br i1 %i.pc, label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit346, label %bb.cr

bb.cr:                                            ; preds = %.critedge232
  %i.pd = icmp ult i32 %i.d, %i.pb
  br i1 %i.pd, label %.sink.split.i.i.i344, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pe = load i32, ptr %i.g, align 4, !tbaa !41
  %i.pf = icmp ugt i32 %i.d, %i.pe
  br i1 %i.pf, label %bb.ct, label %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i335

bb.ct:                                            ; preds = %bb.cs
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.pg, i64 noundef range(i64 0, 4294967296) %i.pa, i64 noundef 24) #15
  %.val12.pre.i.i.i345 = load i32, ptr %i.c, align 8, !tbaa !40
  br label %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i335

_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i335: ; preds = %bb.ct, %bb.cs
  %.pre-phi.i.i.in.i336 = phi i32 [ %i.pb, %bb.cs ], [ %.val12.pre.i.i.i345, %bb.ct ] ; 2 uses
  %.val11.i.i.i337 = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %i.ph = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i337, i64 %i.pa
  %.not13.i.i.i338 = icmp eq i32 %i.d, %.pre-phi.i.i.in.i336
  br i1 %.not13.i.i.i338, label %.sink.split.i.i.i344, label %.lr.ph.preheader.i.i.i339

.lr.ph.preheader.i.i.i339:                        ; preds = %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i335
  %.pre-phi.i.i.i340 = zext i32 %.pre-phi.i.i.in.i336 to i64
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i337, i64 %.pre-phi.i.i.i340
  br label %.lr.ph.i.i.i341

.lr.ph.i.i.i341:                                  ; preds = %.lr.ph.i.i.i341, %.lr.ph.preheader.i.i.i339
  %.014.i.i.i342 = phi ptr [ %i.pk, %.lr.ph.i.i.i341 ], [ %i.pi, %.lr.ph.preheader.i.i.i339 ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.014.i.i.i342, i64 16
  store ptr null, ptr %i.pj, align 8, !tbaa !24
  %i.pk = getelementptr inbounds nuw i8, ptr %.014.i.i.i342, i64 24 ; 2 uses
  %.not.i.i.i343 = icmp eq ptr %i.pk, %i.ph
  br i1 %.not.i.i.i343, label %.sink.split.i.i.i344, label %.lr.ph.i.i.i341, !llvm.loop !1

.sink.split.i.i.i344:                             ; preds = %.lr.ph.i.i.i341, %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i335, %bb.cr
  store i32 %i.d, ptr %i.c, align 8, !tbaa !40
  br label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit346

_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit346: ; preds = %.critedge232, %.sink.split.i.i.i344
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.clang::sema::(anonymous namespace)::IndirectLocalPathEntry", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !973
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #15
  %.val = load ptr, ptr %0, align 8, !tbaa !39
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !40
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !40
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang12InitListExpr13isTransparentEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef ptr @_ZN5clang18CXXDefaultInitExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.clang::sema::(anonymous namespace)::IndirectLocalPathEntry", align 8 ; 7 uses
  %5 = alloca %"struct.clang::sema::(anonymous namespace)::IndirectLocalPathEntry", align 8 ; 7 uses
  %6 = alloca %"struct.clang::sema::(anonymous namespace)::IndirectLocalPathEntry", align 8 ; 7 uses
  %7 = alloca %"class.llvm::function_ref", align 8 ; 6 uses
  %8 = alloca %class.anon.1124, align 8           ; 7 uses
  %9 = alloca %"struct.clang::sema::(anonymous namespace)::IndirectLocalPathEntry", align 8 ; 7 uses
  store ptr %2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = load i16, ptr %1, align 8
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %i.d = add nsw i16 %i.c, -96
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.d, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !750
  %i.g = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #15 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN5clang8CallExpr15getDirectCalleeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 127
  %i.k = add nsw i32 %i.j, -35
  %i.l = icmp ult i32 %i.k, 6
  %spec.select.i.i.i.i = select i1 %i.l, ptr %i.g, ptr null
  br label %_ZN5clang8CallExpr15getDirectCalleeEv.exit

_ZN5clang8CallExpr15getDirectCalleeEv.exit:       ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.c ], [ null, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load i32, ptr %1, align 8
  %i.o = lshr i32 %i.n, 19
  %i.p = and i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !834
  %.not.i.i = icmp eq i16 %i.c, 118
  %spec.select.v.i.i = select i1 %.not.i.i, i64 48, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5clang8CallExpr15getDirectCalleeEv.exit
  %.sink = phi i64 [ 32, %bb.d ], [ 16, %_ZN5clang8CallExpr15getDirectCalleeEv.exit ]
  %.sroa.0204.0 = phi ptr [ %i.u, %bb.d ], [ %i.r, %_ZN5clang8CallExpr15getDirectCalleeEv.exit ] ; 4 uses
  %.070 = phi ptr [ %i.t, %bb.d ], [ %.0.i.i.i, %_ZN5clang8CallExpr15getDirectCalleeEv.exit ] ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.sroa.9.0.in = load i32, ptr %i.v, align 8, !tbaa !836 ; 3 uses
  %.not80 = icmp eq ptr %.070, null
  br i1 %.not80, label %bb.cr, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %.070) #16
  %i.x = tail call noundef nonnull align 8 dereferenceable(15256) ptr @_ZNK5clang10ASTContext14getDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.w) #15 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !725
  %i.aa = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i32 noundef 6992, i32 0, ptr noundef nonnull align 8 dereferenceable(15256) %i.x) #16
  %i.ab = icmp eq i8 %i.aa, 1                     ; 2 uses
  %i.ac = load i16, ptr %1, align 8               ; 2 uses
  %i.ad = and i16 %i.ac, 511
  %i.ae = icmp eq i16 %i.ad, 93
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = tail call noundef zeroext i1 @_ZNK5clang9NamedDecl19isCXXInstanceMemberEv(ptr noundef nonnull align 8 dereferenceable(48) %.070) #15
  br i1 %i.af, label %bb.h, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.g
  %.pre = load i16, ptr %1, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %.sroa.0204.0, align 8, !tbaa !30
  %i.ah = add i32 %.sroa.9.0.in, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0204.0, i64 8
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge297, %bb.f
  %i.aj = phi i16 [ %.pre, %._crit_edge297 ], [ %i.ac, %bb.f ]
  %i.ak = and i16 %i.aj, 511
  %.not = icmp eq i16 %i.ak, 94
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.9.1 = phi i32 [ %i.ah, %bb.h ], [ %.sroa.9.0.in, %bb.i ], [ %.sroa.9.0.in, %bb.j ]
  %.sroa.0204.1 = phi ptr [ %i.ai, %bb.h ], [ %.sroa.0204.0, %bb.i ], [ %.sroa.0204.0, %bb.j ]
  %.172 = phi ptr [ %i.ag, %bb.h ], [ null, %bb.i ], [ %i.al, %bb.j ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %0, ptr %8, align 8, !tbaa !985
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.am, align 8, !tbaa !775
  %i.an = getelementptr inbounds nuw i8, ptr %.070, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !736 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 16
  %i.at = add i8 %i.as, -25
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.at, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

bb.l:                                             ; preds = %bb.k
  %i.au = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aq) #15
  br label %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit

_ZNK5clang12FunctionDecl13getReturnTypeEv.exit:   ; preds = %bb.k, %bb.l
  %.1.i.i = phi ptr [ %i.au, %bb.l ], [ %i.aq, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %.sroa.0.0.copyload.i1.i = load i64, ptr %i.av, align 8, !tbaa !24
  %i.aw = and i64 %.sroa.0.0.copyload.i1.i, -16
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !736
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !24
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !736 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 16            ; 2 uses
  %i.bf = add i8 %i.be, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bf, 3
  %.not.i5.i = icmp ne ptr %i.bc, null
  %.not.i.not7.i = and i1 %.not.i5.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.bg = and i8 %i.be, 62
  %spec.select.i.i.i = icmp eq i8 %i.bg, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not7.i
  br i1 %or.cond.i, label %select.unfold, label %_ZNK5clang4Type15getAsRecordDeclEv.exit

select.unfold:                                    ; preds = %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !782 ; 2 uses
  %i.bj = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #15 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.bj, null
  %spec.select225 = select i1 %.not.not.i.i.i, ptr %i.bi, ptr %i.bj ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %spec.select225, i64 28 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 256
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.m

bb.m:                                             ; preds = %select.unfold
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select225) #15 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !40 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %.idx.i.i = shl nuw nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i ; 2 uses
  %.not.i.i97 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i97, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.bx, %bb.n ], [ %i.bo, %bb.m ] ; 3 uses
  %i.bt = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !839
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = icmp eq i16 %i.bv, 201
  br i1 %i.bw, label %_ZNK5clang4Decl7hasAttrINS_21CoroLifetimeBoundAttrEEEbv.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !974

_ZNK5clang4Decl7hasAttrINS_21CoroLifetimeBoundAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not228.a = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.bs
  br i1 %.not228.a, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_21CoroLifetimeBoundAttrEEEbv.exit
  %i.by = load i32, ptr %i.bk, align 4
  %i.bz = and i32 %i.by, 256
  %.not.i98 = icmp eq i32 %i.bz, 0
  br i1 %.not.i98, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select225) #15 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx.i.i99 = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i99 ; 2 uses
  %.not.i.i100 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i100, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.lr.ph.i.i.i.i.i101

.lr.ph.i.i.i.i.i101:                              ; preds = %bb.p, %bb.q
  %.sroa.07.1.i.i.i.i102 = phi ptr [ %i.ck, %bb.q ], [ %i.cb, %bb.p ] ; 3 uses
  %i.cg = load ptr, ptr %.sroa.07.1.i.i.i.i102, align 8, !tbaa !839
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  %i.ci = load i16, ptr %i.ch, align 4
  %i.cj = icmp eq i16 %i.ci, 203
  br i1 %i.cj, label %_ZNK5clang4Decl7hasAttrINS_18CoroReturnTypeAttrEEEbv.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i101
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i102, i64 8 ; 2 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %i.ck, %i.cf
  br i1 %.not.i.i.i.i.i103, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.lr.ph.i.i.i.i.i101, !llvm.loop !975

_ZNK5clang4Decl7hasAttrINS_18CoroReturnTypeAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i101
  %.not229 = icmp eq ptr %.sroa.07.1.i.i.i.i102, %i.cf
  br i1 %.not229, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang4Decl7hasAttrINS_18CoroReturnTypeAttrEEEbv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.070, i64 28
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 256
  %.not.i105 = icmp eq i32 %i.cn, 0
  br i1 %.not.i105, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %.070) #15 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %.idx.i.i106 = shl nuw nsw i64 %i.cs, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i.i106 ; 3 uses
  %.not.i.i107 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i107, label %_ZNK5clang4Type15getAsRecordDeclEv.exit, label %.lr.ph.i.i.i.i.i108

.lr.ph.i.i.i.i.i108:                              ; preds = %bb.s, %bb.t
  %.sroa.07.1.i.i.i.i109 = phi ptr [ %i.cy, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %i.cu = load ptr, ptr %.sroa.07.1.i.i.i.i109, align 8, !tbaa !839
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.cw = load i16, ptr %i.cv, align 4
  %i.cx = icmp eq i16 %i.cw, 200
  br i1 %i.cx, label %_ZN5clangneENS_22specific_attr_iteratorINS_28CoroDisableLifetimeBoundAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i108
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i109, i64 8 ; 2 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.cy, %i.ct
  br i1 %.not.i.i.i.i.i110, label %_ZN5clangneENS_22specific_attr_iteratorINS_28CoroDisableLifetimeBoundAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i108, !llvm.loop !976

_ZN5clangneENS_22specific_attr_iteratorINS_28CoroDisableLifetimeBoundAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i: ; preds = %bb.t, %.lr.ph.i.i.i.i.i108
  %.sroa.07.0.i.i.ph.i.i111 = phi ptr [ %i.ct, %bb.t ], [ %.sroa.07.1.i.i.i.i109, %.lr.ph.i.i.i.i.i108 ]
  %i.cz = icmp eq ptr %.sroa.07.0.i.i.ph.i.i111, %i.ct
  br label %_ZNK5clang4Type15getAsRecordDeclEv.exit

_ZNK5clang4Type15getAsRecordDeclEv.exit:          ; preds = %bb.n, %bb.q, %_ZN5clangneENS_22specific_attr_iteratorINS_28CoroDisableLifetimeBoundAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %select.unfold, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit, %_ZNK5clang4Decl7hasAttrINS_21CoroLifetimeBoundAttrEEEbv.exit, %_ZNK5clang4Decl7hasAttrINS_18CoroReturnTypeAttrEEEbv.exit
  %.069 = phi i1 [ false, %bb.p ], [ false, %_ZNK5clang4Decl7hasAttrINS_18CoroReturnTypeAttrEEEbv.exit ], [ false, %_ZNK5clang4Decl7hasAttrINS_21CoroLifetimeBoundAttrEEEbv.exit ], [ false, %_ZNK5clang12FunctionDecl13getReturnTypeEv.exit ], [ false, %bb.q ], [ false, %bb.m ], [ %i.cz, %_ZN5clangneENS_22specific_attr_iteratorINS_28CoroDisableLifetimeBoundAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.loopexit.i.i ], [ false, %select.unfold ], [ false, %bb.o ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.n ] ; 3 uses
  %.not83 = icmp eq ptr %.172, null
  br i1 %.not83, label %bb.af, label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4Type15getAsRecordDeclEv.exit
  %i.da = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %.172) #16 ; 2 uses
  %i.db = load i16, ptr %i.da, align 8
  %i.dc = and i16 %i.db, 511
  %.not231 = icmp eq i16 %i.dc, 53
  br i1 %.not231, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.dd = call { ptr, ptr } @_ZNK5clang10LambdaExpr8capturesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.da) #15 ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  %i.dg = icmp ne ptr %i.de, %i.df
  %spec.select = select i1 %i.dg, i1 %.069, i1 false
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.v
  %.068.shrunk = phi i1 [ %spec.select, %bb.v ], [ %.069, %bb.u ]
  %i.dh = call noundef zeroext i1 @_ZN5clang4Sema20CanBeGetReturnObjectEPKNS_12FunctionDeclE(ptr noundef nonnull %.070) #15
  %not. = xor i1 %i.dh, true
  %spec.select90 = select i1 %not., i1 %.068.shrunk, i1 false
  %i.di = call noundef zeroext i1 @_ZN5clang9lifetimes34implicitObjectParamIsLifetimeBoundEPKNS_12FunctionDeclE(ptr noundef nonnull %.070) #15
  %or.cond = or i1 %i.di, %spec.select90
  br i1 %or.cond, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 4, ptr %6, align 8, !tbaa !731
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.172, ptr %i.dj, align 8, !tbaa !732
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.070, ptr %i.dk, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !41
  %.not.i153 = icmp ult i32 %i.dm, %i.do
  br i1 %.not.i153, label %bb.y, label %bb.x, !prof !733

bb.x:                                             ; preds = %bb.w
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %6)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit155

bb.y:                                             ; preds = %bb.w
  %i.dp = zext i32 %i.dm to i64
  %.val.i154 = load ptr, ptr %0, align 8, !tbaa !39
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %.val.i154, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.dr = load i32, ptr %i.dl, align 8, !tbaa !40
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dl, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit155

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit155: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dt = load i24, ptr %.172, align 8
  %i.du = and i24 %i.dt, 1536
  %.not235 = icmp eq i24 %i.du, 0
  %.sroa.0.0.copyload.i = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !776 ; 2 uses
  br i1 %.not235, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit155
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.172, i32 noundef 0, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit"

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit155
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.172, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 noundef zeroext true), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit"

"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit": ; preds = %bb.z, %bb.aa
  %i.dv = load i32, ptr %i.dl, align 8, !tbaa !40
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr %i.dl, align 8, !tbaa !40
  br label %bb.af

bb.ab:                                            ; preds = %.critedge
  br i1 %i.ab, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.070, i64 28
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = and i32 %i.dy, 124
  %.not234 = icmp eq i32 %i.dz, 36
  br i1 %.not234, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ea = call noundef zeroext i1 @_ZN5clang9lifetimes28shouldTrackImplicitObjectArgERKNS_4ExprEPKNS_13CXXMethodDeclEb(ptr noundef nonnull align 8 dereferenceable(16) %.172, ptr noundef nonnull %.070, i1 noundef zeroext false) #15
  br i1 %i.ea, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_2clEPKNS_12FunctionDeclES8_"(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %.070, ptr noundef nonnull %.172)
  br label %bb.af

bb.af:                                            ; preds = %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit", %bb.ab, %bb.ae, %bb.ad, %bb.ac, %_ZNK5clang4Type15getAsRecordDeclEv.exit
  %i.eb = call noundef ptr @_ZN5clang9lifetimes35getDeclWithMergedLifetimeBoundAttrsEPKNS_12FunctionDeclE(ptr noundef nonnull %.070) #15 ; 5 uses
  %i.ec = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.070) #15
  %i.ed = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.eb) #15
  %.sroa.speculated165 = call i32 @llvm.umin.i32(i32 %i.ed, i32 %i.ec)
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.sroa.9.1, i32 %.sroa.speculated165) ; 2 uses
  %.not86271 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not86271, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 120 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = zext i32 %.sroa.speculated to i64
  %.pre298.a = load i32, ptr %i.ee, align 8, !tbaa !40 ; 8 uses
  %i.er = zext i32 %.pre298.a to i64
  %i.es = zext i32 %.pre298.a to i64              ; 2 uses
  br label %bb.ag

._crit_edge:                                      ; preds = %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.cr

bb.ag:                                            ; preds = %.lr.ph, %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit ] ; 7 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.1, i64 %indvars.iv
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30 ; 5 uses
  %i.ev = load i16, ptr %i.eu, align 8
  %i.ew = and i16 %i.ev, 511
  %.not238.a = icmp eq i16 %i.ew, 116
  br i1 %.not238.a, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !842
  store i32 11, ptr %9, align 8, !tbaa !731
  store ptr %i.eu, ptr %i.ef, align 8, !tbaa !732
  store ptr %i.ey, ptr %i.eg, align 8, !tbaa !24
  %i.ez = load i32, ptr %i.eh, align 4, !tbaa !41
  %.not.i116.a = icmp ult i32 %.pre298.a, %i.ez
  br i1 %.not.i116.a, label %bb.aj, label %bb.ai, !prof !733

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %9)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit

bb.aj:                                            ; preds = %bb.ah
  %.val.i = load ptr, ptr %0, align 8, !tbaa !39
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fa, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.fb = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.ee, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.fd = call noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eu) #15
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit, %bb.ag
  %.0 = phi ptr [ %i.fd, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit ], [ %i.eu, %bb.ag ] ; 10 uses
  %.pre300 = load ptr, ptr %i.ei, align 8, !tbaa !859 ; 2 uses
  br i1 %.069, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre300, i64 %indvars.iv
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !860 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 28
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 256
  %.not.i117 = icmp eq i32 %i.fi, 0
  br i1 %.not.i117, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ff) #15 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !39 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !40 ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %.idx.i.i118 = shl nuw nsw i64 %i.fn, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx.i.i118 ; 2 uses
  %.not.i.i119 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i119, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220, label %.lr.ph.i.i.i.i.i120

.lr.ph.i.i.i.i.i120:                              ; preds = %bb.am, %bb.an
  %.sroa.07.1.i.i.i.i121 = phi ptr [ %i.ft, %bb.an ], [ %i.fk, %bb.am ] ; 3 uses
  %i.fp = load ptr, ptr %.sroa.07.1.i.i.i.i121, align 8, !tbaa !839
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.fr = load i16, ptr %i.fq, align 4
  %i.fs = icmp eq i16 %i.fr, 74
  br i1 %i.fs, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i120
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i121, i64 8 ; 2 uses
  %.not.i.i.i.i.i122 = icmp eq ptr %i.ft, %i.fo
  br i1 %.not.i.i.i.i.i122, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220, label %.lr.ph.i.i.i.i.i120, !llvm.loop !978

_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit: ; preds = %.lr.ph.i.i.i.i.i120
  %.not239.a = icmp eq ptr %.sroa.07.1.i.i.i.i121, %i.fo
  br i1 %.not239.a, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220, label %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit._crit_edge

_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit._crit_edge: ; preds = %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit
  %.pre299 = load ptr, ptr %i.ei, align 8, !tbaa !859
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit._crit_edge, %bb.ak
  %i.fu = phi ptr [ %.pre299, %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit._crit_edge ], [ %.pre300, %bb.ak ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 4, ptr %5, align 8, !tbaa !731
  store ptr %.0, ptr %i.en, align 8, !tbaa !732
  store ptr %i.fw, ptr %i.eo, align 8, !tbaa !24
  %i.fx = load i32, ptr %i.ee, align 8, !tbaa !40 ; 2 uses
  %i.fy = load i32, ptr %i.eh, align 4, !tbaa !41
  %.not.i156 = icmp ult i32 %i.fx, %i.fy
  br i1 %.not.i156, label %bb.aq, label %bb.ap, !prof !733

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit158

bb.aq:                                            ; preds = %bb.ao
  %i.fz = zext i32 %i.fx to i64
  %.val.i157 = load ptr, ptr %0, align 8, !tbaa !39
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.val.i157, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ga, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.gb = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ee, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit158

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit158: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.gd = load i24, ptr %.0, align 8
  %i.ge = and i24 %i.gd, 1536
  %.not243 = icmp eq i24 %i.ge, 0
  %.sroa.0.0.copyload.i124 = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.2.0.copyload.i126 = load i64, ptr %i.a, align 8, !tbaa !776 ; 2 uses
  br i1 %.not243, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit158
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.0, i32 noundef 0, ptr %.sroa.0.0.copyload.i124, i64 %.sroa.2.0.copyload.i126), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit130"

bb.as:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit158
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.0, ptr %.sroa.0.0.copyload.i124, i64 %.sroa.2.0.copyload.i126, i1 noundef zeroext true), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit130"

"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit130": ; preds = %bb.ar, %bb.as
  %i.gf = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.gg = add i32 %i.gf, -1
  store i32 %i.gg, ptr %i.ee, align 8, !tbaa !40
  br label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220: ; preds = %bb.an, %bb.am, %bb.al, %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit
  %i.gh = load i32, ptr %i.ej, align 4
  %i.gi = and i32 %i.gh, 127
  %i.gj = icmp eq i32 %i.gi, 39
  br i1 %i.gj, label %bb.at, label %.critedge3

bb.at:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220
  %i.gk = load ptr, ptr %i.ei, align 8, !tbaa !859
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !860 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = and i32 %i.go, 256
  %.not.i.i.i131 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i131, label %_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i

_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i: ; preds = %bb.at
  %i.gq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.gm) #15
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39 ; 2 uses
  %.pre.i = load i32, ptr %i.gn, align 4
  %.pre4.i = and i32 %.pre.i, 256
  %i.gs = icmp eq i32 %.pre4.i, 0
  br i1 %i.gs, label %_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit, label %bb.au

bb.au:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i
  %i.gt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.gm) #15 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !39
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !40
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gx
  br label %_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit

_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit: ; preds = %bb.at, %_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i, %bb.au
  %i.gz = phi ptr [ %i.gr, %bb.au ], [ %i.gr, %_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.at ]
  %i.ha = phi ptr [ %i.gy, %bb.au ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_21LifetimeCaptureByAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i ], [ null, %bb.at ] ; 10 uses
  br label %bb.av

bb.av:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS3_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS2_4ExprENS4_12function_refIFbS9_SB_NS6_13ReferenceKindEEEEE3$_0EclINS2_22specific_attr_iteratorINS2_21LifetimeCaptureByAttrENS4_11SmallVectorIPNS2_4AttrELj4EEEEEEEbT_.exit.thread.i.i.i.i.i.i", %_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.gz, %_ZNK5clang4Decl14specific_attrsINS_21LifetimeCaptureByAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit ], [ %i.jd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS3_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS2_4ExprENS4_12function_refIFbS9_SB_NS6_13ReferenceKindEEEEE3$_0EclINS2_22specific_attr_iteratorINS2_21LifetimeCaptureByAttrENS4_11SmallVectorIPNS2_4AttrELj4EEEEEEEbT_.exit.thread.i.i.i.i.i.i" ] ; 13 uses
  %i.hb = icmp ult ptr %.sroa.0.0.i.i.i.i.i.i, %i.ha
  br i1 %i.hb, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %bb.ax

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.av, %bb.aw
  %.sroa.07.1.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %bb.aw ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.av ] ; 3 uses
  %i.hc = load ptr, ptr %.sroa.07.1.i.i.i.i.i.i.i.i, align 8, !tbaa !839
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 36
  %i.he = load i16, ptr %i.hd, align 4
  %i.hf = icmp eq i16 %i.he, 75
  br i1 %i.hf, label %_ZN5clangneENS_22specific_attr_iteratorINS_21LifetimeCaptureByAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEE:bb.a
  %.not240 = icmp eq ptr %.sroa.07.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  br i1 %.not240, label %.critedge3, label %bb.bl

bb.bl:                                            ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIN5clang22specific_attr_iteratorINS2_21LifetimeCaptureByAttrENS_11SmallVectorIPNS2_4AttrELj4EEEEEEEZNS2_4semaL26visitFunctionCallArgumentsERNS_15SmallVectorImplINSB_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS2_4ExprENS_12function_refIFbSG_SI_NSD_13ReferenceKindEEEEE3$_0EEbOT_T0_.exit"
  %i.jp = load ptr, ptr %i.ei, align 8, !tbaa !859
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 4, ptr %4, align 8, !tbaa !731
  store ptr %.0, ptr %i.ek, align 8, !tbaa !732
  store ptr %i.jr, ptr %i.el, align 8, !tbaa !24
  %i.js = load i32, ptr %i.ee, align 8, !tbaa !40 ; 2 uses
  %i.jt = load i32, ptr %i.eh, align 4, !tbaa !41
  %.not.i159 = icmp ult i32 %i.js, %i.jt
  br i1 %.not.i159, label %bb.bn, label %bb.bm, !prof !733

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %4)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit161

bb.bn:                                            ; preds = %bb.bl
  %i.ju = zext i32 %i.js to i64
  %.val.i160 = load ptr, ptr %0, align 8, !tbaa !39
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %.val.i160, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jv, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.jw = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.ee, align 8, !tbaa !40
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit161

_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit161: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.jy = load i24, ptr %.0, align 8
  %i.jz = and i24 %i.jy, 1536
  %.not242 = icmp eq i24 %i.jz, 0
  %.sroa.0.0.copyload.i135 = load ptr, ptr %7, align 8, !tbaa !31 ; 2 uses
  %.sroa.2.0.copyload.i137 = load i64, ptr %i.a, align 8, !tbaa !776 ; 2 uses
  br i1 %.not242, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit161
  call fastcc void @_ZN5clang4semaL37visitLocalsRetainedByReferenceBindingERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS3_13ReferenceKindENS1_12function_refIFbS6_S8_S9_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.0, i32 noundef 0, ptr %.sroa.0.0.copyload.i135, i64 %.sroa.2.0.copyload.i137), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit141"

bb.bp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryELb1EE9push_backERKS4_.exit161
  call fastcc void @_ZN5clang4semaL32visitLocalsRetainedByInitializerERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.0, ptr %.sroa.0.0.copyload.i135, i64 %.sroa.2.0.copyload.i137, i1 noundef zeroext true), !inline_history !977
  br label %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit141"

"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit141": ; preds = %bb.bo, %bb.bp
  %i.ka = load i32, ptr %i.ee, align 8, !tbaa !40
  %i.kb = add i32 %i.ka, -1
  store i32 %i.kb, ptr %i.ee, align 8, !tbaa !40
  br label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

.critedge3:                                       ; preds = %bb.bk, %bb.bi, %bb.bj, %_ZNK5clang4Decl7hasAttrINS_17LifetimeBoundAttrEEEbv.exit.thread220, %"_ZN4llvm6any_ofINS_14iterator_rangeIN5clang22specific_attr_iteratorINS2_21LifetimeCaptureByAttrENS_11SmallVectorIPNS2_4AttrELj4EEEEEEEZNS2_4semaL26visitFunctionCallArgumentsERNS_15SmallVectorImplINSB_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS2_4ExprENS_12function_refIFbSG_SI_NSD_13ReferenceKindEEEEE3$_0EEbOT_T0_.exit"
  %i.kc = icmp ne i64 %indvars.iv, 0
  %or.cond5.not = or i1 %i.ab, %i.kc
  br i1 %or.cond5.not, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %.critedge3
  %i.kd = call noundef zeroext i1 @_ZN5clang9lifetimes24shouldTrackFirstArgumentEPKNS_12FunctionDeclE(ptr noundef nonnull %i.eb) #15
  br i1 %i.kd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call fastcc void @"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_2clEPKNS_12FunctionDeclES8_"(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.eb, ptr noundef %.0)
  br label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

bb.bs:                                            ; preds = %bb.bq
  %i.ke = load i16, ptr %1, align 8
  %i.kf = and i16 %i.ke, 511
  %i.kg = add nsw i16 %i.kf, -119
  %spec.select.i.i.i.i.i.i.i.i142 = icmp ult i16 %i.kg, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i142, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kh = load ptr, ptr %i.em, align 8, !tbaa !834
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.kj = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ki) #15
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8 ; 3 uses
  %i.kl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kn = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.ko = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !862
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

_ZN5clang13CXXMethodDecl9getParentEv.exit.i:      ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i = phi ptr [ %i.kn, %bb.bu ], [ %i.kq, %bb.bv ] ; 3 uses
  %i.kr = icmp eq ptr %.0.i.i.i.i, null           ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64 ; 3 uses
  %i.kt = select i1 %i.kr, ptr null, ptr %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 28 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = and i32 %i.kv, 256
  %.not.i.i144 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i144, label %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit.i
  %i.kx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ks) #15 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !39 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !40 ; 2 uses
  %i.lb = zext i32 %i.la to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.lb, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx.i.i.i ; 2 uses
  %.not.i.i.i145 = icmp eq i32 %i.la, 0
  br i1 %.not.i.i.i145, label %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bw, %bb.bx
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.lh, %bb.bx ], [ %i.ky, %bb.bw ] ; 3 uses
  %i.ld = load ptr, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !839
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 36
  %i.lf = load i16, ptr %i.le, align 4
  %i.lg = icmp eq i16 %i.lf, 350
  br i1 %i.lg, label %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i146 = icmp eq ptr %i.lh, %i.lc
  br i1 %.not.i.i.i.i.i.i146, label %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !983

_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not52.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i, %i.lc
  br i1 %.not52.i, label %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit

_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i: ; preds = %bb.bx, %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.i, %bb.bw, %_ZN5clang13CXXMethodDecl9getParentEv.exit.i
  %i.li = load ptr, ptr %i.em, align 8, !tbaa !834
  %i.lj = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.li) #15
  %i.lk = icmp eq i32 %i.lj, 0
  %brmerge.i = or i1 %i.kr, %i.lk
  br i1 %brmerge.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.by

bb.by:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i
  %i.ll = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.lm = and i32 %i.ll, 127
  %i.ln = add nsw i32 %i.lm, -63
  %i.lo = icmp ult i32 %i.ln, -2
  %i.lp = and i32 %i.ll, 256
  %.not.i11.i.i = icmp eq i32 %i.lp, 0
  %or.cond.i.i = or i1 %.not.i11.i.i, %i.lo
  br i1 %or.cond.i.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ks) #15 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !39 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !40 ; 2 uses
  %i.lu = zext i32 %i.lt to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.lu, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bz, %bb.ca
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %i.ma, %bb.ca ], [ %i.lr, %bb.bz ] ; 3 uses
  %i.lw = load ptr, ptr %.sroa.07.1.i.i.i.i.i.i, align 8, !tbaa !839
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 36
  %i.ly = load i16, ptr %i.lx, align 4
  %i.lz = icmp eq i16 %i.ly, 344
  br i1 %i.lz, label %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ma, %i.lv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i14.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i, %i.lv
  br i1 %.not.i14.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 104
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !874 ; 3 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !876
  %.not10.i.i = icmp eq i32 %i.md, 0
  br i1 %.not10.i.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mf = load i64, ptr %i.me, align 8
  %i.mg = and i64 %i.mf, 2147483647
  %i.mh = icmp eq i64 %i.mg, 1
  br i1 %i.mh, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit.i: ; preds = %bb.cc
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !24
  %i.mk = call noundef zeroext i1 @_ZN5clang9lifetimes17isPointerLikeTypeENS_8QualTypeE(i64 %i.mj) #15
  br i1 %i.mk, label %bb.cd, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

bb.cd:                                            ; preds = %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit.i
  %i.ml = load i16, ptr %1, align 8
  %i.mm = and i16 %i.ml, 511
  %.not.i.i.i.i.i147 = icmp eq i16 %i.mm, 118
  %spec.select.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i147, i64 48, i64 40
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i.i.i
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !30
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %.sroa.0.0.copyload.i.i148 = load i64, ptr %i.mp, align 8, !tbaa !24 ; 3 uses
  %i.mq = and i64 %.sroa.0.0.copyload.i.i148, -16
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load ptr, ptr %i.mr, align 16, !tbaa !736
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.mt, align 8, !tbaa !24
  %i.mu = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.mv = inttoptr i64 %i.mu to ptr
  %i.mw = load ptr, ptr %i.mv, align 16, !tbaa !736 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load i8, ptr %i.mx, align 16            ; 2 uses
  %i.mz = add i8 %i.my, -47
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.mz, 3
  %.not.i5.i.i = icmp ne ptr %i.mw, null
  %.not.i.not7.i.i = and i1 %.not.i5.i.i, %switch.i.i.i.i.i.i.i.i.i.i.i
  %i.na = and i8 %i.my, 62
  %spec.select.i.i.i.i149 = icmp eq i8 %i.na, 48
  %or.cond.i15.i = and i1 %spec.select.i.i.i.i149, %.not.i.not7.i.i
  br i1 %or.cond.i15.i, label %select.unfold.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.thread.i

select.unfold.i:                                  ; preds = %bb.cd
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !782 ; 2 uses
  %i.nd = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.nc) #15 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.nd, null
  %spec.select.i = select i1 %.not.not.i.i.i.i, ptr %i.nc, ptr %i.nd ; 13 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 28 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4
  %i.ng = and i32 %i.nf, 127
  %i.nh = add nsw i32 %i.ng, -61
  %i.ni = icmp ult i32 %i.nh, 2
  br i1 %i.ni, label %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_10RecordDeclEEEDaPT0_.exit.i.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_10RecordDeclEEEDaPT0_.exit.i.i: ; preds = %select.unfold.i
  %i.nj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 168
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !874 ; 3 uses
  %i.nl = call noundef zeroext i1 @_ZN5clang9lifetimes16isInStlNamespaceEPKNS_4DeclE(ptr noundef nonnull %spec.select.i) #15
  br i1 %i.nl, label %bb.ce, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

bb.ce:                                            ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_10RecordDeclEEEDaPT0_.exit.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 40
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !996 ; 2 uses
  %i.no = and i64 %i.nn, 7
  %i.np = icmp ne i64 %i.no, 0
  %i.nq = and i64 %i.nn, -8                       ; 2 uses
  %.not1327.i.i = icmp eq i64 %i.nq, 0
  %.not13.i.i = or i1 %i.np, %.not1327.i.i
  br i1 %.not13.i.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i, label %_ZNK5clang9NamedDecl7getNameEv.exit.i.i

_ZNK5clang9NamedDecl7getNameEv.exit.i.i:          ; preds = %bb.ce
  %i.nr = inttoptr i64 %i.nq to ptr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !999 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !1001
  %i.nv = and i64 %i.nu, 4294967295
  %.not.i17.i.i = icmp eq i64 %i.nv, 16
  br i1 %.not.i17.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %_ZNK5clang9NamedDecl7getNameEv.exit.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nx = load i128, ptr %i.nw, align 1
  %i.ny = icmp ne i128 %i.nx, 154789699888971054093643550493034245737
  %i.nz = zext i1 %i.ny to i32
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.ob = load i32, ptr %i.nk, align 8, !tbaa !876
  %.not14.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not14.i.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = and i64 %i.od, 2147483647
  %i.of = icmp eq i64 %i.oe, 1
  br i1 %i.of, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.i, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.i: ; preds = %bb.cf
  %i.og = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !24
  %i.oi = call noundef zeroext i1 @_ZN5clang9lifetimes17isPointerLikeTypeENS_8QualTypeE(i64 %i.oh) #15
  br i1 %i.oi, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit, label %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i

_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i: ; preds = %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.i, %bb.cf, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i, %_ZNK5clang9NamedDecl7getNameEv.exit.i.i, %bb.ce, %_ZN4llvm19dyn_cast_if_presentIN5clang31ClassTemplateSpecializationDeclEKNS1_10RecordDeclEEEDaPT0_.exit.i.i, %select.unfold.i
  %i.oj = call noundef zeroext i1 @_ZN5clang9lifetimes14isGslOwnerTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i148) #15
  br i1 %i.oj, label %bb.cg, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.thread.i: ; preds = %bb.cd
  %i.ok = call noundef zeroext i1 @_ZN5clang9lifetimes14isGslOwnerTypeENS_8QualTypeE(i64 %.sroa.0.0.copyload.i.i148) #15
  br i1 %i.ok, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

bb.cg:                                            ; preds = %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i
  %i.ol = load i32, ptr %i.ne, align 4            ; 2 uses
  %i.om = and i32 %i.ol, 127
  %i.on = add nsw i32 %i.om, -63
  %i.oo = icmp ult i32 %i.on, -2
  %i.op = and i32 %i.ol, 256
  %.not.i11.i18.i = icmp eq i32 %i.op, 0
  %or.cond.i19.i = or i1 %.not.i11.i18.i, %i.oo
  br i1 %or.cond.i19.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select.i) #15 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !39 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !40 ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %.idx.i.i.i20.i = shl nuw nsw i64 %i.ou, 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 %.idx.i.i.i20.i ; 2 uses
  %.not.i.i.i21.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i.i.i21.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %.lr.ph.i.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i.i22.i:                           ; preds = %bb.ch, %bb.ci
  %.sroa.07.1.i.i.i.i.i23.i = phi ptr [ %i.pa, %bb.ci ], [ %i.or, %bb.ch ] ; 3 uses
  %i.ow = load ptr, ptr %.sroa.07.1.i.i.i.i.i23.i, align 8, !tbaa !839
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 36
  %i.oy = load i16, ptr %i.ox, align 4
  %i.oz = icmp eq i16 %i.oy, 344
  br i1 %i.oz, label %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i25.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i22.i
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i23.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i24.i = icmp eq ptr %i.pa, %i.ov
  br i1 %.not.i.i.i.i.i.i24.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %.lr.ph.i.i.i.i.i.i22.i, !llvm.loop !2

_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i25.i: ; preds = %.lr.ph.i.i.i.i.i.i22.i
  %.not.i26.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i23.i, %i.ov
  br i1 %.not.i26.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i25.i
  %i.pb = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 168
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !874 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !876
  %.not10.i27.i = icmp eq i32 %i.pd, 0
  br i1 %.not10.i27.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = and i64 %i.pf, 2147483647
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.i, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i

_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.i: ; preds = %bb.ck
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !24
  %i.pk = call noundef zeroext i1 @_ZN5clang9lifetimes17isPointerLikeTypeENS_8QualTypeE(i64 %i.pj) #15
  br i1 %i.pk, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i

_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i: ; preds = %bb.ci, %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.i, %bb.ck, %bb.cj, %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i25.i, %bb.ch, %bb.cg, %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.thread.i
  %.0.i37434650.i = phi ptr [ %spec.select.i, %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.i ], [ %spec.select.i, %bb.cg ], [ null, %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.thread.i ], [ %spec.select.i, %bb.ck ], [ %spec.select.i, %bb.cj ], [ %spec.select.i, %bb.ch ], [ %spec.select.i, %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i25.i ], [ %spec.select.i, %bb.ci ]
  %i.pl = call fastcc noundef zeroext i1 @_ZN5clang4semaL18isContainerOfOwnerEPKNS_10RecordDeclE(ptr noundef %.0.i37434650.i)
  br i1 %i.pl, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i
  %i.pm = load ptr, ptr %i.em, align 8, !tbaa !834
  %i.pn = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.pm) #15 ; 2 uses
  %.not.i150 = icmp eq ptr %i.pn, null
  br i1 %.not.i150, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !880 ; 3 uses
  %.not.i29.i = icmp eq ptr %i.pp, null
  br i1 %.not.i29.i, label %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXConstructorDeclENS1_12FunctionDeclEEEDaPT0_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 28
  %i.pr = load i32, ptr %i.pq, align 4
  %i.ps = and i32 %i.pr, 127
  %i.pt = icmp eq i32 %i.ps, 39
  %spec.select.i.i.i151 = select i1 %i.pt, ptr %i.pp, ptr null
  br label %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXConstructorDeclENS1_12FunctionDeclEEEDaPT0_.exit.i

_ZN4llvm19dyn_cast_if_presentIN5clang18CXXConstructorDeclENS1_12FunctionDeclEEEDaPT0_.exit.i: ; preds = %bb.cn, %bb.cm
  %.0.i30.i = phi ptr [ %spec.select.i.i.i151, %bb.cn ], [ null, %bb.cm ]
  %i.pu = call fastcc noundef zeroext i1 @_ZN5clang4semaL21isCopyLikeConstructorEPKNS_18CXXConstructorDeclE(ptr noundef %.0.i30.i)
  br i1 %i.pu, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread, label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit

_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit: ; preds = %bb.cl, %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXConstructorDeclENS1_12FunctionDeclEEEDaPT0_.exit.i, %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.thread.i, %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.i, %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.i
  %i.pv = load ptr, ptr %i.em, align 8, !tbaa !834
  call fastcc void @"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_2clEPKNS_12FunctionDeclES8_"(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.pv, ptr noundef %.0)
  br label %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread

_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread: ; preds = %bb.ca, %bb.cc, %bb.cb, %bb.bz, %_ZNK5clang4Decl7hasAttrINS_9OwnerAttrEEEbv.exit.i.i, %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.thread.i, %bb.by, %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit28.i, %_ZN5clang4semaL29isStdInitializerListOfPointerEPKNS_10RecordDeclE.exit.thread.i, %_ZNK5clang4Decl7hasAttrINS_11PointerAttrEEEbv.exit.thread32.i, %_ZN5clang4semaL20isContainerOfPointerEPKNS_10RecordDeclE.exit.i, %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXConstructorDeclENS1_12FunctionDeclEEEDaPT0_.exit.i, %bb.bs, %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit, %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit141", %bb.br, %.critedge3, %"_ZZN5clang4semaL26visitFunctionCallArgumentsERN4llvm15SmallVectorImplINS0_12_GLOBAL__N_122IndirectLocalPathEntryEEEPNS_4ExprENS1_12function_refIFbS6_S8_NS3_13ReferenceKindEEEEENK3$_1clEPKNS_4DeclES8_.exit130"
  %i.pw = load i32, ptr %i.ee, align 8, !tbaa !40 ; 3 uses
  %i.px = icmp eq i32 %.pre298.a, %i.pw
  br i1 %i.px, label %_ZN5clang4sema12_GLOBAL__N_119RevertToOldSizeRAIID2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZN5clang4semaL38shouldTrackFirstArgumentForConstructorEPKNS_16CXXConstructExprE.exit.thread
  %i.py = icmp ult i32 %.pre298.a, %i.pw
  br i1 %i.py, label %.sink.split.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pz = load i32, ptr %i.eh, align 4, !tbaa !41
  %i.qa = icmp ugt i32 %.pre298.a, %i.pz
  br i1 %i.qa, label %bb.cq, label %_ZN4llvm15SmallVectorImplIN5clang4sema12_GLOBAL__N_122IndirectLocalPathEntryEE7reserveEm.exit.i.i.i

end_hunk_3
