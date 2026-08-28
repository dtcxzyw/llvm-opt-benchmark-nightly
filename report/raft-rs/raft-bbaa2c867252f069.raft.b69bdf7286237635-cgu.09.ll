Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.09?download=true
inline.NumInlined: 154
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft:.lr.ph.i
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, label %bb.b

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
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load i64, ptr %i.k, align 8, !alias.scope !55, !noalias !58, !noundef !4
  %.val9.i.i = load i64, ptr %0, align 8, !alias.scope !60, !noalias !61, !noundef !4
  %i.l = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i = load i64, ptr %i.m, align 8, !alias.scope !55, !noalias !58, !noundef !4
  %.val7.i.i = load i64, ptr %i.n, align 8, !alias.scope !60, !noalias !61, !noundef !4
  %i.o = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 3 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 2 uses
  %.val4.i.i = load i64, ptr %i.v, align 8, !alias.scope !55, !noalias !58, !noundef !4 ; 2 uses
  %.val5.i.i = load i64, ptr %i.q, align 8, !alias.scope !60, !noalias !61, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %.val4.i.i, %.val5.i.i      ; 2 uses
  %.val2.i.i = load i64, ptr %i.x, align 8, !alias.scope !55, !noalias !58, !noundef !4 ; 2 uses
  %.val3.i.i = load i64, ptr %i.t, align 8, !alias.scope !60, !noalias !61, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %.val2.i.i, %.val3.i.i      ; 2 uses
  %i.aa = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ab = select i1 %i.y, ptr %i.q, ptr %i.aa, !unpredictable !4
  %i.ac = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.ad = select i1 %i.z, ptr %i.x, ptr %i.ac, !unpredictable !4
  %.val.i.i = load i64, ptr %i.ad, align 8, !alias.scope !55, !noalias !58, !noundef !4 ; 2 uses
  %.val1.i.i = load i64, ptr %i.ab, align 8, !alias.scope !60, !noalias !61, !noundef !4 ; 2 uses
  %i.ae = tail call i64 @llvm.umin.i64(i64 %.val4.i.i, i64 %.val5.i.i)
  store i64 %i.ae, ptr %i.a, align 8, !alias.scope !53, !noalias !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = tail call i64 @llvm.umin.i64(i64 %.val.i.i, i64 %.val1.i.i)
  store i64 %i.ag, ptr %i.af, align 8, !alias.scope !53, !noalias !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = tail call i64 @llvm.umax.i64(i64 %.val.i.i, i64 %.val1.i.i)
  store i64 %i.ai, ptr %i.ah, align 8, !alias.scope !53, !noalias !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ak = tail call i64 @llvm.umax.i64(i64 %.val2.i.i, i64 %.val3.i.i)
  store i64 %i.ak, ptr %i.aj, align 8, !alias.scope !53, !noalias !50
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val8.i30.i = load i64, ptr %i.an, align 8, !alias.scope !62, !noalias !65, !noundef !4
  %.val9.i31.i = load i64, ptr %i.al, align 8, !alias.scope !67, !noalias !68, !noundef !4
  %i.ao = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val6.i32.i = load i64, ptr %i.ap, align 8, !alias.scope !62, !noalias !65, !noundef !4
  %.val7.i33.i = load i64, ptr %i.aq, align 8, !alias.scope !67, !noalias !68, !noundef !4
  %i.ar = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.av ; 3 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ax ; 3 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %.val4.i34.i = load i64, ptr %i.ay, align 8, !alias.scope !62, !noalias !65, !noundef !4 ; 2 uses
  %.val5.i35.i = load i64, ptr %i.at, align 8, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.bb = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 2 uses
  %.val2.i36.i = load i64, ptr %i.ba, align 8, !alias.scope !62, !noalias !65, !noundef !4 ; 2 uses
  %.val3.i37.i = load i64, ptr %i.aw, align 8, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.bc = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !4
  %i.be = select i1 %i.bb, ptr %i.at, ptr %i.bd, !unpredictable !4
  %i.bf = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !4
  %i.bg = select i1 %i.bc, ptr %i.ba, ptr %i.bf, !unpredictable !4
  %.val.i38.i = load i64, ptr %i.bg, align 8, !alias.scope !62, !noalias !65, !noundef !4 ; 2 uses
  %.val1.i39.i = load i64, ptr %i.be, align 8, !alias.scope !67, !noalias !68, !noundef !4 ; 2 uses
  %i.bh = tail call i64 @llvm.umin.i64(i64 %.val4.i34.i, i64 %.val5.i35.i)
  store i64 %i.bh, ptr %i.am, align 8, !alias.scope !53, !noalias !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bj = tail call i64 @llvm.umin.i64(i64 %.val.i38.i, i64 %.val1.i39.i)
  store i64 %i.bj, ptr %i.bi, align 8, !alias.scope !53, !noalias !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bl = tail call i64 @llvm.umax.i64(i64 %.val.i38.i, i64 %.val1.i39.i)
  store i64 %i.bl, ptr %i.bk, align 8, !alias.scope !53, !noalias !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.bn = tail call i64 @llvm.umax.i64(i64 %.val2.i36.i, i64 %.val3.i37.i)
  store i64 %i.bn, ptr %i.bm, align 8, !alias.scope !53, !noalias !50
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %0, align 8, !alias.scope !50, !noalias !53
  store i64 %i.bo, ptr %i.a, align 8, !alias.scope !53, !noalias !50
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !50, !noalias !53
  store i64 %i.br, ptr %i.bq, align 8, !alias.scope !53, !noalias !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i, %bb.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i
  %.idx37 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx37 ; 3 uses
  %i.bz = load i64, ptr %i.bx, align 8, !alias.scope !50, !noalias !53 ; 4 uses
  store i64 %i.bz, ptr %i.by, align 8, !alias.scope !53, !noalias !50
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 2 uses
  %.val10.i.1.i = load i64, ptr %i.ca, align 8, !alias.scope !69, !noalias !72, !noundef !4 ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %.val10.i.1.i
  br i1 %i.cb, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i64 %.val10.i.1.i, ptr %i.by, align 8, !alias.scope !53, !noalias !50
  %i.cc = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cc, label %._crit_edge34, label %.lr.ph33

