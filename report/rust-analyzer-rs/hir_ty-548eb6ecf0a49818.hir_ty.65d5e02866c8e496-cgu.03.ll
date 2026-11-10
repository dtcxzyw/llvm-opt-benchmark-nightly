Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.03?download=true
inline.NumInlined: 6210
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalNtCsileJQcQObtj_7hir_def7TraitIdNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty:bb.a
  %i.t = getelementptr i8, ptr %0, i64 28
  %.val13.i.i = load i32, ptr %i.t, align 4, !alias.scope !1934
  %.val14.i.i = load i32, ptr %i.s, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 20
  %.val15.i.i = load i32, ptr %i.u, align 4, !alias.scope !1934
  %i.v = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i32 %.val13.i.i, %.val15.i.i
  %i.x = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x         ; 2 uses
  %i.z = zext i1 %i.q to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 4 uses
  %i.ab = xor i1 %i.q, true
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %i.y, i64 3, i64 2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 5 uses
  %i.ag = select i1 %i.y, i64 2, i64 3
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 4 uses
  %.val8.i.i = load i32, ptr %i.af, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 4
  %.val9.i.i = load i32, ptr %i.ai, align 4, !alias.scope !1934
  %.val10.i.i = load i32, ptr %i.aa, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 4
  %.val11.i.i = load i32, ptr %i.aj, align 4, !alias.scope !1934
  %i.ak = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.al = icmp ult i32 %.val9.i.i, %.val11.i.i
  %i.am = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.an = select i1 %i.ak, i1 %i.al, i1 %i.am     ; 3 uses
  %.val4.i.i = load i32, ptr %i.ah, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ah, i64 4
  %.val5.i.i = load i32, ptr %i.ao, align 4, !alias.scope !1934
  %.val6.i.i = load i32, ptr %i.ad, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 4
  %.val7.i.i = load i32, ptr %i.ap, align 4, !alias.scope !1934
  %i.aq = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ar = icmp ult i32 %.val5.i.i, %.val7.i.i
  %i.as = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.at = select i1 %i.aq, i1 %i.ar, i1 %i.as     ; 3 uses
  %i.au = select i1 %i.an, ptr %i.af, ptr %i.aa, !unpredictable !87
  %i.av = select i1 %i.at, ptr %i.ad, ptr %i.ah, !unpredictable !87
  %i.aw = select i1 %i.at, ptr %i.af, ptr %i.ad, !unpredictable !87
  %i.ax = select i1 %i.an, ptr %i.aa, ptr %i.aw, !unpredictable !87 ; 4 uses
  %i.ay = select i1 %i.an, ptr %i.ad, ptr %i.af, !unpredictable !87
  %i.az = select i1 %i.at, ptr %i.ah, ptr %i.ay, !unpredictable !87 ; 4 uses
  %.val.i.i = load i32, ptr %i.az, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val1.i.i = load i32, ptr %i.ba, align 4, !alias.scope !1934
  %.val2.i.i = load i32, ptr %i.ax, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 4
  %.val3.i.i = load i32, ptr %i.bb, align 4, !alias.scope !1934
  %i.bc = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.bd = icmp ult i32 %.val1.i.i, %.val3.i.i
  %i.be = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.bf = select i1 %i.bc, i1 %i.bd, i1 %i.be     ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.az, ptr %i.ax, !unpredictable !87
  %i.bh = select i1 %i.bf, ptr %i.ax, ptr %i.az, !unpredictable !87
  %i.bi = load i64, ptr %i.au, align 4, !alias.scope !1934
  store i64 %i.bi, ptr %i.a, align 8, !alias.scope !1935
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = load i64, ptr %i.bg, align 4, !alias.scope !1934
  store i64 %i.bk, ptr %i.bj, align 8, !alias.scope !1935
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bm = load i64, ptr %i.bh, align 4, !alias.scope !1934
  store i64 %i.bm, ptr %i.bl, align 8, !alias.scope !1935
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bo = load i64, ptr %i.av, align 4, !alias.scope !1934
  store i64 %i.bo, ptr %i.bn, align 8, !alias.scope !1935
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val16.i30.i = load i32, ptr %i.br, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 12
  %.val17.i31.i = load i32, ptr %i.bs, align 4, !alias.scope !1934
  %.val18.i32.i = load i32, ptr %i.bp, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 4
  %.val19.i33.i = load i32, ptr %i.bt, align 4, !alias.scope !1934
  %i.bu = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bv = icmp ult i32 %.val17.i31.i, %.val19.i33.i
  %i.bw = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.bx = select i1 %i.bu, i1 %i.bv, i1 %i.bw     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.val12.i34.i = load i32, ptr %i.by, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 28
  %.val13.i35.i = load i32, ptr %i.ca, align 4, !alias.scope !1934
  %.val14.i36.i = load i32, ptr %i.bz, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bp, i64 20
  %.val15.i37.i = load i32, ptr %i.cb, align 4, !alias.scope !1934
  %i.cc = icmp eq i32 %.val12.i34.i, %.val14.i36.i
  %i.cd = icmp ult i32 %.val13.i35.i, %.val15.i37.i
  %i.ce = icmp ult i32 %.val12.i34.i, %.val14.i36.i
  %i.cf = select i1 %i.cc, i1 %i.cd, i1 %i.ce     ; 2 uses
  %i.cg = zext i1 %i.bx to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cg ; 4 uses
  %i.ci = xor i1 %i.bx, true
  %i.cj = zext i1 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cj ; 5 uses
  %i.cl = select i1 %i.cf, i64 3, i64 2
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cl ; 5 uses
  %i.cn = select i1 %i.cf, i64 2, i64 3
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cn ; 4 uses
  %.val8.i38.i = load i32, ptr %i.cm, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cm, i64 4
  %.val9.i39.i = load i32, ptr %i.cp, align 4, !alias.scope !1934
  %.val10.i40.i = load i32, ptr %i.ch, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ch, i64 4
  %.val11.i41.i = load i32, ptr %i.cq, align 4, !alias.scope !1934
  %i.cr = icmp eq i32 %.val8.i38.i, %.val10.i40.i
  %i.cs = icmp ult i32 %.val9.i39.i, %.val11.i41.i
  %i.ct = icmp ult i32 %.val8.i38.i, %.val10.i40.i
  %i.cu = select i1 %i.cr, i1 %i.cs, i1 %i.ct     ; 3 uses
  %.val4.i42.i = load i32, ptr %i.co, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.co, i64 4
  %.val5.i43.i = load i32, ptr %i.cv, align 4, !alias.scope !1934
  %.val6.i44.i = load i32, ptr %i.ck, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 4
  %.val7.i45.i = load i32, ptr %i.cw, align 4, !alias.scope !1934
  %i.cx = icmp eq i32 %.val4.i42.i, %.val6.i44.i
  %i.cy = icmp ult i32 %.val5.i43.i, %.val7.i45.i
  %i.cz = icmp ult i32 %.val4.i42.i, %.val6.i44.i
  %i.da = select i1 %i.cx, i1 %i.cy, i1 %i.cz     ; 3 uses
  %i.db = select i1 %i.cu, ptr %i.cm, ptr %i.ch, !unpredictable !87
  %i.dc = select i1 %i.da, ptr %i.ck, ptr %i.co, !unpredictable !87
  %i.dd = select i1 %i.da, ptr %i.cm, ptr %i.ck, !unpredictable !87
  %i.de = select i1 %i.cu, ptr %i.ch, ptr %i.dd, !unpredictable !87 ; 4 uses
  %i.df = select i1 %i.cu, ptr %i.ck, ptr %i.cm, !unpredictable !87
  %i.dg = select i1 %i.da, ptr %i.co, ptr %i.df, !unpredictable !87 ; 4 uses
  %.val.i46.i = load i32, ptr %i.dg, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %.val1.i47.i = load i32, ptr %i.dh, align 4, !alias.scope !1934
  %.val2.i48.i = load i32, ptr %i.de, align 4, !range !103, !alias.scope !1934, !noundef !87 ; 2 uses
  %i.di = getelementptr i8, ptr %i.de, i64 4
  %.val3.i49.i = load i32, ptr %i.di, align 4, !alias.scope !1934
  %i.dj = icmp eq i32 %.val.i46.i, %.val2.i48.i
  %i.dk = icmp ult i32 %.val1.i47.i, %.val3.i49.i
  %i.dl = icmp ult i32 %.val.i46.i, %.val2.i48.i
  %i.dm = select i1 %i.dj, i1 %i.dk, i1 %i.dl     ; 2 uses
  %i.dn = select i1 %i.dm, ptr %i.dg, ptr %i.de, !unpredictable !87
  %i.do = select i1 %i.dm, ptr %i.de, ptr %i.dg, !unpredictable !87
  %i.dp = load i64, ptr %i.db, align 4, !alias.scope !1934
  store i64 %i.dp, ptr %i.bq, align 8, !alias.scope !1935
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dr = load i64, ptr %i.dn, align 4, !alias.scope !1934
  store i64 %i.dr, ptr %i.dq, align 8, !alias.scope !1935
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dt = load i64, ptr %i.do, align 4, !alias.scope !1934
  store i64 %i.dt, ptr %i.ds, align 8, !alias.scope !1935
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dv = load i64, ptr %i.dc, align 4, !alias.scope !1934
  store i64 %i.dv, ptr %i.du, align 8, !alias.scope !1935
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dw = load i64, ptr %0, align 4, !alias.scope !1934
  store i64 %i.dw, ptr %i.a, align 8, !alias.scope !1935
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.dz = load i64, ptr %i.dx, align 4, !alias.scope !1934
  store i64 %i.dz, ptr %i.dy, align 8, !alias.scope !1935
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.ea = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.eb = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.eb, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.ed = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.ee = icmp samesign ult i64 %.sroa.0.0.i, %i.ea
  br i1 %i.ee, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.fb, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.sroa.05.08.1.i
  %.idx34 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx34 ; 4 uses
  %i.eh = load i64, ptr %i.ef, align 4, !alias.scope !1934 ; 4 uses
  store i64 %i.eh, ptr %i.eg, align 8, !alias.scope !1935
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -8 ; 3 uses
  %i.ej = trunc i64 %i.eh to i32                  ; 4 uses
  %i.ek = lshr i64 %i.eh, 32
  %i.el = trunc nuw i64 %i.ek to i32              ; 2 uses
  %.val13.i52.1.i = load i32, ptr %i.ei, align 8, !range !103, !alias.scope !1935, !noundef !87 ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 -4
  %.val14.i53.1.i = load i32, ptr %i.em, align 4, !alias.scope !1935
  %i.en = icmp eq i32 %.val13.i52.1.i, %i.ej
  %i.eo = icmp ugt i32 %.val14.i53.1.i, %i.el
  %i.ep = icmp ugt i32 %.val13.i52.1.i, %i.ej
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep
  br i1 %i.eq, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  %i.er = load i64, ptr %i.ei, align 8, !alias.scope !1935
  store i64 %i.er, ptr %i.eg, align 8, !alias.scope !1935
  %i.es = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.es, label %._crit_edge31, label %.lr.ph30

