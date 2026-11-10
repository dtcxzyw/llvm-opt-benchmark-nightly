Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.13?download=true
inline.NumInlined: 911
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stablemNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core:.lr.ph.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dc
  %.sroa.017.0.val.i.3 = load i32, ptr %i.cu, align 4, !alias.scope !186, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i.3 = load i32, ptr %i.cv, align 4, !alias.scope !187, !noundef !4 ; 2 uses
  %i.de = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 2 uses
  %i.df = xor i1 %i.de, true
  %i.dg = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.3, i32 %.sroa.015.0.val.i.3)
  store i32 %i.dg, ptr %i.cw, align 4, !noalias !185
  %.neg.i.i.3 = sext i1 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.cu, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.de to i64
  %i.di = getelementptr [4 x i8], ptr %i.cv, i64 %.neg13.i.i.3
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %i.dk = getelementptr i8, ptr %i.dh, i64 4
  %i.dl = icmp ne ptr %i.dd, %i.dj
  %i.dm = icmp ne ptr %i.db, %i.dk
  %or.cond.i = select i1 %i.dl, i1 true, i1 %i.dm, !prof !6
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit, !prof !6

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #25, !noalias !183
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1f_20sort_unstable_by_keymNCNCNvMNtB1j_6hybridNtB2M_11HybridIndex13full_snapshots0_00E0EB1j_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNCNvMNtB1w_6hybridNtB2Z_11HybridIndex13full_snapshots0_00E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB19_20sort_unstable_by_keymNCNCNvMNtB1d_6hybridNtB2G_11HybridIndex13full_snapshots0_00E0EB1d_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB19_20sort_unstable_by_keymNCNCNvMNtB1d_6hybridNtB2G_11HybridIndex13full_snapshots0_00E0EB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !207, !noundef !4
  %.val9.i.i = load i32, ptr %0, align 4, !alias.scope !207, !noundef !4
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !207, !noundef !4
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !207, !noundef !4
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !207, !noundef !4
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !207, !noundef !4
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !207, !noundef !4
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !207, !noundef !4
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !alias.scope !207, !noundef !4
  %.val1.i.i = load i32, ptr %i.ad, align 4, !alias.scope !207, !noundef !4
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.aj = load i64, ptr %i.aa, align 4, !alias.scope !207
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ah, align 4, !alias.scope !207
  store i64 %i.al, ptr %i.ak, align 8, !alias.scope !208
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.ai, align 4, !alias.scope !207
  store i64 %i.an, ptr %i.am, align 8, !alias.scope !208
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ab, align 4, !alias.scope !207
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !208
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val8.i26.i = load i32, ptr %i.as, align 4, !alias.scope !207, !noundef !4
  %.val9.i27.i = load i32, ptr %i.aq, align 4, !alias.scope !207, !noundef !4
  %i.at = icmp ult i32 %.val8.i26.i, %.val9.i27.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val6.i28.i = load i32, ptr %i.au, align 4, !alias.scope !207, !noundef !4
  %.val7.i29.i = load i32, ptr %i.av, align 4, !alias.scope !207, !noundef !4
  %i.aw = icmp ult i32 %.val6.i28.i, %.val7.i29.i ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i30.i = load i32, ptr %i.bd, align 4, !alias.scope !207, !noundef !4
  %.val5.i31.i = load i32, ptr %i.ay, align 4, !alias.scope !207, !noundef !4
  %i.bg = icmp ult i32 %.val4.i30.i, %.val5.i31.i ; 3 uses
  %.val2.i32.i = load i32, ptr %i.bf, align 4, !alias.scope !207, !noundef !4
  %.val3.i33.i = load i32, ptr %i.bb, align 4, !alias.scope !207, !noundef !4
  %i.bh = icmp ult i32 %.val2.i32.i, %.val3.i33.i ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %.val.i34.i = load i32, ptr %i.bn, align 4, !alias.scope !207, !noundef !4
  %.val1.i35.i = load i32, ptr %i.bl, align 4, !alias.scope !207, !noundef !4
  %i.bo = icmp ult i32 %.val.i34.i, %.val1.i35.i  ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.br = load i64, ptr %i.bi, align 4, !alias.scope !207
  store i64 %i.br, ptr %i.ar, align 8, !alias.scope !208
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bt = load i64, ptr %i.bp, align 4, !alias.scope !207
  store i64 %i.bt, ptr %i.bs, align 8, !alias.scope !208
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bv = load i64, ptr %i.bq, align 4, !alias.scope !207
  store i64 %i.bv, ptr %i.bu, align 8, !alias.scope !208
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bx = load i64, ptr %i.bj, align 4, !alias.scope !207
  store i64 %i.bx, ptr %i.bw, align 8, !alias.scope !208
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i64, ptr %0, align 4, !alias.scope !207
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !208
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.cb = load i64, ptr %i.bz, align 4, !alias.scope !207
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !208
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i, %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %i.cc
  br i1 %i.cg, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ct, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx38 ; 3 uses
  %i.cj = load i64, ptr %i.ch, align 4, !alias.scope !207 ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !208
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  %.val12.i.1.i = load i32, ptr %i.ck, align 8, !alias.scope !208, !noundef !4
  %i.cm = icmp ugt i32 %.val12.i.1.i, %i.cl
  br i1 %i.cm, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cn = load i64, ptr %i.ck, align 8, !alias.scope !208
  store i64 %i.cn, ptr %i.ci, align 8, !alias.scope !208
  %i.co = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.co, label %._crit_edge35, label %.lr.ph34

