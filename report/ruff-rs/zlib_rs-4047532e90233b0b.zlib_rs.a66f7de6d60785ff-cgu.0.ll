Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-4047532e90233b0b.zlib_rs.a66f7de6d60785ff-cgu.0?download=true
inline.NumInlined: 179
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate16flush_block_only:bb.a
  %i.ed = extractvalue { i64, i64 } %i.ea, 1      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bl, i64 192 ; 7 uses
  %i.ef = icmp eq i64 %.fr135.i.i.i, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bl, i64 200 ; 2 uses
  br i1 %i.ef, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %.backedge.us.i.i.i
  %i.eh = phi i64 [ %i.fr, %.backedge.us.i.i.i ], [ %i.ed, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.0104.us.i.i.i = phi i32 [ %spec.select62.us.i.i.i, %.backedge.us.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.ei = icmp ult i64 %i.eh, 573
  br i1 %i.ei, label %bb.o, label %.split.us.i.i.i

bb.o:                                             ; preds = %.lr.ph.split.us.i.i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !66 ; 2 uses
  %i.el = zext i32 %i.ek to i64                   ; 5 uses
  %i.em = icmp ult i32 %i.ek, 573
  br i1 %i.em, label %bb.p, label %.split106.us.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !noalias !66 ; 2 uses
  %i.eq = zext i16 %i.ep to i64                   ; 2 uses
  %i.er = icmp ult i16 %i.ep, 573
  br i1 %i.er, label %bb.q, label %.split109.us.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !noalias !66
  %i.ev = add i16 %i.eu, 1                        ; 2 uses
  %i.ew = icmp ugt i16 %i.ev, %.fr.i.i.i
  %spec.select.us.i.i.i = call i16 @llvm.umin.i16(i16 %i.ev, i16 %.fr.i.i.i) ; 3 uses
  %i.ex = zext i1 %i.ew to i32
  %spec.select62.us.i.i.i = add i32 %.sroa.0.0104.us.i.i.i, %i.ex ; 2 uses
  store i16 %spec.select.us.i.i.i, ptr %i.eo, align 2, !noalias !66
  %i.ey = icmp ult i64 %i.cz, %i.el
  br i1 %i.ey, label %.backedge.us.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ez = zext i16 %spec.select.us.i.i.i to i64   ; 3 uses
  %i.fa = icmp ult i16 %spec.select.us.i.i.i, 16
  br i1 %i.fa, label %bb.s, label %.split112.us.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ez ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !noalias !66
  %i.fd = add i16 %i.fc, 1
  store i16 %i.fd, ptr %i.fb, align 2, !noalias !66
  %.not61.us.i.i.i = icmp ugt i64 %i.dj, %i.el
  br i1 %.not61.us.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = sub nuw nsw i64 %i.el, %i.dj            ; 3 uses
  %i.ff = icmp ult i64 %i.fe, %i.dh
  br i1 %i.ff, label %bb.u, label %.split115.us.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !66
  %i.fi = zext i8 %i.fh to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sroa.010.0.us.i.i.i = phi i64 [ %i.fi, %bb.u ], [ 0, %bb.s ]
  %i.fj = load i16, ptr %i.en, align 4, !noalias !66
  %i.fk = zext i16 %i.fj to i64
  %i.fl = add nuw nsw i64 %.sroa.010.0.us.i.i.i, %i.ez
  %i.fm = mul nuw nsw i64 %i.fl, %i.fk
  %i.fn = load i64, ptr %i.ee, align 64, !noalias !66
  %i.fo = add i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.ee, align 64, !noalias !66
  br label %.backedge.us.i.i.i

.backedge.us.i.i.i:                               ; preds = %bb.v, %bb.q
  %i.fp = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.v), !noalias !66 ; 2 uses
  %i.fq = extractvalue { i64, i64 } %i.fp, 0
  %i.fr = extractvalue { i64, i64 } %i.fp, 1
  %i.fs = trunc nuw i64 %i.fq to i1
  br i1 %i.fs, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i

bb.w:                                             ; preds = %bb.l
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.dr, i64 573, ptr nonnull align 8 @5) #21, !noalias !66
  unreachable

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.backedge.i.i.i
  %i.ft = phi i64 [ %i.ir, %.backedge.i.i.i ], [ %i.ed, %.lr.ph.i.i.i ] ; 3 uses
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
  %i.gb = load i16, ptr %i.ga, align 2, !noalias !66 ; 2 uses
  %i.gc = icmp eq i16 %i.gb, 0
  br i1 %i.gc, label %bb.x, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.sroa.012.0.us.i.i.i ; 2 uses
  %i.ge = add i16 %i.gb, -1
  store i16 %i.ge, ptr %i.gd, align 2, !noalias !66
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 2 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !noalias !66
  %i.gh = add i16 %i.gg, 2
  store i16 %i.gh, ptr %i.gf, align 2, !noalias !66
  %i.gi = load i16, ptr %i.fy, align 2, !noalias !66
  %i.gj = add i16 %i.gi, -1
  store i16 %i.gj, ptr %i.fy, align 2, !noalias !66
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
  %i.go = load i16, ptr %i.gn, align 2, !noalias !66
  %i.gp = icmp eq i16 %i.go, 0
  br i1 %i.gp, label %.preheader.split.i.i.i, label %bb.ab

.split120.us.i.i.i:                               ; preds = %.preheader.split.i.i.i, %bb.x
  %.us-phi121.i.i.i = phi i64 [ %.sroa.012.0.us.i.i.i, %bb.x ], [ %.sroa.012.0.i.i.i, %.preheader.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !66
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp eq i64 %.sroa.012.0.i.i.i, 15
  br i1 %.not.i.i.i, label %.split123.us.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.fw, i64 16, ptr nonnull align 8 @8) #21, !noalias !66
  unreachable

.split123.us.i.i.i:                               ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !66
  unreachable

.split125.us.i.i.i:                               ; preds = %bb.z
  %i.gq = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i.i), !noalias !66
  %i.gr = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.gq), !noalias !66
  %i.gs = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.gr), !noalias !66
  store i48 %i.gs, ptr %i.u, align 8, !noalias !66
  %i.gt = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.u), !noalias !66 ; 2 uses
  %i.gu = extractvalue { i16, i16 } %i.gt, 0
  %i.gv = trunc i16 %i.gu to i1
  br i1 %i.gv, label %.lr.ph133.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i

.loopexit.i.i.i:                                  ; preds = %.outer.i.i.i, %bb.ad
  %.sroa.016.1.lcssa.i.i.i = phi i64 [ %.sroa.016.0131.i.i.i, %bb.ad ], [ %i.he, %.outer.i.i.i ]
  %i.gw = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.u), !noalias !66 ; 2 uses
  %i.gx = extractvalue { i16, i16 } %i.gw, 0
  %i.gy = trunc i16 %i.gx to i1
  br i1 %i.gy, label %.lr.ph133.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i

.lr.ph133.i.i.i:                                  ; preds = %.split125.us.i.i.i, %.loopexit.i.i.i
  %.pn.i.i.i = phi { i16, i16 } [ %i.gw, %.loopexit.i.i.i ], [ %i.gt, %.split125.us.i.i.i ]
  %.sroa.016.0131.i.i.i = phi i64 [ %.sroa.016.1.lcssa.i.i.i, %.loopexit.i.i.i ], [ 573, %.split125.us.i.i.i ] ; 2 uses
  %i.gz = extractvalue { i16, i16 } %.pn.i.i.i, 1 ; 5 uses
  %i.ha = zext i16 %i.gz to i64                   ; 2 uses
  %i.hb = icmp ult i16 %i.gz, 16
  br i1 %i.hb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph133.i.i.i
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.ha
  %i.hd = load i16, ptr %i.hc, align 2, !noalias !66 ; 2 uses
  %.not59127.i.i.i = icmp eq i16 %i.hd, 0
  br i1 %.not59127.i.i.i, label %.loopexit.i.i.i, label %.outer.split.i.i.i

bb.ae:                                            ; preds = %.lr.ph133.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ha, i64 16, ptr nonnull align 8 @9) #21, !noalias !66
  unreachable