.preheader.1.i:                                   ; preds = %.lr.ph30
  %i.et = load i64, ptr %i.ev, align 8, !alias.scope !1935
  store i64 %i.et, ptr %.sroa.0.0.i54.1.i29, align 8, !alias.scope !1935
  %i.eu = icmp eq ptr %i.ev, %i.ed
  br i1 %i.eu, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i54.1.i29 = phi ptr [ %i.ev, %.preheader.1.i ], [ %i.ei, %.preheader.1.i.preheader ] ; 4 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.i54.1.i29, i64 -8 ; 4 uses
  %.val9.i55.1.i = load i32, ptr %i.ev, align 8, !range !103, !alias.scope !1935, !noundef !87 ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.0.0.i54.1.i29, i64 -4
  %.val10.i56.1.i = load i32, ptr %i.ew, align 4, !alias.scope !1935
  %i.ex = icmp eq i32 %.val9.i55.1.i, %i.ej
  %i.ey = icmp ugt i32 %.val10.i56.1.i, %i.el
  %i.ez = icmp ugt i32 %.val9.i55.1.i, %i.ej
  %i.fa = select i1 %i.ex, i1 %i.ey, i1 %i.ez
  br i1 %i.fa, label %.preheader.1.i, label %._crit_edge31

._crit_edge31:                                    ; preds = %.preheader.1.i, %.lr.ph30, %.preheader.1.i.preheader
  %.sroa.0.0.i54.lcssa.1.i = phi ptr [ %i.ed, %.preheader.1.i.preheader ], [ %i.ed, %.preheader.1.i ], [ %.sroa.0.0.i54.1.i29, %.lr.ph30 ]
  store i64 %i.eh, ptr %.sroa.0.0.i54.lcssa.1.i, align 4, !alias.scope !1935, !noalias !1936
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i: ; preds = %._crit_edge31, %.lr.ph.1.i
  %i.fb = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.fb, %i.ea
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %i.fc = add nsw i64 %1, -1                      ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fc
  %i.ff = getelementptr i8, ptr %i.ed, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fg = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.fh = getelementptr i8, ptr %i.gb, i64 8
  %i.fi = and i64 %1, 1
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.ed, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.ff, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fe, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %i.fd, %.loopexit.1.i ] ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !103, !alias.scope !1938, !noundef !87 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val22.i.i = load i32, ptr %i.fl, align 4, !alias.scope !1938
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !103, !alias.scope !1938, !noundef !87 ; 2 uses
  %i.fm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val23.i.i = load i32, ptr %i.fm, align 4, !alias.scope !1938
  %i.fn = icmp eq i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fo = icmp ult i32 %.sroa.011.0.val22.i.i, %.sroa.06.0.val23.i.i
  %i.fp = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fq = select i1 %i.fn, i1 %i.fo, i1 %i.fp     ; 3 uses
  %..i21.i.i = select i1 %i.fq, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.fr = load i64, ptr %..i21.i.i, align 4, !alias.scope !1938, !noalias !1939
  store i64 %i.fr, ptr %.sroa.0.010.i.i, align 4, !alias.scope !1934, !noalias !1940
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fq, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fq, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 8, !range !103, !alias.scope !1938, !noundef !87 ; 2 uses
  %i.ft = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val24.i.i = load i32, ptr %i.ft, align 4, !alias.scope !1938
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 8, !range !103, !alias.scope !1938, !noundef !87 ; 2 uses
  %i.fu = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val25.i.i = load i32, ptr %i.fu, align 4, !alias.scope !1938
  %i.fv = icmp eq i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fw = icmp ult i32 %.sroa.017.0.val24.i.i, %.sroa.015.0.val25.i.i
  %i.fx = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fy = select i1 %i.fv, i1 %i.fw, i1 %i.fx     ; 3 uses
  %..i.i.i = select i1 %i.fy, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fz = xor i1 %i.fy, true
  %i.ga = load i64, ptr %..i.i.i, align 8, !alias.scope !1938, !noalias !1941
  store i64 %i.ga, ptr %.sroa.019.04.i.i, align 4, !alias.scope !1934, !noalias !1942
  %.neg.i.i.i = sext i1 %i.fz to i64
  %i.gb = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.fy to i64
  %i.gc = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.fk, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.fg ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.ge = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !1938
  store i64 %i.ge, ptr %i.fs, align 4, !alias.scope !1934, !noalias !1937
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.gf = icmp ne ptr %.sroa.06.1.i.i, %i.fg
  %i.gg = icmp ne ptr %.sroa.011.1.i.i, %i.fh
  %or.cond.i.i = select i1 %i.gf, i1 true, i1 %i.gg, !prof !123
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCsileJQcQObtj_7hir_def7TraitIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, !prof !123

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49
          to label %.noexc.i unwind label %bb.m, !noalias !1943

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.gi, i1 false), !alias.scope !1943, !noalias !1944
  resume { ptr, i32 } %i.gh

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.05.08.i = phi i64 [ %i.hf, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.gl = load i64, ptr %i.gj, align 4, !alias.scope !1934 ; 4 uses
  store i64 %i.gl, ptr %i.gk, align 8, !alias.scope !1935
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -8 ; 3 uses
  %i.gn = trunc i64 %i.gl to i32                  ; 4 uses
  %i.go = lshr i64 %i.gl, 32
  %i.gp = trunc nuw i64 %i.go to i32              ; 2 uses
  %.val13.i52.i = load i32, ptr %i.gm, align 8, !range !103, !alias.scope !1935, !noundef !87 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gk, i64 -4
  %.val14.i53.i = load i32, ptr %i.gq, align 4, !alias.scope !1935
  %i.gr = icmp eq i32 %.val13.i52.i, %i.gn
  %i.gs = icmp ugt i32 %.val14.i53.i, %i.gp
  %i.gt = icmp ugt i32 %.val13.i52.i, %i.gn
  %i.gu = select i1 %i.gr, i1 %i.gs, i1 %i.gt
  br i1 %i.gu, label %.preheader.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.gv = load i64, ptr %i.gm, align 8, !alias.scope !1935
  store i64 %i.gv, ptr %i.gk, align 8, !alias.scope !1935
  %i.gw = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.gw, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.gx = load i64, ptr %i.gz, align 8, !alias.scope !1935
  store i64 %i.gx, ptr %.sroa.0.0.i54.i27, align 8, !alias.scope !1935
  %i.gy = icmp eq ptr %i.gz, %i.a
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i54.i27 = phi ptr [ %i.gz, %.preheader.i ], [ %i.gm, %.preheader.i.preheader ] ; 4 uses
  %i.gz = getelementptr inbounds i8, ptr %.sroa.0.0.i54.i27, i64 -8 ; 4 uses
  %.val9.i55.i = load i32, ptr %i.gz, align 8, !range !103, !alias.scope !1935, !noundef !87 ; 2 uses
  %i.ha = getelementptr i8, ptr %.sroa.0.0.i54.i27, i64 -4
  %.val10.i56.i = load i32, ptr %i.ha, align 4, !alias.scope !1935
  %i.hb = icmp eq i32 %.val9.i55.i, %i.gn
  %i.hc = icmp ugt i32 %.val10.i56.i, %i.gp
  %i.hd = icmp ugt i32 %.val9.i55.i, %i.gn
  %i.he = select i1 %i.hb, i1 %i.hc, i1 %i.hd
  br i1 %i.he, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i54.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i54.i27, %.lr.ph ]
  store i64 %i.gl, ptr %.sroa.0.0.i54.lcssa.i, align 4, !alias.scope !1935, !noalias !1936
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtCsileJQcQObtj_7hir_def7TraitIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.hf = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hf, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtCsileJQcQObtj_7hir_def7TraitIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !1980 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  %i.b = alloca [2304 x i8], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %1, 32
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %1, 1                           ; 5 uses
  %i.f = icmp samesign ugt i64 %1, 7
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.e ; 5 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB19_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 16 %0, ptr noundef nonnull align 16 %i.b)
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB19_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %0, i64 48, i1 false), !alias.scope !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !alias.scope !1983
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.i = sub nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.k = icmp samesign ult i64 %.sroa.0.0.i, %i.e
  br i1 %i.k, label %.noexc.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.g
  %i.l = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.l, label %.noexc.1.i, label %.loopexit.1.i

