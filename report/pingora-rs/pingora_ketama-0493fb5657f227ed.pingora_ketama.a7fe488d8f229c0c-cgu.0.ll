Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_ketama-0493fb5657f227ed.pingora_ketama.a7fe488d8f229c0c-cgu.0?download=true
inline.NumInlined: 181
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i44 = alloca i64, align 8            ; 5 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %._crit_edge170, label %.lr.ph169

bb.b:                                             ; preds = %.backedge
  %i.d = icmp eq i32 %i.ez, 0
  br i1 %i.d, label %._crit_edge170, label %.lr.ph169

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.e = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.f = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.g = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noundef nonnull align 4 %.sroa.0.0.lcssa, ptr noundef nonnull align 4 %i.a, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB19_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 12
  %.val8.i.i.i = load i32, ptr %i.m, align 4, !alias.scope !116, !noundef !4
  %i.n = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 4
  %.val9.i.i.i = load i32, ptr %i.n, align 4, !alias.scope !116, !noundef !4
  %i.o = icmp ult i32 %.val8.i.i.i, %.val9.i.i.i  ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 28
  %.val6.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !116, !noundef !4
  %i.q = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 20
  %.val7.i.i.i = load i32, ptr %i.q, align 4, !alias.scope !116, !noundef !4
  %i.r = icmp ult i32 %.val6.i.i.i, %.val7.i.i.i  ; 2 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.s ; 3 uses
  %i.u = xor i1 %i.o, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.x ; 4 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.val4.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !116, !noundef !4
  %i.ac = getelementptr i8, ptr %i.t, i64 4
  %.val5.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !116, !noundef !4
  %i.ad = icmp ult i32 %.val4.i.i.i, %.val5.i.i.i ; 3 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 4
  %.val2.i.i.i = load i32, ptr %i.ae, align 4, !alias.scope !116, !noundef !4
  %i.af = getelementptr i8, ptr %i.w, i64 4
  %.val3.i.i.i = load i32, ptr %i.af, align 4, !alias.scope !116, !noundef !4
  %i.ag = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i ; 3 uses
  %i.ah = select i1 %i.ad, ptr %i.y, ptr %i.t, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.w, ptr %i.aa, !unpredictable !4
  %i.aj = select i1 %i.ag, ptr %i.y, ptr %i.w, !unpredictable !4
  %i.ak = select i1 %i.ad, ptr %i.t, ptr %i.aj, !unpredictable !4 ; 3 uses
  %i.al = select i1 %i.ad, ptr %i.w, ptr %i.y, !unpredictable !4
  %i.am = select i1 %i.ag, ptr %i.aa, ptr %i.al, !unpredictable !4 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val.i.i.i = load i32, ptr %i.an, align 4, !alias.scope !116, !noundef !4
  %i.ao = getelementptr i8, ptr %i.ak, i64 4
  %.val1.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !116, !noundef !4
  %i.ap = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.aq = select i1 %i.ap, ptr %i.am, ptr %i.ak, !unpredictable !4
  %i.ar = select i1 %i.ap, ptr %i.ak, ptr %i.am, !unpredictable !4
  %i.as = load i64, ptr %i.ah, align 4, !alias.scope !116
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !115, !noalias !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load i64, ptr %i.aq, align 4, !alias.scope !116
  store i64 %i.au, ptr %i.at, align 8, !alias.scope !115, !noalias !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.ar, align 4, !alias.scope !116
  store i64 %i.aw, ptr %i.av, align 8, !alias.scope !115, !noalias !113
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load i64, ptr %i.ai, align 4, !alias.scope !116
  store i64 %i.ay, ptr %i.ax, align 8, !alias.scope !115, !noalias !113
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f ; 8 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  %.val8.i30.i.i = load i32, ptr %i.bb, align 4, !alias.scope !116, !noundef !4
  %i.bc = getelementptr i8, ptr %i.az, i64 4
  %.val9.i31.i.i = load i32, ptr %i.bc, align 4, !alias.scope !116, !noundef !4
  %i.bd = icmp ult i32 %.val8.i30.i.i, %.val9.i31.i.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.az, i64 28
  %.val6.i32.i.i = load i32, ptr %i.be, align 4, !alias.scope !116, !noundef !4
  %i.bf = getelementptr i8, ptr %i.az, i64 20
  %.val7.i33.i.i = load i32, ptr %i.bf, align 4, !alias.scope !116, !noundef !4
  %i.bg = icmp ult i32 %.val6.i32.i.i, %.val7.i33.i.i ; 2 uses
  %i.bh = zext i1 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bh ; 3 uses
  %i.bj = xor i1 %i.bd, true
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bk ; 4 uses
  %i.bm = select i1 %i.bg, i64 3, i64 2
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bg, i64 2, i64 3
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 4
  %.val4.i34.i.i = load i32, ptr %i.bq, align 4, !alias.scope !116, !noundef !4
  %i.br = getelementptr i8, ptr %i.bi, i64 4
  %.val5.i35.i.i = load i32, ptr %i.br, align 4, !alias.scope !116, !noundef !4
  %i.bs = icmp ult i32 %.val4.i34.i.i, %.val5.i35.i.i ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 4
  %.val2.i36.i.i = load i32, ptr %i.bt, align 4, !alias.scope !116, !noundef !4
  %i.bu = getelementptr i8, ptr %i.bl, i64 4
  %.val3.i37.i.i = load i32, ptr %i.bu, align 4, !alias.scope !116, !noundef !4
  %i.bv = icmp ult i32 %.val2.i36.i.i, %.val3.i37.i.i ; 3 uses
  %i.bw = select i1 %i.bs, ptr %i.bn, ptr %i.bi, !unpredictable !4
  %i.bx = select i1 %i.bv, ptr %i.bl, ptr %i.bp, !unpredictable !4
  %i.by = select i1 %i.bv, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bz = select i1 %i.bs, ptr %i.bi, ptr %i.by, !unpredictable !4 ; 3 uses
  %i.ca = select i1 %i.bs, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.cb = select i1 %i.bv, ptr %i.bp, ptr %i.ca, !unpredictable !4 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val.i38.i.i = load i32, ptr %i.cc, align 4, !alias.scope !116, !noundef !4
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %.val1.i39.i.i = load i32, ptr %i.cd, align 4, !alias.scope !116, !noundef !4
  %i.ce = icmp ult i32 %.val.i38.i.i, %.val1.i39.i.i ; 2 uses
  %i.cf = select i1 %i.ce, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.cg = select i1 %i.ce, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.ch = load i64, ptr %i.bw, align 4, !alias.scope !116
  store i64 %i.ch, ptr %i.ba, align 8, !alias.scope !115, !noalias !113
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cj = load i64, ptr %i.cf, align 4, !alias.scope !116
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !115, !noalias !113
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cl = load i64, ptr %i.cg, align 4, !alias.scope !116
  store i64 %i.cl, ptr %i.ck, align 8, !alias.scope !115, !noalias !113
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cn = load i64, ptr %i.bx, align 4, !alias.scope !116
  store i64 %i.cn, ptr %i.cm, align 8, !alias.scope !115, !noalias !113
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.co = load i64, ptr %.sroa.0.0.lcssa, align 4, !alias.scope !116
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !115, !noalias !113
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.cr = load i64, ptr %i.cp, align 4, !alias.scope !116
  store i64 %i.cr, ptr %i.cq, align 8, !alias.scope !115, !noalias !113
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.e ], [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cs = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.f ; 2 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i.i, %i.f
  br i1 %i.ct, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i, %bb.h
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.f
  %i.cv = getelementptr [8 x i8], ptr %i.a, i64 %i.f ; 6 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i.i, %i.cs
  br i1 %i.cw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.loopexit.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i
  %.sroa.05.08.1.i.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i ], [ %.sroa.0.0.i.i, %.loopexit.i.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.sroa.05.08.1.i.i
  %.idx186 = shl nuw nsw i64 %.sroa.05.08.1.i.i, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx186 ; 5 uses
  %i.cz = load i64, ptr %i.cx, align 4, !alias.scope !116 ; 3 uses
  store i64 %i.cz, ptr %i.cy, align 8, !alias.scope !115, !noalias !113
  %i.da = lshr i64 %i.cz, 32
  %i.db = trunc nuw i64 %i.da to i32              ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cy, i64 -4
  %.val10.i.1.i.i = load i32, ptr %i.dc, align 4, !alias.scope !115, !noalias !113, !noundef !4
  %i.dd = icmp ugt i32 %.val10.i.1.i.i, %i.db
  br i1 %i.dd, label %.preheader.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i

.preheader.i.preheader:                           ; preds = %.lr.ph.1.i.i
  %.sroa.0.0.i41.1.i.i179 = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  %i.de = load i64, ptr %.sroa.0.0.i41.1.i.i179, align 8, !alias.scope !115, !noalias !113
  store i64 %i.de, ptr %i.cy, align 8, !alias.scope !115, !noalias !113
  %i.df = icmp eq i64 %.sroa.05.08.1.i.i, 1
  br i1 %i.df, label %._crit_edge183, label %.lr.ph182

.preheader.i:                                     ; preds = %.lr.ph182
  %.sroa.0.0.i41.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i.i181, i64 -8 ; 3 uses
  %i.dg = load i64, ptr %.sroa.0.0.i41.1.i.i, align 4, !alias.scope !115, !noalias !113
  store i64 %i.dg, ptr %.sroa.0.0.i41.1.i.i181, align 4, !alias.scope !115, !noalias !113
  %i.dh = icmp eq ptr %.sroa.0.0.i41.1.i.i, %i.cv
  br i1 %i.dh, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i41.1.i.i181 = phi ptr [ %.sroa.0.0.i41.1.i.i, %.preheader.i ], [ %.sroa.0.0.i41.1.i.i179, %.preheader.i.preheader ] ; 4 uses
  %.sroa.5.0.i.1.i.i180 = phi ptr [ %.sroa.0.0.i41.1.i.i181, %.preheader.i ], [ %i.cy, %.preheader.i.preheader ]
  %i.di = getelementptr i8, ptr %.sroa.5.0.i.1.i.i180, i64 -12
  %.val8.i42.1.i.i = load i32, ptr %i.di, align 4, !alias.scope !115, !noalias !113, !noundef !4
  %i.dj = icmp ugt i32 %.val8.i42.1.i.i, %i.db
  br i1 %i.dj, label %.preheader.i, label %._crit_edge183

._crit_edge183:                                   ; preds = %.preheader.i, %.lr.ph182, %.preheader.i.preheader
  %.sroa.0.0.i41.lcssa.1.i.i = phi ptr [ %i.cv, %.preheader.i.preheader ], [ %i.cv, %.preheader.i ], [ %.sroa.0.0.i41.1.i.i181, %.lr.ph182 ]
  store i64 %i.cz, ptr %.sroa.0.0.i41.lcssa.1.i.i, align 4, !alias.scope !115, !noalias !117
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i: ; preds = %._crit_edge183, %.lr.ph.1.i.i
  %i.dk = add nuw nsw i64 %.sroa.05.08.1.i.i, 1   ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.dk, %i.cs
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.1.i.i, %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.dl = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.cv, i64 -8
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.dp = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  %i.dq = getelementptr i8, ptr %i.ed, i64 8
  %i.dr = and i64 %.sroa.15.0.lcssa, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.j, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.a, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.cv, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i ], [ %i.do, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i ], [ %i.dn, %.loopexit.1.i.i ] ; 3 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i ], [ %i.dm, %.loopexit.1.i.i ] ; 2 uses
  %i.dt = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.011.07.i.i.i, i64 4
  %.sroa.011.0.val.i.i.i = load i32, ptr %i.du, align 4, !alias.scope !119, !noalias !113, !noundef !4
  %i.dv = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 4
  %.sroa.06.0.val.i.i.i = load i32, ptr %i.dv, align 4, !alias.scope !119, !noalias !113, !noundef !4
  %.not.i = icmp ult i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i ; 3 uses
  %..i21.i.i.i = select i1 %.not.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  %i.dw = load i64, ptr %..i21.i.i.i, align 4, !alias.scope !119, !noalias !120
  store i64 %i.dw, ptr %.sroa.0.010.i.i.i, align 4, !alias.scope !116, !noalias !121
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.017.05.i.i.i, i64 4
  %.sroa.017.0.val.i.i.i = load i32, ptr %i.dy, align 4, !alias.scope !119, !noalias !113, !noundef !4
  %i.dz = getelementptr i8, ptr %.sroa.015.06.i.i.i, i64 4
  %.sroa.015.0.val.i.i.i = load i32, ptr %i.dz, align 4, !alias.scope !119, !noalias !113, !noundef !4
  %i.ea = icmp ult i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i ; 3 uses
  %..i.i.i.i = select i1 %i.ea, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.eb = xor i1 %i.ea, true
  %i.ec = load i64, ptr %..i.i.i.i, align 4, !alias.scope !119, !noalias !122
  store i64 %i.ec, ptr %.sroa.019.04.i.i.i, align 4, !alias.scope !116, !noalias !123
  %.neg.i.i.i.i = sext i1 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg13.i.i.i.i = sext i1 %i.ea to i64
  %i.ee = getelementptr [8 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg13.i.i.i.i ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -8
  %exitcond.not.i.i.i = icmp eq i64 %i.dt, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %.not26.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.dp ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not26.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.eg = load i64, ptr %.sroa.06.0..sroa.011.0.i.i.i, align 4, !alias.scope !119, !noalias !113
  store i64 %i.eg, ptr %i.dx, align 4, !alias.scope !116, !noalias !118
  %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not26.i, i64 8, i64 0
  %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not26.i, i64 0, i64 8
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.i ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel17.idx.i.sroa.sel.idx.sroa.sel, %bb.i ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i.i, %i.dp
  %i.ei = icmp ne ptr %.sroa.011.1.i.i.i, %i.dq
  %or.cond.i.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !8
  br i1 %or.cond.i.i.i, label %bb.k, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit, !prof !8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22
          to label %.noexc.i.i unwind label %bb.l, !noalias !124

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.a, i64 %i.ek, i1 false), !alias.scope !125, !noalias !126
  resume { ptr, i32 } %i.ej

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i
  %.sroa.05.08.i.i = phi i64 [ %i.ey, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.08.i.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i.i, 3
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.en = load i64, ptr %i.el, align 4, !alias.scope !116 ; 3 uses
  store i64 %i.en, ptr %i.em, align 8, !alias.scope !115, !noalias !113
  %i.eo = lshr i64 %i.en, 32
  %i.ep = trunc nuw i64 %i.eo to i32              ; 2 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 -4
  %.val10.i.i.i = load i32, ptr %i.eq, align 4, !alias.scope !115, !noalias !113, !noundef !4
  %i.er = icmp ugt i32 %.val10.i.i.i, %i.ep
  br i1 %i.er, label %.preheader5.i.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i

.preheader5.i.preheader:                          ; preds = %.lr.ph.i.i
  %.sroa.0.0.i41.i.i172 = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.es = load i64, ptr %.sroa.0.0.i41.i.i172, align 8, !alias.scope !115, !noalias !113
  store i64 %i.es, ptr %i.em, align 8, !alias.scope !115, !noalias !113
  %i.et = icmp eq i64 %.sroa.05.08.i.i, 1
  br i1 %i.et, label %._crit_edge176, label %.lr.ph175

.preheader5.i:                                    ; preds = %.lr.ph175
  %.sroa.0.0.i41.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i.i174, i64 -8 ; 3 uses
  %i.eu = load i64, ptr %.sroa.0.0.i41.i.i, align 4, !alias.scope !115, !noalias !113
  store i64 %i.eu, ptr %.sroa.0.0.i41.i.i174, align 4, !alias.scope !115, !noalias !113
  %i.ev = icmp eq ptr %.sroa.0.0.i41.i.i, %i.a
  br i1 %i.ev, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader5.i.preheader, %.preheader5.i
  %.sroa.0.0.i41.i.i174 = phi ptr [ %.sroa.0.0.i41.i.i, %.preheader5.i ], [ %.sroa.0.0.i41.i.i172, %.preheader5.i.preheader ] ; 4 uses
  %.sroa.5.0.i.i.i173 = phi ptr [ %.sroa.0.0.i41.i.i174, %.preheader5.i ], [ %i.em, %.preheader5.i.preheader ]
  %i.ew = getelementptr i8, ptr %.sroa.5.0.i.i.i173, i64 -12
  %.val8.i42.i.i = load i32, ptr %i.ew, align 4, !alias.scope !115, !noalias !113, !noundef !4
  %i.ex = icmp ugt i32 %.val8.i42.i.i, %i.ep
  br i1 %i.ex, label %.preheader5.i, label %._crit_edge176

._crit_edge176:                                   ; preds = %.preheader5.i, %.lr.ph175, %.preheader5.i.preheader
  %.sroa.0.0.i41.lcssa.i.i = phi ptr [ %i.a, %.preheader5.i.preheader ], [ %i.a, %.preheader5.i ], [ %.sroa.0.0.i41.i.i174, %.lr.ph175 ]
  store i64 %i.en, ptr %.sroa.0.0.i41.lcssa.i.i, align 4, !alias.scope !115, !noalias !117
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB18_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit.i.i: ; preds = %._crit_edge176, %.lr.ph.i.i
  %i.ey = add nuw nsw i64 %.sroa.05.08.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ey, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  br label %bb.n

._crit_edge170:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.098.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.097.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.098.lcssa, i64 noundef %.sroa.15.097.lcssa, ptr noalias nofree nonnull poison) #23
  br label %bb.n

