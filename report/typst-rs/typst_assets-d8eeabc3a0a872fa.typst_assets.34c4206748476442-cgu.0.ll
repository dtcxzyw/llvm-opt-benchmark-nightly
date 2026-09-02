Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_assets-d8eeabc3a0a872fa.typst_assets.34c4206748476442-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB2_8ElemInfo8get_attr:bb.a

._crit_edge.i.i.i:                                ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load i8, ptr %i.c, align 1, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.d = zext i8 %.val14.i.i.i to i64             ; 3 uses
  %i.e = icmp ult i8 %.val14.i.i.i, -32
  br i1 %i.e, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef 224, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #19, !noalias !69
  unreachable

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.f = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !69, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noalias !69, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %2)
  %i.k = tail call i32 @memcmp(ptr nonnull readonly %i.h, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !70, !noalias !71 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  %i.n = sub i64 %i.j, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.m, i64 %i.n, i64 %i.l ; 2 uses
  %i.o = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.d

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i
  %.sroa.01.022.i.i.i = phi i64 [ %i.ag, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i ], [ %.val3, %bb.a ] ; 2 uses
  %.sroa.05.021.i.i.i = phi i64 [ %i.af, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = lshr i64 %.sroa.01.022.i.i.i, 1          ; 2 uses
  %i.q = add nuw i64 %i.p, %.sroa.05.021.i.i.i    ; 3 uses
  %i.r = icmp ult i64 %i.q, %.val3
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q
  %.val12.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.t = zext i8 %.val12.i.i.i to i64             ; 2 uses
  %i.u = icmp ult i8 %.val12.i.i.i, -32
  br i1 %i.u, label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef 224, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #19, !noalias !69
  unreachable

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit19.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !noalias !69, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noalias !69, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i17.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i17.i.i.i), !alias.scope !72, !noalias !71 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.z, %2
  %spec.select.i.i.i18.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp sgt i64 %spec.select.i.i.i18.i.i.i, 0
  %i.af = select i1 %i.ae, i64 %.sroa.05.021.i.i.i, i64 %i.q, !unpredictable !4 ; 2 uses
  %i.ag = sub nuw nsw i64 %.sroa.01.022.i.i.i, %i.p ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit.i.i.i
  %spec.select.i.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.ai = add nuw nsw i64 %spec.select.i.i.i.lobit.i.i.i, %.sroa.05.0.lcssa.i.i.i
  %i.aj = icmp ule i64 %i.ai, %.val3
  tail call void @llvm.assume(i1 %i.aj)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit

bb.e:                                             ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSh20binary_search_by_keyReNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtB11_8ElemInfo17get_specific_attr0E0B13_.exit.i.i.i
  %i.ak = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %.val3
  br i1 %i.ak, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i, i64 noundef %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #19, !noalias !73
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit: ; preds = %bb.a, %bb.d
  %spec.store.select.i.i.i19.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 13)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly @88, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 13, %2
  %spec.select.i.i.i20.i.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp sgt i64 %spec.select.i.i.i20.i.i.i.i.i, 0
  %i.aq = select i1 %i.ap, i64 0, i64 38, !unpredictable !4 ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 19               ; 2 uses
  %i.as = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %.val12.1.i.i.i.i.i = load ptr, ptr %i.at, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.au = getelementptr i8, ptr %i.as, i64 32
  %.val13.1.i.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.1.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.1.i.i.i.i.i, i64 %2)
  %i.av = tail call i32 @memcmp(ptr nonnull readonly %.val12.1.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.1.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %.val13.1.i.i.i.i.i, %2
  %spec.select.i.i.i20.1.i.i.i.i.i = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp sgt i64 %spec.select.i.i.i20.1.i.i.i.i.i, 0
  %i.ba = select i1 %i.az, i64 %i.aq, i64 %i.ar, !unpredictable !4 ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 9                ; 2 uses
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %.val12.2.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.be = getelementptr i8, ptr %i.bc, i64 32
  %.val13.2.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.2.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.2.i.i.i.i.i, i64 %2)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %.val12.2.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.2.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %.val13.2.i.i.i.i.i, %2
  %spec.select.i.i.i20.2.i.i.i.i.i = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp sgt i64 %spec.select.i.i.i20.2.i.i.i.i.i, 0
  %i.bk = select i1 %i.bj, i64 %i.ba, i64 %i.bb, !unpredictable !4 ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 5                ; 2 uses
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %.val12.3.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.bo = getelementptr i8, ptr %i.bm, i64 32
  %.val13.3.i.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.3.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.3.i.i.i.i.i, i64 %2)
  %i.bp = tail call i32 @memcmp(ptr nonnull readonly %.val12.3.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.3.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub i64 %.val13.3.i.i.i.i.i, %2
  %spec.select.i.i.i20.3.i.i.i.i.i = select i1 %i.br, i64 %i.bs, i64 %i.bq
  %i.bt = icmp sgt i64 %spec.select.i.i.i20.3.i.i.i.i.i, 0
  %i.bu = select i1 %i.bt, i64 %i.bk, i64 %i.bl, !unpredictable !4 ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, 2                ; 2 uses
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  %.val12.4.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.by = getelementptr i8, ptr %i.bw, i64 32
  %.val13.4.i.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.4.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.4.i.i.i.i.i, i64 %2)
  %i.bz = tail call i32 @memcmp(ptr nonnull readonly %.val12.4.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.4.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp eq i32 %i.bz, 0
  %i.cc = sub i64 %.val13.4.i.i.i.i.i, %2
  %spec.select.i.i.i20.4.i.i.i.i.i = select i1 %i.cb, i64 %i.cc, i64 %i.ca
  %i.cd = icmp sgt i64 %spec.select.i.i.i20.4.i.i.i.i.i, 0
  %i.ce = select i1 %i.cd, i64 %i.bu, i64 %i.bv, !unpredictable !4 ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.cf ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 24
  %.val12.5.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.cg, i64 32
  %.val13.5.i.i.i.i.i = load i64, ptr %i.ci, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.5.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.5.i.i.i.i.i, i64 %2)
  %i.cj = tail call i32 @memcmp(ptr nonnull readonly %.val12.5.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.5.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp eq i32 %i.cj, 0
  %i.cm = sub i64 %.val13.5.i.i.i.i.i, %2
  %spec.select.i.i.i20.5.i.i.i.i.i = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = icmp sgt i64 %spec.select.i.i.i20.5.i.i.i.i.i, 0
  %i.co = select i1 %i.cn, i64 %i.ce, i64 %i.cf, !unpredictable !4 ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %.val12.6.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.cs = getelementptr i8, ptr %i.cq, i64 32
  %.val13.6.i.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i19.6.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.6.i.i.i.i.i, i64 %2)
  %i.ct = tail call i32 @memcmp(ptr nonnull readonly %.val12.6.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i19.6.i.i.i.i.i), !alias.scope !74, !noalias !75 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 0
  %i.cw = sub i64 %.val13.6.i.i.i.i.i, %2
  %spec.select.i.i.i20.6.i.i.i.i.i = select i1 %i.cv, i64 %i.cw, i64 %i.cu
  %i.cx = icmp sgt i64 %spec.select.i.i.i20.6.i.i.i.i.i, 0
  %i.cy = select i1 %i.cx, i64 %i.co, i64 %i.cp, !unpredictable !4 ; 2 uses
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %.val15.i.i.i.i.i = load ptr, ptr %i.da, align 8, !noalias !76, !nonnull !4, !noundef !4
  %i.db = getelementptr i8, ptr %i.cz, i64 32
  %.val16.i.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !76, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val16.i.i.i.i.i, i64 %2)
  %i.dc = tail call i32 @memcmp(ptr nonnull readonly %.val15.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !77, !noalias !75 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp eq i32 %i.dc, 0
  %i.df = sub i64 %.val16.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.de, i64 %i.df, i64 %i.dd
  %.not.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit.thread
  %.sroa.0.0 = phi ptr [ %i.dg, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit.thread ], [ null, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit ]
  ret ptr %.sroa.0.0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit.thread: ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit
  %.pn1.i12 = phi i64 [ %i.cy, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE7or_elseNCNvMNtCs4wS76oGtFbW_12typst_assets4htmlNtBX_8ElemInfo8get_attr0EBZ_.exit ], [ %i.d, %bb.e ]
  %i.dg = getelementptr inbounds nuw [56 x i8], ptr @444, i64 %.pn1.i12
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 15) i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 12 uses
  switch i64 %1, label %.preheader.i.preheader.new [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit
    i64 1, label %.preheader.i.epil.preheader
  ]

