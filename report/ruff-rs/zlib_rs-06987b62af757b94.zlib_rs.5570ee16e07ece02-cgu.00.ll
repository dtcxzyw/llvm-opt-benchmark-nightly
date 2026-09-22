Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-06987b62af757b94.zlib_rs.5570ee16e07ece02-cgu.00?download=true
inline.NumInlined: 119
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtCs7kNFBubu20U_7zlib_rs7deflate16flush_block_only:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !291, !noalias !292, !noundef !4 ; 3 uses
  %i.em = load ptr, ptr %i.i, align 8, !alias.scope !291, !noalias !292, !nonnull !4, !align !11, !noundef !4 ; 6 uses
  %i.en = load ptr, ptr %i.em, align 8, !noalias !293, !nonnull !4, !align !279, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !293, !noundef !4 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !293, !nonnull !4, !noundef !4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.et = load i64, ptr %i.es, align 8, !noalias !293, !noundef !4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !293, !noundef !4 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ex = load i16, ptr %i.ew, align 8, !noalias !293, !noundef !4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !alias.scope !287, !noalias !294
  %i.ey = load i64, ptr %i.cx, align 8, !alias.scope !289, !noalias !295, !noundef !4 ; 5 uses
  %i.ez = icmp ult i64 %i.ey, 573
  br i1 %i.ez, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge82.i.i
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ey
  %i.fb = load i32, ptr %i.fa, align 4, !alias.scope !289, !noalias !295, !noundef !4 ; 2 uses
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ult i32 %i.fb, 573
  br i1 %i.fd, label %bb.aw, label %bb.be