bb.af:                                            ; preds = %.outer.split.i.i.i, %bb.ag
  %.sroa.016.1.i.i.i = phi i64 [ %i.he, %bb.ag ], [ %.sroa.016.1.ph128.i.i.i, %.outer.split.i.i.i ]
  %i.he = add i64 %.sroa.016.1.i.i.i, -1          ; 6 uses
  %i.hf = icmp ult i64 %i.he, 573
  br i1 %i.hf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.he
  %i.hh = load i32, ptr %i.hg, align 4, !noalias !66 ; 2 uses
  %i.hi = zext i32 %i.hh to i64                   ; 3 uses
  %i.hj = icmp ult i64 %i.cz, %i.hi
  br i1 %i.hj, label %bb.af, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.he, i64 573, ptr nonnull align 8 @10) #21, !noalias !66
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.hk = icmp ult i32 %i.hh, 573
  br i1 %i.hk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.hi ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2 ; 3 uses
  %i.hn = load i16, ptr %i.hm, align 2, !noalias !66
  %.not60.i.i.i = icmp eq i16 %i.hn, %i.gz
  br i1 %.not60.i.i.i, label %.outer.i.i.i, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.hi, i64 573, ptr nonnull align 8 @11) #21, !noalias !66
  unreachable

.outer.i.i.i:                                     ; preds = %bb.al, %bb.aj
  %i.ho = add i16 %.sroa.021.0.ph129.i.i.i, -1    ; 2 uses
  %.not59.i.i.i = icmp eq i16 %i.ho, 0
  br i1 %.not59.i.i.i, label %.loopexit.i.i.i, label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %bb.ad, %.outer.i.i.i
  %.sroa.021.0.ph129.i.i.i = phi i16 [ %i.ho, %.outer.i.i.i ], [ %i.hd, %bb.ad ]
  %.sroa.016.1.ph128.i.i.i = phi i64 [ %i.he, %.outer.i.i.i ], [ %.sroa.016.0131.i.i.i, %bb.ad ]
  br label %bb.af

bb.al:                                            ; preds = %bb.aj
  %i.hp = load i16, ptr %i.hl, align 4, !noalias !66
  %i.hq = mul i16 %i.hp, %i.gz
  %i.hr = zext i16 %i.hq to i64
  %i.hs = load i64, ptr %i.ee, align 64, !noalias !66
  %i.ht = add i64 %i.hs, %i.hr                    ; 2 uses
  store i64 %i.ht, ptr %i.ee, align 64, !noalias !66
  %i.hu = load i16, ptr %i.hm, align 2, !noalias !66
  %i.hv = load i16, ptr %i.hl, align 4, !noalias !66
  %i.hw = mul i16 %i.hv, %i.hu
  %i.hx = zext i16 %i.hw to i64
  %i.hy = sub i64 %i.ht, %i.hx
  store i64 %i.hy, ptr %i.ee, align 64, !noalias !66
  store i16 %i.gz, ptr %i.hm, align 2, !noalias !66
  br label %.outer.i.i.i

bb.am:                                            ; preds = %.lr.ph.split.i.i.i
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ft
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !66 ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 8 uses
  %i.ic = icmp ult i32 %i.ia, 573
  br i1 %i.ic, label %bb.an, label %.split106.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.eh, %.lr.ph.split.us.i.i.i ], [ %i.ft, %.lr.ph.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !66
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ib ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2 ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !66 ; 2 uses
  %i.ig = zext i16 %i.if to i64                   ; 2 uses
  %i.ih = icmp ult i16 %i.if, 573
  br i1 %i.ih, label %bb.ao, label %.split109.us.i.i.i

.split106.us.i.i.i:                               ; preds = %bb.am, %bb.o
  %.us-phi107.i.i.i = phi i64 [ %i.el, %bb.o ], [ %i.ib, %bb.am ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i.i, i64 573, ptr nonnull align 8 @13) #21, !noalias !66
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !noalias !66
  %i.il = add i16 %i.ik, 1                        ; 2 uses
  %i.im = icmp ugt i16 %i.il, %.fr.i.i.i
  %spec.select.i.i.i = call i16 @llvm.umin.i16(i16 %i.il, i16 %.fr.i.i.i) ; 3 uses
  %i.in = zext i1 %i.im to i32
  %spec.select62.i.i.i = add i32 %.sroa.0.0104.i.i.i, %i.in ; 2 uses
  store i16 %spec.select.i.i.i, ptr %i.ie, align 2, !noalias !66
  %i.io = icmp ult i64 %i.cz, %i.ib
  br i1 %i.io, label %.backedge.i.i.i, label %bb.ap

.backedge.i.i.i:                                  ; preds = %bb.au, %bb.ao
  %i.ip = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.v), !noalias !66 ; 2 uses
  %i.iq = extractvalue { i64, i64 } %i.ip, 0
  %i.ir = extractvalue { i64, i64 } %i.ip, 1
  %i.is = trunc nuw i64 %i.iq to i1
  br i1 %i.is, label %.lr.ph.split.i.i.i, label %._crit_edge.i.i.i

.split109.us.i.i.i:                               ; preds = %bb.an, %bb.p
  %.us-phi110.i.i.i = phi i64 [ %i.eq, %bb.p ], [ %i.ig, %bb.an ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i.i, i64 573, ptr nonnull align 8 @14) #21, !noalias !66
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.it = zext i16 %spec.select.i.i.i to i64      ; 3 uses
  %i.iu = icmp ult i16 %spec.select.i.i.i, 16
  br i1 %i.iu, label %bb.aq, label %.split112.us.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.it ; 2 uses
  %i.iw = load i16, ptr %i.iv, align 2, !noalias !66
  %i.ix = add i16 %i.iw, 1
  store i16 %i.ix, ptr %i.iv, align 2, !noalias !66
  %.not61.i.i.i = icmp ugt i64 %i.dj, %i.ib
  br i1 %.not61.i.i.i, label %bb.at, label %bb.ar