.preheader:                                       ; preds = %.lr.ph34
  %i.cp = load i64, ptr %i.cr, align 8, !alias.scope !208
  store i64 %i.cp, ptr %.sroa.0.0.i36.1.i33, align 8, !alias.scope !208
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i36.1.i33 = phi ptr [ %i.cr, %.preheader ], [ %i.ck, %.preheader.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i33, i64 -8 ; 4 uses
  %.val10.i.1.i = load i32, ptr %i.cr, align 8, !alias.scope !208, !noundef !4
  %i.cs = icmp ugt i32 %.val10.i.1.i, %i.cl
  br i1 %i.cs, label %.preheader, label %._crit_edge35

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34, %.preheader.preheader
  %.sroa.0.0.i36.lcssa.1.i = phi ptr [ %i.cf, %.preheader.preheader ], [ %i.cf, %.preheader ], [ %.sroa.0.0.i36.1.i33, %.lr.ph34 ]
  store i64 %i.cj, ptr %.sroa.0.0.i36.lcssa.1.i, align 4, !alias.scope !208, !noalias !209
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i: ; preds = %._crit_edge35, %.lr.ph.1.i
  %i.ct = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cy = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.di, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cw, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !211, !noundef !4
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !211, !noundef !4
  %.not = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dd = load i64, ptr %..i21.i.i, align 4, !alias.scope !211, !noalias !212
  store i64 %i.dd, ptr %.sroa.0.010.i.i, align 4, !alias.scope !207, !noalias !213
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 8, !alias.scope !211, !noundef !4
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 8, !alias.scope !211, !noundef !4
  %i.df = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.df, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i.i.i, align 8, !alias.scope !211, !noalias !214
  store i64 %i.dh, ptr %.sroa.019.04.i.i, align 4, !alias.scope !207, !noalias !215
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not26 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cy ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not26, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.dl = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !211
  store i64 %i.dl, ptr %i.de, align 4, !alias.scope !207, !noalias !210
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not26, i64 8, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not26, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.j ]
  %i.dm = icmp ne ptr %.sroa.06.1.i.i, %i.cy
  %i.dn = icmp ne ptr %.sroa.011.1.i.i, %i.cz
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn, !prof !6
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNCNvMNtB1w_6hybridNtB2Z_11HybridIndex13full_snapshots0_00E0EB1w_.exit, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #25
          to label %.noexc.i unwind label %bb.m, !noalias !216

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.dp, i1 false), !alias.scope !216, !noalias !217
  resume { ptr, i32 } %i.do

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.ds = load i64, ptr %i.dq, align 4, !alias.scope !207 ; 3 uses
  store i64 %i.ds, ptr %i.dr, align 8, !alias.scope !208
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  %.val12.i.i = load i32, ptr %i.dt, align 8, !alias.scope !208, !noundef !4
  %i.dv = icmp ugt i32 %.val12.i.i, %i.du
  br i1 %i.dv, label %.preheader5.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %i.dw = load i64, ptr %i.dt, align 8, !alias.scope !208
  store i64 %i.dw, ptr %i.dr, align 8, !alias.scope !208
  %i.dx = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %i.dy = load i64, ptr %i.ea, align 8, !alias.scope !208
  store i64 %i.dy, ptr %.sroa.0.0.i36.i31, align 8, !alias.scope !208
  %i.dz = icmp eq ptr %i.ea, %i.a
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i36.i31 = phi ptr [ %i.ea, %.preheader5 ], [ %i.dt, %.preheader5.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i36.i31, i64 -8 ; 4 uses
  %.val10.i.i = load i32, ptr %i.ea, align 8, !alias.scope !208, !noundef !4
  %i.eb = icmp ugt i32 %.val10.i.i, %i.du
  br i1 %i.eb, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.0.0.i36.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i36.i31, %.lr.ph ]
  store i64 %i.ds, ptr %.sroa.0.0.i36.lcssa.i, align 4, !alias.scope !208, !noalias !209
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNCNvMNtB1c_6hybridNtB2F_11HybridIndex13full_snapshots0_00E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ec = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNCNvMNtB1w_6hybridNtB2Z_11HybridIndex13full_snapshots0_00E0EB1w_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1f_20sort_unstable_by_keymNCNvNtB1j_8external14merge_segmentss0_0E0EB1j_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNvNtB1w_8external14merge_segmentss0_0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB19_20sort_unstable_by_keymNCNvNtB1d_8external14merge_segmentss0_0E0EB1d_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB19_20sort_unstable_by_keymNCNvNtB1d_8external14merge_segmentss0_0E0EB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !237, !noundef !4
  %.val9.i.i = load i32, ptr %0, align 4, !alias.scope !237, !noundef !4
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !237, !noundef !4
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !237, !noundef !4
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !237, !noundef !4
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !237, !noundef !4
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !237, !noundef !4
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !237, !noundef !4
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !alias.scope !237, !noundef !4
  %.val1.i.i = load i32, ptr %i.ad, align 4, !alias.scope !237, !noundef !4
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.aj = load i64, ptr %i.aa, align 4, !alias.scope !237
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !238
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ah, align 4, !alias.scope !237
  store i64 %i.al, ptr %i.ak, align 8, !alias.scope !238
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.ai, align 4, !alias.scope !237
  store i64 %i.an, ptr %i.am, align 8, !alias.scope !238
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ab, align 4, !alias.scope !237
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !238
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val8.i26.i = load i32, ptr %i.as, align 4, !alias.scope !237, !noundef !4
  %.val9.i27.i = load i32, ptr %i.aq, align 4, !alias.scope !237, !noundef !4
  %i.at = icmp ult i32 %.val8.i26.i, %.val9.i27.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val6.i28.i = load i32, ptr %i.au, align 4, !alias.scope !237, !noundef !4
  %.val7.i29.i = load i32, ptr %i.av, align 4, !alias.scope !237, !noundef !4
  %i.aw = icmp ult i32 %.val6.i28.i, %.val7.i29.i ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i30.i = load i32, ptr %i.bd, align 4, !alias.scope !237, !noundef !4
  %.val5.i31.i = load i32, ptr %i.ay, align 4, !alias.scope !237, !noundef !4
  %i.bg = icmp ult i32 %.val4.i30.i, %.val5.i31.i ; 3 uses
  %.val2.i32.i = load i32, ptr %i.bf, align 4, !alias.scope !237, !noundef !4
  %.val3.i33.i = load i32, ptr %i.bb, align 4, !alias.scope !237, !noundef !4
  %i.bh = icmp ult i32 %.val2.i32.i, %.val3.i33.i ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %.val.i34.i = load i32, ptr %i.bn, align 4, !alias.scope !237, !noundef !4
  %.val1.i35.i = load i32, ptr %i.bl, align 4, !alias.scope !237, !noundef !4
  %i.bo = icmp ult i32 %.val.i34.i, %.val1.i35.i  ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.br = load i64, ptr %i.bi, align 4, !alias.scope !237
  store i64 %i.br, ptr %i.ar, align 8, !alias.scope !238
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bt = load i64, ptr %i.bp, align 4, !alias.scope !237
  store i64 %i.bt, ptr %i.bs, align 8, !alias.scope !238
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bv = load i64, ptr %i.bq, align 4, !alias.scope !237
  store i64 %i.bv, ptr %i.bu, align 8, !alias.scope !238
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bx = load i64, ptr %i.bj, align 4, !alias.scope !237
  store i64 %i.bx, ptr %i.bw, align 8, !alias.scope !238
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i64, ptr %0, align 4, !alias.scope !237
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !238
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.cb = load i64, ptr %i.bz, align 4, !alias.scope !237
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !238
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i, %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %i.cc
  br i1 %i.cg, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ct, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx38 ; 3 uses
  %i.cj = load i64, ptr %i.ch, align 4, !alias.scope !237 ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !238
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  %.val12.i.1.i = load i32, ptr %i.ck, align 8, !alias.scope !238, !noundef !4
  %i.cm = icmp ugt i32 %.val12.i.1.i, %i.cl
  br i1 %i.cm, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cn = load i64, ptr %i.ck, align 8, !alias.scope !238
  store i64 %i.cn, ptr %i.ci, align 8, !alias.scope !238
  %i.co = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.co, label %._crit_edge35, label %.lr.ph34

