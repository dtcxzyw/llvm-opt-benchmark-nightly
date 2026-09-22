Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-4047532e90233b0b.zlib_rs.a66f7de6d60785ff-cgu.0?download=true
inline.NumInlined: 179
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate16flush_block_only:bb.a
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dn
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !18 ; 2 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = icmp ult i32 %i.dq, 573
  br i1 %i.ds, label %bb.n, label %bb.w

bb.m:                                             ; preds = %._crit_edge91.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.dn, i64 573, ptr nonnull align 8 @4) #21, !noalias !18
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i16 0, ptr %i.du, align 2, !noalias !18
  %i.dv = add nuw nsw i64 %i.dn, 1
  %i.dw = call { i64, i64 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i64 %i.dv, i64 573), !noalias !18 ; 2 uses
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1
  store i64 %i.dx, ptr %i.v, align 8, !noalias !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !noalias !18
  %i.ea = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.v), !noalias !18 ; 2 uses
  %i.eb = extractvalue { i64, i64 } %i.ea, 0
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ed = extractvalue { i64, i64 } %i.ea, 1      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bl, i64 192 ; 7 uses
  %i.ef = icmp eq i64 %.fr138.i.i.i, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bl, i64 200 ; 2 uses
  br i1 %i.ef, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %.backedge.us.i.i.i
  %i.eh = phi i64 [ %i.fr, %.backedge.us.i.i.i ], [ %i.ed, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.0104.us.i.i.i = phi i32 [ %spec.select62.us.i.i.i, %.backedge.us.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.ei = icmp ult i64 %i.eh, 573
  br i1 %i.ei, label %bb.o, label %.split.us.i.i.i

bb.o:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !18 ; 2 uses
  %i.el = zext i32 %i.ek to i64                   ; 5 uses
  %i.em = icmp ult i32 %i.ek, 573
  br i1 %i.em, label %bb.p, label %.split106.us.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !noalias !18 ; 2 uses
  %i.eq = zext i16 %i.ep to i64                   ; 2 uses
  %i.er = icmp ult i16 %i.ep, 573
  br i1 %i.er, label %bb.q, label %.split109.us.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !noalias !18
  %i.ev = add i16 %i.eu, 1                        ; 2 uses
  %i.ew = icmp ugt i16 %i.ev, %.fr.i.i.i
  %spec.select.us.i.i.i = call i16 @llvm.umin.i16(i16 %i.ev, i16 %.fr.i.i.i) ; 3 uses
  %i.ex = zext i1 %i.ew to i32
  %spec.select62.us.i.i.i = add i32 %.sroa.0.0104.us.i.i.i, %i.ex ; 2 uses
  store i16 %spec.select.us.i.i.i, ptr %i.eo, align 2, !noalias !18
  %i.ey = icmp ult i64 %i.cz, %i.el
  br i1 %i.ey, label %.backedge.us.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ez = zext i16 %spec.select.us.i.i.i to i64   ; 3 uses
  %i.fa = icmp ult i16 %spec.select.us.i.i.i, 16
  br i1 %i.fa, label %bb.s, label %.split112.us.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ez ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !noalias !18
  %i.fd = add i16 %i.fc, 1
  store i16 %i.fd, ptr %i.fb, align 2, !noalias !18
  %.not61.us.i.i.i = icmp ugt i64 %i.dj, %i.el
  br i1 %.not61.us.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = sub nuw nsw i64 %i.el, %i.dj            ; 3 uses
  %i.ff = icmp ult i64 %i.fe, %i.dh
  br i1 %i.ff, label %bb.u, label %.split115.us.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !18
  %i.fi = zext i8 %i.fh to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.010.0.us.i.i.i = phi i64 [ %i.fi, %bb.u ], [ 0, %bb.s ]
  %i.fj = load i16, ptr %i.en, align 4, !noalias !18
  %i.fk = zext i16 %i.fj to i64
  %i.fl = add nuw nsw i64 %.sroa.010.0.us.i.i.i, %i.ez
  %i.fm = mul nuw nsw i64 %i.fl, %i.fk
  %i.fn = load i64, ptr %i.ee, align 64, !noalias !18
  %i.fo = add i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.ee, align 64, !noalias !18
  br label %.backedge.us.i.i.i

.backedge.us.i.i.i:                               ; preds = %bb.v, %bb.q
  %i.fp = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.v), !noalias !18 ; 2 uses
  %i.fq = extractvalue { i64, i64 } %i.fp, 0
  %i.fr = extractvalue { i64, i64 } %i.fp, 1
  %i.fs = trunc nuw i64 %i.fq to i1
  br i1 %i.fs, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i

bb.w:                                             ; preds = %bb.l
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.dr, i64 573, ptr nonnull align 8 @5) #21, !noalias !18
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.backedge.i.i.i
  %i.ft = phi i64 [ %i.io, %.backedge.i.i.i ], [ %i.ed, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.0104.i.i.i = phi i32 [ %spec.select62.i.i.i, %.backedge.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.fu = icmp ult i64 %i.ft, 573
  br i1 %i.fu, label %bb.am, label %.split.us.i.i.i

._crit_edge.i.i.i:                                ; preds = %.backedge.i.i.i, %.backedge.us.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ %spec.select62.us.i.i.i, %.backedge.us.i.i.i ], [ %spec.select62.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %i.fv = icmp eq i32 %.sroa.0.0.lcssa.i.i.i, 0
  br i1 %i.fv, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i
  %i.fw = zext i16 %.fr.i.i.i to i64              ; 4 uses
  %i.fx = icmp ult i16 %.fr.i.i.i, 16
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.fw ; 2 uses
  br i1 %i.fx, label %.preheader.split.us.i.i.i, label %.preheader.split.i.i.i

.preheader.split.us.i.i.i:                        ; preds = %.preheader.i.i.i, %bb.z
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.gk, %bb.z ], [ %.sroa.0.0.lcssa.i.i.i, %.preheader.i.i.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.preheader.split.us.i.i.i
  %.sroa.012.0.in.us.i.i.i = phi i64 [ %i.fw, %.preheader.split.us.i.i.i ], [ %.sroa.012.0.us.i.i.i, %bb.y ]
  %.sroa.012.0.us.i.i.i = add nsw i64 %.sroa.012.0.in.us.i.i.i, -1 ; 5 uses
  %i.fz = icmp ult i64 %.sroa.012.0.us.i.i.i, 16
  br i1 %i.fz, label %bb.y, label %.split120.us.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.sroa.012.0.us.i.i.i
  %i.gb = load i16, ptr %i.ga, align 2, !noalias !18 ; 2 uses
  %i.gc = icmp eq i16 %i.gb, 0
  br i1 %i.gc, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.sroa.012.0.us.i.i.i ; 2 uses
  %i.ge = add i16 %i.gb, -1
  store i16 %i.ge, ptr %i.gd, align 2, !noalias !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 2 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !noalias !18
  %i.gh = add i16 %i.gg, 2
  store i16 %i.gh, ptr %i.gf, align 2, !noalias !18
  %i.gi = load i16, ptr %i.fy, align 2, !noalias !18
  %i.gj = add i16 %i.gi, -1
  store i16 %i.gj, ptr %i.fy, align 2, !noalias !18
  %i.gk = add i32 %.sroa.0.1.us.i.i.i, -2         ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 1
  br i1 %i.gl, label %.split125.us.i.i.i, label %.preheader.split.us.i.i.i

.preheader.split.i.i.i:                           ; preds = %.preheader.i.i.i, %bb.aa
  %.sroa.012.0.in.i.i.i = phi i64 [ %.sroa.012.0.i.i.i, %bb.aa ], [ %i.fw, %.preheader.i.i.i ]
  %.sroa.012.0.i.i.i = add nsw i64 %.sroa.012.0.in.i.i.i, -1 ; 5 uses
  %i.gm = icmp ult i64 %.sroa.012.0.i.i.i, 16
  br i1 %i.gm, label %bb.aa, label %.split120.us.i.i.i

bb.aa:                                            ; preds = %.preheader.split.i.i.i
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.sroa.012.0.i.i.i
  %i.go = load i16, ptr %i.gn, align 2, !noalias !18
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %.preheader.split.i.i.i, label %bb.ab

.split120.us.i.i.i:                               ; preds = %.preheader.split.i.i.i, %bb.x
  %.us-phi121.i.i.i = phi i64 [ %.sroa.012.0.us.i.i.i, %bb.x ], [ %.sroa.012.0.i.i.i, %.preheader.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !18
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp eq i64 %.sroa.012.0.i.i.i, 15
  br i1 %.not.i.i.i, label %.split123.us.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.fw, i64 16, ptr nonnull align 8 @8) #21, !noalias !18
  unreachable

.split123.us.i.i.i:                               ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !18
  unreachable

.split125.us.i.i.i:                               ; preds = %bb.z
  %i.gq = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i.i), !noalias !18
  %i.gr = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.gq), !noalias !18
  %i.gs = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.gr), !noalias !18
  store i48 %i.gs, ptr %i.u, align 8, !noalias !18
  %i.gt = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.u), !noalias !18 ; 2 uses
  %i.gu = extractvalue { i16, i16 } %i.gt, 0
  %i.gv = trunc i16 %i.gu to i1
  br i1 %i.gv, label %.lr.ph136.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i

.lr.ph136.i.i.i:                                  ; preds = %.split125.us.i.i.i, %.outer.split.us.i.i.i
  %.pn.i.i.i = phi { i16, i16 } [ %2, %.outer.split.us.i.i.i ], [ %i.gt, %.split125.us.i.i.i ]
  %.sroa.016.0134.i.i.i = phi i64 [ %.sroa.016.1.ph.lcssa.i.i.i, %.outer.split.us.i.i.i ], [ 573, %.split125.us.i.i.i ] ; 2 uses
  %i.gw = extractvalue { i16, i16 } %.pn.i.i.i, 1 ; 5 uses
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = icmp ult i16 %i.gw, 16
  br i1 %i.gy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph136.i.i.i
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.gx
  %i.ha = load i16, ptr %i.gz, align 2, !noalias !18 ; 2 uses
  %.not59130.i.i.i = icmp eq i16 %i.ha, 0
  br i1 %.not59130.i.i.i, label %.outer.split.us.i.i.i, label %.outer.split.i.i.i

bb.ae:                                            ; preds = %.lr.ph136.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.gx, i64 16, ptr nonnull align 8 @9) #21, !noalias !18
  unreachable

bb.af:                                            ; preds = %.outer.split.i.i.i, %bb.ag
  %.sroa.016.1.i.i.i = phi i64 [ %i.hb, %bb.ag ], [ %.sroa.016.1.ph131.i.i.i, %.outer.split.i.i.i ]
  %i.hb = add i64 %.sroa.016.1.i.i.i, -1          ; 6 uses
  %i.hc = icmp ult i64 %i.hb, 573
  br i1 %i.hc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !noalias !18 ; 2 uses
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %i.hg = icmp ult i64 %i.cz, %i.hf
  br i1 %i.hg, label %bb.af, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.hb, i64 573, ptr nonnull align 8 @10) #21, !noalias !18
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.hh = icmp ult i32 %i.he, 573
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.hf ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2 ; 3 uses
  %i.hk = load i16, ptr %i.hj, align 2, !noalias !18
  %.not60.i.i.i = icmp eq i16 %i.hk, %i.gw
  br i1 %.not60.i.i.i, label %.outer.i.i.i, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.hf, i64 573, ptr nonnull align 8 @11) #21, !noalias !18
  unreachable

.outer.i.i.i:                                     ; preds = %bb.al, %bb.aj
  %i.hl = add i16 %.sroa.021.0.ph132.i.i.i, -1    ; 2 uses
  %.not59.i.i.i = icmp eq i16 %i.hl, 0
  br i1 %.not59.i.i.i, label %.outer.split.us.i.i.i, label %.outer.split.i.i.i

.outer.split.us.i.i.i:                            ; preds = %.outer.i.i.i, %bb.ad
  %.sroa.016.1.ph.lcssa.i.i.i = phi i64 [ %.sroa.016.0134.i.i.i, %bb.ad ], [ %i.hb, %.outer.i.i.i ]
  %2 = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.u), !noalias !18 ; 2 uses
  %3 = extractvalue { i16, i16 } %2, 0
  %4 = trunc i16 %3 to i1
  br i1 %4, label %.lr.ph136.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i