.split112.us.i.i.i:                               ; preds = %bb.ap, %bb.r
  %.us-phi113.i.i.i = phi i64 [ %i.ez, %bb.r ], [ %i.it, %bb.ap ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !66
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.iy = sub nuw nsw i64 %i.ib, %i.dj            ; 3 uses
  %i.iz = icmp ult i64 %i.iy, %i.dh
  br i1 %i.iz, label %bb.as, label %.split115.us.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.iy
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !66
  %i.jc = zext i8 %i.jb to i64
  br label %bb.at

.split115.us.i.i.i:                               ; preds = %bb.ar, %bb.t
  %.us-phi116.i.i.i = phi i64 [ %i.fe, %bb.t ], [ %i.iy, %bb.ar ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i.i, i64 %i.dh, ptr nonnull align 8 @16) #21, !noalias !66
  unreachable

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.010.0.i.i.i = phi i64 [ %i.jc, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %i.jd = load i16, ptr %i.id, align 4, !noalias !66
  %i.je = zext i16 %i.jd to i64                   ; 2 uses
  %i.jf = add nuw nsw i64 %.sroa.010.0.i.i.i, %i.it
  %i.jg = mul nuw nsw i64 %i.jf, %i.je
  %i.jh = load i64, ptr %i.ee, align 64, !noalias !66
  %i.ji = add i64 %i.jg, %i.jh
  store i64 %i.ji, ptr %i.ee, align 64, !noalias !66
  %i.jj = icmp ugt i64 %.fr135.i.i.i, %i.ib
  br i1 %i.jj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ib
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jm = load i16, ptr %i.jl, align 2, !noalias !66
  %i.jn = zext i16 %i.jm to i64
  %i.jo = add nuw nsw i64 %.sroa.010.0.i.i.i, %i.jn
  %i.jp = mul nuw nsw i64 %i.jo, %i.je
  %i.jq = load i64, ptr %i.eg, align 8, !noalias !66
  %i.jr = add i64 %i.jp, %i.jq
  store i64 %i.jr, ptr %i.eg, align 8, !noalias !66
  br label %.backedge.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ib, i64 %.fr135.i.i.i, ptr nonnull align 8 @17) #21, !noalias !66
  unreachable

.lr.ph90.i.i:                                     ; preds = %.lr.ph90.i.i, %.lr.ph90.preheader.i.i
  %.sroa.05.088.i.i = phi i64 [ %i.js, %.lr.ph90.i.i ], [ %i.cx, %.lr.ph90.preheader.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.y, ptr align 2 %i.bm, i64 573, i64 %.sroa.05.088.i.i)
  %i.js = add nsw i64 %.sroa.05.088.i.i, -1       ; 2 uses
  %.not.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.i.i, label %._crit_edge91.i.i, label %.lr.ph90.i.i

.peel.next.i:                                     ; preds = %.backedge.i.peel.i
  %i.jt = icmp slt i64 %.sroa.0.1.i.peel.i, 2     ; 2 uses
  %i.ju = add nsw i64 %.sroa.0.1.i.peel.i, 1      ; 4 uses
  %.sroa.04.0.i.i = select i1 %i.jt, i64 %i.ju, i64 0 ; 6 uses
  %.sroa.0.1.i.i = select i1 %i.jt, i64 %i.ju, i64 %.sroa.0.1.i.peel.i ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.jw = trunc nuw nsw i64 %.sroa.04.0.i.i to i32
  store i32 %i.jw, ptr %i.jv, align 8
  %i.jx = icmp samesign ult i64 %.sroa.04.0.i.i, 573
  br i1 %i.jx, label %bb.aw, label %.loopexit.i

bb.aw:                                            ; preds = %.peel.next.i
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.04.0.i.i
  store i16 1, ptr %i.jy, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.04.0.i.i
  store i8 0, ptr %i.jz, align 1
  %i.ka = load i64, ptr %i.ca, align 64
  %i.kb = add i64 %i.ka, -1
  store i64 %i.kb, ptr %i.ca, align 64
  br i1 %i.cb, label %._crit_edge.thread.i.i, label %bb.ax

._crit_edge.thread.i.i:                           ; preds = %bb.ay, %bb.aw, %.backedge.i.peel.i
  %.sroa.0.1.i.lcssa526.i = phi i64 [ %.sroa.0.1.i.peel.i, %.backedge.i.peel.i ], [ %.sroa.0.1.i.i, %bb.aw ], [ %.sroa.0.1.i.i, %bb.ay ] ; 2 uses
  store i64 2, ptr %i.y, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.lcssa526.i, ptr %i.kc, align 8
end_hunk_0
begin_hunk_1_@_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate16flush_block_only:bb.a
  %i.ng = extractvalue { i64, i64 } %i.nd, 1      ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ko, i64 192 ; 7 uses
  %i.ni = icmp eq i64 %.fr135.i.i17.i, 0
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ko, i64 200 ; 2 uses
  br i1 %i.ni, label %.lr.ph.split.us.i.i65.i, label %.lr.ph.split.i.i20.i

.lr.ph.split.us.i.i65.i:                          ; preds = %.lr.ph.i.i19.i, %.backedge.us.i.i71.i
  %i.nk = phi i64 [ %i.ou, %.backedge.us.i.i71.i ], [ %i.ng, %.lr.ph.i.i19.i ] ; 3 uses
  %.sroa.0.0104.us.i.i66.i = phi i32 [ %spec.select62.us.i.i68.i, %.backedge.us.i.i71.i ], [ 0, %.lr.ph.i.i19.i ]
  %i.nl = icmp ult i64 %i.nk, 573
  br i1 %i.nl, label %bb.bf, label %.split.us.i.i22.i

bb.bf:                                            ; preds = %.lr.ph.split.us.i.i65.i
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.nk
  %i.nn = load i32, ptr %i.nm, align 4, !noalias !68 ; 2 uses
  %i.no = zext i32 %i.nn to i64                   ; 5 uses
  %i.np = icmp ult i32 %i.nn, 61
  br i1 %i.np, label %bb.bg, label %.split106.us.i.i24.i

bb.bg:                                            ; preds = %bb.bf
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.no ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 2 ; 2 uses
  %i.ns = load i16, ptr %i.nr, align 2, !noalias !68 ; 2 uses
  %i.nt = zext i16 %i.ns to i64                   ; 2 uses
  %i.nu = icmp ult i16 %i.ns, 61
  br i1 %i.nu, label %bb.bh, label %.split109.us.i.i26.i

bb.bh:                                            ; preds = %bb.bg
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.nt
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.nx = load i16, ptr %i.nw, align 2, !noalias !68
  %i.ny = add i16 %i.nx, 1                        ; 2 uses
  %i.nz = icmp ugt i16 %i.ny, %.fr.i.i18.i
  %spec.select.us.i.i67.i = call i16 @llvm.umin.i16(i16 %i.ny, i16 %.fr.i.i18.i) ; 3 uses
  %i.oa = zext i1 %i.nz to i32
  %spec.select62.us.i.i68.i = add i32 %.sroa.0.0104.us.i.i66.i, %i.oa ; 2 uses
  store i16 %spec.select.us.i.i67.i, ptr %i.nr, align 2, !noalias !68
  %i.ob = icmp ult i64 %i.mc, %i.no
  br i1 %i.ob, label %.backedge.us.i.i71.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oc = zext i16 %spec.select.us.i.i67.i to i64 ; 3 uses
  %i.od = icmp ult i16 %spec.select.us.i.i67.i, 16
  br i1 %i.od, label %bb.bj, label %.split112.us.i.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.oc ; 2 uses
  %i.of = load i16, ptr %i.oe, align 2, !noalias !68
  %i.og = add i16 %i.of, 1
  store i16 %i.og, ptr %i.oe, align 2, !noalias !68
  %.not61.us.i.i69.i = icmp ugt i64 %i.mm, %i.no
  br i1 %.not61.us.i.i69.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oh = sub nuw nsw i64 %i.no, %i.mm            ; 3 uses
  %i.oi = icmp ult i64 %i.oh, %i.mk
  br i1 %i.oi, label %bb.bl, label %.split115.us.i.i33.i

bb.bl:                                            ; preds = %bb.bk
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.oh
  %i.ok = load i8, ptr %i.oj, align 1, !noalias !68
  %i.ol = zext i8 %i.ok to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.010.0.us.i.i70.i = phi i64 [ %i.ol, %bb.bl ], [ 0, %bb.bj ]
  %i.om = load i16, ptr %i.nq, align 4, !noalias !68
  %i.on = zext i16 %i.om to i64
  %i.oo = add nuw nsw i64 %.sroa.010.0.us.i.i70.i, %i.oc
  %i.op = mul nuw nsw i64 %i.oo, %i.on
  %i.oq = load i64, ptr %i.nh, align 64, !noalias !68
  %i.or = add i64 %i.op, %i.oq
  store i64 %i.or, ptr %i.nh, align 64, !noalias !68
  br label %.backedge.us.i.i71.i

.backedge.us.i.i71.i:                             ; preds = %bb.bm, %bb.bh
  %i.os = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.q), !noalias !68 ; 2 uses
  %i.ot = extractvalue { i64, i64 } %i.os, 0
  %i.ou = extractvalue { i64, i64 } %i.os, 1
  %i.ov = trunc nuw i64 %i.ot to i1
  br i1 %i.ov, label %.lr.ph.split.us.i.i65.i, label %._crit_edge.i.i37.i

bb.bn:                                            ; preds = %bb.bc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.mu, i64 61, ptr nonnull align 8 @5) #21, !noalias !68
  unreachable

.lr.ph.split.i.i20.i:                             ; preds = %.lr.ph.i.i19.i, %.backedge.i.i36.i
  %i.ow = phi i64 [ %i.ru, %.backedge.i.i36.i ], [ %i.ng, %.lr.ph.i.i19.i ] ; 3 uses
  %.sroa.0.0104.i.i21.i = phi i32 [ %spec.select62.i.i29.i, %.backedge.i.i36.i ], [ 0, %.lr.ph.i.i19.i ]
  %i.ox = icmp ult i64 %i.ow, 573
  br i1 %i.ox, label %bb.cd, label %.split.us.i.i22.i

._crit_edge.i.i37.i:                              ; preds = %.backedge.i.i36.i, %.backedge.us.i.i71.i
  %.sroa.0.0.lcssa.i.i38.i = phi i32 [ %spec.select62.us.i.i68.i, %.backedge.us.i.i71.i ], [ %spec.select62.i.i29.i, %.backedge.i.i36.i ] ; 2 uses
  %i.oy = icmp eq i32 %.sroa.0.0.lcssa.i.i38.i, 0
  br i1 %i.oy, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.preheader.i.i39.i

.preheader.i.i39.i:                               ; preds = %._crit_edge.i.i37.i
  %i.oz = zext i16 %.fr.i.i18.i to i64            ; 4 uses
  %i.pa = icmp ult i16 %.fr.i.i18.i, 16
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.oz ; 2 uses
  br i1 %i.pa, label %.preheader.split.us.i.i47.i, label %.preheader.split.i.i40.i