.noexc.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i
  %.sroa.05.05.1.i = phi i64 [ %i.ad, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.05.05.1.i ; 3 uses
  %.idx.1.i = mul nuw nsw i64 %.sroa.05.05.1.i, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.1.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.n, ptr noundef nonnull align 16 dereferenceable(48) %i.m, i64 48, i1 false), !alias.scope !1983
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %i.p = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o)
  switch i8 %i.p, label %bb.h [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.1.i
    i8 0, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.1.i: ; preds = %.noexc.1.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.s = load i64, ptr %i.q, align 16, !alias.scope !1990, !noundef !87
  %i.t = load i64, ptr %i.r, align 16, !alias.scope !1991, !noundef !87
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i

bb.h:                                             ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.1.i, %.noexc.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !1982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.n, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !alias.scope !1982
  %i.v = icmp eq i64 %.sroa.05.05.1.i, 1
  br i1 %i.v, label %.noexc._crit_edge.i.1.i, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.h
  %i.w = load i64, ptr %i.j, align 16, !noalias !1983
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i.1.i, %.lr.ph.i.1.i
  %.sroa.0.07.i.1.i = phi ptr [ %i.o, %.lr.ph.i.1.i ], [ %i.x, %.backedge.i.1.i ] ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -48 ; 4 uses
  %i.y = invoke noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %.noexc.i.1.i unwind label %.loopexit.split-lp.i

.noexc.i.1.i:                                     ; preds = %bb.i
  switch i8 %i.y, label %.backedge.i.1.i [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.1.i
    i8 0, label %.noexc._crit_edge.i.1.i
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.1.i: ; preds = %.noexc.i.1.i
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -16
  %i.aa = load i64, ptr %i.z, align 16, !alias.scope !1992, !noundef !87
  %i.ab = icmp slt i64 %i.w, %i.aa
  br i1 %i.ab, label %.backedge.i.1.i, label %.noexc._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.1.i, %.noexc.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.07.i.1.i, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false), !alias.scope !1982
  %i.ac = icmp eq ptr %i.x, %i.h
  br i1 %i.ac, label %.noexc._crit_edge.i.1.i, label %bb.i

.noexc._crit_edge.i.1.i:                          ; preds = %.backedge.i.1.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.1.i, %.noexc.i.1.i, %bb.h
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.0.07.i.1.i, %.noexc.i.1.i ], [ %.sroa.0.07.i.1.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.1.i ], [ %i.h, %.backedge.i.1.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.0.lcssa.i.1.i, ptr noundef nonnull align 16 dereferenceable(48) %i.m, i64 48, i1 false), !alias.scope !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1983
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i: ; preds = %.noexc._crit_edge.i.1.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.1.i, %.noexc.1.i
  %i.ad = add nuw nsw i64 %.sroa.05.05.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ad, %i.i
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.noexc.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i, %.loopexit.i
  invoke fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %i.b, i64 noundef range(i64 0, 192153584101141163) %1, ptr noundef nonnull align 16 %0)
          to label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.j

