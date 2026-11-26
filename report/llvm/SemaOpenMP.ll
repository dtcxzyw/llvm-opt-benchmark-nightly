Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21284
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 680
  %.val2.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !153
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 672
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !152
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i: ; preds = %bb.b
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -6960
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !154 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 28616
  %i.am = load i32, ptr %i.al, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i, label %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i
  %narrow.i.i.i.i = sub nuw i32 %i.ak, %i.am
  %i.an = zext i32 %narrow.i.i.i.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -6968
  %.val5.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !153
  %i.ap = getelementptr [1736 x i8], ptr %.val5.i.i.i, i64 %i.an ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1736
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i
  %i.ar = getelementptr i8, ptr %i.ap, i64 -664
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !268
  br label %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit: ; preds = %bb.a, %bb.b, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i, %bb.c
  %.sroa.0.0.i = phi i32 [ %i.as, %bb.c ], [ 0, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i ], [ 0, %bb.a ], [ 0, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i ], [ 0, %bb.b ]
  %i.at = call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not494 = icmp eq i64 %2, 0
  br i1 %.not494, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %32, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %32, i64 132 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %36, i64 120 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %36, i64 128 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %36, i64 132 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.bt = ptrtoint ptr %40 to i64
  %i.bu = ptrtoint ptr %41 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %43, i64 120 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %43, i64 128 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %43, i64 132 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %42, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %42, i64 128
  %i.cg = getelementptr inbounds nuw i8, ptr %42, i64 132
  %i.ch = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %29, i64 120 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 128 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 132 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %46, i64 120
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %46, i64 132
  %i.cx = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %49, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %50, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.gh, %_ZNK12_GLOBAL__N_110DSAStackTy15getConstructLocEv.exit
  %i.df = load i32, ptr %i.k, align 8, !tbaa !154
  %.not.i156 = icmp eq i32 %i.df, 0
  br i1 %.not.i156, label %bb.gn, label %bb.gi

bb.d:                                             ; preds = %.lr.ph, %bb.gh
  %.0136495 = phi ptr [ %1, %.lr.ph ], [ %i.anu, %bb.gh ] ; 2 uses
  %i.dg = load ptr, ptr %.0136495, align 8, !tbaa !1046 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  store i32 0, ptr %24, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  store i32 0, ptr %25, align 4, !tbaa !161
  store i32 0, ptr %i.ay, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store ptr %i.dg, ptr %i.g, align 8, !tbaa !1046
  %i.dh = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  store ptr @.str.39, ptr %26, align 8, !tbaa !1648
  store i64 0, ptr %i.az, align 8, !tbaa !1649
  %i.di = call fastcc { ptr, i8 } @_ZL14getPrivateItemRN5clang4SemaERPNS_4ExprERNS_14SourceLocationERNS_11SourceRangeEbbN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %26) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.di, 0 ; 7 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.di, 1
  %i.dj = trunc i8 %.fca.1.extract to i1
  br i1 %i.dj, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit162