.preheader.split.us.i.i47.i:                      ; preds = %.preheader.i.i39.i, %bb.bq
  %.sroa.0.1.us.i.i48.i = phi i32 [ %i.pn, %bb.bq ], [ %.sroa.0.0.lcssa.i.i38.i, %.preheader.i.i39.i ]
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %.preheader.split.us.i.i47.i
  %.sroa.012.0.in.us.i.i49.i = phi i64 [ %i.oz, %.preheader.split.us.i.i47.i ], [ %.sroa.012.0.us.i.i50.i, %bb.bp ]
  %.sroa.012.0.us.i.i50.i = add nsw i64 %.sroa.012.0.in.us.i.i49.i, -1 ; 5 uses
  %i.pc = icmp ult i64 %.sroa.012.0.us.i.i50.i, 16
  br i1 %i.pc, label %bb.bp, label %.split120.us.i.i43.i

bb.bp:                                            ; preds = %bb.bo
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.us.i.i50.i
  %i.pe = load i16, ptr %i.pd, align 2, !noalias !68 ; 2 uses
  %i.pf = icmp eq i16 %i.pe, 0
  br i1 %i.pf, label %bb.bo, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.us.i.i50.i ; 2 uses
  %i.ph = add i16 %i.pe, -1
  store i16 %i.ph, ptr %i.pg, align 2, !noalias !68
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 2 ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2, !noalias !68
  %i.pk = add i16 %i.pj, 2
  store i16 %i.pk, ptr %i.pi, align 2, !noalias !68
  %i.pl = load i16, ptr %i.pb, align 2, !noalias !68
  %i.pm = add i16 %i.pl, -1
  store i16 %i.pm, ptr %i.pb, align 2, !noalias !68
  %i.pn = add i32 %.sroa.0.1.us.i.i48.i, -2       ; 2 uses
  %i.po = icmp slt i32 %i.pn, 1
  br i1 %i.po, label %.split125.us.i.i51.i, label %.preheader.split.us.i.i47.i

.preheader.split.i.i40.i:                         ; preds = %.preheader.i.i39.i, %bb.br
  %.sroa.012.0.in.i.i41.i = phi i64 [ %.sroa.012.0.i.i42.i, %bb.br ], [ %i.oz, %.preheader.i.i39.i ]
  %.sroa.012.0.i.i42.i = add nsw i64 %.sroa.012.0.in.i.i41.i, -1 ; 5 uses
  %i.pp = icmp ult i64 %.sroa.012.0.i.i42.i, 16
  br i1 %i.pp, label %bb.br, label %.split120.us.i.i43.i

bb.br:                                            ; preds = %.preheader.split.i.i40.i
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.sroa.012.0.i.i42.i
  %i.pr = load i16, ptr %i.pq, align 2, !noalias !68
  %i.ps = icmp eq i16 %i.pr, 0
  br i1 %i.ps, label %.preheader.split.i.i40.i, label %bb.bs

.split120.us.i.i43.i:                             ; preds = %.preheader.split.i.i40.i, %bb.bo
  %.us-phi121.i.i44.i = phi i64 [ %.sroa.012.0.us.i.i50.i, %bb.bo ], [ %.sroa.012.0.i.i42.i, %.preheader.split.i.i40.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i44.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !68
  unreachable

bb.bs:                                            ; preds = %bb.br
  %.not.i.i45.i = icmp eq i64 %.sroa.012.0.i.i42.i, 15
  br i1 %.not.i.i45.i, label %.split123.us.i.i46.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.oz, i64 16, ptr nonnull align 8 @8) #21, !noalias !68
  unreachable

.split123.us.i.i46.i:                             ; preds = %bb.bs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !68
  unreachable

.split125.us.i.i51.i:                             ; preds = %bb.bq
  %i.pt = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i18.i), !noalias !68
  %i.pu = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.pt), !noalias !68
  %i.pv = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.pu), !noalias !68
  store i48 %i.pv, ptr %i.p, align 8, !noalias !68
  %i.pw = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.p), !noalias !68 ; 2 uses
  %i.px = extractvalue { i16, i16 } %i.pw, 0
  %i.py = trunc i16 %i.px to i1
  br i1 %i.py, label %.lr.ph133.i.i52.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i

.loopexit.i.i63.i:                                ; preds = %.outer.i.i61.i, %bb.bu
  %.sroa.016.1.lcssa.i.i64.i = phi i64 [ %.sroa.016.0131.i.i54.i, %bb.bu ], [ %i.qh, %.outer.i.i61.i ]
  %i.pz = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.p), !noalias !68 ; 2 uses
  %i.qa = extractvalue { i16, i16 } %i.pz, 0
  %i.qb = trunc i16 %i.qa to i1
  br i1 %i.qb, label %.lr.ph133.i.i52.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i

.lr.ph133.i.i52.i:                                ; preds = %.split125.us.i.i51.i, %.loopexit.i.i63.i
  %.pn.i.i53.i = phi { i16, i16 } [ %i.pz, %.loopexit.i.i63.i ], [ %i.pw, %.split125.us.i.i51.i ]
  %.sroa.016.0131.i.i54.i = phi i64 [ %.sroa.016.1.lcssa.i.i64.i, %.loopexit.i.i63.i ], [ 573, %.split125.us.i.i51.i ] ; 2 uses
  %i.qc = extractvalue { i16, i16 } %.pn.i.i53.i, 1 ; 5 uses
  %i.qd = zext i16 %i.qc to i64                   ; 2 uses
  %i.qe = icmp ult i16 %i.qc, 16
  br i1 %i.qe, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph133.i.i52.i
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.qd
  %i.qg = load i16, ptr %i.qf, align 2, !noalias !68 ; 2 uses
  %.not59127.i.i55.i = icmp eq i16 %i.qg, 0
  br i1 %.not59127.i.i55.i, label %.loopexit.i.i63.i, label %.outer.split.i.i56.i

bb.bv:                                            ; preds = %.lr.ph133.i.i52.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.qd, i64 16, ptr nonnull align 8 @9) #21, !noalias !68
  unreachable

bb.bw:                                            ; preds = %.outer.split.i.i56.i, %bb.bx
  %.sroa.016.1.i.i59.i = phi i64 [ %i.qh, %bb.bx ], [ %.sroa.016.1.ph128.i.i58.i, %.outer.split.i.i56.i ]
  %i.qh = add i64 %.sroa.016.1.i.i59.i, -1        ; 6 uses
  %i.qi = icmp ult i64 %i.qh, 573
  br i1 %i.qi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qh
  %i.qk = load i32, ptr %i.qj, align 4, !noalias !68 ; 2 uses
  %i.ql = zext i32 %i.qk to i64                   ; 3 uses
  %i.qm = icmp ult i64 %i.mc, %i.ql
  br i1 %i.qm, label %bb.bw, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.qh, i64 573, ptr nonnull align 8 @10) #21, !noalias !68
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.qn = icmp ult i32 %i.qk, 61
  br i1 %i.qn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ql ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 2 ; 3 uses
  %i.qq = load i16, ptr %i.qp, align 2, !noalias !68
  %.not60.i.i60.i = icmp eq i16 %i.qq, %i.qc
  br i1 %.not60.i.i60.i, label %.outer.i.i61.i, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ql, i64 61, ptr nonnull align 8 @11) #21, !noalias !68
  unreachable

.outer.i.i61.i:                                   ; preds = %bb.cc, %bb.ca
  %i.qr = add i16 %.sroa.021.0.ph129.i.i57.i, -1  ; 2 uses
  %.not59.i.i62.i = icmp eq i16 %i.qr, 0
  br i1 %.not59.i.i62.i, label %.loopexit.i.i63.i, label %.outer.split.i.i56.i

.outer.split.i.i56.i:                             ; preds = %bb.bu, %.outer.i.i61.i
  %.sroa.021.0.ph129.i.i57.i = phi i16 [ %i.qr, %.outer.i.i61.i ], [ %i.qg, %bb.bu ]
  %.sroa.016.1.ph128.i.i58.i = phi i64 [ %i.qh, %.outer.i.i61.i ], [ %.sroa.016.0131.i.i54.i, %bb.bu ]
  br label %bb.bw