.preheader.1.i:                                   ; preds = %.lr.ph33
  store i64 %.val8.i48.1.i, ptr %.sroa.0.0.i47.1.i32, align 8, !alias.scope !53, !noalias !50
  %i.cd = icmp eq ptr %i.ce, %i.bv
  br i1 %i.cd, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i47.1.i32 = phi ptr [ %i.ce, %.preheader.1.i ], [ %i.ca, %.preheader.1.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i47.1.i32, i64 -8 ; 3 uses
  %.val8.i48.1.i = load i64, ptr %i.ce, align 8, !alias.scope !69, !noalias !72, !noundef !4 ; 2 uses
  %i.cf = icmp ult i64 %i.bz, %.val8.i48.1.i
  br i1 %i.cf, label %.preheader.1.i, label %._crit_edge34

._crit_edge34:                                    ; preds = %.preheader.1.i, %.lr.ph33, %.preheader.1.i.preheader
  %.sroa.0.0.i47.lcssa.1.i = phi ptr [ %i.bv, %.preheader.1.i.preheader ], [ %i.bv, %.preheader.1.i ], [ %.sroa.0.0.i47.1.i32, %.lr.ph33 ]
  store i64 %i.bz, ptr %.sroa.0.0.i47.lcssa.1.i, align 8, !alias.scope !53, !noalias !74
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.cg = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cg, %i.bs
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ch = add nsw i64 %1, -1                      ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.bv, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cl = getelementptr i8, ptr %i.cu, i64 8      ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ct, i64 8
  %3 = and i64 %1, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.cn, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.012.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.bv, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.ck, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.cj, %.loopexit.1.i ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.ci, %.loopexit.1.i ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.011.i.i, align 8, !alias.scope !82, !noalias !85, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.012.i.i, align 8, !alias.scope !87, !noalias !88, !noundef !4 ; 2 uses
  %.not = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 2 uses
  %i.co = call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.i, i64 %.sroa.06.0.val.i.i)
  store i64 %i.co, ptr %.sroa.0.014.i.i, align 8, !alias.scope !50, !noalias !89
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.011.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.09.i.i, align 8, !alias.scope !82, !noalias !85, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.010.i.i, align 8, !alias.scope !87, !noalias !88, !noundef !4 ; 2 uses
  %i.cq = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 2 uses
  %i.cr = xor i1 %i.cq, true
  %i.cs = call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.i, i64 %.sroa.015.0.val.i.i)
  store i64 %i.cs, ptr %.sroa.019.08.i.i, align 8, !alias.scope !50, !noalias !93
  %.neg.i.i.i = sext i1 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.cq to i64
  %i.cu = getelementptr [8 x i8], ptr %.sroa.015.010.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.cn, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not25 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cl ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not25, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.cw = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !97, !noalias !50
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !50, !noalias !97
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not25, i64 8, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not25, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.cx = icmp ne ptr %.sroa.06.1.i.i, %i.cl
  %i.cy = icmp ne ptr %.sroa.011.1.i.i, %i.cm
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.cy, !prof !21
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, !prof !21

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc.i unwind label %bb.m, !noalias !98

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.da, i1 false), !alias.scope !98, !noalias !99
  resume { ptr, i32 } %i.cz

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.dd = load i64, ptr %i.db, align 8, !alias.scope !50, !noalias !53 ; 4 uses
  store i64 %i.dd, ptr %i.dc, align 8, !alias.scope !53, !noalias !50
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %.val10.i.i = load i64, ptr %i.de, align 8, !alias.scope !69, !noalias !72, !noundef !4 ; 2 uses
  %i.df = icmp ult i64 %i.dd, %.val10.i.i
  br i1 %i.df, label %.preheader.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i64 %.val10.i.i, ptr %i.dc, align 8, !alias.scope !53, !noalias !50
  %i.dg = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  store i64 %.val8.i48.i, ptr %.sroa.0.0.i47.i30, align 8, !alias.scope !53, !noalias !50
  %i.dh = icmp eq ptr %i.di, %i.a
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i47.i30 = phi ptr [ %i.di, %.preheader.i ], [ %i.de, %.preheader.i.preheader ] ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i30, i64 -8 ; 3 uses
  %.val8.i48.i = load i64, ptr %i.di, align 8, !alias.scope !69, !noalias !72, !noundef !4 ; 2 uses
  %i.dj = icmp ult i64 %i.dd, %.val8.i48.i
  br i1 %i.dj, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i47.i30, %.lr.ph ]
  store i64 %i.dd, ptr %.sroa.0.0.i47.lcssa.i, align 8, !alias.scope !53, !noalias !74
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dk = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 4 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ] ; 31 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 2 uses
  %.val.i.i = load i64, ptr %i.j, align 8, !alias.scope !104, !noalias !109, !noundef !4 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.02.0, align 8, !alias.scope !111, !noalias !112, !noundef !4 ; 2 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %.val.i.i, i64 %.val1.i.i) ; 2 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %.val.i.i, i64 %.val1.i.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 2 uses
  %.val.i1.i = load i64, ptr %i.n, align 8, !alias.scope !113, !noalias !116, !noundef !4 ; 2 uses
  %.val1.i2.i = load i64, ptr %i.m, align 8, !alias.scope !118, !noalias !119, !noundef !4 ; 2 uses
  %i.o = tail call i64 @llvm.umax.i64(i64 %.val.i1.i, i64 %.val1.i2.i) ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.val.i1.i, i64 %.val1.i2.i) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 72 ; 2 uses
  %.val.i3.i = load i64, ptr %i.r, align 8, !alias.scope !120, !noalias !123, !noundef !4 ; 2 uses
  %.val1.i4.i = load i64, ptr %i.q, align 8, !alias.scope !125, !noalias !126, !noundef !4 ; 2 uses
  %i.s = tail call i64 @llvm.umax.i64(i64 %.val.i3.i, i64 %.val1.i4.i) ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %.val.i3.i, i64 %.val1.i4.i) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 2 uses
  %.val.i5.i = load i64, ptr %i.v, align 8, !alias.scope !127, !noalias !130, !noundef !4 ; 2 uses
  %.val1.i6.i = load i64, ptr %i.u, align 8, !alias.scope !132, !noalias !133, !noundef !4 ; 2 uses
  %i.w = tail call i64 @llvm.umax.i64(i64 %.val.i5.i, i64 %.val1.i6.i) ; 2 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 %.val.i5.i, i64 %.val1.i6.i) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 88 ; 2 uses
  %.val.i7.i = load i64, ptr %i.z, align 8, !alias.scope !134, !noalias !137, !noundef !4 ; 2 uses
  %.val1.i8.i = load i64, ptr %i.y, align 8, !alias.scope !139, !noalias !140, !noundef !4 ; 2 uses
  %i.aa = tail call i64 @llvm.umax.i64(i64 %.val.i7.i, i64 %.val1.i8.i) ; 2 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.val.i7.i, i64 %.val1.i8.i) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 2 uses
  %.val.i9.i = load i64, ptr %i.ad, align 8, !alias.scope !141, !noalias !144, !noundef !4 ; 2 uses
  %.val1.i10.i = load i64, ptr %i.ac, align 8, !alias.scope !146, !noalias !147, !noundef !4 ; 2 uses
  %i.ae = tail call i64 @llvm.umax.i64(i64 %.val.i9.i, i64 %.val1.i10.i) ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.val.i9.i, i64 %.val1.i10.i) ; 2 uses
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.p) ; 2 uses
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.p) ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.t) ; 2 uses
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.t) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 2 uses
  %.val1.i16.i = load i64, ptr %i.ak, align 8, !alias.scope !148, !noalias !151, !noundef !4 ; 2 uses
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %.val1.i16.i) ; 2 uses
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val1.i16.i) ; 2 uses
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.w) ; 2 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.w) ; 2 uses
  %i.ap = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.ae) ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.ae) ; 2 uses
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.l) ; 2 uses
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.l) ; 2 uses
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ah) ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ah) ; 2 uses
  %i.av = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ai) ; 2 uses
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai) ; 2 uses
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ao) ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_networkyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft:bb.a
  %i.bx = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.at) ; 2 uses
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.at) ; 2 uses
  %i.bz = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bs) ; 2 uses
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bs) ; 2 uses
  %i.cb = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bp) ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bp) ; 2 uses
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %i.bt)
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bt) ; 2 uses
  store i64 %i.cd, ptr %i.z, align 8, !alias.scope !153
  %i.cf = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bv) ; 2 uses
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bv) ; 2 uses
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.by) ; 2 uses
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.by) ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.bx) ; 2 uses
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bx) ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.bz)
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.bz) ; 2 uses
  store i64 %i.cl, ptr %i.n, align 8, !alias.scope !153
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cg) ; 2 uses
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cg)
  store i64 %i.co, ptr %i.m, align 8, !alias.scope !153
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %i.cf) ; 2 uses
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cf) ; 2 uses
  %i.cr = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.ck) ; 2 uses
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ck) ; 2 uses
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.cj) ; 2 uses
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cj) ; 2 uses
  %i.cv = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cn) ; 2 uses
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cn)
  store i64 %i.cw, ptr %i.q, align 8, !alias.scope !153
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cp) ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cp) ; 2 uses
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cu)
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.cu) ; 2 uses
  store i64 %i.cz, ptr %i.v, align 8, !alias.scope !153
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.ct)
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.ct)
  store i64 %i.dc, ptr %i.ad, align 8, !alias.scope !153
  store i64 %i.db, ptr %i.r, align 8, !alias.scope !153
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.cv)
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cv)
  store i64 %i.de, ptr %i.u, align 8, !alias.scope !153
  store i64 %i.dd, ptr %i.ak, align 8, !alias.scope !153
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cx)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx)
  store i64 %i.dg, ptr %i.y, align 8, !alias.scope !153
  store i64 %i.df, ptr %i.ac, align 8, !alias.scope !153
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 2 uses
  %.val.i.i14 = load i64, ptr %i.dh, align 8, !alias.scope !154, !noalias !159, !noundef !4 ; 2 uses
  %.val1.i.i15 = load i64, ptr %.sroa.02.0, align 8, !alias.scope !161, !noalias !162, !noundef !4 ; 2 uses
  %i.di = tail call i64 @llvm.umax.i64(i64 %.val.i.i14, i64 %.val1.i.i15) ; 2 uses
  %i.dj = tail call i64 @llvm.umin.i64(i64 %.val.i.i14, i64 %.val1.i.i15) ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 2 uses
  %.val.i1.i16 = load i64, ptr %i.dl, align 8, !alias.scope !163, !noalias !166, !noundef !4 ; 2 uses
  %.val1.i2.i17 = load i64, ptr %i.dk, align 8, !alias.scope !168, !noalias !169, !noundef !4 ; 2 uses
  %i.dm = tail call i64 @llvm.umax.i64(i64 %.val.i1.i16, i64 %.val1.i2.i17) ; 2 uses
  %i.dn = tail call i64 @llvm.umin.i64(i64 %.val.i1.i16, i64 %.val1.i2.i17) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 2 uses
  %.val.i3.i18 = load i64, ptr %i.dp, align 8, !alias.scope !170, !noalias !173, !noundef !4 ; 2 uses
  %.val1.i4.i19 = load i64, ptr %i.do, align 8, !alias.scope !175, !noalias !176, !noundef !4 ; 2 uses
  %i.dq = tail call i64 @llvm.umax.i64(i64 %.val.i3.i18, i64 %.val1.i4.i19) ; 2 uses
  %i.dr = tail call i64 @llvm.umin.i64(i64 %.val.i3.i18, i64 %.val1.i4.i19) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 2 uses
  %.val.i5.i20 = load i64, ptr %i.dt, align 8, !alias.scope !177, !noalias !180, !noundef !4 ; 2 uses
  %.val1.i6.i21 = load i64, ptr %i.ds, align 8, !alias.scope !182, !noalias !183, !noundef !4 ; 2 uses
  %i.du = tail call i64 @llvm.umax.i64(i64 %.val.i5.i20, i64 %.val1.i6.i21) ; 2 uses
  %i.dv = tail call i64 @llvm.umin.i64(i64 %.val.i5.i20, i64 %.val1.i6.i21) ; 2 uses
  %i.dw = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dj) ; 2 uses
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dj) ; 2 uses
  %i.dy = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dr) ; 2 uses
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dr) ; 2 uses
  %i.ea = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.di) ; 2 uses
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.du, i64 %i.di) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 2 uses
  %.val.i13.i = load i64, ptr %i.ec, align 8, !alias.scope !184, !noalias !187, !noundef !4 ; 2 uses
  %i.ed = tail call i64 @llvm.umax.i64(i64 %.val.i13.i, i64 %i.dq) ; 2 uses
  %i.ee = tail call i64 @llvm.umin.i64(i64 %.val.i13.i, i64 %i.dq) ; 2 uses
  %i.ef = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.dx) ; 2 uses
  %i.eg = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dx) ; 2 uses
  %i.eh = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 %i.dn) ; 2 uses
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.dn) ; 2 uses
  %i.ej = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 %i.dy) ; 2 uses
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.dy) ; 2 uses
  %i.el = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.dw) ; 2 uses
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.ei) ; 2 uses
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.ei) ; 2 uses
  %i.ep = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.eh) ; 2 uses
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.eh) ; 2 uses
  %i.er = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.ej) ; 2 uses
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.em, i64 %i.ej) ; 2 uses
  %i.et = tail call i64 @llvm.umax.i64(i64 %i.eo, i64 %i.eg) ; 2 uses
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %i.eg)
  store i64 %i.eu, ptr %.sroa.02.0, align 8, !alias.scope !189
  %i.ev = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.ef) ; 2 uses
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.en, i64 %i.ef) ; 2 uses
  %i.ex = tail call i64 @llvm.umax.i64(i64 %i.es, i64 %i.eq) ; 2 uses
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %i.eq) ; 2 uses
  %i.ez = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ep)
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ep) ; 2 uses
  store i64 %i.ez, ptr %i.dt, align 8, !alias.scope !189
  %i.fb = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ew) ; 2 uses
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ew) ; 2 uses
  %i.fd = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.ev) ; 2 uses
  %i.fe = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ev) ; 2 uses
  %i.ff = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fa)
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.er, i64 %i.fa) ; 2 uses
  store i64 %i.ff, ptr %i.dl, align 8, !alias.scope !189
  %i.fh = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.et)
  %i.fi = tail call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.et)
  store i64 %i.fi, ptr %i.dk, align 8, !alias.scope !189
  store i64 %i.fh, ptr %i.do, align 8, !alias.scope !189
  %i.fj = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.fb)
  %i.fk = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fb)
  store i64 %i.fk, ptr %i.dh, align 8, !alias.scope !189
  store i64 %i.fj, ptr %i.ds, align 8, !alias.scope !189
  %i.fl = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.fd)
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %i.fd)
  store i64 %i.fm, ptr %i.dp, align 8, !alias.scope !189
  store i64 %i.fl, ptr %i.ec, align 8, !alias.scope !189
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.01.0 = phi i64 [ 13, %bb.g ], [ 9, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.fn = add nsw i64 %.sroa.01.0, -1
  %or.cond.not.i = icmp ult i64 %i.fn, %.sroa.8.0
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.fw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i ], [ %i.fp, %.lr.ph.preheader.i ] ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 3 uses
  %.val9.i.i = load i64, ptr %.sroa.0.05.i, align 8, !alias.scope !190, !noalias !195, !noundef !4 ; 3 uses
  %.val10.i.i = load i64, ptr %i.fq, align 8, !alias.scope !197, !noalias !198, !noundef !4 ; 2 uses
  %i.fr = icmp ult i64 %.val9.i.i, %.val10.i.i
  br i1 %i.fr, label %.preheader.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i64 %.val10.i.i, ptr %.sroa.0.05.i, align 8, !alias.scope !199
  %i.fs = icmp eq ptr %i.fq, %.sroa.02.0
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  store i64 %.val8.i.i, ptr %.sroa.0.0.i.i42, align 8, !alias.scope !199
  %i.ft = icmp eq ptr %i.fu, %.sroa.02.0
  br i1 %i.ft, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i42 = phi ptr [ %i.fu, %.preheader.i ], [ %i.fq, %.preheader.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i42, i64 -8 ; 3 uses
  %.val8.i.i = load i64, ptr %i.fu, align 8, !alias.scope !197, !noalias !198, !noundef !4 ; 2 uses
  %i.fv = icmp ult i64 %.val9.i.i, %.val8.i.i
  br i1 %i.fv, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %.preheader.i.preheader ], [ %.sroa.02.0, %.preheader.i ], [ %.sroa.0.0.i.i42, %.lr.ph ]
  store i64 %.val9.i.i, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !199, !noalias !200
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, %i.fo
  br i1 %.not.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit.i, %bb.k
  br i1 %i.e, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.fx = add nsw i64 %1, -1                      ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.f, i64 -8
  br label %.lr.ph.i23