.preheader.i.preheader.new:                       ; preds = %bb.a
  %unroll_iter = and i64 %1, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.n, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.m, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1 ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.c, align 1, !noalias !98, !noundef !4 ; 3 uses
  %i.d = icmp sgt i8 %.val.i.i, -1
  br i1 %i.d, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.e = icmp samesign ult i8 %.val.i.i, -64
  br i1 %i.e, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %.val.i.i, -16
  %..i.i.i = select i1 %i.f, i64 1, i64 2
  br label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i

_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i: ; preds = %bb.c, %bb.b, %.preheader.i
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.b ], [ %..i.i.i, %bb.c ], [ 1, %.preheader.i ]
  %i.g = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.val.i.i.1 = load i8, ptr %i.i, align 1, !noalias !98, !noundef !4 ; 3 uses
  %i.j = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.j, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1, label %bb.d

bb.d:                                             ; preds = %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i
  %i.k = icmp samesign ult i8 %.val.i.i.1, -64
  br i1 %i.k, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i8 %.val.i.i.1, -16
  %..i.i.i.1 = select i1 %i.l, i64 1, i64 2
  br label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1

_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1: ; preds = %bb.e, %bb.d, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i
  %.sroa.0.0.i.i.i.1 = phi i64 [ 0, %bb.d ], [ %..i.i.i.1, %bb.e ], [ 1, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i ]
  %i.m = add i64 %.sroa.0.0.i.i.i.1, %i.g         ; 3 uses
  %i.n = add nuw i64 %.sroa.04.0.i.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa, label %.preheader.i