bb.cc:                                            ; preds = %bb.ca
  %i.qs = load i16, ptr %i.qo, align 4, !noalias !68
  %i.qt = mul i16 %i.qs, %i.qc
  %i.qu = zext i16 %i.qt to i64
  %i.qv = load i64, ptr %i.nh, align 64, !noalias !68
  %i.qw = add i64 %i.qv, %i.qu                    ; 2 uses
  store i64 %i.qw, ptr %i.nh, align 64, !noalias !68
  %i.qx = load i16, ptr %i.qp, align 2, !noalias !68
  %i.qy = load i16, ptr %i.qo, align 4, !noalias !68
  %i.qz = mul i16 %i.qy, %i.qx
  %i.ra = zext i16 %i.qz to i64
  %i.rb = sub i64 %i.qw, %i.ra
  store i64 %i.rb, ptr %i.nh, align 64, !noalias !68
  store i16 %i.qc, ptr %i.qp, align 2, !noalias !68
  br label %.outer.i.i61.i

bb.cd:                                            ; preds = %.lr.ph.split.i.i20.i
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ow
  %i.rd = load i32, ptr %i.rc, align 4, !noalias !68 ; 2 uses
  %i.re = zext i32 %i.rd to i64                   ; 8 uses
  %i.rf = icmp ult i32 %i.rd, 61
  br i1 %i.rf, label %bb.ce, label %.split106.us.i.i24.i

.split.us.i.i22.i:                                ; preds = %.lr.ph.split.i.i20.i, %.lr.ph.split.us.i.i65.i
  %.us-phi.i.i23.i = phi i64 [ %i.nk, %.lr.ph.split.us.i.i65.i ], [ %i.ow, %.lr.ph.split.i.i20.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i23.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !68
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.re ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 2 ; 2 uses
  %i.ri = load i16, ptr %i.rh, align 2, !noalias !68 ; 2 uses
  %i.rj = zext i16 %i.ri to i64                   ; 2 uses
  %i.rk = icmp ult i16 %i.ri, 61
  br i1 %i.rk, label %bb.cf, label %.split109.us.i.i26.i

.split106.us.i.i24.i:                             ; preds = %bb.cd, %bb.bf
  %.us-phi107.i.i25.i = phi i64 [ %i.no, %bb.bf ], [ %i.re, %bb.cd ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i25.i, i64 61, ptr nonnull align 8 @13) #21, !noalias !68
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.rj
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rn = load i16, ptr %i.rm, align 2, !noalias !68
  %i.ro = add i16 %i.rn, 1                        ; 2 uses
  %i.rp = icmp ugt i16 %i.ro, %.fr.i.i18.i
  %spec.select.i.i28.i = call i16 @llvm.umin.i16(i16 %i.ro, i16 %.fr.i.i18.i) ; 3 uses
  %i.rq = zext i1 %i.rp to i32
  %spec.select62.i.i29.i = add i32 %.sroa.0.0104.i.i21.i, %i.rq ; 2 uses
  store i16 %spec.select.i.i28.i, ptr %i.rh, align 2, !noalias !68
  %i.rr = icmp ult i64 %i.mc, %i.re
  br i1 %i.rr, label %.backedge.i.i36.i, label %bb.cg

.backedge.i.i36.i:                                ; preds = %bb.cl, %bb.cf
  %i.rs = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.q), !noalias !68 ; 2 uses
  %i.rt = extractvalue { i64, i64 } %i.rs, 0
  %i.ru = extractvalue { i64, i64 } %i.rs, 1
  %i.rv = trunc nuw i64 %i.rt to i1
  br i1 %i.rv, label %.lr.ph.split.i.i20.i, label %._crit_edge.i.i37.i

.split109.us.i.i26.i:                             ; preds = %bb.ce, %bb.bg
  %.us-phi110.i.i27.i = phi i64 [ %i.nt, %bb.bg ], [ %i.rj, %bb.ce ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i27.i, i64 61, ptr nonnull align 8 @14) #21, !noalias !68
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.rw = zext i16 %spec.select.i.i28.i to i64    ; 3 uses
  %i.rx = icmp ult i16 %spec.select.i.i28.i, 16
  br i1 %i.rx, label %bb.ch, label %.split112.us.i.i30.i

bb.ch:                                            ; preds = %bb.cg
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.rw ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2, !noalias !68
  %i.sa = add i16 %i.rz, 1
  store i16 %i.sa, ptr %i.ry, align 2, !noalias !68
  %.not61.i.i32.i = icmp ugt i64 %i.mm, %i.re
  br i1 %.not61.i.i32.i, label %bb.ck, label %bb.ci

.split112.us.i.i30.i:                             ; preds = %bb.cg, %bb.bi
  %.us-phi113.i.i31.i = phi i64 [ %i.oc, %bb.bi ], [ %i.rw, %bb.cg ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i31.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !68
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %i.sb = sub nuw nsw i64 %i.re, %i.mm            ; 3 uses
  %i.sc = icmp ult i64 %i.sb, %i.mk
  br i1 %i.sc, label %bb.cj, label %.split115.us.i.i33.i

bb.cj:                                            ; preds = %bb.ci
  %i.sd = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.sb
  %i.se = load i8, ptr %i.sd, align 1, !noalias !68
  %i.sf = zext i8 %i.se to i64
  br label %bb.ck

.split115.us.i.i33.i:                             ; preds = %bb.ci, %bb.bk
  %.us-phi116.i.i34.i = phi i64 [ %i.oh, %bb.bk ], [ %i.sb, %bb.ci ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i34.i, i64 %i.mk, ptr nonnull align 8 @16) #21, !noalias !68
  unreachable

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  %.sroa.010.0.i.i35.i = phi i64 [ %i.sf, %bb.cj ], [ 0, %bb.ch ] ; 2 uses
  %i.sg = load i16, ptr %i.rg, align 4, !noalias !68
  %i.sh = zext i16 %i.sg to i64                   ; 2 uses
  %i.si = add nuw nsw i64 %.sroa.010.0.i.i35.i, %i.rw
  %i.sj = mul nuw nsw i64 %i.si, %i.sh
  %i.sk = load i64, ptr %i.nh, align 64, !noalias !68
  %i.sl = add i64 %i.sj, %i.sk
  store i64 %i.sl, ptr %i.nh, align 64, !noalias !68
  %i.sm = icmp ugt i64 %.fr135.i.i17.i, %i.re
  br i1 %i.sm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.re
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  %i.sp = load i16, ptr %i.so, align 2, !noalias !68
  %i.sq = zext i16 %i.sp to i64
  %i.sr = add nuw nsw i64 %.sroa.010.0.i.i35.i, %i.sq
  %i.ss = mul nuw nsw i64 %i.sr, %i.sh
  %i.st = load i64, ptr %i.nj, align 8, !noalias !68
  %i.su = add i64 %i.ss, %i.st
  store i64 %i.su, ptr %i.nj, align 8, !noalias !68
  br label %.backedge.i.i36.i

bb.cm:                                            ; preds = %bb.ck
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.re, i64 %.fr135.i.i17.i, ptr nonnull align 8 @17) #21, !noalias !68
  unreachable

.lr.ph90.i13.i:                                   ; preds = %.lr.ph90.i13.i, %.lr.ph90.preheader.i11.i
  %.sroa.05.088.i14.i = phi i64 [ %i.sv, %.lr.ph90.i13.i ], [ %i.ma, %.lr.ph90.preheader.i11.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.t, ptr align 2 %i.kp, i64 61, i64 %.sroa.05.088.i14.i)
  %i.sv = add nsw i64 %.sroa.05.088.i14.i, -1     ; 2 uses
  %.not.i15.i = icmp eq i64 %i.sv, 0
  br i1 %.not.i15.i, label %._crit_edge91.i16.i, label %.lr.ph90.i13.i

.peel.next535.i:                                  ; preds = %.backedge.i76.peel.i
  %i.sw = icmp slt i64 %.sroa.0.1.i75.peel.i, 2   ; 2 uses
  %i.sx = add nsw i64 %.sroa.0.1.i75.peel.i, 1    ; 4 uses
  %.sroa.04.0.i74.i = select i1 %i.sw, i64 %i.sx, i64 0 ; 6 uses
  %.sroa.0.1.i75.i = select i1 %i.sw, i64 %i.sx, i64 %.sroa.0.1.i75.peel.i ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.sz = trunc nuw nsw i64 %.sroa.04.0.i74.i to i32
  store i32 %i.sz, ptr %i.sy, align 8
  %i.ta = icmp samesign ult i64 %.sroa.04.0.i74.i, 61
  br i1 %i.ta, label %bb.cn, label %.loopexit537.i