.outer.split.i.i.i:                               ; preds = %bb.ad, %.outer.i.i.i
  %.sroa.021.0.ph132.i.i.i = phi i16 [ %i.hl, %.outer.i.i.i ], [ %i.ha, %bb.ad ]
  %.sroa.016.1.ph131.i.i.i = phi i64 [ %i.hb, %.outer.i.i.i ], [ %.sroa.016.0134.i.i.i, %bb.ad ]
  br label %bb.af

bb.al:                                            ; preds = %bb.aj
  %i.hm = load i16, ptr %i.hi, align 4, !noalias !18
  %i.hn = mul i16 %i.hm, %i.gw
  %i.ho = zext i16 %i.hn to i64
  %i.hp = load i64, ptr %i.ee, align 64, !noalias !18
  %i.hq = add i64 %i.hp, %i.ho                    ; 2 uses
  store i64 %i.hq, ptr %i.ee, align 64, !noalias !18
  %i.hr = load i16, ptr %i.hj, align 2, !noalias !18
  %i.hs = load i16, ptr %i.hi, align 4, !noalias !18
  %i.ht = mul i16 %i.hs, %i.hr
  %i.hu = zext i16 %i.ht to i64
  %i.hv = sub i64 %i.hq, %i.hu
  store i64 %i.hv, ptr %i.ee, align 64, !noalias !18
  store i16 %i.gw, ptr %i.hj, align 2, !noalias !18
  br label %.outer.i.i.i

bb.am:                                            ; preds = %.lr.ph.split.i.i.i
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ft
  %i.hx = load i32, ptr %i.hw, align 4, !noalias !18 ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 8 uses
  %i.hz = icmp ult i32 %i.hx, 573
  br i1 %i.hz, label %bb.an, label %.split106.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.eh, %.lr.ph.split.us.i.i.i ], [ %i.ft, %.lr.ph.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !18
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.hy ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !noalias !18 ; 2 uses
  %i.id = zext i16 %i.ic to i64                   ; 2 uses
  %i.ie = icmp ult i16 %i.ic, 573
  br i1 %i.ie, label %bb.ao, label %.split109.us.i.i.i

.split106.us.i.i.i:                               ; preds = %bb.am, %bb.o
  %.us-phi107.i.i.i = phi i64 [ %i.el, %bb.o ], [ %i.hy, %bb.am ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i.i, i64 573, ptr nonnull align 8 @13) #21, !noalias !18
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !noalias !18
  %i.ii = add i16 %i.ih, 1                        ; 2 uses
  %i.ij = icmp ugt i16 %i.ii, %.fr.i.i.i
  %spec.select.i.i.i = call i16 @llvm.umin.i16(i16 %i.ii, i16 %.fr.i.i.i) ; 3 uses
  %i.ik = zext i1 %i.ij to i32
  %spec.select62.i.i.i = add i32 %.sroa.0.0104.i.i.i, %i.ik ; 2 uses
  store i16 %spec.select.i.i.i, ptr %i.ib, align 2, !noalias !18
  %i.il = icmp ult i64 %i.cz, %i.hy
  br i1 %i.il, label %.backedge.i.i.i, label %bb.ap

.backedge.i.i.i:                                  ; preds = %bb.au, %bb.ao
  %i.im = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.v), !noalias !18 ; 2 uses
  %i.in = extractvalue { i64, i64 } %i.im, 0
  %i.io = extractvalue { i64, i64 } %i.im, 1
  %i.ip = trunc nuw i64 %i.in to i1
  br i1 %i.ip, label %.lr.ph.split.i.i.i, label %._crit_edge.i.i.i

.split109.us.i.i.i:                               ; preds = %bb.an, %bb.p
  %.us-phi110.i.i.i = phi i64 [ %i.eq, %bb.p ], [ %i.id, %bb.an ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i.i, i64 573, ptr nonnull align 8 @14) #21, !noalias !18
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.iq = zext i16 %spec.select.i.i.i to i64      ; 3 uses
  %i.ir = icmp ult i16 %spec.select.i.i.i, 16
  br i1 %i.ir, label %bb.aq, label %.split112.us.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.iq ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !noalias !18
  %i.iu = add i16 %i.it, 1
  store i16 %i.iu, ptr %i.is, align 2, !noalias !18
  %.not61.i.i.i = icmp ugt i64 %i.dj, %i.hy
  br i1 %.not61.i.i.i, label %bb.at, label %bb.ar

.split112.us.i.i.i:                               ; preds = %bb.ap, %bb.r
  %.us-phi113.i.i.i = phi i64 [ %i.ez, %bb.r ], [ %i.iq, %bb.ap ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !18
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.iv = sub nuw nsw i64 %i.hy, %i.dj            ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %i.dh
  br i1 %i.iw, label %bb.as, label %.split115.us.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.iv
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !18
  %i.iz = zext i8 %i.iy to i64
  br label %bb.at

.split115.us.i.i.i:                               ; preds = %bb.ar, %bb.t
  %.us-phi116.i.i.i = phi i64 [ %i.fe, %bb.t ], [ %i.iv, %bb.ar ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i.i, i64 %i.dh, ptr nonnull align 8 @16) #21, !noalias !18
  unreachable

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.010.0.i.i.i = phi i64 [ %i.iz, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %i.ja = load i16, ptr %i.ia, align 4, !noalias !18
  %i.jb = zext i16 %i.ja to i64                   ; 2 uses
  %i.jc = add nuw nsw i64 %.sroa.010.0.i.i.i, %i.iq
  %i.jd = mul nuw nsw i64 %i.jc, %i.jb
  %i.je = load i64, ptr %i.ee, align 64, !noalias !18
  %i.jf = add i64 %i.jd, %i.je
  store i64 %i.jf, ptr %i.ee, align 64, !noalias !18
  %i.jg = icmp ugt i64 %.fr138.i.i.i, %i.hy
  br i1 %i.jg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.hy
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jj = load i16, ptr %i.ji, align 2, !noalias !18
  %i.jk = zext i16 %i.jj to i64
  %i.jl = add nuw nsw i64 %.sroa.010.0.i.i.i, %i.jk
  %i.jm = mul nuw nsw i64 %i.jl, %i.jb
  %i.jn = load i64, ptr %i.eg, align 8, !noalias !18
  %i.jo = add i64 %i.jm, %i.jn
  store i64 %i.jo, ptr %i.eg, align 8, !noalias !18
  br label %.backedge.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.hy, i64 %.fr138.i.i.i, ptr nonnull align 8 @17) #21, !noalias !18
  unreachable

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i, %.lr.ph90.preheader.i.i
  %.sroa.05.088.i.i = phi i64 [ %i.jp, %.lr.ph90.i.i ], [ %i.cx, %.lr.ph90.preheader.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.y, ptr align 2 %i.bm, i64 573, i64 %.sroa.05.088.i.i)
  %i.jp = add nsw i64 %.sroa.05.088.i.i, -1       ; 2 uses
  %.not.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not.i.i, label %._crit_edge91.i.i, label %.lr.ph90.i.i

.peel.next.i:                                     ; preds = %.backedge.i.peel.i
  %i.jq = icmp slt i64 %.sroa.0.1.i.peel.i, 2     ; 2 uses
  %i.jr = add nsw i64 %.sroa.0.1.i.peel.i, 1      ; 4 uses
  %.sroa.04.0.i.i = select i1 %i.jq, i64 %i.jr, i64 0 ; 6 uses
  %.sroa.0.1.i.i = select i1 %i.jq, i64 %i.jr, i64 %.sroa.0.1.i.peel.i ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.jt = trunc nuw nsw i64 %.sroa.04.0.i.i to i32
  store i32 %i.jt, ptr %i.js, align 8
  %i.ju = icmp samesign ult i64 %.sroa.04.0.i.i, 573
  br i1 %i.ju, label %bb.aw, label %.loopexit.i

bb.aw:                                            ; preds = %.peel.next.i
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.04.0.i.i
  store i16 1, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.04.0.i.i
  store i8 0, ptr %i.jw, align 1
  %i.jx = load i64, ptr %i.ca, align 64
  %i.jy = add i64 %i.jx, -1
  store i64 %i.jy, ptr %i.ca, align 64
  br i1 %i.cb, label %._crit_edge.thread.i.i, label %bb.ax

._crit_edge.thread.i.i:                           ; preds = %bb.ay, %bb.aw, %.backedge.i.peel.i
  %.sroa.0.1.i.lcssa526.i = phi i64 [ %.sroa.0.1.i.peel.i, %.backedge.i.peel.i ], [ %.sroa.0.1.i.i, %bb.aw ], [ %.sroa.0.1.i.i, %bb.ay ] ; 2 uses
  store i64 2, ptr %i.y, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.lcssa526.i, ptr %i.jz, align 8
  br label %.lr.ph90.preheader.i.i

.loopexit.i:                                      ; preds = %.peel.next.i, %.lr.ph.i.i
  %.sroa.04.0.i.lcssa.i = phi i64 [ 573, %.lr.ph.i.i ], [ %i.jr, %.peel.next.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i.lcssa.i, i64 573, ptr nonnull align 8 @2) #21
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.ka = icmp ult i64 %.sroa.04.0.i.i, %i.bq
  br i1 %i.ka, label %bb.ay, label %.loopexit533.i

bb.ay:                                            ; preds = %bb.ax
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.04.0.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = zext i16 %i.kd to i64
  %i.kf = load i64, ptr %i.cc, align 8
  %i.kg = sub i64 %i.kf, %i.ke
  store i64 %i.kg, ptr %i.cc, align 8
  br label %._crit_edge.thread.i.i

.loopexit533.i:                                   ; preds = %bb.ax, %bb.j
  %.sroa.04.0.i.lcssa527.i = phi i64 [ %i.ce, %bb.j ], [ %i.jr, %bb.ax ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i.lcssa527.i, i64 %i.bq, ptr nonnull align 8 @3) #21
  unreachable

_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i: ; preds = %.outer.split.us.i.i.i, %.split125.us.i.i.i, %._crit_edge.i.i.i, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.x, ptr noundef nonnull align 2 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate9gen_codes(ptr align 2 %i.bm, i64 573, i64 %.sroa.0.0.lcssa189.i.i, ptr align 2 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.kh = load ptr, ptr %i.ac, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 352
  call void @_RINvNtCs4NRVxsYgnAr_4core3mem4swapINtNtCsehVNULHUZqJ_7zlib_rs7deflate8TreeDescKj23d_EEBB_(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ki)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef nonnull align 8 dereferenceable(264) @100, i64 264, i1 false)
  %i.kj = load ptr, ptr %i.ac, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 2664
  call void @_RINvNtCs4NRVxsYgnAr_4core3mem4swapINtNtCsehVNULHUZqJ_7zlib_rs7deflate8TreeDescKj3d_EEBB_(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.kk)
  %i.kl = load ptr, ptr %i.ac, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.km = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 12 uses
  %i.kn = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8            ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.ks = load i64, ptr %i.kr, align 8            ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2865) %i.kt, i8 0, i64 2865, i1 false), !alias.scope !19
  %i.ku = call { ptr, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexSNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueE9index_mutB1v_(i64 %i.ks, ptr nonnull align 2 %i.km, i64 61, ptr nonnull align 8 @1) ; 2 uses
  %i.kv = extractvalue { ptr, i64 } %i.ku, 0
  %i.kw = extractvalue { ptr, i64 } %i.ku, 1
  %i.kx = call fastcc i64 @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10initialize(ptr align 8 %i.t, ptr align 2 %i.kv, i64 %i.kw) ; 5 uses
  %.promoted.i9.i = load i64, ptr %i.t, align 8   ; 4 uses
  %i.ky = icmp ult i64 %.promoted.i9.i, 2
  br i1 %i.ky, label %.lr.ph.i72.i, label %._crit_edge.i10.i

.lr.ph.i72.i:                                     ; preds = %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 2308 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kl, i64 192 ; 4 uses
  %i.lb = icmp eq i64 %i.kq, 0                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kl, i64 200 ; 4 uses
  %i.ld = icmp slt i64 %i.kx, 2                   ; 2 uses
  %i.le = add nsw i64 %i.kx, 1                    ; 4 uses
  %.sroa.04.0.i74.peel.i = select i1 %i.ld, i64 %i.le, i64 0 ; 6 uses
  %.sroa.0.1.i75.peel.i = select i1 %i.ld, i64 %i.le, i64 %i.kx ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.promoted.i9.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = trunc nuw nsw i64 %.sroa.04.0.i74.peel.i to i32
  store i32 %i.lh, ptr %i.lg, align 4
  %i.li = icmp samesign ult i64 %.sroa.04.0.i74.peel.i, 61
  br i1 %i.li, label %bb.az, label %.loopexit537.i

bb.az:                                            ; preds = %.lr.ph.i72.i
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.sroa.04.0.i74.peel.i
  store i16 1, ptr %i.lj, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.sroa.04.0.i74.peel.i
  store i8 0, ptr %i.lk, align 1
  %i.ll = load i64, ptr %i.la, align 64
  %i.lm = add i64 %i.ll, -1
  store i64 %i.lm, ptr %i.la, align 64
  br i1 %i.lb, label %.backedge.i76.peel.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ln = icmp ult i64 %.sroa.04.0.i74.peel.i, %i.kq
  br i1 %i.ln, label %bb.bb, label %.loopexit538.i

bb.bb:                                            ; preds = %bb.ba
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.sroa.04.0.i74.peel.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.lq = load i16, ptr %i.lp, align 2
  %i.lr = zext i16 %i.lq to i64
  %i.ls = load i64, ptr %i.lc, align 8
  %i.lt = sub i64 %i.ls, %i.lr
  store i64 %i.lt, ptr %i.lc, align 8
  br label %.backedge.i76.peel.i

.backedge.i76.peel.i:                             ; preds = %bb.bb, %bb.az
  %i.lu = icmp eq i64 %.promoted.i9.i, 0
  br i1 %i.lu, label %.peel.next535.i, label %._crit_edge.thread.i77.i

._crit_edge.i10.i:                                ; preds = %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 %i.kx, ptr %i.lv, align 8
  %i.lw = lshr i64 %.promoted.i9.i, 1
  br label %.lr.ph90.preheader.i11.i

.lr.ph90.preheader.i11.i:                         ; preds = %._crit_edge.thread.i77.i, %._crit_edge.i10.i
  %i.lx = phi i64 [ 1, %._crit_edge.thread.i77.i ], [ %i.lw, %._crit_edge.i10.i ]
  %i.ly = phi ptr [ %i.sz, %._crit_edge.thread.i77.i ], [ %i.lv, %._crit_edge.i10.i ]
  %.sroa.0.0.lcssa189.i12.i = phi i64 [ %.sroa.0.1.i75.lcssa461.i, %._crit_edge.thread.i77.i ], [ %i.kx, %._crit_edge.i10.i ]
  br label %.lr.ph90.i13.i

._crit_edge91.i16.i:                              ; preds = %.lr.ph90.i13.i
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap22construct_huffman_tree(ptr align 8 %i.t, ptr align 2 %i.km, i64 61, i64 %i.ks)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.lz = load i64, ptr %i.ly, align 8, !noalias !20 ; 3 uses
  %i.ma = load ptr, ptr %i.z, align 8, !noalias !20 ; 6 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !noalias !20
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !noalias !20
  %.fr138.i.i17.i = freeze i64 %i.md              ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !noalias !20 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mh = load i64, ptr %i.mg, align 8, !noalias !20 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mj = load i64, ptr %i.mi, align 8, !noalias !20 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.ml = load i16, ptr %i.mk, align 8, !noalias !20
  %.fr.i.i18.i = freeze i16 %i.ml                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.r, i8 0, i64 32, i1 false), !noalias !20
  %i.mm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !noalias !20 ; 4 uses
  %i.mo = icmp ult i64 %i.mn, 573
  br i1 %i.mo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge91.i16.i
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.mn
  %i.mq = load i32, ptr %i.mp, align 4, !noalias !20 ; 2 uses
  %i.mr = zext i32 %i.mq to i64                   ; 2 uses
  %i.ms = icmp ult i32 %i.mq, 61
  br i1 %i.ms, label %bb.be, label %bb.bn