_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa: ; preds = %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.1
  %3 = trunc i64 %1 to i1
  br i1 %3, label %.preheader.i.epil.preheader, label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit

.preheader.i.epil.preheader:                      ; preds = %bb.a, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.n, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.m, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i.epil.init
  %.val.i.i.epil = load i8, ptr %i.o, align 1, !noalias !98, !noundef !4 ; 3 uses
  %i.p = icmp sgt i8 %.val.i.i.epil, -1
  br i1 %i.p, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil, label %bb.f

bb.f:                                             ; preds = %.preheader.i.epil.preheader
  %i.q = icmp samesign ult i8 %.val.i.i.epil, -64
  br i1 %i.q, label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i8 %.val.i.i.epil, -16
  %..i.i.i.epil = select i1 %i.r, i64 1, i64 2
  br label %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil

_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil: ; preds = %bb.g, %bb.f, %.preheader.i.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i64 [ 0, %bb.f ], [ %..i.i.i.epil, %bb.g ], [ 1, %.preheader.i.epil.preheader ]
  %i.s = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.i.epil.init
  br label %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit

_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit: ; preds = %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil
  %.lcssa = phi i64 [ %i.m, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit.unr-lcssa ], [ %i.s, %_RNCNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB7_11EncodeUtf16NtNtNtNtBb_4iter6traits8iterator8Iterator5count0Cs4wS76oGtFbW_12typst_assets.exit.i.i.epil ]
  switch i64 %.lcssa, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit [
    i64 1, label %bb.h
    i64 2, label %bb.l
  ]