bb.cn:                                            ; preds = %.peel.next535.i
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.sroa.04.0.i74.i
  store i16 1, ptr %i.tb, align 4
  %i.tc = getelementptr inbounds nuw i8, ptr %i.lc, i64 %.sroa.04.0.i74.i
  store i8 0, ptr %i.tc, align 1
  %i.td = load i64, ptr %i.ld, align 64
  %i.te = add i64 %i.td, -1
  store i64 %i.te, ptr %i.ld, align 64
  br i1 %i.le, label %._crit_edge.thread.i77.i, label %bb.co

._crit_edge.thread.i77.i:                         ; preds = %bb.cp, %bb.cn, %.backedge.i76.peel.i
  %.sroa.0.1.i75.lcssa461.i = phi i64 [ %.sroa.0.1.i75.peel.i, %.backedge.i76.peel.i ], [ %.sroa.0.1.i75.i, %bb.cn ], [ %.sroa.0.1.i75.i, %bb.cp ] ; 2 uses
  store i64 2, ptr %i.t, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i75.lcssa461.i, ptr %i.tf, align 8
end_hunk_1
begin_hunk_2_@_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate16flush_block_only:bb.a
  %i.wo = extractvalue { i64, i64 } %i.wl, 1      ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.tp, i64 192 ; 6 uses
  %i.wq = icmp eq i64 %.fr135.i.i.i.i, 0
  %i.wr = getelementptr inbounds nuw i8, ptr %i.tp, i64 200 ; 2 uses
  br i1 %i.wq, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %.backedge.us.i.i.i.i
  %i.ws = phi i64 [ %i.yc, %.backedge.us.i.i.i.i ], [ %i.wo, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.0.0104.us.i.i.i.i = phi i32 [ %spec.select62.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.wt = icmp ult i64 %i.ws, 573
  br i1 %i.wt, label %bb.cw, label %.split.us.i.i.i.i

bb.cw:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ws
  %i.wv = load i32, ptr %i.wu, align 4, !noalias !70 ; 2 uses
  %i.ww = zext i32 %i.wv to i64                   ; 5 uses
  %i.wx = icmp ult i32 %i.wv, 39
  br i1 %i.wx, label %bb.cx, label %.split106.us.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ww ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 2 ; 2 uses
  %i.xa = load i16, ptr %i.wz, align 2, !noalias !70 ; 2 uses
  %i.xb = zext i16 %i.xa to i64                   ; 2 uses
  %i.xc = icmp ult i16 %i.xa, 39
  br i1 %i.xc, label %bb.cy, label %.split109.us.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.xb
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  %i.xf = load i16, ptr %i.xe, align 2, !noalias !70
  %i.xg = add i16 %i.xf, 1                        ; 2 uses
  %i.xh = icmp ugt i16 %i.xg, %.fr.i.i.i.i
  %spec.select.us.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.xg, i16 %.fr.i.i.i.i) ; 3 uses
  %i.xi = zext i1 %i.xh to i32
  %spec.select62.us.i.i.i.i = add i32 %.sroa.0.0104.us.i.i.i.i, %i.xi ; 2 uses
  store i16 %spec.select.us.i.i.i.i, ptr %i.wz, align 2, !noalias !70
  %i.xj = icmp ult i64 %i.vk, %i.ww
  br i1 %i.xj, label %.backedge.us.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xk = zext i16 %spec.select.us.i.i.i.i to i64 ; 3 uses
  %i.xl = icmp ult i16 %spec.select.us.i.i.i.i, 16
  br i1 %i.xl, label %bb.da, label %.split112.us.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.xk ; 2 uses
  %i.xn = load i16, ptr %i.xm, align 2, !noalias !70
  %i.xo = add i16 %i.xn, 1
  store i16 %i.xo, ptr %i.xm, align 2, !noalias !70
  %.not61.us.i.i.i.i = icmp ugt i64 %i.vu, %i.ww
  br i1 %.not61.us.i.i.i.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.xp = sub nuw nsw i64 %i.ww, %i.vu            ; 3 uses
  %i.xq = icmp ult i64 %i.xp, %i.vs
  br i1 %i.xq, label %bb.dc, label %.split115.us.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.xr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.xp
  %i.xs = load i8, ptr %i.xr, align 1, !noalias !70
  %i.xt = zext i8 %i.xs to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %.sroa.010.0.us.i.i.i.i = phi i64 [ %i.xt, %bb.dc ], [ 0, %bb.da ]
  %i.xu = load i16, ptr %i.wy, align 4, !noalias !70
  %i.xv = zext i16 %i.xu to i64
  %i.xw = add nuw nsw i64 %.sroa.010.0.us.i.i.i.i, %i.xk
  %i.xx = mul nuw nsw i64 %i.xw, %i.xv
  %i.xy = load i64, ptr %i.wp, align 64, !noalias !70
  %i.xz = add i64 %i.xx, %i.xy
  store i64 %i.xz, ptr %i.wp, align 64, !noalias !70
  br label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %bb.dd, %bb.cy
  %i.ya = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.k), !noalias !70 ; 2 uses
  %i.yb = extractvalue { i64, i64 } %i.ya, 0
  %i.yc = extractvalue { i64, i64 } %i.ya, 1
  %i.yd = trunc nuw i64 %i.yb to i1
  br i1 %i.yd, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i.i.i.i

bb.de:                                            ; preds = %bb.ct
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.wc, i64 39, ptr nonnull align 8 @5) #21, !noalias !70
  unreachable

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.backedge.i.i.i.i
  %i.ye = phi i64 [ %i.aba, %.backedge.i.i.i.i ], [ %i.wo, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.0.0104.i.i.i.i = phi i32 [ %spec.select62.i.i.i.i, %.backedge.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.yf = icmp ult i64 %i.ye, 573
  br i1 %i.yf, label %bb.du, label %.split.us.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %.backedge.us.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ %spec.select62.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ %spec.select62.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %i.yg = icmp eq i32 %.sroa.0.0.lcssa.i.i.i.i, 0
  br i1 %i.yg, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i
  %i.yh = zext i16 %.fr.i.i.i.i to i64            ; 4 uses
  %i.yi = icmp ult i16 %.fr.i.i.i.i, 16
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.yh ; 2 uses
  br i1 %i.yi, label %.preheader.split.us.i.i.i.i, label %.preheader.split.i.i.i.i

.preheader.split.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i, %bb.dh
  %.sroa.0.1.us.i.i.i.i = phi i32 [ %i.yv, %bb.dh ], [ %.sroa.0.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ]
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.preheader.split.us.i.i.i.i
  %.sroa.012.0.in.us.i.i.i.i = phi i64 [ %i.yh, %.preheader.split.us.i.i.i.i ], [ %.sroa.012.0.us.i.i.i.i, %bb.dg ]
  %.sroa.012.0.us.i.i.i.i = add nsw i64 %.sroa.012.0.in.us.i.i.i.i, -1 ; 5 uses
  %i.yk = icmp ult i64 %.sroa.012.0.us.i.i.i.i, 16
  br i1 %i.yk, label %bb.dg, label %.split120.us.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.us.i.i.i.i
  %i.ym = load i16, ptr %i.yl, align 2, !noalias !70 ; 2 uses
  %i.yn = icmp eq i16 %i.ym, 0
  br i1 %i.yn, label %bb.df, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.us.i.i.i.i ; 2 uses
  %i.yp = add i16 %i.ym, -1
  store i16 %i.yp, ptr %i.yo, align 2, !noalias !70
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 2 ; 2 uses
  %i.yr = load i16, ptr %i.yq, align 2, !noalias !70
  %i.ys = add i16 %i.yr, 2
  store i16 %i.ys, ptr %i.yq, align 2, !noalias !70
  %i.yt = load i16, ptr %i.yj, align 2, !noalias !70
  %i.yu = add i16 %i.yt, -1
  store i16 %i.yu, ptr %i.yj, align 2, !noalias !70
  %i.yv = add i32 %.sroa.0.1.us.i.i.i.i, -2       ; 2 uses
  %i.yw = icmp slt i32 %i.yv, 1
  br i1 %i.yw, label %.split125.us.i.i.i.i, label %.preheader.split.us.i.i.i.i

.preheader.split.i.i.i.i:                         ; preds = %.preheader.i.i.i.i, %bb.di
  %.sroa.012.0.in.i.i.i.i = phi i64 [ %.sroa.012.0.i.i.i.i, %bb.di ], [ %i.yh, %.preheader.i.i.i.i ]
  %.sroa.012.0.i.i.i.i = add nsw i64 %.sroa.012.0.in.i.i.i.i, -1 ; 5 uses
  %i.yx = icmp ult i64 %.sroa.012.0.i.i.i.i, 16
  br i1 %i.yx, label %bb.di, label %.split120.us.i.i.i.i

bb.di:                                            ; preds = %.preheader.split.i.i.i.i
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.012.0.i.i.i.i
  %i.yz = load i16, ptr %i.yy, align 2, !noalias !70
  %i.za = icmp eq i16 %i.yz, 0
  br i1 %i.za, label %.preheader.split.i.i.i.i, label %bb.dj

.split120.us.i.i.i.i:                             ; preds = %.preheader.split.i.i.i.i, %bb.df
  %.us-phi121.i.i.i.i = phi i64 [ %.sroa.012.0.us.i.i.i.i, %bb.df ], [ %.sroa.012.0.i.i.i.i, %.preheader.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi121.i.i.i.i, i64 16, ptr nonnull align 8 @6) #21, !noalias !70
  unreachable

bb.dj:                                            ; preds = %bb.di
  %.not.i.i.i.i = icmp eq i64 %.sroa.012.0.i.i.i.i, 15
  br i1 %.not.i.i.i.i, label %.split123.us.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.yh, i64 16, ptr nonnull align 8 @8) #21, !noalias !70
  unreachable

.split123.us.i.i.i.i:                             ; preds = %bb.dj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 16, i64 16, ptr nonnull align 8 @7) #21, !noalias !70
  unreachable