bb.av:                                            ; preds = %._crit_edge82.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !293
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 0, ptr %i.ff, align 2, !alias.scope !291, !noalias !292
  %.not137.i.i.i = icmp eq i64 %i.ey, 572
  br i1 %.not137.i.i.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i, label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %bb.aw
  %.sroa.026.0101.i.i.i = add nuw nsw i64 %i.ey, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 4 uses
  %i.fh = icmp eq i64 %i.ep, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.fg, align 64, !alias.scope !296, !noalias !297 ; 2 uses
  br i1 %i.fh, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i12.i.i
  %.promoted104.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !296, !noalias !297
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i12.i.i, %.backedge.us.i.i.i
  %i.fj = phi i64 [ %i.gp, %.backedge.us.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.i12.i.i ] ; 2 uses
  %.sroa.026.0103.us.i.i.i = phi i64 [ %.sroa.026.0.us.i.i.i, %.backedge.us.i.i.i ], [ %.sroa.026.0101.i.i.i, %.lr.ph.i12.i.i ] ; 2 uses
  %.sroa.0.0102.us.i.i.i = phi i32 [ %spec.select56.us.i.i.i, %.backedge.us.i.i.i ], [ 0, %.lr.ph.i12.i.i ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.026.0103.us.i.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !alias.scope !289, !noalias !295, !noundef !4 ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 5 uses
  %i.fn = icmp ult i32 %i.fl, 573
  br i1 %i.fn, label %bb.ax, label %.split.us.i.i.i

bb.ax:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fm ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2 ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !alias.scope !291, !noalias !292, !noundef !4 ; 2 uses
  %i.fr = zext i16 %i.fq to i64                   ; 2 uses
  %i.fs = icmp ult i16 %i.fq, 573
  br i1 %i.fs, label %bb.ay, label %.split106.us.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %i.fv = load i16, ptr %i.fu, align 2, !alias.scope !291, !noalias !292, !noundef !4
  %i.fw = add i16 %i.fv, 1                        ; 2 uses
  %i.fx = icmp ugt i16 %i.fw, %i.ex
  %spec.select.us.i.i.i = call i16 @llvm.umin.i16(i16 %i.fw, i16 %i.ex) ; 3 uses
  %i.fy = zext i1 %i.fx to i32
  %spec.select56.us.i.i.i = add i32 %.sroa.0.0102.us.i.i.i, %i.fy ; 2 uses
  store i16 %spec.select.us.i.i.i, ptr %i.fp, align 2, !alias.scope !291, !noalias !292
  %i.fz = icmp ult i64 %i.el, %i.fm
  br i1 %i.fz, label %.backedge.us.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ga = zext i16 %spec.select.us.i.i.i to i64   ; 3 uses
  %i.gb = icmp ult i16 %spec.select.us.i.i.i, 16
  br i1 %i.gb, label %bb.ba, label %.split109.us.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ga ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !alias.scope !287, !noalias !294, !noundef !4
  %i.ge = add i16 %i.gd, 1
  store i16 %i.ge, ptr %i.gc, align 2, !alias.scope !287, !noalias !294
  %.not55.us.i.i.i = icmp ugt i64 %i.ev, %i.fm
  br i1 %.not55.us.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gf = sub nuw nsw i64 %i.fm, %i.ev            ; 3 uses
  %i.gg = icmp ult i64 %i.gf, %i.et
  br i1 %i.gg, label %bb.bc, label %.split112.us.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !noalias !293, !noundef !4
  %i.gj = zext i8 %i.gi to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.sroa.09.0.us.i.i.i = phi i64 [ %i.gj, %bb.bc ], [ 0, %bb.ba ]
  %i.gk = load i16, ptr %i.fo, align 4, !alias.scope !291, !noalias !292, !noundef !4
  %i.gl = zext i16 %i.gk to i64
  %i.gm = add nuw nsw i64 %.sroa.09.0.us.i.i.i, %i.ga
  %i.gn = mul nuw nsw i64 %i.gm, %i.gl
  %i.go = add i64 %i.gn, %i.fj                    ; 2 uses
  store i64 %i.go, ptr %i.fg, align 64, !alias.scope !296, !noalias !297
  br label %.backedge.us.i.i.i

.backedge.us.i.i.i:                               ; preds = %bb.bd, %bb.ay
  %i.gp = phi i64 [ %i.go, %bb.bd ], [ %i.fj, %bb.ay ] ; 2 uses
  %.sroa.026.0.us.i.i.i = add nuw nsw i64 %.sroa.026.0103.us.i.i.i, 1 ; 2 uses
  %exitcond186.not.i.i.i = icmp eq i64 %.sroa.026.0.us.i.i.i, 573
  br i1 %exitcond186.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

bb.be:                                            ; preds = %bb.au
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17, !noalias !293
  unreachable

._crit_edge.i.i.i:                                ; preds = %.backedge.i.i.i, %.backedge.us.i.i.i
  %.promoted132.i.i.i = phi i64 [ %i.gp, %.backedge.us.i.i.i ], [ %i.jv, %.backedge.i.i.i ]
  %.sroa.0.0.lcssa.i13.i.i = phi i32 [ %spec.select56.us.i.i.i, %.backedge.us.i.i.i ], [ %spec.select56.i.i.i, %.backedge.i.i.i ] ; 2 uses
  %i.gq = icmp eq i32 %.sroa.0.0.lcssa.i13.i.i, 0
  br i1 %i.gq, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i, label %.preheader69.i.i.i

.preheader69.i.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.gr = zext i16 %i.ex to i64                   ; 5 uses
  %i.gs = icmp ult i16 %i.ex, 16
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gr ; 2 uses
  br i1 %i.gs, label %.preheader69.split.us.i.i.i, label %.preheader69.split.i.i.i

.preheader69.split.us.i.i.i:                      ; preds = %.preheader69.i.i.i, %bb.bh
  %.sroa.0.1.us.i.i.i = phi i32 [ %i.hf, %bb.bh ], [ %.sroa.0.0.lcssa.i13.i.i, %.preheader69.i.i.i ]
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.preheader69.split.us.i.i.i
  %.sroa.011.0.in.us.i.i.i = phi i64 [ %i.gr, %.preheader69.split.us.i.i.i ], [ %.sroa.011.0.us.i.i.i, %bb.bg ]
  %.sroa.011.0.us.i.i.i = add nsw i64 %.sroa.011.0.in.us.i.i.i, -1 ; 5 uses
  %i.gu = icmp ult i64 %.sroa.011.0.us.i.i.i, 16
  br i1 %i.gu, label %bb.bg, label %.split117.us.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.011.0.us.i.i.i
  %i.gw = load i16, ptr %i.gv, align 2, !alias.scope !287, !noalias !294, !noundef !4 ; 2 uses
  %i.gx = icmp eq i16 %i.gw, 0
  br i1 %i.gx, label %bb.bf, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.011.0.us.i.i.i ; 2 uses
  %i.gz = add i16 %i.gw, -1
  store i16 %i.gz, ptr %i.gy, align 2, !alias.scope !287, !noalias !294
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 2 ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !alias.scope !287, !noalias !294, !noundef !4
  %i.hc = add i16 %i.hb, 2
  store i16 %i.hc, ptr %i.ha, align 2, !alias.scope !287, !noalias !294
  %i.hd = load i16, ptr %i.gt, align 2, !alias.scope !287, !noalias !294, !noundef !4
  %i.he = add i16 %i.hd, -1
  store i16 %i.he, ptr %i.gt, align 2, !alias.scope !287, !noalias !294
  %i.hf = add i32 %.sroa.0.1.us.i.i.i, -2         ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 1
  br i1 %i.hg, label %.preheader.i.i.i, label %.preheader69.split.us.i.i.i

.preheader69.split.i.i.i:                         ; preds = %.preheader69.i.i.i, %bb.bi
  %.sroa.011.0.in.i.i.i = phi i64 [ %.sroa.011.0.i.i.i, %bb.bi ], [ %i.gr, %.preheader69.i.i.i ]
  %.sroa.011.0.i.i.i = add nsw i64 %.sroa.011.0.in.i.i.i, -1 ; 5 uses
  %i.hh = icmp ult i64 %.sroa.011.0.i.i.i, 16
  br i1 %i.hh, label %bb.bi, label %.split117.us.i.i.i

bb.bi:                                            ; preds = %.preheader69.split.i.i.i
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %.sroa.011.0.i.i.i
  %i.hj = load i16, ptr %i.hi, align 2, !alias.scope !287, !noalias !294, !noundef !4
  %i.hk = icmp eq i16 %i.hj, 0
  br i1 %i.hk, label %.preheader69.split.i.i.i, label %bb.bj

.split117.us.i.i.i:                               ; preds = %.preheader69.split.i.i.i, %bb.bf
  %.us-phi118.i.i.i = phi i64 [ %.sroa.011.0.us.i.i.i, %bb.bf ], [ %.sroa.011.0.i.i.i, %.preheader69.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi118.i.i.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17, !noalias !293
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %.not.i.i15.i = icmp eq i64 %.sroa.011.0.i.i.i, 15
  br i1 %.not.i.i15.i, label %.split120.us.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gr, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !293
  unreachable

.split120.us.i.i.i:                               ; preds = %bb.bj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 16, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !293
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.bh
  %.not.i128.i.i.i = icmp eq i16 %i.ex, 0
  br i1 %.not.i128.i.i.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i, label %.thread.i.i.i

.loopexit.i.i.i:                                  ; preds = %.outer.i.i.i, %.thread.i.i.i
  %.promoted124132.i.i.i = phi i64 [ %.promoted127136.i.i.i, %.thread.i.i.i ], [ %.promoted127133.i.i.i, %.outer.i.i.i ]
  %.sroa.015.1.lcssa.i.i.i = phi i64 [ %.sroa.015.0130.i.i.i, %.thread.i.i.i ], [ %i.hq, %.outer.i.i.i ]
  br i1 %i.hl, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i.i ], [ %i.gr, %.preheader.i.i.i ] ; 5 uses
  %.promoted127136.i.i.i = phi i64 [ %.promoted124132.i.i.i, %.loopexit.i.i.i ], [ %.promoted132.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %.sroa.015.0130.i.i.i = phi i64 [ %.sroa.015.1.lcssa.i.i.i, %.loopexit.i.i.i ], [ 573, %.preheader.i.i.i ] ; 2 uses
  %i.hl = icmp eq i64 %indvars.iv.i.i, 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.hn = load i16, ptr %i.hm, align 2, !alias.scope !287, !noalias !294, !noundef !4 ; 2 uses
  %i.ho = icmp eq i16 %i.hn, 0
  br i1 %i.ho, label %.loopexit.i.i.i, label %.outer.split.i.preheader.i.i

.outer.split.i.preheader.i.i:                     ; preds = %.thread.i.i.i
  %i.hp = trunc nuw i64 %indvars.iv.i.i to i16    ; 2 uses
  br label %.outer.split.i.i.i

bb.bl:                                            ; preds = %.outer.split.i.i.i, %bb.bm
  %.sroa.015.1.i.i.i = phi i64 [ %i.hq, %bb.bm ], [ %.sroa.015.1.ph125.i.i.i, %.outer.split.i.i.i ]
  %i.hq = add i64 %.sroa.015.1.i.i.i, -1          ; 6 uses
  %i.hr = icmp ult i64 %i.hq, 573
  br i1 %i.hr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.hq
  %i.ht = load i32, ptr %i.hs, align 4, !alias.scope !289, !noalias !295, !noundef !4 ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 3 uses
  %i.hv = icmp ult i64 %i.el, %i.hu
  br i1 %i.hv, label %bb.bl, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hq, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !293
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.hw = icmp ult i32 %i.ht, 573
  br i1 %i.hw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.hu ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !alias.scope !291, !noalias !292, !noundef !4 ; 2 uses
  %i.ia = zext i16 %i.hz to i64
  %.not54.i.i.i = icmp eq i64 %indvars.iv.i.i, %i.ia
  br i1 %.not54.i.i.i, label %.outer.i.i.i, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !293
  unreachable

.outer.i.i.i:                                     ; preds = %bb.br, %bb.bp
  %.promoted127133.i.i.i = phi i64 [ %i.il, %bb.br ], [ %.promoted127134.i.i.i, %bb.bp ] ; 2 uses
  %i.ib = phi i64 [ %i.il, %bb.br ], [ %i.ie, %bb.bp ]
  %i.ic = add i16 %.sroa.024.0.ph124.i.i.i, -1    ; 2 uses
  %i.id = icmp eq i16 %i.ic, 0
  br i1 %i.id, label %.loopexit.i.i.i, label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %.outer.i.i.i, %.outer.split.i.preheader.i.i
  %.promoted127134.i.i.i = phi i64 [ %.promoted127133.i.i.i, %.outer.i.i.i ], [ %.promoted127136.i.i.i, %.outer.split.i.preheader.i.i ]
  %i.ie = phi i64 [ %i.ib, %.outer.i.i.i ], [ %.promoted127136.i.i.i, %.outer.split.i.preheader.i.i ] ; 2 uses
  %.sroa.015.1.ph125.i.i.i = phi i64 [ %i.hq, %.outer.i.i.i ], [ %.sroa.015.0130.i.i.i, %.outer.split.i.preheader.i.i ]
  %.sroa.024.0.ph124.i.i.i = phi i16 [ %i.ic, %.outer.i.i.i ], [ %i.hn, %.outer.split.i.preheader.i.i ]
  br label %bb.bl

bb.br:                                            ; preds = %bb.bp
  %i.if = load i16, ptr %i.hx, align 4, !alias.scope !291, !noalias !292, !noundef !4 ; 2 uses
  %i.ig = mul i16 %i.if, %i.hp
  %i.ih = zext i16 %i.ig to i64
  %i.ii = add i64 %i.ie, %i.ih
  %i.ij = mul i16 %i.if, %i.hz
  %i.ik = zext i16 %i.ij to i64
  %i.il = sub i64 %i.ii, %i.ik                    ; 3 uses
  store i64 %i.il, ptr %i.fg, align 64, !alias.scope !296, !noalias !297
  store i16 %i.hp, ptr %i.hy, align 2, !alias.scope !291, !noalias !292
  br label %.outer.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.backedge.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.im = phi i64 [ %i.ju, %.backedge.i.i.i ], [ %.promoted104.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 2 uses
  %i.in = phi i64 [ %i.jv, %.backedge.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 2 uses
  %.sroa.026.0103.i.i.i = phi i64 [ %.sroa.026.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.026.0101.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0102.i.i.i = phi i32 [ %spec.select56.i.i.i, %.backedge.i.i.i ], [ 0, %.lr.ph.split.preheader.i.i.i ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.026.0103.i.i.i
  %i.ip = load i32, ptr %i.io, align 4, !alias.scope !289, !noalias !295, !noundef !4 ; 2 uses
  %i.iq = zext i32 %i.ip to i64                   ; 8 uses
  %i.ir = icmp ult i32 %i.ip, 573
  br i1 %i.ir, label %bb.bs, label %.split.us.i.i.i

bb.bs:                                            ; preds = %.lr.ph.split.i.i.i
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.iq ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2 ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !alias.scope !291, !noalias !292, !noundef !4 ; 2 uses
  %i.iv = zext i16 %i.iu to i64                   ; 2 uses
  %i.iw = icmp ult i16 %i.iu, 573
  br i1 %i.iw, label %bb.bt, label %.split106.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.fm, %.lr.ph.split.us.i.i.i ], [ %i.iq, %.lr.ph.split.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i.i, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17, !noalias !293
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %i.iz = load i16, ptr %i.iy, align 2, !alias.scope !291, !noalias !292, !noundef !4
  %i.ja = add i16 %i.iz, 1                        ; 2 uses
  %i.jb = icmp ugt i16 %i.ja, %i.ex
  %spec.select.i.i.i = call i16 @llvm.umin.i16(i16 %i.ja, i16 %i.ex) ; 3 uses
  %i.jc = zext i1 %i.jb to i32
  %spec.select56.i.i.i = add i32 %.sroa.0.0102.i.i.i, %i.jc ; 2 uses
  store i16 %spec.select.i.i.i, ptr %i.it, align 2, !alias.scope !291, !noalias !292
  %i.jd = icmp ult i64 %i.el, %i.iq
  br i1 %i.jd, label %.backedge.i.i.i, label %bb.bu

.split106.us.i.i.i:                               ; preds = %bb.bs, %bb.ax
  %.us-phi107.i.i.i = phi i64 [ %i.fr, %bb.ax ], [ %i.iv, %bb.bs ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi107.i.i.i, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17, !noalias !293
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.je = zext i16 %spec.select.i.i.i to i64      ; 3 uses
  %i.jf = icmp ult i16 %spec.select.i.i.i, 16
  br i1 %i.jf, label %bb.bv, label %.split109.us.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.je ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !alias.scope !287, !noalias !294, !noundef !4
  %i.ji = add i16 %i.jh, 1
  store i16 %i.ji, ptr %i.jg, align 2, !alias.scope !287, !noalias !294
  %.not55.i.i.i = icmp ugt i64 %i.ev, %i.iq
  br i1 %.not55.i.i.i, label %bb.by, label %bb.bw

.split109.us.i.i.i:                               ; preds = %bb.bu, %bb.az
  %.us-phi110.i.i.i = phi i64 [ %i.ga, %bb.az ], [ %i.je, %bb.bu ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi110.i.i.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17, !noalias !293
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.jj = sub nuw nsw i64 %i.iq, %i.ev            ; 3 uses
  %i.jk = icmp ult i64 %i.jj, %i.et
  br i1 %i.jk, label %bb.bx, label %.split112.us.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.jl = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.jj
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !293, !noundef !4
  %i.jn = zext i8 %i.jm to i64
  br label %bb.by

.split112.us.i.i.i:                               ; preds = %bb.bw, %bb.bb
  %.us-phi113.i.i.i = phi i64 [ %i.gf, %bb.bb ], [ %i.jj, %bb.bw ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi113.i.i.i, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #17, !noalias !293
  unreachable

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %.sroa.09.0.i.i.i = phi i64 [ %i.jn, %bb.bx ], [ 0, %bb.bv ] ; 2 uses
  %i.jo = load i16, ptr %i.is, align 4, !alias.scope !291, !noalias !292, !noundef !4
  %i.jp = zext i16 %i.jo to i64                   ; 2 uses
  %i.jq = add nuw nsw i64 %.sroa.09.0.i.i.i, %i.je
  %i.jr = mul nuw nsw i64 %i.jq, %i.jp
  %i.js = add i64 %i.jr, %i.in                    ; 2 uses
  store i64 %i.js, ptr %i.fg, align 64, !alias.scope !296, !noalias !297
  %i.jt = icmp ugt i64 %i.ep, %i.iq
  br i1 %i.jt, label %bb.bz, label %bb.ca

.backedge.i.i.i:                                  ; preds = %bb.bz, %bb.bt
  %i.ju = phi i64 [ %i.kc, %bb.bz ], [ %i.im, %bb.bt ]
  %i.jv = phi i64 [ %i.js, %bb.bz ], [ %i.in, %bb.bt ] ; 2 uses
  %.sroa.026.0.i.i.i = add nuw nsw i64 %.sroa.026.0103.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.026.0.i.i.i, 573
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.iq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !noalias !293, !noundef !4
  %i.jz = zext i16 %i.jy to i64
  %i.ka = add nuw nsw i64 %.sroa.09.0.i.i.i, %i.jz
  %i.kb = mul nuw nsw i64 %i.ka, %i.jp
  %i.kc = add i64 %i.kb, %i.im                    ; 2 uses
  store i64 %i.kc, ptr %i.fi, align 8, !alias.scope !296, !noalias !297
  br label %.backedge.i.i.i

bb.ca:                                            ; preds = %bb.by
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.iq, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !293
  unreachable

.lr.ph81.i.i:                                     ; preds = %.lr.ph81.i.i, %.lr.ph81.preheader.i.i
  %.sroa.05.079.i.i = phi i64 [ %i.kd, %.lr.ph81.i.i ], [ %i.ej, %.lr.ph81.preheader.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr noalias noundef align 8 dereferenceable(2888) %i.g, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.co, i64 noundef 573, i64 noundef %.sroa.05.079.i.i), !noalias !277
  %i.kd = add nsw i64 %.sroa.05.079.i.i, -1       ; 2 uses
  %.not.i.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i.i, label %._crit_edge82.i.i, label %.lr.ph81.i.i

.peel.next.i:                                     ; preds = %bb.at
  %i.ke = icmp slt i64 %.sroa.0.1.i16.peel.i, 2   ; 2 uses
  %i.kf = add nsw i64 %.sroa.0.1.i16.peel.i, 1    ; 4 uses
  %.sroa.04.0.i.i = select i1 %i.ke, i64 %i.kf, i64 0 ; 6 uses
  %.sroa.0.1.i16.i = select i1 %i.ke, i64 %i.kf, i64 %.sroa.0.1.i16.peel.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kh = trunc i64 %.sroa.04.0.i.i to i32
  store i32 %i.kh, ptr %i.kg, align 8, !noalias !278
  %i.ki = icmp ult i64 %.sroa.04.0.i.i, 573
  br i1 %i.ki, label %bb.cb, label %.loopexit.i

bb.cb:                                            ; preds = %.peel.next.i
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.sroa.04.0.i.i
  store i16 1, ptr %i.kj, align 4, !alias.scope !276, !noalias !277
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.04.0.i.i
  store i8 0, ptr %i.kk, align 1, !noalias !278
  %i.kl = add i64 %.promoted76.i.i, -2
  store i64 %i.kl, ptr %i.dn, align 64, !alias.scope !275, !noalias !286
  br i1 %i.do, label %._crit_edge.thread.i.i, label %bb.cc

.loopexit.i:                                      ; preds = %.peel.next.i, %.lr.ph.i.i
  %.sroa.04.0.i.lcssa.i = phi i64 [ %i.dr, %.lr.ph.i.i ], [ %i.kf, %.peel.next.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.lcssa.i, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17, !noalias !278
  unreachable

._crit_edge.thread.i.i:                           ; preds = %bb.cd, %bb.cb, %bb.at
  %.sroa.0.1.i16.lcssa466.i = phi i64 [ %.sroa.0.1.i16.peel.i, %bb.at ], [ %.sroa.0.1.i16.i, %bb.cb ], [ %.sroa.0.1.i16.i, %bb.cd ] ; 2 uses
  store i64 2, ptr %i.g, align 8, !noalias !278
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i16.lcssa466.i, ptr %i.km, align 8, !alias.scope !276, !noalias !277
  br label %.lr.ph81.preheader.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.kn = icmp ult i64 %.sroa.04.0.i.i, %i.cs
  br i1 %i.kn, label %bb.cd, label %.loopexit474.i

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.sroa.04.0.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kq = load i16, ptr %i.kp, align 2, !noalias !278, !noundef !4
  %i.kr = zext i16 %i.kq to i64
  %i.ks = sub i64 %i.ef, %i.kr
  store i64 %i.ks, ptr %i.dp, align 8, !alias.scope !275, !noalias !286
  br label %._crit_edge.thread.i.i

.loopexit474.i:                                   ; preds = %bb.cc, %bb.ar
  %.sroa.04.0.i.lcssa467.i = phi i64 [ %i.dr, %bb.ar ], [ %i.kf, %bb.cc ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.lcssa467.i, i64 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17, !noalias !278
  unreachable

_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i: ; preds = %.loopexit.i.i.i, %.preheader.i.i.i, %._crit_edge.i.i.i, %bb.aw
  call fastcc void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate9gen_codes(ptr noalias noundef nonnull align 2 %i.co, i64 noundef 573, i64 noundef %.sroa.0.0.lcssa174.i.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !278
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.i, ptr noundef nonnull %i.cm, i64 noundef 289)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj23d_EEB15_.exit17.i unwind label %bb.ce, !noalias !272

bb.ce:                                            ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #18, !noalias !272
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj23d_EEB15_.exit17.i: ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj23d_EB4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.h, ptr noundef nonnull align 8 dereferenceable(264) @96, i64 264, i1 false), !noalias !272
  %i.ku = getelementptr inbounds nuw i8, ptr %i.k, i64 2664 ; 2 uses
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.h, ptr noundef nonnull %i.ku, i64 noundef 33)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit.i unwind label %bb.cf, !noalias !272

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj23d_EEB15_.exit17.i
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #18, !noalias !272
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj23d_EEB15_.exit17.i
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 13 uses
  %i.kx = load ptr, ptr %i.h, align 8, !alias.scope !299, !noalias !300, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !301, !nonnull !4, !align !279, !noundef !4 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !noalias !301, !noundef !4 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.lc = load i64, ptr %i.lb, align 8, !noalias !301, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !301
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 2308 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.lg = icmp ult i64 %i.lc, 62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2865) %i.ld, i8 0, i64 2865, i1 false), !noalias !272
  br i1 %i.lg, label %bb.ch, label %bb.cg, !prof !5

bb.cg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lc, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !301
  unreachable

bb.ch:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  store i64 0, ptr %i.e, align 8, !alias.scope !302, !noalias !304
  store i64 573, ptr %i.lf, align 8, !alias.scope !302, !noalias !304
  %.idx.i.i18.i = shl nuw nsw i64 %i.lc, 2
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.idx.i.i18.i
  %i.li = icmp eq i64 %i.lc, 0
  br i1 %i.li, label %.lr.ph.i102.i, label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %bb.ch, %bb.ck
  %.sroa.0.022.i.i20.i = phi i64 [ %.sroa.0.1.i.i24.i, %bb.ck ], [ -1, %bb.ch ]
  %.sroa.0.0821.i.i21.i = phi ptr [ %i.lj, %bb.ck ], [ %i.kw, %bb.ch ] ; 3 uses
  %.sroa.7.020.i.i22.i = phi i64 [ %i.lk, %bb.ck ], [ 0, %bb.ch ] ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0821.i.i21.i, i64 4 ; 2 uses
  %i.lk = add nuw nsw i64 %.sroa.7.020.i.i22.i, 1
  %i.ll = load i16, ptr %.sroa.0.0821.i.i21.i, align 2, !alias.scope !305, !noalias !306, !noundef !4
  %.not7.i.i23.i = icmp eq i16 %i.ll, 0
  br i1 %.not7.i.i23.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i.i19.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0821.i.i21.i, i64 2
  store i16 0, ptr %i.lm, align 2, !alias.scope !305, !noalias !306
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.i.i19.i
  %i.ln = load i64, ptr %i.e, align 8, !alias.scope !302, !noalias !304, !noundef !4
  %i.lo = add i64 %i.ln, 1                        ; 4 uses
  store i64 %i.lo, ptr %i.e, align 8, !alias.scope !302, !noalias !304
  %i.lp = icmp ult i64 %i.lo, 573
  br i1 %i.lp, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.cm, %bb.ci
  %.sroa.0.1.i.i24.i = phi i64 [ %.sroa.7.020.i.i22.i, %bb.cm ], [ %.sroa.0.022.i.i20.i, %bb.ci ] ; 4 uses
  %i.lq = icmp eq ptr %i.lj, %i.lh
  br i1 %i.lq, label %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i, label %.lr.ph.i.i19.i

bb.cl:                                            ; preds = %bb.cj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lo, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #17, !noalias !307
  unreachable

bb.cm:                                            ; preds = %bb.cj
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.lo
  %i.ls = trunc i64 %.sroa.7.020.i.i22.i to i32
  store i32 %i.ls, ptr %i.lr, align 4, !alias.scope !302, !noalias !304
  %i.lt = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.7.020.i.i22.i
  store i8 0, ptr %i.lt, align 1, !alias.scope !302, !noalias !304
  br label %bb.ck

_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i: ; preds = %bb.ck
  %.promoted.pre.i26.i = load i64, ptr %i.e, align 8, !noalias !301 ; 3 uses
  %i.lu = icmp ult i64 %.promoted.pre.i26.i, 2
  br i1 %i.lu, label %.lr.ph.i102.i, label %._crit_edge.i27.i

.lr.ph.i102.i:                                    ; preds = %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i, %bb.ch
  %.sroa.0.0.lcssa.i170.i103.i = phi i64 [ %.sroa.0.1.i.i24.i, %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i ], [ -1, %bb.ch ] ; 3 uses
  %.promoted169.i104.i = phi i64 [ %.promoted.pre.i26.i, %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i ], [ 0, %bb.ch ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 3 uses
  %i.lw = icmp eq i64 %i.la, 0                    ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 3 uses
  %.promoted76.i105.i = load i64, ptr %i.lv, align 64, !alias.scope !298, !noalias !308 ; 2 uses
  %.promoted77.i106.i = load i64, ptr %i.lx, align 8, !alias.scope !298, !noalias !308 ; 2 uses
  %i.ly = icmp slt i64 %.sroa.0.0.lcssa.i170.i103.i, 2 ; 2 uses
  %i.lz = add nsw i64 %.sroa.0.0.lcssa.i170.i103.i, 1 ; 4 uses
  %.sroa.04.0.i108.peel.i = select i1 %i.ly, i64 %i.lz, i64 0 ; 6 uses
  %.sroa.0.1.i109.peel.i = select i1 %i.ly, i64 %i.lz, i64 %.sroa.0.0.lcssa.i170.i103.i ; 4 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.promoted169.i104.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = trunc i64 %.sroa.04.0.i108.peel.i to i32
  store i32 %i.mc, ptr %i.mb, align 4, !noalias !301
  %i.md = icmp ult i64 %.sroa.04.0.i108.peel.i, 61
  br i1 %i.md, label %bb.cn, label %.loopexit478.i

bb.cn:                                            ; preds = %.lr.ph.i102.i
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.sroa.04.0.i108.peel.i
  store i16 1, ptr %i.me, align 4, !alias.scope !299, !noalias !300
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.04.0.i108.peel.i
  store i8 0, ptr %i.mf, align 1, !noalias !301
  %i.mg = add i64 %.promoted76.i105.i, -1
  store i64 %i.mg, ptr %i.lv, align 64, !alias.scope !298, !noalias !308
  br i1 %i.lw, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mh = icmp ult i64 %.sroa.04.0.i108.peel.i, %i.la
  br i1 %i.mh, label %bb.cp, label %.loopexit479.i

bb.cp:                                            ; preds = %bb.co
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.sroa.04.0.i108.peel.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !noalias !301, !noundef !4
  %i.ml = zext i16 %i.mk to i64
  %i.mm = sub i64 %.promoted77.i106.i, %i.ml      ; 2 uses
  store i64 %i.mm, ptr %i.lx, align 8, !alias.scope !298, !noalias !308
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.mn = phi i64 [ %i.mm, %bb.cp ], [ %.promoted77.i106.i, %bb.cn ]
  %i.mo = icmp eq i64 %.promoted169.i104.i, 0
  br i1 %i.mo, label %.peel.next476.i, label %._crit_edge.thread.i110.i

._crit_edge.i27.i:                                ; preds = %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i25.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.i24.i, ptr %i.mp, align 8, !alias.scope !299, !noalias !300
  %i.mq = lshr i64 %.promoted.pre.i26.i, 1
  br label %.lr.ph81.preheader.i28.i

.lr.ph81.preheader.i28.i:                         ; preds = %._crit_edge.thread.i110.i, %._crit_edge.i27.i
  %i.mr = phi i64 [ 1, %._crit_edge.thread.i110.i ], [ %i.mq, %._crit_edge.i27.i ]
  %i.ms = phi ptr [ %i.su, %._crit_edge.thread.i110.i ], [ %i.mp, %._crit_edge.i27.i ]
  %.sroa.0.0.lcssa174.i29.i = phi i64 [ %.sroa.0.1.i109.lcssa415.i, %._crit_edge.thread.i110.i ], [ %.sroa.0.1.i.i24.i, %._crit_edge.i27.i ]
  br label %.lr.ph81.i30.i

._crit_edge82.i33.i:                              ; preds = %.lr.ph81.i30.i
  call fastcc void @_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap22construct_huffman_tree(ptr noalias noundef align 8 dereferenceable(2888) %i.e, ptr noalias noundef nonnull align 2 %i.kw, i64 noundef 61, i64 noundef %i.lc), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !301
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !313, !noalias !314, !noundef !4 ; 3 uses
  %i.mu = load ptr, ptr %i.h, align 8, !alias.scope !313, !noalias !314, !nonnull !4, !align !11, !noundef !4 ; 6 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !315, !nonnull !4, !align !279, !noundef !4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !noalias !315, !noundef !4 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !315, !nonnull !4, !noundef !4 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.nb = load i64, ptr %i.na, align 8, !noalias !315, !noundef !4 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.nd = load i64, ptr %i.nc, align 8, !noalias !315, !noundef !4 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  %i.nf = load i16, ptr %i.ne, align 8, !noalias !315, !noundef !4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !alias.scope !309, !noalias !316
  %i.ng = load i64, ptr %i.lf, align 8, !alias.scope !311, !noalias !317, !noundef !4 ; 5 uses
  %i.nh = icmp ult i64 %i.ng, 573
  br i1 %i.nh, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %._crit_edge82.i33.i
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.ng
  %i.nj = load i32, ptr %i.ni, align 4, !alias.scope !311, !noalias !317, !noundef !4 ; 2 uses
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  %i.nl = icmp ult i32 %i.nj, 61
  br i1 %i.nl, label %bb.ct, label %bb.db

bb.cs:                                            ; preds = %._crit_edge82.i33.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ng, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !315
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.nk
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  store i16 0, ptr %i.nn, align 2, !alias.scope !313, !noalias !314
  %.not137.i.i34.i = icmp eq i64 %i.ng, 572
  br i1 %.not137.i.i34.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.lr.ph.i12.i35.i

.lr.ph.i12.i35.i:                                 ; preds = %bb.ct
  %.sroa.026.0101.i.i36.i = add nuw nsw i64 %i.ng, 1 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 4 uses
  %i.np = icmp eq i64 %i.mx, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 2 uses
  %.promoted.i.i37.i = load i64, ptr %i.no, align 64, !alias.scope !318, !noalias !319 ; 2 uses
  br i1 %i.np, label %.lr.ph.split.us.i.i92.i, label %.lr.ph.split.preheader.i.i38.i

.lr.ph.split.preheader.i.i38.i:                   ; preds = %.lr.ph.i12.i35.i
  %.promoted104.i.i39.i = load i64, ptr %i.nq, align 8, !alias.scope !318, !noalias !319
  br label %.lr.ph.split.i.i40.i

.lr.ph.split.us.i.i92.i:                          ; preds = %.lr.ph.i12.i35.i, %.backedge.us.i.i99.i
  %i.nr = phi i64 [ %i.ox, %.backedge.us.i.i99.i ], [ %.promoted.i.i37.i, %.lr.ph.i12.i35.i ] ; 2 uses
  %.sroa.026.0103.us.i.i93.i = phi i64 [ %.sroa.026.0.us.i.i100.i, %.backedge.us.i.i99.i ], [ %.sroa.026.0101.i.i36.i, %.lr.ph.i12.i35.i ] ; 2 uses
  %.sroa.0.0102.us.i.i94.i = phi i32 [ %spec.select56.us.i.i96.i, %.backedge.us.i.i99.i ], [ 0, %.lr.ph.i12.i35.i ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.sroa.026.0103.us.i.i93.i
  %i.nt = load i32, ptr %i.ns, align 4, !alias.scope !311, !noalias !317, !noundef !4 ; 2 uses
  %i.nu = zext i32 %i.nt to i64                   ; 5 uses
  %i.nv = icmp ult i32 %i.nt, 61
  br i1 %i.nv, label %bb.cu, label %.split.us.i.i43.i

bb.cu:                                            ; preds = %.lr.ph.split.us.i.i92.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.nu ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 2 ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 2, !alias.scope !313, !noalias !314, !noundef !4 ; 2 uses
  %i.nz = zext i16 %i.ny to i64                   ; 2 uses
  %i.oa = icmp ult i16 %i.ny, 61
  br i1 %i.oa, label %bb.cv, label %.split106.us.i.i45.i

bb.cv:                                            ; preds = %bb.cu
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.nz
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.od = load i16, ptr %i.oc, align 2, !alias.scope !313, !noalias !314, !noundef !4
  %i.oe = add i16 %i.od, 1                        ; 2 uses
  %i.of = icmp ugt i16 %i.oe, %i.nf
  %spec.select.us.i.i95.i = call i16 @llvm.umin.i16(i16 %i.oe, i16 %i.nf) ; 3 uses
  %i.og = zext i1 %i.of to i32
  %spec.select56.us.i.i96.i = add i32 %.sroa.0.0102.us.i.i94.i, %i.og ; 2 uses
  store i16 %spec.select.us.i.i95.i, ptr %i.nx, align 2, !alias.scope !313, !noalias !314
  %i.oh = icmp ult i64 %i.mt, %i.nu
  br i1 %i.oh, label %.backedge.us.i.i99.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oi = zext i16 %spec.select.us.i.i95.i to i64 ; 3 uses
  %i.oj = icmp ult i16 %spec.select.us.i.i95.i, 16
  br i1 %i.oj, label %bb.cx, label %.split109.us.i.i49.i

bb.cx:                                            ; preds = %bb.cw
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oi ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 2, !alias.scope !309, !noalias !316, !noundef !4
  %i.om = add i16 %i.ol, 1
  store i16 %i.om, ptr %i.ok, align 2, !alias.scope !309, !noalias !316
  %.not55.us.i.i97.i = icmp ugt i64 %i.nd, %i.nu
  br i1 %.not55.us.i.i97.i, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.on = sub nuw nsw i64 %i.nu, %i.nd            ; 3 uses
  %i.oo = icmp ult i64 %i.on, %i.nb
  br i1 %i.oo, label %bb.cz, label %.split112.us.i.i52.i

bb.cz:                                            ; preds = %bb.cy
  %i.op = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.on
  %i.oq = load i8, ptr %i.op, align 1, !noalias !315, !noundef !4
  %i.or = zext i8 %i.oq to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %.sroa.09.0.us.i.i98.i = phi i64 [ %i.or, %bb.cz ], [ 0, %bb.cx ]
  %i.os = load i16, ptr %i.nw, align 4, !alias.scope !313, !noalias !314, !noundef !4
  %i.ot = zext i16 %i.os to i64
  %i.ou = add nuw nsw i64 %.sroa.09.0.us.i.i98.i, %i.oi
  %i.ov = mul nuw nsw i64 %i.ou, %i.ot
  %i.ow = add i64 %i.ov, %i.nr                    ; 2 uses
  store i64 %i.ow, ptr %i.no, align 64, !alias.scope !318, !noalias !319
  br label %.backedge.us.i.i99.i

.backedge.us.i.i99.i:                             ; preds = %bb.da, %bb.cv
  %i.ox = phi i64 [ %i.ow, %bb.da ], [ %i.nr, %bb.cv ] ; 2 uses
  %.sroa.026.0.us.i.i100.i = add nuw nsw i64 %.sroa.026.0103.us.i.i93.i, 1 ; 2 uses
  %exitcond186.not.i.i101.i = icmp eq i64 %.sroa.026.0.us.i.i100.i, 573
  br i1 %exitcond186.not.i.i101.i, label %._crit_edge.i.i58.i, label %.lr.ph.split.us.i.i92.i

bb.db:                                            ; preds = %bb.cr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17, !noalias !315
  unreachable

._crit_edge.i.i58.i:                              ; preds = %.backedge.i.i55.i, %.backedge.us.i.i99.i
  %.promoted132.i.i59.i = phi i64 [ %i.ox, %.backedge.us.i.i99.i ], [ %i.sd, %.backedge.i.i55.i ]
  %.sroa.0.0.lcssa.i13.i60.i = phi i32 [ %spec.select56.us.i.i96.i, %.backedge.us.i.i99.i ], [ %spec.select56.i.i48.i, %.backedge.i.i55.i ] ; 2 uses
  %i.oy = icmp eq i32 %.sroa.0.0.lcssa.i13.i60.i, 0
  br i1 %i.oy, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.preheader69.i.i61.i

.preheader69.i.i61.i:                             ; preds = %._crit_edge.i.i58.i
  %i.oz = zext i16 %i.nf to i64                   ; 5 uses
  %i.pa = icmp ult i16 %i.nf, 16
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oz ; 2 uses
  br i1 %i.pa, label %.preheader69.split.us.i.i69.i, label %.preheader69.split.i.i62.i

.preheader69.split.us.i.i69.i:                    ; preds = %.preheader69.i.i61.i, %bb.de
  %.sroa.0.1.us.i.i70.i = phi i32 [ %i.pn, %bb.de ], [ %.sroa.0.0.lcssa.i13.i60.i, %.preheader69.i.i61.i ]
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %.preheader69.split.us.i.i69.i
  %.sroa.011.0.in.us.i.i71.i = phi i64 [ %i.oz, %.preheader69.split.us.i.i69.i ], [ %.sroa.011.0.us.i.i72.i, %bb.dd ]
  %.sroa.011.0.us.i.i72.i = add nsw i64 %.sroa.011.0.in.us.i.i71.i, -1 ; 5 uses
  %i.pc = icmp ult i64 %.sroa.011.0.us.i.i72.i, 16
  br i1 %i.pc, label %bb.dd, label %.split117.us.i.i65.i

bb.dd:                                            ; preds = %bb.dc
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.011.0.us.i.i72.i
  %i.pe = load i16, ptr %i.pd, align 2, !alias.scope !309, !noalias !316, !noundef !4 ; 2 uses
  %i.pf = icmp eq i16 %i.pe, 0
  br i1 %i.pf, label %bb.dc, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.011.0.us.i.i72.i ; 2 uses
  %i.ph = add i16 %i.pe, -1
  store i16 %i.ph, ptr %i.pg, align 2, !alias.scope !309, !noalias !316
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 2 ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2, !alias.scope !309, !noalias !316, !noundef !4
  %i.pk = add i16 %i.pj, 2
  store i16 %i.pk, ptr %i.pi, align 2, !alias.scope !309, !noalias !316
  %i.pl = load i16, ptr %i.pb, align 2, !alias.scope !309, !noalias !316, !noundef !4
  %i.pm = add i16 %i.pl, -1
  store i16 %i.pm, ptr %i.pb, align 2, !alias.scope !309, !noalias !316
  %i.pn = add i32 %.sroa.0.1.us.i.i70.i, -2       ; 2 uses
  %i.po = icmp slt i32 %i.pn, 1
  br i1 %i.po, label %.preheader.i.i73.i, label %.preheader69.split.us.i.i69.i

.preheader69.split.i.i62.i:                       ; preds = %.preheader69.i.i61.i, %bb.df
  %.sroa.011.0.in.i.i63.i = phi i64 [ %.sroa.011.0.i.i64.i, %bb.df ], [ %i.oz, %.preheader69.i.i61.i ]
  %.sroa.011.0.i.i64.i = add nsw i64 %.sroa.011.0.in.i.i63.i, -1 ; 5 uses
  %i.pp = icmp ult i64 %.sroa.011.0.i.i64.i, 16
  br i1 %i.pp, label %bb.df, label %.split117.us.i.i65.i

bb.df:                                            ; preds = %.preheader69.split.i.i62.i
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.sroa.011.0.i.i64.i
  %i.pr = load i16, ptr %i.pq, align 2, !alias.scope !309, !noalias !316, !noundef !4
  %i.ps = icmp eq i16 %i.pr, 0
  br i1 %i.ps, label %.preheader69.split.i.i62.i, label %bb.dg

.split117.us.i.i65.i:                             ; preds = %.preheader69.split.i.i62.i, %bb.dc
  %.us-phi118.i.i66.i = phi i64 [ %.sroa.011.0.us.i.i72.i, %bb.dc ], [ %.sroa.011.0.i.i64.i, %.preheader69.split.i.i62.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi118.i.i66.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17, !noalias !315
  unreachable

bb.dg:                                            ; preds = %bb.df
  %.not.i.i67.i = icmp eq i64 %.sroa.011.0.i.i64.i, 15
  br i1 %.not.i.i67.i, label %.split120.us.i.i68.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.oz, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !315
  unreachable

.split120.us.i.i68.i:                             ; preds = %bb.dg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 16, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !315
  unreachable

.preheader.i.i73.i:                               ; preds = %bb.de
  %.not.i128.i.i74.i = icmp eq i16 %i.nf, 0
  br i1 %.not.i128.i.i74.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.thread.i.i75.i

.loopexit.i.i89.i:                                ; preds = %.outer.i.i87.i, %.thread.i.i75.i
  %.promoted124132.i.i90.i = phi i64 [ %.promoted127136.i.i77.i, %.thread.i.i75.i ], [ %.promoted127133.i.i88.i, %.outer.i.i87.i ]
  %.sroa.015.1.lcssa.i.i91.i = phi i64 [ %.sroa.015.0130.i.i78.i, %.thread.i.i75.i ], [ %i.py, %.outer.i.i87.i ]
  br i1 %i.pt, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i, label %.thread.i.i75.i

.thread.i.i75.i:                                  ; preds = %.preheader.i.i73.i, %.loopexit.i.i89.i
  %indvars.iv.i76.i = phi i64 [ %indvars.iv.next.i79.i, %.loopexit.i.i89.i ], [ %i.oz, %.preheader.i.i73.i ] ; 5 uses
  %.promoted127136.i.i77.i = phi i64 [ %.promoted124132.i.i90.i, %.loopexit.i.i89.i ], [ %.promoted132.i.i59.i, %.preheader.i.i73.i ] ; 3 uses
  %.sroa.015.0130.i.i78.i = phi i64 [ %.sroa.015.1.lcssa.i.i91.i, %.loopexit.i.i89.i ], [ 573, %.preheader.i.i73.i ] ; 2 uses
  %i.pt = icmp eq i64 %indvars.iv.i76.i, 1
  %indvars.iv.next.i79.i = add nsw i64 %indvars.iv.i76.i, -1
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i76.i
  %i.pv = load i16, ptr %i.pu, align 2, !alias.scope !309, !noalias !316, !noundef !4 ; 2 uses
  %i.pw = icmp eq i16 %i.pv, 0
  br i1 %i.pw, label %.loopexit.i.i89.i, label %.outer.split.i.preheader.i80.i

.outer.split.i.preheader.i80.i:                   ; preds = %.thread.i.i75.i
  %i.px = trunc nuw i64 %indvars.iv.i76.i to i16  ; 2 uses
  br label %.outer.split.i.i81.i

bb.di:                                            ; preds = %.outer.split.i.i81.i, %bb.dj
  %.sroa.015.1.i.i85.i = phi i64 [ %i.py, %bb.dj ], [ %.sroa.015.1.ph125.i.i83.i, %.outer.split.i.i81.i ]
  %i.py = add i64 %.sroa.015.1.i.i85.i, -1        ; 6 uses
  %i.pz = icmp ult i64 %i.py, 573
  br i1 %i.pz, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.py
  %i.qb = load i32, ptr %i.qa, align 4, !alias.scope !311, !noalias !317, !noundef !4 ; 2 uses
  %i.qc = zext i32 %i.qb to i64                   ; 3 uses
  %i.qd = icmp ult i64 %i.mt, %i.qc
  br i1 %i.qd, label %bb.di, label %bb.dl

bb.dk:                                            ; preds = %bb.di
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.py, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !315
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.qe = icmp ult i32 %i.qb, 61
  br i1 %i.qe, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qc ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 2 ; 2 uses
  %i.qh = load i16, ptr %i.qg, align 2, !alias.scope !313, !noalias !314, !noundef !4 ; 2 uses
  %i.qi = zext i16 %i.qh to i64
  %.not54.i.i86.i = icmp eq i64 %indvars.iv.i76.i, %i.qi
  br i1 %.not54.i.i86.i, label %.outer.i.i87.i, label %bb.do

bb.dn:                                            ; preds = %bb.dl
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qc, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !315
  unreachable

.outer.i.i87.i:                                   ; preds = %bb.do, %bb.dm
  %.promoted127133.i.i88.i = phi i64 [ %i.qt, %bb.do ], [ %.promoted127134.i.i82.i, %bb.dm ] ; 2 uses
  %i.qj = phi i64 [ %i.qt, %bb.do ], [ %i.qm, %bb.dm ]
  %i.qk = add i16 %.sroa.024.0.ph124.i.i84.i, -1  ; 2 uses
  %i.ql = icmp eq i16 %i.qk, 0
  br i1 %i.ql, label %.loopexit.i.i89.i, label %.outer.split.i.i81.i

.outer.split.i.i81.i:                             ; preds = %.outer.i.i87.i, %.outer.split.i.preheader.i80.i
  %.promoted127134.i.i82.i = phi i64 [ %.promoted127133.i.i88.i, %.outer.i.i87.i ], [ %.promoted127136.i.i77.i, %.outer.split.i.preheader.i80.i ]
  %i.qm = phi i64 [ %i.qj, %.outer.i.i87.i ], [ %.promoted127136.i.i77.i, %.outer.split.i.preheader.i80.i ] ; 2 uses
  %.sroa.015.1.ph125.i.i83.i = phi i64 [ %i.py, %.outer.i.i87.i ], [ %.sroa.015.0130.i.i78.i, %.outer.split.i.preheader.i80.i ]
  %.sroa.024.0.ph124.i.i84.i = phi i16 [ %i.qk, %.outer.i.i87.i ], [ %i.pv, %.outer.split.i.preheader.i80.i ]
  br label %bb.di

bb.do:                                            ; preds = %bb.dm
  %i.qn = load i16, ptr %i.qf, align 4, !alias.scope !313, !noalias !314, !noundef !4 ; 2 uses
  %i.qo = mul i16 %i.qn, %i.px
  %i.qp = zext i16 %i.qo to i64
  %i.qq = add i64 %i.qm, %i.qp
  %i.qr = mul i16 %i.qn, %i.qh
  %i.qs = zext i16 %i.qr to i64
  %i.qt = sub i64 %i.qq, %i.qs                    ; 3 uses
  store i64 %i.qt, ptr %i.no, align 64, !alias.scope !318, !noalias !319
  store i16 %i.px, ptr %i.qg, align 2, !alias.scope !313, !noalias !314
  br label %.outer.i.i87.i

.lr.ph.split.i.i40.i:                             ; preds = %.backedge.i.i55.i, %.lr.ph.split.preheader.i.i38.i
  %i.qu = phi i64 [ %i.sc, %.backedge.i.i55.i ], [ %.promoted104.i.i39.i, %.lr.ph.split.preheader.i.i38.i ] ; 2 uses
  %i.qv = phi i64 [ %i.sd, %.backedge.i.i55.i ], [ %.promoted.i.i37.i, %.lr.ph.split.preheader.i.i38.i ] ; 2 uses
  %.sroa.026.0103.i.i41.i = phi i64 [ %.sroa.026.0.i.i56.i, %.backedge.i.i55.i ], [ %.sroa.026.0101.i.i36.i, %.lr.ph.split.preheader.i.i38.i ] ; 2 uses
  %.sroa.0.0102.i.i42.i = phi i32 [ %spec.select56.i.i48.i, %.backedge.i.i55.i ], [ 0, %.lr.ph.split.preheader.i.i38.i ]
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.sroa.026.0103.i.i41.i
  %i.qx = load i32, ptr %i.qw, align 4, !alias.scope !311, !noalias !317, !noundef !4 ; 2 uses
  %i.qy = zext i32 %i.qx to i64                   ; 8 uses
  %i.qz = icmp ult i32 %i.qx, 61
  br i1 %i.qz, label %bb.dp, label %.split.us.i.i43.i

bb.dp:                                            ; preds = %.lr.ph.split.i.i40.i
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qy ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 2 ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 2, !alias.scope !313, !noalias !314, !noundef !4 ; 2 uses
  %i.rd = zext i16 %i.rc to i64                   ; 2 uses
  %i.re = icmp ult i16 %i.rc, 61
  br i1 %i.re, label %bb.dq, label %.split106.us.i.i45.i

.split.us.i.i43.i:                                ; preds = %.lr.ph.split.i.i40.i, %.lr.ph.split.us.i.i92.i
  %.us-phi.i.i44.i = phi i64 [ %i.nu, %.lr.ph.split.us.i.i92.i ], [ %i.qy, %.lr.ph.split.i.i40.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i44.i, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17, !noalias !315
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.rd
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.rh = load i16, ptr %i.rg, align 2, !alias.scope !313, !noalias !314, !noundef !4
  %i.ri = add i16 %i.rh, 1                        ; 2 uses
  %i.rj = icmp ugt i16 %i.ri, %i.nf
  %spec.select.i.i47.i = call i16 @llvm.umin.i16(i16 %i.ri, i16 %i.nf) ; 3 uses
  %i.rk = zext i1 %i.rj to i32
  %spec.select56.i.i48.i = add i32 %.sroa.0.0102.i.i42.i, %i.rk ; 2 uses
  store i16 %spec.select.i.i47.i, ptr %i.rb, align 2, !alias.scope !313, !noalias !314
  %i.rl = icmp ult i64 %i.mt, %i.qy
  br i1 %i.rl, label %.backedge.i.i55.i, label %bb.dr

.split106.us.i.i45.i:                             ; preds = %bb.dp, %bb.cu
  %.us-phi107.i.i46.i = phi i64 [ %i.nz, %bb.cu ], [ %i.rd, %bb.dp ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi107.i.i46.i, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17, !noalias !315
  unreachable

bb.dr:                                            ; preds = %bb.dq
  %i.rm = zext i16 %spec.select.i.i47.i to i64    ; 3 uses
  %i.rn = icmp ult i16 %spec.select.i.i47.i, 16
  br i1 %i.rn, label %bb.ds, label %.split109.us.i.i49.i

bb.ds:                                            ; preds = %bb.dr
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.rm ; 2 uses
  %i.rp = load i16, ptr %i.ro, align 2, !alias.scope !309, !noalias !316, !noundef !4
  %i.rq = add i16 %i.rp, 1
  store i16 %i.rq, ptr %i.ro, align 2, !alias.scope !309, !noalias !316
  %.not55.i.i51.i = icmp ugt i64 %i.nd, %i.qy
  br i1 %.not55.i.i51.i, label %bb.dv, label %bb.dt

.split109.us.i.i49.i:                             ; preds = %bb.dr, %bb.cw
  %.us-phi110.i.i50.i = phi i64 [ %i.oi, %bb.cw ], [ %i.rm, %bb.dr ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi110.i.i50.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17, !noalias !315
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.rr = sub nuw nsw i64 %i.qy, %i.nd            ; 3 uses
  %i.rs = icmp ult i64 %i.rr, %i.nb
  br i1 %i.rs, label %bb.du, label %.split112.us.i.i52.i

bb.du:                                            ; preds = %bb.dt
  %i.rt = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.rr
  %i.ru = load i8, ptr %i.rt, align 1, !noalias !315, !noundef !4
  %i.rv = zext i8 %i.ru to i64
  br label %bb.dv

.split112.us.i.i52.i:                             ; preds = %bb.dt, %bb.cy
  %.us-phi113.i.i53.i = phi i64 [ %i.on, %bb.cy ], [ %i.rr, %bb.dt ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi113.i.i53.i, i64 noundef %i.nb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #17, !noalias !315
  unreachable

bb.dv:                                            ; preds = %bb.du, %bb.ds
  %.sroa.09.0.i.i54.i = phi i64 [ %i.rv, %bb.du ], [ 0, %bb.ds ] ; 2 uses
  %i.rw = load i16, ptr %i.ra, align 4, !alias.scope !313, !noalias !314, !noundef !4
  %i.rx = zext i16 %i.rw to i64                   ; 2 uses
  %i.ry = add nuw nsw i64 %.sroa.09.0.i.i54.i, %i.rm
  %i.rz = mul nuw nsw i64 %i.ry, %i.rx
  %i.sa = add i64 %i.rz, %i.qv                    ; 2 uses
  store i64 %i.sa, ptr %i.no, align 64, !alias.scope !318, !noalias !319
  %i.sb = icmp ugt i64 %i.mx, %i.qy
  br i1 %i.sb, label %bb.dw, label %bb.dx

.backedge.i.i55.i:                                ; preds = %bb.dw, %bb.dq
  %i.sc = phi i64 [ %i.sk, %bb.dw ], [ %i.qu, %bb.dq ]
  %i.sd = phi i64 [ %i.sa, %bb.dw ], [ %i.qv, %bb.dq ] ; 2 uses
  %.sroa.026.0.i.i56.i = add nuw nsw i64 %.sroa.026.0103.i.i41.i, 1 ; 2 uses
  %exitcond.not.i.i57.i = icmp eq i64 %.sroa.026.0.i.i56.i, 573
  br i1 %exitcond.not.i.i57.i, label %._crit_edge.i.i58.i, label %.lr.ph.split.i.i40.i

bb.dw:                                            ; preds = %bb.dv
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.qy
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  %i.sg = load i16, ptr %i.sf, align 2, !noalias !315, !noundef !4
  %i.sh = zext i16 %i.sg to i64
  %i.si = add nuw nsw i64 %.sroa.09.0.i.i54.i, %i.sh
  %i.sj = mul nuw nsw i64 %i.si, %i.rx
  %i.sk = add i64 %i.sj, %i.qu                    ; 2 uses
  store i64 %i.sk, ptr %i.nq, align 8, !alias.scope !318, !noalias !319
  br label %.backedge.i.i55.i

bb.dx:                                            ; preds = %bb.dv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.qy, i64 noundef %i.mx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !315
  unreachable

.lr.ph81.i30.i:                                   ; preds = %.lr.ph81.i30.i, %.lr.ph81.preheader.i28.i
  %.sroa.05.079.i31.i = phi i64 [ %i.sl, %.lr.ph81.i30.i ], [ %i.mr, %.lr.ph81.preheader.i28.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr noalias noundef align 8 dereferenceable(2888) %i.e, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.kw, i64 noundef 61, i64 noundef %.sroa.05.079.i31.i), !noalias !300
  %i.sl = add nsw i64 %.sroa.05.079.i31.i, -1     ; 2 uses
  %.not.i32.i = icmp eq i64 %i.sl, 0
  br i1 %.not.i32.i, label %._crit_edge82.i33.i, label %.lr.ph81.i30.i

.peel.next476.i:                                  ; preds = %bb.cq
  %i.sm = icmp slt i64 %.sroa.0.1.i109.peel.i, 2  ; 2 uses
  %i.sn = add nsw i64 %.sroa.0.1.i109.peel.i, 1   ; 4 uses
  %.sroa.04.0.i108.i = select i1 %i.sm, i64 %i.sn, i64 0 ; 6 uses
  %.sroa.0.1.i109.i = select i1 %i.sm, i64 %i.sn, i64 %.sroa.0.1.i109.peel.i ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.sp = trunc i64 %.sroa.04.0.i108.i to i32
  store i32 %i.sp, ptr %i.so, align 8, !noalias !301
  %i.sq = icmp ult i64 %.sroa.04.0.i108.i, 61
  br i1 %i.sq, label %bb.dy, label %.loopexit478.i

bb.dy:                                            ; preds = %.peel.next476.i
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.sroa.04.0.i108.i
  store i16 1, ptr %i.sr, align 4, !alias.scope !299, !noalias !300
  %i.ss = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sroa.04.0.i108.i
  store i8 0, ptr %i.ss, align 1, !noalias !301
  %i.st = add i64 %.promoted76.i105.i, -2
  store i64 %i.st, ptr %i.lv, align 64, !alias.scope !298, !noalias !308
  br i1 %i.lw, label %._crit_edge.thread.i110.i, label %bb.dz

.loopexit478.i:                                   ; preds = %.peel.next476.i, %.lr.ph.i102.i
  %.sroa.04.0.i108.lcssa.i = phi i64 [ %i.lz, %.lr.ph.i102.i ], [ %i.sn, %.peel.next476.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i108.lcssa.i, i64 noundef 61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17, !noalias !301
  unreachable

._crit_edge.thread.i110.i:                        ; preds = %bb.ea, %bb.dy, %bb.cq
  %.sroa.0.1.i109.lcssa415.i = phi i64 [ %.sroa.0.1.i109.peel.i, %bb.cq ], [ %.sroa.0.1.i109.i, %bb.dy ], [ %.sroa.0.1.i109.i, %bb.ea ] ; 2 uses
  store i64 2, ptr %i.e, align 8, !noalias !301
  %i.su = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i109.lcssa415.i, ptr %i.su, align 8, !alias.scope !299, !noalias !300
  br label %.lr.ph81.preheader.i28.i

bb.dz:                                            ; preds = %bb.dy
  %i.sv = icmp ult i64 %.sroa.04.0.i108.i, %i.la
  br i1 %i.sv, label %bb.ea, label %.loopexit479.i

bb.ea:                                            ; preds = %bb.dz
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.sroa.04.0.i108.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 2
  %i.sy = load i16, ptr %i.sx, align 2, !noalias !301, !noundef !4
  %i.sz = zext i16 %i.sy to i64
  %i.ta = sub i64 %i.mn, %i.sz
  store i64 %i.ta, ptr %i.lx, align 8, !alias.scope !298, !noalias !308
  br label %._crit_edge.thread.i110.i

.loopexit479.i:                                   ; preds = %bb.dz, %bb.co
  %.sroa.04.0.i108.lcssa416.i = phi i64 [ %i.lz, %bb.co ], [ %i.sn, %bb.dz ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i108.lcssa416.i, i64 noundef %i.la, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17, !noalias !301
  unreachable

_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i: ; preds = %.loopexit.i.i89.i, %.preheader.i.i73.i, %._crit_edge.i.i58.i, %bb.ct
  call fastcc void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate9gen_codes(ptr noalias noundef nonnull align 2 %i.kw, i64 noundef 61, i64 noundef %.sroa.0.0.lcssa174.i29.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !301
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.h, ptr noundef nonnull %i.ku, i64 noundef 33)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit111.i unwind label %bb.eb, !noalias !272

bb.eb:                                            ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #18, !noalias !272
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit111.i: ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj3d_EB4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !272
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.k, i64 2928 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.te = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.tf = load i64, ptr %i.te, align 8, !alias.scope !320, !noalias !272, !noundef !4
  call fastcc void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate9scan_tree(ptr noalias noundef align 8 dereferenceable(176) %i.tc, ptr noalias noundef nonnull align 2 %i.td, i64 noundef 573, i64 noundef %i.tf), !noalias !272
  %i.tg = getelementptr inbounds nuw i8, ptr %i.k, i64 2680
  %i.th = getelementptr inbounds nuw i8, ptr %i.k, i64 2672
  %i.ti = load i64, ptr %i.th, align 16, !alias.scope !320, !noalias !272, !noundef !4
  call fastcc void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate9scan_tree(ptr noalias noundef align 8 dereferenceable(176) %i.tc, ptr noalias noundef nonnull align 2 %i.tg, i64 noundef 61, i64 noundef %i.ti), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 16 dereferenceable(176) @82, i64 176, i1 false), !noalias !321
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.c, ptr noundef nonnull %i.tc, i64 noundef 22)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit.i.i unwind label %bb.ec, !noalias !272

bb.ec:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit111.i
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #18, !noalias !272
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj3d_EEB15_.exit111.i
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 13 uses
  %i.tl = load ptr, ptr %i.c, align 8, !alias.scope !323, !noalias !324, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !noalias !325, !nonnull !4, !align !279, !noundef !4 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !noalias !325, !noundef !4 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !325, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !326
  %i.tr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.b, i64 2308 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.tu = icmp ult i64 %i.tq, 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2865) %i.tr, i8 0, i64 2865, i1 false), !noalias !321
  br i1 %i.tu, label %bb.ee, label %bb.ed, !prof !5

bb.ed:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit.i.i
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.tq, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !325
  unreachable

bb.ee:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  store i64 0, ptr %i.b, align 8, !alias.scope !327, !noalias !329
  store i64 573, ptr %i.tt, align 8, !alias.scope !327, !noalias !329
  %.idx.i.i.i.i = shl nuw nsw i64 %i.tq, 2
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.idx.i.i.i.i
  %i.tw = icmp eq i64 %i.tq, 0
  br i1 %i.tw, label %.lr.ph.i.i114.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ee, %bb.eh
  %.sroa.0.022.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %bb.eh ], [ -1, %bb.ee ]
  %.sroa.0.0821.i.i.i.i = phi ptr [ %i.tx, %bb.eh ], [ %i.tk, %bb.ee ] ; 3 uses
  %.sroa.7.020.i.i.i.i = phi i64 [ %i.ty, %bb.eh ], [ 0, %bb.ee ] ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.0821.i.i.i.i, i64 4 ; 2 uses
  %i.ty = add nuw nsw i64 %.sroa.7.020.i.i.i.i, 1
  %i.tz = load i16, ptr %.sroa.0.0821.i.i.i.i, align 2, !alias.scope !330, !noalias !331, !noundef !4
  %.not7.i.i.i.i = icmp eq i16 %i.tz, 0
  br i1 %.not7.i.i.i.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0.0821.i.i.i.i, i64 2
  store i16 0, ptr %i.ua, align 2, !alias.scope !330, !noalias !331
  br label %bb.eh

bb.eg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ub = load i64, ptr %i.b, align 8, !alias.scope !327, !noalias !329, !noundef !4
  %i.uc = add i64 %i.ub, 1                        ; 4 uses
  store i64 %i.uc, ptr %i.b, align 8, !alias.scope !327, !noalias !329
  %i.ud = icmp ult i64 %i.uc, 573
  br i1 %i.ud, label %bb.ej, label %bb.ei

bb.eh:                                            ; preds = %bb.ej, %bb.ef
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.7.020.i.i.i.i, %bb.ej ], [ %.sroa.0.022.i.i.i.i, %bb.ef ] ; 4 uses
  %i.ue = icmp eq ptr %i.tx, %i.tv
  br i1 %i.ue, label %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.uc, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #17, !noalias !332
  unreachable

bb.ej:                                            ; preds = %bb.eg
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.uc
  %i.ug = trunc i64 %.sroa.7.020.i.i.i.i to i32
  store i32 %i.ug, ptr %i.uf, align 4, !alias.scope !327, !noalias !329
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.sroa.7.020.i.i.i.i
  store i8 0, ptr %i.uh, align 1, !alias.scope !327, !noalias !329
  br label %bb.eh

_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i: ; preds = %bb.eh
  %.promoted.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !326 ; 3 uses
  %i.ui = icmp ult i64 %.promoted.pre.i.i.i, 2
  br i1 %i.ui, label %.lr.ph.i.i114.i, label %._crit_edge.i.i112.i

.lr.ph.i.i114.i:                                  ; preds = %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i, %bb.ee
  %.sroa.0.0.lcssa.i170.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i, %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i ], [ -1, %bb.ee ] ; 3 uses
  %.promoted169.i.i.i = phi i64 [ %.promoted.pre.i.i.i, %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i ], [ 0, %bb.ee ] ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 3 uses
  %i.uk = icmp eq i64 %i.to, 0                    ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 3 uses
  %.promoted76.i.i.i = load i64, ptr %i.uj, align 64, !alias.scope !333, !noalias !334 ; 2 uses
  %.promoted77.i.i.i = load i64, ptr %i.ul, align 8, !alias.scope !333, !noalias !334 ; 2 uses
  %i.um = icmp slt i64 %.sroa.0.0.lcssa.i170.i.i.i, 2 ; 2 uses
  %i.un = add nsw i64 %.sroa.0.0.lcssa.i170.i.i.i, 1 ; 4 uses
  %.sroa.04.0.i.peel.i.i = select i1 %i.um, i64 %i.un, i64 0 ; 6 uses
  %.sroa.0.1.i.peel.i.i = select i1 %i.um, i64 %i.un, i64 %.sroa.0.0.lcssa.i170.i.i.i ; 4 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.promoted169.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.uq = trunc i64 %.sroa.04.0.i.peel.i.i to i32
  store i32 %i.uq, ptr %i.up, align 4, !noalias !326
  %i.ur = icmp ult i64 %.sroa.04.0.i.peel.i.i, 39
  br i1 %i.ur, label %bb.ek, label %.loopexit.i.i

bb.ek:                                            ; preds = %.lr.ph.i.i114.i
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %.sroa.04.0.i.peel.i.i
  store i16 1, ptr %i.us, align 4, !alias.scope !323, !noalias !324
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.sroa.04.0.i.peel.i.i
  store i8 0, ptr %i.ut, align 1, !noalias !326
  %i.uu = add i64 %.promoted76.i.i.i, -1
  store i64 %i.uu, ptr %i.uj, align 64, !alias.scope !333, !noalias !334
  br i1 %i.uk, label %bb.en, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.uv = icmp ult i64 %.sroa.04.0.i.peel.i.i, %i.to
  br i1 %i.uv, label %bb.em, label %.loopexit124.i.i

bb.em:                                            ; preds = %bb.el
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.sroa.04.0.i.peel.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  %i.uy = load i16, ptr %i.ux, align 2, !noalias !325, !noundef !4
  %i.uz = zext i16 %i.uy to i64
  %i.va = sub i64 %.promoted77.i.i.i, %i.uz       ; 2 uses
  store i64 %i.va, ptr %i.ul, align 8, !alias.scope !333, !noalias !334
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ek
  %i.vb = phi i64 [ %i.va, %bb.em ], [ %.promoted77.i.i.i, %bb.ek ]
  %i.vc = icmp eq i64 %.promoted169.i.i.i, 0
  br i1 %i.vc, label %.peel.next.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.i.i112.i:                             ; preds = %_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10initialize.exit.i.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.i.i.i, ptr %i.vd, align 8, !alias.scope !323, !noalias !324
  %i.ve = lshr i64 %.promoted.pre.i.i.i, 1
  br label %.lr.ph81.preheader.i.i.i

.lr.ph81.preheader.i.i.i:                         ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i112.i
  %i.vf = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.ve, %._crit_edge.i.i112.i ]
  %i.vg = phi ptr [ %i.abi, %._crit_edge.thread.i.i.i ], [ %i.vd, %._crit_edge.i.i112.i ]
  %.sroa.0.0.lcssa174.i.i.i = phi i64 [ %.sroa.0.1.i.lcssa116.i.i, %._crit_edge.thread.i.i.i ], [ %.sroa.0.1.i.i.i.i, %._crit_edge.i.i112.i ]
  br label %.lr.ph81.i.i.i

._crit_edge82.i.i.i:                              ; preds = %.lr.ph81.i.i.i
  call fastcc void @_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap22construct_huffman_tree(ptr noalias noundef align 8 dereferenceable(2888) %i.b, ptr noalias noundef nonnull align 2 %i.tk, i64 noundef 39, i64 noundef %i.tq), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.vh = load i64, ptr %i.vg, align 8, !alias.scope !340, !noalias !341, !noundef !4 ; 3 uses
  %i.vi = load ptr, ptr %i.c, align 8, !alias.scope !340, !noalias !341, !nonnull !4, !align !11, !noundef !4 ; 6 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !342, !nonnull !4, !align !279, !noundef !4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !noalias !342, !noundef !4 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !342, !nonnull !4, !noundef !4 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vp = load i64, ptr %i.vo, align 8, !noalias !342, !noundef !4 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.vr = load i64, ptr %i.vq, align 8, !noalias !342, !noundef !4 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vt = load i16, ptr %i.vs, align 8, !noalias !342, !noundef !4 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !alias.scope !336, !noalias !343
  %i.vu = load i64, ptr %i.tt, align 8, !alias.scope !338, !noalias !344, !noundef !4 ; 5 uses
  %i.vv = icmp ult i64 %i.vu, 573
  br i1 %i.vv, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %._crit_edge82.i.i.i
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.vu
  %i.vx = load i32, ptr %i.vw, align 4, !alias.scope !338, !noalias !344, !noundef !4 ; 2 uses
  %i.vy = zext i32 %i.vx to i64                   ; 2 uses
  %i.vz = icmp ult i32 %i.vx, 39
  br i1 %i.vz, label %bb.eq, label %bb.ey

bb.ep:                                            ; preds = %._crit_edge82.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vu, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !342
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.vy
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 2
  store i16 0, ptr %i.wb, align 2, !alias.scope !340, !noalias !341
  %.not137.i.i.i.i = icmp eq i64 %i.vu, 572
  br i1 %.not137.i.i.i.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %bb.eq
  %.sroa.026.0101.i.i.i.i = add nuw nsw i64 %i.vu, 1 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 4 uses
  %i.wd = icmp eq i64 %i.vl, 0
  %i.we = getelementptr inbounds nuw i8, ptr %i.k, i64 200 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.wc, align 64, !alias.scope !345, !noalias !346 ; 2 uses
  br i1 %i.wd, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.i12.i.i.i
  %.promoted104.i.i.i.i = load i64, ptr %i.we, align 8, !alias.scope !345, !noalias !346
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i12.i.i.i, %.backedge.us.i.i.i.i
  %i.wf = phi i64 [ %i.xl, %.backedge.us.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 2 uses
  %.sroa.026.0103.us.i.i.i.i = phi i64 [ %.sroa.026.0.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ %.sroa.026.0101.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 2 uses
  %.sroa.0.0102.us.i.i.i.i = phi i32 [ %spec.select56.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ 0, %.lr.ph.i12.i.i.i ]
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.026.0103.us.i.i.i.i
  %i.wh = load i32, ptr %i.wg, align 4, !alias.scope !338, !noalias !344, !noundef !4 ; 2 uses
  %i.wi = zext i32 %i.wh to i64                   ; 5 uses
  %i.wj = icmp ult i32 %i.wh, 39
  br i1 %i.wj, label %bb.er, label %.split.us.i.i.i.i

bb.er:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.wi ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 2 ; 2 uses
  %i.wm = load i16, ptr %i.wl, align 2, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.wn = zext i16 %i.wm to i64                   ; 2 uses
  %i.wo = icmp ult i16 %i.wm, 39
  br i1 %i.wo, label %bb.es, label %.split106.us.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.wn
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 2
  %i.wr = load i16, ptr %i.wq, align 2, !alias.scope !340, !noalias !341, !noundef !4
  %i.ws = add i16 %i.wr, 1                        ; 2 uses
  %i.wt = icmp ugt i16 %i.ws, %i.vt
  %spec.select.us.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.ws, i16 %i.vt) ; 3 uses
  %i.wu = zext i1 %i.wt to i32
  %spec.select56.us.i.i.i.i = add i32 %.sroa.0.0102.us.i.i.i.i, %i.wu ; 2 uses
  store i16 %spec.select.us.i.i.i.i, ptr %i.wl, align 2, !alias.scope !340, !noalias !341
  %i.wv = icmp ult i64 %i.vh, %i.wi
  br i1 %i.wv, label %.backedge.us.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ww = zext i16 %spec.select.us.i.i.i.i to i64 ; 3 uses
  %i.wx = icmp ult i16 %spec.select.us.i.i.i.i, 16
  br i1 %i.wx, label %bb.eu, label %.split109.us.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ww ; 2 uses
  %i.wz = load i16, ptr %i.wy, align 2, !alias.scope !336, !noalias !343, !noundef !4
  %i.xa = add i16 %i.wz, 1
  store i16 %i.xa, ptr %i.wy, align 2, !alias.scope !336, !noalias !343
  %.not55.us.i.i.i.i = icmp ugt i64 %i.vr, %i.wi
  br i1 %.not55.us.i.i.i.i, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xb = sub nuw nsw i64 %i.wi, %i.vr            ; 3 uses
  %i.xc = icmp ult i64 %i.xb, %i.vp
  br i1 %i.xc, label %bb.ew, label %.split112.us.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.xb
  %i.xe = load i8, ptr %i.xd, align 1, !noalias !342, !noundef !4
  %i.xf = zext i8 %i.xe to i64
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.eu
  %.sroa.09.0.us.i.i.i.i = phi i64 [ %i.xf, %bb.ew ], [ 0, %bb.eu ]
  %i.xg = load i16, ptr %i.wk, align 4, !alias.scope !340, !noalias !341, !noundef !4
  %i.xh = zext i16 %i.xg to i64
  %i.xi = add nuw nsw i64 %.sroa.09.0.us.i.i.i.i, %i.ww
  %i.xj = mul nuw nsw i64 %i.xi, %i.xh
  %i.xk = add i64 %i.xj, %i.wf                    ; 2 uses
  store i64 %i.xk, ptr %i.wc, align 64, !alias.scope !345, !noalias !346
  br label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %bb.ex, %bb.es
  %i.xl = phi i64 [ %i.xk, %bb.ex ], [ %i.wf, %bb.es ] ; 2 uses
  %.sroa.026.0.us.i.i.i.i = add nuw nsw i64 %.sroa.026.0103.us.i.i.i.i, 1 ; 2 uses
  %exitcond186.not.i.i.i.i = icmp eq i64 %.sroa.026.0.us.i.i.i.i, 573
  br i1 %exitcond186.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

bb.ey:                                            ; preds = %bb.eo
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vy, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17, !noalias !342
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %.backedge.us.i.i.i.i
  %.promoted132.i.i.i.i = phi i64 [ %i.xl, %.backedge.us.i.i.i.i ], [ %i.aar, %.backedge.i.i.i.i ]
  %.sroa.0.0.lcssa.i13.i.i.i = phi i32 [ %spec.select56.us.i.i.i.i, %.backedge.us.i.i.i.i ], [ %spec.select56.i.i.i.i, %.backedge.i.i.i.i ] ; 2 uses
  %i.xm = icmp eq i32 %.sroa.0.0.lcssa.i13.i.i.i, 0
  br i1 %i.xm, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.preheader69.i.i.i.i

.preheader69.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i
  %i.xn = zext i16 %i.vt to i64                   ; 5 uses
  %i.xo = icmp ult i16 %i.vt, 16
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.xn ; 2 uses
  br i1 %i.xo, label %.preheader69.split.us.i.i.i.i, label %.preheader69.split.i.i.i.i

.preheader69.split.us.i.i.i.i:                    ; preds = %.preheader69.i.i.i.i, %bb.fb
  %.sroa.0.1.us.i.i.i.i = phi i32 [ %i.yb, %bb.fb ], [ %.sroa.0.0.lcssa.i13.i.i.i, %.preheader69.i.i.i.i ]
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fa, %.preheader69.split.us.i.i.i.i
  %.sroa.011.0.in.us.i.i.i.i = phi i64 [ %i.xn, %.preheader69.split.us.i.i.i.i ], [ %.sroa.011.0.us.i.i.i.i, %bb.fa ]
  %.sroa.011.0.us.i.i.i.i = add nsw i64 %.sroa.011.0.in.us.i.i.i.i, -1 ; 5 uses
  %i.xq = icmp ult i64 %.sroa.011.0.us.i.i.i.i, 16
  br i1 %i.xq, label %bb.fa, label %.split117.us.i.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.011.0.us.i.i.i.i
  %i.xs = load i16, ptr %i.xr, align 2, !alias.scope !336, !noalias !343, !noundef !4 ; 2 uses
  %i.xt = icmp eq i16 %i.xs, 0
  br i1 %i.xt, label %bb.ez, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.011.0.us.i.i.i.i ; 2 uses
  %i.xv = add i16 %i.xs, -1
  store i16 %i.xv, ptr %i.xu, align 2, !alias.scope !336, !noalias !343
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 2 ; 2 uses
  %i.xx = load i16, ptr %i.xw, align 2, !alias.scope !336, !noalias !343, !noundef !4
  %i.xy = add i16 %i.xx, 2
  store i16 %i.xy, ptr %i.xw, align 2, !alias.scope !336, !noalias !343
  %i.xz = load i16, ptr %i.xp, align 2, !alias.scope !336, !noalias !343, !noundef !4
  %i.ya = add i16 %i.xz, -1
  store i16 %i.ya, ptr %i.xp, align 2, !alias.scope !336, !noalias !343
  %i.yb = add i32 %.sroa.0.1.us.i.i.i.i, -2       ; 2 uses
  %i.yc = icmp slt i32 %i.yb, 1
  br i1 %i.yc, label %.preheader.i.i.i.i, label %.preheader69.split.us.i.i.i.i

.preheader69.split.i.i.i.i:                       ; preds = %.preheader69.i.i.i.i, %bb.fc
  %.sroa.011.0.in.i.i.i.i = phi i64 [ %.sroa.011.0.i.i.i.i, %bb.fc ], [ %i.xn, %.preheader69.i.i.i.i ]
  %.sroa.011.0.i.i.i.i = add nsw i64 %.sroa.011.0.in.i.i.i.i, -1 ; 5 uses
  %i.yd = icmp ult i64 %.sroa.011.0.i.i.i.i, 16
  br i1 %i.yd, label %bb.fc, label %.split117.us.i.i.i.i

bb.fc:                                            ; preds = %.preheader69.split.i.i.i.i
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.011.0.i.i.i.i
  %i.yf = load i16, ptr %i.ye, align 2, !alias.scope !336, !noalias !343, !noundef !4
  %i.yg = icmp eq i16 %i.yf, 0
  br i1 %i.yg, label %.preheader69.split.i.i.i.i, label %bb.fd

.split117.us.i.i.i.i:                             ; preds = %.preheader69.split.i.i.i.i, %bb.ez
  %.us-phi118.i.i.i.i = phi i64 [ %.sroa.011.0.us.i.i.i.i, %bb.ez ], [ %.sroa.011.0.i.i.i.i, %.preheader69.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi118.i.i.i.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17, !noalias !342
  unreachable

bb.fd:                                            ; preds = %bb.fc
  %.not.i.i.i.i = icmp eq i64 %.sroa.011.0.i.i.i.i, 15
  br i1 %.not.i.i.i.i, label %.split120.us.i.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xn, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !342
  unreachable

.split120.us.i.i.i.i:                             ; preds = %bb.fd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 16, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17, !noalias !342
  unreachable

.preheader.i.i.i.i:                               ; preds = %bb.fb
  %.not.i128.i.i.i.i = icmp eq i16 %i.vt, 0
  br i1 %.not.i128.i.i.i.i, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.thread.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.outer.i.i.i.i, %.thread.i.i.i.i
  %.promoted124132.i.i.i.i = phi i64 [ %.promoted127136.i.i.i.i, %.thread.i.i.i.i ], [ %.promoted127133.i.i.i.i, %.outer.i.i.i.i ]
  %.sroa.015.1.lcssa.i.i.i.i = phi i64 [ %.sroa.015.0130.i.i.i.i, %.thread.i.i.i.i ], [ %i.ym, %.outer.i.i.i.i ]
  br i1 %i.yh, label %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.preheader.i.i.i.i, %.loopexit.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i.i ], [ %i.xn, %.preheader.i.i.i.i ] ; 5 uses
  %.promoted127136.i.i.i.i = phi i64 [ %.promoted124132.i.i.i.i, %.loopexit.i.i.i.i ], [ %.promoted132.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.015.0130.i.i.i.i = phi i64 [ %.sroa.015.1.lcssa.i.i.i.i, %.loopexit.i.i.i.i ], [ 573, %.preheader.i.i.i.i ] ; 2 uses
  %i.yh = icmp eq i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  %i.yj = load i16, ptr %i.yi, align 2, !alias.scope !336, !noalias !343, !noundef !4 ; 2 uses
  %i.yk = icmp eq i16 %i.yj, 0
  br i1 %i.yk, label %.loopexit.i.i.i.i, label %.outer.split.i.preheader.i.i.i

.outer.split.i.preheader.i.i.i:                   ; preds = %.thread.i.i.i.i
  %i.yl = trunc nuw i64 %indvars.iv.i.i.i to i16  ; 2 uses
  br label %.outer.split.i.i.i.i

bb.ff:                                            ; preds = %.outer.split.i.i.i.i, %bb.fg
  %.sroa.015.1.i.i.i.i = phi i64 [ %i.ym, %bb.fg ], [ %.sroa.015.1.ph125.i.i.i.i, %.outer.split.i.i.i.i ]
  %i.ym = add i64 %.sroa.015.1.i.i.i.i, -1        ; 6 uses
  %i.yn = icmp ult i64 %i.ym, 573
  br i1 %i.yn, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ym
  %i.yp = load i32, ptr %i.yo, align 4, !alias.scope !338, !noalias !344, !noundef !4 ; 2 uses
  %i.yq = zext i32 %i.yp to i64                   ; 3 uses
  %i.yr = icmp ult i64 %i.vh, %i.yq
  br i1 %i.yr, label %bb.ff, label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ym, i64 noundef 573, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !342
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.ys = icmp ult i32 %i.yp, 39
  br i1 %i.ys, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.yq ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 2 ; 2 uses
  %i.yv = load i16, ptr %i.yu, align 2, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.yw = zext i16 %i.yv to i64
  %.not54.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.yw
  br i1 %.not54.i.i.i.i, label %.outer.i.i.i.i, label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.yq, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !342
  unreachable

.outer.i.i.i.i:                                   ; preds = %bb.fl, %bb.fj
  %.promoted127133.i.i.i.i = phi i64 [ %i.zh, %bb.fl ], [ %.promoted127134.i.i.i.i, %bb.fj ] ; 2 uses
  %i.yx = phi i64 [ %i.zh, %bb.fl ], [ %i.za, %bb.fj ]
  %i.yy = add i16 %.sroa.024.0.ph124.i.i.i.i, -1  ; 2 uses
  %i.yz = icmp eq i16 %i.yy, 0
  br i1 %i.yz, label %.loopexit.i.i.i.i, label %.outer.split.i.i.i.i

.outer.split.i.i.i.i:                             ; preds = %.outer.i.i.i.i, %.outer.split.i.preheader.i.i.i
  %.promoted127134.i.i.i.i = phi i64 [ %.promoted127133.i.i.i.i, %.outer.i.i.i.i ], [ %.promoted127136.i.i.i.i, %.outer.split.i.preheader.i.i.i ]
  %i.za = phi i64 [ %i.yx, %.outer.i.i.i.i ], [ %.promoted127136.i.i.i.i, %.outer.split.i.preheader.i.i.i ] ; 2 uses
  %.sroa.015.1.ph125.i.i.i.i = phi i64 [ %i.ym, %.outer.i.i.i.i ], [ %.sroa.015.0130.i.i.i.i, %.outer.split.i.preheader.i.i.i ]
  %.sroa.024.0.ph124.i.i.i.i = phi i16 [ %i.yy, %.outer.i.i.i.i ], [ %i.yj, %.outer.split.i.preheader.i.i.i ]
  br label %bb.ff

bb.fl:                                            ; preds = %bb.fj
  %i.zb = load i16, ptr %i.yt, align 4, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.zc = mul i16 %i.zb, %i.yl
  %i.zd = zext i16 %i.zc to i64
  %i.ze = add i64 %i.za, %i.zd
  %i.zf = mul i16 %i.zb, %i.yv
  %i.zg = zext i16 %i.zf to i64
  %i.zh = sub i64 %i.ze, %i.zg                    ; 3 uses
  store i64 %i.zh, ptr %i.wc, align 64, !alias.scope !345, !noalias !346
  store i16 %i.yl, ptr %i.yu, align 2, !alias.scope !340, !noalias !341
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.backedge.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i
  %i.zi = phi i64 [ %i.aaq, %.backedge.i.i.i.i ], [ %.promoted104.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 2 uses
  %i.zj = phi i64 [ %i.aar, %.backedge.i.i.i.i ], [ %.promoted.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 2 uses
  %.sroa.026.0103.i.i.i.i = phi i64 [ %.sroa.026.0.i.i.i.i, %.backedge.i.i.i.i ], [ %.sroa.026.0101.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.0102.i.i.i.i = phi i32 [ %spec.select56.i.i.i.i, %.backedge.i.i.i.i ], [ 0, %.lr.ph.split.preheader.i.i.i.i ]
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.026.0103.i.i.i.i
  %i.zl = load i32, ptr %i.zk, align 4, !alias.scope !338, !noalias !344, !noundef !4 ; 2 uses
  %i.zm = zext i32 %i.zl to i64                   ; 8 uses
  %i.zn = icmp ult i32 %i.zl, 39
  br i1 %i.zn, label %bb.fm, label %.split.us.i.i.i.i

bb.fm:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.zm ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 2 ; 2 uses
  %i.zq = load i16, ptr %i.zp, align 2, !alias.scope !340, !noalias !341, !noundef !4 ; 2 uses
  %i.zr = zext i16 %i.zq to i64                   ; 2 uses
  %i.zs = icmp ult i16 %i.zq, 39
  br i1 %i.zs, label %bb.fn, label %.split106.us.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %.lr.ph.split.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.wi, %.lr.ph.split.us.i.i.i.i ], [ %i.zm, %.lr.ph.split.i.i.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi.i.i.i.i, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17, !noalias !342
  unreachable

bb.fn:                                            ; preds = %bb.fm
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.zr
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 2
  %i.zv = load i16, ptr %i.zu, align 2, !alias.scope !340, !noalias !341, !noundef !4
  %i.zw = add i16 %i.zv, 1                        ; 2 uses
  %i.zx = icmp ugt i16 %i.zw, %i.vt
  %spec.select.i.i.i.i = call i16 @llvm.umin.i16(i16 %i.zw, i16 %i.vt) ; 3 uses
  %i.zy = zext i1 %i.zx to i32
  %spec.select56.i.i.i.i = add i32 %.sroa.0.0102.i.i.i.i, %i.zy ; 2 uses
  store i16 %spec.select.i.i.i.i, ptr %i.zp, align 2, !alias.scope !340, !noalias !341
  %i.zz = icmp ult i64 %i.vh, %i.zm
  br i1 %i.zz, label %.backedge.i.i.i.i, label %bb.fo

.split106.us.i.i.i.i:                             ; preds = %bb.fm, %bb.er
  %.us-phi107.i.i.i.i = phi i64 [ %i.wn, %bb.er ], [ %i.zr, %bb.fm ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi107.i.i.i.i, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17, !noalias !342
  unreachable

bb.fo:                                            ; preds = %bb.fn
  %i.aaa = zext i16 %spec.select.i.i.i.i to i64   ; 3 uses
  %i.aab = icmp ult i16 %spec.select.i.i.i.i, 16
  br i1 %i.aab, label %bb.fp, label %.split109.us.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aaa ; 2 uses
  %i.aad = load i16, ptr %i.aac, align 2, !alias.scope !336, !noalias !343, !noundef !4
  %i.aae = add i16 %i.aad, 1
  store i16 %i.aae, ptr %i.aac, align 2, !alias.scope !336, !noalias !343
  %.not55.i.i.i.i = icmp ugt i64 %i.vr, %i.zm
  br i1 %.not55.i.i.i.i, label %bb.fs, label %bb.fq

.split109.us.i.i.i.i:                             ; preds = %bb.fo, %bb.et
  %.us-phi110.i.i.i.i = phi i64 [ %i.ww, %bb.et ], [ %i.aaa, %bb.fo ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi110.i.i.i.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17, !noalias !342
  unreachable

bb.fq:                                            ; preds = %bb.fp
  %i.aaf = sub nuw nsw i64 %i.zm, %i.vr           ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, %i.vp
  br i1 %i.aag, label %bb.fr, label %.split112.us.i.i.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.aah = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.aaf
  %i.aai = load i8, ptr %i.aah, align 1, !noalias !342, !noundef !4
  %i.aaj = zext i8 %i.aai to i64
  br label %bb.fs

.split112.us.i.i.i.i:                             ; preds = %bb.fq, %bb.ev
  %.us-phi113.i.i.i.i = phi i64 [ %i.xb, %bb.ev ], [ %i.aaf, %bb.fq ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi113.i.i.i.i, i64 noundef %i.vp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #17, !noalias !342
  unreachable

bb.fs:                                            ; preds = %bb.fr, %bb.fp
  %.sroa.09.0.i.i.i.i = phi i64 [ %i.aaj, %bb.fr ], [ 0, %bb.fp ] ; 2 uses
  %i.aak = load i16, ptr %i.zo, align 4, !alias.scope !340, !noalias !341, !noundef !4
  %i.aal = zext i16 %i.aak to i64                 ; 2 uses
  %i.aam = add nuw nsw i64 %.sroa.09.0.i.i.i.i, %i.aaa
  %i.aan = mul nuw nsw i64 %i.aam, %i.aal
  %i.aao = add i64 %i.aan, %i.zj                  ; 2 uses
  store i64 %i.aao, ptr %i.wc, align 64, !alias.scope !345, !noalias !346
  %i.aap = icmp ugt i64 %i.vl, %i.zm
  br i1 %i.aap, label %bb.ft, label %bb.fu

.backedge.i.i.i.i:                                ; preds = %bb.ft, %bb.fn
  %i.aaq = phi i64 [ %i.aay, %bb.ft ], [ %i.zi, %bb.fn ]
  %i.aar = phi i64 [ %i.aao, %bb.ft ], [ %i.zj, %bb.fn ] ; 2 uses
  %.sroa.026.0.i.i.i.i = add nuw nsw i64 %.sroa.026.0103.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.026.0.i.i.i.i, 573
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.split.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.zm
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aau = load i16, ptr %i.aat, align 2, !noalias !342, !noundef !4
  %i.aav = zext i16 %i.aau to i64
  %i.aaw = add nuw nsw i64 %.sroa.09.0.i.i.i.i, %i.aav
  %i.aax = mul nuw nsw i64 %i.aaw, %i.aal
  %i.aay = add i64 %i.aax, %i.zi                  ; 2 uses
  store i64 %i.aay, ptr %i.we, align 8, !alias.scope !345, !noalias !346
  br label %.backedge.i.i.i.i

bb.fu:                                            ; preds = %bb.fs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zm, i64 noundef %i.vl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !342
  unreachable

.lr.ph81.i.i.i:                                   ; preds = %.lr.ph81.i.i.i, %.lr.ph81.preheader.i.i.i
  %.sroa.05.079.i.i.i = phi i64 [ %i.aaz, %.lr.ph81.i.i.i ], [ %i.vf, %.lr.ph81.preheader.i.i.i ] ; 2 uses
  call fastcc void @_RNvMsa_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_4Heap10pqdownheap(ptr noalias noundef align 8 dereferenceable(2888) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.tk, i64 noundef 39, i64 noundef %.sroa.05.079.i.i.i), !noalias !335
  %i.aaz = add nsw i64 %.sroa.05.079.i.i.i, -1    ; 2 uses
  %.not.i.i113.i = icmp eq i64 %i.aaz, 0
  br i1 %.not.i.i113.i, label %._crit_edge82.i.i.i, label %.lr.ph81.i.i.i

.peel.next.i.i:                                   ; preds = %bb.en
  %i.aba = icmp slt i64 %.sroa.0.1.i.peel.i.i, 2  ; 2 uses
  %i.abb = add nsw i64 %.sroa.0.1.i.peel.i.i, 1   ; 4 uses
  %.sroa.04.0.i.i.i = select i1 %i.aba, i64 %i.abb, i64 0 ; 6 uses
  %.sroa.0.1.i.i115.i = select i1 %i.aba, i64 %i.abb, i64 %.sroa.0.1.i.peel.i.i ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.abd = trunc i64 %.sroa.04.0.i.i.i to i32
  store i32 %i.abd, ptr %i.abc, align 8, !noalias !326
  %i.abe = icmp ult i64 %.sroa.04.0.i.i.i, 39
  br i1 %i.abe, label %bb.fv, label %.loopexit.i.i

bb.fv:                                            ; preds = %.peel.next.i.i
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %.sroa.04.0.i.i.i
  store i16 1, ptr %i.abf, align 4, !alias.scope !323, !noalias !324
  %i.abg = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.sroa.04.0.i.i.i
  store i8 0, ptr %i.abg, align 1, !noalias !326
  %i.abh = add i64 %.promoted76.i.i.i, -2
  store i64 %i.abh, ptr %i.uj, align 64, !alias.scope !333, !noalias !334
  br i1 %i.uk, label %._crit_edge.thread.i.i.i, label %bb.fw

.loopexit.i.i:                                    ; preds = %.peel.next.i.i, %.lr.ph.i.i114.i
  %.sroa.04.0.i.lcssa.i.i = phi i64 [ %i.un, %.lr.ph.i.i114.i ], [ %i.abb, %.peel.next.i.i ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.lcssa.i.i, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17, !noalias !325
  unreachable

._crit_edge.thread.i.i.i:                         ; preds = %bb.fx, %bb.fv, %bb.en
  %.sroa.0.1.i.lcssa116.i.i = phi i64 [ %.sroa.0.1.i.peel.i.i, %bb.en ], [ %.sroa.0.1.i.i115.i, %bb.fv ], [ %.sroa.0.1.i.i115.i, %bb.fx ] ; 2 uses
  store i64 2, ptr %i.b, align 8, !noalias !326
  %i.abi = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %.sroa.0.1.i.lcssa116.i.i, ptr %i.abi, align 8, !alias.scope !323, !noalias !324
  br label %.lr.ph81.preheader.i.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.abj = icmp ult i64 %.sroa.04.0.i.i.i, %i.to
  br i1 %i.abj, label %bb.fx, label %.loopexit124.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.sroa.04.0.i.i.i
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  %i.abm = load i16, ptr %i.abl, align 2, !noalias !325, !noundef !4
  %i.abn = zext i16 %i.abm to i64
  %i.abo = sub i64 %i.vb, %i.abn
  store i64 %i.abo, ptr %i.ul, align 8, !alias.scope !333, !noalias !334
  br label %._crit_edge.thread.i.i.i

.loopexit124.i.i:                                 ; preds = %bb.fw, %bb.el
  %.sroa.04.0.i.lcssa117.i.i = phi i64 [ %i.un, %bb.el ], [ %i.abb, %bb.fw ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.04.0.i.lcssa117.i.i, i64 noundef %i.to, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17, !noalias !325
  unreachable

_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i: ; preds = %.loopexit.i.i.i.i, %.preheader.i.i.i.i, %._crit_edge.i.i.i.i, %bb.eq
  call fastcc void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate9gen_codes(ptr noalias noundef nonnull align 2 %i.tk, i64 noundef 39, i64 noundef %.sroa.0.0.lcssa174.i.i.i, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !326
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.c, ptr noundef nonnull %i.tc, i64 noundef 22)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit5.i.i unwind label %bb.fy, !noalias !272

bb.fy:                                            ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i
  %i.abp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #18, !noalias !272
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit5.i.i: ; preds = %_RINvNtCs7kNFBubu20U_7zlib_rs7deflate10build_treeKj27_EB4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  %i.abq = getelementptr inbounds nuw i8, ptr %i.k, i64 3006
  %i.abr = load i16, ptr %i.abq, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.abs = icmp eq i16 %i.abr, 0
  br i1 %i.abs, label %bb.fz, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.fz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit5.i.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.k, i64 2950
  %i.abu = load i16, ptr %i.abt, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.abv = icmp eq i16 %i.abu, 0
  br i1 %i.abv, label %bb.ga, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ga:                                            ; preds = %bb.fz
  %i.abw = getelementptr inbounds nuw i8, ptr %i.k, i64 3002
  %i.abx = load i16, ptr %i.abw, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.aby = icmp eq i16 %i.abx, 0
  br i1 %i.aby, label %bb.gb, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gb:                                            ; preds = %bb.ga
  %i.abz = getelementptr inbounds nuw i8, ptr %i.k, i64 2954
  %i.aca = load i16, ptr %i.abz, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.acb = icmp eq i16 %i.aca, 0
  br i1 %i.acb, label %bb.gc, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gc:                                            ; preds = %bb.gb
  %i.acc = getelementptr inbounds nuw i8, ptr %i.k, i64 2998
  %i.acd = load i16, ptr %i.acc, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.ace = icmp eq i16 %i.acd, 0
  br i1 %i.ace, label %bb.gd, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gd:                                            ; preds = %bb.gc
  %i.acf = getelementptr inbounds nuw i8, ptr %i.k, i64 2958
  %i.acg = load i16, ptr %i.acf, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.ach = icmp eq i16 %i.acg, 0
  br i1 %i.ach, label %bb.ge, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.ge:                                            ; preds = %bb.gd
  %i.aci = getelementptr inbounds nuw i8, ptr %i.k, i64 2994
  %i.acj = load i16, ptr %i.aci, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.ack = icmp eq i16 %i.acj, 0
  br i1 %i.ack, label %bb.gf, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gf:                                            ; preds = %bb.ge
  %i.acl = getelementptr inbounds nuw i8, ptr %i.k, i64 2962
  %i.acm = load i16, ptr %i.acl, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.acn = icmp eq i16 %i.acm, 0
  br i1 %i.acn, label %bb.gg, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gg:                                            ; preds = %bb.gf
  %i.aco = getelementptr inbounds nuw i8, ptr %i.k, i64 2990
  %i.acp = load i16, ptr %i.aco, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.acq = icmp eq i16 %i.acp, 0
  br i1 %i.acq, label %bb.gh, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gh:                                            ; preds = %bb.gg
  %i.acr = getelementptr inbounds nuw i8, ptr %i.k, i64 2966
  %i.acs = load i16, ptr %i.acr, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.act = icmp eq i16 %i.acs, 0
  br i1 %i.act, label %bb.gi, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gi:                                            ; preds = %bb.gh
  %i.acu = getelementptr inbounds nuw i8, ptr %i.k, i64 2986
  %i.acv = load i16, ptr %i.acu, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.acw = icmp eq i16 %i.acv, 0
  br i1 %i.acw, label %bb.gj, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gj:                                            ; preds = %bb.gi
  %i.acx = getelementptr inbounds nuw i8, ptr %i.k, i64 2970
  %i.acy = load i16, ptr %i.acx, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.acz = icmp eq i16 %i.acy, 0
  br i1 %i.acz, label %bb.gk, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gk:                                            ; preds = %bb.gj
  %i.ada = getelementptr inbounds nuw i8, ptr %i.k, i64 2982
  %i.adb = load i16, ptr %i.ada, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.adc = icmp eq i16 %i.adb, 0
  br i1 %i.adc, label %bb.gl, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gl:                                            ; preds = %bb.gk
  %i.add = getelementptr inbounds nuw i8, ptr %i.k, i64 2974
  %i.ade = load i16, ptr %i.add, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.adf = icmp eq i16 %i.ade, 0
  br i1 %i.adf, label %bb.gm, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gm:                                            ; preds = %bb.gl
  %i.adg = getelementptr inbounds nuw i8, ptr %i.k, i64 2978
  %i.adh = load i16, ptr %i.adg, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.adi = icmp eq i16 %i.adh, 0
  br i1 %i.adi, label %bb.gn, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

bb.gn:                                            ; preds = %bb.gm
  %i.adj = getelementptr inbounds nuw i8, ptr %i.k, i64 2946
  %i.adk = load i16, ptr %i.adj, align 2, !alias.scope !320, !noalias !272, !noundef !4
  %i.adl = icmp eq i16 %i.adk, 0
  %spec.select.i.i = select i1 %i.adl, i64 2, i64 3
  br label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i: ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit5.i.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ 18, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtNtCs7kNFBubu20U_7zlib_rs7deflate8TreeDescKj27_EEB15_.exit5.i.i ], [ 10, %bb.gg ], [ 17, %bb.fz ], [ %spec.select.i.i, %bb.gn ], [ 16, %bb.ga ], [ 8, %bb.gi ], [ 15, %bb.gb ], [ 4, %bb.gm ], [ 14, %bb.gc ], [ 9, %bb.gh ], [ 13, %bb.gd ], [ 5, %bb.gl ], [ 12, %bb.ge ], [ 7, %bb.gj ], [ 11, %bb.gf ], [ 6, %bb.gk ] ; 4 uses
  %i.adm = mul nuw nsw i64 %.sroa.0.0.lcssa.i.i, 3
  %i.adn = add nuw nsw i64 %i.adm, 17
  %i.ado = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.adp = load i64, ptr %i.ado, align 64, !alias.scope !320, !noalias !272, !noundef !4
  %i.adq = add i64 %i.adn, %i.adp                 ; 2 uses
  store i64 %i.adq, ptr %i.ado, align 64, !alias.scope !320, !noalias !272
  %i.adr = add i64 %i.adq, 10
  %i.ads = lshr i64 %i.adr, 3                     ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.adu = load i64, ptr %i.adt, align 8, !noalias !272, !noundef !4
  %i.adv = add i64 %i.adu, 10
  %i.adw = lshr i64 %i.adv, 3                     ; 3 uses
  %.not12.i = icmp samesign ugt i64 %i.adw, %i.ads
  br i1 %.not12.i, label %bb.go, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i._crit_edge

_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i._crit_edge: ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i
  %.pre307.pre = load ptr, ptr %i.j, align 8, !alias.scope !272
  br label %bb.c

bb.go:                                            ; preds = %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate13build_bl_tree.exit.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.ady = load i8, ptr %i.adx, align 1, !range !12, !noalias !272, !noundef !4
  %i.adz = icmp eq i8 %i.ady, 4
  %.pre307.pre308 = load ptr, ptr %i.j, align 8, !alias.scope !272 ; 22 uses
  br i1 %i.adz, label %bb.c, label %.thread.i

bb.gp:                                            ; preds = %.thread.i, %bb.c
  %i.aea = phi ptr [ %.pre307.pre308, %.thread.i ], [ %.pre307, %bb.c ] ; 2 uses
  %i.aeb = phi i64 [ %i.aa, %.thread.i ], [ %i.y, %bb.c ]
  %i.aec = add nuw i64 %i.aeb, %i.m
  call void @_RNvNtCs7kNFBubu20U_7zlib_rs7deflate19zng_tr_stored_block(ptr noalias noundef nonnull align 64 dereferenceable(3136) %i.aea, i64 noundef %i.m, i64 noundef %i.aec, i1 noundef zeroext %1), !noalias !272
  br label %_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i

_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i: ; preds = %bb.id, %bb.ic, %bb.hm, %bb.hl, %bb.gp
  %i.aed = phi ptr [ %i.alc, %bb.id ], [ %i.alc, %bb.ic ], [ %.pre307.pre308, %bb.hm ], [ %.pre307.pre308, %bb.hl ], [ %i.aea, %bb.gp ] ; 2 uses
  call fastcc void @_RNvMs7_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_5State10init_block(ptr noalias noundef align 64 dereferenceable(3136) %i.aed), !noalias !272
  br i1 %1, label %bb.io, label %_RNvNtCs7kNFBubu20U_7zlib_rs7deflate18zng_tr_flush_block.exit

bb.gq:                                            ; preds = %.thread.i
  %i.aee = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 144 ; 10 uses
  %i.aef = zext i1 %1 to i64
  %i.aeg = or disjoint i64 %i.aef, 4              ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 184 ; 16 uses
  %i.aei = load i8, ptr %i.aeh, align 8, !alias.scope !347, !noalias !272, !noundef !4 ; 2 uses
  %i.aej = add i8 %i.aei, 3                       ; 3 uses
  %i.aek = icmp ult i8 %i.aej, 64
  br i1 %i.aek, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call fastcc void @_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr noalias noundef align 8 dereferenceable(48) %i.aee, i64 noundef %i.aeg, i8 noundef %i.aej), !noalias !272
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i

bb.gs:                                            ; preds = %bb.gq
  %i.ael = and i8 %i.aei, 63
  %i.aem = zext nneg i8 %i.ael to i64
  %i.aen = shl i64 %i.aeg, %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 176 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !347, !noalias !272, !noundef !4
  %i.aeq = or i64 %i.aep, %i.aen
  store i64 %i.aeq, ptr %i.aeo, align 8, !alias.scope !347, !noalias !272
  store i8 %i.aej, ptr %i.aeh, align 8, !alias.scope !347, !noalias !272
  br label %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i

_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i: ; preds = %bb.gs, %bb.gr
  %i.aer = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 360
  %i.aes = load i64, ptr %i.aer, align 8, !noalias !272, !noundef !4 ; 3 uses
  %i.aet = add i64 %i.aes, 1                      ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.pre307.pre308, i64 2672
  %i.aev = load i64, ptr %i.aeu, align 8, !noalias !272, !noundef !4 ; 4 uses
  %i.aew = add i64 %i.aev, 1                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.aex = icmp ugt i64 %i.aet, 256
  %i.aey = icmp ne i64 %i.aew, 0
  %or.cond.i.i = and i1 %i.aex, %i.aey
  %i.aez = icmp samesign ugt i64 %.sroa.0.0.lcssa.i.i, 2
  %or.cond1.i.i = and i1 %i.aez, %or.cond.i.i
  br i1 %or.cond1.i.i, label %bb.gu, label %bb.gt, !prof !349

bb.gt:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @84, ptr noundef nonnull inttoptr (i64 33 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #17, !noalias !350
  unreachable

bb.gu:                                            ; preds = %_RNvMs5_NtCs7kNFBubu20U_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit.i
  %i.afa = icmp ult i64 %i.aet, 287
  %i.afb = icmp ult i64 %i.aew, 31
  %or.cond2.i.i = and i1 %i.afa, %i.afb
  br i1 %or.cond2.i.i, label %bb.gw, label %bb.gv, !prof !349

end_hunk_0