bb.j:                                             ; preds = %.loopexit.1.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = mul nuw nsw i64 %1, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.b, i64 %i.af, i1 false), !alias.scope !1983, !noalias !1993
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %lpad.phi.i, %bb.m ]
  resume { ptr, i32 } %.pn.i

.noexc.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.05.05.i = phi i64 [ %i.ax, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.05.05.i ; 3 uses
  %.idx.i = mul nuw nsw i64 %.sroa.05.05.i, 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ah, ptr noundef nonnull align 16 dereferenceable(48) %i.ag, i64 48, i1 false), !alias.scope !1983
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.experimental.noalias.scope.decl(metadata !1996)
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %i.aj = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ai)
  switch i8 %i.aj, label %bb.k [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.i
    i8 0, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %.noexc.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  %i.am = load i64, ptr %i.ak, align 16, !alias.scope !2000, !noundef !87
  %i.an = load i64, ptr %i.al, align 16, !alias.scope !2001, !noundef !87
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

bb.k:                                             ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !1982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ah, ptr noundef nonnull align 16 dereferenceable(48) %i.ai, i64 48, i1 false), !alias.scope !1982
  %i.ap = icmp eq i64 %.sroa.05.05.i, 1
  br i1 %i.ap, label %.noexc._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.aq = load i64, ptr %i.j, align 16, !noalias !1983
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ar, %.backedge.i.i ] ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -48 ; 4 uses
  %i.as = invoke noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %.noexc.i.i unwind label %.loopexit9.i

.noexc.i.i:                                       ; preds = %bb.l
  switch i8 %i.as, label %.backedge.i.i [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.i
    i8 0, label %.noexc._crit_edge.i.i
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.i: ; preds = %.noexc.i.i
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -16
  %i.au = load i64, ptr %i.at, align 16, !alias.scope !1992, !noundef !87
  %i.av = icmp slt i64 %i.aq, %i.au
  br i1 %i.av, label %.backedge.i.i, label %.noexc._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.i, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.07.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.ar, i64 48, i1 false), !alias.scope !1982
  %i.aw = icmp eq ptr %i.ar, %i.b
  br i1 %i.aw, label %.noexc._crit_edge.i.i, label %bb.l

.noexc._crit_edge.i.i:                            ; preds = %.backedge.i.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.i, %.noexc.i.i, %bb.k
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.ai, %bb.k ], [ %.sroa.0.07.i.i, %.noexc.i.i ], [ %.sroa.0.07.i.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i.i ], [ %i.b, %.backedge.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.0.lcssa.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.ag, i64 48, i1 false), !alias.scope !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1983
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

