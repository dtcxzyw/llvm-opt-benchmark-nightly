Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.13?download=true
inline.NumInlined: 787
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1f_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1f_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = alloca [192 x i8], align 4               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %1, 32
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %1, 1                           ; 12 uses
  %i.f = icmp samesign ugt i64 %1, 15
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %1, 7
  br i1 %i.g, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB19_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 1
  %i.n = load i32, ptr %0, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.q = tail call i32 @llvm.ucmp.i32.i32(i32 %i.o, i32 %i.p) ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.s, align 1
  %i.v = load i32, ptr %i.t, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.y = icmp ult i32 %i.w, %i.x                  ; 2 uses
  %.lobit.i.i = lshr i32 %i.q, 31
  %i.z = zext nneg i32 %.lobit.i.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = zext i1 %i.r to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.y, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.y, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ae, align 1
  %i.ai = load i32, ptr %i.aa, align 1
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.al = icmp ult i32 %i.aj, %i.ak               ; 3 uses
  %i.am = load i32, ptr %i.ag, align 1
  %i.an = load i32, ptr %i.ac, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.aq = icmp ult i32 %i.ao, %i.ap               ; 3 uses
  %i.ar = select i1 %i.al, ptr %i.ae, ptr %i.aa, !unpredictable !4
  %i.as = select i1 %i.aq, ptr %i.ac, ptr %i.ag, !unpredictable !4
  %i.at = select i1 %i.aq, ptr %i.ae, ptr %i.ac, !unpredictable !4
  %i.au = select i1 %i.al, ptr %i.aa, ptr %i.at, !unpredictable !4 ; 3 uses
  %i.av = select i1 %i.al, ptr %i.ac, ptr %i.ae, !unpredictable !4
  %i.aw = select i1 %i.aq, ptr %i.ag, ptr %i.av, !unpredictable !4 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = load i32, ptr %i.au, align 1
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = icmp ult i32 %i.az, %i.ba               ; 2 uses
  %i.bc = select i1 %i.bb, ptr %i.aw, ptr %i.au, !unpredictable !4
  %i.bd = select i1 %i.bb, ptr %i.au, ptr %i.aw, !unpredictable !4
  %i.be = load i32, ptr %i.ar, align 1, !alias.scope !530
  store i32 %i.be, ptr %i.b, align 4, !alias.scope !531
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bg = load i32, ptr %i.bc, align 1, !alias.scope !530
  store i32 %i.bg, ptr %i.bf, align 4, !alias.scope !531
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bi = load i32, ptr %i.bd, align 1, !alias.scope !530
  store i32 %i.bi, ptr %i.bh, align 4, !alias.scope !531
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bk = load i32, ptr %i.as, align 1, !alias.scope !530
  store i32 %i.bk, ptr %i.bj, align 4, !alias.scope !531
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 8 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = load i32, ptr %i.bl, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = tail call i32 @llvm.ucmp.i32.i32(i32 %i.bq, i32 %i.br) ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load i32, ptr %i.bu, align 1
  %i.bx = load i32, ptr %i.bv, align 1
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.ca = icmp ult i32 %i.by, %i.bz               ; 2 uses
  %.lobit.i26.i = lshr i32 %i.bs, 31
  %i.cb = zext nneg i32 %.lobit.i26.i to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cb ; 3 uses
  %i.cd = zext i1 %i.bt to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cd ; 4 uses
  %i.cf = select i1 %i.ca, i64 3, i64 2
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cf ; 4 uses
  %i.ch = select i1 %i.ca, i64 2, i64 3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.cg, align 1
  %i.ck = load i32, ptr %i.cc, align 1
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cn = icmp ult i32 %i.cl, %i.cm               ; 3 uses
  %i.co = load i32, ptr %i.ci, align 1
  %i.cp = load i32, ptr %i.ce, align 1
  %i.cq = tail call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cp)
  %i.cs = icmp ult i32 %i.cq, %i.cr               ; 3 uses
  %i.ct = select i1 %i.cn, ptr %i.cg, ptr %i.cc, !unpredictable !4
  %i.cu = select i1 %i.cs, ptr %i.ce, ptr %i.ci, !unpredictable !4
  %i.cv = select i1 %i.cs, ptr %i.cg, ptr %i.ce, !unpredictable !4
  %i.cw = select i1 %i.cn, ptr %i.cc, ptr %i.cv, !unpredictable !4 ; 3 uses
  %i.cx = select i1 %i.cn, ptr %i.ce, ptr %i.cg, !unpredictable !4
  %i.cy = select i1 %i.cs, ptr %i.ci, ptr %i.cx, !unpredictable !4 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = load i32, ptr %i.cw, align 1
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dd = icmp ult i32 %i.db, %i.dc               ; 2 uses
  %i.de = select i1 %i.dd, ptr %i.cy, ptr %i.cw, !unpredictable !4
  %i.df = select i1 %i.dd, ptr %i.cw, ptr %i.cy, !unpredictable !4
  %i.dg = load i32, ptr %i.ct, align 1, !alias.scope !530
  store i32 %i.dg, ptr %i.bm, align 4, !alias.scope !531
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.di = load i32, ptr %i.de, align 1, !alias.scope !530
  store i32 %i.di, ptr %i.dh, align 4, !alias.scope !531
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.dk = load i32, ptr %i.df, align 1, !alias.scope !530
  store i32 %i.dk, ptr %i.dj, align 4, !alias.scope !531
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dm = load i32, ptr %i.cu, align 1, !alias.scope !530
  store i32 %i.dm, ptr %i.dl, align 4, !alias.scope !531
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dn = load i32, ptr %0, align 1, !alias.scope !530
  store i32 %i.dn, ptr %i.b, align 4, !alias.scope !531
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.dq = load i32, ptr %i.do, align 1, !alias.scope !530
  store i32 %i.dq, ptr %i.dp, align 4, !alias.scope !531
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.dr = sub nuw nsw i64 %1, %i.e                ; 2 uses
  %i.ds = icmp samesign ult i64 %.sroa.0.0.i, %i.e
  br i1 %i.ds, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i, %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.du = getelementptr [4 x i8], ptr %i.b, i64 %i.e ; 6 uses
  %i.dv = icmp samesign ult i64 %.sroa.0.0.i, %i.dr
  br i1 %i.dv, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx38 ; 4 uses
  %i.dy = load i32, ptr %i.dw, align 1, !alias.scope !530 ; 3 uses
  store i32 %i.dy, ptr %i.dx, align 4, !alias.scope !531
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4 ; 3 uses
  %i.ea = load i32, ptr %i.dx, align 1
  %i.eb = load i32, ptr %i.dz, align 1
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.ea)
  %i.ed = call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ee = icmp ult i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i