bb.bd:                                            ; preds = %._crit_edge91.i16.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.mn, i64 573, ptr nonnull align 8 @4) #21, !noalias !20
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.mr
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  store i16 0, ptr %i.mu, align 2, !noalias !20
  %i.mv = add nuw nsw i64 %i.mn, 1
  %i.mw = call { i64, i64 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i64 %i.mv, i64 573), !noalias !20 ; 2 uses
  %i.mx = extractvalue { i64, i64 } %i.mw, 0
  %i.my = extractvalue { i64, i64 } %i.mw, 1
  store i64 %i.mx, ptr %i.q, align 8, !noalias !20
  %i.mz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.my, ptr %i.mz, align 8, !noalias !20
  %i.na = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.q), !noalias !20 ; 2 uses
  %i.nb = extractvalue { i64, i64 } %i.na, 0
  %i.nc = trunc nuw i64 %i.nb to i1
  br i1 %i.nc, label %.lr.ph.i.i19.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i

.lr.ph.i.i19.i:                                   ; preds = %bb.be
  %i.nd = extractvalue { i64, i64 } %i.na, 1      ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kl, i64 192 ; 7 uses
  %i.nf = icmp eq i64 %.fr138.i.i17.i, 0
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kl, i64 200 ; 2 uses
  br i1 %i.nf, label %.lr.ph.split.us.i.i65.i, label %.lr.ph.split.i.i20.i

.lr.ph.split.us.i.i65.i:                          ; preds = %.lr.ph.i.i19.i, %.backedge.us.i.i71.i
  %i.nh = phi i64 [ %i.or, %.backedge.us.i.i71.i ], [ %i.nd, %.lr.ph.i.i19.i ] ; 3 uses
  %.sroa.0.0104.us.i.i66.i = phi i32 [ %spec.select62.us.i.i68.i, %.backedge.us.i.i71.i ], [ 0, %.lr.ph.i.i19.i ]
  %i.ni = icmp ult i64 %i.nh, 573
  br i1 %i.ni, label %bb.bf, label %.split.us.i.i22.i

bb.bf:                                            ; preds = %.lr.ph.split.us.i.i65.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.nh
  %i.nk = load i32, ptr %i.nj, align 4, !noalias !20 ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 5 uses
  %i.nm = icmp ult i32 %i.nk, 61
  br i1 %i.nm, label %bb.bg, label %.split106.us.i.i24.i

bb.bg:                                            ; preds = %bb.bf
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.nl ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2 ; 2 uses
  %i.np = load i16, ptr %i.no, align 2, !noalias !20 ; 2 uses
  %i.nq = zext i16 %i.np to i64                   ; 2 uses
  %i.nr = icmp ult i16 %i.np, 61
  br i1 %i.nr, label %bb.bh, label %.split109.us.i.i26.i

bb.bh:                                            ; preds = %bb.bg
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  %i.nu = load i16, ptr %i.nt, align 2, !noalias !20
  %i.nv = add i16 %i.nu, 1                        ; 2 uses
  %i.nw = icmp ugt i16 %i.nv, %.fr.i.i18.i
  %spec.select.us.i.i67.i = call i16 @llvm.umin.i16(i16 %i.nv, i16 %.fr.i.i18.i) ; 3 uses
  %i.nx = zext i1 %i.nw to i32
  %spec.select62.us.i.i68.i = add i32 %.sroa.0.0104.us.i.i66.i, %i.nx ; 2 uses
  store i16 %spec.select.us.i.i67.i, ptr %i.no, align 2, !noalias !20
  %i.ny = icmp ult i64 %i.lz, %i.nl
  br i1 %i.ny, label %.backedge.us.i.i71.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nz = zext i16 %spec.select.us.i.i67.i to i64 ; 3 uses
  %i.oa = icmp ult i16 %spec.select.us.i.i67.i, 16
  br i1 %i.oa, label %bb.bj, label %.split112.us.i.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.nz ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 2, !noalias !20
  %i.od = add i16 %i.oc, 1
  store i16 %i.od, ptr %i.ob, align 2, !noalias !20
  %.not61.us.i.i69.i = icmp ugt i64 %i.mj, %i.nl
  br i1 %.not61.us.i.i69.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oe = sub nuw nsw i64 %i.nl, %i.mj            ; 3 uses
  %i.of = icmp ult i64 %i.oe, %i.mh
  br i1 %i.of, label %bb.bl, label %.split115.us.i.i33.i

bb.bl:                                            ; preds = %bb.bk
  %i.og = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.oe
  %i.oh = load i8, ptr %i.og, align 1, !noalias !20
  %i.oi = zext i8 %i.oh to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.010.0.us.i.i70.i = phi i64 [ %i.oi, %bb.bl ], [ 0, %bb.bj ]
  %i.oj = load i16, ptr %i.nn, align 4, !noalias !20
  %i.ok = zext i16 %i.oj to i64
  %i.ol = add nuw nsw i64 %.sroa.010.0.us.i.i70.i, %i.nz
  %i.om = mul nuw nsw i64 %i.ol, %i.ok
  %i.on = load i64, ptr %i.ne, align 64, !noalias !20
  %i.oo = add i64 %i.om, %i.on
  store i64 %i.oo, ptr %i.ne, align 64, !noalias !20
  br label %.backedge.us.i.i71.i

.backedge.us.i.i71.i:                             ; preds = %bb.bm, %bb.bh
  %i.op = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.q), !noalias !20 ; 2 uses
  %i.oq = extractvalue { i64, i64 } %i.op, 0
  %i.or = extractvalue { i64, i64 } %i.op, 1
  %i.os = trunc nuw i64 %i.oq to i1
  br i1 %i.os, label %.lr.ph.split.us.i.i65.i, label %._crit_edge.i.i37.i

bb.bn:                                            ; preds = %bb.bc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.mr, i64 61, ptr nonnull align 8 @5) #21, !noalias !20
  unreachable

.lr.ph.split.i.i20.i:                             ; preds = %.lr.ph.i.i19.i, %.backedge.i.i36.i
  %i.ot = phi i64 [ %i.ro, %.backedge.i.i36.i ], [ %i.nd, %.lr.ph.i.i19.i ] ; 3 uses
  %.sroa.0.0104.i.i21.i = phi i32 [ %spec.select62.i.i29.i, %.backedge.i.i36.i ], [ 0, %.lr.ph.i.i19.i ]
  %i.ou = icmp ult i64 %i.ot, 573
  br i1 %i.ou, label %bb.cd, label %.split.us.i.i22.i

._crit_edge.i.i37.i:                              ; preds = %.backedge.i.i36.i, %.backedge.us.i.i71.i
  %.sroa.0.0.lcssa.i.i38.i = phi i32 [ %spec.select62.us.i.i68.i, %.backedge.us.i.i71.i ], [ %spec.select62.i.i29.i, %.backedge.i.i36.i ] ; 2 uses
  %i.ov = icmp eq i32 %.sroa.0.0.lcssa.i.i38.i, 0
  br i1 %i.ov, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.preheader.i.i39.i

.preheader.i.i39.i:                               ; preds = %._crit_edge.i.i37.i
  %i.ow = zext i16 %.fr.i.i18.i to i64            ; 4 uses
  %i.ox = icmp ult i16 %.fr.i.i18.i, 16
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ow ; 2 uses
  br i1 %i.ox, label %.preheader.split.us.i.i47.i, label %.preheader.split.i.i40.i

.preheader.split.us.i.i47.i:                      ; preds = %.preheader.i.i39.i, %bb.bq
  %.sroa.0.1.us.i.i48.i = phi i32 [ %i.pk, %bb.bq ], [ %.sroa.0.0.lcssa.i.i38.i, %.preheader.i.i39.i ]
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.preheader.split.us.i.i47.i
  %.sroa.012.0.in.us.i.i49.i = phi i64 [ %i.ow, %.preheader.split.us.i.i47.i ], [ %.sroa.012.0.us.i.i50.i, %bb.bp ]
  %.sroa.012.0.us.i.i50.i = add nsw i64 %.sroa.012.0.in.us.i.i49.i, -1 ; 5 uses
  %i.oz = icmp ult i64 %.sroa.012.0.us.i.i50.i, 16
  br i1 %i.oz, label %bb.bp, label %.split120.us.i.i43.i