bb.h:                                             ; preds = %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !alias.scope !99, !noalias !100, !noundef !4 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i: ; preds = %bb.h
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.t, align 1, !alias.scope !99, !noalias !100, !noundef !4
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ag = zext nneg i8 %i.u to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %i.ah = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.aj = load i8, ptr %i.z, align 1, !alias.scope !99, !noalias !100, !noundef !4
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i
  %i.ar = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i8, ptr %i.ai, align 1, !alias.scope !99, !noalias !100, !noundef !4
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, %bb.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %spec.select.i = phi i32 [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.ag, %bb.i ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 2 uses
  %.sroa.0.021.i = phi ptr [ %i.z, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.t, %bb.i ], [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 5 uses
  %.not71 = icmp eq ptr %.sroa.0.021.i, %i.b
  br i1 %.not71, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.bb = load i8, ptr %.sroa.0.021.i, align 1, !alias.scope !99, !noalias !101, !noundef !4 ; 3 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i: ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 1
  %i.be = icmp ne ptr %i.bd, %i.b
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bf, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2
  %i.bh = icmp ne ptr %i.bg, %i.b
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, label %bb.k

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 3
  %i.bk = icmp ne ptr %i.bj, %i.b
  tail call void @llvm.assume(i1 %i.bk)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @450, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @453) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.bl = add nsw i32 %spec.select.i, -800
  %spec.select.i28 = icmp ult i32 %i.bl, 224
  br i1 %spec.select.i28, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.o

bb.l:                                             ; preds = %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.bn = load i8, ptr %0, align 1, !alias.scope !102, !noalias !103, !noundef !4 ; 9 uses
  %i.bo = icmp sgt i8 %i.bn, -1                   ; 2 uses
  br i1 %i.bo, label %bb.m, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30: ; preds = %bb.l
  %i.bp = and i8 %i.bn, 31
  %i.bq = zext nneg i8 %i.bp to i32               ; 3 uses
  %i.br = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bm, align 1, !alias.scope !102, !noalias !103, !noundef !4
  %i.bu = shl nuw nsw i32 %i.bq, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32               ; 2 uses
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = icmp samesign ugt i8 %i.bn, -33
  br i1 %i.by, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31

bb.m:                                             ; preds = %bb.l
  %i.bz = zext nneg i8 %i.bn to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30
  %i.ca = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cc = load i8, ptr %i.bs, align 1, !alias.scope !102, !noalias !103, !noundef !4
  %i.cd = shl nuw nsw i32 %i.bw, 6
  %i.ce = and i8 %i.cc, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  %i.ch = shl nuw nsw i32 %i.bq, 12
  %i.ci = or disjoint i32 %i.cg, %i.ch
  %i.cj = icmp samesign ugt i8 %i.bn, -17
  br i1 %i.cj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i45, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i45: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44
  %i.ck = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = load i8, ptr %i.cb, align 1, !alias.scope !102, !noalias !103, !noundef !4
  %i.cn = shl nuw nsw i32 %i.bq, 18
  %i.co = and i32 %i.cn, 1835008
  %i.cp = shl nuw nsw i32 %i.cg, 6
  %i.cq = and i8 %i.cm, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  %i.ct = or disjoint i32 %i.cs, %i.co
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i45, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44, %bb.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30
  %spec.select.i32 = phi i32 [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30 ], [ %i.bz, %bb.m ], [ %i.ct, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i45 ], [ %i.ci, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44 ]
  %.sroa.0.021.i33 = phi ptr [ %i.bs, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i30 ], [ %i.bm, %bb.m ], [ %i.cl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i45 ], [ %i.cb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i44 ] ; 5 uses
  %.not70 = icmp eq ptr %.sroa.0.021.i33, %i.b
  br i1 %.not70, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i31
  %i.cu = load i8, ptr %.sroa.0.021.i33, align 1, !alias.scope !102, !noalias !104, !noundef !4 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %bb.p, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i34

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i34: ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i33, i64 1
  %i.cx = icmp ne ptr %i.cw, %i.b
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i42, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i42: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i34
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i33, i64 2
  %i.da = icmp ne ptr %i.cz, %i.b
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i43, label %bb.p

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i43: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i42
end_hunk_0
begin_hunk_1_@_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category:bb.a
  br i1 %i.eo, label %bb.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50: ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 1 ; 2 uses
  %i.eq = and i8 %i.en, 31
  %i.er = zext nneg i8 %i.eq to i32               ; 3 uses
  %i.es = icmp ne ptr %i.ep, %i.b
  tail call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.ep, align 1, !noalias !106, !noundef !4
  %i.eu = shl nuw nsw i32 %i.er, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32               ; 2 uses
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = icmp samesign ugt i8 %i.en, -33
  br i1 %i.ey, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ez = zext nneg i8 %i.en to i32
  br label %bb.u

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 2 ; 2 uses
  %i.fb = icmp ne ptr %i.fa, %i.b
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.fa, align 1, !noalias !106, !noundef !4
  %i.fd = shl nuw nsw i32 %i.ew, 6
  %i.fe = and i8 %i.fc, 63
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff            ; 2 uses
  %i.fh = shl nuw nsw i32 %i.er, 12
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = icmp samesign ugt i8 %i.en, -17
  br i1 %i.fj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54, label %bb.u

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.057.0.ph, i64 3 ; 2 uses
  %i.fl = icmp ne ptr %i.fk, %i.b
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = load i8, ptr %i.fk, align 1, !noalias !106, !noundef !4
  %i.fn = shl nuw nsw i32 %i.er, 18
  %i.fo = and i32 %i.fn, 1835008
  %i.fp = shl nuw nsw i32 %i.fg, 6
  %i.fq = and i8 %i.fm, 63
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr
  %i.ft = or disjoint i32 %i.fs, %i.fo
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53
  %.sroa.4.0.i51.ph = phi i32 [ %i.fi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i53 ], [ %i.ft, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i54 ], [ %i.ex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i50 ], [ %i.ez, %bb.t ] ; 2 uses
  %i.fu = icmp samesign ult i32 %.sroa.4.0.i51.ph, 1114112
  tail call void @llvm.assume(i1 %i.fu)
  switch i32 %.sroa.4.0.i51.ph, label %bb.w [
    i32 824, label %bb.o
    i32 8402, label %bb.o
  ]

bb.v:                                             ; preds = %bb.r
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #19
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fv = tail call fastcc noundef i32 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.fv, -1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.o

bb.x:                                             ; preds = %bb.o
  switch i32 %.sroa.012.0.fr, label %bb.z [
    i32 124, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit
    i32 8764, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit
    i32 44, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
    i32 58, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
    i32 59, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split
  ]

default.unreachable87:                            ; preds = %bb.o
  unreachable

bb.y:                                             ; preds = %bb.o
  %i.fw = icmp ugt i32 %.sroa.012.0.fr, 8516
  br i1 %i.fw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %switch.early.test, %bb.y, %bb.x, %bb.o
  %i.fx = icmp ult i32 %.sroa.012.0.fr, 1114112
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = trunc i32 %.sroa.012.0.fr to i16        ; 4 uses
  %i.fz = icmp ult i16 %i.fy, 1024
  br i1 %i.fz, label %switch.lookup, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ga = icmp ult i32 %.sroa.012.0.fr, 8519
  br i1 %i.ga, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %switch.early.test

switch.early.test:                                ; preds = %bb.aa
  %switch.tableidx = add i32 %.sroa.012.0.fr, -8706 ; 2 uses
  %i.gb = icmp ult i32 %switch.tableidx, 27
  %switch.shifted = lshr i32 117440513, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.gb, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.gc = add i16 %i.fy, -8192
  %or.cond3 = icmp ult i16 %i.gc, 3072
  br i1 %or.cond3, label %bb.ac, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gd = add nsw i16 %i.fy, -7168
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.ac, %bb.z
  %i.ge = phi i16 [ %i.gd, %bb.ac ], [ %i.fy, %bb.z ]
  %switch.idx.cast = zext nneg i8 %2 to i16
  %switch.idx.mult = shl nuw nsw i16 %switch.idx.cast, 12
  %i.gf = add nuw nsw i16 %switch.idx.mult, %i.ge ; 10 uses
  %i.gg = icmp samesign ult i16 %i.gf, 4219
  %.sroa.05.0..i = select i1 %i.gg, i64 0, i64 118 ; 2 uses
  %i.gh = add nuw nsw i64 %.sroa.05.0..i, 59      ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gh
  %.val12.1.i = load i16, ptr %i.gi, align 2, !noalias !107, !noundef !4
  %i.gj = icmp ult i16 %i.gf, %.val12.1.i
  %.sroa.05.0..1.i = select i1 %i.gj, i64 %.sroa.05.0..i, i64 %i.gh ; 2 uses
  %i.gk = add nuw nsw i64 %.sroa.05.0..1.i, 29    ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gk
  %.val12.2.i = load i16, ptr %i.gl, align 2, !noalias !107, !noundef !4
  %i.gm = icmp ult i16 %i.gf, %.val12.2.i
  %.sroa.05.0..2.i = select i1 %i.gm, i64 %.sroa.05.0..1.i, i64 %i.gk ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.05.0..2.i, 15    ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gn
  %.val12.3.i = load i16, ptr %i.go, align 2, !noalias !107, !noundef !4
  %i.gp = icmp ult i16 %i.gf, %.val12.3.i
  %.sroa.05.0..3.i = select i1 %i.gp, i64 %.sroa.05.0..2.i, i64 %i.gn ; 2 uses
  %i.gq = add nuw nsw i64 %.sroa.05.0..3.i, 7     ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gq
  %.val12.4.i = load i16, ptr %i.gr, align 2, !noalias !107, !noundef !4
  %i.gs = icmp ult i16 %i.gf, %.val12.4.i
  %.sroa.05.0..4.i = select i1 %i.gs, i64 %.sroa.05.0..3.i, i64 %i.gq ; 2 uses
  %i.gt = add nuw nsw i64 %.sroa.05.0..4.i, 4     ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gt
  %.val12.5.i = load i16, ptr %i.gu, align 2, !noalias !107, !noundef !4
  %i.gv = icmp ult i16 %i.gf, %.val12.5.i
  %.sroa.05.0..5.i = select i1 %i.gv, i64 %.sroa.05.0..4.i, i64 %i.gt ; 2 uses
  %i.gw = add nuw nsw i64 %.sroa.05.0..5.i, 2     ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gw
  %.val12.6.i = load i16, ptr %i.gx, align 2, !noalias !107, !noundef !4
  %i.gy = icmp ult i16 %i.gf, %.val12.6.i
  %.sroa.05.0..6.i = select i1 %i.gy, i64 %.sroa.05.0..5.i, i64 %i.gw ; 2 uses
  %i.gz = add nuw nsw i64 %.sroa.05.0..6.i, 1     ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.gz
  %.val12.7.i = load i16, ptr %i.ha, align 2, !noalias !107, !noundef !4
  %i.hb = icmp ult i16 %i.gf, %.val12.7.i
  %.sroa.05.0..7.i = select i1 %i.hb, i64 %.sroa.05.0..6.i, i64 %i.gz ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %.sroa.05.0..7.i ; 2 uses
  %.val15.i = load i16, ptr %i.hc, align 2, !noalias !107, !noundef !4 ; 2 uses
  %i.hd = icmp ult i16 %i.gf, %.val15.i
  br i1 %i.hd, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit: ; preds = %switch.lookup
  %i.he = getelementptr i8, ptr %i.hc, i64 2
  %.val16.i = load i8, ptr %i.he, align 2, !noalias !107
  %.val16.fr.i = freeze i8 %.val16.i
  %i.hf = and i8 %.val16.fr.i, 15
  %i.hg = zext nneg i8 %i.hf to i16
  %i.hh = add nuw nsw i16 %.val15.i, %i.hg
  %i.hi = icmp samesign ugt i16 %i.gf, %i.hh      ; 2 uses
  %i.hj = zext i1 %i.hi to i64
  %i.hk = add nuw nsw i64 %.sroa.05.0..7.i, %i.hj ; 2 uses
  br i1 %i.hi, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit
  %i.hl = icmp samesign ult i64 %i.hk, 236
  br i1 %i.hl, label %switch.hole_check93, label %bb.af

switch.hole_check93:                              ; preds = %bb.ad
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr @447, i64 %i.hk
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.ho = load i8, ptr %i.hn, align 2, !noundef !4
  %i.hp = lshr i8 %i.ho, 4                        ; 2 uses
  %switch.maskindex = zext nneg i8 %i.hp to i16
  %switch.shifted95 = lshr i16 14199, %switch.maskindex
  %switch.lobit96 = trunc i16 %switch.shifted95 to i1
  br i1 %switch.lobit96, label %switch.lookup94, label %bb.ae, !prof !108

bb.ae:                                            ; preds = %switch.hole_check93
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @462, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #19
  unreachable

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 236, i64 noundef 236, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #19
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split: ; preds = %bb.x, %bb.x, %bb.x
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

switch.lookup94:                                  ; preds = %switch.hole_check93
  %i.hq = zext nneg i8 %i.hp to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category, i64 %i.hq
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit: ; preds = %bb.a, %switch.early.test, %switch.lookup94, %bb.x, %bb.x, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split, %switch.lookup, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit, %bb.ab, %bb.w, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit, %bb.aa, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit47 ], [ 0, %bb.a ], [ 0, %bb.ab ], [ 13, %bb.aa ], [ 1, %bb.x ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTthE16binary_search_byNCNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtBW_12OperatorInfo21get_operator_category0EBY_.exit ], [ 0, %_RNvXsO_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator5count.exit ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtNtB4_4char7convert14ParseCharErrorE6unwrapCs4wS76oGtFbW_12typst_assets.exit ], [ 1, %bb.x ], [ %switch.load, %switch.lookup94 ], [ 0, %switch.lookup ], [ 0, %bb.w ], [ 14, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjjE6map_orNtNtNtCs4wS76oGtFbW_12typst_assets6mathml4data8CategoryNCNvMBW_NtBW_12OperatorInfo21get_operator_categorys_0EBY_.exit.fold.split ], [ 13, %switch.early.test ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo2of(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1, i8 noundef range(i8 0, 3) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef %2) ; 2 uses
  %i.b = icmp ne i8 %i.a, 0
  %or.cond.not = or i1 %3, %i.b
  br i1 %or.cond.not, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 0) ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 2) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef i8 @_RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef 1)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.03.0 = phi i8 [ %i.a, %bb.a ], [ %i.g, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %i.h = zext nneg i8 %.sroa.03.0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo2of, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator(ptr noalias nofree noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not24.i = icmp samesign eq i64 %1, 0
  br i1 %.not24.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %0, align 1, !alias.scope !115, !noalias !116, !noundef !4 ; 5 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i: ; preds = %bb.b
  %i.e = and i8 %i.c, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.b, align 1, !alias.scope !115, !noalias !116, !noundef !4
  %i.j = shl nuw nsw i32 %i.f, 6
  %i.k = and i8 %i.i, 63
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %i.m = or disjoint i32 %i.j, %i.l
  %i.n = icmp samesign ugt i8 %i.c, -33
  br i1 %i.n, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i8 %i.c to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %i.p = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.r = load i8, ptr %i.h, align 1, !alias.scope !115, !noalias !116, !noundef !4
  %i.s = shl nuw nsw i32 %i.l, 6
  %i.t = and i8 %i.r, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 12
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = icmp samesign ugt i8 %i.c, -17
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i
  %i.z = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i8, ptr %i.q, align 1, !alias.scope !115, !noalias !116, !noundef !4
  %i.ac = shl nuw nsw i32 %i.f, 18
  %i.ad = and i32 %i.ac, 1835008
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = and i8 %i.ab, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ad
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i
  %spec.select.i = phi i32 [ %i.m, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.o, %bb.c ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ]
  %.sroa.0.021.i = phi ptr [ %i.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i ], [ %i.b, %bb.c ], [ %i.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i ] ; 5 uses
  %i.aj = icmp eq ptr %.sroa.0.021.i, %i.a
  br i1 %i.aj, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  %i.ak = load i8, ptr %.sroa.0.021.i, align 1, !alias.scope !115, !noalias !117, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 1
  %i.an = icmp ne ptr %i.am, %i.a
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i8 %i.ak, -33
  br i1 %i.ao, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 2
  %i.aq = icmp ne ptr %i.ap, %i.a
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ugt i8 %i.ak, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 3
  %i.at = icmp ne ptr %i.as, %i.a
  tail call void @llvm.assume(i1 %i.at)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i
  switch i32 %spec.select.i, label %bb.e [
    i32 44, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
    i32 59, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
    i32 8291, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit
  ]

bb.e:                                             ; preds = %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultcNtNtNtB5_4char7convert14ParseCharErrorE9is_ok_andNCNvNtCs4wS76oGtFbW_12typst_assets6mathml12is_separator0EB1C_.exit: ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i, %bb.d, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit, %bb.e
  %.sroa.04.0.i = phi i1 [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ true, %_RNvXs7_NtNtCs3oUPovFnLWP_4core4char7convertcNtNtNtB9_3str6traits7FromStr8from_str.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i ], [ false, %bb.a ]
  ret i1 %.sroa.04.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 -1, 818) i32 @_RNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = icmp eq i64 %1, 2
  br i1 %i.a, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i: ; preds = %.lr.ph.i
  %i.b = load i16, ptr %0, align 1
  %i.c = icmp ne i16 8481, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 15649, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.1
  %i.j = load i16, ptr %0, align 1
  %i.k = icmp ne i16 9766, %i.j
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.2
  %i.n = load i16, ptr %0, align 1
  %i.o = icmp ne i16 10794, %i.n
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.3
  %i.r = load i16, ptr %0, align 1
  %i.s = icmp ne i16 15658, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.4
  %i.v = load i16, ptr %0, align 1
  %i.w = icmp ne i16 11051, %i.v
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.5
  %i.z = load i16, ptr %0, align 1
  %i.aa = icmp ne i16 15659, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7

_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.7: ; preds = %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.6
  %i.ad = load i16, ptr %0, align 1
  %i.ae = icmp ne i16 11565, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0EB1N_.exit, label %_RNCNvNtCs4wS76oGtFbW_12typst_assets6mathml19map_two_ascii_chars0B5_.exit.i.8
end_hunk_1
begin_hunk_2_@_RNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !alias.scope !142, !noalias !143, !noundef !4
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i
  %i.aa = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !alias.scope !142, !noalias !143, !noundef !4
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i
  %spec.select.i.i.i = phi i32 [ %i.n, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i ], [ %i.p, %bb.d ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i ]
  %.sroa.0.021.i.i.i = phi ptr [ %i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i ], [ %i.c, %bb.d ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i ] ; 5 uses
  %i.ak = icmp eq ptr %.sroa.0.021.i.i.i, %i.b
  br i1 %i.ak, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i
  %i.al = load i8, ptr %.sroa.0.021.i.i.i, align 1, !alias.scope !142, !noalias !144, !noundef !4 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.ao = icmp ne ptr %i.an, %i.b
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.ar = icmp ne ptr %i.aq, %i.b
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i8 %i.al, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.au = icmp ne ptr %i.at, %i.b
  tail call void @llvm.assume(i1 %i.au)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i, %bb.a
  %.sroa.0.0.i = phi i32 [ %i.a, %bb.a ], [ %spec.select.i.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i ] ; 6 uses
  %i.av = icmp samesign ult i32 %.sroa.0.0.i, 8968
  %i.aw = select i1 %i.av, i64 0, i64 8, !unpredictable !4 ; 2 uses
  %i.ax = or disjoint i64 %i.aw, 4                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.ax
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !145, !noalias !146, !noundef !4
  %i.az = icmp samesign ult i32 %.sroa.0.0.i, %.val12.1.i
  %i.ba = select i1 %i.az, i64 %i.aw, i64 %i.ax, !unpredictable !4 ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bb
  %.val12.2.i = load i32, ptr %i.bc, align 4, !range !145, !noalias !146, !noundef !4
  %i.bd = icmp samesign ult i32 %.sroa.0.0.i, %.val12.2.i
  %i.be = select i1 %i.bd, i64 %i.ba, i64 %i.bb, !unpredictable !4 ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bf
  %.val12.3.i = load i32, ptr %i.bg, align 4, !range !145, !noalias !146, !noundef !4
  %i.bh = icmp samesign ult i32 %.sroa.0.0.i, %.val12.3.i
  %i.bi = select i1 %i.bh, i64 %i.be, i64 %i.bf, !unpredictable !4
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bi ; 2 uses
  %.val15.i = load i32, ptr %i.bj, align 4, !range !145, !noalias !146, !noundef !4 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val16.i = load i8, ptr %i.bk, align 4, !noalias !146
  %.not = icmp samesign uge i32 %.sroa.0.0.i, %.val15.i
  %i.bl = zext i8 %.val16.i to i32
  %i.bm = add nuw nsw i32 %.val15.i, %i.bl
  %.not.i.i = icmp samesign ult i32 %.sroa.0.0.i, %i.bm
  %not..i.not = select i1 %.not, i1 %.not.i.i, i1 false
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread: ; preds = %bb.e, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit
  %.sroa.0.0 = phi i1 [ %not..i.not, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit ], [ false, %bb.b ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_4char7convert13CharErrorKindNtB6_5Debug3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !147, !noundef !4
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 11
  %.1.i = select i1 %i.b, ptr @471, ptr @470
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @466, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !148, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @467, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  store i8 %i.b, ptr %i.a, align 1, !noalias !152
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  store i8 %i.b, ptr %i.a, align 1, !noalias !157
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  store i8 %i.b, ptr %i.a, align 1, !noalias !162
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !162
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  store i8 %i.b, ptr %i.a, align 1, !noalias !167
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = load i8, ptr %0, align 1, !noundef !4    ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %2 = trunc i8 %i.d to i1
  br i1 %2, label %bb.a, label %.lr.ph.split.i.i.1.peel

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.f = and i8 %i.d, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.f, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.g = and i8 %i.d, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.h = and i8 %i.d, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @459, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 72), %.lr.ph.split.i.i.3.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.i = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !179, !noundef !4
  %i.l = and i8 %i.d, %i.i
  %i.m = load ptr, ptr %.lcssa56.peel, align 8, !noalias !179, !nonnull !4, !noundef !4
  %i.n = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.k)
  br i1 %i.n, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.g
  %.sroa.14.0.i = phi i8 [ %i.av, %bb.g ], [ %i.l, %bb.a ] ; 11 uses
  %.sroa.8.0.i = phi i64 [ %.lcssa, %bb.g ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.o = icmp ult i64 %.sroa.8.0.i, 4
  br i1 %i.o, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.p = icmp eq i8 %.sroa.14.0.i, 0
  br i1 %i.p, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %.sroa.8.0.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.8.0.i, 1          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val.i.i = load i8, ptr %i.s, align 8, !noalias !179, !noundef !4 ; 4 uses
  %i.t = and i8 %.val.i.i, %i.d
  %i.u = icmp eq i8 %i.t, %.val.i.i
  %i.v = and i8 %.val.i.i, %.sroa.14.0.i
  %i.w = icmp ne i8 %i.v, 0
  %or.cond.i.i = and i1 %i.w, %i.u
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.r, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.r ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.8.0.i, 2          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val.i.i.1 = load i8, ptr %i.z, align 8, !noalias !179, !noundef !4 ; 4 uses
  %i.aa = and i8 %.val.i.i.1, %i.d
  %i.ab = icmp eq i8 %i.aa, %.val.i.i.1
  %i.ac = and i8 %.val.i.i.1, %.sroa.14.0.i
  %i.ad = icmp ne i8 %i.ac, 0
  %or.cond.i.i.1 = and i1 %i.ad, %i.ab
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.y, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.y ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.8.0.i, 3         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i.i.2 = load i8, ptr %i.ag, align 8, !noalias !179, !noundef !4 ; 4 uses
  %i.ah = and i8 %.val.i.i.2, %i.d
  %i.ai = icmp eq i8 %i.ah, %.val.i.i.2
  %i.aj = and i8 %.val.i.i.2, %.sroa.14.0.i
  %i.ak = icmp ne i8 %i.aj, 0
  %or.cond.i.i.2 = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.af, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.af ; 2 uses
  %i.am = or disjoint i64 %.sroa.8.0.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val.i.i.3 = load i8, ptr %i.an, align 8, !noalias !179, !noundef !4 ; 4 uses
  %i.ao = and i8 %.val.i.i.3, %i.d
  %i.ap = icmp eq i8 %i.ao, %.val.i.i.3
  %i.aq = and i8 %.val.i.i.3, %.sroa.14.0.i
  %i.ar = icmp ne i8 %i.aq, 0
  %or.cond.i.i.3 = and i1 %i.ar, %i.ap
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.q, %.lr.ph.split.i.i ], [ %i.x, %.lr.ph.split.i.i.1 ], [ %i.ae, %.lr.ph.split.i.i.2 ], [ %i.al, %.lr.ph.split.i.i.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ], [ %i.am, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !179, !noundef !4
  %i.au = xor i8 %.val.i.i.lcssa, -1
  %i.av = and i8 %.sroa.14.0.i, %i.au
  %i.aw = load ptr, ptr %.lcssa56, align 8, !noalias !179, !nonnull !4, !noundef !4
  %i.ax = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ax, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %bb.g

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.14.0.i65 = phi i8 [ %.sroa.14.0.i, %.backedge.i.i.2 ], [ %.sroa.14.0.i, %.lr.ph.split.i.i.3 ], [ %i.d, %.lr.ph.split.i.i.3.peel ], [ %.sroa.14.0.i, %.backedge.i.i ], [ %.sroa.14.0.i, %.backedge.i.i.1 ], [ %.sroa.14.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  store i8 %.sroa.14.0.i65, ptr %i.c, align 1, !noalias !178
  %.not.i = icmp eq i8 %.sroa.14.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

.loopexit13.sink.split.i:                         ; preds = %bb.f, %bb.e, %bb.d, %.loopexit.i, %.thread.i
  %.sroa.0.0.ph.i = phi i1 [ true, %bb.d ], [ %i.bb, %bb.f ], [ true, %bb.e ], [ false, %.thread.i ], [ false, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  br label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit

bb.d:                                             ; preds = %bb.c
  %i.ay = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ay, label %.loopexit13.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2)
  br i1 %i.az, label %.loopexit13.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !178
  store ptr %i.c, ptr %i.b, align 8, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !181
  store ptr %i.b, ptr %i.a, align 8, !noalias !181
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !181
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !182, !noalias !183, !nonnull !4, !noundef !4
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !182, !noalias !183, !nonnull !4, !noundef !4
  %i.bb = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !178
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.b
  %i.bc = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.at)
  br i1 %i.bc, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph, !llvm.loop !177

_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit: ; preds = %bb.a, %bb.b, %bb.g, %.loopexit13.sink.split.i
  %.sroa.0.0.i = phi i1 [ %.sroa.0.0.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCs3oUPovFnLWP_4core4char7convertNtB5_14ParseCharErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !229
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %.lcssa108120.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa108118.i, %bb.n ] ; 3 uses
  %.sroa.0.0115.i = phi i8 [ 0, %.lr.ph.i ], [ %i.bs, %bb.n ]
  %.lcssa92111114.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa92110.i, %bb.n ] ; 7 uses
  %i.f = icmp ult i64 %2, %.lcssa108120.i
  br i1 %i.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.b, %bb.e
  %i.g = phi i64 [ %i.u, %bb.e ], [ %.lcssa108120.i, %bb.b ] ; 5 uses
  %i.h = sub nuw i64 %2, %i.g                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
end_hunk_2