.lr.ph169:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.095168 = phi i32 [ %i.ez, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.096167 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.097166 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.sroa.0.098165 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 28 uses
  %i.ez = add nsw i32 %.sroa.026.095168, -1       ; 3 uses
  %i.fa = lshr i64 %.sroa.15.097166, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.fa, 5
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.fa, 56
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %.idx2.i ; 3 uses
  %i.fd = icmp samesign ult i64 %.sroa.15.097166, 64
  br i1 %i.fd, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph169
  %i.fe = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB14_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noundef nonnull readonly align 4 %.sroa.0.098165, ptr noundef readonly %i.fb, ptr noundef readonly %i.fc, i64 noundef %i.fa)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i: ; preds = %.lr.ph169
  %i.ff = getelementptr i8, ptr %.sroa.0.098165, i64 4
  %.val6.i = load i32, ptr %i.ff, align 4, !alias.scope !127, !noundef !4 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fb, i64 4
  %.val7.i = load i32, ptr %i.fg, align 4, !alias.scope !127, !noundef !4 ; 2 uses
  %i.fh = icmp ult i32 %.val6.i, %.val7.i         ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fc, i64 4
  %.val5.i = load i32, ptr %i.fi, align 4, !alias.scope !127, !noundef !4 ; 2 uses
  %i.fj = icmp ult i32 %.val6.i, %.val5.i
  %i.fk = xor i1 %i.fh, %i.fj
  %i.fl = icmp ult i32 %.val7.i, %.val5.i
  %i.fm = xor i1 %i.fh, %i.fl
  %..i.i = select i1 %i.fm, ptr %i.fc, ptr %i.fb
  %.sroa.0.0.i.i34 = select i1 %i.fk, ptr %.sroa.0.098165, ptr %..i.i
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.m, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i34, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtCseqdUst8juhI_14pingora_ketama7PointV1NvYBZ_NtNtBa_3cmp10PartialOrd2ltEB11_.exit.i ], [ %i.fe, %bb.m ]
  %i.fn = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fo = ptrtoint ptr %.sroa.0.098165 to i64
  %i.fp = sub nuw i64 %i.fn, %i.fo                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.fp, 3
  %i.fq = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.097166
  tail call void @llvm.assume(i1 %i.fq)
  %.not = icmp eq ptr %.sroa.023.096167, null
  br i1 %.not, label %bb.o, label %bb.q