bb.bp:                                            ; preds = %bb.bo
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.us.i.i50.i
  %i.pb = load i16, ptr %i.pa, align 2, !noalias !20 ; 2 uses
  %i.pc = icmp eq i16 %i.pb, 0
  br i1 %i.pc, label %bb.bo, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.us.i.i50.i ; 2 uses
  %i.pe = add i16 %i.pb, -1
  store i16 %i.pe, ptr %i.pd, align 2, !noalias !20
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 2 ; 2 uses
  %i.pg = load i16, ptr %i.pf, align 2, !noalias !20
  %i.ph = add i16 %i.pg, 2
  store i16 %i.ph, ptr %i.pf, align 2, !noalias !20
  %i.pi = load i16, ptr %i.oy, align 2, !noalias !20
  %i.pj = add i16 %i.pi, -1
  store i16 %i.pj, ptr %i.oy, align 2, !noalias !20
  %i.pk = add i32 %.sroa.0.1.us.i.i48.i, -2       ; 2 uses
  %i.pl = icmp slt i32 %i.pk, 1
  br i1 %i.pl, label %.split125.us.i.i51.i, label %.preheader.split.us.i.i47.i

.preheader.split.i.i40.i:                         ; preds = %.preheader.i.i39.i, %bb.br
  %.sroa.012.0.in.i.i41.i = phi i64 [ %.sroa.012.0.i.i42.i, %bb.br ], [ %i.ow, %.preheader.i.i39.i ]
  %.sroa.012.0.i.i42.i = add nsw i64 %.sroa.012.0.in.i.i41.i, -1 ; 5 uses
  %i.pm = icmp ult i64 %.sroa.012.0.i.i42.i, 16
  br i1 %i.pm, label %bb.br, label %.split120.us.i.i43.i

bb.br:                                            ; preds = %.preheader.split.i.i40.i
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.i.i42.i
  %i.po = load i16, ptr %i.pn, align 2, !noalias !20
  %i.pp = icmp eq i16 %i.po, 0
  br i1 %i.pp, label %.preheader.split.i.i40.i, label %bb.bs

.split120.us.i.i43.i:                             ; preds = %.preheader.split.i.i40.i, %bb.bo
  %.us-phi121.i.i44.i = phi i64 [ %.sroa.012.0.us.i.i50.i, %bb.bo ], [ %.sroa.012.0.i.i42.i, %.preheader.split.i.i40.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i44.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !20
  unreachable

bb.bs:                                            ; preds = %bb.br
  %.not.i.i45.i = icmp eq i64 %.sroa.012.0.i.i42.i, 15
  br i1 %.not.i.i45.i, label %.split123.us.i.i46.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ow, i64 16, ptr nonnull align 8 @8) #21, !noalias !20
  unreachable

.split123.us.i.i46.i:                             ; preds = %bb.bs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !20
  unreachable

.split125.us.i.i51.i:                             ; preds = %bb.bq
  %i.pq = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i18.i), !noalias !20
  %i.pr = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.pq), !noalias !20
  %i.ps = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.pr), !noalias !20
  store i48 %i.ps, ptr %i.p, align 8, !noalias !20
  %i.pt = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.p), !noalias !20 ; 2 uses
  %i.pu = extractvalue { i16, i16 } %i.pt, 0
  %i.pv = trunc i16 %i.pu to i1
  br i1 %i.pv, label %.lr.ph136.i.i52.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i

.lr.ph136.i.i52.i:                                ; preds = %.split125.us.i.i51.i, %.outer.split.us.i.i63.i
  %.pn.i.i53.i = phi { i16, i16 } [ %5, %.outer.split.us.i.i63.i ], [ %i.pt, %.split125.us.i.i51.i ]
  %.sroa.016.0134.i.i54.i = phi i64 [ %.sroa.016.1.ph.lcssa.i.i64.i, %.outer.split.us.i.i63.i ], [ 573, %.split125.us.i.i51.i ] ; 2 uses
  %i.pw = extractvalue { i16, i16 } %.pn.i.i53.i, 1 ; 5 uses
  %i.px = zext i16 %i.pw to i64                   ; 2 uses
  %i.py = icmp ult i16 %i.pw, 16
  br i1 %i.py, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph136.i.i52.i
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.px
  %i.qa = load i16, ptr %i.pz, align 2, !noalias !20 ; 2 uses
  %.not59130.i.i55.i = icmp eq i16 %i.qa, 0
  br i1 %.not59130.i.i55.i, label %.outer.split.us.i.i63.i, label %.outer.split.i.i56.i

bb.bv:                                            ; preds = %.lr.ph136.i.i52.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.px, i64 16, ptr nonnull align 8 @9) #21, !noalias !20
  unreachable

bb.bw:                                            ; preds = %.outer.split.i.i56.i, %bb.bx
  %.sroa.016.1.i.i59.i = phi i64 [ %i.qb, %bb.bx ], [ %.sroa.016.1.ph131.i.i58.i, %.outer.split.i.i56.i ]
  %i.qb = add i64 %.sroa.016.1.i.i59.i, -1        ; 6 uses
  %i.qc = icmp ult i64 %i.qb, 573
  br i1 %i.qc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.qb
  %i.qe = load i32, ptr %i.qd, align 4, !noalias !20 ; 2 uses
  %i.qf = zext i32 %i.qe to i64                   ; 3 uses
  %i.qg = icmp ult i64 %i.lz, %i.qf
  br i1 %i.qg, label %bb.bw, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.qb, i64 573, ptr nonnull align 8 @10) #21, !noalias !20
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.qh = icmp ult i32 %i.qe, 61
  br i1 %i.qh, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.qf ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 2 ; 3 uses
  %i.qk = load i16, ptr %i.qj, align 2, !noalias !20
  %.not60.i.i60.i = icmp eq i16 %i.qk, %i.pw
  br i1 %.not60.i.i60.i, label %.outer.i.i61.i, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.qf, i64 61, ptr nonnull align 8 @11) #21, !noalias !20
  unreachable

.outer.i.i61.i:                                   ; preds = %bb.cc, %bb.ca
  %i.ql = add i16 %.sroa.021.0.ph132.i.i57.i, -1  ; 2 uses
  %.not59.i.i62.i = icmp eq i16 %i.ql, 0
  br i1 %.not59.i.i62.i, label %.outer.split.us.i.i63.i, label %.outer.split.i.i56.i

.outer.split.us.i.i63.i:                          ; preds = %.outer.i.i61.i, %bb.bu
  %.sroa.016.1.ph.lcssa.i.i64.i = phi i64 [ %.sroa.016.0134.i.i54.i, %bb.bu ], [ %i.qb, %.outer.i.i61.i ]
  %5 = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.p), !noalias !20 ; 2 uses
  %6 = extractvalue { i16, i16 } %5, 0
  %7 = trunc i16 %6 to i1
  br i1 %7, label %.lr.ph136.i.i52.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i

.outer.split.i.i56.i:                             ; preds = %bb.bu, %.outer.i.i61.i
  %.sroa.021.0.ph132.i.i57.i = phi i16 [ %i.ql, %.outer.i.i61.i ], [ %i.qa, %bb.bu ]
  %.sroa.016.1.ph131.i.i58.i = phi i64 [ %i.qb, %.outer.i.i61.i ], [ %.sroa.016.0134.i.i54.i, %bb.bu ]
  br label %bb.bw

bb.cc:                                            ; preds = %bb.ca
  %i.qm = load i16, ptr %i.qi, align 4, !noalias !20
  %i.qn = mul i16 %i.qm, %i.pw
  %i.qo = zext i16 %i.qn to i64
  %i.qp = load i64, ptr %i.ne, align 64, !noalias !20
  %i.qq = add i64 %i.qp, %i.qo                    ; 2 uses
  store i64 %i.qq, ptr %i.ne, align 64, !noalias !20
  %i.qr = load i16, ptr %i.qj, align 2, !noalias !20
  %i.qs = load i16, ptr %i.qi, align 4, !noalias !20
  %i.qt = mul i16 %i.qs, %i.qr
  %i.qu = zext i16 %i.qt to i64
  %i.qv = sub i64 %i.qq, %i.qu
  store i64 %i.qv, ptr %i.ne, align 64, !noalias !20
  store i16 %i.pw, ptr %i.qj, align 2, !noalias !20
  br label %.outer.i.i61.i

bb.cd:                                            ; preds = %.lr.ph.split.i.i20.i
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ot
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !20 ; 2 uses
  %i.qy = zext i32 %i.qx to i64                   ; 8 uses
  %i.qz = icmp ult i32 %i.qx, 61
  br i1 %i.qz, label %bb.ce, label %.split106.us.i.i24.i

.split.us.i.i22.i:                                ; preds = %.lr.ph.split.i.i20.i, %.lr.ph.split.us.i.i65.i
  %.us-phi.i.i23.i = phi i64 [ %i.nh, %.lr.ph.split.us.i.i65.i ], [ %i.ot, %.lr.ph.split.i.i20.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i23.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !20
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.qy ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 2 ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 2, !noalias !20 ; 2 uses
  %i.rd = zext i16 %i.rc to i64                   ; 2 uses
  %i.re = icmp ult i16 %i.rc, 61
  br i1 %i.re, label %bb.cf, label %.split109.us.i.i26.i

.split106.us.i.i24.i:                             ; preds = %bb.cd, %bb.bf
  %.us-phi107.i.i25.i = phi i64 [ %i.nl, %bb.bf ], [ %i.qy, %bb.cd ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i25.i, i64 61, ptr nonnull align 8 @13) #21, !noalias !20
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.rd
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.rh = load i16, ptr %i.rg, align 2, !noalias !20
  %i.ri = add i16 %i.rh, 1                        ; 2 uses
  %i.rj = icmp ugt i16 %i.ri, %.fr.i.i18.i
  %spec.select.i.i28.i = call i16 @llvm.umin.i16(i16 %i.ri, i16 %.fr.i.i18.i) ; 3 uses
  %i.rk = zext i1 %i.rj to i32
  %spec.select62.i.i29.i = add i32 %.sroa.0.0104.i.i21.i, %i.rk ; 2 uses
  store i16 %spec.select.i.i28.i, ptr %i.rb, align 2, !noalias !20
  %i.rl = icmp ult i64 %i.lz, %i.qy
  br i1 %i.rl, label %.backedge.i.i36.i, label %bb.cg

.backedge.i.i36.i:                                ; preds = %bb.cl, %bb.cf
  %i.rm = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.q), !noalias !20 ; 2 uses
  %i.rn = extractvalue { i64, i64 } %i.rm, 0
  %i.ro = extractvalue { i64, i64 } %i.rm, 1
  %i.rp = trunc nuw i64 %i.rn to i1
  br i1 %i.rp, label %.lr.ph.split.i.i20.i, label %._crit_edge.i.i37.i

.split109.us.i.i26.i:                             ; preds = %bb.ce, %bb.bg
  %.us-phi110.i.i27.i = phi i64 [ %i.nq, %bb.bg ], [ %i.rd, %bb.ce ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i27.i, i64 61, ptr nonnull align 8 @14) #21, !noalias !20
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.rq = zext i16 %spec.select.i.i28.i to i64    ; 3 uses
  %i.rr = icmp ult i16 %spec.select.i.i28.i, 16
  br i1 %i.rr, label %bb.ch, label %.split112.us.i.i30.i

bb.ch:                                            ; preds = %bb.cg
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.rq ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 2, !noalias !20
  %i.ru = add i16 %i.rt, 1
  store i16 %i.ru, ptr %i.rs, align 2, !noalias !20
  %.not61.i.i32.i = icmp ugt i64 %i.mj, %i.qy
  br i1 %.not61.i.i32.i, label %bb.ck, label %bb.ci