.loopexit9.i:                                     ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit9.i
  %.sroa.0.07.i.lcssa.i = phi ptr [ %.sroa.0.07.i.i, %.loopexit9.i ], [ %.sroa.0.07.i.1.i, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit9.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.07.i.lcssa.i, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !2002
  br label %.body.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.noexc._crit_edge.i.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i.i, %.noexc.i
  %i.ax = add nuw nsw i64 %.sroa.05.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.e
  br i1 %exitcond.not.i, label %.loopexit.i, label %.noexc.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality !guid !2033 {
bb.a:
  %i.a = alloca [192 x i8], align 4               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

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
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stablemNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stablemNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !2036, !noundef !87
  %.val9.i.i = load i32, ptr %0, align 4, !alias.scope !2037, !noundef !87
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !2036, !noundef !87
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !2037, !noundef !87
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 3 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !2036, !noundef !87 ; 2 uses
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !2037, !noundef !87 ; 2 uses
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 2 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !2036, !noundef !87 ; 2 uses
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !2037, !noundef !87 ; 2 uses
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 2 uses
  %i.aa = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !87
  %i.ab = select i1 %i.y, ptr %i.q, ptr %i.aa, !unpredictable !87
  %i.ac = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !87
  %i.ad = select i1 %i.z, ptr %i.x, ptr %i.ac, !unpredictable !87
  %.val.i.i = load i32, ptr %i.ad, align 4, !alias.scope !2036, !noundef !87 ; 2 uses
  %.val1.i.i = load i32, ptr %i.ab, align 4, !alias.scope !2037, !noundef !87 ; 2 uses
  %i.ae = tail call i32 @llvm.umin.i32(i32 %.val4.i.i, i32 %.val5.i.i)
  store i32 %i.ae, ptr %i.a, align 4, !alias.scope !2035
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.val.i.i, i32 %.val1.i.i)
  store i32 %i.ag, ptr %i.af, align 4, !alias.scope !2035
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val1.i.i)
  store i32 %i.ai, ptr %i.ah, align 4, !alias.scope !2035
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = tail call i32 @llvm.umax.i32(i32 %.val2.i.i, i32 %.val3.i.i)
  store i32 %i.ak, ptr %i.aj, align 4, !alias.scope !2035
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val8.i30.i = load i32, ptr %i.an, align 4, !alias.scope !2038, !noundef !87
  %.val9.i31.i = load i32, ptr %i.al, align 4, !alias.scope !2039, !noundef !87
  %i.ao = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val6.i32.i = load i32, ptr %i.ap, align 4, !alias.scope !2038, !noundef !87
  %.val7.i33.i = load i32, ptr %i.aq, align 4, !alias.scope !2039, !noundef !87
  %i.ar = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.av ; 3 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ax ; 3 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %.val4.i34.i = load i32, ptr %i.ay, align 4, !alias.scope !2038, !noundef !87 ; 2 uses
  %.val5.i35.i = load i32, ptr %i.at, align 4, !alias.scope !2039, !noundef !87 ; 2 uses
  %i.bb = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 2 uses
  %.val2.i36.i = load i32, ptr %i.ba, align 4, !alias.scope !2038, !noundef !87 ; 2 uses
  %.val3.i37.i = load i32, ptr %i.aw, align 4, !alias.scope !2039, !noundef !87 ; 2 uses
  %i.bc = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !87
  %i.be = select i1 %i.bb, ptr %i.at, ptr %i.bd, !unpredictable !87
  %i.bf = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !87
  %i.bg = select i1 %i.bc, ptr %i.ba, ptr %i.bf, !unpredictable !87
  %.val.i38.i = load i32, ptr %i.bg, align 4, !alias.scope !2038, !noundef !87 ; 2 uses
  %.val1.i39.i = load i32, ptr %i.be, align 4, !alias.scope !2039, !noundef !87 ; 2 uses
  %i.bh = tail call i32 @llvm.umin.i32(i32 %.val4.i34.i, i32 %.val5.i35.i)
  store i32 %i.bh, ptr %i.am, align 4, !alias.scope !2035
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bj = tail call i32 @llvm.umin.i32(i32 %.val.i38.i, i32 %.val1.i39.i)
  store i32 %i.bj, ptr %i.bi, align 4, !alias.scope !2035
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = tail call i32 @llvm.umax.i32(i32 %.val.i38.i, i32 %.val1.i39.i)
  store i32 %i.bl, ptr %i.bk, align 4, !alias.scope !2035
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bn = tail call i32 @llvm.umax.i32(i32 %.val2.i36.i, i32 %.val3.i37.i)
  store i32 %i.bn, ptr %i.bm, align 4, !alias.scope !2035
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bo = load i32, ptr %0, align 4, !alias.scope !2034
  store i32 %i.bo, ptr %i.a, align 4, !alias.scope !2035
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.br = load i32, ptr %i.bp, align 4, !alias.scope !2034
  store i32 %i.br, ptr %i.bq, align 4, !alias.scope !2035
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [4 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i
  %.idx37 = shl nuw nsw i64 %.sroa.05.08.1.i, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx37 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !alias.scope !2034 ; 4 uses
  store i32 %i.bz, ptr %i.by, align 4, !alias.scope !2035
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %.val10.i.1.i = load i32, ptr %i.ca, align 4, !alias.scope !2040, !noundef !87 ; 2 uses
  %i.cb = icmp ult i32 %i.bz, %.val10.i.1.i
  br i1 %i.cb, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i32 %.val10.i.1.i, ptr %i.by, align 4, !alias.scope !2035
  %i.cc = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cc, label %._crit_edge34, label %.lr.ph33
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyTINtNtBa_3cmp7ReverseyEoyENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3q_16LayoutCalculatorRNtB3s_16TargetDataLayoutE17univariant_biasedB1g_NtB1i_19RustcEnumVariantIdxRRINtB3s_10LayoutDataB1g_B5f_EEs3_0E0EB1k_:.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %..i = select i1 %i.av, ptr %.sroa.015.06, ptr %.sroa.017.05
  %i.aw = xor i1 %i.av, true
  %i.ax = load i32, ptr %..i, align 4, !noalias !5710
  store i32 %i.ax, ptr %.sroa.019.04, align 4, !noalias !5710
  %.neg.i = sext i1 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %i.av to i64
  %i.az = getelementptr [4 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -4
  %exitcond.not = icmp eq i64 %i.w, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

bb.f:                                             ; preds = %._crit_edge
  %i.bb = icmp ult ptr %i.al, %i.s                ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.bb, ptr %i.al, ptr %i.aj
  %i.bc = load i32, ptr %.sroa.06.0..sroa.011.0, align 4
  store i32 %i.bc, ptr %i.am, align 4
  %i.bd = zext i1 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bd
  %i.bf = xor i1 %i.bb, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bg
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.sroa.011.1 = phi ptr [ %i.aj, %._crit_edge ], [ %i.bh, %bb.f ]
  %.sroa.06.1 = phi ptr [ %i.al, %._crit_edge ], [ %i.be, %bb.f ]
  %i.bi = icmp ne ptr %.sroa.06.1, %i.s
  %i.bj = icmp ne ptr %.sroa.011.1, %i.t
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bj, !prof !123
  br i1 %or.cond, label %bb.i, label %bb.h, !prof !123

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1g_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB34_16LayoutCalculatorRNtB36_16TargetDataLayoutE17univariant_biasedB1g_NtB1i_19RustcEnumVariantIdxRRINtB36_10LayoutDataB1g_B4T_EEs4_0E0EB1k_(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 2, 2305843009213693952) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality !guid !5717 {
.lr.ph:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = lshr i64 %1, 1                           ; 2 uses
  %i.f = add nsw i64 %1, -1                       ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr [4 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.aj, i64 4       ; 2 uses
  %i.p = getelementptr i8, ptr %i.ai, i64 4
  %i.q = and i64 %1, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.0.010 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.a ] ; 2 uses
  %.sroa.04.09 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.a ]
  %.sroa.06.08 = phi ptr [ %0, %.lr.ph ], [ %i.ab, %bb.a ] ; 2 uses
  %.sroa.011.07 = phi ptr [ %i.h, %.lr.ph ], [ %i.z, %bb.a ] ; 2 uses
  %.sroa.015.06 = phi ptr [ %i.i, %.lr.ph ], [ %i.aj, %bb.a ] ; 2 uses
  %.sroa.017.05 = phi ptr [ %i.g, %.lr.ph ], [ %i.ai, %bb.a ] ; 2 uses
  %.sroa.019.04 = phi ptr [ %i.j, %.lr.ph ], [ %i.ak, %bb.a ] ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.04.09, 1          ; 2 uses
  %.sroa.011.0.val = load i32, ptr %.sroa.011.07, align 4, !noundef !87 ; 2 uses
  %.sroa.06.0.val = load i32, ptr %.sroa.06.08, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.0.val, i32 %.sroa.011.0.val) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.0.val, i32 %.sroa.06.0.val) #47
  %.val2.i = load i64, ptr %i.d, align 16, !noundef !87 ; 2 uses
  %.val3.i = load i128, ptr %i.k, align 16
  %.val4.i = load i64, ptr %i.c, align 16, !noundef !87 ; 2 uses
  %.val5.i = load i128, ptr %i.l, align 16
  %i.t = icmp eq i64 %.val2.i, %.val4.i
  %i.u = icmp ult i64 %.val2.i, %.val4.i
  %i.v = icmp ult i128 %.val3.i, %.val5.i
  %.sroa.0.0.i.i = select i1 %i.t, i1 %i.v, i1 %i.u ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = xor i1 %.sroa.0.0.i.i, true
  %i.x = select i1 %.sroa.0.0.i.i, i32 %.sroa.011.0.val, i32 %.sroa.06.0.val
  store i32 %i.x, ptr %.sroa.0.010, align 4, !noalias !5718
  %i.y = zext i1 %.sroa.0.0.i.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.07, i64 %i.y ; 4 uses
  %i.aa = zext i1 %i.w to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.08, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 4 ; 2 uses
  %.sroa.017.0.val = load i32, ptr %.sroa.017.05, align 4, !noundef !87 ; 2 uses
  %.sroa.015.0.val = load i32, ptr %.sroa.015.06, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.0.val, i32 %.sroa.017.0.val) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1R_B2C_EEs4_0B1V_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %.0.val, i32 %.sroa.015.0.val) #47
  %.val2.i23 = load i64, ptr %i.b, align 16, !noundef !87 ; 2 uses
  %.val3.i24 = load i128, ptr %i.m, align 16
  %.val4.i25 = load i64, ptr %i.a, align 16, !noundef !87 ; 2 uses
  %.val5.i26 = load i128, ptr %i.n, align 16
  %i.ad = icmp eq i64 %.val2.i23, %.val4.i25
  %i.ae = icmp ult i64 %.val2.i23, %.val4.i25
  %i.af = icmp ult i128 %.val3.i24, %.val5.i26
  %.sroa.0.0.i.i27 = select i1 %i.ad, i1 %i.af, i1 %i.ae ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = xor i1 %.sroa.0.0.i.i27, true
  %i.ah = select i1 %.sroa.0.0.i.i27, i32 %.sroa.015.0.val, i32 %.sroa.017.0.val
  store i32 %i.ah, ptr %.sroa.019.04, align 4, !noalias !5719
  %.neg.i = sext i1 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %.sroa.0.0.i.i27 to i64
  %i.aj = getelementptr [4 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -4
  %exitcond.not = icmp eq i64 %i.s, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.al = icmp ult ptr %i.ab, %i.o                ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.al, ptr %i.ab, ptr %i.z
  %i.am = load i32, ptr %.sroa.06.0..sroa.011.0, align 4
  store i32 %i.am, ptr %i.ac, align 4
  %i.an = zext i1 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.an
  %i.ap = xor i1 %i.al, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aq
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sroa.011.1 = phi ptr [ %i.z, %._crit_edge ], [ %i.ar, %bb.b ]
  %.sroa.06.1 = phi ptr [ %i.ab, %._crit_edge ], [ %i.ao, %bb.b ]
  %i.as = icmp ne ptr %.sroa.06.1, %i.o
  %i.at = icmp ne ptr %.sroa.011.1, %i.p
  %or.cond = select i1 %i.as, i1 true, i1 %i.at, !prof !123
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !123

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 2, 192153584101141163) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 !guid !5744 {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [48 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -48
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24
  %i.g = getelementptr i8, ptr %i.ah, i64 48      ; 2 uses
  %i.h = getelementptr i8, ptr %i.ag, i64 48
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24
  %.sroa.0.010 = phi ptr [ %i.x, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.09 = phi i64 [ %i.k, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.08 = phi ptr [ %i.w, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.011.07 = phi ptr [ %i.u, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %.sroa.015.06 = phi ptr [ %i.ah, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %.sroa.017.05 = phi ptr [ %i.ag, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.04 = phi ptr [ %i.ai, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.09, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  %i.l = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.011.07, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.06.08) ; 2 uses
  %.not.i.i = icmp eq i8 %i.l, 2
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.m = trunc nuw i8 %i.l to i1
  br label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.011.07, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.08, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5750)
  %i.p = load i64, ptr %i.n, align 16, !alias.scope !5751, !noundef !87
  %i.q = load i64, ptr %i.o, align 16, !alias.scope !5752, !noundef !87
  %i.r = icmp slt i64 %i.p, %i.q
  br label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.m, %bb.a ], [ %i.r, %bb.b ] ; 3 uses
  %..i21 = select i1 %.sroa.0.0.i.i, ptr %.sroa.011.07, ptr %.sroa.06.08
  %i.s = xor i1 %.sroa.0.0.i.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.010, ptr noundef nonnull align 16 dereferenceable(48) %..i21, i64 48, i1 false), !noalias !5753
  %i.t = zext i1 %.sroa.0.0.i.i to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.07, i64 %i.t ; 4 uses
  %i.v = zext i1 %i.s to i64
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.08, i64 %i.v ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5757)
  %i.y = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.017.05, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.015.06) ; 2 uses
  %.not.i.i22 = icmp eq i8 %i.y, 2
  br i1 %.not.i.i22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit
  %i.z = trunc nuw i8 %i.y to i1
  br label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24

bb.d:                                             ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.05, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.015.06, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5759)
  %i.ac = load i64, ptr %i.aa, align 16, !alias.scope !5760, !noundef !87
  %i.ad = load i64, ptr %i.ab, align 16, !alias.scope !5761, !noundef !87
  %i.ae = icmp slt i64 %i.ac, %i.ad
  br label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit24: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i23 = phi i1 [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i23, ptr %.sroa.015.06, ptr %.sroa.017.05
  %i.af = xor i1 %.sroa.0.0.i.i23, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.019.04, ptr noundef nonnull align 16 dereferenceable(48) %..i, i64 48, i1 false), !noalias !5762
  %.neg.i = sext i1 %i.af to i64
  %i.ag = getelementptr [48 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %.sroa.0.0.i.i23 to i64
  %i.ah = getelementptr [48 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -48
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  %i.aj = icmp ult ptr %i.w, %i.g                 ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.aj, ptr %i.w, ptr %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.06.0..sroa.011.0, i64 48, i1 false)
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.ak
  %i.am = xor i1 %i.aj, true
  %i.an = zext i1 %i.am to i64
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %i.an
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.011.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ao, %bb.e ]
  %.sroa.06.1 = phi ptr [ %i.w, %._crit_edge ], [ %i.al, %bb.e ]
  %i.ap = icmp ne ptr %.sroa.06.1, %i.g
  %i.aq = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq, !prof !123
  br i1 %or.cond, label %bb.h, label %bb.g, !prof !123

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality !guid !5767 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !87 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !87 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.05, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i32 %.val8.i, ptr %.sroa.0.0.i8, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !noundef !87 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !5768
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1r_9predicate19ProjectionPredicateB2e_EENCINvMB8_SB1m_20sort_unstable_by_keyNtNtB2i_6def_id6TermIdNCNvMs1_NtB2k_5lowerNtB51_17TyLoweringContext15lower_dyn_traits4_0E0EB2k_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree readnone align 8 captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality !guid !5811 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.j, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1d_9predicate19ProjectionPredicateB20_EENCINvMB8_SB18_20sort_unstable_by_keyNtNtB24_6def_id6TermIdNCNvMs1_NtB26_5lowerNtB4N_17TyLoweringContext15lower_dyn_traits4_0E0EB26_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1d_9predicate19ProjectionPredicateB20_EENCINvMB8_SB18_20sort_unstable_by_keyNtNtB24_6def_id6TermIdNCNvMs1_NtB26_5lowerNtB4N_17TyLoweringContext15lower_dyn_traits4_0E0EB26_.exit
  %.sroa.0.06 = phi ptr [ %i.l, %.lr.ph ], [ %i.bv, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1d_9predicate19ProjectionPredicateB20_EENCINvMB8_SB18_20sort_unstable_by_keyNtNtB24_6def_id6TermIdNCNvMs1_NtB26_5lowerNtB4N_17TyLoweringContext15lower_dyn_traits4_0E0EB26_.exit ] ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.06, i64 24, i1 false), !noalias !5813
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !5814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.u, i64 24, i1 false), !noalias !5815
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !5816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5812
  call void @llvm.experimental.noalias.scope.decl(metadata !5817)
  call void @llvm.experimental.noalias.scope.decl(metadata !5818)
  call void @llvm.experimental.noalias.scope.decl(metadata !5819)
  call void @llvm.experimental.noalias.scope.decl(metadata !5820)
  call void @llvm.experimental.noalias.scope.decl(metadata !5821)
  call void @llvm.experimental.noalias.scope.decl(metadata !5822)
  %i.v = load i32, ptr %i.h, align 4, !range !88, !alias.scope !5823, !noalias !5812, !noundef !87 ; 2 uses
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = load i32, ptr %i.g, align 4, !range !88, !alias.scope !5824, !noalias !5812, !noundef !87 ; 3 uses
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = sub nsw i8 %i.w, %i.y                    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc nuw i32 %i.v to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ne i32 %i.x, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load i32, ptr %i.m, align 4, !range !103, !alias.scope !5823, !noalias !5812, !noundef !87 ; 2 uses
  %i.ae = load i32, ptr %i.n, align 4, !range !103, !alias.scope !5824, !noalias !5812, !noundef !87 ; 2 uses
  %i.af = call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.ae)
  %i.ag = icmp eq i32 %i.ad, %i.ae
  br i1 %i.ag, label %bb.i, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp eq i32 %i.x, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i32, ptr %i.m, align 4, !range !103, !alias.scope !5823, !noalias !5812, !noundef !87 ; 2 uses
  %i.aj = load i32, ptr %i.n, align 4, !range !103, !alias.scope !5824, !noalias !5812, !noundef !87 ; 2 uses
  %i.ak = call i8 @llvm.ucmp.i8.i32(i32 %i.ai, i32 %i.aj)
  %i.al = icmp eq i32 %i.ai, %i.aj
  br i1 %i.al, label %bb.h, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.o, align 4, !alias.scope !5823, !noalias !5812, !noundef !87
  %i.an = load i32, ptr %i.p, align 4, !alias.scope !5824, !noalias !5812, !noundef !87
  %i.ao = call i8 @llvm.ucmp.i8.i32(i32 %i.am, i32 %i.an)
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.o, align 4, !alias.scope !5823, !noalias !5812, !noundef !87
  %i.aq = load i32, ptr %i.p, align 4, !alias.scope !5824, !noalias !5812, !noundef !87
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB3a_16LayoutCalculatorRNtB3c_16TargetDataLayoutE17univariant_biasedB1m_NtB1o_19RustcEnumVariantIdxRRINtB3c_10LayoutDataB1m_B4Z_EEs4_0E0EB1q_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !87, !align !94, !noundef !87
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %i.d, %bb.d ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyTyoENCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB2W_16LayoutCalculatorRNtB2Y_16TargetDataLayoutE17univariant_biasedB18_NtB1a_19RustcEnumVariantIdxRRINtB2Y_10LayoutDataB18_B4L_EEs4_0E0EB1c_(ptr noundef %0, ptr noundef %.sroa.0.05, ptr %.val)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality !guid !5920 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !87 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !87 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.05, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i32 %.val8.i, ptr %.sroa.0.0.i8, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !noundef !87 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !5921
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyNtB1q_5PatIdNCNvMNtB1s_10usefulnessINtB50_19BranchPatUsefulnessB2w_E12is_redundant0E0EB2E_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #12 personality ptr @rust_eh_personality !guid !5926 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit
  %.sroa.0.05 = phi ptr [ %i.t, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load ptr, ptr %.sroa.0.05, align 8, !nonnull !87, !align !124, !noundef !87 ; 2 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !87, !align !124, !noundef !87 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val9.i, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !noundef !87
  %i.g = getelementptr inbounds nuw i8, ptr %.val10.i, i64 120
  %i.h = load i32, ptr %i.g, align 8, !noundef !87
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.j = ptrtoint ptr %.val10.i to i64
  store i64 %i.j, ptr %.sroa.0.05, align 8
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9.preheader

.lr.ph9.preheader:                                ; preds = %.preheader.preheader
  %i.l = load i32, ptr %i.e, align 8, !noundef !87
  br label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.m = ptrtoint ptr %.val8.i to i64
  store i64 %i.m, ptr %.sroa.0.0.i8, align 8
  %i.n = icmp eq ptr %i.o, %0
  br i1 %i.n, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.o, %.preheader ], [ %i.d, %.lr.ph9.preheader ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !nonnull !87, !align !124, !noundef !87 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val8.i, i64 120
  %i.q = load i32, ptr %i.p, align 8, !noundef !87
  %i.r = icmp ult i32 %i.l, %i.q
  br i1 %i.r, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  %i.s = ptrtoint ptr %.val9.i to i64
  store i64 %i.s, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !5927
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB18_11sort_by_keyNtB1c_5PatIdNCNvMNtB1e_10usefulnessINtB4M_19BranchPatUsefulnessB2i_E12is_redundant0E0EB2q_.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality !guid !5951 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.06 = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5952)
  call void @llvm.experimental.noalias.scope.decl(metadata !5953)
  call void @llvm.experimental.noalias.scope.decl(metadata !5954)
  call void @llvm.experimental.noalias.scope.decl(metadata !5955)
  %i.g = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.sroa.0.06, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f)
  switch i8 %i.g, label %bb.e [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i
    i8 0, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !5956)
  call void @llvm.experimental.noalias.scope.decl(metadata !5957)
  %i.j = load i64, ptr %i.h, align 16, !alias.scope !5958, !noundef !87
  %i.k = load i64, ptr %i.i, align 16, !alias.scope !5959, !noundef !87
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.e:                                             ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.06, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.06, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.m = icmp eq ptr %i.f, %0
  br i1 %i.m, label %.noexc._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.n = load i64, ptr %i.e, align 16
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.o, %.backedge.i ] ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -48 ; 4 uses
  %i.p = invoke noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  switch i8 %i.p, label %.backedge.i [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i
    i8 0, label %.noexc._crit_edge.i
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i: ; preds = %.noexc.i
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16
  %i.r = load i64, ptr %i.q, align 16, !alias.scope !5960, !noundef !87
  %i.s = icmp slt i64 %i.n, %i.r
  br i1 %i.s, label %.backedge.i, label %.noexc._crit_edge.i

.backedge.i:                                      ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.07.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.t = icmp eq ptr %i.o, %0
  br i1 %i.t, label %.noexc._crit_edge.i, label %bb.f

.noexc._crit_edge.i:                              ; preds = %.backedge.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i, %.noexc.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %0, %.backedge.i ], [ %.sroa.0.07.i, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit10.i ], [ %.sroa.0.07.i, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.0.lcssa.i, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.07.i, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5962
  resume { ptr, i32 } %i.u

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.d, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit.i, %.noexc._crit_edge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTooENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality !guid !5967 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.05 = phi ptr [ %i.q, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val11.i = load i128, ptr %.sroa.0.05, align 16, !noundef !87 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 16
  %.val12.i = load i128, ptr %i.e, align 16       ; 3 uses
  %.val13.i = load i128, ptr %i.d, align 16, !noundef !87 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val14.i = load i128, ptr %i.f, align 16
  %i.g = icmp eq i128 %.val11.i, %.val13.i
  %i.h = icmp ult i128 %.val11.i, %.val13.i
  %i.i = icmp ult i128 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.g, i1 %i.i, i1 %i.h
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.j = icmp eq ptr %i.d, %0
  br i1 %i.j, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 16 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.l, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val9.i = load i128, ptr %i.l, align 16, !noundef !87 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.0.i8, i64 -16
  %.val10.i = load i128, ptr %i.m, align 16
  %i.n = icmp eq i128 %.val11.i, %.val9.i
  %i.o = icmp ult i128 %.val11.i, %.val9.i
  %i.p = icmp ult i128 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.n, i1 %i.p, i1 %i.o
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ] ; 2 uses
  store i128 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 16, !noalias !5968
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store i128 %.val12.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 16, !noalias !5968
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailTooENvYB18_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality !guid !5976 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !alias.scope !5977, !noundef !87 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !alias.scope !5978, !noundef !87 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.05, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i32 %.val8.i, ptr %.sroa.0.0.i8, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !alias.scope !5978, !noundef !87 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !5979
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailmNvYmNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #11 personality ptr @rust_eh_personality !guid !5987 {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val9.i = load i128, ptr %.sroa.0.05, align 16, !alias.scope !5988, !noundef !87 ; 3 uses
  %.val10.i = load i128, ptr %i.d, align 16, !alias.scope !5989, !noundef !87
  %i.e = icmp slt i128 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
end_hunk_2