bb.n:                                             ; preds = %._crit_edge170, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit
  ret void

bb.o:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !129
  %i.fs = load i64, ptr %i.fr, align 4, !alias.scope !129
  store i64 %i.fs, ptr %.sroa.0.098165, align 4, !alias.scope !129
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fr, align 4, !alias.scope !129
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.fu = load i64, ptr %i.ft, align 4, !alias.scope !132
  store i64 %i.fu, ptr %.sroa.0.i.i, align 8, !noalias !133
  %i.fv = getelementptr [8 x i8], ptr %.sroa.0.098165, i64 %.sroa.15.097166 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8     ; 2 uses
  %.sroa.13.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 16 ; 3 uses
  %i.fx = icmp ult ptr %.sroa.13.033.i.i, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 4
  %.val1.i12.i.i = load i32, ptr %i.fy, align 4, !alias.scope !134, !noalias !4 ; 3 uses
  br i1 %i.fx, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i37, %bb.o
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.gu, %.lr.ph.i.i37 ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.033.i.i, %bb.o ], [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.ft, %bb.o ], [ %i.gn, %.lr.ph.i.i37 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.gf, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep26.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.fz = icmp eq ptr %.sroa.13.1.i.i, %i.fv      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fz, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.fz, ptr %.sroa.0.i.i, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 4
  %.val.i.i.i36 = load i32, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 4, !noalias !135, !noundef !4
  %i.ga = icmp ult i32 %.val.i.i.i36, %.val1.i12.i.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.23.1.i.i ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 4, !alias.scope !132, !noalias !136
  store i64 %i.gc, ptr %.sroa.015.1.i.i, align 4, !alias.scope !132, !noalias !136
  %i.gd = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !135
  store i64 %i.gd, ptr %i.gb, align 4, !alias.scope !132, !noalias !136
  %i.ge = zext i1 %i.ga to i64
  %i.gf = add i64 %.sroa.23.1.i.i, %i.ge          ; 5 uses
  %.sroa.13.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.fz, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i, label %.preheader.i.i

.lr.ph.i.i37:                                     ; preds = %bb.o, %.lr.ph.i.i37
  %.sroa.13.036.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i37 ], [ %.sroa.13.033.i.i, %bb.o ] ; 2 uses
  %.sroa.015.035.i.i = phi ptr [ %i.gn, %.lr.ph.i.i37 ], [ %i.ft, %bb.o ] ; 5 uses
  %.sroa.23.034.i.i = phi i64 [ %i.gu, %.lr.ph.i.i37 ], [ 0, %bb.o ] ; 2 uses
  %i.gg = getelementptr i8, ptr %.sroa.015.035.i.i, i64 12
  %.val.i11.i.i = load i32, ptr %i.gg, align 4, !alias.scope !132, !noalias !137, !noundef !4
  %i.gh = icmp ult i32 %.val.i11.i.i, %.val1.i12.i.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.sroa.23.034.i.i ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 4, !alias.scope !132, !noalias !137
  store i64 %i.gj, ptr %.sroa.015.035.i.i, align 4, !alias.scope !132, !noalias !137
  %i.gk = load i64, ptr %.sroa.13.036.i.i, align 4, !alias.scope !132, !noalias !137
  store i64 %i.gk, ptr %i.gi, align 4, !alias.scope !132, !noalias !137
  %i.gl = zext i1 %i.gh to i64
  %i.gm = add i64 %.sroa.23.034.i.i, %i.gl        ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 16 ; 3 uses
  %i.go = getelementptr i8, ptr %.sroa.015.035.i.i, i64 20
  %.val.i13.i.i = load i32, ptr %i.go, align 4, !alias.scope !132, !noalias !138, !noundef !4
  %i.gp = icmp ult i32 %.val.i13.i.i, %.val1.i12.i.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gm ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 4, !alias.scope !132, !noalias !138
  store i64 %i.gr, ptr %.sroa.13.036.i.i, align 4, !alias.scope !132, !noalias !138
  %i.gs = load i64, ptr %i.gn, align 4, !alias.scope !132, !noalias !138
  store i64 %i.gs, ptr %i.gq, align 4, !alias.scope !132, !noalias !138
  %i.gt = zext i1 %i.gp to i64
  %i.gu = add i64 %i.gm, %i.gt                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.035.i.i, i64 24 ; 3 uses
  %i.gv = icmp ult ptr %.sroa.13.0.i.i, %i.fw
  br i1 %i.gv, label %.lr.ph.i.i37, label %.preheader.i.i.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %.not7.i = icmp ult i64 %i.gf, %.sroa.15.097166
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtCseqdUst8juhI_14pingora_ketama7PointV112split_at_mutBw_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB1x_NtNtBa_3cmp10PartialOrd2ltEB1z_.exit.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.098165, i64 %i.gf ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !139
  %i.gx = load i64, ptr %i.gw, align 4, !alias.scope !139
  store i64 %i.gx, ptr %.sroa.0.098165, align 4, !alias.scope !139
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.gw, align 4, !alias.scope !139
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = xor i64 %i.gf, -1
  %i.ha = add i64 %.sroa.15.097166, %i.gz
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB17_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %.sroa.0.098165, i64 noundef %i.gf, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.096167, i32 noundef %i.ez, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.q:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtCseqdUst8juhI_14pingora_ketama7PointV1NvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 %i.fp ; 3 uses
  %i.hc = getelementptr i8, ptr %.sroa.023.096167, i64 4
  %.sroa.023.0.val = load i32, ptr %i.hc, align 4, !noundef !4
  %i.hd = getelementptr i8, ptr %i.hb, i64 4
  %.val = load i32, ptr %i.hd, align 4, !noundef !4
  %i.he = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.he, label %bb.o, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %.sroa.0.098165, align 4, !alias.scope !141
  %i.hf = load i64, ptr %i.hb, align 4, !alias.scope !141
  store i64 %i.hf, ptr %.sroa.0.098165, align 4, !alias.scope !141
  store i64 %.sroa.0.0.copyload.i.i.i46, ptr %i.hb, align 4, !alias.scope !141
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i44)
  %i.hh = load i64, ptr %i.hg, align 4, !alias.scope !144
  store i64 %i.hh, ptr %.sroa.0.i.i44, align 8, !noalias !145
  %i.hi = getelementptr [8 x i8], ptr %.sroa.0.098165, i64 %.sroa.15.097166 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 -8     ; 2 uses
  %.sroa.13.033.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.098165, i64 16 ; 3 uses
end_hunk_0