.split112.us.i.i30.i:                             ; preds = %bb.cg, %bb.bi
  %.us-phi113.i.i31.i = phi i64 [ %i.nz, %bb.bi ], [ %i.rq, %bb.cg ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i31.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !20
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.rv = sub nuw nsw i64 %i.qy, %i.mj            ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %i.mh
  br i1 %i.rw, label %bb.cj, label %.split115.us.i.i33.i

bb.cj:                                            ; preds = %bb.ci
  %i.rx = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.rv
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !20
  %i.rz = zext i8 %i.ry to i64
  br label %bb.ck

.split115.us.i.i33.i:                             ; preds = %bb.ci, %bb.bk
  %.us-phi116.i.i34.i = phi i64 [ %i.oe, %bb.bk ], [ %i.rv, %bb.ci ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i34.i, i64 %i.mh, ptr nonnull align 8 @16) #21, !noalias !20
  unreachable

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %.sroa.010.0.i.i35.i = phi i64 [ %i.rz, %bb.cj ], [ 0, %bb.ch ] ; 2 uses
  %i.sa = load i16, ptr %i.ra, align 4, !noalias !20
  %i.sb = zext i16 %i.sa to i64                   ; 2 uses
  %i.sc = add nuw nsw i64 %.sroa.010.0.i.i35.i, %i.rq
  %i.sd = mul nuw nsw i64 %i.sc, %i.sb
  %i.se = load i64, ptr %i.ne, align 64, !noalias !20
  %i.sf = add i64 %i.sd, %i.se
  store i64 %i.sf, ptr %i.ne, align 64, !noalias !20
  %i.sg = icmp ugt i64 %.fr138.i.i17.i, %i.qy
  br i1 %i.sg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.qy
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.sj = load i16, ptr %i.si, align 2, !noalias !20
  %i.sk = zext i16 %i.sj to i64
  %i.sl = add nuw nsw i64 %.sroa.010.0.i.i35.i, %i.sk
  %i.sm = mul nuw nsw i64 %i.sl, %i.sb
  %i.sn = load i64, ptr %i.ng, align 8, !noalias !20
  %i.so = add i64 %i.sm, %i.sn
  store i64 %i.so, ptr %i.ng, align 8, !noalias !20
  br label %.backedge.i.i36.i

bb.cm:                                            ; preds = %bb.ck
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.qy, i64 %.fr138.i.i17.i, ptr nonnull align 8 @17) #21, !noalias !20
  unreachable

.lr.ph90.i13.i:                                   ; preds = %.lr.ph90.i13.i, %.lr.ph90.preheader.i11.i
  %.sroa.05.088.i14.i = phi i64 [ %i.sp, %.lr.ph90.i13.i ], [ %i.lx, %.lr.ph90.preheader.i11.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.t, ptr align 2 %i.km, i64 61, i64 %.sroa.05.088.i14.i)
  %i.sp = add nsw i64 %.sroa.05.088.i14.i, -1     ; 2 uses
  %.not.i15.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i15.i, label %._crit_edge91.i16.i, label %.lr.ph90.i13.i

.peel.next535.i:                                  ; preds = %.backedge.i76.peel.i
  %i.sq = icmp slt i64 %.sroa.0.1.i75.peel.i, 2   ; 2 uses
  %i.sr = add nsw i64 %.sroa.0.1.i75.peel.i, 1    ; 4 uses
  %.sroa.04.0.i74.i = select i1 %i.sq, i64 %i.sr, i64 0 ; 6 uses
  %.sroa.0.1.i75.i = select i1 %i.sq, i64 %i.sr, i64 %.sroa.0.1.i75.peel.i ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.st = trunc nuw nsw i64 %.sroa.04.0.i74.i to i32
  store i32 %i.st, ptr %i.ss, align 8
  %i.su = icmp samesign ult i64 %.sroa.04.0.i74.i, 61
  br i1 %i.su, label %bb.cn, label %.loopexit537.i

bb.cn:                                            ; preds = %.peel.next535.i
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.sroa.04.0.i74.i
  store i16 1, ptr %i.sv, align 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.sroa.04.0.i74.i
  store i8 0, ptr %i.sw, align 1
  %i.sx = load i64, ptr %i.la, align 64
  %i.sy = add i64 %i.sx, -1
  store i64 %i.sy, ptr %i.la, align 64
  br i1 %i.lb, label %._crit_edge.thread.i77.i, label %bb.co

._crit_edge.thread.i77.i:                         ; preds = %bb.cp, %bb.cn, %.backedge.i76.peel.i
  %.sroa.0.1.i75.lcssa461.i = phi i64 [ %.sroa.0.1.i75.peel.i, %.backedge.i76.peel.i ], [ %.sroa.0.1.i75.i, %bb.cn ], [ %.sroa.0.1.i75.i, %bb.cp ] ; 2 uses
  store i64 2, ptr %i.t, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i75.lcssa461.i, ptr %i.sz, align 8
  br label %.lr.ph90.preheader.i11.i

.loopexit537.i:                                   ; preds = %.peel.next535.i, %.lr.ph.i72.i
  %.sroa.04.0.i74.lcssa.i = phi i64 [ %i.le, %.lr.ph.i72.i ], [ %i.sr, %.peel.next535.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i74.lcssa.i, i64 61, ptr nonnull align 8 @2) #21
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.ta = icmp ult i64 %.sroa.04.0.i74.i, %i.kq
  br i1 %i.ta, label %bb.cp, label %.loopexit538.i

bb.cp:                                            ; preds = %bb.co
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.sroa.04.0.i74.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  %i.td = load i16, ptr %i.tc, align 2
  %i.te = zext i16 %i.td to i64
  %i.tf = load i64, ptr %i.lc, align 8
  %i.tg = sub i64 %i.tf, %i.te
  store i64 %i.tg, ptr %i.lc, align 8
  br label %._crit_edge.thread.i77.i

.loopexit538.i:                                   ; preds = %bb.co, %bb.ba
  %.sroa.04.0.i74.lcssa462.i = phi i64 [ %i.le, %bb.ba ], [ %i.sr, %bb.co ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i74.lcssa462.i, i64 %i.kq, ptr nonnull align 8 @3) #21
  unreachable

_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i: ; preds = %.outer.split.us.i.i63.i, %.split125.us.i.i51.i, %._crit_edge.i.i37.i, %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.s, ptr noundef nonnull align 2 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate9gen_codes(ptr align 2 %i.km, i64 61, i64 %.sroa.0.0.lcssa189.i12.i, ptr align 2 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.th = load ptr, ptr %i.ac, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 2664
  call void @_RINvNtCs4NRVxsYgnAr_4core3mem4swapINtNtCsehVNULHUZqJ_7zlib_rs7deflate8TreeDescKj3d_EEBB_(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ti)
  %i.tj = load ptr, ptr %i.ac, align 8            ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 2928 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 368
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 360
  %i.tn = load i64, ptr %i.tm, align 8
  call fastcc void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate9scan_tree(ptr nonnull align 8 %i.tk, ptr nonnull align 2 %i.tl, i64 573, i64 %i.tn)
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 2680
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 2672
  %i.tq = load i64, ptr %i.tp, align 8
  call fastcc void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate9scan_tree(ptr nonnull align 8 %i.tk, ptr nonnull align 2 %i.to, i64 61, i64 %i.tq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.o, ptr noundef nonnull align 16 dereferenceable(176) @84, i64 176, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3mem4swapINtNtCsehVNULHUZqJ_7zlib_rs7deflate8TreeDescKj27_EEBB_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.tk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 12 uses
  %i.ts = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.tt = load ptr, ptr %i.ts, align 8            ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tv = load i64, ptr %i.tu, align 8            ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 40
  %i.tx = load i64, ptr %i.tw, align 8            ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2865) %i.ty, i8 0, i64 2865, i1 false), !alias.scope !21
  %i.tz = call { ptr, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexSNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueE9index_mutB1v_(i64 %i.tx, ptr nonnull align 2 %i.tr, i64 39, ptr nonnull align 8 @1) ; 2 uses
  %i.ua = extractvalue { ptr, i64 } %i.tz, 0
  %i.ub = extractvalue { ptr, i64 } %i.tz, 1
  %i.uc = call fastcc i64 @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10initialize(ptr align 8 %i.n, ptr align 2 %i.ua, i64 %i.ub) ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.n, align 8  ; 4 uses
  %i.ud = icmp ult i64 %.promoted.i.i.i, 2
  br i1 %i.ud, label %.lr.ph.i.i81.i, label %._crit_edge.i.i78.i

.lr.ph.i.i81.i:                                   ; preds = %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.n, i64 2308 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tj, i64 192 ; 3 uses
  %i.ug = icmp eq i64 %i.tv, 0                    ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tj, i64 200 ; 4 uses
  %i.ui = icmp slt i64 %i.uc, 2                   ; 2 uses
  %i.uj = add nsw i64 %i.uc, 1                    ; 4 uses
  %.sroa.04.0.i.peel.i.i = select i1 %i.ui, i64 %i.uj, i64 0 ; 6 uses
  %.sroa.0.1.i.peel.i.i = select i1 %i.ui, i64 %i.uj, i64 %i.uc ; 4 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %.promoted.i.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.um = trunc nuw nsw i64 %.sroa.04.0.i.peel.i.i to i32
  store i32 %i.um, ptr %i.ul, align 4
  %i.un = icmp samesign ult i64 %.sroa.04.0.i.peel.i.i, 39
  br i1 %i.un, label %bb.cq, label %.loopexit.i.i

bb.cq:                                            ; preds = %.lr.ph.i.i81.i
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.04.0.i.peel.i.i
  store i16 1, ptr %i.uo, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.sroa.04.0.i.peel.i.i
  store i8 0, ptr %i.up, align 1
  %i.uq = load i64, ptr %i.uf, align 64           ; 2 uses
  %i.ur = add i64 %i.uq, -1
  store i64 %i.ur, ptr %i.uf, align 64
  br i1 %i.ug, label %.backedge.i.peel.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.us = icmp ult i64 %.sroa.04.0.i.peel.i.i, %i.tv
  br i1 %i.us, label %bb.cs, label %.loopexit153.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %.sroa.04.0.i.peel.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  %i.uv = load i16, ptr %i.uu, align 2
  %i.uw = zext i16 %i.uv to i64
  %i.ux = load i64, ptr %i.uh, align 8
  %i.uy = sub i64 %i.ux, %i.uw
  store i64 %i.uy, ptr %i.uh, align 8
  br label %.backedge.i.peel.i.i

.backedge.i.peel.i.i:                             ; preds = %bb.cs, %bb.cq
  %i.uz = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.uz, label %.peel.next.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.i.i78.i:                              ; preds = %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %i.uc, ptr %i.va, align 8
  %i.vb = lshr i64 %.promoted.i.i.i, 1
  br label %.lr.ph90.preheader.i.i.i

.lr.ph90.preheader.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i78.i
  %i.vc = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.vb, %._crit_edge.i.i78.i ]
  %i.vd = phi ptr [ %i.acb, %._crit_edge.thread.i.i.i ], [ %i.va, %._crit_edge.i.i78.i ]
  %.sroa.0.0.lcssa189.i.i.i = phi i64 [ %.sroa.0.1.i.lcssa146.i.i, %._crit_edge.thread.i.i.i ], [ %i.uc, %._crit_edge.i.i78.i ]
  br label %.lr.ph90.i.i.i

._crit_edge91.i.i.i:                              ; preds = %.lr.ph90.i.i.i
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap22construct_huffman_tree(ptr align 8 %i.n, ptr align 2 %i.tr, i64 39, i64 %i.tx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ve = load i64, ptr %i.vd, align 8, !noalias !22 ; 3 uses
  %i.vf = load ptr, ptr %i.o, align 8, !noalias !22 ; 6 uses
  %i.vg = load ptr, ptr %i.vf, align 8, !noalias !22
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vi = load i64, ptr %i.vh, align 8, !noalias !22
  %.fr138.i.i.i.i = freeze i64 %i.vi              ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !22 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vm = load i64, ptr %i.vl, align 8, !noalias !22 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.vo = load i64, ptr %i.vn, align 8, !noalias !22 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vq = load i16, ptr %i.vp, align 8, !noalias !22
  %.fr.i.i.i.i = freeze i16 %i.vq                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.l, i8 0, i64 32, i1 false), !noalias !22
  %i.vr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !noalias !22 ; 4 uses
  %i.vt = icmp ult i64 %i.vs, 573
  br i1 %i.vt, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %._crit_edge91.i.i.i
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.vs
  %i.vv = load i32, ptr %i.vu, align 4, !noalias !22 ; 2 uses
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = icmp ult i32 %i.vv, 39
  br i1 %i.vx, label %bb.cv, label %bb.de