bb.j:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  store i32 %i.dy, ptr %i.a, align 4, !noalias !532
  %i.ef = load i32, ptr %i.dz, align 4, !alias.scope !531
  store i32 %i.ef, ptr %i.dx, align 4, !alias.scope !531
  %i.eg = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.eg, label %._crit_edge34, label %.lr.ph33

bb.k:                                             ; preds = %.lr.ph33
  %i.eh = load i32, ptr %i.ej, align 1, !alias.scope !531
  store i32 %i.eh, ptr %.sroa.0.0.i28.1.i31, align 1, !alias.scope !531
  %i.ei = icmp eq ptr %i.ej, %i.du
  br i1 %i.ei, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i28.1.i31 = phi ptr [ %i.ej, %bb.k ], [ %i.dz, %bb.j ] ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.0.0.i28.1.i31, i64 -4 ; 4 uses
  %i.ek = load i32, ptr %i.a, align 4
  %i.el = load i32, ptr %i.ej, align 1
  %i.em = call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.en = call i32 @llvm.bswap.i32(i32 %i.el)
  %i.eo = icmp ult i32 %i.em, %i.en
  br i1 %i.eo, label %bb.k, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.k, %.lr.ph33, %bb.j
  %.sroa.0.0.i28.lcssa.1.i = phi ptr [ %i.du, %bb.j ], [ %i.du, %bb.k ], [ %.sroa.0.0.i28.1.i31, %.lr.ph33 ]
  store i32 %i.dy, ptr %.sroa.0.0.i28.lcssa.1.i, align 1, !alias.scope !531, !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.ep = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ep, %i.dr
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.eq = add nsw i64 %1, -1                      ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eq
  %i.et = getelementptr i8, ptr %i.du, i64 -4
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.eu = getelementptr i8, ptr %i.fr, i64 4      ; 2 uses
  %i.ev = getelementptr i8, ptr %i.fq, i64 4
  %i.ew = and i64 %1, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.011.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.010.i.i = phi i64 [ %i.ey, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.b, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.du, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.07.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %i.et, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.06.i.i = phi ptr [ %i.fq, %.lr.ph.i.i ], [ %i.es, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.05.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %i.er, %.loopexit.1.i ] ; 2 uses
  %i.ey = add nuw nsw i64 %.sroa.04.010.i.i, 1    ; 2 uses
  %i.ez = load i32, ptr %.sroa.011.08.i.i, align 1
  %i.fa = load i32, ptr %.sroa.06.09.i.i, align 1
  %i.fb = call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fc = call i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fd = call i32 @llvm.ucmp.i32.i32(i32 %i.fb, i32 %i.fc) ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, -1                  ; 2 uses
  %..i21.i.i = select i1 %i.fe, ptr %.sroa.06.09.i.i, ptr %.sroa.011.08.i.i
  %i.ff = load i32, ptr %..i21.i.i, align 1, !alias.scope !535, !noalias !536
  store i32 %i.ff, ptr %.sroa.0.011.i.i, align 1, !alias.scope !530, !noalias !537
  %.lobit.i27.i = lshr i32 %i.fd, 31
  %i.fg = zext nneg i32 %.lobit.i27.i to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.08.i.i, i64 %i.fg ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fe, i64 4, i64 0
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 4 ; 2 uses
  %i.fj = load i32, ptr %.sroa.017.06.i.i, align 1
  %i.fk = load i32, ptr %.sroa.015.07.i.i, align 1
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fm = call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fn = call i32 @llvm.ucmp.i32.i32(i32 %i.fl, i32 %i.fm) ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, -1                  ; 2 uses
  %..i.i.i = select i1 %i.fo, ptr %.sroa.017.06.i.i, ptr %.sroa.015.07.i.i
  %i.fp = load i32, ptr %..i.i.i, align 1, !alias.scope !535, !noalias !538
  store i32 %i.fp, ptr %.sroa.019.05.i.i, align 1, !alias.scope !530, !noalias !539
  %.neg.i.i.i = sext i1 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr %.sroa.017.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.lobit4.i.i = ashr i32 %i.fn, 31
  %.neg13.i.i.i = sext i32 %.lobit4.i.i to i64
  %i.fr = getelementptr [4 x i8], ptr %.sroa.015.07.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.019.05.i.i, i64 -4
  %exitcond.not.i.i = icmp eq i64 %i.ey, %i.e
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ft = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.eu ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ft, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %i.fh
  %i.fu = load i32, ptr %.sroa.06.0..sroa.011.0.i.i, align 1, !alias.scope !535
  store i32 %i.fu, ptr %i.fi, align 1, !alias.scope !530, !noalias !534
  %.sroa.sel.idx.sroa.sel.idx = select i1 %i.ft, i64 4, i64 0
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ft, i64 0, i64 4
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.fh, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.l ]
  %i.fv = icmp ne ptr %.sroa.06.1.i.i, %i.eu
  %i.fw = icmp ne ptr %.sroa.011.1.i.i, %i.ev
  %or.cond.i.i = select i1 %i.fv, i1 true, i1 %i.fw, !prof !11
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit, !prof !11

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc.i unwind label %bb.o, !noalias !532

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = shl nuw nsw i64 %1, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 4 %i.b, i64 %i.fy, i1 false), !alias.scope !532, !noalias !540
  resume { ptr, i32 } %i.fx

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i
  %.sroa.05.08.i = phi i64 [ %i.gs, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 4 uses
  %i.gb = load i32, ptr %i.fz, align 1, !alias.scope !530 ; 3 uses
  store i32 %i.gb, ptr %i.ga, align 4, !alias.scope !531
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -4 ; 3 uses
  %i.gd = load i32, ptr %i.ga, align 1
  %i.ge = load i32, ptr %i.gc, align 1
  %i.gf = call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gg = call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gh = icmp ult i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.p, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  store i32 %i.gb, ptr %i.a, align 4, !noalias !532
  %i.gi = load i32, ptr %i.gc, align 4, !alias.scope !531
  store i32 %i.gi, ptr %i.ga, align 4, !alias.scope !531
  %i.gj = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.gj, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.gk = load i32, ptr %i.gm, align 1, !alias.scope !531
  store i32 %i.gk, ptr %.sroa.0.0.i28.i28, align 1, !alias.scope !531
  %i.gl = icmp eq ptr %i.gm, %i.b
  br i1 %i.gl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.0.0.i28.i28 = phi ptr [ %i.gm, %bb.q ], [ %i.gc, %bb.p ] ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %.sroa.0.0.i28.i28, i64 -4 ; 4 uses
  %i.gn = load i32, ptr %i.a, align 4
  %i.go = load i32, ptr %i.gm, align 1
  %i.gp = call i32 @llvm.bswap.i32(i32 %i.gn)
  %i.gq = call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gr = icmp ult i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p
  %.sroa.0.0.i28.lcssa.i = phi ptr [ %i.b, %bb.p ], [ %i.b, %bb.q ], [ %.sroa.0.0.i28.i28, %.lr.ph ]
  store i32 %i.gb, ptr %.sroa.0.0.i28.lcssa.i, align 1, !alias.scope !531, !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !532
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB18_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gs = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gs, %i.e
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types3tag3TagNvYB1s_NtNtBa_3cmp10PartialOrd2ltECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1f_20sort_unstable_by_keyNtB1h_5LevelNCNvMs0_B1h_NtB1h_13DiagnosticSet18split_off_warnings0E0EB1j_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2304 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB1s_20sort_unstable_by_keyNtB1u_5LevelNCNvMs0_B1u_NtB1u_13DiagnosticSet18split_off_warnings0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 88
  %.val8.i.i = load i8, ptr %i.f, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val9.i.i = load i8, ptr %i.g, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.h = icmp samesign ult i8 %.val8.i.i, %.val9.i.i ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 184
  %.val6.i.i = load i8, ptr %i.i, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.j = getelementptr i8, ptr %0, i64 136
  %.val7.i.i = load i8, ptr %i.j, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.k = icmp samesign ult i8 %.val6.i.i, %.val7.i.i ; 2 uses
  %i.l = zext i1 %i.h to i64
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.n = xor i1 %i.h, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.q = select i1 %i.k, i64 3, i64 2
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.s = select i1 %i.k, i64 2, i64 3
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.r, i64 40
  %.val4.i.i = load i8, ptr %i.u, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.v = getelementptr i8, ptr %i.m, i64 40
  %.val5.i.i = load i8, ptr %i.v, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.w = icmp samesign ult i8 %.val4.i.i, %.val5.i.i ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 40
  %.val2.i.i = load i8, ptr %i.x, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.y = getelementptr i8, ptr %i.p, i64 40
  %.val3.i.i = load i8, ptr %i.y, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.z = icmp samesign ult i8 %.val2.i.i, %.val3.i.i ; 3 uses
  %i.aa = select i1 %i.w, ptr %i.r, ptr %i.m, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.p, ptr %i.t, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.r, ptr %i.p, !unpredictable !4
  %i.ad = select i1 %i.w, ptr %i.m, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.w, ptr %i.p, ptr %i.r, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.t, ptr %i.ae, !unpredictable !4 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %.val.i.i = load i8, ptr %i.ag, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.ah = getelementptr i8, ptr %i.ad, i64 40
  %.val1.i.i = load i8, ptr %i.ah, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.ai = icmp samesign ult i8 %.val.i.i, %.val1.i.i ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ak = select i1 %i.ai, ptr %i.ad, ptr %i.af, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !alias.scope !562
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false), !alias.scope !562
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !alias.scope !562
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !alias.scope !562
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 88
  %.val8.i26.i = load i8, ptr %i.aq, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.ar = getelementptr i8, ptr %i.ao, i64 40
  %.val9.i27.i = load i8, ptr %i.ar, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.as = icmp samesign ult i8 %.val8.i26.i, %.val9.i27.i ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 184
  %.val6.i28.i = load i8, ptr %i.at, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.au = getelementptr i8, ptr %i.ao, i64 136
  %.val7.i29.i = load i8, ptr %i.au, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.av = icmp samesign ult i8 %.val6.i28.i, %.val7.i29.i ; 2 uses
  %i.aw = zext i1 %i.as to i64
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.aw ; 3 uses
  %i.ay = xor i1 %i.as, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.az ; 4 uses
  %i.bb = select i1 %i.av, i64 3, i64 2
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.bb ; 4 uses
  %i.bd = select i1 %i.av, i64 2, i64 3
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.bd ; 3 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 40
  %.val4.i30.i = load i8, ptr %i.bf, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bg = getelementptr i8, ptr %i.ax, i64 40
  %.val5.i31.i = load i8, ptr %i.bg, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bh = icmp samesign ult i8 %.val4.i30.i, %.val5.i31.i ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 40
  %.val2.i32.i = load i8, ptr %i.bi, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bj = getelementptr i8, ptr %i.ba, i64 40
  %.val3.i33.i = load i8, ptr %i.bj, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bk = icmp samesign ult i8 %.val2.i32.i, %.val3.i33.i ; 3 uses
  %i.bl = select i1 %i.bh, ptr %i.bc, ptr %i.ax, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.ba, ptr %i.be, !unpredictable !4
  %i.bn = select i1 %i.bk, ptr %i.bc, ptr %i.ba, !unpredictable !4
  %i.bo = select i1 %i.bh, ptr %i.ax, ptr %i.bn, !unpredictable !4 ; 3 uses
  %i.bp = select i1 %i.bh, ptr %i.ba, ptr %i.bc, !unpredictable !4
  %i.bq = select i1 %i.bk, ptr %i.be, ptr %i.bp, !unpredictable !4 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  %.val.i34.i = load i8, ptr %i.br, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bs = getelementptr i8, ptr %i.bo, i64 40
  %.val1.i35.i = load i8, ptr %i.bs, align 8, !range !8, !alias.scope !560, !noundef !4
  %i.bt = icmp samesign ult i8 %.val.i34.i, %.val1.i35.i ; 2 uses
  %i.bu = select i1 %i.bt, ptr %i.bq, ptr %i.bo, !unpredictable !4
  %i.bv = select i1 %i.bt, ptr %i.bo, ptr %i.bq, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false), !alias.scope !562
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i64 48, i1 false), !alias.scope !562
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 48, i1 false), !alias.scope !562
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !alias.scope !562
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !alias.scope !562
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i64 48, i1 false), !alias.scope !562
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.cb = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cc, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.i, %bb.g
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d
  %i.ce = getelementptr [48 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cf = icmp samesign ult i64 %.sroa.0.0.i, %i.cb
  br i1 %i.cf, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx46 = mul nuw nsw i64 %.sroa.05.08.1.i, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx46 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !alias.scope !562
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %.val9.i36.1.i = load i8, ptr %i.ci, align 8, !range !8, !alias.scope !561, !noundef !4 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.1.i = load i8, ptr %i.cj, align 8, !range !8, !alias.scope !561, !noundef !4
  %i.ck = icmp samesign ult i8 %.val9.i36.1.i, %.val10.i.1.i
  br i1 %i.ck, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticNCINvMB8_SB18_20sort_unstable_by_keyNtB1a_5LevelNCNvMs0_B1a_NtB1a_13DiagnosticSet18split_off_warnings0E0EB1c_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 41
  %.sroa.0.0.i37.1.i35 = getelementptr inbounds i8, ptr %i.ch, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i35, i64 48, i1 false), !alias.scope !561
  %i.cm = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cm, label %._crit_edge40, label %.lr.ph39