.split125.us.i.i.i.i:                             ; preds = %bb.dh
  %i.zb = call i48 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB5_14RangeInclusivetE3newCsehVNULHUZqJ_7zlib_rs(i16 1, i16 %.fr.i.i.i.i), !noalias !70
  %i.zc = call i48 @_RNvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivetENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsehVNULHUZqJ_7zlib_rs(i48 %i.zb), !noalias !70
  %i.zd = call i48 @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range14RangeInclusivetEENtB2_12IntoIterator9into_iterCsehVNULHUZqJ_7zlib_rs(i48 %i.zc), !noalias !70
  store i48 %i.zd, ptr %i.j, align 8, !noalias !70
  %i.ze = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.j), !noalias !70 ; 2 uses
  %i.zf = extractvalue { i16, i16 } %i.ze, 0
  %i.zg = trunc i16 %i.zf to i1
  br i1 %i.zg, label %.lr.ph133.i.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i

.loopexit.i.i.i.i:                                ; preds = %.outer.i.i.i.i, %bb.dl
  %.sroa.016.1.lcssa.i.i.i.i = phi i64 [ %.sroa.016.0131.i.i.i.i, %bb.dl ], [ %i.zp, %.outer.i.i.i.i ]
  %i.zh = call { i16, i16 } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range14RangeInclusivetEENtNtNtB8_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 2 %i.j), !noalias !70 ; 2 uses
  %i.zi = extractvalue { i16, i16 } %i.zh, 0
  %i.zj = trunc i16 %i.zi to i1
  br i1 %i.zj, label %.lr.ph133.i.i.i.i, label %_RINvNtCsehVNULHUZqJ_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i

.lr.ph133.i.i.i.i:                                ; preds = %.split125.us.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { i16, i16 } [ %i.zh, %.loopexit.i.i.i.i ], [ %i.ze, %.split125.us.i.i.i.i ]
  %.sroa.016.0131.i.i.i.i = phi i64 [ %.sroa.016.1.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ 573, %.split125.us.i.i.i.i ] ; 2 uses
  %i.zk = extractvalue { i16, i16 } %.pn.i.i.i.i, 1 ; 5 uses
  %i.zl = zext i16 %i.zk to i64                   ; 2 uses
  %i.zm = icmp ult i16 %i.zk, 16
  br i1 %i.zm, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph133.i.i.i.i
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.zl
  %i.zo = load i16, ptr %i.zn, align 2, !noalias !70 ; 2 uses
  %.not59127.i.i.i.i = icmp eq i16 %i.zo, 0
  br i1 %.not59127.i.i.i.i, label %.loopexit.i.i.i.i, label %.outer.split.i.i.i.i

bb.dm:                                            ; preds = %.lr.ph133.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zl, i64 16, ptr nonnull align 8 @9) #21, !noalias !70
  unreachable

bb.dn:                                            ; preds = %.outer.split.i.i.i.i, %bb.do
  %.sroa.016.1.i.i.i.i = phi i64 [ %i.zp, %bb.do ], [ %.sroa.016.1.ph128.i.i.i.i, %.outer.split.i.i.i.i ]
  %i.zp = add i64 %.sroa.016.1.i.i.i.i, -1        ; 6 uses
  %i.zq = icmp ult i64 %i.zp, 573
  br i1 %i.zq, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.zp
  %i.zs = load i32, ptr %i.zr, align 4, !noalias !70 ; 2 uses
  %i.zt = zext i32 %i.zs to i64                   ; 3 uses
  %i.zu = icmp ult i64 %i.vk, %i.zt
  br i1 %i.zu, label %bb.dn, label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zp, i64 573, ptr nonnull align 8 @10) #21, !noalias !70
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.zv = icmp ult i32 %i.zs, 39
  br i1 %i.zv, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.zt ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 2 ; 2 uses
  %i.zy = load i16, ptr %i.zx, align 2, !noalias !70 ; 2 uses
  %.not60.i.i.i.i = icmp eq i16 %i.zy, %i.zk
  br i1 %.not60.i.i.i.i, label %.outer.i.i.i.i, label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.zt, i64 39, ptr nonnull align 8 @11) #21, !noalias !70
  unreachable

.outer.i.i.i.i:                                   ; preds = %bb.dt, %bb.dr
  %i.zz = add i16 %.sroa.021.0.ph129.i.i.i.i, -1  ; 2 uses
  %.not59.i.i.i.i = icmp eq i16 %i.zz, 0
  br i1 %.not59.i.i.i.i, label %.loopexit.i.i.i.i, label %.outer.split.i.i.i.i

.outer.split.i.i.i.i:                             ; preds = %bb.dl, %.outer.i.i.i.i
  %.sroa.021.0.ph129.i.i.i.i = phi i16 [ %i.zz, %.outer.i.i.i.i ], [ %i.zo, %bb.dl ]
  %.sroa.016.1.ph128.i.i.i.i = phi i64 [ %i.zp, %.outer.i.i.i.i ], [ %.sroa.016.0131.i.i.i.i, %bb.dl ]
  br label %bb.dn

bb.dt:                                            ; preds = %bb.dr
  %i.aaa = load i16, ptr %i.zw, align 4, !noalias !70 ; 2 uses
  %i.aab = mul i16 %i.aaa, %i.zk
  %i.aac = zext i16 %i.aab to i64
  %i.aad = load i64, ptr %i.wp, align 64, !noalias !70
  %i.aae = add i64 %i.aad, %i.aac
  %i.aaf = mul i16 %i.aaa, %i.zy
  %i.aag = zext i16 %i.aaf to i64
  %i.aah = sub i64 %i.aae, %i.aag
  store i64 %i.aah, ptr %i.wp, align 64, !noalias !70
  store i16 %i.zk, ptr %i.zx, align 2, !noalias !70
  br label %.outer.i.i.i.i

bb.du:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ye
  %i.aaj = load i32, ptr %i.aai, align 4, !noalias !70 ; 2 uses
  %i.aak = zext i32 %i.aaj to i64                 ; 8 uses
  %i.aal = icmp ult i32 %i.aaj, 39
  br i1 %i.aal, label %bb.dv, label %.split106.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.ws, %.lr.ph.split.us.i.i.i.i ], [ %i.ye, %.lr.ph.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi.i.i.i.i, i64 573, ptr nonnull align 8 @12) #21, !noalias !70
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.aak ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 2 ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !noalias !70 ; 2 uses
  %i.aap = zext i16 %i.aao to i64                 ; 2 uses
  %i.aaq = icmp ult i16 %i.aao, 39
  br i1 %i.aaq, label %bb.dw, label %.split109.us.i.i.i.i