bb.cu:                                            ; preds = %._crit_edge91.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.vs, i64 573, ptr nonnull align 8 @4) #21, !noalias !22
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.vw
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  store i16 0, ptr %i.vz, align 2, !noalias !22
  %i.wa = add nuw nsw i64 %i.vs, 1
  %i.wb = call { i64, i64 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i64 %i.wa, i64 573), !noalias !22 ; 2 uses
  %i.wc = extractvalue { i64, i64 } %i.wb, 0
  %i.wd = extractvalue { i64, i64 } %i.wb, 1
  store i64 %i.wc, ptr %i.k, align 8, !noalias !22
  %i.we = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.wd, ptr %i.we, align 8, !noalias !22
  %i.wf = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.k), !noalias !22 ; 2 uses
  %i.wg = extractvalue { i64, i64 } %i.wf, 0
  %i.wh = trunc nuw i64 %i.wg to i1
  br i1 %i.wh, label %.lr.ph.i.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cv
  %i.wi = extractvalue { i64, i64 } %i.wf, 1      ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.tj, i64 192 ; 6 uses
  %i.wk = icmp eq i64 %.fr138.i.i.i.i, 0
  %i.wl = getelementptr inbounds nuw i8, ptr %i.tj, i64 200 ; 2 uses
  br i1 %i.wk, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %.backedge.us.i.i.i.i
  %i.wm = phi i64 [ %i.xw, %.backedge.us.i.i.i.i ], [ %i.wi, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.0.0104.us.i.i.i.i = phi i32 [ %spec.select62.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.wn = icmp ult i64 %i.wm, 573
  br i1 %i.wn, label %bb.cw, label %.split.us.i.i.i.i

bb.cw:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.wm
  %i.wp = load i32, ptr %i.wo, align 4, !noalias !22 ; 2 uses
  %i.wq = zext i32 %i.wp to i64                   ; 5 uses
  %i.wr = icmp ult i32 %i.wp, 39
  br i1 %i.wr, label %bb.cx, label %.split106.us.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.wq ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 2 ; 2 uses
  %i.wu = load i16, ptr %i.wt, align 2, !noalias !22 ; 2 uses
  %i.wv = zext i16 %i.wu to i64                   ; 2 uses
  %i.ww = icmp ult i16 %i.wu, 39
  br i1 %i.ww, label %bb.cy, label %.split109.us.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.wv
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  %i.wz = load i16, ptr %i.wy, align 2, !noalias !22
  %i.xa = add i16 %i.wz, 1                        ; 2 uses
  %i.xb = icmp ugt i16 %i.xa, %.fr.i.i.i.i
  %spec.select.us.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.xa, i16 %.fr.i.i.i.i) ; 3 uses
  %i.xc = zext i1 %i.xb to i32
  %spec.select62.us.i.i.i.i = add i32 %.sroa.0.0104.us.i.i.i.i, %i.xc ; 2 uses
  store i16 %spec.select.us.i.i.i.i, ptr %i.wt, align 2, !noalias !22
  %i.xd = icmp ult i64 %i.ve, %i.wq
  br i1 %i.xd, label %.backedge.us.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xe = zext i16 %spec.select.us.i.i.i.i to i64 ; 3 uses
  %i.xf = icmp ult i16 %spec.select.us.i.i.i.i, 16
  br i1 %i.xf, label %bb.da, label %.split112.us.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.xe ; 2 uses
  %i.xh = load i16, ptr %i.xg, align 2, !noalias !22
  %i.xi = add i16 %i.xh, 1
  store i16 %i.xi, ptr %i.xg, align 2, !noalias !22
  %.not61.us.i.i.i.i = icmp ugt i64 %i.vo, %i.wq
  br i1 %.not61.us.i.i.i.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xj = sub nuw nsw i64 %i.wq, %i.vo            ; 3 uses
  %i.xk = icmp ult i64 %i.xj, %i.vm
  br i1 %i.xk, label %bb.dc, label %.split115.us.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.xj
  %i.xm = load i8, ptr %i.xl, align 1, !noalias !22
  %i.xn = zext i8 %i.xm to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %.sroa.010.0.us.i.i.i.i = phi i64 [ %i.xn, %bb.dc ], [ 0, %bb.da ]
  %i.xo = load i16, ptr %i.ws, align 4, !noalias !22
  %i.xp = zext i16 %i.xo to i64
  %i.xq = add nuw nsw i64 %.sroa.010.0.us.i.i.i.i, %i.xe
  %i.xr = mul nuw nsw i64 %i.xq, %i.xp
  %i.xs = load i64, ptr %i.wj, align 64, !noalias !22
  %i.xt = add i64 %i.xr, %i.xs
  store i64 %i.xt, ptr %i.wj, align 64, !noalias !22
  br label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %bb.dd, %bb.cy
  %i.xu = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.k), !noalias !22 ; 2 uses
  %i.xv = extractvalue { i64, i64 } %i.xu, 0
  %i.xw = extractvalue { i64, i64 } %i.xu, 1
  %i.xx = trunc nuw i64 %i.xv to i1
  br i1 %i.xx, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i.i.i.i

bb.de:                                            ; preds = %bb.ct
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.vw, i64 39, ptr nonnull align 8 @5) #21, !noalias !22
  unreachable

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.backedge.i.i.i.i
  %i.xy = phi i64 [ %i.aar, %.backedge.i.i.i.i ], [ %i.wi, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.0.0104.i.i.i.i = phi i32 [ %spec.select62.i.i.i.i, %.backedge.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.xz = icmp ult i64 %i.xy, 573
  br i1 %i.xz, label %bb.du, label %.split.us.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %.backedge.us.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %spec.select62.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ %spec.select62.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %i.ya = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.ya, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i
  %i.yb = zext i16 %.fr.i.i.i.i to i64            ; 4 uses
  %i.yc = icmp ult i16 %.fr.i.i.i.i, 16
  %i.yd = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.yb ; 2 uses
  br i1 %i.yc, label %.preheader.split.us.i.i.i.i, label %.preheader.split.i.i.i.i

.preheader.split.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i, %bb.dh
  %.sroa.0.1.us.i.i.i.i = phi i32 [ %i.yp, %bb.dh ], [ %.sroa.0.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ]
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.preheader.split.us.i.i.i.i
  %.sroa.012.0.in.us.i.i.i.i = phi i64 [ %i.yb, %.preheader.split.us.i.i.i.i ], [ %.sroa.012.0.us.i.i.i.i, %bb.dg ]
  %.sroa.012.0.us.i.i.i.i = add nsw i64 %.sroa.012.0.in.us.i.i.i.i, -1 ; 5 uses
  %i.ye = icmp ult i64 %.sroa.012.0.us.i.i.i.i, 16
  br i1 %i.ye, label %bb.dg, label %.split120.us.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.yf = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.us.i.i.i.i
  %i.yg = load i16, ptr %i.yf, align 2, !noalias !22 ; 2 uses
  %i.yh = icmp eq i16 %i.yg, 0
  br i1 %i.yh, label %bb.df, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.us.i.i.i.i ; 2 uses
  %i.yj = add i16 %i.yg, -1
  store i16 %i.yj, ptr %i.yi, align 2, !noalias !22
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 2 ; 2 uses
  %i.yl = load i16, ptr %i.yk, align 2, !noalias !22
  %i.ym = add i16 %i.yl, 2
  store i16 %i.ym, ptr %i.yk, align 2, !noalias !22
  %i.yn = load i16, ptr %i.yd, align 2, !noalias !22
  %i.yo = add i16 %i.yn, -1
  store i16 %i.yo, ptr %i.yd, align 2, !noalias !22
  %i.yp = add i32 %.sroa.0.1.us.i.i.i.i, -2       ; 2 uses
  %i.yq = icmp slt i32 %i.yp, 1
  br i1 %i.yq, label %.split125.us.i.i.i.i, label %.preheader.split.us.i.i.i.i

.preheader.split.i.i.i.i:                         ; preds = %.preheader.i.i.i.i, %bb.di
  %.sroa.012.0.in.i.i.i.i = phi i64 [ %.sroa.012.0.i.i.i.i, %bb.di ], [ %i.yb, %.preheader.i.i.i.i ]
  %.sroa.012.0.i.i.i.i = add nsw i64 %.sroa.012.0.in.i.i.i.i, -1 ; 5 uses
  %i.yr = icmp ult i64 %.sroa.012.0.i.i.i.i, 16
  br i1 %i.yr, label %bb.di, label %.split120.us.i.i.i.i

bb.di:                                            ; preds = %.preheader.split.i.i.i.i
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.i.i.i.i
  %i.yt = load i16, ptr %i.ys, align 2, !noalias !22
  %i.yu = icmp eq i16 %i.yt, 0
  br i1 %i.yu, label %.preheader.split.i.i.i.i, label %bb.dj

.split120.us.i.i.i.i:                             ; preds = %.preheader.split.i.i.i.i, %bb.df
  %.us-phi121.i.i.i.i = phi i64 [ %.sroa.012.0.us.i.i.i.i, %bb.df ], [ %.sroa.012.0.i.i.i.i, %.preheader.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i.i.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !22
  unreachable

bb.dj:                                            ; preds = %bb.di
  %.not.i.i.i.i = icmp eq i64 %.sroa.012.0.i.i.i.i, 15
  br i1 %.not.i.i.i.i, label %.split123.us.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.yb, i64 16, ptr nonnull align 8 @8) #21, !noalias !22
  unreachable

.split123.us.i.i.i.i:                             ; preds = %bb.dj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !22
  unreachable

.split125.us.i.i.i.i:                             ; preds = %bb.dh
  %i.yv = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i.i.i), !noalias !22
  %i.yw = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.yv), !noalias !22
  %i.yx = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.yw), !noalias !22
  store i48 %i.yx, ptr %i.j, align 8, !noalias !22
  %i.yy = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.j), !noalias !22 ; 2 uses
  %i.yz = extractvalue { i16, i16 } %i.yy, 0
  %i.za = trunc i16 %i.yz to i1
  br i1 %i.za, label %.lr.ph136.i.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i

.lr.ph136.i.i.i.i:                                ; preds = %.split125.us.i.i.i.i, %.outer.split.us.i.i.i.i
  %.pn.i.i.i.i = phi { i16, i16 } [ %8, %.outer.split.us.i.i.i.i ], [ %i.yy, %.split125.us.i.i.i.i ]
  %.sroa.016.0134.i.i.i.i = phi i64 [ %.sroa.016.1.ph.lcssa.i.i.i.i, %.outer.split.us.i.i.i.i ], [ 573, %.split125.us.i.i.i.i ] ; 2 uses
  %i.zb = extractvalue { i16, i16 } %.pn.i.i.i.i, 1 ; 5 uses
  %i.zc = zext i16 %i.zb to i64                   ; 2 uses
  %i.zd = icmp ult i16 %i.zb, 16
  br i1 %i.zd, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph136.i.i.i.i
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.zc
  %i.zf = load i16, ptr %i.ze, align 2, !noalias !22 ; 2 uses
  %.not59130.i.i.i.i = icmp eq i16 %i.zf, 0
  br i1 %.not59130.i.i.i.i, label %.outer.split.us.i.i.i.i, label %.outer.split.i.i.i.i

bb.dm:                                            ; preds = %.lr.ph136.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zc, i64 16, ptr nonnull align 8 @9) #21, !noalias !22
  unreachable