bb.e:                                             ; preds = %bb.d
  %i.dk = load i32, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.dl = load i32, ptr %i.l, align 4, !tbaa !155
  %.not.i158 = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i158, label %bb.g, label %bb.f, !prof !271

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.dg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %20, align 8, !tbaa !153
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store ptr %i.dg, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.k, align 8, !tbaa !154
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.k, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.dr = load i32, ptr %i.n, align 8, !tbaa !154 ; 2 uses
  %i.ds = load i32, ptr %i.o, align 4, !tbaa !155
  %.not.i159 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i159, label %bb.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit160

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %21, align 8, !tbaa !153
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr null, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.n, align 8, !tbaa !154
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.n, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit160

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit160: ; preds = %bb.h, %bb.i
  %i.dy = load i32, ptr %i.q, align 8, !tbaa !154 ; 2 uses
  %i.dz = load i32, ptr %i.r, align 4, !tbaa !155
  %.not.i161 = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i161, label %bb.k, label %bb.j, !prof !271

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit160
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit162

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit160
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %22, align 8, !tbaa !153
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store ptr null, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.q, align 8, !tbaa !154
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.q, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit162

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit162: ; preds = %bb.k, %bb.j, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store ptr %.fca.0.extract, ptr %i.h, align 8, !tbaa !270
  %.not145 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not145, label %bb.gh, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit162
  %.val146 = load i32, ptr %24, align 4           ; 5 uses
  %i.ef = select i1 %spec.select479, i32 %.sroa.0.0.i, i32 %.val146 ; 7 uses
  store i32 %i.ef, ptr %24, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %i.eg = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.eg, align 8, !tbaa !196 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %27, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 28 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 127
  %i.ek = add nsw i32 %i.ej, -41
  %i.el = icmp ult i32 %i.ek, 7
  %spec.select.i.i = select i1 %i.el, ptr %.fca.0.extract, ptr null ; 5 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.en = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindEj(ptr noundef nonnull align 8 dereferenceable(18640) %i.em, i32 %i.ef, i64 %.sroa.0.0.copyload.i, i32 noundef 1, i32 noundef 4595) #36
  br i1 %i.en, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit412, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %27, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load ptr, ptr %i.ep, align 16, !tbaa !252 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i8, ptr %i.er, align 16
  %i.et = and i8 %i.es, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.et, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.eu, align 8, !tbaa !196
  %i.ev = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !252
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i8, ptr %i.ey, align 16
  %i.fa = and i8 %i.ez, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.fa, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.n
  %i.fb = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.eq) #36 ; 2 uses
  %.not.i164 = icmp eq ptr %i.fb, null
  br i1 %.not.i164, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %bb.m
  %.1.i8.i = phi ptr [ %i.fb, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.eq, %bb.m ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.fd = load i24, ptr %i.fc, align 16
  %i.fe = and i24 %i.fd, 1048576
  %.not4.i.i = icmp eq i24 %i.fe, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 8
  %i.fg = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !252 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i8, ptr %i.fj, align 16
  %i.fl = and i8 %i.fk, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.fl, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.fm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fi) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.o, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.fm, %bb.o ], [ %i.fi, %.lr.ph.i.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.fo = load i24, ptr %i.fn, align 16
  %i.fp = and i24 %i.fo, 1048576
  %.not.i.i = icmp eq i24 %i.fp, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.n, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i = phi ptr [ %i.fq, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %27, %bb.n ], [ %27, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %.sroa.0.0.i163 = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !196
  store i64 %.sroa.0.0.i163, ptr %27, align 8, !tbaa !196
  %i.fr = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %.sroa.090.0.copyload = load i64, ptr %27, align 8, !tbaa !196
  %i.fs = call i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fr, i64 %.sroa.090.0.copyload) #36 ; 3 uses
  %i.ft = and i64 %i.fs, -16
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load ptr, ptr %i.fu, align 16, !tbaa !252 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i8, ptr %i.fw, align 16
  %i.fy = and i8 %i.fx, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i166 = icmp eq i8 %i.fy, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i166, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i167 = load i64, ptr %i.fz, align 8, !tbaa !196
  %i.ga = and i64 %.sroa.0.0.copyload.i.i.i.i.i167, -16
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !252
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i8, ptr %i.gd, align 16
  %i.gf = and i8 %i.ge, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i168 = icmp eq i8 %i.gf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i168, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit185

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171: ; preds = %bb.p
  %i.gg = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fv) #36 ; 2 uses
  %.not.i172 = icmp eq ptr %i.gg, null
  br i1 %.not.i172, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit185, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %.1.i8.i174 = phi ptr [ %i.gg, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171 ], [ %i.fv, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1.i8.i174, i64 16
  %i.gi = load i24, ptr %i.gh, align 16
  %i.gj = and i24 %i.gi, 1048576
  %.not4.i.i175 = icmp eq i24 %i.gj, 0
  br i1 %.not4.i.i175, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183, label %.lr.ph.i.i176

.lr.ph.i.i176:                                    ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180
  %.05.i.i177 = phi ptr [ %.1.i.i.i181, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180 ], [ %.1.i8.i174, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i177, i64 32
  %.0.copyload.i.i.i.i.i.i.i178 = load i64, ptr %i.gk, align 8
  %i.gl = and i64 %.0.copyload.i.i.i.i.i.i.i178, -16
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !252 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load i8, ptr %i.go, align 16
  %i.gq = and i8 %i.gp, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i179 = icmp eq i8 %i.gq, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i179, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i176
  %i.gr = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gn) #36
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180: ; preds = %bb.q, %.lr.ph.i.i176
  %.1.i.i.i181 = phi ptr [ %i.gr, %bb.q ], [ %i.gn, %.lr.ph.i.i176 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1.i.i.i181, i64 16
  %i.gt = load i24, ptr %i.gs, align 16
  %i.gu = and i24 %i.gt, 1048576
  %.not.i.i182 = icmp eq i24 %i.gu, 0
  br i1 %.not.i.i182, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183, label %.lr.ph.i.i176, !llvm.loop !3

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173
  %.0.lcssa.i.i184 = phi ptr [ %.1.i8.i174, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i173 ], [ %.1.i.i.i181, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i180 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i184, i64 32
  %.sroa.0.0.in.i169.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183 = load i64, ptr %i.gv, align 8, !tbaa !196
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit185

_ZNK5clang8QualType19getNonReferenceTypeEv.exit185: ; preds = %bb.p, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183
  %.sroa.0.0.in.i169.sroa.speculated = phi i64 [ %.sroa.0.0.in.i169.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i183 ], [ %i.fs, %bb.p ], [ %i.fs, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i171 ] ; 5 uses
  br i1 %spec.select479, label %bb.du, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %i.gw = load ptr, ptr %i.y, align 8, !tbaa !181
  %i.gx = load ptr, ptr %i.h, align 8, !tbaa !270
  call fastcc void @_ZN12_GLOBAL__N_110DSAStackTy9getTopDSAEPN5clang9ValueDeclEb(ptr dead_on_unwind noalias writable align 8 %28, ptr noundef nonnull align 8 dereferenceable(28840) %i.gw, ptr noundef %i.gx, i1 noundef zeroext false)
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !1045 ; 6 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !1047
  %i.gy = load ptr, ptr %i.y, align 8, !tbaa !181 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 688
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i186 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i.i.i.i186, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 680
  %.val2.i.i.i.i.i187 = load ptr, ptr %i.hb, align 8, !tbaa !153
  %i.hc = zext i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i187, i64 %i.hc ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !190
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 672
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !152
  %.not.i.i.i.i.i188 = icmp eq ptr %i.hf, %i.hh
  br i1 %.not.i.i.i.i.i188, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i189, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i189: ; preds = %bb.s
  %i.hi = getelementptr inbounds i8, ptr %i.hd, i64 -6960
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !154 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 28616
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i190 = icmp ugt i32 %i.hj, %i.hl
  br i1 %.not.i.i.i.i190, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i191, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i191: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i189
  %narrow.i.i.i.i192 = sub nuw i32 %i.hj, %i.hl
  %i.hm = zext i32 %narrow.i.i.i.i192 to i64
  %i.hn = getelementptr inbounds i8, ptr %i.hd, i64 -6968
  %.val5.i.i.i193 = load ptr, ptr %i.hn, align 8, !tbaa !153
  %i.ho = getelementptr [1736 x i8], ptr %.val5.i.i.i193, i64 %i.hm ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -1736
  %.not.i194 = icmp eq ptr %i.hp, null
  br i1 %.not.i194, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit, label %bb.t
end_hunk_0