.split106.us.i.i.i.i:                             ; preds = %bb.du, %bb.cw
  %.us-phi107.i.i.i.i = phi i64 [ %i.ww, %bb.cw ], [ %i.aak, %bb.du ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi107.i.i.i.i, i64 39, ptr nonnull align 8 @13) #21, !noalias !70
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.aap
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  %i.aat = load i16, ptr %i.aas, align 2, !noalias !70
  %i.aau = add i16 %i.aat, 1                      ; 2 uses
  %i.aav = icmp ugt i16 %i.aau, %.fr.i.i.i.i
  %spec.select.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.aau, i16 %.fr.i.i.i.i) ; 3 uses
  %i.aaw = zext i1 %i.aav to i32
  %spec.select62.i.i.i.i = add i32 %.sroa.0.0104.i.i.i.i, %i.aaw ; 2 uses
  store i16 %spec.select.i.i.i.i, ptr %i.aan, align 2, !noalias !70
  %i.aax = icmp ult i64 %i.vk, %i.aak
  br i1 %i.aax, label %.backedge.i.i.i.i, label %bb.dx

.backedge.i.i.i.i:                                ; preds = %bb.ec, %bb.dw
  %i.aay = call { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.k), !noalias !70 ; 2 uses
  %i.aaz = extractvalue { i64, i64 } %i.aay, 0
  %i.aba = extractvalue { i64, i64 } %i.aay, 1
  %i.abb = trunc nuw i64 %i.aaz to i1
  br i1 %i.abb, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

.split109.us.i.i.i.i:                             ; preds = %bb.dv, %bb.cx
  %.us-phi110.i.i.i.i = phi i64 [ %i.xb, %bb.cx ], [ %i.aap, %bb.dv ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi110.i.i.i.i, i64 39, ptr nonnull align 8 @14) #21, !noalias !70
  unreachable

bb.dx:                                            ; preds = %bb.dw
  %i.abc = zext i16 %spec.select.i.i.i.i to i64   ; 3 uses
  %i.abd = icmp ult i16 %spec.select.i.i.i.i, 16
  br i1 %i.abd, label %bb.dy, label %.split112.us.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.abc ; 2 uses
  %i.abf = load i16, ptr %i.abe, align 2, !noalias !70
  %i.abg = add i16 %i.abf, 1
  store i16 %i.abg, ptr %i.abe, align 2, !noalias !70
  %.not61.i.i.i.i = icmp ugt i64 %i.vu, %i.aak
  br i1 %.not61.i.i.i.i, label %bb.eb, label %bb.dz

.split112.us.i.i.i.i:                             ; preds = %bb.dx, %bb.cz
  %.us-phi113.i.i.i.i = phi i64 [ %i.xk, %bb.cz ], [ %i.abc, %bb.dx ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi113.i.i.i.i, i64 16, ptr nonnull align 8 @15) #21, !noalias !70
  unreachable

bb.dz:                                            ; preds = %bb.dy
  %i.abh = sub nuw nsw i64 %i.aak, %i.vu          ; 3 uses
  %i.abi = icmp ult i64 %i.abh, %i.vs
  br i1 %i.abi, label %bb.ea, label %.split115.us.i.i.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.abj = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.abh
  %i.abk = load i8, ptr %i.abj, align 1, !noalias !70
  %i.abl = zext i8 %i.abk to i64
  br label %bb.eb

.split115.us.i.i.i.i:                             ; preds = %bb.dz, %bb.db
  %.us-phi116.i.i.i.i = phi i64 [ %i.xp, %bb.db ], [ %i.abh, %bb.dz ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi116.i.i.i.i, i64 %i.vs, ptr nonnull align 8 @16) #21, !noalias !70
  unreachable

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %.sroa.010.0.i.i.i.i = phi i64 [ %i.abl, %bb.ea ], [ 0, %bb.dy ] ; 2 uses
  %i.abm = load i16, ptr %i.aam, align 4, !noalias !70
  %i.abn = zext i16 %i.abm to i64                 ; 2 uses
  %i.abo = add nuw nsw i64 %.sroa.010.0.i.i.i.i, %i.abc
  %i.abp = mul nuw nsw i64 %i.abo, %i.abn
  %i.abq = load i64, ptr %i.wp, align 64, !noalias !70
  %i.abr = add i64 %i.abp, %i.abq
  store i64 %i.abr, ptr %i.wp, align 64, !noalias !70
  %i.abs = icmp ugt i64 %.fr135.i.i.i.i, %i.aak
  br i1 %i.abs, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.aak
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 2
  %i.abv = load i16, ptr %i.abu, align 2, !noalias !70
  %i.abw = zext i16 %i.abv to i64
  %i.abx = add nuw nsw i64 %.sroa.010.0.i.i.i.i, %i.abw
  %i.aby = mul nuw nsw i64 %i.abx, %i.abn
  %i.abz = load i64, ptr %i.wr, align 8, !noalias !70
  %i.aca = add i64 %i.aby, %i.abz
  store i64 %i.aca, ptr %i.wr, align 8, !noalias !70
  br label %.backedge.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.aak, i64 %.fr135.i.i.i.i, ptr nonnull align 8 @17) #21, !noalias !70
  unreachable

.lr.ph90.i.i.i:                                   ; preds = %.lr.ph90.i.i.i, %.lr.ph90.preheader.i.i.i
  %.sroa.05.088.i.i.i = phi i64 [ %i.acb, %.lr.ph90.i.i.i ], [ %i.vi, %.lr.ph90.preheader.i.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr align 8 %i.n, ptr align 2 %i.tx, i64 39, i64 %.sroa.05.088.i.i.i)
  %i.acb = add nsw i64 %.sroa.05.088.i.i.i, -1    ; 2 uses
  %.not.i.i79.i = icmp eq i64 %i.acb, 0
  br i1 %.not.i.i79.i, label %._crit_edge91.i.i.i, label %.lr.ph90.i.i.i

.peel.next.i.i:                                   ; preds = %.backedge.i.peel.i.i
  %i.acc = icmp slt i64 %.sroa.0.1.i.peel.i.i, 2  ; 2 uses
  %i.acd = add nsw i64 %.sroa.0.1.i.peel.i.i, 1   ; 4 uses
  %.sroa.04.0.i.i.i = select i1 %i.acc, i64 %i.acd, i64 0 ; 6 uses
  %.sroa.0.1.i.i.i = select i1 %i.acc, i64 %i.acd, i64 %.sroa.0.1.i.peel.i.i ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.acf = trunc nuw nsw i64 %.sroa.04.0.i.i.i to i32
  store i32 %i.acf, ptr %i.ace, align 8
  %i.acg = icmp samesign ult i64 %.sroa.04.0.i.i.i, 39
  br i1 %i.acg, label %bb.ee, label %.loopexit.i.i

bb.ee:                                            ; preds = %.peel.next.i.i
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.sroa.04.0.i.i.i
  store i16 1, ptr %i.ach, align 4
  %i.aci = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.sroa.04.0.i.i.i
  store i8 0, ptr %i.aci, align 1
  %i.acj = add i64 %i.uw, -2
  store i64 %i.acj, ptr %i.ul, align 64
  br i1 %i.um, label %._crit_edge.thread.i.i.i, label %bb.ef

._crit_edge.thread.i.i.i:                         ; preds = %bb.eg, %bb.ee, %.backedge.i.peel.i.i
  %.sroa.0.1.i.lcssa146.i.i = phi i64 [ %.sroa.0.1.i.peel.i.i, %.backedge.i.peel.i.i ], [ %.sroa.0.1.i.i.i, %bb.ee ], [ %.sroa.0.1.i.i.i, %bb.eg ] ; 2 uses
  store i64 2, ptr %i.n, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.lcssa146.i.i, ptr %i.ack, align 8
  br label %.lr.ph90.preheader.i.i.i

.loopexit.i.i:                                    ; preds = %.peel.next.i.i, %.lr.ph.i.i81.i
  %.sroa.04.0.i.lcssa.i.i = phi i64 [ %i.up, %.lr.ph.i.i81.i ], [ %i.acd, %.peel.next.i.i ]
end_hunk_2