.preheader:                                       ; preds = %.lr.ph34
  %i.cp = load i64, ptr %i.cr, align 8, !alias.scope !238
  store i64 %i.cp, ptr %.sroa.0.0.i36.1.i33, align 8, !alias.scope !238
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i36.1.i33 = phi ptr [ %i.cr, %.preheader ], [ %i.ck, %.preheader.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i33, i64 -8 ; 4 uses
  %.val10.i.1.i = load i32, ptr %i.cr, align 8, !alias.scope !238, !noundef !4
  %i.cs = icmp ugt i32 %.val10.i.1.i, %i.cl
  br i1 %i.cs, label %.preheader, label %._crit_edge35

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34, %.preheader.preheader
  %.sroa.0.0.i36.lcssa.1.i = phi ptr [ %i.cf, %.preheader.preheader ], [ %i.cf, %.preheader ], [ %.sroa.0.0.i36.1.i33, %.lr.ph34 ]
  store i64 %i.cj, ptr %.sroa.0.0.i36.lcssa.1.i, align 4, !alias.scope !238, !noalias !239
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i: ; preds = %._crit_edge35, %.lr.ph.1.i
  %i.ct = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cy = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.di, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cw, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !241, !noundef !4
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !241, !noundef !4
  %.not = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dd = load i64, ptr %..i21.i.i, align 4, !alias.scope !241, !noalias !242
  store i64 %i.dd, ptr %.sroa.0.010.i.i, align 4, !alias.scope !237, !noalias !243
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 8, !alias.scope !241, !noundef !4
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 8, !alias.scope !241, !noundef !4
  %i.df = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.df, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i.i.i, align 8, !alias.scope !241, !noalias !244
  store i64 %i.dh, ptr %.sroa.019.04.i.i, align 4, !alias.scope !237, !noalias !245
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not26 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cy ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not26, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.dl = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !241
  store i64 %i.dl, ptr %i.de, align 4, !alias.scope !237, !noalias !240
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not26, i64 8, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not26, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.j ]
  %i.dm = icmp ne ptr %.sroa.06.1.i.i, %i.cy
  %i.dn = icmp ne ptr %.sroa.011.1.i.i, %i.cz
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn, !prof !6
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNvNtB1w_8external14merge_segmentss0_0E0EB1w_.exit, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #25
          to label %.noexc.i unwind label %bb.m, !noalias !246

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.dp, i1 false), !alias.scope !246, !noalias !247
  resume { ptr, i32 } %i.do

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.ds = load i64, ptr %i.dq, align 4, !alias.scope !237 ; 3 uses
  store i64 %i.ds, ptr %i.dr, align 8, !alias.scope !238
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  %.val12.i.i = load i32, ptr %i.dt, align 8, !alias.scope !238, !noundef !4
  %i.dv = icmp ugt i32 %.val12.i.i, %i.du
  br i1 %i.dv, label %.preheader5.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %i.dw = load i64, ptr %i.dt, align 8, !alias.scope !238
  store i64 %i.dw, ptr %i.dr, align 8, !alias.scope !238
  %i.dx = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %i.dy = load i64, ptr %i.ea, align 8, !alias.scope !238
  store i64 %i.dy, ptr %.sroa.0.0.i36.i31, align 8, !alias.scope !238
  %i.dz = icmp eq ptr %i.ea, %i.a
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i36.i31 = phi ptr [ %i.ea, %.preheader5 ], [ %i.dt, %.preheader5.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i36.i31, i64 -8 ; 4 uses
  %.val10.i.i = load i32, ptr %i.ea, align 8, !alias.scope !238, !noundef !4
  %i.eb = icmp ugt i32 %.val10.i.i, %i.du
  br i1 %i.eb, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.0.0.i36.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i36.i31, %.lr.ph ]
  store i64 %i.ds, ptr %.sroa.0.0.i36.lcssa.i, align 4, !alias.scope !238, !noalias !239
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB18_20sort_unstable_by_keymNCNvNtB1c_8external14merge_segmentss0_0E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ec = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1s_20sort_unstable_by_keymNCNvNtB1w_8external14merge_segmentss0_0E0EB1w_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1f_16sort_unstable_byNCNvMs0_B1h_NtB1h_14ExternalSorter10sort_arena0E0EB1j_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [576 x i8], align 4               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1s_16sort_unstable_byNCNvMs0_B1u_NtB1u_14ExternalSorter10sort_arena0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB19_16sort_unstable_byNCNvMs0_B1b_NtB1b_14ExternalSorter10sort_arena0E0EB1d_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB19_16sort_unstable_byNCNvMs0_B1b_NtB1b_14ExternalSorter10sort_arena0E0EB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val16.i.i = load i32, ptr %i.k, align 4, !alias.scope !259
  %i.l = getelementptr i8, ptr %0, i64 20
  %.val17.i.i = load i32, ptr %i.l, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val18.i.i = load i32, ptr %0, align 4, !alias.scope !259
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val19.i.i = load i32, ptr %i.m, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.n = icmp eq i32 %.val17.i.i, %.val19.i.i
  %i.o = icmp ult i32 %.val16.i.i, %.val18.i.i
  %i.p = icmp ult i32 %.val17.i.i, %.val19.i.i
  %i.q = select i1 %i.n, i1 %i.o, i1 %i.p         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val12.i.i = load i32, ptr %i.r, align 4, !alias.scope !259
  %i.t = getelementptr i8, ptr %0, i64 44
  %.val13.i.i = load i32, ptr %i.t, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val14.i.i = load i32, ptr %i.s, align 4, !alias.scope !259
  %i.u = getelementptr i8, ptr %0, i64 32
  %.val15.i.i = load i32, ptr %i.u, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.v = icmp eq i32 %.val13.i.i, %.val15.i.i
  %i.w = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.x = icmp ult i32 %.val13.i.i, %.val15.i.i
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x         ; 2 uses
  %i.z = zext i1 %i.q to i64
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.z ; 4 uses
  %i.ab = xor i1 %i.q, true
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %i.y, i64 3, i64 2
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ae ; 5 uses
  %i.ag = select i1 %i.y, i64 2, i64 3
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 4 uses
  %.val8.i.i = load i32, ptr %i.af, align 4, !alias.scope !259
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val9.i.i = load i32, ptr %i.ai, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val10.i.i = load i32, ptr %i.aa, align 4, !alias.scope !259
  %i.aj = getelementptr i8, ptr %i.aa, i64 8
  %.val11.i.i = load i32, ptr %i.aj, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.ak = icmp eq i32 %.val9.i.i, %.val11.i.i
  %i.al = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.am = icmp ult i32 %.val9.i.i, %.val11.i.i
  %i.an = select i1 %i.ak, i1 %i.al, i1 %i.am     ; 3 uses
  %.val4.i.i = load i32, ptr %i.ah, align 4, !alias.scope !259
  %i.ao = getelementptr i8, ptr %i.ah, i64 8
  %.val5.i.i = load i32, ptr %i.ao, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val6.i.i = load i32, ptr %i.ad, align 4, !alias.scope !259
  %i.ap = getelementptr i8, ptr %i.ad, i64 8
  %.val7.i.i = load i32, ptr %i.ap, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.aq = icmp eq i32 %.val5.i.i, %.val7.i.i
  %i.ar = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.as = icmp ult i32 %.val5.i.i, %.val7.i.i
  %i.at = select i1 %i.aq, i1 %i.ar, i1 %i.as     ; 3 uses
  %i.au = select i1 %i.an, ptr %i.af, ptr %i.aa, !unpredictable !4
  %i.av = select i1 %i.at, ptr %i.ad, ptr %i.ah, !unpredictable !4
  %i.aw = select i1 %i.at, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ax = select i1 %i.an, ptr %i.aa, ptr %i.aw, !unpredictable !4 ; 4 uses
  %i.ay = select i1 %i.an, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.az = select i1 %i.at, ptr %i.ah, ptr %i.ay, !unpredictable !4 ; 4 uses
  %.val.i.i = load i32, ptr %i.az, align 4, !alias.scope !259
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val1.i.i = load i32, ptr %i.ba, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val2.i.i = load i32, ptr %i.ax, align 4, !alias.scope !259
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val3.i.i = load i32, ptr %i.bb, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.bc = icmp eq i32 %.val1.i.i, %.val3.i.i
  %i.bd = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.be = icmp ult i32 %.val1.i.i, %.val3.i.i
  %i.bf = select i1 %i.bc, i1 %i.bd, i1 %i.be     ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.az, ptr %i.ax, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.ax, ptr %i.az, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false), !alias.scope !261
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, ptr noundef nonnull align 4 dereferenceable(12) %i.bg, i64 12, i1 false), !alias.scope !261
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i64 12, i1 false), !alias.scope !261
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false), !alias.scope !261
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %.val16.i26.i = load i32, ptr %i.bn, align 4, !alias.scope !259
  %i.bo = getelementptr i8, ptr %i.bl, i64 20
  %.val17.i27.i = load i32, ptr %i.bo, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val18.i28.i = load i32, ptr %i.bl, align 4, !alias.scope !259
  %i.bp = getelementptr i8, ptr %i.bl, i64 8
  %.val19.i29.i = load i32, ptr %i.bp, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.bq = icmp eq i32 %.val17.i27.i, %.val19.i29.i
  %i.br = icmp ult i32 %.val16.i26.i, %.val18.i28.i
  %i.bs = icmp ult i32 %.val17.i27.i, %.val19.i29.i
  %i.bt = select i1 %i.bq, i1 %i.br, i1 %i.bs     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.val12.i30.i = load i32, ptr %i.bu, align 4, !alias.scope !259
  %i.bw = getelementptr i8, ptr %i.bl, i64 44
  %.val13.i31.i = load i32, ptr %i.bw, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val14.i32.i = load i32, ptr %i.bv, align 4, !alias.scope !259
  %i.bx = getelementptr i8, ptr %i.bl, i64 32
  %.val15.i33.i = load i32, ptr %i.bx, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.by = icmp eq i32 %.val13.i31.i, %.val15.i33.i
  %i.bz = icmp ult i32 %.val12.i30.i, %.val14.i32.i
  %i.ca = icmp ult i32 %.val13.i31.i, %.val15.i33.i
  %i.cb = select i1 %i.by, i1 %i.bz, i1 %i.ca     ; 2 uses
  %i.cc = zext i1 %i.bt to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.cc ; 4 uses
  %i.ce = xor i1 %i.bt, true
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.cf ; 5 uses
  %i.ch = select i1 %i.cb, i64 3, i64 2
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.ch ; 5 uses
  %i.cj = select i1 %i.cb, i64 2, i64 3
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.cj ; 4 uses
  %.val8.i34.i = load i32, ptr %i.ci, align 4, !alias.scope !259
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  %.val9.i35.i = load i32, ptr %i.cl, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val10.i36.i = load i32, ptr %i.cd, align 4, !alias.scope !259
  %i.cm = getelementptr i8, ptr %i.cd, i64 8
  %.val11.i37.i = load i32, ptr %i.cm, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.cn = icmp eq i32 %.val9.i35.i, %.val11.i37.i
  %i.co = icmp ult i32 %.val8.i34.i, %.val10.i36.i
  %i.cp = icmp ult i32 %.val9.i35.i, %.val11.i37.i
  %i.cq = select i1 %i.cn, i1 %i.co, i1 %i.cp     ; 3 uses
  %.val4.i38.i = load i32, ptr %i.ck, align 4, !alias.scope !259
  %i.cr = getelementptr i8, ptr %i.ck, i64 8
  %.val5.i39.i = load i32, ptr %i.cr, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val6.i40.i = load i32, ptr %i.cg, align 4, !alias.scope !259
  %i.cs = getelementptr i8, ptr %i.cg, i64 8
  %.val7.i41.i = load i32, ptr %i.cs, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.ct = icmp eq i32 %.val5.i39.i, %.val7.i41.i
  %i.cu = icmp ult i32 %.val4.i38.i, %.val6.i40.i
  %i.cv = icmp ult i32 %.val5.i39.i, %.val7.i41.i
  %i.cw = select i1 %i.ct, i1 %i.cu, i1 %i.cv     ; 3 uses
  %i.cx = select i1 %i.cq, ptr %i.ci, ptr %i.cd, !unpredictable !4
  %i.cy = select i1 %i.cw, ptr %i.cg, ptr %i.ck, !unpredictable !4
  %i.cz = select i1 %i.cw, ptr %i.ci, ptr %i.cg, !unpredictable !4
  %i.da = select i1 %i.cq, ptr %i.cd, ptr %i.cz, !unpredictable !4 ; 4 uses
  %i.db = select i1 %i.cq, ptr %i.cg, ptr %i.ci, !unpredictable !4
  %i.dc = select i1 %i.cw, ptr %i.ck, ptr %i.db, !unpredictable !4 ; 4 uses
  %.val.i42.i = load i32, ptr %i.dc, align 4, !alias.scope !259
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %.val1.i43.i = load i32, ptr %i.dd, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %.val2.i44.i = load i32, ptr %i.da, align 4, !alias.scope !259
  %i.de = getelementptr i8, ptr %i.da, i64 8
  %.val3.i45.i = load i32, ptr %i.de, align 4, !alias.scope !259, !noundef !4 ; 2 uses
  %i.df = icmp eq i32 %.val1.i43.i, %.val3.i45.i
  %i.dg = icmp ult i32 %.val.i42.i, %.val2.i44.i
end_hunk_0