bb.i:                                             ; preds = %.lr.ph39
  %.sroa.0.0.i37.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i37.1.i37, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i37, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i37.1.i, i64 48, i1 false), !alias.scope !561
  %i.cn = icmp eq ptr %.sroa.0.0.i37.1.i, %i.ce
  br i1 %i.cn, label %._crit_edge40, label %.lr.ph39

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB1m_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1o_NtB1o_15BaseAxisBuilder3new0E0EB1u_:bb.a
.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.5.0.i9, i64 -40
  %.val8.i = load i32, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.val9.i, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val8.i, ptr %i.a, align 4
  %i.r = load i32, ptr %i.b, align 4
  %i.s = load i32, ptr %i.a, align 4
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = icmp ult i32 %i.t, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.v, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !788
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i32 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !788
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4base12ScriptRecordNCINvMB8_SB18_20sort_unstable_by_keyNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCNvMB1a_NtB1a_15BaseAxisBuilder3new0E0EB1g_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_11sort_by_keytNCNvMB1p_NtB1p_11StatBuilder5build0E0EB1v_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit
  %.sroa.0.05 = phi ptr [ %i.t, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val9.i, i64 28 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.val10.i, i64 28
  %i.h = load i16, ptr %i.g, align 4, !noundef !4
  %i.i = icmp ult i16 %i.f, %i.h
  br i1 %i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.j = ptrtoint ptr %.val10.i to i64
  store i64 %i.j, ptr %.sroa.0.05, align 8
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9.preheader

.lr.ph9.preheader:                                ; preds = %.preheader.preheader
  %i.l = load i16, ptr %i.e, align 4, !noundef !4
  br label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.m = ptrtoint ptr %.val8.i to i64
  store i64 %i.m, ptr %.sroa.0.0.i8, align 8
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.o, %.preheader ], [ %i.d, %.lr.ph9.preheader ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val8.i, i64 28
  %i.q = load i16, ptr %i.p, align 4, !noundef !4
  %i.r = icmp ult i16 %i.l, %i.q
  br i1 %i.r, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  %i.s = ptrtoint ptr %.val9.i to i64
  store i64 %i.s, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !793
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNtB1R_4edit11apply_edits0E0EB1T_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -40 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -40 ; 4 uses
  %.val8.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !798
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTINtNtNtBa_3ops5range5RangejENtNtCscScJTt9VrQp_6fea_rs10token_tree4NodeENCINvMB8_SB18_20sort_unstable_by_keyjNCNvNtB1D_4edit11apply_edits0E0EB1F_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB31_11collections5btree3mapINtB3O_8BTreeMapB1n_B2a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4R_8adapters5chain5ChainINtNtB5O_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1n_ENCNvMNtB2c_9glyph_mapNtB8i_8GlyphMap11reverse_map0EIB6g_IB6x_tB1n_ENCB8f_s_0EEE0E0EB2e_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [30 x i8], align 2          ; 4 uses
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !4 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !4
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.0..sroa_idx.i, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val8.i = load i16, ptr %i.h, align 2, !noundef !4
  %i.i = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i16 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !803
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapB1n_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB47_8adapters6filter6FilterINtNtB54_3map3MapINtB37_4IterB1n_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB6d_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7W_19ClassDefBuilderImplIB41_B1m_E9from_iterB5x_E0EE0E0EB6j_(ptr noalias nofree noundef nonnull align 2 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit
  %.sroa.0.05 = phi ptr [ %i.n, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !4 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !4
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = load i32, ptr %i.d, align 2
  store i32 %i.h, ptr %.sroa.0.05, align 2
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.j = load i32, ptr %i.l, align 2
  store i32 %i.j, ptr %.sroa.0.0.i8, align 2
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 4 uses
  %.val8.i = load i16, ptr %i.l, align 2, !noundef !4
  %i.m = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.m, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i16 %i.g to i32
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i32 %.sroa.0.sroa.5.0.insert.ext.i, 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val9.i to i32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !808
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapB1n_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB47_8adapters6filter6FilterINtNtB54_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB1n_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7P_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB9m_19ClassDefBuilderImplIB41_B1m_E9from_iterB5x_E0EE0E0EB7V_(ptr noalias nofree noundef nonnull align 2 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit
  %.sroa.0.05 = phi ptr [ %i.n, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !4 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !4
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = load i32, ptr %i.d, align 2
  store i32 %i.h, ptr %.sroa.0.05, align 2
  %i.i = icmp eq ptr %i.d, %0
  br i1 %i.i, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.j = load i32, ptr %i.l, align 2
  store i32 %i.j, ptr %.sroa.0.0.i8, align 2
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.l, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 4 uses
  %.val8.i = load i16, ptr %i.l, align 2, !noundef !4
  %i.m = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.m, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ]
  %.sroa.0.sroa.5.0.insert.ext.i = zext i16 %i.g to i32
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw i32 %.sroa.0.sroa.5.0.insert.ext.i, 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val9.i to i32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.0.sroa.5.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !813
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB19_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB7B_11GdefBuilder15build_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB98_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB7H_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1r_7lookups8LookupIdNtB32_14PositionLookupEEENCINvMNtB2x_5sliceSB1m_11sort_by_keyB1n_NCNvMs1_B1p_NtB1p_8MergeCtx13finalize_gpos0E0EB1t_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #12 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCscScJTt9VrQp_6fea_rs7compile14feature_writer14InsertionPointINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtB1d_7lookups8LookupIdNtB2O_14PositionLookupEEENCINvMNtB2j_5sliceSB18_11sort_by_keyB19_NCNvMs1_B1b_NtB1b_8MergeCtx13finalize_gpos0E0EB1f_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1p_14PositionLookupENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_11sort_by_keyB1n_NCNvMs1_NtB1r_14feature_writerNtB3C_8MergeCtx13finalize_gposs_0E0EB1t_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [40 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_11sort_by_keytNCNvMB1v_NtB1v_11StatBuilder5build0E0EB1B_:bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %.val9.i44.cast, i64 28 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 4, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %.val10.i, i64 28
  %i.gh = load i16, ptr %i.gg, align 4, !noundef !4
  %i.gi = icmp ult i16 %i.gf, %i.gh
  br i1 %i.gi, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.gj = ptrtoint ptr %.val10.i to i64
  store i64 %i.gj, ptr %i.gb, align 8
  %i.gk = icmp eq i64 %.sroa.05.054, 1
  br i1 %i.gk, label %._crit_edge, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %.preheader.preheader
  %i.gl = load i16, ptr %i.ge, align 4, !noundef !4
  br label %.lr.ph75

.preheader:                                       ; preds = %.lr.ph75
  %i.gm = ptrtoint ptr %.val8.i46 to i64
  store i64 %i.gm, ptr %.sroa.0.0.i4574, align 8
  %i.gn = icmp eq ptr %i.go, %2
  br i1 %i.gn, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.preheader
  %.sroa.0.0.i4574 = phi ptr [ %i.go, %.preheader ], [ %i.gd, %.lr.ph75.preheader ] ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %.sroa.0.0.i4574, i64 -8 ; 3 uses
  %.val8.i46 = load ptr, ptr %i.go, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val8.i46, i64 28
  %i.gq = load i16, ptr %i.gp, align 4, !noundef !4
  %i.gr = icmp ult i16 %i.gl, %i.gq
  br i1 %i.gr, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph75, %.preheader.preheader
  %.sroa.0.0.i45.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4574, %.lr.ph75 ]
  store i64 %i.gc, ptr %.sroa.0.0.i45.lcssa, align 8, !noalias !1013
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4stat10AxisRecordNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keytNCNvMB1b_NtB1b_11StatBuilder5build0E0EB1h_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.gs = add nuw nsw i64 %.sroa.05.054, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.gs, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB37_11collections5btree3mapINtB3U_8BTreeMapB1t_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4X_8adapters5chain5ChainINtNtB5U_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1t_ENCNvMNtB2i_9glyph_mapNtB8o_8GlyphMap11reverse_map0EIB6m_IB6D_tB1t_ENCB8l_s_0EEE0E0EB2k_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [30 x i8], align 2          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8.i = load i16, ptr %i.f, align 8, !noundef !4
  %.val9.i = load i16, ptr %0, align 8, !noundef !4
  %i.g = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val6.i = load i16, ptr %i.h, align 8, !noundef !4
  %.val7.i = load i16, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i = load i16, ptr %i.q, align 8, !noundef !4
  %.val5.i = load i16, ptr %i.l, align 8, !noundef !4
  %i.t = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.s, align 8, !noundef !4
  %.val3.i = load i16, ptr %i.o, align 8, !noundef !4
  %i.u = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !4
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !4
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !4
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !4 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !4
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !4 ; 3 uses
  %.val.i = load i16, ptr %i.aa, align 8, !noundef !4
  %.val1.i = load i16, ptr %i.y, align 8, !noundef !4
  %i.ab = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !4
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.val8.i26 = load i16, ptr %i.aj, align 8, !noundef !4
  %.val9.i27 = load i16, ptr %i.ah, align 8, !noundef !4
  %i.ak = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.val6.i28 = load i16, ptr %i.al, align 8, !noundef !4
  %.val7.i29 = load i16, ptr %i.am, align 8, !noundef !4
  %i.an = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i30 = load i16, ptr %i.au, align 8, !noundef !4
  %.val5.i31 = load i16, ptr %i.ap, align 8, !noundef !4
  %i.ax = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.aw, align 8, !noundef !4
  %.val3.i33 = load i16, ptr %i.as, align 8, !noundef !4
  %i.ay = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !4
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !4
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !4
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !4 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !4
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !4 ; 3 uses
  %.val.i34 = load i16, ptr %i.be, align 8, !noundef !4
  %.val1.i35 = load i16, ptr %i.bc, align 8, !noundef !4
  %i.bf = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !4
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit, %bb.g
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [32 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0, %i.bn
  br i1 %i.br, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.05.046.1 ; 2 uses
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx78 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32 ; 3 uses
  %.val9.i36.1 = load i16, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.val10.i.1 = load i16, ptr %i.bu, align 8, !noundef !4
  %i.bv = icmp ult i16 %.val9.i36.1, %.val10.i.1
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.bw, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  %i.bx = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.bx, label %._crit_edge74, label %.lr.ph73

bb.i:                                             ; preds = %.lr.ph73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.171, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.171 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i37.171, i64 -32 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.bz, align 2, !noundef !4
  %i.ca = icmp ult i16 %.val9.i36.1, %.val8.i38.1
  br i1 %i.ca, label %bb.i, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i, %.lr.ph73, %bb.h
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i37.171, %.lr.ph73 ] ; 2 uses
  store i16 %.val9.i36.1, ptr %.sroa.0.0.i37.lcssa.1, align 8, !noalias !1034
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa.1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.cb = add nuw nsw i64 %.sroa.05.046.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit.1, %.loopexit
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.cv, i64 32     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cu, i64 32
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.bq, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cd, %.loopexit.1 ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i16, ptr %.sroa.011.07.i, align 2, !alias.scope !1035, !noundef !4
  %.sroa.06.0.val.i = load i16, ptr %.sroa.06.08.i, align 2, !alias.scope !1035, !noundef !4
  %i.cl = icmp ult i16 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cl, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cm = xor i1 %i.cl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !1036
  %i.cn = zext i1 %i.cl to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.cn ; 4 uses
  %i.cp = zext i1 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %.sroa.017.0.val.i = load i16, ptr %.sroa.017.05.i, align 2, !alias.scope !1035, !noundef !4
  %.sroa.015.0.val.i = load i16, ptr %.sroa.015.06.i, align 2, !alias.scope !1035, !noundef !4
  %i.cs = icmp ult i16 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.ct = xor i1 %i.cs, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !1037
  %.neg.i.i = sext i1 %i.ct to i64
  %i.cu = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cs to i64
  %i.cv = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.cx = icmp ult ptr %i.cq, %i.cg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cx, ptr %i.cq, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cy
  %i.da = xor i1 %i.cx, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.db
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.co, %._crit_edge.i ], [ %i.dc, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %i.cz, %bb.j ]
  %i.dd = icmp ne ptr %.sroa.06.1.i, %i.cg
  %i.de = icmp ne ptr %.sroa.011.1.i, %i.ch
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !11
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #36
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = shl nuw nsw i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !noalias !1038
  resume { ptr, i32 } %i.df

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2V_11collections5btree3mapINtB3I_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4L_8adapters5chain5ChainINtNtB5I_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB1h_ENCNvMNtB26_9glyph_mapNtB8c_8GlyphMap11reverse_map0EIB6a_IB6r_tB1h_ENCB89_s_0EEE0E0EB28_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit
  %.sroa.05.046 = phi i64 [ %i.dq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.046 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.046, 5
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -32 ; 3 uses
  %.val9.i36 = load i16, ptr %i.di, align 8, !noundef !4 ; 3 uses
  %.val10.i = load i16, ptr %i.dj, align 8, !noundef !4
  %i.dk = icmp ult i16 %.val9.i36, %.val10.i
  br i1 %i.dk, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.dl, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false)
  %i.dm = icmp eq i64 %.sroa.05.046, 1
  br i1 %i.dm, label %._crit_edge, label %.lr.ph68

bb.o:                                             ; preds = %.lr.ph68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i3767, ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.dn = icmp eq ptr %i.do, %2
  br i1 %i.dn, label %._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3767 = phi ptr [ %i.do, %bb.o ], [ %i.dj, %bb.n ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i3767, i64 -32 ; 4 uses
  %.val8.i38 = load i16, ptr %i.do, align 2, !noundef !4
  %i.dp = icmp ult i16 %.val9.i36, %.val8.i38
  br i1 %i.dp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph68, %bb.n
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3767, %.lr.ph68 ] ; 2 uses
  store i16 %.val9.i36, ptr %.sroa.0.0.i37.lcssa, align 8, !noalias !1034
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !1034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4D_8adapters5chain5ChainINtNtB5A_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB19_ENCNvMNtB1Y_9glyph_mapNtB84_8GlyphMap11reverse_map0EIB62_IB6j_tB19_ENCB81_s_0EEE0E0EB20_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dq = add nuw nsw i64 %.sroa.05.046, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1t_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4d_8adapters6filter6FilterINtNtB5a_3map3MapINtB3d_4IterB1t_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB6j_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB82_19ClassDefBuilderImplIB47_B1s_E9from_iterB5D_E0EE0E0EB6p_(ptr noalias nofree noundef nonnull align 2 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB1h_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB41_8adapters6filter6FilterINtNtB4Y_3map3MapINtB31_4IterB1h_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB67_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7Q_19ClassDefBuilderImplIB3V_B1g_E9from_iterB5r_E0EE0E0EB6d_.exit, label %bb.b

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
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtB2U_4IterB1a_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB60_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7J_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB66_(ptr noundef %0, ptr noundef %2, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB27_11collections5btree3mapINtB2U_8BTreeMapB1a_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB3U_8adapters6filter6FilterINtNtB4R_3map3MapINtB2U_4IterB1a_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB60_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7J_19ClassDefBuilderImplIB3O_B19_E9from_iterB5k_E0EE0E0EB66_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i = load i16, ptr %i.k, align 2, !noundef !4
  %.val9.i = load i16, ptr %0, align 2, !noundef !4
  %i.l = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i16, ptr %i.m, align 2, !noundef !4
  %.val7.i = load i16, ptr %i.n, align 2, !noundef !4
  %i.o = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i = load i16, ptr %i.v, align 2, !noundef !4
  %.val5.i = load i16, ptr %i.q, align 2, !noundef !4
  %i.y = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.x, align 2, !noundef !4
  %.val3.i = load i16, ptr %i.t, align 2, !noundef !4
  %i.z = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !4
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !4
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !4 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !4 ; 3 uses
  %.val.i = load i16, ptr %i.af, align 2, !noundef !4
  %.val1.i = load i16, ptr %i.ad, align 2, !noundef !4
  %i.ag = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !4
  %i.aj = load i32, ptr %i.aa, align 2
  store i32 %i.aj, ptr %2, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ah, align 2
  store i32 %i.al, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %i.ai, align 2
  store i32 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ab, align 2
  store i32 %i.ap, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.val8.i26 = load i16, ptr %i.as, align 2, !noundef !4
  %.val9.i27 = load i16, ptr %i.aq, align 2, !noundef !4
  %i.at = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val6.i28 = load i16, ptr %i.au, align 2, !noundef !4
  %.val7.i29 = load i16, ptr %i.av, align 2, !noundef !4
  %i.aw = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i30 = load i16, ptr %i.bd, align 2, !noundef !4
  %.val5.i31 = load i16, ptr %i.ay, align 2, !noundef !4
  %i.bg = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.bf, align 2, !noundef !4
  %.val3.i33 = load i16, ptr %i.bb, align 2, !noundef !4
  %i.bh = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !4
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !4
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !4 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !4 ; 3 uses
  %.val.i34 = load i16, ptr %i.bn, align 2, !noundef !4
  %.val1.i35 = load i16, ptr %i.bl, align 2, !noundef !4
  %i.bo = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !4
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !4
  %i.br = load i32, ptr %i.bi, align 2
  store i32 %i.br, ptr %i.ar, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bt = load i32, ptr %i.bp, align 2
  store i32 %i.bt, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bv = load i32, ptr %i.bq, align 2
  store i32 %i.bv, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bx = load i32, ptr %i.bj, align 2
  store i32 %i.bx, ptr %i.bw, align 2
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i32, ptr %0, align 2
  store i32 %i.by, ptr %2, align 2
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.cb = load i32, ptr %i.bz, align 2
  store i32 %i.cb, ptr %i.ca, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.cd, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit, %bb.i
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [4 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0, %i.cc
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.ct, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.sroa.05.046.1
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx78 ; 3 uses
  %i.cj = load i32, ptr %i.ch, align 2            ; 3 uses
  store i32 %i.cj, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 3 uses
  %i.cl = trunc i32 %i.cj to i16                  ; 2 uses
  %.val10.i.1 = load i16, ptr %i.ck, align 2, !noundef !4
  %i.cm = icmp ugt i16 %.val10.i.1, %i.cl
  br i1 %i.cm, label %.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapB19_tEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB3T_8adapters6filter6FilterINtNtB4Q_3map3MapINtB2T_4IterB19_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5Z_11GdefBuilder27build_mark_attach_class_def00ENCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtB7I_19ClassDefBuilderImplIB3N_B18_E9from_iterB5j_E0EE0E0EB65_.exit.1

.preheader:                                       ; preds = %.lr.ph.1
  %i.cn = load i32, ptr %i.ck, align 2
  store i32 %i.cn, ptr %i.ci, align 2
  %i.co = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.co, label %._crit_edge74, label %.lr.ph73

bb.j:                                             ; preds = %.lr.ph73
  %i.cp = load i32, ptr %i.cr, align 2
  store i32 %i.cp, ptr %.sroa.0.0.i37.172, align 2
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader, %bb.j
  %.sroa.0.0.i37.172 = phi ptr [ %i.cr, %bb.j ], [ %i.ck, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i37.172, i64 -4 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.cr, align 2, !noundef !4
  %i.cs = icmp ugt i16 %.val8.i38.1, %i.cl
  br i1 %i.cs, label %bb.j, label %._crit_edge74

end_hunk_2