bb.dn:                                            ; preds = %.outer.split.i.i.i.i, %bb.do
  %.sroa.016.1.i.i.i.i = phi i64 [ %i.zg, %bb.do ], [ %.sroa.016.1.ph131.i.i.i.i, %.outer.split.i.i.i.i ]
  %i.zg = add i64 %.sroa.016.1.i.i.i.i, -1        ; 6 uses
  %i.zh = icmp ult i64 %i.zg, 573
  br i1 %i.zh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.zg
  %i.zj = load i32, ptr %i.zi, align 4, !noalias !22 ; 2 uses
  %i.zk = zext i32 %i.zj to i64                   ; 3 uses
  %i.zl = icmp ult i64 %i.ve, %i.zk
  br i1 %i.zl, label %bb.dn, label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zg, i64 573, ptr nonnull align 8 @10) #21, !noalias !22
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.zm = icmp ult i32 %i.zj, 39
  br i1 %i.zm, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.zk ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 2 ; 2 uses
  %i.zp = load i16, ptr %i.zo, align 2, !noalias !22 ; 2 uses
  %.not60.i.i.i.i = icmp eq i16 %i.zp, %i.zb
  br i1 %.not60.i.i.i.i, label %.outer.i.i.i.i, label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zk, i64 39, ptr nonnull align 8 @11) #21, !noalias !22
  unreachable

.outer.i.i.i.i:                                   ; preds = %bb.dt, %bb.dr
  %i.zq = add i16 %.sroa.021.0.ph132.i.i.i.i, -1  ; 2 uses
  %.not59.i.i.i.i = icmp eq i16 %i.zq, 0
  br i1 %.not59.i.i.i.i, label %.outer.split.us.i.i.i.i, label %.outer.split.i.i.i.i

.outer.split.us.i.i.i.i:                          ; preds = %.outer.i.i.i.i, %bb.dl
  %.sroa.016.1.ph.lcssa.i.i.i.i = phi i64 [ %.sroa.016.0134.i.i.i.i, %bb.dl ], [ %i.zg, %.outer.i.i.i.i ]
  %8 = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.j), !noalias !22 ; 2 uses
  %9 = extractvalue { i16, i16 } %8, 0
  %10 = trunc i16 %9 to i1
  br i1 %10, label %.lr.ph136.i.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i

.outer.split.i.i.i.i:                             ; preds = %bb.dl, %.outer.i.i.i.i
  %.sroa.021.0.ph132.i.i.i.i = phi i16 [ %i.zq, %.outer.i.i.i.i ], [ %i.zf, %bb.dl ]
  %.sroa.016.1.ph131.i.i.i.i = phi i64 [ %i.zg, %.outer.i.i.i.i ], [ %.sroa.016.0134.i.i.i.i, %bb.dl ]
  br label %bb.dn

bb.dt:                                            ; preds = %bb.dr
  %i.zr = load i16, ptr %i.zn, align 4, !noalias !22 ; 2 uses
  %i.zs = mul i16 %i.zr, %i.zb
  %i.zt = zext i16 %i.zs to i64
  %i.zu = load i64, ptr %i.wj, align 64, !noalias !22
  %i.zv = add i64 %i.zu, %i.zt
  %i.zw = mul i16 %i.zr, %i.zp
  %i.zx = zext i16 %i.zw to i64
  %i.zy = sub i64 %i.zv, %i.zx
  store i64 %i.zy, ptr %i.wj, align 64, !noalias !22
  store i16 %i.zb, ptr %i.zo, align 2, !noalias !22
  br label %.outer.i.i.i.i

bb.du:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.xy
  %i.aaa = load i32, ptr %i.zz, align 4, !noalias !22 ; 2 uses
  %i.aab = zext i32 %i.aaa to i64                 ; 8 uses
  %i.aac = icmp ult i32 %i.aaa, 39
  br i1 %i.aac, label %bb.dv, label %.split106.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.wm, %.lr.ph.split.us.i.i.i.i ], [ %i.xy, %.lr.ph.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i.i.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !22
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.aab ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 2 ; 2 uses
  %i.aaf = load i16, ptr %i.aae, align 2, !noalias !22 ; 2 uses
  %i.aag = zext i16 %i.aaf to i64                 ; 2 uses
  %i.aah = icmp ult i16 %i.aaf, 39
  br i1 %i.aah, label %bb.dw, label %.split109.us.i.i.i.i

.split106.us.i.i.i.i:                             ; preds = %bb.du, %bb.cw
  %.us-phi107.i.i.i.i = phi i64 [ %i.wq, %bb.cw ], [ %i.aab, %bb.du ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i.i.i, i64 39, ptr nonnull align 8 @13) #21, !noalias !22
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.aag
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.aak = load i16, ptr %i.aaj, align 2, !noalias !22
  %i.aal = add i16 %i.aak, 1                      ; 2 uses
  %i.aam = icmp ugt i16 %i.aal, %.fr.i.i.i.i
  %spec.select.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.aal, i16 %.fr.i.i.i.i) ; 3 uses
  %i.aan = zext i1 %i.aam to i32
  %spec.select62.i.i.i.i = add i32 %.sroa.0.0104.i.i.i.i, %i.aan ; 2 uses
  store i16 %spec.select.i.i.i.i, ptr %i.aae, align 2, !noalias !22
  %i.aao = icmp ult i64 %i.ve, %i.aab
  br i1 %i.aao, label %.backedge.i.i.i.i, label %bb.dx

.backedge.i.i.i.i:                                ; preds = %bb.ec, %bb.dw
  %i.aap = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.k), !noalias !22 ; 2 uses
  %i.aaq = extractvalue { i64, i64 } %i.aap, 0
  %i.aar = extractvalue { i64, i64 } %i.aap, 1
  %i.aas = trunc nuw i64 %i.aaq to i1
  br i1 %i.aas, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

.split109.us.i.i.i.i:                             ; preds = %bb.dv, %bb.cx
  %.us-phi110.i.i.i.i = phi i64 [ %i.wv, %bb.cx ], [ %i.aag, %bb.dv ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i.i.i, i64 39, ptr nonnull align 8 @14) #21, !noalias !22
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.aat = zext i16 %spec.select.i.i.i.i to i64   ; 3 uses
  %i.aau = icmp ult i16 %spec.select.i.i.i.i, 16
  br i1 %i.aau, label %bb.dy, label %.split112.us.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.aat ; 2 uses
  %i.aaw = load i16, ptr %i.aav, align 2, !noalias !22
  %i.aax = add i16 %i.aaw, 1
  store i16 %i.aax, ptr %i.aav, align 2, !noalias !22
  %.not61.i.i.i.i = icmp ugt i64 %i.vo, %i.aab
  br i1 %.not61.i.i.i.i, label %bb.eb, label %bb.dz

.split112.us.i.i.i.i:                             ; preds = %bb.dx, %bb.cz
  %.us-phi113.i.i.i.i = phi i64 [ %i.xe, %bb.cz ], [ %i.aat, %bb.dx ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i.i.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !22
  unreachable

bb.dz:                                            ; preds = %bb.dy
  %i.aay = sub nuw nsw i64 %i.aab, %i.vo          ; 3 uses
  %i.aaz = icmp ult i64 %i.aay, %i.vm
  br i1 %i.aaz, label %bb.ea, label %.split115.us.i.i.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.aba = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.aay
  %i.abb = load i8, ptr %i.aba, align 1, !noalias !22
  %i.abc = zext i8 %i.abb to i64
  br label %bb.eb

.split115.us.i.i.i.i:                             ; preds = %bb.dz, %bb.db
  %.us-phi116.i.i.i.i = phi i64 [ %i.xj, %bb.db ], [ %i.aay, %bb.dz ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i.i.i, i64 %i.vm, ptr nonnull align 8 @16) #21, !noalias !22
  unreachable

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %.sroa.010.0.i.i.i.i = phi i64 [ %i.abc, %bb.ea ], [ 0, %bb.dy ] ; 2 uses
  %i.abd = load i16, ptr %i.aad, align 4, !noalias !22
  %i.abe = zext i16 %i.abd to i64                 ; 2 uses
  %i.abf = add nuw nsw i64 %.sroa.010.0.i.i.i.i, %i.aat
  %i.abg = mul nuw nsw i64 %i.abf, %i.abe
  %i.abh = load i64, ptr %i.wj, align 64, !noalias !22
  %i.abi = add i64 %i.abg, %i.abh
  store i64 %i.abi, ptr %i.wj, align 64, !noalias !22
  %i.abj = icmp ugt i64 %.fr138.i.i.i.i, %i.aab
  br i1 %i.abj, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.aab
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  %i.abm = load i16, ptr %i.abl, align 2, !noalias !22
  %i.abn = zext i16 %i.abm to i64
  %i.abo = add nuw nsw i64 %.sroa.010.0.i.i.i.i, %i.abn
  %i.abp = mul nuw nsw i64 %i.abo, %i.abe
  %i.abq = load i64, ptr %i.wl, align 8, !noalias !22
  %i.abr = add i64 %i.abp, %i.abq
  store i64 %i.abr, ptr %i.wl, align 8, !noalias !22
  br label %.backedge.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.aab, i64 %.fr138.i.i.i.i, ptr nonnull align 8 @17) #21, !noalias !22
  unreachable

.lr.ph90.i.i.i:                                   ; preds = %.lr.ph90.i.i.i, %.lr.ph90.preheader.i.i.i
  %.sroa.05.088.i.i.i = phi i64 [ %i.abs, %.lr.ph90.i.i.i ], [ %i.vc, %.lr.ph90.preheader.i.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.n, ptr align 2 %i.tr, i64 39, i64 %.sroa.05.088.i.i.i)
  %i.abs = add nsw i64 %.sroa.05.088.i.i.i, -1    ; 2 uses
  %.not.i.i79.i = icmp eq i64 %i.abs, 0
  br i1 %.not.i.i79.i, label %._crit_edge91.i.i.i, label %.lr.ph90.i.i.i

.peel.next.i.i:                                   ; preds = %.backedge.i.peel.i.i
  %i.abt = icmp slt i64 %.sroa.0.1.i.peel.i.i, 2  ; 2 uses
  %i.abu = add nsw i64 %.sroa.0.1.i.peel.i.i, 1   ; 4 uses
  %.sroa.04.0.i.i.i = select i1 %i.abt, i64 %i.abu, i64 0 ; 6 uses
  %.sroa.0.1.i.i.i = select i1 %i.abt, i64 %i.abu, i64 %.sroa.0.1.i.peel.i.i ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.abw = trunc nuw nsw i64 %.sroa.04.0.i.i.i to i32
  store i32 %i.abw, ptr %i.abv, align 8
  %i.abx = icmp samesign ult i64 %.sroa.04.0.i.i.i, 39
  br i1 %i.abx, label %bb.ee, label %.loopexit.i.i

bb.ee:                                            ; preds = %.peel.next.i.i
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.04.0.i.i.i
  store i16 1, ptr %i.aby, align 4
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.sroa.04.0.i.i.i
  store i8 0, ptr %i.abz, align 1
  %i.aca = add i64 %i.uq, -2
  store i64 %i.aca, ptr %i.uf, align 64
  br i1 %i.ug, label %._crit_edge.thread.i.i.i, label %bb.ef

._crit_edge.thread.i.i.i:                         ; preds = %bb.eg, %bb.ee, %.backedge.i.peel.i.i
  %.sroa.0.1.i.lcssa146.i.i = phi i64 [ %.sroa.0.1.i.peel.i.i, %.backedge.i.peel.i.i ], [ %.sroa.0.1.i.i.i, %bb.ee ], [ %.sroa.0.1.i.i.i, %bb.eg ] ; 2 uses
  store i64 2, ptr %i.n, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.lcssa146.i.i, ptr %i.acb, align 8
  br label %.lr.ph90.preheader.i.i.i

.loopexit.i.i:                                    ; preds = %.peel.next.i.i, %.lr.ph.i.i81.i
  %.sroa.04.0.i.lcssa.i.i = phi i64 [ %i.uj, %.lr.ph.i.i81.i ], [ %i.abu, %.peel.next.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i.lcssa.i.i, i64 39, ptr nonnull align 8 @2) #21
  unreachable