._crit_edge.i:                                    ; preds = %.lr.ph.i23
  %i.gb = getelementptr i8, ptr %i.gq, i64 8      ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gp, i64 8
  %3 = and i64 %1, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.o, label %bb.n

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %bb.m
  %.sroa.0.014.i = phi ptr [ %i.gl, %.lr.ph.i23 ], [ %i.a, %bb.m ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.gd, %.lr.ph.i23 ], [ 0, %bb.m ]
  %.sroa.06.012.i = phi ptr [ %i.gk, %.lr.ph.i23 ], [ %0, %bb.m ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.gi, %.lr.ph.i23 ], [ %i.f, %bb.m ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.gq, %.lr.ph.i23 ], [ %i.ga, %bb.m ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.gp, %.lr.ph.i23 ], [ %i.fz, %bb.m ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.gr, %.lr.ph.i23 ], [ %i.fy, %bb.m ] ; 2 uses
  %i.gd = add nuw nsw i64 %.sroa.04.013.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.011.i, align 8, !alias.scope !208, !noalias !211, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.012.i, align 8, !alias.scope !213, !noalias !214, !noundef !4 ; 2 uses
  %i.ge = icmp ult i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 2 uses
  %i.gf = xor i1 %i.ge, true
  %i.gg = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i, i64 %.sroa.06.0.val.i)
  store i64 %i.gg, ptr %.sroa.0.014.i, align 8, !noalias !215
  %i.gh = zext i1 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i, i64 %i.gh ; 4 uses
  %i.gj = zext i1 %i.gf to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i, i64 %i.gj ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.09.i, align 8, !alias.scope !208, !noalias !211, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.010.i, align 8, !alias.scope !213, !noalias !214, !noundef !4 ; 2 uses
  %i.gm = icmp ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 2 uses
  %i.gn = xor i1 %i.gm, true
  %i.go = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i, i64 %.sroa.015.0.val.i)
  store i64 %i.go, ptr %.sroa.019.08.i, align 8, !noalias !219
  %.neg.i.i = sext i1 %i.gn to i64
  %i.gp = getelementptr [8 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.gm to i64
  %i.gq = getelementptr [8 x i8], ptr %.sroa.015.010.i, i64 %.neg13.i.i ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.gd, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i23

bb.n:                                             ; preds = %._crit_edge.i
  %i.gs = icmp ult ptr %i.gk, %i.gb               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gs, ptr %i.gk, ptr %i.gi
  %i.gt = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !alias.scope !205
  store i64 %i.gt, ptr %i.gl, align 8, !noalias !205
  %i.gu = zext i1 %i.gs to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gu
  %i.gw = xor i1 %i.gs, true
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gx
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.gi, %._crit_edge.i ], [ %i.gy, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.gk, %._crit_edge.i ], [ %i.gv, %bb.n ]
  %i.gz = icmp ne ptr %.sroa.06.1.i, %i.gb
  %i.ha = icmp ne ptr %.sroa.011.1.i, %i.gc
  %or.cond.i = select i1 %i.gz, i1 true, i1 %i.ha, !prof !21
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11, !noalias !205
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.o
  %i.hb = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.hb, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvMB1o_INtB1o_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB3m_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit
  %.sroa.0.05 = phi ptr [ %i.o, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit ], [ %i.c, %.lr.ph.preheader ] ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 8, !range !223, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 16
  %.val12.i = load i64, ptr %i.e, align 8         ; 2 uses
  %.val13.i = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val14.i = load i64, ptr %i.f, align 8
  %.not.i.i.i = icmp eq i64 %.val11.i, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %.val12.i ; 2 uses
  %.not7.i.i.i = icmp ne i64 %.val13.i, -1
  %i.g = icmp ugt i64 %.val14.i, %spec.select.i.i.i
  %i.h = select i1 %.not7.i.i.i, i1 %i.g, i1 false
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit

bb.d:                                             ; preds = %.lr.ph
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %.sroa.414.0.copyload.i = load i64, ptr %.sroa.414.0..sroa_idx.i, align 8
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  %.sroa.616.0.copyload.i = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.k, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val9.i = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.sroa.0.0.i8, i64 -16
  %.val10.i = load i64, ptr %i.l, align 8
  %.not7.i.i17.i = icmp ne i64 %.val9.i, -1
  %i.m = icmp ugt i64 %.val10.i, %spec.select.i.i.i
  %i.n = select i1 %.not7.i.i17.i, i1 %i.m, i1 false
  br i1 %i.n, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 4 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !224
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.sroa.414.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !224
  %.sroa.57.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i64 %.val12.i, ptr %.sroa.57.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !224
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 24
  store i64 %.sroa.616.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !224
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMB1a_INtB1a_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB38_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCINvMs_NtB1o_8majorityNtB2P_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1q_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit
  %.sroa.0.05 = phi ptr [ %i.l, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = icmp ult i64 %.val10.i, %.val9.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.h = icmp eq ptr %i.d, %0
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.i = icmp eq ptr %i.j, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.j, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val8.i = load i64, ptr %i.j, align 8, !noundef !4
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft:bb.a
_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailyNvYyNtNtBa_3cmp10PartialOrd2ltECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCINvMs_NtB1u_8majorityNtB2V_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1w_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCINvMs_NtB1i_8majorityNtB2J_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1k_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
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
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_7sort_byNCINvMs_NtB1b_8majorityNtB2C_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1d_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1d_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_7sort_byNCINvMs_NtB1b_8majorityNtB2C_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1d_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1d_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i = load i64, ptr %i.k, align 8, !noundef !4
  %.val9.i = load i64, ptr %0, align 8, !noundef !4
  %i.l = icmp ult i64 %.val9.i, %.val8.i          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load i64, ptr %i.m, align 8, !noundef !4
  %.val7.i = load i64, ptr %i.n, align 8, !noundef !4
  %i.o = icmp ult i64 %.val7.i, %.val6.i          ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i = load i64, ptr %i.v, align 8, !noundef !4
  %.val5.i = load i64, ptr %i.q, align 8, !noundef !4
  %i.y = icmp ult i64 %.val5.i, %.val4.i          ; 3 uses
  %.val2.i = load i64, ptr %i.x, align 8, !noundef !4
  %.val3.i = load i64, ptr %i.t, align 8, !noundef !4
  %i.z = icmp ult i64 %.val3.i, %.val2.i          ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i = load i64, ptr %i.af, align 8, !noundef !4
  %.val1.i = load i64, ptr %i.ad, align 8, !noundef !4
  %i.ag = icmp ult i64 %.val1.i, %.val.i          ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val8.i30 = load i64, ptr %i.ao, align 8, !noundef !4
  %.val9.i31 = load i64, ptr %i.am, align 8, !noundef !4
  %i.ap = icmp ult i64 %.val9.i31, %.val8.i30     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.val6.i32 = load i64, ptr %i.aq, align 8, !noundef !4
  %.val7.i33 = load i64, ptr %i.ar, align 8, !noundef !4
  %i.as = icmp ult i64 %.val7.i33, %.val6.i32     ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34 = load i64, ptr %i.az, align 8, !noundef !4
  %.val5.i35 = load i64, ptr %i.au, align 8, !noundef !4
  %i.bc = icmp ult i64 %.val5.i35, %.val4.i34     ; 3 uses
  %.val2.i36 = load i64, ptr %i.bb, align 8, !noundef !4
  %.val3.i37 = load i64, ptr %i.ax, align 8, !noundef !4
  %i.bd = icmp ult i64 %.val3.i37, %.val2.i36     ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !4
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !4
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !4
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !4 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !4
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !4 ; 3 uses
  %.val.i38 = load i64, ptr %i.bj, align 8, !noundef !4
  %.val1.i39 = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bk = icmp ult i64 %.val1.i39, %.val.i38      ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bt, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit, %bb.i
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [16 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0, %i.bs
  br i1 %i.bw, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1
  %.sroa.05.050.1 = phi i64 [ %i.ch, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.sroa.05.050.1
  %.idx82 = shl nuw nsw i64 %.sroa.05.050.1, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx82 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -16 ; 3 uses
  %.val9.i40.1 = load i64, ptr %i.by, align 8, !noundef !4 ; 3 uses
  %.val10.i.1 = load i64, ptr %i.bz, align 8, !noundef !4
  %i.ca = icmp ult i64 %.val10.i.1, %.val9.i40.1
  br i1 %i.ca, label %bb.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1

bb.j:                                             ; preds = %.lr.ph.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.cd = icmp eq i64 %.sroa.05.050.1, 1
  br i1 %i.cd, label %._crit_edge78, label %.lr.ph77

bb.k:                                             ; preds = %.lr.ph77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.175, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.ce = icmp eq ptr %i.cf, %i.bv
  br i1 %i.ce, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i41.175 = phi ptr [ %i.cf, %bb.k ], [ %i.bz, %bb.j ] ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i41.175, i64 -16 ; 4 uses
  %.val8.i42.1 = load i64, ptr %i.cf, align 8, !noundef !4
  %i.cg = icmp ult i64 %.val8.i42.1, %.val9.i40.1
  br i1 %i.cg, label %bb.k, label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.k, %.lr.ph77, %bb.j
  %.sroa.0.0.i41.lcssa.1 = phi ptr [ %i.bv, %bb.j ], [ %i.bv, %bb.k ], [ %.sroa.0.0.i41.175, %.lr.ph77 ] ; 2 uses
  store i64 %.val9.i40.1, ptr %.sroa.0.0.i41.lcssa.1, align 8, !noalias !244
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1, i64 8
  store i64 %i.cc, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !244
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1: ; preds = %._crit_edge78, %.lr.ph.1
  %i.ch = add nuw nsw i64 %.sroa.05.050.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ch, %i.bs
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit.1, %.loopexit
  %i.ci = add nsw i64 %1, -1                      ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.bv, i64 -16
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cm = getelementptr i8, ptr %i.cz, i64 16     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cy, i64 16
  %5 = and i64 %1, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb.m, label %bb.l

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.co, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %i.bv, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %i.cl, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %i.ck, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.da, %.lr.ph.i ], [ %i.cj, %.loopexit.1 ] ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i64, ptr %.sroa.011.07.i, align 8, !alias.scope !249, !noundef !4
  %.sroa.06.0.val.i = load i64, ptr %.sroa.06.08.i, align 8, !alias.scope !249, !noundef !4
  %i.cp = icmp ult i64 %.sroa.06.0.val.i, %.sroa.011.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cp, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cq = xor i1 %i.cp, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !252
  %i.cr = zext i1 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i, i64 %i.cr ; 4 uses
  %i.ct = zext i1 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i, i64 %i.ct ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16 ; 2 uses
  %.sroa.017.0.val.i = load i64, ptr %.sroa.017.05.i, align 8, !alias.scope !249, !noundef !4
  %.sroa.015.0.val.i = load i64, ptr %.sroa.015.06.i, align 8, !alias.scope !249, !noundef !4
  %i.cw = icmp ult i64 %.sroa.015.0.val.i, %.sroa.017.0.val.i ; 3 uses
  %..i.i = select i1 %i.cw, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.cx = xor i1 %i.cw, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !256
  %.neg.i.i = sext i1 %i.cx to i64
  %i.cy = getelementptr [16 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cw to i64
  %i.cz = getelementptr [16 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -16
  %exitcond.not.i = icmp eq i64 %i.co, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.db = icmp ult ptr %i.cu, %i.cm               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.db, ptr %i.cu, ptr %i.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i, i64 16, i1 false)
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.dc
  %i.de = xor i1 %i.db, true
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.df
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.cs, %._crit_edge.i ], [ %i.dg, %bb.l ]
  %.sroa.06.1.i = phi ptr [ %i.cu, %._crit_edge.i ], [ %i.dd, %bb.l ]
  %i.dh = icmp ne ptr %.sroa.06.1.i, %i.cm
  %i.di = icmp ne ptr %.sroa.011.1.i, %i.cn
  %or.cond.i = select i1 %i.dh, i1 true, i1 %i.di, !prof !21
  br i1 %or.cond.i, label %bb.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCINvMs_NtB1i_8majorityNtB2J_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1k_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1k_.exit, !prof !21

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #11
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = shl nuw nsw i64 %1, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dk, i1 false), !noalias !260
  resume { ptr, i32 } %i.dj

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCINvMs_NtB1i_8majorityNtB2J_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1k_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1k_.exit: ; preds = %bb.m, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit
  %.sroa.05.050 = phi i64 [ %i.dv, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.050
  %.idx = shl nuw nsw i64 %.sroa.05.050, 4
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -16 ; 3 uses
  %.val9.i40 = load i64, ptr %i.dm, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.dn, align 8, !noundef !4
  %i.do = icmp ult i64 %.val10.i, %.val9.i40
  br i1 %i.do, label %bb.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit

bb.p:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false)
  %i.dr = icmp eq i64 %.sroa.05.050, 1
  br i1 %i.dr, label %._crit_edge, label %.lr.ph72

bb.q:                                             ; preds = %.lr.ph72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i4171, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false)
  %i.ds = icmp eq ptr %i.dt, %2
  br i1 %i.ds, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.p, %bb.q
  %.sroa.0.0.i4171 = phi ptr [ %i.dt, %bb.q ], [ %i.dn, %bb.p ] ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.0.i4171, i64 -16 ; 4 uses
  %.val8.i42 = load i64, ptr %i.dt, align 8, !noundef !4
  %i.du = icmp ult i64 %.val8.i42, %.val9.i40
  br i1 %i.du, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.lr.ph72, %bb.p
  %.sroa.0.0.i41.lcssa = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i4171, %.lr.ph72 ] ; 2 uses
  store i64 %.val9.i40, ptr %.sroa.0.0.i41.lcssa, align 8, !noalias !244
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa, i64 8
  store i64 %i.dq, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !244
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvMs_NtB1a_8majorityNtB2B_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1c_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1c_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dv = add nuw nsw i64 %.sroa.05.050, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMs_NtBZ_8majorityNtB2p_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB11_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.s, %.preheader ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.q, %.preheader ], [ %i.e, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %.val.i = load i64, ptr %i.l, align 8, !noalias !265, !noundef !4
  %.val12.i = load i64, ptr %i.k, align 8, !noalias !265, !noundef !4
  %i.n = icmp ult i64 %.val12.i, %.val.i          ; 3 uses
  %..i17 = select i1 %i.n, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %..i17, i64 16, i1 false), !noalias !265
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.p ; 3 uses
  %i.r = zext i1 %i.n to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = icmp eq ptr %i.q, %0
  %i.u = icmp eq ptr %i.s, %2
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMs_NtB1c_8majorityNtB2Q_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1e_7tracker8progress8ProgressINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1e_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.v = phi ptr [ %i.ad, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.w = phi ptr [ %i.aa, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !268, !noundef !4
  %.val.i19 = load i64, ptr %i.w, align 8, !noalias !268, !noundef !4
  %i.x = icmp ult i64 %.val.i19, %.sroa.0.0.val.i ; 3 uses
  %i.y = xor i1 %i.x, true
  %.sroa.05.0.i = select i1 %i.x, ptr %.sroa.0.02.i, ptr %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !268
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.z ; 3 uses
  %i.ab = zext i1 %i.x to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ae = icmp ne ptr %i.aa, %i.h
  %i.af = icmp ne ptr %i.ac, %i.f
  %or.cond.i20 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMs_NtB1c_8majorityNtB2Q_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1e_7tracker8progress8ProgressINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1e_.exit

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMs_NtB1c_8majorityNtB2Q_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1e_7tracker8progress8ProgressINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1e_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.q, %.preheader ], [ %i.ad, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.s, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.7.0 to i64
  %i.ah = ptrtoint ptr %.sroa.0.0 to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ai, i1 false), !noalias !271
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsfG1pxJcRFT5_4raft6quorum5IndexE10merge_downNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1a_7sort_byNCINvMs_NtB1c_8majorityNtB2Q_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1e_7tracker8progress8ProgressINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsfG1pxJcRFT5_4raft6quorum5jointNtB2_13Configuration13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtCsfG1pxJcRFT5_4raft6quorum8majorityNtB4_13Configuration13with_capacity(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_2