bb.ef:                                            ; preds = %bb.ee
  %i.acc = icmp ult i64 %.sroa.04.0.i.i.i, %i.tv
  br i1 %i.acc, label %bb.eg, label %.loopexit153.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %.sroa.04.0.i.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 2
  %i.acf = load i16, ptr %i.ace, align 2
  %i.acg = zext i16 %i.acf to i64
  %i.ach = load i64, ptr %i.uh, align 8
  %i.aci = sub i64 %i.ach, %i.acg
  store i64 %i.aci, ptr %i.uh, align 8
  br label %._crit_edge.thread.i.i.i

.loopexit153.i.i:                                 ; preds = %bb.ef, %bb.cr
  %.sroa.04.0.i.lcssa147.i.i = phi i64 [ %i.uj, %bb.cr ], [ %i.abu, %bb.ef ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.04.0.i.lcssa147.i.i, i64 %i.tv, ptr nonnull align 8 @3) #21
  unreachable

_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i: ; preds = %.outer.split.us.i.i.i.i, %.split125.us.i.i.i.i, %._crit_edge.i.i.i.i, %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.m, ptr noundef nonnull align 2 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate9gen_codes(ptr align 2 %i.tr, i64 39, i64 %.sroa.0.0.lcssa189.i.i.i, ptr align 2 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RINvNtCs4NRVxsYgnAr_4core3mem4swapINtNtCsehVNULHUZqJ_7zlib_rs7deflate8TreeDescKj27_EEBB_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.tk)
  %i.acj = getelementptr inbounds nuw i8, ptr %i.tj, i64 3006
  %i.ack = load i16, ptr %i.acj, align 2
  %.not.i80.i = icmp eq i16 %i.ack, 0
  br i1 %.not.i80.i, label %bb.eh, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.eh:                                            ; preds = %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.tj, i64 2950
  %i.acm = load i16, ptr %i.acl, align 2
  %.not.1.i.i = icmp eq i16 %i.acm, 0
  br i1 %.not.1.i.i, label %bb.ei, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ei:                                            ; preds = %bb.eh
  %i.acn = getelementptr inbounds nuw i8, ptr %i.tj, i64 3002
  %i.aco = load i16, ptr %i.acn, align 2
  %.not.2.i.i = icmp eq i16 %i.aco, 0
  br i1 %.not.2.i.i, label %bb.ej, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ej:                                            ; preds = %bb.ei
  %i.acp = getelementptr inbounds nuw i8, ptr %i.tj, i64 2954
  %i.acq = load i16, ptr %i.acp, align 2
  %.not.3.i.i = icmp eq i16 %i.acq, 0
  br i1 %.not.3.i.i, label %bb.ek, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ek:                                            ; preds = %bb.ej
  %i.acr = getelementptr inbounds nuw i8, ptr %i.tj, i64 2998
  %i.acs = load i16, ptr %i.acr, align 2
  %.not.4.i.i = icmp eq i16 %i.acs, 0
  br i1 %.not.4.i.i, label %bb.el, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.el:                                            ; preds = %bb.ek
  %i.act = getelementptr inbounds nuw i8, ptr %i.tj, i64 2958
  %i.acu = load i16, ptr %i.act, align 2
  %.not.5.i.i = icmp eq i16 %i.acu, 0
  br i1 %.not.5.i.i, label %bb.em, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.em:                                            ; preds = %bb.el
  %i.acv = getelementptr inbounds nuw i8, ptr %i.tj, i64 2994
  %i.acw = load i16, ptr %i.acv, align 2
  %.not.6.i.i = icmp eq i16 %i.acw, 0
  br i1 %.not.6.i.i, label %bb.en, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.en:                                            ; preds = %bb.em
  %i.acx = getelementptr inbounds nuw i8, ptr %i.tj, i64 2962
  %i.acy = load i16, ptr %i.acx, align 2
  %.not.7.i.i = icmp eq i16 %i.acy, 0
  br i1 %.not.7.i.i, label %bb.eo, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.eo:                                            ; preds = %bb.en
  %i.acz = getelementptr inbounds nuw i8, ptr %i.tj, i64 2990
  %i.ada = load i16, ptr %i.acz, align 2
  %.not.8.i.i = icmp eq i16 %i.ada, 0
  br i1 %.not.8.i.i, label %bb.ep, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ep:                                            ; preds = %bb.eo
  %i.adb = getelementptr inbounds nuw i8, ptr %i.tj, i64 2966
  %i.adc = load i16, ptr %i.adb, align 2
  %.not.9.i.i = icmp eq i16 %i.adc, 0
  br i1 %.not.9.i.i, label %bb.eq, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.eq:                                            ; preds = %bb.ep
  %i.add = getelementptr inbounds nuw i8, ptr %i.tj, i64 2986
  %i.ade = load i16, ptr %i.add, align 2
  %.not.10.i.i = icmp eq i16 %i.ade, 0
  br i1 %.not.10.i.i, label %bb.er, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.er:                                            ; preds = %bb.eq
  %i.adf = getelementptr inbounds nuw i8, ptr %i.tj, i64 2970
  %i.adg = load i16, ptr %i.adf, align 2
  %.not.11.i.i = icmp eq i16 %i.adg, 0
  br i1 %.not.11.i.i, label %bb.es, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.es:                                            ; preds = %bb.er
  %i.adh = getelementptr inbounds nuw i8, ptr %i.tj, i64 2982
  %i.adi = load i16, ptr %i.adh, align 2
  %.not.12.i.i = icmp eq i16 %i.adi, 0
  br i1 %.not.12.i.i, label %bb.et, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.et:                                            ; preds = %bb.es
  %i.adj = getelementptr inbounds nuw i8, ptr %i.tj, i64 2974
  %i.adk = load i16, ptr %i.adj, align 2
  %.not.13.i.i = icmp eq i16 %i.adk, 0
  br i1 %.not.13.i.i, label %bb.eu, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.eu:                                            ; preds = %bb.et
  %i.adl = getelementptr inbounds nuw i8, ptr %i.tj, i64 2978
  %i.adm = load i16, ptr %i.adl, align 2
  %.not.14.i.i = icmp eq i16 %i.adm, 0
  br i1 %.not.14.i.i, label %bb.ev, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ev:                                            ; preds = %bb.eu
  %i.adn = getelementptr inbounds nuw i8, ptr %i.tj, i64 2946
  %i.ado = load i16, ptr %i.adn, align 2
  %.not.15.i.i = icmp eq i16 %i.ado, 0
  %spec.select.i.i = select i1 %.not.15.i.i, i64 2, i64 3
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i

_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i: ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ 18, %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i ], [ 10, %bb.eo ], [ 17, %bb.eh ], [ %spec.select.i.i, %bb.ev ], [ 16, %bb.ei ], [ 8, %bb.eq ], [ 15, %bb.ej ], [ 4, %bb.eu ], [ 14, %bb.ek ], [ 9, %bb.ep ], [ 13, %bb.el ], [ 5, %bb.et ], [ 12, %bb.em ], [ 7, %bb.er ], [ 11, %bb.en ], [ 6, %bb.es ] ; 3 uses
  %i.adp = mul nuw nsw i64 %.sroa.0.0.lcssa.i.i, 3
  %i.adq = add nuw nsw i64 %i.adp, 17
  %i.adr = getelementptr inbounds nuw i8, ptr %i.tj, i64 192 ; 2 uses
  %i.ads = load i64, ptr %i.adr, align 64
  %i.adt = add i64 %i.adq, %i.ads
  store i64 %i.adt, ptr %i.adr, align 64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.adu = load ptr, ptr %i.ac, align 8           ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 192
  %i.adw = load i64, ptr %i.adv, align 64
  %i.adx = add i64 %i.adw, 10
  %i.ady = lshr i64 %i.adx, 3                     ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adu, i64 200
  %i.aea = load i64, ptr %i.adz, align 8
  %i.aeb = add i64 %i.aea, 10
  %i.aec = lshr i64 %i.aeb, 3                     ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.aec, %i.ady
  br i1 %.not.i, label %bb.fc, label %bb.fd

bb.ew:                                            ; preds = %bb.d
  %i.aed = getelementptr inbounds nuw i8, ptr %i.at, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aee = getelementptr inbounds nuw i8, ptr %i.at, i64 496 ; 2 uses
  store ptr %i.aed, ptr %i.i, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aee, ptr %i.aef, align 8
  %i.aeg = call align 2 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.i) ; 2 uses
  %.not10.i.i = icmp eq ptr %i.aeg, null
  br i1 %.not10.i.i, label %._crit_edge.i85.i, label %.lr.ph.i82.i

.lr.ph.i82.i:                                     ; preds = %bb.ew, %bb.fa
  %i.aeh = phi ptr [ %i.aew, %bb.fa ], [ %i.aeg, %bb.ew ]
  %.sroa.01.011.i.i = phi i64 [ %i.aev, %bb.fa ], [ 4093624447, %bb.ew ] ; 2 uses
  %i.aei = and i64 %.sroa.01.011.i.i, 1
  %.not8.i.i = icmp eq i64 %i.aei, 0
  br i1 %.not8.i.i, label %bb.fa, label %bb.fb

._crit_edge.i85.i:                                ; preds = %bb.fa, %bb.ew
  %i.aej = getelementptr inbounds nuw i8, ptr %i.at, i64 404
  %i.aek = load i16, ptr %i.aej, align 4
  %.not5.i.i = icmp eq i16 %i.aek, 0
  br i1 %.not5.i.i, label %bb.ex, label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i

bb.ex:                                            ; preds = %._crit_edge.i85.i
  %i.ael = getelementptr inbounds nuw i8, ptr %i.at, i64 408
  %i.aem = load i16, ptr %i.ael, align 4
  %.not6.i.i = icmp eq i16 %i.aem, 0
  br i1 %.not6.i.i, label %bb.ey, label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i

bb.ey:                                            ; preds = %bb.ex
  %i.aen = getelementptr inbounds nuw i8, ptr %i.at, i64 420
  %i.aeo = load i16, ptr %i.aen, align 4
  %.not7.i.i = icmp eq i16 %i.aeo, 0
  br i1 %.not7.i.i, label %bb.ez, label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i

bb.ez:                                            ; preds = %bb.ey
  %i.aep = call { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueE3newBS_(ptr nonnull align 2 %i.aee, i64 224) ; 2 uses
  %i.aeq = extractvalue { ptr, ptr } %i.aep, 0
  %i.aer = extractvalue { ptr, ptr } %i.aep, 1
  store ptr %i.aeq, ptr %i.h, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aer, ptr %i.aes, align 8
  %i.aet = call zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_5State16detect_data_type0EBU_(ptr nonnull align 8 %i.h)
  %i.aeu = zext i1 %i.aet to i32
  br label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i

bb.fa:                                            ; preds = %bb.fb, %.lr.ph.i82.i
  %i.aev = lshr i64 %.sroa.01.011.i.i, 1
  %i.aew = call align 2 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCsehVNULHUZqJ_7zlib_rs7deflate5ValueENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.i) ; 2 uses
  %.not.i84.i = icmp eq ptr %i.aew, null
  br i1 %.not.i84.i, label %._crit_edge.i85.i, label %.lr.ph.i82.i

bb.fb:                                            ; preds = %.lr.ph.i82.i
  %i.aex = load i16, ptr %i.aeh, align 2
  %.not9.i.i = icmp eq i16 %i.aex, 0
  br i1 %.not9.i.i, label %bb.fa, label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i

_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State16detect_data_type.exit.i: ; preds = %bb.fb, %bb.ez, %bb.ey, %bb.ex, %._crit_edge.i85.i
  %.sroa.0.0.i.i = phi i32 [ 1, %bb.ex ], [ %i.aeu, %bb.ez ], [ 1, %._crit_edge.i85.i ], [ 1, %bb.ey ], [ 0, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 %.sroa.0.0.i.i, ptr %i.az, align 8
  %.pre.i = load ptr, ptr %i.ac, align 8
  br label %bb.h

bb.fc:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.adu, i64 3
  %i.aez = load i8, ptr %i.aey, align 1
  %i.afa = icmp eq i8 %i.aez, 4
  br i1 %i.afa, label %bb.fd, label %bb.g

bb.fd:                                            ; preds = %bb.fc, %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13build_bl_tree.exit.i
  br label %bb.g
end_hunk_0
