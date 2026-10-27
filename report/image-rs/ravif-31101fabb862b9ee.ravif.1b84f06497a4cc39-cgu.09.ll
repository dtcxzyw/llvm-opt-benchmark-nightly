Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_framehECs2mu2Cb9JdUH_5ravif:bb.a
  %i.gp = add nsw i32 %i.go, %i.gi
  %i.gq = shl nsw i32 %i.gp, 1
  %i.gr = sub nsw i32 128, %i.gq
  store i32 %i.gg, ptr %i.f, align 4, !noalias !116
  store i32 %i.gh, ptr %i.bw, align 4, !noalias !116
  store i32 %i.gi, ptr %i.bx, align 4, !noalias !116
  store i32 %i.gr, ptr %i.by, align 4, !noalias !116
  store i32 %i.gi, ptr %i.bz, align 4, !noalias !116
  store i32 %i.gh, ptr %i.ca, align 4, !noalias !116
  store i32 %i.gg, ptr %i.cb, align 4, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !116
  %i.gs = add nsw i32 %i.gj, %i.gm
  %i.gt = add nsw i32 %i.gs, %i.gk
  %i.gu = shl nsw i32 %i.gt, 1
  %i.gv = sub nsw i32 128, %i.gu
  store i32 %i.gj, ptr %i.e, align 4, !noalias !116
  store i32 %i.gk, ptr %i.cc, align 4, !noalias !116
  store i32 %i.gm, ptr %i.cd, align 4, !noalias !116
  store i32 %i.gv, ptr %i.ce, align 4, !noalias !116
  store i32 %i.gm, ptr %i.cf, align 4, !noalias !116
  store i32 %i.gk, ptr %i.cg, align 4, !noalias !116
  store i32 %i.gj, ptr %i.ch, align 4, !noalias !116
  %i.gw = add i64 %.sroa.014.0.us, %i.fb          ; 2 uses
  %i.gx = icmp ult i64 %i.fb, %i.gw
  br i1 %i.gx, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.gy = add i64 %i.gf, 8
  %.98.neg91.i.us = select i1 %i.gn, i64 27, i64 29
  %i.gz = add i64 %i.gy, %.98.neg91.i.us
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = and i32 %i.ha, 31
  %notmask.i.us = shl nsw i32 -1, %i.hb
  %i.hc = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.gn, i64 5, i64 3       ; 2 uses
  %i.hd = sub i64 %i.gf, %.98.i.us
  %i.he = trunc i64 %i.hd to i32
  %i.hf = add i32 %i.he, 6
  %i.hg = and i32 %i.hf, 31
  %i.hh = shl nuw i32 1, %i.hg                    ; 2 uses
  %i.hi = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hj = shl nuw nsw i32 1, %i.hi
  %i.hk = lshr exact i32 %i.hj, 1
  %i.hl = sub i32 0, %i.hh
  %i.hm = sub i32 %i.hc, %i.hh
  %i.hn = shl nuw nsw i32 1, %..i49.us
  %i.ho = lshr exact i32 %i.hn, 1
  %i.hp = trunc i64 %i.gf to i32
  %i.hq = and i32 %i.hp, 31
  %notmask93.i.us = shl nsw i32 -1, %i.hq
  %i.hr = xor i32 %notmask93.i.us, -1
  %i.hs = sub i64 3, %i.fb
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hs, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.fb, %.lr.ph89.i.us ], [ %i.ht, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.ht = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !116
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !116
  %i.hu = sub i64 %i.dw, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.hu, i64 7) ; 6 uses
  br i1 %i.et, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.hv = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.hv, i64 0) ; 4 uses
  %i.hx = sub i64 %..i105.i.us, %i.hv             ; 3 uses
  %i.hy = sub i64 %..i101.i.us, %i.hv             ; 4 uses
  %i.hz = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.ia = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.hz, %i.ia
  %i.ib = icmp ult i64 %i.hy, %i.hx
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.ie = icmp slt i64 %i.hu, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.er, %.lr.ph78.i.us ], [ %i.if, %bb.aj ] ; 6 uses
  %i.if = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.ig = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us295
  br i1 %i.ig, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ih = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dx)
          to label %.noexc56.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.ii = icmp slt i64 %.sroa.069.076.i.us, %i.em
  br i1 %i.ii, label %.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.eu, i64 %i.ih)
  br label %.invoke

.invoke:                                          ; preds = %.noexc56.us, %.noexc57.us, %bb.ad
  %i.ij = phi ptr [ %i.dn, %bb.ad ], [ %i.dn, %.noexc57.us ], [ %i.dm, %.noexc56.us ]
  %i.ik = phi i64 [ %..i104.i.us, %bb.ad ], [ %..i103.i.us, %.noexc57.us ], [ %i.ih, %.noexc56.us ]
  %i.il = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ij, i64 noundef %i.ik)
          to label %.noexc58.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ab
  %i.im = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dx)
          to label %.noexc57.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.ev, i64 %i.im)
  br label %.invoke

.noexc58.us:                                      ; preds = %.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.il, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.il, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.in = load i8, ptr %.sroa.031.0.i.us, align 1, !noundef !4
  %i.io = zext i8 %i.in to i32
  %i.ip = icmp ult i64 %i.dy, %.sroa.10.0.i.us
  br i1 %i.ip, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.dy
  %i.ir = load i8, ptr %i.iq, align 1, !noundef !4
  %i.is = zext i8 %i.ir to i32
  br i1 %i.hw, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.it = load i32, ptr %i.e, align 4, !noalias !116, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.iu = load i32, ptr %i.cc, align 4, !noalias !116, !noundef !4
  %i.iv = add i32 %i.iu, %i.it                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.iw = load i32, ptr %i.cd, align 4, !noalias !116, !noundef !4
  %i.ix = add i32 %i.iw, %i.iv                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.iy = load i32, ptr %i.ce, align 4, !noalias !116, !noundef !4
  %i.iz = add i32 %i.iy, %i.ix                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.ja = load i32, ptr %i.cf, align 4, !noalias !116, !noundef !4
  %i.jb = add i32 %i.ja, %i.iz                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

.lr.ph.5.i.us:                                    ; preds = %.lr.ph.4.i.us
  %i.jc = load i32, ptr %i.cg, align 4, !noalias !116, !noundef !4
  %i.jd = add i32 %i.jc, %i.jb                    ; 2 uses
  br i1 %exitcond142.5.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.6.i.us

.lr.ph.6.i.us:                                    ; preds = %.lr.ph.5.i.us
  %i.je = load i32, ptr %i.ch, align 4, !noalias !116, !noundef !4
  %i.jf = add i32 %i.je, %i.jd
  br i1 %exitcond142.6.not.i.us, label %._crit_edge.loopexit.i.us, label %.split179.us.invoke

._crit_edge.loopexit.i.us:                        ; preds = %.lr.ph.6.i.us, %.lr.ph.5.i.us, %.lr.ph.4.i.us, %.lr.ph.3.i.us, %.lr.ph.2.i.us, %.lr.ph.1.i.us, %.lr.ph.preheader.i.us
  %.pn175.i.us = phi i32 [ %i.it, %.lr.ph.preheader.i.us ], [ %i.iv, %.lr.ph.1.i.us ], [ %i.ix, %.lr.ph.2.i.us ], [ %i.iz, %.lr.ph.3.i.us ], [ %i.jb, %.lr.ph.4.i.us ], [ %i.jd, %.lr.ph.5.i.us ], [ %i.jf, %.lr.ph.6.i.us ]
  %.lcssa.i.us = mul i32 %.pn175.i.us, %i.io
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %bb.ag
  %.sroa.026.0.lcssa.i.us = phi i32 [ 0, %bb.ag ], [ %.lcssa.i.us, %._crit_edge.loopexit.i.us ] ; 3 uses
  br i1 %or.cond99.i.us, label %bb.ah, label %.split183.us.invoke, !prof !12

bb.ah:                                            ; preds = %._crit_edge.i.us
  %.not96.i.us = icmp ugt i64 %i.hy, %.sroa.10.0.i.us
  %or.cond100.i.us = or i1 %i.ib, %.not96.i.us
  br i1 %or.cond100.i.us, label %.split183.us.invoke, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.hx
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.hy
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.jh)
          to label %.noexc64.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64.us:                                      ; preds = %bb.ai
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.c, align 8, !noalias !116 ; 3 uses
  %.sroa.41.0.copyload.i.us = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !116 ; 3 uses
  %.sroa.52.0.copyload.i.us = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !116 ; 5 uses
  %.sroa.7.0.copyload.i.us = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !116 ; 3 uses
  %i.ji = icmp ult i64 %.sroa.52.0.copyload.i.us, %.sroa.7.0.copyload.i.us
  br i1 %i.ji, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc64.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.us) ]
  %i.jj = sub nuw i64 %.sroa.7.0.copyload.i.us, %.sroa.52.0.copyload.i.us ; 3 uses
  %min.iters.check399 = icmp ult i64 %i.jj, 8
  br i1 %min.iters.check399, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %n.vec401 = and i64 %i.jj, -8                   ; 3 uses
  %i.jk = add i64 %.sroa.52.0.copyload.i.us, %n.vec401
  %i.jl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.026.0.lcssa.i.us, i64 0
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next410, %vector.body402 ] ; 2 uses
  %vec.phi404 = phi <4 x i32> [ %i.jl, %vector.ph400 ], [ %i.jv, %vector.body402 ]
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph400 ], [ %i.jw, %vector.body402 ]
  %i.jm = add nuw i64 %.sroa.52.0.copyload.i.us, %index403 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.us, i64 %i.jm ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %wide.load406 = load <4 x i8>, ptr %i.jo, align 1
  %wide.load407 = load <4 x i8>, ptr %i.jp, align 1
  %i.jq = zext <4 x i8> %wide.load406 to <4 x i32>
  %i.jr = zext <4 x i8> %wide.load407 to <4 x i32>
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load408 = load <4 x i32>, ptr %i.jn, align 4
  %wide.load409 = load <4 x i32>, ptr %i.js, align 4
  %i.jt = mul <4 x i32> %wide.load408, %i.jq
  %i.ju = mul <4 x i32> %wide.load409, %i.jr
  %i.jv = add <4 x i32> %i.jt, %vec.phi404        ; 2 uses
  %i.jw = add <4 x i32> %i.ju, %vec.phi405        ; 2 uses
  %index.next410 = add nuw i64 %index403, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next410, %n.vec401
  br i1 %i.jx, label %middle.block411, label %vector.body402, !llvm.loop !65

middle.block411:                                  ; preds = %vector.body402
  %bin.rdx412 = add <4 x i32> %i.jw, %i.jv
  %i.jy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx412) ; 2 uses
  %cmp.n413 = icmp eq i64 %i.jj, %n.vec401
  br i1 %cmp.n413, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, %middle.block411
  %.sroa.026.170.i.us.ph = phi i32 [ %.sroa.026.0.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.jy, %middle.block411 ]
  %.sroa.52.069.i.us.ph = phi i64 [ %.sroa.52.0.copyload.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.jk, %middle.block411 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %.sroa.026.170.i.us = phi i32 [ %i.kg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.026.170.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ]
  %.sroa.52.069.i.us = phi i64 [ %i.kb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.52.069.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.52.069.i.us
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.us, i64 %.sroa.52.069.i.us
  %i.kb = add nuw i64 %.sroa.52.069.i.us, 1       ; 2 uses
  %i.kc = load i8, ptr %i.ka, align 1, !noundef !4
  %i.kd = zext i8 %i.kc to i32
  %i.ke = load i32, ptr %i.jz, align 4, !noundef !4
  %i.kf = mul i32 %i.ke, %i.kd
  %i.kg = add i32 %i.kf, %.sroa.026.170.i.us      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.kb, %.sroa.7.0.copyload.i.us
  br i1 %exitcond.not.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, !llvm.loop !66

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, %middle.block411, %.noexc64.us
  %.sroa.026.1.lcssa.i.us = phi i32 [ %.sroa.026.0.lcssa.i.us, %.noexc64.us ], [ %i.jy, %middle.block411 ], [ %i.kg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ] ; 2 uses
  br i1 %i.ie, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us
  %.sroa.074.073.i.us = phi i64 [ %i.kh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ], [ %..i101.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ] ; 3 uses
  %.sroa.026.272.i.us = phi i32 [ %i.kl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ], [ %.sroa.026.1.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ]
  %i.kh = add nuw nsw i64 %.sroa.074.073.i.us, 1
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.074.073.i.us
  %i.kj = load i32, ptr %i.ki, align 4, !noalias !116, !noundef !4
  %i.kk = mul i32 %i.kj, %i.is
  %i.kl = add i32 %i.kk, %.sroa.026.272.i.us      ; 2 uses
  %i.km = icmp slt i64 %.sroa.074.073.i.us, 6
  br i1 %i.km, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us, !llvm.loop !67

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us
  %.sroa.026.2.lcssa.i.us = phi i32 [ %.sroa.026.1.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ], [ %i.kl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ]
  %i.kn = add i32 %.sroa.026.2.lcssa.i.us, %i.hk
  %i.ko = ashr i32 %i.kn, %i.hi
  %i.kp = invoke noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.ko, i32 noundef %i.hl, i32 noundef %i.hm)
          to label %.noexc66.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66.us:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us
  %reass.sub.i.us = sub i64 %.sroa.069.076.i.us, %.sroa.04.0.us295 ; 2 uses
  %i.kq = icmp slt i64 %reass.sub.i.us, 68
  br i1 %i.kq, label %bb.aj, label %.split179.us.invoke

bb.aj:                                            ; preds = %.noexc66.us
  %i.kr = getelementptr [4 x i8], ptr %i.g, i64 %reass.sub.i.us
  %i.ks = getelementptr i8, ptr %i.kr, i64 12
  store i32 %i.kp, ptr %i.ks, align 4, !noalias !116
  %exitcond143.not.i.us = icmp eq i64 %i.if, %i.es
  br i1 %exitcond143.not.i.us, label %._crit_edge79.i.us, label %bb.ab

._crit_edge79.i.us:                               ; preds = %bb.aj, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !116
  store ptr %i.d, ptr %i.b, align 8, !noalias !116
  store ptr %i.cs, ptr %.sroa.03.sroa.2.0..sroa_idx.i, align 8, !noalias !116
  store i64 0, ptr %.sroa.03.sroa.3.0..sroa_idx.i, align 8, !noalias !116
  store i64 %.sroa.020.0.i.us296, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !116
  store i64 %i.ew, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !116
  br i1 %i.ex, label %.lr.ph84.i.preheader.us, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

.lr.ph.us:                                        ; preds = %.lr.ph84.i.preheader.us, %.lr.ph84.ithread-pre-split.us
  %i.kt = phi i64 [ %i.ob, %.lr.ph84.ithread-pre-split.us ], [ %i.el, %.lr.ph84.i.preheader.us ] ; 4 uses
  %i.ku = phi i64 [ %.pr.us, %.lr.ph84.ithread-pre-split.us ], [ %..i.i.us, %.lr.ph84.i.preheader.us ]
  %i.kv = add i64 %i.ku, -1
  store i64 %i.kv, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !117, !noalias !116
  %i.kw = invoke { ptr, i64 } @_RNvXse_NtCsko5zPvjVG7R_7v_frame5planeINtB5_11RowsIterMuthENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.2.0..sroa_idx.i)
          to label %.noexc50.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50.us:                                      ; preds = %.lr.ph.us
  %i.kx = extractvalue { ptr, i64 } %i.kw, 0      ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i.us, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %bb.ak

bb.ak:                                            ; preds = %.noexc50.us
  %i.ky = extractvalue { ptr, i64 } %i.kw, 1      ; 2 uses
  %.val.i.i.i.i.us = load ptr, ptr %i.b, align 8, !alias.scope !118, !noalias !116, !nonnull !4, !align !15, !noundef !4
  %i.kz = load i64, ptr %.val.i.i.i.i.us, align 8, !noalias !119, !noundef !4 ; 3 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  br i1 %i.la, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, label %.split179.us.invoke

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %bb.ak
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kz
  %or.cond.i.us = icmp ult i64 %i.kt, 65
  br i1 %or.cond.i.us, label %bb.al, label %.split183.us, !prof !12

bb.al:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kt ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef 0, i64 noundef 7, ptr noundef nonnull %i.lc, ptr noundef nonnull %i.ld)
          to label %.noexc53.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.us:                                      ; preds = %bb.al
  %.sroa.09.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !116 ; 9 uses
  %.sroa.411.0.copyload.i.us = load i64, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !116 ; 8 uses
  %.sroa.513.0.copyload.i.us = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !116 ; 10 uses
  %.sroa.714.0.copyload.i.us = load i64, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !116 ; 8 uses
  %i.le = icmp ult i64 %.sroa.513.0.copyload.i.us, %.sroa.714.0.copyload.i.us
  br i1 %i.le, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc53.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.us) ]
  %i.lf = add nuw i64 %.sroa.513.0.copyload.i.us, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 7
  br i1 %i.lg, label %bb.am, label %.split179.us.invoke

bb.am:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %.sroa.513.0.copyload.i.us
  %i.li = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 1 ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lf
  %i.lk = load i32, ptr %i.lj, align 4, !noalias !116, !noundef !4
  %i.ll = load i32, ptr %i.lh, align 4, !noundef !4
  %i.lm = mul i32 %i.ll, %i.lk                    ; 2 uses
  %exitcond144.not.i.us = icmp eq i64 %i.li, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1: ; preds = %bb.am
  %i.ln = add nuw nsw i64 %i.li, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.lo = icmp ult i64 %i.ln, 7
  br i1 %i.lo, label %bb.an, label %.split179.us.invoke

bb.an:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.li
  %i.lq = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 2 ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ln
  %i.ls = load i32, ptr %i.lr, align 4, !noalias !116, !noundef !4
  %i.lt = load i32, ptr %i.lp, align 4, !noundef !4
  %i.lu = mul i32 %i.lt, %i.ls
  %i.lv = add i32 %i.lu, %i.lm                    ; 2 uses
  %exitcond144.not.i.us.1 = icmp eq i64 %i.lq, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2: ; preds = %bb.an
  %i.lw = add nuw nsw i64 %i.lq, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 7
  br i1 %i.lx, label %bb.ao, label %.split179.us.invoke

bb.ao:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.lq
  %i.lz = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 3 ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lw
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !116, !noundef !4
  %i.mc = load i32, ptr %i.ly, align 4, !noundef !4
  %i.md = mul i32 %i.mc, %i.mb
  %i.me = add i32 %i.md, %i.lv                    ; 2 uses
  %exitcond144.not.i.us.2 = icmp eq i64 %i.lz, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3: ; preds = %bb.ao
  %i.mf = add nuw nsw i64 %i.lz, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 7
  br i1 %i.mg, label %bb.ap, label %.split179.us.invoke

bb.ap:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.lz
  %i.mi = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 4 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mf
  %i.mk = load i32, ptr %i.mj, align 4, !noalias !116, !noundef !4
  %i.ml = load i32, ptr %i.mh, align 4, !noundef !4
end_hunk_0
begin_hunk_1_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_frametECs2mu2Cb9JdUH_5ravif:bb.a
  %i.gs = add nsw i32 %i.gr, %i.gl
  %i.gt = shl nsw i32 %i.gs, 1
  %i.gu = sub nsw i32 128, %i.gt
  store i32 %i.gj, ptr %i.f, align 4, !noalias !218
  store i32 %i.gk, ptr %i.bw, align 4, !noalias !218
  store i32 %i.gl, ptr %i.bx, align 4, !noalias !218
  store i32 %i.gu, ptr %i.by, align 4, !noalias !218
  store i32 %i.gl, ptr %i.bz, align 4, !noalias !218
  store i32 %i.gk, ptr %i.ca, align 4, !noalias !218
  store i32 %i.gj, ptr %i.cb, align 4, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !218
  %i.gv = add nsw i32 %i.gm, %i.gp
  %i.gw = add nsw i32 %i.gv, %i.gn
  %i.gx = shl nsw i32 %i.gw, 1
  %i.gy = sub nsw i32 128, %i.gx
  store i32 %i.gm, ptr %i.e, align 4, !noalias !218
  store i32 %i.gn, ptr %i.cc, align 4, !noalias !218
  store i32 %i.gp, ptr %i.cd, align 4, !noalias !218
  store i32 %i.gy, ptr %i.ce, align 4, !noalias !218
  store i32 %i.gp, ptr %i.cf, align 4, !noalias !218
  store i32 %i.gn, ptr %i.cg, align 4, !noalias !218
  store i32 %i.gm, ptr %i.ch, align 4, !noalias !218
  %i.gz = add i64 %.sroa.014.0.us, %i.fe          ; 2 uses
  %i.ha = icmp ult i64 %i.fe, %i.gz
  br i1 %i.ha, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.hb = add i64 %i.gi, 8
  %.98.neg91.i.us = select i1 %i.gq, i64 27, i64 29
  %i.hc = add i64 %i.hb, %.98.neg91.i.us
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.hd, 31
  %notmask.i.us = shl nsw i32 -1, %i.he
  %i.hf = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.gq, i64 5, i64 3       ; 2 uses
  %i.hg = sub i64 %i.gi, %.98.i.us
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = add i32 %i.hh, 6
  %i.hj = and i32 %i.hi, 31
  %i.hk = shl nuw i32 1, %i.hj                    ; 2 uses
  %i.hl = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hm = shl nuw nsw i32 1, %i.hl
  %i.hn = lshr exact i32 %i.hm, 1
  %i.ho = sub i32 0, %i.hk
  %i.hp = sub i32 %i.hf, %i.hk
  %i.hq = shl nuw nsw i32 1, %..i49.us
  %i.hr = lshr exact i32 %i.hq, 1
  %i.hs = trunc i64 %i.gi to i32
  %i.ht = and i32 %i.hs, 31
  %notmask93.i.us = shl nsw i32 -1, %i.ht
  %i.hu = xor i32 %notmask93.i.us, -1
  %i.hv = sub i64 3, %i.fe
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hv, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.fe, %.lr.ph89.i.us ], [ %i.hw, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.hw = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !218
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !218
  %i.hx = sub i64 %i.dz, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.hx, i64 7) ; 6 uses
  br i1 %i.ew, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.hy = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.hz = icmp sgt i64 %i.hy, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.hy, i64 0) ; 4 uses
  %i.ia = sub i64 %..i105.i.us, %i.hy             ; 3 uses
  %i.ib = sub i64 %..i101.i.us, %i.hy             ; 4 uses
  %i.ic = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.id = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.ic, %i.id
  %i.ie = icmp ult i64 %i.ib, %i.ia
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.ih = icmp slt i64 %i.hx, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.eu, %.lr.ph78.i.us ], [ %i.ii, %bb.aj ] ; 6 uses
  %i.ii = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.ij = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us295
  br i1 %i.ij, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ik = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.ea)
          to label %.noexc56.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.il = icmp slt i64 %.sroa.069.076.i.us, %i.ep
  br i1 %i.il, label %.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.ex, i64 %i.ik)
  br label %.invoke

.invoke:                                          ; preds = %.noexc56.us, %.noexc57.us, %bb.ad
  %i.im = phi ptr [ %i.dq, %bb.ad ], [ %i.dq, %.noexc57.us ], [ %i.dp, %.noexc56.us ]
  %i.in = phi i64 [ %..i104.i.us, %bb.ad ], [ %..i103.i.us, %.noexc57.us ], [ %i.ik, %.noexc56.us ]
  %i.io = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.im, i64 noundef %i.in)
          to label %.noexc58.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ab
  %i.ip = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.ea)
          to label %.noexc57.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.ey, i64 %i.ip)
  br label %.invoke

.noexc58.us:                                      ; preds = %.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.io, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.io, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.iq = load i16, ptr %.sroa.031.0.i.us, align 2, !noundef !4
  %i.ir = zext i16 %i.iq to i32
  %i.is = icmp ult i64 %i.eb, %.sroa.10.0.i.us
  br i1 %i.is, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.eb
  %i.iu = load i16, ptr %i.it, align 2, !noundef !4
  %i.iv = zext i16 %i.iu to i32
  br i1 %i.hz, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.iw = load i32, ptr %i.e, align 4, !noalias !218, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.ix = load i32, ptr %i.cc, align 4, !noalias !218, !noundef !4
  %i.iy = add i32 %i.ix, %i.iw                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.iz = load i32, ptr %i.cd, align 4, !noalias !218, !noundef !4
  %i.ja = add i32 %i.iz, %i.iy                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.jb = load i32, ptr %i.ce, align 4, !noalias !218, !noundef !4
  %i.jc = add i32 %i.jb, %i.ja                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.jd = load i32, ptr %i.cf, align 4, !noalias !218, !noundef !4
  %i.je = add i32 %i.jd, %i.jc                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

.lr.ph.5.i.us:                                    ; preds = %.lr.ph.4.i.us
  %i.jf = load i32, ptr %i.cg, align 4, !noalias !218, !noundef !4
  %i.jg = add i32 %i.jf, %i.je                    ; 2 uses
  br i1 %exitcond142.5.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.6.i.us

.lr.ph.6.i.us:                                    ; preds = %.lr.ph.5.i.us
  %i.jh = load i32, ptr %i.ch, align 4, !noalias !218, !noundef !4
  %i.ji = add i32 %i.jh, %i.jg
  br i1 %exitcond142.6.not.i.us, label %._crit_edge.loopexit.i.us, label %.split179.us.invoke

._crit_edge.loopexit.i.us:                        ; preds = %.lr.ph.6.i.us, %.lr.ph.5.i.us, %.lr.ph.4.i.us, %.lr.ph.3.i.us, %.lr.ph.2.i.us, %.lr.ph.1.i.us, %.lr.ph.preheader.i.us
  %.pn175.i.us = phi i32 [ %i.iw, %.lr.ph.preheader.i.us ], [ %i.iy, %.lr.ph.1.i.us ], [ %i.ja, %.lr.ph.2.i.us ], [ %i.jc, %.lr.ph.3.i.us ], [ %i.je, %.lr.ph.4.i.us ], [ %i.jg, %.lr.ph.5.i.us ], [ %i.ji, %.lr.ph.6.i.us ]
  %.lcssa.i.us = mul i32 %.pn175.i.us, %i.ir
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %bb.ag
  %.sroa.026.0.lcssa.i.us = phi i32 [ 0, %bb.ag ], [ %.lcssa.i.us, %._crit_edge.loopexit.i.us ] ; 3 uses
  br i1 %or.cond99.i.us, label %bb.ah, label %.split183.us.invoke, !prof !12

bb.ah:                                            ; preds = %._crit_edge.i.us
  %.not96.i.us = icmp ugt i64 %i.ib, %.sroa.10.0.i.us
  %or.cond100.i.us = or i1 %i.ie, %.not96.i.us
  br i1 %or.cond100.i.us, label %.split183.us.invoke, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.ia
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.ib
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.if, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jk)
          to label %.noexc64.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64.us:                                      ; preds = %bb.ai
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.c, align 8, !noalias !218 ; 3 uses
  %.sroa.41.0.copyload.i.us = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !218 ; 3 uses
  %.sroa.52.0.copyload.i.us = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !218 ; 5 uses
  %.sroa.7.0.copyload.i.us = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !218 ; 3 uses
  %i.jl = icmp ult i64 %.sroa.52.0.copyload.i.us, %.sroa.7.0.copyload.i.us
  br i1 %i.jl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc64.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.us) ]
  %i.jm = sub nuw i64 %.sroa.7.0.copyload.i.us, %.sroa.52.0.copyload.i.us ; 3 uses
  %min.iters.check399 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check399, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %n.vec401 = and i64 %i.jm, -8                   ; 3 uses
  %i.jn = add i64 %.sroa.52.0.copyload.i.us, %n.vec401
  %i.jo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.026.0.lcssa.i.us, i64 0
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next410, %vector.body402 ] ; 2 uses
  %vec.phi404 = phi <4 x i32> [ %i.jo, %vector.ph400 ], [ %i.jy, %vector.body402 ]
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph400 ], [ %i.jz, %vector.body402 ]
  %i.jp = add nuw i64 %.sroa.52.0.copyload.i.us, %index403 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload.i.us, i64 %i.jp ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %wide.load406 = load <4 x i16>, ptr %i.jr, align 2
  %wide.load407 = load <4 x i16>, ptr %i.js, align 2
  %i.jt = zext <4 x i16> %wide.load406 to <4 x i32>
  %i.ju = zext <4 x i16> %wide.load407 to <4 x i32>
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load408 = load <4 x i32>, ptr %i.jq, align 4
  %wide.load409 = load <4 x i32>, ptr %i.jv, align 4
  %i.jw = mul <4 x i32> %wide.load408, %i.jt
  %i.jx = mul <4 x i32> %wide.load409, %i.ju
  %i.jy = add <4 x i32> %i.jw, %vec.phi404        ; 2 uses
  %i.jz = add <4 x i32> %i.jx, %vec.phi405        ; 2 uses
  %index.next410 = add nuw i64 %index403, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next410, %n.vec401
  br i1 %i.ka, label %middle.block411, label %vector.body402, !llvm.loop !167

middle.block411:                                  ; preds = %vector.body402
  %bin.rdx412 = add <4 x i32> %i.jz, %i.jy
  %i.kb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx412) ; 2 uses
  %cmp.n413 = icmp eq i64 %i.jm, %n.vec401
  br i1 %cmp.n413, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, %middle.block411
  %.sroa.026.170.i.us.ph = phi i32 [ %.sroa.026.0.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.kb, %middle.block411 ]
  %.sroa.52.069.i.us.ph = phi i64 [ %.sroa.52.0.copyload.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.jn, %middle.block411 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %.sroa.026.170.i.us = phi i32 [ %i.kj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.026.170.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ]
  %.sroa.52.069.i.us = phi i64 [ %i.ke, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.52.069.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.52.069.i.us
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload.i.us, i64 %.sroa.52.069.i.us
  %i.ke = add nuw i64 %.sroa.52.069.i.us, 1       ; 2 uses
  %i.kf = load i16, ptr %i.kd, align 2, !noundef !4
  %i.kg = zext i16 %i.kf to i32
  %i.kh = load i32, ptr %i.kc, align 4, !noundef !4
  %i.ki = mul i32 %i.kh, %i.kg
  %i.kj = add i32 %i.ki, %.sroa.026.170.i.us      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ke, %.sroa.7.0.copyload.i.us
  br i1 %exitcond.not.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, !llvm.loop !168

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, %middle.block411, %.noexc64.us
  %.sroa.026.1.lcssa.i.us = phi i32 [ %.sroa.026.0.lcssa.i.us, %.noexc64.us ], [ %i.kb, %middle.block411 ], [ %i.kj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ] ; 2 uses
  br i1 %i.ih, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us
  %.sroa.074.073.i.us = phi i64 [ %i.kk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ], [ %..i101.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ] ; 3 uses
  %.sroa.026.272.i.us = phi i32 [ %i.ko, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ], [ %.sroa.026.1.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ]
  %i.kk = add nuw nsw i64 %.sroa.074.073.i.us, 1
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.074.073.i.us
  %i.km = load i32, ptr %i.kl, align 4, !noalias !218, !noundef !4
  %i.kn = mul i32 %i.km, %i.iv
  %i.ko = add i32 %i.kn, %.sroa.026.272.i.us      ; 2 uses
  %i.kp = icmp slt i64 %.sroa.074.073.i.us, 6
  br i1 %i.kp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us, !llvm.loop !169

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us
  %.sroa.026.2.lcssa.i.us = phi i32 [ %.sroa.026.1.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us ], [ %i.ko, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ]
  %i.kq = add i32 %.sroa.026.2.lcssa.i.us, %i.hn
  %i.kr = ashr i32 %i.kq, %i.hl
  %i.ks = invoke noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.kr, i32 noundef %i.ho, i32 noundef %i.hp)
          to label %.noexc66.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66.us:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread._crit_edge.i.us
  %reass.sub.i.us = sub i64 %.sroa.069.076.i.us, %.sroa.04.0.us295 ; 2 uses
  %i.kt = icmp slt i64 %reass.sub.i.us, 68
  br i1 %i.kt, label %bb.aj, label %.split179.us.invoke

bb.aj:                                            ; preds = %.noexc66.us
  %i.ku = getelementptr [4 x i8], ptr %i.g, i64 %reass.sub.i.us
  %i.kv = getelementptr i8, ptr %i.ku, i64 12
  store i32 %i.ks, ptr %i.kv, align 4, !noalias !218
  %exitcond143.not.i.us = icmp eq i64 %i.ii, %i.ev
  br i1 %exitcond143.not.i.us, label %._crit_edge79.i.us, label %bb.ab

._crit_edge79.i.us:                               ; preds = %bb.aj, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !218
  store ptr %i.d, ptr %i.b, align 8, !noalias !218
  store ptr %i.cv, ptr %.sroa.03.sroa.2.0..sroa_idx.i, align 8, !noalias !218
  store i64 0, ptr %.sroa.03.sroa.3.0..sroa_idx.i, align 8, !noalias !218
  store i64 %.sroa.020.0.i.us296, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !218
  store i64 %i.ez, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !218
  br i1 %i.fa, label %.lr.ph84.i.preheader.us, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

.lr.ph.us:                                        ; preds = %.lr.ph84.i.preheader.us, %.lr.ph84.ithread-pre-split.us
  %i.kw = phi i64 [ %i.oe, %.lr.ph84.ithread-pre-split.us ], [ %i.eo, %.lr.ph84.i.preheader.us ] ; 4 uses
  %i.kx = phi i64 [ %.pr.us, %.lr.ph84.ithread-pre-split.us ], [ %..i.i.us, %.lr.ph84.i.preheader.us ]
  %i.ky = add i64 %i.kx, -1
  store i64 %i.ky, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !alias.scope !219, !noalias !218
  %i.kz = invoke { ptr, i64 } @_RNvXse_NtCsko5zPvjVG7R_7v_frame5planeINtB5_11RowsIterMuttENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.2.0..sroa_idx.i)
          to label %.noexc50.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc50.us:                                      ; preds = %.lr.ph.us
  %i.la = extractvalue { ptr, i64 } %i.kz, 0      ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.us, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %bb.ak

bb.ak:                                            ; preds = %.noexc50.us
  %i.lb = extractvalue { ptr, i64 } %i.kz, 1      ; 2 uses
  %.val.i.i.i.i.us = load ptr, ptr %i.b, align 8, !alias.scope !220, !noalias !218, !nonnull !4, !align !15, !noundef !4
  %i.lc = load i64, ptr %.val.i.i.i.i.us, align 8, !noalias !221, !noundef !4 ; 3 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  br i1 %i.ld, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us, label %.split179.us.invoke

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %bb.ak
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %i.lc
  %or.cond.i.us = icmp ult i64 %i.kw, 65
  br i1 %or.cond.i.us, label %bb.al, label %.split183.us, !prof !12

bb.al:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kw ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 28
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef 0, i64 noundef 7, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lg)
          to label %.noexc53.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.us:                                      ; preds = %bb.al
  %.sroa.09.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !218 ; 9 uses
  %.sroa.411.0.copyload.i.us = load i64, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !218 ; 8 uses
  %.sroa.513.0.copyload.i.us = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !218 ; 10 uses
  %.sroa.714.0.copyload.i.us = load i64, ptr %.sroa.714.0..sroa_idx.i, align 8, !noalias !218 ; 8 uses
  %i.lh = icmp ult i64 %.sroa.513.0.copyload.i.us, %.sroa.714.0.copyload.i.us
  br i1 %i.lh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc53.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload.i.us) ]
  %i.li = add nuw i64 %.sroa.513.0.copyload.i.us, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.lj = icmp ult i64 %i.li, 7
  br i1 %i.lj, label %bb.am, label %.split179.us.invoke

bb.am:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %.sroa.513.0.copyload.i.us
  %i.ll = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 1 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.li
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !218, !noundef !4
  %i.lo = load i32, ptr %i.lk, align 4, !noundef !4
  %i.lp = mul i32 %i.lo, %i.ln                    ; 2 uses
  %exitcond144.not.i.us = icmp eq i64 %i.ll, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1: ; preds = %bb.am
  %i.lq = add nuw nsw i64 %i.ll, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.lr = icmp ult i64 %i.lq, 7
  br i1 %i.lr, label %bb.an, label %.split179.us.invoke

bb.an:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.1
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.ll
  %i.lt = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 2 ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lq
  %i.lv = load i32, ptr %i.lu, align 4, !noalias !218, !noundef !4
  %i.lw = load i32, ptr %i.ls, align 4, !noundef !4
  %i.lx = mul i32 %i.lw, %i.lv
  %i.ly = add i32 %i.lx, %i.lp                    ; 2 uses
  %exitcond144.not.i.us.1 = icmp eq i64 %i.lt, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2: ; preds = %bb.an
  %i.lz = add nuw nsw i64 %i.lt, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.ma = icmp ult i64 %i.lz, 7
  br i1 %i.ma, label %bb.ao, label %.split179.us.invoke

bb.ao:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.2
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.lt
  %i.mc = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 3 ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.lz
  %i.me = load i32, ptr %i.md, align 4, !noalias !218, !noundef !4
  %i.mf = load i32, ptr %i.mb, align 4, !noundef !4
  %i.mg = mul i32 %i.mf, %i.me
  %i.mh = add i32 %i.mg, %i.ly                    ; 2 uses
  %exitcond144.not.i.us.2 = icmp eq i64 %i.mc, %.sroa.714.0.copyload.i.us
  br i1 %exitcond144.not.i.us.2, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3: ; preds = %bb.ao
  %i.mi = add nuw nsw i64 %i.mc, %.sroa.411.0.copyload.i.us ; 3 uses
  %i.mj = icmp ult i64 %i.mi, 7
  br i1 %i.mj, label %bb.ap, label %.split179.us.invoke

bb.ap:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter7IterMutlEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.3
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.copyload.i.us, i64 %i.mc
  %i.ml = add nuw nsw i64 %.sroa.513.0.copyload.i.us, 4 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.mi
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !218, !noundef !4
  %i.mo = load i32, ptr %i.mk, align 4, !noundef !4
end_hunk_1
begin_hunk_2_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvehECs2mu2Cb9JdUH_5ravif:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cd = icmp ult i64 %i.bc, 265
  %i.ce = icmp ult i64 %i.bg, 265
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.cg = add i64 %i.bc, -265
  %i.ch = add i64 %i.bg, -265
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 1060
  %.not501 = icmp eq i64 %5, 0
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %5 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %3, align 8, !nonnull !4, !align !15
  %.not7.i = icmp ugt i64 %5, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.cy = add i64 %5, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !4 ; 4 uses
  %i.dc = icmp ult i64 %i.db, 265
  br i1 %i.dc, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4 ; 4 uses
  %i.df = icmp ult i64 %i.de, 265
  br i1 %i.df, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.db, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.de, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !4, !noundef !4
  %i.di = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1060 ; 2 uses
  %i.dk = add i64 %i.db, -265                     ; 2 uses
  %i.dl = add i64 %i.de, -265                     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 1060 ; 2 uses
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dj, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i64 noundef 264, i64 noundef 0, i64 noundef %5, i32 noundef %i.aj), !callees !18
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.ac, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ad, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dj, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i64 noundef 264, i64 noundef 1, i64 noundef %5, i32 noundef %i.aj), !callees !18
  br label %.split485

._crit_edge495:                                   ; preds = %._crit_edge, %.split485
  %.sroa.0.0.lcssa = phi double [ 0.000000e+00, %.split485 ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %i.dn = phi <4 x double> [ zeroinitializer, %.split485 ], [ %i.lu, %._crit_edge ] ; 4 uses
  %i.do = uitofp i64 %5 to double
  %i.dp = uitofp i64 %6 to double
  %i.dq = fmul nnan double %i.do, %i.dp           ; 3 uses
  %i.dr = fdiv double %.sroa.0.0.lcssa, %i.dq     ; 4 uses
  %i.ds = extractelement <4 x double> %i.dn, i64 3
  %i.dt = fdiv double %i.ds, %i.dq                ; 2 uses
  %i.du = shufflevector <4 x double> %i.dn, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.dv = insertelement <2 x double> %i.du, double 1.280000e+02, i64 1
  %i.dw = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv <2 x double> %i.dv, %i.dx          ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0 ; 4 uses
  %i.ea = extractelement <4 x double> %i.dn, i64 1
  %i.eb = extractelement <2 x double> %i.dy, i64 1 ; 2 uses
  %i.ec = fmul double %i.eb, %i.ea                ; 3 uses
  %i.ed = extractelement <4 x double> %i.dn, i64 0
  %i.ee = fmul double %i.eb, %i.ed                ; 3 uses
  br i1 %.not, label %bb.o, label %bb.p

bb.n:                                             ; preds = %.lr.ph494, %._crit_edge
  %indvars.iv = phi i64 [ %6, %.lr.ph494 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.023.0493 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph494 ], [ %i.ei, %._crit_edge ]
  %.sroa.018.0492 = phi i64 [ 0, %.lr.ph494 ], [ %i.eh, %._crit_edge ] ; 7 uses
  %.sroa.0.0491 = phi double [ 0.000000e+00, %.lr.ph494 ], [ %.sroa.0.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ef = phi <4 x double> [ zeroinitializer, %.lr.ph494 ], [ %i.lu, %._crit_edge ] ; 2 uses
  %i.eg = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.eg, i64 1, i64 2
  %i.eh = add i64 %.sroa.018.0492, 2              ; 2 uses
  %i.ei = add i64 %.sroa.023.0493, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.w, label %bb.ab

bb.o:                                             ; preds = %._crit_edge495
  %i.ej = fcmp oeq double %i.dz, 0.000000e+00
  br i1 %i.ej, label %bb.r, label %bb.q

bb.p:                                             ; preds = %._crit_edge495
  br i1 %.not48, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ek = fdiv double %i.ee, %i.dz
  %i.el = call double @llvm.round.f64(double %i.ek)
  %i.em = call i32 @llvm.fptosi.sat.i32.f64(double %i.el)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.o, %bb.v, %bb.u, %bb.q
  %.sroa.017.0 = phi i32 [ %i.fr, %bb.v ], [ %i.em, %bb.q ], [ 0, %bb.o ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.016.0 = phi i32 [ %i.fo, %bb.v ], [ 0, %bb.q ], [ 0, %bb.o ], [ %i.fc, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ]
  %i.en = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %.sroa.016.0, i32 noundef -96, i32 noundef 31) ; 2 uses
  %i.eo = add i32 %.sroa.017.0, %i.en
  %i.ep = sub i32 128, %i.eo
  %i.eq = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.ep, i32 noundef -32, i32 noundef 95)
  %i.er = trunc i32 %i.en to i8
  %i.es = trunc i32 %i.eq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.et = insertvalue { i8, i8 } poison, i8 %i.er, 0
  %i.eu = insertvalue { i8, i8 } %i.et, i8 %i.es, 1
  ret { i8, i8 } %i.eu

bb.s:                                             ; preds = %bb.p
  %i.ev = fcmp oeq double %i.dr, 0.000000e+00
  br i1 %i.ev, label %bb.r, label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.ew = fneg double %i.dt                       ; 3 uses
  %i.ex = fmul double %i.dt, %i.ew
  %i.ey = call double @llvm.fma.f64(double %i.dr, double %i.dz, double %i.ex) ; 2 uses
  %i.ez = fcmp oeq double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.r, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fa = fdiv double %i.ec, %i.dr
  %i.fb = call double @llvm.round.f64(double %i.fa)
  %i.fc = call i32 @llvm.fptosi.sat.i32.f64(double %i.fb)
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.fd = fmul double %i.ee, %i.ew
  %i.fe = fmul double %i.ec, %i.ew
  %i.ff = call double @llvm.fma.f64(double %i.dz, double %i.ec, double %i.fd)
  %i.fg = call double @llvm.fma.f64(double %i.dr, double %i.ee, double %i.fe)
  %i.fh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ff, i64 1
  %i.fj = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fdiv <2 x double> %i.fi, %i.fk          ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 1
  %i.fn = call double @llvm.round.f64(double %i.fm)
  %i.fo = call i32 @llvm.fptosi.sat.i32.f64(double %i.fn)
  %i.fp = extractelement <2 x double> %i.fl, i64 0
  %i.fq = call double @llvm.round.f64(double %i.fp)
  %i.fr = call i32 @llvm.fptosi.sat.i32.f64(double %i.fq)
  br label %bb.r

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fs = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.018.0492), !noalias !356 ; 2 uses
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0      ; 3 uses
  br i1 %i.bi, label %bb.y, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !356
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fu = extractvalue { ptr, i64 } %i.fs, 1      ; 2 uses
  %.not.i50 = icmp ugt i64 %5, %i.fu
  br i1 %.not.i50, label %bb.z, label %bb.aa, !prof !8

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !356
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fv)
  %.sroa.0101.0.copyload = load ptr, ptr %i.r, align 8, !noalias !357 ; 9 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !357 ; 9 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !357 ; 8 uses
  %.sroa.7106.0.copyload = load i64, ptr %.sroa.7106.0..sroa_idx, align 8, !noalias !357 ; 7 uses
  %i.fw = icmp ult i64 %.sroa.5105.0.copyload, %.sroa.7106.0.copyload
  br i1 %i.fw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  %i.fx = sub nuw i64 %.sroa.7106.0.copyload, %.sroa.5105.0.copyload ; 3 uses
  %min.iters.check833 = icmp ult i64 %i.fx, 8
  br i1 %min.iters.check833, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck824

vector.memcheck824:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.fy = shl i64 %.sroa.5105.0.copyload, 2
  %scevgep825 = getelementptr i8, ptr %.sroa.0101.0.copyload, i64 %i.fy
  %i.fz = shl i64 %.sroa.7106.0.copyload, 2
  %scevgep826 = getelementptr i8, ptr %.sroa.0101.0.copyload, i64 %i.fz
  %scevgep827 = getelementptr i8, ptr %.sroa.4103.0.copyload, i64 %.sroa.5105.0.copyload
  %scevgep828 = getelementptr i8, ptr %.sroa.4103.0.copyload, i64 %.sroa.7106.0.copyload
  %bound0829 = icmp ult ptr %scevgep825, %scevgep828
  %bound1830 = icmp ult ptr %scevgep827, %scevgep826
  %found.conflict831 = and i1 %bound0829, %bound1830
  br i1 %found.conflict831, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph834

vector.ph834:                                     ; preds = %vector.memcheck824
  %n.vec835 = and i64 %i.fx, -8                   ; 3 uses
  %i.ga = add i64 %.sroa.5105.0.copyload, %n.vec835
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph834
  %index837 = phi i64 [ 0, %vector.ph834 ], [ %index.next840, %vector.body836 ] ; 2 uses
  %i.gb = add nuw i64 %.sroa.5105.0.copyload, %index837 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.gb ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %wide.load838 = load <4 x i8>, ptr %i.gd, align 1, !alias.scope !358
  %wide.load839 = load <4 x i8>, ptr %i.ge, align 1, !alias.scope !358
  %i.gf = zext <4 x i8> %wide.load838 to <4 x i32>
  %i.gg = zext <4 x i8> %wide.load839 to <4 x i32>
  %i.gh = shl nuw nsw <4 x i32> %i.gf, splat (i32 4)
  %i.gi = shl nuw nsw <4 x i32> %i.gg, splat (i32 4)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <4 x i32> %i.gh, ptr %i.gc, align 4, !alias.scope !359, !noalias !358
  store <4 x i32> %i.gi, ptr %i.gj, align 4, !alias.scope !359, !noalias !358
  %index.next840 = add nuw i64 %index837, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next840, %n.vec835
  br i1 %i.gk, label %middle.block841, label %vector.body836, !llvm.loop !238

middle.block841:                                  ; preds = %vector.body836
  %cmp.n842 = icmp eq i64 %i.fx, %n.vec835
  br i1 %cmp.n842, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck824, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block841
  %.sroa.5105.0470.ph = phi i64 [ %.sroa.5105.0.copyload, %vector.memcheck824 ], [ %.sroa.5105.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.ga, %middle.block841 ] ; 4 uses
  %i.gl = sub i64 %.sroa.7106.0.copyload, %.sroa.5105.0470.ph
  %xtraiter = and i64 %i.gl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.5105.0470.prol = phi i64 [ %i.go, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.5105.0470.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %.sroa.5105.0470.prol
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %.sroa.5105.0470.prol
  %i.go = add nuw i64 %.sroa.5105.0470.prol, 1    ; 2 uses
  %i.gp = load i8, ptr %i.gn, align 1, !noundef !4
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 4
  store i32 %i.gr, ptr %i.gm, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !239

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.5105.0470.unr = phi i64 [ %.sroa.5105.0470.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.go, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.gs = sub i64 %.sroa.5105.0470.ph, %.sroa.7106.0.copyload
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.5105.0470 = phi i64 [ %i.ho, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.5105.0470.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %.sroa.5105.0470
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %.sroa.5105.0470
  %i.gw = add nuw i64 %.sroa.5105.0470, 1         ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !noundef !4
  %i.gy = zext i8 %i.gx to i32
  %i.gz = shl nuw nsw i32 %i.gy, 4
  store i32 %i.gz, ptr %i.gu, align 4
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.gw
  %i.hc = add nuw i64 %.sroa.5105.0470, 2         ; 2 uses
  %i.hd = load i8, ptr %i.hb, align 1, !noundef !4
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 4
  store i32 %i.hf, ptr %i.ha, align 4
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.hc
  %i.hi = add nuw i64 %.sroa.5105.0470, 3         ; 2 uses
  %i.hj = load i8, ptr %i.hh, align 1, !noundef !4
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 4
  store i32 %i.hl, ptr %i.hg, align 4
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.hi
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.hi
  %i.ho = add nuw i64 %.sroa.5105.0470, 4         ; 2 uses
  %i.hp = load i8, ptr %i.hn, align 1, !noundef !4
  %i.hq = zext i8 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 4
  store i32 %i.hr, ptr %i.hm, align 4
  %exitcond.not.3 = icmp eq i64 %i.ho, %.sroa.7106.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !240

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block841, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split

.split:                                           ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52
  %storemerge = phi ptr [ %i.x, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit ], [ %i.y, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit52 ]
  store ptr %i.y, ptr %i.t, align 8
  store i64 384, ptr %i.ca, align 8
  store ptr %storemerge, ptr %i.cb, align 8
  store i64 384, ptr %i.cc, align 8
  %.not502 = icmp eq i64 %6, %.sroa.018.0492
  br i1 %.not502, label %._crit_edge, label %.lr.ph480

bb.ab:                                            ; preds = %bb.n
  %i.hs = lshr exact i64 %.sroa.018.0492, 1
  %i.ht = and i64 %i.hs, 1                        ; 3 uses
  %i.hu = xor i64 %i.ht, 1                        ; 2 uses
  %i.hv = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.hu ; 2 uses
  call void %.sroa.010.0(ptr noalias nofree noundef nonnull align 4 %i.hv, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.hw, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ba, i64 noundef %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.be, i64 noundef %i.bg, i64 noundef 264, i64 noundef %i.eh, i64 noundef %5, i32 noundef %i.ah), !callees !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hx = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.018.0492), !noalias !360 ; 2 uses
  %i.hy = extractvalue { ptr, i64 } %i.hx, 0      ; 3 uses
  %i.hz = or disjoint i64 %.sroa.018.0492, 1
  %i.ia = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.hz), !noalias !360 ; 2 uses
  %i.ib = extractvalue { ptr, i64 } %i.ia, 0      ; 3 uses
  %i.ic = extractvalue { ptr, i64 } %i.ia, 1      ; 2 uses
  br i1 %.not.i53, label %bb.ac, label %bb.ad, !prof !8

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bh, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !noalias !360
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.id = extractvalue { ptr, i64 } %i.hx, 1      ; 2 uses
  %i.ie = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.ht
  %i.if = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !362
  store ptr %i.if, ptr %i.l, align 8, !noalias !363
  store i64 %i.bh, ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !363
  store i64 3, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !362
  store ptr %i.hv, ptr %i.k, align 8, !alias.scope !364, !noalias !365
  store i64 %i.bh, ptr %.sroa.4111.0..sroa_idx, align 8, !alias.scope !364, !noalias !365
  store i64 3, ptr %.sroa.5112.0..sroa_idx, align 8, !alias.scope !364, !noalias !365
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !367
  store ptr %i.ie, ptr %i.j, align 8, !noalias !368
  store i64 %i.bh, ptr %.sroa.4114.0..sroa_idx, align 8, !noalias !368
  store i64 3, ptr %.sroa.5115.0..sroa_idx, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !367
  store ptr %i.hw, ptr %i.i, align 8, !alias.scope !369, !noalias !370
  store i64 %i.bh, ptr %.sroa.4117.0..sroa_idx, align 8, !alias.scope !369, !noalias !370
  store i64 3, ptr %.sroa.5118.0..sroa_idx, align 8, !alias.scope !369, !noalias !370
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !367
  %.not20.i = icmp ugt i64 %5, %i.id
  br i1 %.not20.i, label %bb.ae, label %bb.af, !prof !8

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.id, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28, !noalias !360
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 %5
  %.not21.i = icmp ugt i64 %5, %i.ic
  br i1 %.not21.i, label %bb.ag, label %bb.ah, !prof !8

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ic, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !360
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  br i1 %i.bi, label %bb.aj, label %bb.ai, !prof !19

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !360
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !372
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.hy, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ih), !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !372
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bj, ptr noundef nonnull align 4 %i.x, ptr noundef nonnull %i.bk), !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !374
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEB10_EIBN_INtB13_4IterhEB1E_EEINtB5_7ZipImplBW_B1A_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !377, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !374
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7WindowsmEB10_EBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !375
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMutmEB14_EIBN_INtB17_4IterhEB1I_EEIBN_IBN_INtB17_7WindowsmEB2a_EB26_EEINtB5_7ZipImplBW_B22_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c), !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.n, ptr noundef nonnull align 8 dereferenceable(272) %i.o, i64 272, i1 false), !noalias !361
  %i.ii = load i64, ptr %i.bl, align 8, !alias.scope !380, !noalias !373, !noundef !4 ; 2 uses
  %i.ij = load i64, ptr %i.bm, align 8, !alias.scope !380, !noalias !373, !noundef !4
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

.lr.ph:                                           ; preds = %bb.aj, %bb.ay
  %i.il = phi i64 [ %i.lr, %bb.ay ], [ %i.ii, %bb.aj ] ; 3 uses
  %i.im = add nuw i64 %i.il, 1
  store i64 %i.im, ptr %i.bl, align 8, !alias.scope !380, !noalias !373
  %i.in = load i64, ptr %i.bn, align 8, !alias.scope !381, !noalias !373, !noundef !4
  %i.io = add i64 %i.in, %i.il                    ; 2 uses
  %i.ip = load i64, ptr %i.bo, align 8, !alias.scope !382, !noalias !373, !noundef !4
  %i.iq = add i64 %i.ip, %i.io                    ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !382, !noalias !373, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.iq
  %.val.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !382, !noalias !373, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.iq
  %i.it = load i64, ptr %i.br, align 8, !alias.scope !383, !noalias !373, !noundef !4
  %i.iu = add i64 %i.it, %i.io                    ; 2 uses
  %.val1.i.i1.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !383, !noalias !373, !nonnull !4, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1.i.i1.i.i.i, i64 %i.iu
  %.val.i.i2.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !383, !noalias !373, !nonnull !4, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i2.i.i.i, i64 %i.iu
  %i.ix = load i64, ptr %i.bu, align 8, !alias.scope !384, !noalias !373, !noundef !4
  %i.iy = add i64 %i.ix, %i.il                    ; 2 uses
  %i.iz = load i64, ptr %i.bv, align 8, !alias.scope !385, !noalias !373, !noundef !4
  %i.ja = add i64 %i.iz, %i.iy                    ; 2 uses
  %i.jb = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bt, i64 noundef %i.ja), !noalias !386 ; 2 uses
  %i.jc = extractvalue { ptr, i64 } %i.jb, 0      ; 4 uses
  %i.jd = extractvalue { ptr, i64 } %i.jb, 1      ; 3 uses
  %i.je = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, i64 noundef %i.ja), !noalias !386 ; 2 uses
  %i.jf = extractvalue { ptr, i64 } %i.je, 0      ; 4 uses
  %i.jg = extractvalue { ptr, i64 } %i.je, 1      ; 3 uses
  %i.jh = load i64, ptr %i.by, align 8, !alias.scope !387, !noalias !373, !noundef !4
  %i.ji = add i64 %i.jh, %i.iy                    ; 2 uses
  %i.jj = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bx, i64 noundef %i.ji), !noalias !388 ; 2 uses
  %i.jk = extractvalue { ptr, i64 } %i.jj, 0      ; 4 uses
  %i.jl = extractvalue { ptr, i64 } %i.jj, 1      ; 3 uses
  %i.jm = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %i.ji), !noalias !388 ; 2 uses
  %i.jn = extractvalue { ptr, i64 } %i.jm, 0      ; 4 uses
  %i.jo = extractvalue { ptr, i64 } %i.jm, 1      ; 3 uses
  %i.jp = load i8, ptr %i.iv, align 1, !noalias !373, !noundef !4
  %i.jq = load i8, ptr %i.iw, align 1, !noalias !373, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jf) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jn) ]
  %.not23.i = icmp eq i64 %i.jd, 0
  br i1 %.not23.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.jr = icmp ugt i64 %i.jd, 2
  br i1 %i.jr, label %bb.am, label %bb.an

bb.al:                                            ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !373
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.js = load i32, ptr %i.jc, align 4, !noalias !373, !noundef !4
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !noalias !373, !noundef !4
  %i.jv = add i32 %i.ju, %i.js
  %i.jw = mul i32 %i.jv, 5
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !noalias !373, !noundef !4
  %i.jz = mul i32 %i.jy, 6
  %i.ka = add i32 %i.jw, %i.jz
  %.not24.i = icmp eq i64 %i.jl, 0
  br i1 %.not24.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !373
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.kb = icmp ugt i64 %i.jl, 2
  br i1 %i.kb, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !373
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.kc = load i32, ptr %i.jk, align 4, !noalias !373, !noundef !4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !373, !noundef !4
  %i.kf = add i32 %i.ke, %i.kc
  %i.kg = mul i32 %i.kf, 5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !373, !noundef !4
  %i.kj = mul i32 %i.ki, 6
  %.not25.i = icmp eq i64 %i.jg, 0
  br i1 %.not25.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !373
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.kk = icmp ugt i64 %i.jg, 2
  br i1 %i.kk, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !373
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.kl = load i32, ptr %i.jf, align 4, !noalias !373, !noundef !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.kn = load i32, ptr %i.km, align 4, !noalias !373, !noundef !4
  %i.ko = add i32 %i.kn, %i.kl
  %i.kp = mul i32 %i.ko, 5
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !noalias !373, !noundef !4
  %i.ks = mul i32 %i.kr, 6
  %i.kt = add i32 %i.kp, %i.ks                    ; 2 uses
  %.not26.i = icmp eq i64 %i.jo, 0
  br i1 %.not26.i, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !373
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ku = icmp ugt i64 %i.jo, 2
  br i1 %i.ku, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !373
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.kv = load i32, ptr %i.jn, align 4, !noalias !373, !noundef !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !noalias !373, !noundef !4
  %i.ky = add i32 %i.kx, %i.kv
  %i.kz = mul i32 %i.ky, 5
  %i.la = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !noalias !373, !noundef !4
  %i.lc = mul i32 %i.lb, 6
  %i.ld = add i32 %i.kz, %i.lc                    ; 2 uses
  %i.le = add i32 %i.ka, %i.kt
  %i.lf = zext i8 %i.jp to i32
  %i.lg = mul i32 %i.le, %i.lf
  %i.lh = add i32 %i.kj, 256
  %i.li = add i32 %i.lh, %i.kg
  %i.lj = add i32 %i.li, %i.lg
  %i.lk = add i32 %i.lj, %i.ld
  %i.ll = lshr i32 %i.lk, 9
  store i32 %i.ll, ptr %i.ir, align 4, !noalias !373
  %i.lm = zext i8 %i.jq to i32
  %i.ln = mul i32 %i.kt, %i.lm
  %i.lo = add i32 %i.ln, 128
  %i.lp = add i32 %i.lo, %i.ld
  %i.lq = lshr i32 %i.lp, 8
  store i32 %i.lq, ptr %i.is, align 4, !noalias !373
  %i.lr = load i64, ptr %i.bl, align 8, !alias.scope !380, !noalias !373, !noundef !4 ; 2 uses
  %i.ls = load i64, ptr %i.bm, align 8, !alias.scope !380, !noalias !373, !noundef !4
  %i.lt = icmp ult i64 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !373
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.ay, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, %.split
  %.sroa.0.1.lcssa = phi double [ %.sroa.0.0491, %.split ], [ %i.vj, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  %i.lu = phi <4 x double> [ %i.ef, %.split ], [ %i.vk, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not49 = icmp eq i64 %i.ei, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not49, label %._crit_edge495, label %bb.n

.lr.ph480:                                        ; preds = %.split, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.021.0479 = phi i64 [ %i.lw, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %.sroa.0.1478 = phi double [ %i.vj, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.0.0491, %.split ]
  %i.lv = phi <4 x double> [ %i.vk, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %i.ef, %.split ]
  %i.lw = add nuw nsw i64 %.sroa.021.0479, 1      ; 2 uses
  %i.lx = add nuw nsw i64 %.sroa.021.0479, %.sroa.018.0492 ; 8 uses
  br i1 %.not48, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ly = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx), !noalias !389 ; 2 uses
  %i.lz = extractvalue { ptr, i64 } %i.ly, 0      ; 3 uses
  br i1 %i.bi, label %bb.bc, label %bb.bb, !prof !19

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !389
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ma = extractvalue { ptr, i64 } %i.ly, 1      ; 2 uses
  %.not.i = icmp ugt i64 %5, %i.ma
  br i1 %.not.i, label %bb.bd, label %bb.be, !prof !8

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ma, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !389
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lz) ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.mb)
  %.sroa.097.0.copyload = load ptr, ptr %i.s, align 8, !noalias !390 ; 9 uses
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !noalias !390 ; 9 uses
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !390 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !390 ; 7 uses
  %i.mc = icmp ult i64 %.sroa.5100.0.copyload, %.sroa.7.0.copyload
  br i1 %i.mc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph: ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.097.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload) ]
  %i.md = sub nuw i64 %.sroa.7.0.copyload, %.sroa.5100.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.md, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph
  %i.me = shl i64 %.sroa.5100.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.me
  %i.mf = shl i64 %.sroa.7.0.copyload, 2
  %scevgep792 = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.mf
  %scevgep793 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0.copyload
  %scevgep794 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %.sroa.7.0.copyload
  %bound0 = icmp ult ptr %scevgep, %scevgep794
  %bound1 = icmp ult ptr %scevgep793, %scevgep792
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.md, -8                      ; 3 uses
  %i.mg = add i64 %.sroa.5100.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mh = add nuw i64 %.sroa.5100.0.copyload, %index ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.mh ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %wide.load = load <4 x i8>, ptr %i.mj, align 1, !alias.scope !391
  %wide.load795 = load <4 x i8>, ptr %i.mk, align 1, !alias.scope !391
  %i.ml = zext <4 x i8> %wide.load to <4 x i32>
  %i.mm = zext <4 x i8> %wide.load795 to <4 x i32>
  %i.mn = shl nuw nsw <4 x i32> %i.ml, splat (i32 4)
  %i.mo = shl nuw nsw <4 x i32> %i.mm, splat (i32 4)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x i32> %i.mn, ptr %i.mi, align 4, !alias.scope !392, !noalias !391
  store <4 x i32> %i.mo, ptr %i.mp, align 4, !alias.scope !392, !noalias !391
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.md, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, %middle.block
  %.sroa.5100.0473.ph = phi i64 [ %.sroa.5100.0.copyload, %vector.memcheck ], [ %.sroa.5100.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph ], [ %i.mg, %middle.block ] ; 4 uses
  %i.mr = sub i64 %.sroa.7.0.copyload, %.sroa.5100.0473.ph
  %xtraiter927 = and i64 %i.mr, 3                 ; 2 uses
  %lcmp.mod928.not = icmp eq i64 %xtraiter927, 0
  br i1 %lcmp.mod928.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol
  %.sroa.5100.0473.prol = phi i64 [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ] ; 3 uses
  %prol.iter929 = phi i64 [ %prol.iter929.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mu = add nuw i64 %.sroa.5100.0473.prol, 1    ; 2 uses
  %i.mv = load i8, ptr %i.mt, align 1, !noundef !4
  %i.mw = zext i8 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 4
  store i32 %i.mx, ptr %i.ms, align 4
  %prol.iter929.next = add i64 %prol.iter929, 1   ; 2 uses
  %prol.iter929.cmp.not = icmp eq i64 %prol.iter929.next, %xtraiter927
  br i1 %prol.iter929.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, !llvm.loop !316

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader
  %.sroa.5100.0473.unr = phi i64 [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ], [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ]
  %i.my = sub i64 %.sroa.5100.0473.ph, %.sroa.7.0.copyload
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60
  %.sroa.5100.0473 = phi i64 [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60 ], [ %.sroa.5100.0473.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473
  %i.nc = add nuw i64 %.sroa.5100.0473, 1         ; 2 uses
  %i.nd = load i8, ptr %i.nb, align 1, !noundef !4
  %i.ne = zext i8 %i.nd to i32
  %i.nf = shl nuw nsw i32 %i.ne, 4
  store i32 %i.nf, ptr %i.na, align 4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.nc
  %i.ni = add nuw i64 %.sroa.5100.0473, 2         ; 2 uses
  %i.nj = load i8, ptr %i.nh, align 1, !noundef !4
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 4
  store i32 %i.nl, ptr %i.ng, align 4
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.ni
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.ni
  %i.no = add nuw i64 %.sroa.5100.0473, 3         ; 2 uses
  %i.np = load i8, ptr %i.nn, align 1, !noundef !4
  %i.nq = zext i8 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 4
  store i32 %i.nr, ptr %i.nm, align 4
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.no
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.499.0.copyload, i64 %i.no
  %i.nu = add nuw i64 %.sroa.5100.0473, 4         ; 2 uses
  %i.nv = load i8, ptr %i.nt, align 1, !noundef !4
  %i.nw = zext i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  store i32 %i.nx, ptr %i.ns, align 4
  %exitcond592.not.3 = icmp eq i64 %i.nu, %.sroa.7.0.copyload
  br i1 %exitcond592.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, !llvm.loop !317

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, %middle.block, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.bf:                                            ; preds = %.lr.ph480
  %i.ny = add i64 %i.lx, 2                        ; 2 uses
  %i.nz = urem i64 %i.ny, 3                       ; 2 uses
  %i.oa = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.nz ; 7 uses
  %i.ob = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.nz ; 7 uses
  br i1 %i.cd, label %bb.bh, label %bb.bg, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bm, %bb.bi, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.oc = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0      ; 2 uses
  %i.oe = icmp ult i64 %i.lx, %i.cl
  br i1 %i.oe, label %bb.bp, label %bb.bo, !prof !19

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ce, label %bb.bn, label %bb.bi, !prof !8

bb.bh:                                            ; preds = %bb.bf
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.oa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ob, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ci, i64 noundef %i.ch, i64 noundef 264, i64 noundef %i.ny, i64 noundef %5, i32 noundef %i.aj), !callees !18
  %i.of = urem i64 %i.lx, 3                       ; 2 uses
  %i.og = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.of ; 6 uses
  %i.oh = add i64 %i.lx, 1
  %i.oi = urem i64 %i.oh, 3                       ; 2 uses
  %i.oj = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.oi ; 6 uses
  %i.ok = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.of ; 6 uses
  %i.ol = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.oi ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.om = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lx), !noalias !394 ; 2 uses
  %i.on = extractvalue { ptr, i64 } %i.om, 0      ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.om, 1      ; 4 uses
  br i1 %.not501, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %bb.bi
  %i.op = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.cy) ; 2 uses
  %min.iters.check797 = icmp ult i64 %i.op, 4
  br i1 %min.iters.check797, label %.lr.ph472.preheader844, label %vector.ph798

vector.ph798:                                     ; preds = %.lr.ph472.preheader
  %i.oq = call i64 @llvm.umin.i64(i64 %i.op, i64 384)
  %i.or = add nuw nsw i64 %i.oq, 1                ; 2 uses
  %i.os = and i64 %i.or, 3                        ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %i.ou = select i1 %i.ot, i64 4, i64 %i.os
  %n.vec799 = sub nsw i64 %i.or, %i.ou            ; 2 uses
  br label %vector.body800

vector.body800:                                   ; preds = %vector.body800, %vector.ph798
  %index801 = phi i64 [ 0, %vector.ph798 ], [ %index.next821, %vector.body800 ] ; 11 uses
  %i.ov = or disjoint i64 %index801, 1            ; 6 uses
  %i.ow = or disjoint i64 %index801, 2            ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index801
  %wide.load802 = load <4 x i32>, ptr %i.ox, align 4, !noalias !394
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index801
  %wide.load803 = load <4 x i32>, ptr %i.oy, align 4, !noalias !394
  %i.oz = add <4 x i32> %wide.load803, %wide.load802
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ow
  %wide.load804 = load <4 x i32>, ptr %i.pa, align 4, !noalias !394
  %i.pb = add <4 x i32> %i.oz, %wide.load804
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ow
  %wide.load805 = load <4 x i32>, ptr %i.pc, align 4, !noalias !394
  %i.pd = add <4 x i32> %i.pb, %wide.load805
  %i.pe = mul <4 x i32> %i.pd, splat (i32 3)
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index801
  %wide.load806 = load <4 x i32>, ptr %i.pf, align 4, !noalias !394
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index801
  %wide.load807 = load <4 x i32>, ptr %i.pg, align 4, !noalias !394
  %i.ph = add <4 x i32> %wide.load807, %wide.load806
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ow
  %wide.load808 = load <4 x i32>, ptr %i.pi, align 4, !noalias !394
  %i.pj = add <4 x i32> %i.ph, %wide.load808
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ow
  %wide.load809 = load <4 x i32>, ptr %i.pk, align 4, !noalias !394
  %i.pl = add <4 x i32> %i.pj, %wide.load809
  %i.pm = mul <4 x i32> %i.pl, splat (i32 3)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index801
  %wide.load810 = load <4 x i32>, ptr %i.pn, align 4, !noalias !394
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ov
  %wide.load811 = load <4 x i32>, ptr %i.po, align 4, !noalias !394
  %i.pp = add <4 x i32> %wide.load811, %wide.load810
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ov
  %wide.load812 = load <4 x i32>, ptr %i.pq, align 4, !noalias !394
  %i.pr = add <4 x i32> %i.pp, %wide.load812
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ov
  %wide.load813 = load <4 x i32>, ptr %i.ps, align 4, !noalias !394
  %i.pt = add <4 x i32> %i.pr, %wide.load813
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ow
  %wide.load814 = load <4 x i32>, ptr %i.pu, align 4, !noalias !394
  %i.pv = add <4 x i32> %i.pt, %wide.load814
  %i.pw = shl <4 x i32> %i.pv, splat (i32 2)
end_hunk_2
begin_hunk_3_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cd = icmp ult i64 %i.bc, 265
  %i.ce = icmp ult i64 %i.bg, 265
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.cg = add i64 %i.bc, -265
  %i.ch = add i64 %i.bg, -265
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 1060
  %.not501 = icmp eq i64 %5, 0
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %5 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load ptr, ptr %3, align 8, !nonnull !4, !align !15
  %.not7.i = icmp ugt i64 %5, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.cy = add i64 %5, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noundef !4 ; 4 uses
  %i.dc = icmp ult i64 %i.db, 265
  br i1 %i.dc, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4 ; 4 uses
  %i.df = icmp ult i64 %i.de, 265
  br i1 %i.df, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.db, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.de, i64 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !4, !noundef !4
  %i.di = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1060 ; 2 uses
  %i.dk = add i64 %i.db, -265                     ; 2 uses
  %i.dl = add i64 %i.de, -265                     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 1060 ; 2 uses
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dj, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i64 noundef 264, i64 noundef 0, i64 noundef %5, i32 noundef %i.aj), !callees !18
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.ac, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ad, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dj, i64 noundef %i.dk, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dm, i64 noundef %i.dl, i64 noundef 264, i64 noundef 1, i64 noundef %5, i32 noundef %i.aj), !callees !18
  br label %.split485

._crit_edge495:                                   ; preds = %._crit_edge, %.split485
  %.sroa.0.0.lcssa = phi double [ 0.000000e+00, %.split485 ], [ %.sroa.0.1.lcssa, %._crit_edge ]
  %i.dn = phi <4 x double> [ zeroinitializer, %.split485 ], [ %i.ls, %._crit_edge ] ; 4 uses
  %i.do = uitofp i64 %5 to double
  %i.dp = uitofp i64 %6 to double
  %i.dq = fmul nnan double %i.do, %i.dp           ; 4 uses
  %i.dr = fdiv double %.sroa.0.0.lcssa, %i.dq     ; 4 uses
  %i.ds = extractelement <4 x double> %i.dn, i64 3
  %i.dt = fdiv double %i.ds, %i.dq                ; 2 uses
  %i.du = extractelement <4 x double> %i.dn, i64 2
  %i.dv = fdiv double %i.du, %i.dq                ; 4 uses
  %i.dw = fdiv double 1.280000e+02, %i.dq         ; 2 uses
  %i.dx = extractelement <4 x double> %i.dn, i64 1
  %i.dy = fmul double %i.dw, %i.dx                ; 3 uses
  %i.dz = extractelement <4 x double> %i.dn, i64 0
  %i.ea = fmul double %i.dw, %i.dz                ; 3 uses
  br i1 %.not, label %bb.o, label %bb.p

bb.n:                                             ; preds = %.lr.ph494, %._crit_edge
  %indvars.iv = phi i64 [ %6, %.lr.ph494 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.023.0493 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph494 ], [ %i.ee, %._crit_edge ]
  %.sroa.018.0492 = phi i64 [ 0, %.lr.ph494 ], [ %i.ed, %._crit_edge ] ; 7 uses
  %.sroa.0.0491 = phi double [ 0.000000e+00, %.lr.ph494 ], [ %.sroa.0.1.lcssa, %._crit_edge ] ; 2 uses
  %i.eb = phi <4 x double> [ zeroinitializer, %.lr.ph494 ], [ %i.ls, %._crit_edge ] ; 2 uses
  %i.ec = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.ec, i64 1, i64 2
  %i.ed = add i64 %.sroa.018.0492, 2              ; 2 uses
  %i.ee = add i64 %.sroa.023.0493, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.w, label %bb.ab

bb.o:                                             ; preds = %._crit_edge495
  %i.ef = fcmp oeq double %i.dv, 0.000000e+00
  br i1 %i.ef, label %bb.r, label %bb.q

bb.p:                                             ; preds = %._crit_edge495
  br i1 %.not48, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.eg = fdiv double %i.ea, %i.dv
  %i.eh = call double @llvm.round.f64(double %i.eg)
  %i.ei = call i32 @llvm.fptosi.sat.i32.f64(double %i.eh)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.s, %bb.o, %bb.v, %bb.u, %bb.q
  %.sroa.017.0 = phi i32 [ %i.fn, %bb.v ], [ %i.ei, %bb.q ], [ 0, %bb.o ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.016.0 = phi i32 [ %i.fk, %bb.v ], [ 0, %bb.q ], [ 0, %bb.o ], [ %i.ey, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ]
  %i.ej = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %.sroa.016.0, i32 noundef -96, i32 noundef 31) ; 2 uses
  %i.ek = add i32 %.sroa.017.0, %i.ej
  %i.el = sub i32 128, %i.ek
  %i.em = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.el, i32 noundef -32, i32 noundef 95)
  %i.en = trunc i32 %i.ej to i8
  %i.eo = trunc i32 %i.em to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ep = insertvalue { i8, i8 } poison, i8 %i.en, 0
  %i.eq = insertvalue { i8, i8 } %i.ep, i8 %i.eo, 1
  ret { i8, i8 } %i.eq

bb.s:                                             ; preds = %bb.p
  %i.er = fcmp oeq double %i.dr, 0.000000e+00
  br i1 %i.er, label %bb.r, label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.es = fneg double %i.dt                       ; 3 uses
  %i.et = fmul double %i.dt, %i.es
  %i.eu = call double @llvm.fma.f64(double %i.dr, double %i.dv, double %i.et) ; 2 uses
  %i.ev = fcmp oeq double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.r, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ew = fdiv double %i.dy, %i.dr
  %i.ex = call double @llvm.round.f64(double %i.ew)
  %i.ey = call i32 @llvm.fptosi.sat.i32.f64(double %i.ex)
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.ez = fmul double %i.ea, %i.es
  %i.fa = fmul double %i.dy, %i.es
  %i.fb = call double @llvm.fma.f64(double %i.dv, double %i.dy, double %i.ez)
  %i.fc = call double @llvm.fma.f64(double %i.dr, double %i.ea, double %i.fa)
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fb, i64 1
  %i.ff = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fe, %i.fg          ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1
  %i.fj = call double @llvm.round.f64(double %i.fi)
  %i.fk = call i32 @llvm.fptosi.sat.i32.f64(double %i.fj)
  %i.fl = extractelement <2 x double> %i.fh, i64 0
  %i.fm = call double @llvm.round.f64(double %i.fl)
  %i.fn = call i32 @llvm.fptosi.sat.i32.f64(double %i.fm)
  br label %bb.r

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.fo = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.018.0492), !noalias !529 ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fo, 0      ; 3 uses
  br i1 %i.bi, label %bb.y, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !529
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fq = extractvalue { ptr, i64 } %i.fo, 1      ; 2 uses
  %.not.i50 = icmp ugt i64 %5, %i.fq
  br i1 %.not.i50, label %bb.z, label %bb.aa, !prof !8

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.fq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !529
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fr)
  %.sroa.0101.0.copyload = load ptr, ptr %i.r, align 8, !noalias !530 ; 9 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !530 ; 9 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !530 ; 8 uses
  %.sroa.7106.0.copyload = load i64, ptr %.sroa.7106.0..sroa_idx, align 8, !noalias !530 ; 7 uses
  %i.fs = icmp ult i64 %.sroa.5105.0.copyload, %.sroa.7106.0.copyload
  br i1 %i.fs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  %i.ft = sub nuw i64 %.sroa.7106.0.copyload, %.sroa.5105.0.copyload ; 3 uses
  %min.iters.check855 = icmp ult i64 %i.ft, 8
  br i1 %min.iters.check855, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.fu = shl i64 %.sroa.5105.0.copyload, 2
  %scevgep847 = getelementptr i8, ptr %.sroa.0101.0.copyload, i64 %i.fu
  %i.fv = shl i64 %.sroa.7106.0.copyload, 2
  %scevgep848 = getelementptr i8, ptr %.sroa.0101.0.copyload, i64 %i.fv
  %i.fw = shl i64 %.sroa.5105.0.copyload, 1
  %scevgep849 = getelementptr i8, ptr %.sroa.4103.0.copyload, i64 %i.fw
  %i.fx = shl i64 %.sroa.7106.0.copyload, 1
  %scevgep850 = getelementptr i8, ptr %.sroa.4103.0.copyload, i64 %i.fx
  %bound0851 = icmp ult ptr %scevgep847, %scevgep850
  %bound1852 = icmp ult ptr %scevgep849, %scevgep848
  %found.conflict853 = and i1 %bound0851, %bound1852
  br i1 %found.conflict853, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph856

vector.ph856:                                     ; preds = %vector.memcheck846
  %n.vec857 = and i64 %i.ft, -8                   ; 3 uses
  %i.fy = add i64 %.sroa.5105.0.copyload, %n.vec857
  br label %vector.body858

vector.body858:                                   ; preds = %vector.body858, %vector.ph856
  %index859 = phi i64 [ 0, %vector.ph856 ], [ %index.next862, %vector.body858 ] ; 2 uses
  %i.fz = add nuw i64 %.sroa.5105.0.copyload, %index859 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %wide.load860 = load <4 x i16>, ptr %i.gb, align 2, !alias.scope !531
  %wide.load861 = load <4 x i16>, ptr %i.gc, align 2, !alias.scope !531
  %i.gd = zext <4 x i16> %wide.load860 to <4 x i32>
  %i.ge = zext <4 x i16> %wide.load861 to <4 x i32>
  %i.gf = shl nuw nsw <4 x i32> %i.gd, splat (i32 4)
  %i.gg = shl nuw nsw <4 x i32> %i.ge, splat (i32 4)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %i.gf, ptr %i.ga, align 4, !alias.scope !532, !noalias !531
  store <4 x i32> %i.gg, ptr %i.gh, align 4, !alias.scope !532, !noalias !531
  %index.next862 = add nuw i64 %index859, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next862, %n.vec857
  br i1 %i.gi, label %middle.block863, label %vector.body858, !llvm.loop !409

middle.block863:                                  ; preds = %vector.body858
  %cmp.n864 = icmp eq i64 %i.ft, %n.vec857
  br i1 %cmp.n864, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck846, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block863
  %.sroa.5105.0470.ph = phi i64 [ %.sroa.5105.0.copyload, %vector.memcheck846 ], [ %.sroa.5105.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.fy, %middle.block863 ] ; 4 uses
  %i.gj = sub i64 %.sroa.7106.0.copyload, %.sroa.5105.0470.ph
  %xtraiter = and i64 %i.gj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.5105.0470.prol = phi i64 [ %i.gm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.5105.0470.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %.sroa.5105.0470.prol
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %.sroa.5105.0470.prol
  %i.gm = add nuw i64 %.sroa.5105.0470.prol, 1    ; 2 uses
  %i.gn = load i16, ptr %i.gl, align 2, !noundef !4
  %i.go = zext i16 %i.gn to i32
  %i.gp = shl nuw nsw i32 %i.go, 4
  store i32 %i.gp, ptr %i.gk, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !410

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.5105.0470.unr = phi i64 [ %.sroa.5105.0470.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.gm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.gq = sub i64 %.sroa.5105.0470.ph, %.sroa.7106.0.copyload
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.5105.0470 = phi i64 [ %i.hm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.5105.0470.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %.sroa.5105.0470
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %.sroa.5105.0470
  %i.gu = add nuw i64 %.sroa.5105.0470, 1         ; 2 uses
  %i.gv = load i16, ptr %i.gt, align 2, !noundef !4
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 4
  store i32 %i.gx, ptr %i.gs, align 4
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.gu
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.gu
  %i.ha = add nuw i64 %.sroa.5105.0470, 2         ; 2 uses
  %i.hb = load i16, ptr %i.gz, align 2, !noundef !4
  %i.hc = zext i16 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 4
  store i32 %i.hd, ptr %i.gy, align 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.ha
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.ha
  %i.hg = add nuw i64 %.sroa.5105.0470, 3         ; 2 uses
  %i.hh = load i16, ptr %i.hf, align 2, !noundef !4
  %i.hi = zext i16 %i.hh to i32
  %i.hj = shl nuw nsw i32 %i.hi, 4
  store i32 %i.hj, ptr %i.he, align 4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0101.0.copyload, i64 %i.hg
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.hg
  %i.hm = add nuw i64 %.sroa.5105.0470, 4         ; 2 uses
  %i.hn = load i16, ptr %i.hl, align 2, !noundef !4
  %i.ho = zext i16 %i.hn to i32
  %i.hp = shl nuw nsw i32 %i.ho, 4
  store i32 %i.hp, ptr %i.hk, align 4
  %exitcond.not.3 = icmp eq i64 %i.hm, %.sroa.7106.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !411

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block863, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split

.split:                                           ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52
  %storemerge = phi ptr [ %i.x, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit ], [ %i.y, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit52 ]
  store ptr %i.y, ptr %i.t, align 8
  store i64 384, ptr %i.ca, align 8
  store ptr %storemerge, ptr %i.cb, align 8
  store i64 384, ptr %i.cc, align 8
  %.not502 = icmp eq i64 %6, %.sroa.018.0492
  br i1 %.not502, label %._crit_edge, label %.lr.ph480

bb.ab:                                            ; preds = %bb.n
  %i.hq = lshr exact i64 %.sroa.018.0492, 1
  %i.hr = and i64 %i.hq, 1                        ; 3 uses
  %i.hs = xor i64 %i.hr, 1                        ; 2 uses
  %i.ht = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.hs ; 2 uses
  call void %.sroa.010.0(ptr noalias nofree noundef nonnull align 4 %i.ht, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.hu, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ba, i64 noundef %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.be, i64 noundef %i.bg, i64 noundef 264, i64 noundef %i.ed, i64 noundef %5, i32 noundef %i.ah), !callees !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hv = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.018.0492), !noalias !533 ; 2 uses
  %i.hw = extractvalue { ptr, i64 } %i.hv, 0      ; 3 uses
  %i.hx = or disjoint i64 %.sroa.018.0492, 1
  %i.hy = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.hx), !noalias !533 ; 2 uses
  %i.hz = extractvalue { ptr, i64 } %i.hy, 0      ; 3 uses
  %i.ia = extractvalue { ptr, i64 } %i.hy, 1      ; 2 uses
  br i1 %.not.i53, label %bb.ac, label %bb.ad, !prof !8

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bh, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !noalias !533
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ib = extractvalue { ptr, i64 } %i.hv, 1      ; 2 uses
  %i.ic = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.hr
  %i.id = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !535
  store ptr %i.id, ptr %i.l, align 8, !noalias !536
  store i64 %i.bh, ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !536
  store i64 3, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !535
  store ptr %i.ht, ptr %i.k, align 8, !alias.scope !537, !noalias !538
  store i64 %i.bh, ptr %.sroa.4111.0..sroa_idx, align 8, !alias.scope !537, !noalias !538
  store i64 3, ptr %.sroa.5112.0..sroa_idx, align 8, !alias.scope !537, !noalias !538
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k), !noalias !539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !540
  store ptr %i.ic, ptr %i.j, align 8, !noalias !541
  store i64 %i.bh, ptr %.sroa.4114.0..sroa_idx, align 8, !noalias !541
  store i64 3, ptr %.sroa.5115.0..sroa_idx, align 8, !noalias !541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !540
  store ptr %i.hu, ptr %i.i, align 8, !alias.scope !542, !noalias !543
  store i64 %i.bh, ptr %.sroa.4117.0..sroa_idx, align 8, !alias.scope !542, !noalias !543
  store i64 3, ptr %.sroa.5118.0..sroa_idx, align 8, !alias.scope !542, !noalias !543
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !540
  %.not20.i = icmp ugt i64 %5, %i.ib
  br i1 %.not20.i, label %bb.ae, label %bb.af, !prof !8

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ib, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28, !noalias !533
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hw) ]
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %5
  %.not21.i = icmp ugt i64 %5, %i.ia
  br i1 %.not21.i, label %bb.ag, label %bb.ah, !prof !8

bb.ag:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ia, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !533
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hz) ]
  br i1 %i.bi, label %bb.aj, label %bb.ai, !prof !19

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !533
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !545
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.if), !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !545
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bj, ptr noundef nonnull align 4 %i.x, ptr noundef nonnull %i.bk), !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !547
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEB10_EIBN_INtB13_4ItertEB1E_EEINtB5_7ZipImplBW_B1A_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !550, !noalias !551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !547
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7WindowsmEB10_EBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e), !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !548
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMutmEB14_EIBN_INtB17_4ItertEB1I_EEIBN_IBN_INtB17_7WindowsmEB2a_EB26_EEINtB5_7ZipImplBW_B22_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.n, ptr noundef nonnull align 8 dereferenceable(272) %i.o, i64 272, i1 false), !noalias !534
  %i.ig = load i64, ptr %i.bl, align 8, !alias.scope !553, !noalias !546, !noundef !4 ; 2 uses
  %i.ih = load i64, ptr %i.bm, align 8, !alias.scope !553, !noalias !546, !noundef !4
  %i.ii = icmp ult i64 %i.ig, %i.ih
  br i1 %i.ii, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

.lr.ph:                                           ; preds = %bb.aj, %bb.ay
  %i.ij = phi i64 [ %i.lp, %bb.ay ], [ %i.ig, %bb.aj ] ; 3 uses
  %i.ik = add nuw i64 %i.ij, 1
  store i64 %i.ik, ptr %i.bl, align 8, !alias.scope !553, !noalias !546
  %i.il = load i64, ptr %i.bn, align 8, !alias.scope !554, !noalias !546, !noundef !4
  %i.im = add i64 %i.il, %i.ij                    ; 2 uses
  %i.in = load i64, ptr %i.bo, align 8, !alias.scope !555, !noalias !546, !noundef !4
  %i.io = add i64 %i.in, %i.im                    ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !555, !noalias !546, !nonnull !4, !noundef !4
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.io
  %.val.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !555, !noalias !546, !nonnull !4, !noundef !4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.io
  %i.ir = load i64, ptr %i.br, align 8, !alias.scope !556, !noalias !546, !noundef !4
  %i.is = add i64 %i.ir, %i.im                    ; 2 uses
  %.val1.i.i1.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !556, !noalias !546, !nonnull !4, !noundef !4
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i1.i.i.i, i64 %i.is
  %.val.i.i2.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !556, !noalias !546, !nonnull !4, !noundef !4
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i2.i.i.i, i64 %i.is
  %i.iv = load i64, ptr %i.bu, align 8, !alias.scope !557, !noalias !546, !noundef !4
  %i.iw = add i64 %i.iv, %i.ij                    ; 2 uses
  %i.ix = load i64, ptr %i.bv, align 8, !alias.scope !558, !noalias !546, !noundef !4
  %i.iy = add i64 %i.ix, %i.iw                    ; 2 uses
  %i.iz = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bt, i64 noundef %i.iy), !noalias !559 ; 2 uses
  %i.ja = extractvalue { ptr, i64 } %i.iz, 0      ; 4 uses
  %i.jb = extractvalue { ptr, i64 } %i.iz, 1      ; 3 uses
  %i.jc = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw, i64 noundef %i.iy), !noalias !559 ; 2 uses
  %i.jd = extractvalue { ptr, i64 } %i.jc, 0      ; 4 uses
  %i.je = extractvalue { ptr, i64 } %i.jc, 1      ; 3 uses
  %i.jf = load i64, ptr %i.by, align 8, !alias.scope !560, !noalias !546, !noundef !4
  %i.jg = add i64 %i.jf, %i.iw                    ; 2 uses
  %i.jh = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bx, i64 noundef %i.jg), !noalias !561 ; 2 uses
  %i.ji = extractvalue { ptr, i64 } %i.jh, 0      ; 4 uses
  %i.jj = extractvalue { ptr, i64 } %i.jh, 1      ; 3 uses
  %i.jk = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %i.jg), !noalias !561 ; 2 uses
  %i.jl = extractvalue { ptr, i64 } %i.jk, 0      ; 4 uses
  %i.jm = extractvalue { ptr, i64 } %i.jk, 1      ; 3 uses
  %i.jn = load i16, ptr %i.it, align 2, !noalias !546, !noundef !4
  %i.jo = load i16, ptr %i.iu, align 2, !noalias !546, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ja) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jd) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ji) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %.not23.i = icmp eq i64 %i.jb, 0
  br i1 %.not23.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.jp = icmp ugt i64 %i.jb, 2
  br i1 %i.jp, label %bb.am, label %bb.an

bb.al:                                            ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !546
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.jq = load i32, ptr %i.ja, align 4, !noalias !546, !noundef !4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !noalias !546, !noundef !4
  %i.jt = add i32 %i.js, %i.jq
  %i.ju = mul i32 %i.jt, 5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !noalias !546, !noundef !4
  %i.jx = mul i32 %i.jw, 6
  %i.jy = add i32 %i.ju, %i.jx
  %.not24.i = icmp eq i64 %i.jj, 0
  br i1 %.not24.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !546
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.jz = icmp ugt i64 %i.jj, 2
  br i1 %i.jz, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !546
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ka = load i32, ptr %i.ji, align 4, !noalias !546, !noundef !4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.kc = load i32, ptr %i.kb, align 4, !noalias !546, !noundef !4
  %i.kd = add i32 %i.kc, %i.ka
  %i.ke = mul i32 %i.kd, 5
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !noalias !546, !noundef !4
  %i.kh = mul i32 %i.kg, 6
  %.not25.i = icmp eq i64 %i.je, 0
  br i1 %.not25.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !546
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ki = icmp ugt i64 %i.je, 2
  br i1 %i.ki, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !546
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.kj = load i32, ptr %i.jd, align 4, !noalias !546, !noundef !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !noalias !546, !noundef !4
  %i.km = add i32 %i.kl, %i.kj
  %i.kn = mul i32 %i.km, 5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !noalias !546, !noundef !4
  %i.kq = mul i32 %i.kp, 6
  %i.kr = add i32 %i.kn, %i.kq                    ; 2 uses
  %.not26.i = icmp eq i64 %i.jm, 0
  br i1 %.not26.i, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.je, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !546
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ks = icmp ugt i64 %i.jm, 2
  br i1 %i.ks, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !546
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.kt = load i32, ptr %i.jl, align 4, !noalias !546, !noundef !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !546, !noundef !4
  %i.kw = add i32 %i.kv, %i.kt
  %i.kx = mul i32 %i.kw, 5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.kz = load i32, ptr %i.ky, align 4, !noalias !546, !noundef !4
  %i.la = mul i32 %i.kz, 6
  %i.lb = add i32 %i.kx, %i.la                    ; 2 uses
  %i.lc = add i32 %i.jy, %i.kr
  %i.ld = zext i16 %i.jn to i32
  %i.le = mul i32 %i.lc, %i.ld
  %i.lf = add i32 %i.kh, 256
  %i.lg = add i32 %i.lf, %i.ke
  %i.lh = add i32 %i.lg, %i.le
  %i.li = add i32 %i.lh, %i.lb
  %i.lj = lshr i32 %i.li, 9
  store i32 %i.lj, ptr %i.ip, align 4, !noalias !546
  %i.lk = zext i16 %i.jo to i32
  %i.ll = mul i32 %i.kr, %i.lk
  %i.lm = add i32 %i.ll, 128
  %i.ln = add i32 %i.lm, %i.lb
  %i.lo = lshr i32 %i.ln, 8
  store i32 %i.lo, ptr %i.iq, align 4, !noalias !546
  %i.lp = load i64, ptr %i.bl, align 8, !alias.scope !553, !noalias !546, !noundef !4 ; 2 uses
  %i.lq = load i64, ptr %i.bm, align 8, !alias.scope !553, !noalias !546, !noundef !4
  %i.lr = icmp ult i64 %i.lp, %i.lq
  br i1 %i.lr, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.jm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !546
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.ay, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, %.split
  %.sroa.0.1.lcssa = phi double [ %.sroa.0.0491, %.split ], [ %i.wq, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  %i.ls = phi <4 x double> [ %i.eb, %.split ], [ %i.wr, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not49 = icmp eq i64 %i.ee, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not49, label %._crit_edge495, label %bb.n

.lr.ph480:                                        ; preds = %.split, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.021.0479 = phi i64 [ %i.lu, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %.sroa.0.1478 = phi double [ %i.wq, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.0.0491, %.split ]
  %i.lt = phi <4 x double> [ %i.wr, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit ], [ %i.eb, %.split ]
  %i.lu = add nuw nsw i64 %.sroa.021.0479, 1      ; 2 uses
  %i.lv = add nuw nsw i64 %.sroa.021.0479, %.sroa.018.0492 ; 8 uses
  br i1 %.not48, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %.lr.ph480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lw = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv), !noalias !562 ; 2 uses
  %i.lx = extractvalue { ptr, i64 } %i.lw, 0      ; 3 uses
  br i1 %i.bi, label %bb.bc, label %bb.bb, !prof !19

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !562
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ly = extractvalue { ptr, i64 } %i.lw, 1      ; 2 uses
  %.not.i = icmp ugt i64 %5, %i.ly
  br i1 %.not.i, label %bb.bd, label %bb.be, !prof !8

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ly, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !562
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lx) ]
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %5
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.lx, ptr noundef nonnull %i.lz)
  %.sroa.097.0.copyload = load ptr, ptr %i.s, align 8, !noalias !563 ; 9 uses
  %.sroa.499.0.copyload = load ptr, ptr %.sroa.499.0..sroa_idx, align 8, !noalias !563 ; 9 uses
  %.sroa.5100.0.copyload = load i64, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !563 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !563 ; 7 uses
  %i.ma = icmp ult i64 %.sroa.5100.0.copyload, %.sroa.7.0.copyload
  br i1 %i.ma, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph: ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.097.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.499.0.copyload) ]
  %i.mb = sub nuw i64 %.sroa.7.0.copyload, %.sroa.5100.0.copyload ; 3 uses
  %min.iters.check807 = icmp ult i64 %i.mb, 8
  br i1 %min.iters.check807, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph
  %i.mc = shl i64 %.sroa.5100.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.mc
  %i.md = shl i64 %.sroa.7.0.copyload, 2
  %scevgep803 = getelementptr i8, ptr %.sroa.097.0.copyload, i64 %i.md
  %i.me = shl i64 %.sroa.5100.0.copyload, 1
  %scevgep804 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %i.me
  %i.mf = shl i64 %.sroa.7.0.copyload, 1
  %scevgep805 = getelementptr i8, ptr %.sroa.499.0.copyload, i64 %i.mf
  %bound0 = icmp ult ptr %scevgep, %scevgep805
  %bound1 = icmp ult ptr %scevgep804, %scevgep803
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, label %vector.ph808

vector.ph808:                                     ; preds = %vector.memcheck
  %n.vec809 = and i64 %i.mb, -8                   ; 3 uses
  %i.mg = add i64 %.sroa.5100.0.copyload, %n.vec809
  br label %vector.body810

vector.body810:                                   ; preds = %vector.body810, %vector.ph808
  %index811 = phi i64 [ 0, %vector.ph808 ], [ %index.next814, %vector.body810 ] ; 2 uses
  %i.mh = add nuw i64 %.sroa.5100.0.copyload, %index811 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.mh ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %wide.load812 = load <4 x i16>, ptr %i.mj, align 2, !alias.scope !564
  %wide.load813 = load <4 x i16>, ptr %i.mk, align 2, !alias.scope !564
  %i.ml = zext <4 x i16> %wide.load812 to <4 x i32>
  %i.mm = zext <4 x i16> %wide.load813 to <4 x i32>
  %i.mn = shl nuw nsw <4 x i32> %i.ml, splat (i32 4)
  %i.mo = shl nuw nsw <4 x i32> %i.mm, splat (i32 4)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x i32> %i.mn, ptr %i.mi, align 4, !alias.scope !565, !noalias !564
  store <4 x i32> %i.mo, ptr %i.mp, align 4, !alias.scope !565, !noalias !564
  %index.next814 = add nuw i64 %index811, 8       ; 2 uses
  %i.mq = icmp eq i64 %index.next814, %n.vec809
  br i1 %i.mq, label %middle.block815, label %vector.body810, !llvm.loop !486

middle.block815:                                  ; preds = %vector.body810
  %cmp.n816 = icmp eq i64 %i.mb, %n.vec809
  br i1 %cmp.n816, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph, %middle.block815
  %.sroa.5100.0473.ph = phi i64 [ %.sroa.5100.0.copyload, %vector.memcheck ], [ %.sroa.5100.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.lr.ph ], [ %i.mg, %middle.block815 ] ; 4 uses
  %i.mr = sub i64 %.sroa.7.0.copyload, %.sroa.5100.0473.ph
  %xtraiter954 = and i64 %i.mr, 3                 ; 2 uses
  %lcmp.mod955.not = icmp eq i64 %xtraiter954, 0
  br i1 %lcmp.mod955.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol
  %.sroa.5100.0473.prol = phi i64 [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ] ; 3 uses
  %prol.iter956 = phi i64 [ %prol.iter956.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473.prol
  %i.mu = add nuw i64 %.sroa.5100.0473.prol, 1    ; 2 uses
  %i.mv = load i16, ptr %i.mt, align 2, !noundef !4
  %i.mw = zext i16 %i.mv to i32
  %i.mx = shl nuw nsw i32 %i.mw, 4
  store i32 %i.mx, ptr %i.ms, align 4
  %prol.iter956.next = add i64 %prol.iter956, 1   ; 2 uses
  %prol.iter956.cmp.not = icmp eq i64 %prol.iter956.next, %xtraiter954
  br i1 %prol.iter956.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, !llvm.loop !487

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader
  %.sroa.5100.0473.unr = phi i64 [ %.sroa.5100.0473.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.preheader ], [ %i.mu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol ]
  %i.my = sub i64 %.sroa.5100.0473.ph, %.sroa.7.0.copyload
  %i.mz = icmp ugt i64 %i.my, -4
  br i1 %i.mz, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60
  %.sroa.5100.0473 = phi i64 [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60 ], [ %.sroa.5100.0473.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit ] ; 6 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %.sroa.5100.0473
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %.sroa.5100.0473
  %i.nc = add nuw i64 %.sroa.5100.0473, 1         ; 2 uses
  %i.nd = load i16, ptr %i.nb, align 2, !noundef !4
  %i.ne = zext i16 %i.nd to i32
  %i.nf = shl nuw nsw i32 %i.ne, 4
  store i32 %i.nf, ptr %i.na, align 4
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.nc
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.nc
  %i.ni = add nuw i64 %.sroa.5100.0473, 2         ; 2 uses
  %i.nj = load i16, ptr %i.nh, align 2, !noundef !4
  %i.nk = zext i16 %i.nj to i32
  %i.nl = shl nuw nsw i32 %i.nk, 4
  store i32 %i.nl, ptr %i.ng, align 4
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.ni
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.ni
  %i.no = add nuw i64 %.sroa.5100.0473, 3         ; 2 uses
  %i.np = load i16, ptr %i.nn, align 2, !noundef !4
  %i.nq = zext i16 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 4
  store i32 %i.nr, ptr %i.nm, align 4
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.097.0.copyload, i64 %i.no
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.499.0.copyload, i64 %i.no
  %i.nu = add nuw i64 %.sroa.5100.0473, 4         ; 2 uses
  %i.nv = load i16, ptr %i.nt, align 2, !noundef !4
  %i.nw = zext i16 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 4
  store i32 %i.nx, ptr %i.ns, align 4
  %exitcond592.not.3 = icmp eq i64 %i.nu, %.sroa.7.0.copyload
  br i1 %exitcond592.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, !llvm.loop !488

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit60, %middle.block815, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.bf:                                            ; preds = %.lr.ph480
  %i.ny = add i64 %i.lv, 2                        ; 2 uses
  %i.nz = urem i64 %i.ny, 3                       ; 2 uses
  %i.oa = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.nz ; 7 uses
  %i.ob = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.nz ; 7 uses
  br i1 %i.cd, label %bb.bh, label %bb.bg, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bm, %bb.bi, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.oc = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0      ; 2 uses
  %i.oe = icmp ult i64 %i.lv, %i.cl
  br i1 %i.oe, label %bb.bp, label %bb.bo, !prof !19

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ce, label %bb.bn, label %bb.bi, !prof !8

bb.bh:                                            ; preds = %bb.bf
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  call void %.sroa.07.0140(ptr noalias nofree noundef nonnull align 4 %i.oa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ob, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cf, i64 noundef %i.cg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ci, i64 noundef %i.ch, i64 noundef 264, i64 noundef %i.ny, i64 noundef %5, i32 noundef %i.aj), !callees !18
  %i.of = urem i64 %i.lv, 3                       ; 2 uses
  %i.og = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.of ; 6 uses
  %i.oh = add i64 %i.lv, 1
  %i.oi = urem i64 %i.oh, 3                       ; 2 uses
  %i.oj = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.oi ; 6 uses
  %i.ok = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.of ; 6 uses
  %i.ol = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.oi ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.om = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.lv), !noalias !567 ; 2 uses
  %i.on = extractvalue { ptr, i64 } %i.om, 0      ; 2 uses
  %i.oo = extractvalue { ptr, i64 } %i.om, 1      ; 4 uses
  br i1 %.not501, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %bb.bi
  %i.op = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.cy) ; 2 uses
  %min.iters.check819 = icmp ult i64 %i.op, 4
  br i1 %min.iters.check819, label %.lr.ph472.preheader866, label %vector.ph820

vector.ph820:                                     ; preds = %.lr.ph472.preheader
  %i.oq = call i64 @llvm.umin.i64(i64 %i.op, i64 384)
  %i.or = add nuw nsw i64 %i.oq, 1                ; 2 uses
  %i.os = and i64 %i.or, 3                        ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  %i.ou = select i1 %i.ot, i64 4, i64 %i.os
  %n.vec821 = sub nsw i64 %i.or, %i.ou            ; 2 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next843, %vector.body822 ] ; 11 uses
  %i.ov = or disjoint i64 %index823, 1            ; 6 uses
  %i.ow = or disjoint i64 %index823, 2            ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index823
  %wide.load824 = load <4 x i32>, ptr %i.ox, align 4, !noalias !567
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index823
  %wide.load825 = load <4 x i32>, ptr %i.oy, align 4, !noalias !567
  %i.oz = add <4 x i32> %wide.load825, %wide.load824
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.ow
  %wide.load826 = load <4 x i32>, ptr %i.pa, align 4, !noalias !567
  %i.pb = add <4 x i32> %i.oz, %wide.load826
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ow
  %wide.load827 = load <4 x i32>, ptr %i.pc, align 4, !noalias !567
  %i.pd = add <4 x i32> %i.pb, %wide.load827
  %i.pe = mul <4 x i32> %i.pd, splat (i32 3)
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index823
  %wide.load828 = load <4 x i32>, ptr %i.pf, align 4, !noalias !567
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index823
  %wide.load829 = load <4 x i32>, ptr %i.pg, align 4, !noalias !567
  %i.ph = add <4 x i32> %wide.load829, %wide.load828
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ow
  %wide.load830 = load <4 x i32>, ptr %i.pi, align 4, !noalias !567
  %i.pj = add <4 x i32> %i.ph, %wide.load830
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ow
  %wide.load831 = load <4 x i32>, ptr %i.pk, align 4, !noalias !567
  %i.pl = add <4 x i32> %i.pj, %wide.load831
  %i.pm = mul <4 x i32> %i.pl, splat (i32 3)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index823
  %wide.load832 = load <4 x i32>, ptr %i.pn, align 4, !noalias !567
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.ov
  %wide.load833 = load <4 x i32>, ptr %i.po, align 4, !noalias !567
  %i.pp = add <4 x i32> %wide.load833, %wide.load832
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ov
  %wide.load834 = load <4 x i32>, ptr %i.pq, align 4, !noalias !567
  %i.pr = add <4 x i32> %i.pp, %wide.load834
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ov
  %wide.load835 = load <4 x i32>, ptr %i.ps, align 4, !noalias !567
  %i.pt = add <4 x i32> %i.pr, %wide.load835
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ow
  %wide.load836 = load <4 x i32>, ptr %i.pu, align 4, !noalias !567
end_hunk_3
begin_hunk_4_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread, %bb.e
  %.sroa.02.0120 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 3 uses
  %.sroa.05.0 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 2 uses
  %i.as = add nsw i8 %0, -10
  %.not = icmp ult i8 %i.as, 4                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.at = and i8 %0, 14
  %.not42 = icmp eq i8 %i.at, 14                  ; 2 uses
  br i1 %.not42, label %.split266, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  call void %.sroa.05.0(ptr noalias nofree noundef nonnull align 4 %i.aa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.z, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.av, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef %i.bb, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.al), !callees !17
  br label %bb.g

.split266:                                        ; preds = %bb.m, %bb.g
  %i.bc = lshr i64 %i.ae, 1
  %.sroa.05.0.i.i = sub nuw i64 %i.ae, %i.bc      ; 2 uses
  %.not43267 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not43267, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %.split266
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = add i64 %i.ac, 3                        ; 6 uses
  %.not.i47 = icmp ugt i64 %i.bl, 386
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bm = icmp ult i64 %i.ac, 385                 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ch = add i64 %4, 1                           ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, %i.bg
  %i.cj = icmp ugt i64 %i.ch, %i.bk
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch
  %i.cl = sub nuw i64 %i.bg, %i.ch
  %i.cm = sub nuw i64 %i.bk, %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %.not272 = icmp eq i64 %i.ac, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %sext = shl i32 %.sroa.01.0.extract.trunc, 24
  %i.cp = ashr exact i32 %sext, 24                ; 2 uses
  %i.cq = ashr i16 %1, 8
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %i.cs = add nsw i32 %i.cp, %i.cr
  %i.ct = sub nsw i32 128, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %6, align 8, !nonnull !4, !align !15
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.9113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.11114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.cx = shl nsw i32 %i.cr, 4
  %i.cy = add i64 %i.ac, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cz = add i64 %4, 1                           ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.dd = icmp ugt i64 %i.cz, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.df = load i64, ptr %i.de, align 8, !noundef !4 ; 4 uses
  %i.dg = icmp ugt i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.df, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !4, !noundef !4
  %i.dj = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cz ; 2 uses
  %i.dl = sub nuw i64 %i.dc, %i.cz                ; 2 uses
  %i.dm = sub nuw i64 %i.df, %i.cz                ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cz ; 2 uses
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dm, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.ag, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ah, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dm, i64 noundef %4, i64 noundef 1, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  br label %.split266

._crit_edge271:                                   ; preds = %._crit_edge, %.split266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.n:                                             ; preds = %.lr.ph270, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph270 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.016.0269 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph270 ], [ %i.dq, %._crit_edge ]
  %.sroa.011.0268 = phi i64 [ 0, %.lr.ph270 ], [ %i.dp, %._crit_edge ] ; 7 uses
  %i.do = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.do, i64 1, i64 2
  %i.dp = add i64 %.sroa.011.0268, 2              ; 2 uses
  %i.dq = add i64 %.sroa.016.0269, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dr = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0268), !noalias !795 ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0      ; 3 uses
  br i1 %i.bm, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !795
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1      ; 2 uses
  %.not.i44 = icmp ugt i64 %i.ac, %i.dt
  br i1 %.not.i44, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !795
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.du)
  %.sroa.079.0.copyload = load ptr, ptr %i.r, align 8, !noalias !796 ; 9 uses
  %.sroa.481.0.copyload = load ptr, ptr %.sroa.481.0..sroa_idx, align 8, !noalias !796 ; 9 uses
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !796 ; 8 uses
  %.sroa.784.0.copyload = load i64, ptr %.sroa.784.0..sroa_idx, align 8, !noalias !796 ; 7 uses
  %i.dv = icmp ult i64 %.sroa.583.0.copyload, %.sroa.784.0.copyload
  br i1 %i.dv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.079.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.481.0.copyload) ]
  %i.dw = sub nuw i64 %.sroa.784.0.copyload, %.sroa.583.0.copyload ; 3 uses
  %min.iters.check569 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check569, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck560

vector.memcheck560:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.dx = shl i64 %.sroa.583.0.copyload, 2
  %scevgep561 = getelementptr i8, ptr %.sroa.079.0.copyload, i64 %i.dx
  %i.dy = shl i64 %.sroa.784.0.copyload, 2
  %scevgep562 = getelementptr i8, ptr %.sroa.079.0.copyload, i64 %i.dy
  %scevgep563 = getelementptr i8, ptr %.sroa.481.0.copyload, i64 %.sroa.583.0.copyload
  %scevgep564 = getelementptr i8, ptr %.sroa.481.0.copyload, i64 %.sroa.784.0.copyload
  %bound0565 = icmp ult ptr %scevgep561, %scevgep564
  %bound1566 = icmp ult ptr %scevgep563, %scevgep562
  %found.conflict567 = and i1 %bound0565, %bound1566
  br i1 %found.conflict567, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph570

vector.ph570:                                     ; preds = %vector.memcheck560
  %n.vec571 = and i64 %i.dw, -8                   ; 3 uses
  %i.dz = add i64 %.sroa.583.0.copyload, %n.vec571
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next576, %vector.body572 ] ; 2 uses
  %i.ea = add nuw i64 %.sroa.583.0.copyload, %index573 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load574 = load <4 x i8>, ptr %i.ec, align 1, !alias.scope !797
  %wide.load575 = load <4 x i8>, ptr %i.ed, align 1, !alias.scope !797
  %i.ee = zext <4 x i8> %wide.load574 to <4 x i32>
  %i.ef = zext <4 x i8> %wide.load575 to <4 x i32>
  %i.eg = shl nuw nsw <4 x i32> %i.ee, splat (i32 4)
  %i.eh = shl nuw nsw <4 x i32> %i.ef, splat (i32 4)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> %i.eg, ptr %i.eb, align 4, !alias.scope !798, !noalias !797
  store <4 x i32> %i.eh, ptr %i.ei, align 4, !alias.scope !798, !noalias !797
  %index.next576 = add nuw i64 %index573, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next576, %n.vec571
  br i1 %i.ej, label %middle.block577, label %vector.body572, !llvm.loop !700

middle.block577:                                  ; preds = %vector.body572
  %cmp.n578 = icmp eq i64 %i.dw, %n.vec571
  br i1 %cmp.n578, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck560, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block577
  %.sroa.583.0259.ph = phi i64 [ %.sroa.583.0.copyload, %vector.memcheck560 ], [ %.sroa.583.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.dz, %middle.block577 ] ; 4 uses
  %i.ek = sub i64 %.sroa.784.0.copyload, %.sroa.583.0259.ph
  %xtraiter = and i64 %i.ek, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.583.0259.prol = phi i64 [ %i.en, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.583.0259.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %.sroa.583.0259.prol
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %.sroa.583.0259.prol
  %i.en = add nuw i64 %.sroa.583.0259.prol, 1     ; 2 uses
  %i.eo = load i8, ptr %i.em, align 1, !noundef !4
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 4
  store i32 %i.eq, ptr %i.el, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !701

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.583.0259.unr = phi i64 [ %.sroa.583.0259.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.en, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.er = sub i64 %.sroa.583.0259.ph, %.sroa.784.0.copyload
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.583.0259 = phi i64 [ %i.fn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.583.0259.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %.sroa.583.0259
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %.sroa.583.0259
  %i.ev = add nuw i64 %.sroa.583.0259, 1          ; 2 uses
  %i.ew = load i8, ptr %i.eu, align 1, !noundef !4
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 4
  store i32 %i.ey, ptr %i.et, align 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %i.ev
  %i.fb = add nuw i64 %.sroa.583.0259, 2          ; 2 uses
  %i.fc = load i8, ptr %i.fa, align 1, !noundef !4
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 4
  store i32 %i.fe, ptr %i.ez, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %i.fb
  %i.fh = add nuw i64 %.sroa.583.0259, 3          ; 2 uses
  %i.fi = load i8, ptr %i.fg, align 1, !noundef !4
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 4
  store i32 %i.fk, ptr %i.ff, align 4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.481.0.copyload, i64 %i.fh
  %i.fn = add nuw i64 %.sroa.583.0259, 4          ; 2 uses
  %i.fo = load i8, ptr %i.fm, align 1, !noundef !4
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 4
  store i32 %i.fq, ptr %i.fl, align 4
  %exitcond.not.3 = icmp eq i64 %i.fn, %.sroa.784.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !702

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block577, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split

.split:                                           ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46
  %storemerge = phi ptr [ %i.x, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit ], [ %i.y, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit46 ]
  store ptr %i.y, ptr %i.t, align 8
  store i64 384, ptr %i.ce, align 8
  store ptr %storemerge, ptr %i.cf, align 8
  store i64 384, ptr %i.cg, align 8
  %.not273 = icmp eq i64 %i.ae, %.sroa.011.0268
  br i1 %.not273, label %._crit_edge, label %.lr.ph265

bb.t:                                             ; preds = %bb.n
  %i.fr = lshr exact i64 %.sroa.011.0268, 1
  %i.fs = and i64 %i.fr, 1                        ; 3 uses
  %i.ft = xor i64 %i.fs, 1                        ; 2 uses
  %i.fu = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.ft ; 2 uses
  call void %.sroa.05.0(ptr noalias nofree noundef nonnull align 4 %i.fu, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.fv, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.be, i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bi, i64 noundef %i.bk, i64 noundef %4, i64 noundef %i.dp, i64 noundef %i.ac, i32 noundef %i.al), !callees !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fw = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0268), !noalias !799 ; 2 uses
  %i.fx = extractvalue { ptr, i64 } %i.fw, 0      ; 3 uses
  %i.fy = or disjoint i64 %.sroa.011.0268, 1
  %i.fz = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.fy), !noalias !799 ; 2 uses
  %i.ga = extractvalue { ptr, i64 } %i.fz, 0      ; 3 uses
  %i.gb = extractvalue { ptr, i64 } %i.fz, 1      ; 2 uses
  br i1 %.not.i47, label %bb.u, label %bb.v, !prof !8

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bl, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !noalias !799
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.gc = extractvalue { ptr, i64 } %i.fw, 1      ; 2 uses
  %i.gd = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.fs
  %i.ge = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !801
  store ptr %i.ge, ptr %i.l, align 8, !noalias !802
  store i64 %i.bl, ptr %.sroa.486.0..sroa_idx, align 8, !noalias !802
  store i64 3, ptr %.sroa.587.0..sroa_idx, align 8, !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !801
  store ptr %i.fu, ptr %i.k, align 8, !alias.scope !803, !noalias !804
  store i64 %i.bl, ptr %.sroa.489.0..sroa_idx, align 8, !alias.scope !803, !noalias !804
  store i64 3, ptr %.sroa.590.0..sroa_idx, align 8, !alias.scope !803, !noalias !804
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !806
  store ptr %i.gd, ptr %i.j, align 8, !noalias !807
  store i64 %i.bl, ptr %.sroa.492.0..sroa_idx, align 8, !noalias !807
  store i64 3, ptr %.sroa.593.0..sroa_idx, align 8, !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !806
  store ptr %i.fv, ptr %i.i, align 8, !alias.scope !808, !noalias !809
  store i64 %i.bl, ptr %.sroa.495.0..sroa_idx, align 8, !alias.scope !808, !noalias !809
  store i64 3, ptr %.sroa.596.0..sroa_idx, align 8, !alias.scope !808, !noalias !809
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i), !noalias !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !806
  %.not20.i = icmp ugt i64 %i.ac, %i.gc
  br i1 %.not20.i, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.gc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28, !noalias !799
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fx) ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ac
  %.not21.i = icmp ugt i64 %i.ac, %i.gb
  br i1 %.not21.i, label %bb.y, label %bb.z, !prof !8

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.gb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !799
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  br i1 %i.bm, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !799
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !811
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.gg), !noalias !812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !811
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull align 4 %i.x, ptr noundef nonnull %i.bo), !noalias !812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !813
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEB10_EIBN_INtB13_4IterhEB1E_EEINtB5_7ZipImplBW_B1A_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !816, !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !813
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7WindowsmEB10_EBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !814
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMutmEB14_EIBN_INtB17_4IterhEB1I_EEIBN_IBN_INtB17_7WindowsmEB2a_EB26_EEINtB5_7ZipImplBW_B22_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.n, ptr noundef nonnull align 8 dereferenceable(272) %i.o, i64 272, i1 false), !noalias !800
  %i.gh = load i64, ptr %i.bp, align 8, !alias.scope !819, !noalias !812, !noundef !4 ; 2 uses
  %i.gi = load i64, ptr %i.bq, align 8, !alias.scope !819, !noalias !812, !noundef !4
  %i.gj = icmp ult i64 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

.lr.ph:                                           ; preds = %bb.ab, %bb.aq
  %i.gk = phi i64 [ %i.jq, %bb.aq ], [ %i.gh, %bb.ab ] ; 3 uses
  %i.gl = add nuw i64 %i.gk, 1
  store i64 %i.gl, ptr %i.bp, align 8, !alias.scope !819, !noalias !812
  %i.gm = load i64, ptr %i.br, align 8, !alias.scope !820, !noalias !812, !noundef !4
  %i.gn = add i64 %i.gm, %i.gk                    ; 2 uses
  %i.go = load i64, ptr %i.bs, align 8, !alias.scope !821, !noalias !812, !noundef !4
  %i.gp = add i64 %i.go, %i.gn                    ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !821, !noalias !812, !nonnull !4, !noundef !4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.gp
  %.val.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !821, !noalias !812, !nonnull !4, !noundef !4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.gp
  %i.gs = load i64, ptr %i.bv, align 8, !alias.scope !822, !noalias !812, !noundef !4
  %i.gt = add i64 %i.gs, %i.gn                    ; 2 uses
  %.val1.i.i1.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !822, !noalias !812, !nonnull !4, !noundef !4
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1.i.i1.i.i.i, i64 %i.gt
  %.val.i.i2.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !822, !noalias !812, !nonnull !4, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i2.i.i.i, i64 %i.gt
  %i.gw = load i64, ptr %i.by, align 8, !alias.scope !823, !noalias !812, !noundef !4
  %i.gx = add i64 %i.gw, %i.gk                    ; 2 uses
  %i.gy = load i64, ptr %i.bz, align 8, !alias.scope !824, !noalias !812, !noundef !4
  %i.gz = add i64 %i.gy, %i.gx                    ; 2 uses
  %i.ha = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bx, i64 noundef %i.gz), !noalias !825 ; 2 uses
  %i.hb = extractvalue { ptr, i64 } %i.ha, 0      ; 4 uses
  %i.hc = extractvalue { ptr, i64 } %i.ha, 1      ; 3 uses
  %i.hd = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %i.gz), !noalias !825 ; 2 uses
  %i.he = extractvalue { ptr, i64 } %i.hd, 0      ; 4 uses
  %i.hf = extractvalue { ptr, i64 } %i.hd, 1      ; 3 uses
  %i.hg = load i64, ptr %i.cc, align 8, !alias.scope !826, !noalias !812, !noundef !4
  %i.hh = add i64 %i.hg, %i.gx                    ; 2 uses
  %i.hi = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef %i.hh), !noalias !827 ; 2 uses
  %i.hj = extractvalue { ptr, i64 } %i.hi, 0      ; 4 uses
  %i.hk = extractvalue { ptr, i64 } %i.hi, 1      ; 3 uses
  %i.hl = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %i.hh), !noalias !827 ; 2 uses
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0      ; 4 uses
  %i.hn = extractvalue { ptr, i64 } %i.hl, 1      ; 3 uses
  %i.ho = load i8, ptr %i.gu, align 1, !noalias !812, !noundef !4
  %i.hp = load i8, ptr %i.gv, align 1, !noalias !812, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ]
  %.not23.i = icmp eq i64 %i.hc, 0
  br i1 %.not23.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.hq = icmp ugt i64 %i.hc, 2
  br i1 %i.hq, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !812
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hr = load i32, ptr %i.hb, align 4, !noalias !812, !noundef !4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !noalias !812, !noundef !4
  %i.hu = add i32 %i.ht, %i.hr
  %i.hv = mul i32 %i.hu, 5
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !noalias !812, !noundef !4
  %i.hy = mul i32 %i.hx, 6
  %i.hz = add i32 %i.hv, %i.hy
  %.not24.i = icmp eq i64 %i.hk, 0
  br i1 %.not24.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !812
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ia = icmp ugt i64 %i.hk, 2
  br i1 %i.ia, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !812
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ib = load i32, ptr %i.hj, align 4, !noalias !812, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !noalias !812, !noundef !4
  %i.ie = add i32 %i.id, %i.ib
  %i.if = mul i32 %i.ie, 5
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !noalias !812, !noundef !4
  %i.ii = mul i32 %i.ih, 6
  %.not25.i = icmp eq i64 %i.hf, 0
  br i1 %.not25.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !812
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ij = icmp ugt i64 %i.hf, 2
  br i1 %i.ij, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.ai
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !812
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ik = load i32, ptr %i.he, align 4, !noalias !812, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.im = load i32, ptr %i.il, align 4, !noalias !812, !noundef !4
  %i.in = add i32 %i.im, %i.ik
  %i.io = mul i32 %i.in, 5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !812, !noundef !4
  %i.ir = mul i32 %i.iq, 6
  %i.is = add i32 %i.io, %i.ir                    ; 2 uses
  %.not26.i = icmp eq i64 %i.hn, 0
  br i1 %.not26.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !812
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.it = icmp ugt i64 %i.hn, 2
  br i1 %i.it, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !812
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.iu = load i32, ptr %i.hm, align 4, !noalias !812, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.iw = load i32, ptr %i.iv, align 4, !noalias !812, !noundef !4
  %i.ix = add i32 %i.iw, %i.iu
  %i.iy = mul i32 %i.ix, 5
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !noalias !812, !noundef !4
  %i.jb = mul i32 %i.ja, 6
  %i.jc = add i32 %i.iy, %i.jb                    ; 2 uses
  %i.jd = add i32 %i.hz, %i.is
  %i.je = zext i8 %i.ho to i32
  %i.jf = mul i32 %i.jd, %i.je
  %i.jg = add i32 %i.ii, 256
  %i.jh = add i32 %i.jg, %i.if
  %i.ji = add i32 %i.jh, %i.jf
  %i.jj = add i32 %i.ji, %i.jc
  %i.jk = lshr i32 %i.jj, 9
  store i32 %i.jk, ptr %i.gq, align 4, !noalias !812
  %i.jl = zext i8 %i.hp to i32
  %i.jm = mul i32 %i.is, %i.jl
  %i.jn = add i32 %i.jm, 128
  %i.jo = add i32 %i.jn, %i.jc
  %i.jp = lshr i32 %i.jo, 8
  store i32 %i.jp, ptr %i.gr, align 4, !noalias !812
  %i.jq = load i64, ptr %i.bp, align 8, !alias.scope !819, !noalias !812, !noundef !4 ; 2 uses
  %i.jr = load i64, ptr %i.bq, align 8, !alias.scope !819, !noalias !812, !noundef !4
  %i.js = icmp ult i64 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !812
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.aq, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not43 = icmp eq i64 %i.dq, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not43, label %._crit_edge271, label %bb.n

.lr.ph265:                                        ; preds = %.split, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.014.0264 = phi i64 [ %i.jt, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %i.jt = add nuw nsw i64 %.sroa.014.0264, 1      ; 2 uses
  %i.ju = add nuw nsw i64 %.sroa.014.0264, %.sroa.011.0268 ; 8 uses
  br i1 %.not42, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.lr.ph265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.jv = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju), !noalias !828 ; 2 uses
  %i.jw = extractvalue { ptr, i64 } %i.jv, 0      ; 3 uses
  br i1 %i.bm, label %bb.au, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !828
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jx = extractvalue { ptr, i64 } %i.jv, 1      ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.jx
  br i1 %.not.i, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !828
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jw) ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.co, ptr noundef nonnull %i.jw, ptr noundef nonnull %i.jy)
  %.sroa.075.0.copyload = load ptr, ptr %i.s, align 8, !noalias !829 ; 9 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !829 ; 9 uses
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !829 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !829 ; 7 uses
  %i.jz = icmp ult i64 %.sroa.578.0.copyload, %.sroa.7.0.copyload
  br i1 %i.jz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.477.0.copyload) ]
  %i.ka = sub nuw i64 %.sroa.7.0.copyload, %.sroa.578.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.ka, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph
  %i.kb = shl i64 %.sroa.578.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kb
  %i.kc = shl i64 %.sroa.7.0.copyload, 2
  %scevgep528 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kc
  %scevgep529 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0.copyload
  %scevgep530 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.7.0.copyload
  %bound0 = icmp ult ptr %scevgep, %scevgep530
  %bound1 = icmp ult ptr %scevgep529, %scevgep528
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ka, -8                      ; 3 uses
  %i.kd = add i64 %.sroa.578.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ke = add nuw i64 %.sroa.578.0.copyload, %index ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.ke ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %wide.load = load <4 x i8>, ptr %i.kg, align 1, !alias.scope !830
  %wide.load531 = load <4 x i8>, ptr %i.kh, align 1, !alias.scope !830
  %i.ki = zext <4 x i8> %wide.load to <4 x i32>
  %i.kj = zext <4 x i8> %wide.load531 to <4 x i32>
  %i.kk = shl nuw nsw <4 x i32> %i.ki, splat (i32 4)
  %i.kl = shl nuw nsw <4 x i32> %i.kj, splat (i32 4)
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <4 x i32> %i.kk, ptr %i.kf, align 4, !alias.scope !831, !noalias !830
  store <4 x i32> %i.kl, ptr %i.km, align 4, !alias.scope !831, !noalias !830
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, %middle.block
  %.sroa.578.0262.ph = phi i64 [ %.sroa.578.0.copyload, %vector.memcheck ], [ %.sroa.578.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph ], [ %i.kd, %middle.block ] ; 4 uses
  %i.ko = sub i64 %.sroa.7.0.copyload, %.sroa.578.0262.ph
  %xtraiter653 = and i64 %i.ko, 3                 ; 2 uses
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br i1 %lcmp.mod654.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol
  %.sroa.578.0262.prol = phi i64 [ %i.kr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ] ; 3 uses
  %prol.iter655 = phi i64 [ %prol.iter655.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262.prol
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262.prol
  %i.kr = add nuw i64 %.sroa.578.0262.prol, 1     ; 2 uses
  %i.ks = load i8, ptr %i.kq, align 1, !noundef !4
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  store i32 %i.ku, ptr %i.kp, align 4
  %prol.iter655.next = add i64 %prol.iter655, 1   ; 2 uses
  %prol.iter655.cmp.not = icmp eq i64 %prol.iter655.next, %xtraiter653
  br i1 %prol.iter655.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, !llvm.loop !778

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader
  %.sroa.578.0262.unr = phi i64 [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ], [ %i.kr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ]
  %i.kv = sub i64 %.sroa.578.0262.ph, %.sroa.7.0.copyload
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55
  %.sroa.578.0262 = phi i64 [ %i.lr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55 ], [ %.sroa.578.0262.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262
  %i.kz = add nuw i64 %.sroa.578.0262, 1          ; 2 uses
  %i.la = load i8, ptr %i.ky, align 1, !noundef !4
  %i.lb = zext i8 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.lb, 4
  store i32 %i.lc, ptr %i.kx, align 4
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.kz
  %i.lf = add nuw i64 %.sroa.578.0262, 2          ; 2 uses
  %i.lg = load i8, ptr %i.le, align 1, !noundef !4
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 4
  store i32 %i.li, ptr %i.ld, align 4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lf
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.lf
  %i.ll = add nuw i64 %.sroa.578.0262, 3          ; 2 uses
  %i.lm = load i8, ptr %i.lk, align 1, !noundef !4
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 4
  store i32 %i.lo, ptr %i.lj, align 4
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ll
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.ll
  %i.lr = add nuw i64 %.sroa.578.0262, 4          ; 2 uses
  %i.ls = load i8, ptr %i.lq, align 1, !noundef !4
  %i.lt = zext i8 %i.ls to i32
  %i.lu = shl nuw nsw i32 %i.lt, 4
  store i32 %i.lu, ptr %i.lp, align 4
  %exitcond351.not.3 = icmp eq i64 %i.lr, %.sroa.7.0.copyload
  br i1 %exitcond351.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, !llvm.loop !779

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, %middle.block, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit

bb.ax:                                            ; preds = %.lr.ph265
  %i.lv = add i64 %i.ju, 2                        ; 2 uses
  %i.lw = urem i64 %i.lv, 3                       ; 2 uses
  %i.lx = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.lw ; 7 uses
  %i.ly = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.lw ; 7 uses
  br i1 %i.ci, label %bb.az, label %bb.ay, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.be, %bb.ba, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.lz = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0      ; 2 uses
  %i.mb = icmp ult i64 %i.ju, %i.ae
  br i1 %i.mb, label %bb.bh, label %bb.bg, !prof !19

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.cj, label %bb.bf, label %bb.ba, !prof !8

bb.az:                                            ; preds = %bb.ax
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.lx, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ly, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %4, i64 noundef %i.lv, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  %i.mc = urem i64 %i.ju, 3                       ; 2 uses
  %i.md = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mc ; 6 uses
  %i.me = add i64 %i.ju, 1
  %i.mf = urem i64 %i.me, 3                       ; 2 uses
  %i.mg = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mf ; 6 uses
  %i.mh = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mc ; 6 uses
  %i.mi = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mf ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.mj = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ju), !noalias !833 ; 2 uses
  %i.mk = extractvalue { ptr, i64 } %i.mj, 0      ; 2 uses
  %i.ml = extractvalue { ptr, i64 } %i.mj, 1      ; 4 uses
  br i1 %.not272, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.ba
  %i.mm = call i64 @llvm.umin.i64(i64 %i.ml, i64 %i.cy) ; 2 uses
  %min.iters.check533 = icmp ult i64 %i.mm, 4
  br i1 %min.iters.check533, label %.lr.ph261.preheader580, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph261.preheader
  %i.mn = call i64 @llvm.umin.i64(i64 %i.mm, i64 384)
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 2 uses
  %i.mp = and i64 %i.mo, 3                        ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  %i.mr = select i1 %i.mq, i64 4, i64 %i.mp
  %n.vec535 = sub nsw i64 %i.mo, %i.mr            ; 2 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next557, %vector.body536 ] ; 11 uses
  %i.ms = or disjoint i64 %index537, 1            ; 6 uses
  %i.mt = or disjoint i64 %index537, 2            ; 6 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index537
  %wide.load538 = load <4 x i32>, ptr %i.mu, align 4, !noalias !833
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %index537
  %wide.load539 = load <4 x i32>, ptr %i.mv, align 4, !noalias !833
  %i.mw = add <4 x i32> %wide.load539, %wide.load538
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mt
  %wide.load540 = load <4 x i32>, ptr %i.mx, align 4, !noalias !833
  %i.my = add <4 x i32> %i.mw, %wide.load540
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.mt
  %wide.load541 = load <4 x i32>, ptr %i.mz, align 4, !noalias !833
  %i.na = add <4 x i32> %i.my, %wide.load541
  %i.nb = mul <4 x i32> %i.na, splat (i32 3)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index537
  %wide.load542 = load <4 x i32>, ptr %i.nc, align 4, !noalias !833
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %index537
  %wide.load543 = load <4 x i32>, ptr %i.nd, align 4, !noalias !833
  %i.ne = add <4 x i32> %wide.load543, %wide.load542
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mt
  %wide.load544 = load <4 x i32>, ptr %i.nf, align 4, !noalias !833
  %i.ng = add <4 x i32> %i.ne, %wide.load544
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.mt
  %wide.load545 = load <4 x i32>, ptr %i.nh, align 4, !noalias !833
  %i.ni = add <4 x i32> %i.ng, %wide.load545
  %i.nj = mul <4 x i32> %i.ni, splat (i32 3)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index537
  %wide.load546 = load <4 x i32>, ptr %i.nk, align 4, !noalias !833
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ms
  %wide.load547 = load <4 x i32>, ptr %i.nl, align 4, !noalias !833
  %i.nm = add <4 x i32> %wide.load547, %wide.load546
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.ms
  %wide.load548 = load <4 x i32>, ptr %i.nn, align 4, !noalias !833
  %i.no = add <4 x i32> %i.nm, %wide.load548
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.ms
  %wide.load549 = load <4 x i32>, ptr %i.np, align 4, !noalias !833
  %i.nq = add <4 x i32> %i.no, %wide.load549
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.mt
  %wide.load550 = load <4 x i32>, ptr %i.nr, align 4, !noalias !833
  %i.ns = add <4 x i32> %i.nq, %wide.load550
  %i.nt = shl <4 x i32> %i.ns, splat (i32 2)
  %i.nu = add <4 x i32> %i.nt, %i.nj
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index537
  %wide.load551 = load <4 x i32>, ptr %i.nv, align 4, !noalias !833
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ms
  %wide.load552 = load <4 x i32>, ptr %i.nw, align 4, !noalias !833
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ms
  %wide.load553 = load <4 x i32>, ptr %i.nx, align 4, !noalias !833
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ms
  %wide.load554 = load <4 x i32>, ptr %i.ny, align 4, !noalias !833
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mt
  %wide.load555 = load <4 x i32>, ptr %i.nz, align 4, !noalias !833
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mk, i64 %index537
  %wide.load556 = load <4 x i8>, ptr %i.oa, align 1, !noalias !833
  %i.ob = zext <4 x i8> %wide.load556 to <4 x i32>
  %i.oc = mul <4 x i32> %i.nu, %i.ob
  %i.od = add <4 x i32> %wide.load552, %wide.load551
  %i.oe = add <4 x i32> %i.od, %wide.load553
  %i.of = add <4 x i32> %i.oe, %wide.load554
  %i.og = add <4 x i32> %i.of, %wide.load555
  %i.oh = shl <4 x i32> %i.og, splat (i32 2)
  %i.oi = add <4 x i32> %i.nb, splat (i32 256)
  %i.oj = add <4 x i32> %i.oi, %i.oh
  %i.ok = add <4 x i32> %i.oj, %i.oc
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index537
  %i.om = lshr <4 x i32> %i.ok, splat (i32 9)
  store <4 x i32> %i.om, ptr %i.ol, align 4, !alias.scope !832
  %index.next557 = add nuw i64 %index537, 4       ; 2 uses
  %i.on = icmp eq i64 %index.next557, %n.vec535
  br i1 %i.on, label %.lr.ph261.preheader580, label %vector.body536, !llvm.loop !784

.lr.ph261.preheader580:                           ; preds = %vector.body536, %.lr.ph261.preheader
  %.sroa.0.0.i260.ph = phi i64 [ 0, %.lr.ph261.preheader ], [ %n.vec535, %vector.body536 ]
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader580, %bb.be
  %.sroa.0.0.i260 = phi i64 [ %i.oo, %bb.be ], [ %.sroa.0.0.i260.ph, %.lr.ph261.preheader580 ] ; 12 uses
  %i.oo = add nuw nsw i64 %.sroa.0.0.i260, 1      ; 8 uses
  %i.op = add nuw nsw i64 %.sroa.0.0.i260, 2      ; 7 uses
  %exitcond348.not = icmp eq i64 %.sroa.0.0.i260, 384
  br i1 %exitcond348.not, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph261
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.op, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !833
  unreachable

bb.bc:                                            ; preds = %.lr.ph261
  %exitcond349.not = icmp eq i64 %.sroa.0.0.i260, %i.ml
  br i1 %exitcond349.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ml, i64 noundef %i.ml, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !833
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.sroa.0.0.i260
  %i.or = load i32, ptr %i.oq, align 4, !noalias !833, !noundef !4
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %.sroa.0.0.i260
  %i.ot = load i32, ptr %i.os, align 4, !noalias !833, !noundef !4
  %i.ou = add i32 %i.ot, %i.or
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.op
  %i.ow = load i32, ptr %i.ov, align 4, !noalias !833, !noundef !4
  %i.ox = add i32 %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.op
  %i.oz = load i32, ptr %i.oy, align 4, !noalias !833, !noundef !4
  %i.pa = add i32 %i.ox, %i.oz
  %i.pb = mul i32 %i.pa, 3
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.sroa.0.0.i260
  %i.pd = load i32, ptr %i.pc, align 4, !noalias !833, !noundef !4
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.sroa.0.0.i260
  %i.pf = load i32, ptr %i.pe, align 4, !noalias !833, !noundef !4
  %i.pg = add i32 %i.pf, %i.pd
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.op
  %i.pi = load i32, ptr %i.ph, align 4, !noalias !833, !noundef !4
  %i.pj = add i32 %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.op
  %i.pl = load i32, ptr %i.pk, align 4, !noalias !833, !noundef !4
  %i.pm = add i32 %i.pj, %i.pl
  %i.pn = mul i32 %i.pm, 3
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.sroa.0.0.i260
  %i.pp = load i32, ptr %i.po, align 4, !noalias !833, !noundef !4
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.oo
  %i.pr = load i32, ptr %i.pq, align 4, !noalias !833, !noundef !4
  %i.ps = add i32 %i.pr, %i.pp
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.oo
  %i.pu = load i32, ptr %i.pt, align 4, !noalias !833, !noundef !4
  %i.pv = add i32 %i.ps, %i.pu
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.oo
  %i.px = load i32, ptr %i.pw, align 4, !noalias !833, !noundef !4
  %i.py = add i32 %i.pv, %i.px
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.op
  %i.qa = load i32, ptr %i.pz, align 4, !noalias !833, !noundef !4
  %i.qb = add i32 %i.py, %i.qa
  %i.qc = shl i32 %i.qb, 2
  %i.qd = add i32 %i.qc, %i.pn
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.sroa.0.0.i260
  %i.qf = load i32, ptr %i.qe, align 4, !noalias !833, !noundef !4
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.oo
  %i.qh = load i32, ptr %i.qg, align 4, !noalias !833, !noundef !4
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.oo
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !833, !noundef !4
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.oo
  %i.ql = load i32, ptr %i.qk, align 4, !noalias !833, !noundef !4
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.op
  %i.qn = load i32, ptr %i.qm, align 4, !noalias !833, !noundef !4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sroa.0.0.i260
  %i.qp = load i8, ptr %i.qo, align 1, !noalias !833, !noundef !4
  %i.qq = zext i8 %i.qp to i32
  %i.qr = mul i32 %i.qd, %i.qq
  %i.qs = add i32 %i.qh, %i.qf
  %i.qt = add i32 %i.qs, %i.qj
  %i.qu = add i32 %i.qt, %i.ql
  %i.qv = add i32 %i.qu, %i.qn
  %i.qw = shl i32 %i.qv, 2
  %i.qx = add i32 %i.pb, 256
  %i.qy = add i32 %i.qx, %i.qw
  %i.qz = add i32 %i.qy, %i.qr
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i260
  %i.rb = lshr i32 %i.qz, 9
  store i32 %i.rb, ptr %i.ra, align 4, !alias.scope !832
  %exitcond350.not = icmp eq i64 %i.oo, %i.ac
  br i1 %exitcond350.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261, !llvm.loop !785

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.rc = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  %i.rd = load i64, ptr %i.cw, align 8, !noundef !4
  %i.re = mul i64 %i.rd, %i.ju
  %i.rf = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0264 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !noundef !4 ; 2 uses
  %i.rk = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i48 = icmp ugt i64 %i.ac, %i.rc
  br i1 %.not.i48, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.rc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !834
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ac
  %.not6.i49 = icmp ugt i64 %i.ac, %i.rj
  br i1 %.not6.i49, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.rj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !834
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !834
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.ac
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.rn, ptr noundef nonnull readonly %i.ma, ptr noundef nonnull readonly %i.rl), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !835
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.rh, ptr noundef nonnull readonly %i.rm, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !835
  %.sroa.0101.0.copyload = load ptr, ptr %i.m, align 8, !noalias !834 ; 2 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !834
  %.sroa.6107.0.copyload = load ptr, ptr %.sroa.6107.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.7109.0.copyload = load ptr, ptr %.sroa.7109.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.8111.0.copyload = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !noalias !834
  %.sroa.9113.0.copyload = load i64, ptr %.sroa.9113.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %.sroa.11114.0.copyload = load i64, ptr %.sroa.11114.0..sroa_idx, align 8, !noalias !834 ; 2 uses
  %i.ro = icmp ult i64 %.sroa.9113.0.copyload, %.sroa.11114.0.copyload
  br i1 %i.ro, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6107.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7109.0.copyload) ]
  %i.rp = trunc i64 %i.rk to i32
  %i.rq = and i32 %i.rp, 31
  %notmask.i = shl nsw i32 -1, %i.rq
  %i.rr = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9113.0263 = phi i64 [ %.sroa.9113.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.ry, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rs = add i64 %.sroa.9113.0263, %.sroa.5105.0.copyload ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload, i64 %i.rs
  %i.ru = add i64 %.sroa.9113.0263, %.sroa.8111.0.copyload ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7109.0.copyload, i64 %i.ru
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6107.0.copyload, i64 %i.ru
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.4103.0.copyload, i64 %i.rs
  %i.ry = add i64 %.sroa.9113.0263, 1             ; 2 uses
  %i.rz = load i8, ptr %i.rx, align 1, !noundef !4
  %i.sa = load i32, ptr %i.rw, align 4, !noundef !4
  %i.sb = load i32, ptr %i.rv, align 4, !noundef !4
  %i.sc = zext i8 %i.rz to i32
  %i.sd = mul i32 %i.sa, %i.cp
  %i.se = mul nsw i32 %i.cx, %i.sc
  %i.sf = mul i32 %i.sb, %i.ct
  %i.sg = add i32 %i.sd, 1024
  %i.sh = add i32 %i.sg, %i.se
  %i.si = add i32 %i.sh, %i.sf
  %i.sj = ashr i32 %i.si, 11
  %i.sk = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.sj, i32 noundef 0, i32 noundef %i.rr)
  %i.sl = trunc i32 %i.sk to i8
  store i8 %i.sl, ptr %i.rt, align 1
  %exitcond352.not = icmp eq i64 %i.ry, %.sroa.11114.0.copyload
  br i1 %exitcond352.not, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filterhECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEINtB13_4IterhEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond353.not = icmp eq i64 %i.jt, %umax
  br i1 %exitcond353.not, label %._crit_edge, label %.lr.ph265
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif(i8 noundef %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 11 uses
  %i.n = alloca [272 x i8], align 8               ; 19 uses
  %i.o = alloca [272 x i8], align 8               ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [1536 x i8], align 4              ; 8 uses
  %i.v = alloca [4632 x i8], align 4              ; 9 uses
  %i.w = alloca [4632 x i8], align 4              ; 8 uses
  %i.x = alloca [1536 x i8], align 4              ; 6 uses
  %i.y = alloca [1536 x i8], align 4              ; 8 uses
  %i.z = alloca [3088 x i8], align 4              ; 6 uses
  %i.aa = alloca [3088 x i8], align 4             ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 36 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1544) %i.af, i8 0, i64 1544, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.aa, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.z, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.y, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.x, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4632) %i.w, i8 0, i64 4632, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 1544
  %.sroa.01.0.extract.trunc = zext i16 %1 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.v, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.u, i8 0, i64 1536, i1 false)
  %i.ai = zext i8 %0 to i64                       ; 2 uses
  %i.aj = icmp ult i8 %0, 16
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @3, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !noundef !4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 496 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  switch i64 %i.ar, label %bb.d [
    i64 8, label %.thread
    i64 10, label %bb.f
    i64 12, label %bb.e
  ], !prof !16

.thread:                                          ; preds = %bb.b
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread, %bb.e
  %.sroa.02.0120 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 3 uses
  %.sroa.05.0 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 2 uses
  %i.as = add nsw i8 %0, -10
  %.not = icmp ult i8 %i.as, 4                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.at = and i8 %0, 14
  %.not42 = icmp eq i8 %i.at, 14                  ; 2 uses
  br i1 %.not42, label %.split266, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  call void %.sroa.05.0(ptr noalias nofree noundef nonnull align 4 %i.aa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.z, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.av, i64 noundef %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.az, i64 noundef %i.bb, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.al), !callees !17
  br label %bb.g

.split266:                                        ; preds = %bb.m, %bb.g
  %i.bc = lshr i64 %i.ae, 1
  %.sroa.05.0.i.i = sub nuw i64 %i.ae, %i.bc      ; 2 uses
  %.not43267 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not43267, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %.split266
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = load i64, ptr %i.bj, align 8            ; 5 uses
  %i.bl = add i64 %i.ac, 3                        ; 6 uses
  %.not.i47 = icmp ugt i64 %i.bl, 386
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bm = icmp ult i64 %i.ac, 385                 ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ch = add i64 %4, 1                           ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, %i.bg
  %i.cj = icmp ugt i64 %i.ch, %i.bk
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch
  %i.cl = sub nuw i64 %i.bg, %i.ch
  %i.cm = sub nuw i64 %i.bk, %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ch
  %.not272 = icmp eq i64 %i.ac, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %sext = shl i32 %.sroa.01.0.extract.trunc, 24
  %i.cp = ashr exact i32 %sext, 24                ; 2 uses
  %i.cq = ashr i16 %1, 8
  %i.cr = sext i16 %i.cq to i32                   ; 2 uses
  %i.cs = add nsw i32 %i.cp, %i.cr
  %i.ct = sub nsw i32 128, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %6, align 8, !nonnull !4, !align !15
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.8111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.9113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %.sroa.11114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.cx = shl nsw i32 %i.cr, 4
  %i.cy = add i64 %i.ac, -1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.cz = add i64 %4, 1                           ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.dd = icmp ugt i64 %i.cz, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.df = load i64, ptr %i.de, align 8, !noundef !4 ; 4 uses
  %i.dg = icmp ugt i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.l, label %bb.m, !prof !8

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.df, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !4, !noundef !4
  %i.dj = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cz ; 2 uses
  %i.dl = sub nuw i64 %i.dc, %i.cz                ; 2 uses
  %i.dm = sub nuw i64 %i.df, %i.cz                ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cz ; 2 uses
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.w, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.v, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dm, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.ag, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.ah, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dn, i64 noundef %i.dm, i64 noundef %4, i64 noundef 1, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  br label %.split266

._crit_edge271:                                   ; preds = %._crit_edge, %.split266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret void

bb.n:                                             ; preds = %.lr.ph270, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph270 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.sroa.016.0269 = phi i64 [ %.sroa.05.0.i.i, %.lr.ph270 ], [ %i.dq, %._crit_edge ]
  %.sroa.011.0268 = phi i64 [ 0, %.lr.ph270 ], [ %i.dp, %._crit_edge ] ; 7 uses
  %i.do = icmp ult i64 %indvars.iv, 2
  %umax = select i1 %i.do, i64 1, i64 2
  %i.dp = add i64 %.sroa.011.0268, 2              ; 2 uses
  %i.dq = add i64 %.sroa.016.0269, -1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  br i1 %.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dr = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0268), !noalias !938 ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0      ; 3 uses
  br i1 %i.bm, label %bb.q, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !938
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1      ; 2 uses
  %.not.i44 = icmp ugt i64 %i.ac, %i.dt
  br i1 %.not.i44, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !938
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.du)
  %.sroa.079.0.copyload = load ptr, ptr %i.r, align 8, !noalias !939 ; 9 uses
  %.sroa.481.0.copyload = load ptr, ptr %.sroa.481.0..sroa_idx, align 8, !noalias !939 ; 9 uses
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !939 ; 8 uses
  %.sroa.784.0.copyload = load i64, ptr %.sroa.784.0..sroa_idx, align 8, !noalias !939 ; 7 uses
  %i.dv = icmp ult i64 %.sroa.583.0.copyload, %.sroa.784.0.copyload
  br i1 %i.dv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.079.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.481.0.copyload) ]
  %i.dw = sub nuw i64 %.sroa.784.0.copyload, %.sroa.583.0.copyload ; 3 uses
  %min.iters.check569 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check569, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.memcheck560

vector.memcheck560:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %i.dx = shl i64 %.sroa.583.0.copyload, 2
  %scevgep561 = getelementptr i8, ptr %.sroa.079.0.copyload, i64 %i.dx
  %i.dy = shl i64 %.sroa.784.0.copyload, 2
  %scevgep562 = getelementptr i8, ptr %.sroa.079.0.copyload, i64 %i.dy
  %i.dz = shl i64 %.sroa.583.0.copyload, 1
  %scevgep563 = getelementptr i8, ptr %.sroa.481.0.copyload, i64 %i.dz
  %i.ea = shl i64 %.sroa.784.0.copyload, 1
  %scevgep564 = getelementptr i8, ptr %.sroa.481.0.copyload, i64 %i.ea
  %bound0565 = icmp ult ptr %scevgep561, %scevgep564
  %bound1566 = icmp ult ptr %scevgep563, %scevgep562
  %found.conflict567 = and i1 %bound0565, %bound1566
  br i1 %found.conflict567, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph570

vector.ph570:                                     ; preds = %vector.memcheck560
  %n.vec571 = and i64 %i.dw, -8                   ; 3 uses
  %i.eb = add i64 %.sroa.583.0.copyload, %n.vec571
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next576, %vector.body572 ] ; 2 uses
  %i.ec = add nuw i64 %.sroa.583.0.copyload, %index573 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %i.ec ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %wide.load574 = load <4 x i16>, ptr %i.ee, align 2, !alias.scope !940
  %wide.load575 = load <4 x i16>, ptr %i.ef, align 2, !alias.scope !940
  %i.eg = zext <4 x i16> %wide.load574 to <4 x i32>
  %i.eh = zext <4 x i16> %wide.load575 to <4 x i32>
  %i.ei = shl nuw nsw <4 x i32> %i.eg, splat (i32 4)
  %i.ej = shl nuw nsw <4 x i32> %i.eh, splat (i32 4)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x i32> %i.ei, ptr %i.ed, align 4, !alias.scope !941, !noalias !940
  store <4 x i32> %i.ej, ptr %i.ek, align 4, !alias.scope !941, !noalias !940
  %index.next576 = add nuw i64 %index573, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next576, %n.vec571
  br i1 %i.el, label %middle.block577, label %vector.body572, !llvm.loop !843

middle.block577:                                  ; preds = %vector.body572
  %cmp.n578 = icmp eq i64 %i.dw, %n.vec571
  br i1 %cmp.n578, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %vector.memcheck560, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %middle.block577
  %.sroa.583.0259.ph = phi i64 [ %.sroa.583.0.copyload, %vector.memcheck560 ], [ %.sroa.583.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.eb, %middle.block577 ] ; 4 uses
  %i.em = sub i64 %.sroa.784.0.copyload, %.sroa.583.0259.ph
  %xtraiter = and i64 %i.em, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol
  %.sroa.583.0259.prol = phi i64 [ %i.ep, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ %.sroa.583.0259.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %.sroa.583.0259.prol
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %.sroa.583.0259.prol
  %i.ep = add nuw i64 %.sroa.583.0259.prol, 1     ; 2 uses
  %i.eq = load i16, ptr %i.eo, align 2, !noundef !4
  %i.er = zext i16 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 4
  store i32 %i.es, ptr %i.en, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, !llvm.loop !844

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.583.0259.unr = phi i64 [ %.sroa.583.0259.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.ep, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.et = sub i64 %.sroa.583.0259.ph, %.sroa.784.0.copyload
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.583.0259 = phi i64 [ %i.fp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.583.0259.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %.sroa.583.0259
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %.sroa.583.0259
  %i.ex = add nuw i64 %.sroa.583.0259, 1          ; 2 uses
  %i.ey = load i16, ptr %i.ew, align 2, !noundef !4
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 4
  store i32 %i.fa, ptr %i.ev, align 4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.ex
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %i.ex
  %i.fd = add nuw i64 %.sroa.583.0259, 2          ; 2 uses
  %i.fe = load i16, ptr %i.fc, align 2, !noundef !4
  %i.ff = zext i16 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 4
  store i32 %i.fg, ptr %i.fb, align 4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.fd
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %i.fd
  %i.fj = add nuw i64 %.sroa.583.0259, 3          ; 2 uses
  %i.fk = load i16, ptr %i.fi, align 2, !noundef !4
  %i.fl = zext i16 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 4
  store i32 %i.fm, ptr %i.fh, align 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.079.0.copyload, i64 %i.fj
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.481.0.copyload, i64 %i.fj
  %i.fp = add nuw i64 %.sroa.583.0259, 4          ; 2 uses
  %i.fq = load i16, ptr %i.fo, align 2, !noundef !4
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 4
  store i32 %i.fs, ptr %i.fn, align 4
  %exitcond.not.3 = icmp eq i64 %i.fp, %.sroa.784.0.copyload
  br i1 %exitcond.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !845

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block577, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.split

.split:                                           ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46
  %storemerge = phi ptr [ %i.x, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit ], [ %i.y, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit46 ]
  store ptr %i.y, ptr %i.t, align 8
  store i64 384, ptr %i.ce, align 8
  store ptr %storemerge, ptr %i.cf, align 8
  store i64 384, ptr %i.cg, align 8
  %.not273 = icmp eq i64 %i.ae, %.sroa.011.0268
  br i1 %.not273, label %._crit_edge, label %.lr.ph265

bb.t:                                             ; preds = %bb.n
  %i.ft = lshr exact i64 %.sroa.011.0268, 1
  %i.fu = and i64 %i.ft, 1                        ; 3 uses
  %i.fv = xor i64 %i.fu, 1                        ; 2 uses
  %i.fw = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.fv ; 2 uses
  call void %.sroa.05.0(ptr noalias nofree noundef nonnull align 4 %i.fw, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.fx, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.be, i64 noundef %i.bg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bi, i64 noundef %i.bk, i64 noundef %4, i64 noundef %i.dp, i64 noundef %i.ac, i32 noundef %i.al), !callees !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fy = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %.sroa.011.0268), !noalias !942 ; 2 uses
  %i.fz = extractvalue { ptr, i64 } %i.fy, 0      ; 3 uses
  %i.ga = or disjoint i64 %.sroa.011.0268, 1
  %i.gb = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.ga), !noalias !942 ; 2 uses
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0      ; 3 uses
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1      ; 2 uses
  br i1 %.not.i47, label %bb.u, label %bb.v, !prof !8

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bl, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28, !noalias !942
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ge = extractvalue { ptr, i64 } %i.fy, 1      ; 2 uses
  %i.gf = getelementptr inbounds nuw [1544 x i8], ptr %i.z, i64 %i.fu
  %i.gg = getelementptr inbounds nuw [1544 x i8], ptr %i.aa, i64 %i.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !944
  store ptr %i.gg, ptr %i.l, align 8, !noalias !945
  store i64 %i.bl, ptr %.sroa.486.0..sroa_idx, align 8, !noalias !945
  store i64 3, ptr %.sroa.587.0..sroa_idx, align 8, !noalias !945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !944
  store ptr %i.fw, ptr %i.k, align 8, !alias.scope !946, !noalias !947
  store i64 %i.bl, ptr %.sroa.489.0..sroa_idx, align 8, !alias.scope !946, !noalias !947
  store i64 3, ptr %.sroa.590.0..sroa_idx, align 8, !alias.scope !946, !noalias !947
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !949
  store ptr %i.gf, ptr %i.j, align 8, !noalias !950
  store i64 %i.bl, ptr %.sroa.492.0..sroa_idx, align 8, !noalias !950
  store i64 3, ptr %.sroa.593.0..sroa_idx, align 8, !noalias !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !949
  store ptr %i.fx, ptr %i.i, align 8, !alias.scope !951, !noalias !952
  store i64 %i.bl, ptr %.sroa.495.0..sroa_idx, align 8, !alias.scope !951, !noalias !952
  store i64 3, ptr %.sroa.596.0..sroa_idx, align 8, !alias.scope !951, !noalias !952
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7WindowsmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i), !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !949
  %.not20.i = icmp ugt i64 %i.ac, %i.ge
  br i1 %.not20.i, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ge, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28, !noalias !942
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.ac
  %.not21.i = icmp ugt i64 %i.ac, %i.gd
  br i1 %.not21.i, label %bb.y, label %bb.z, !prof !8

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !942
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  br i1 %i.bm, label %bb.ab, label %bb.aa, !prof !19

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !942
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !954
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.fz, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gi), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !954
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 4 %i.y, ptr noundef nonnull %i.bn, ptr noundef nonnull align 4 %i.x, ptr noundef nonnull %i.bo), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !956
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEB10_EIBN_INtB13_4ItertEB1E_EEINtB5_7ZipImplBW_B1A_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false), !noalias !958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !959, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !956
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7WindowsmEB10_EBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !957
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMutmEB14_EIBN_INtB17_4ItertEB1I_EEIBN_IBN_INtB17_7WindowsmEB2a_EB26_EEINtB5_7ZipImplBW_B22_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.n, ptr noundef nonnull align 8 dereferenceable(272) %i.o, i64 272, i1 false), !noalias !943
  %i.gj = load i64, ptr %i.bp, align 8, !alias.scope !962, !noalias !955, !noundef !4 ; 2 uses
  %i.gk = load i64, ptr %i.bq, align 8, !alias.scope !962, !noalias !955, !noundef !4
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

.lr.ph:                                           ; preds = %bb.ab, %bb.aq
  %i.gm = phi i64 [ %i.js, %bb.aq ], [ %i.gj, %bb.ab ] ; 3 uses
  %i.gn = add nuw i64 %i.gm, 1
  store i64 %i.gn, ptr %i.bp, align 8, !alias.scope !962, !noalias !955
  %i.go = load i64, ptr %i.br, align 8, !alias.scope !963, !noalias !955, !noundef !4
  %i.gp = add i64 %i.go, %i.gm                    ; 2 uses
  %i.gq = load i64, ptr %i.bs, align 8, !alias.scope !964, !noalias !955, !noundef !4
  %i.gr = add i64 %i.gq, %i.gp                    ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !964, !noalias !955, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i.i.i.i, i64 %i.gr
  %.val.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !964, !noalias !955, !nonnull !4, !noundef !4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.gr
  %i.gu = load i64, ptr %i.bv, align 8, !alias.scope !965, !noalias !955, !noundef !4
  %i.gv = add i64 %i.gu, %i.gp                    ; 2 uses
  %.val1.i.i1.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !965, !noalias !955, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i1.i.i.i, i64 %i.gv
  %.val.i.i2.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !965, !noalias !955, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i2.i.i.i, i64 %i.gv
  %i.gy = load i64, ptr %i.by, align 8, !alias.scope !966, !noalias !955, !noundef !4
  %i.gz = add i64 %i.gy, %i.gm                    ; 2 uses
  %i.ha = load i64, ptr %i.bz, align 8, !alias.scope !967, !noalias !955, !noundef !4
  %i.hb = add i64 %i.ha, %i.gz                    ; 2 uses
  %i.hc = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.bx, i64 noundef %i.hb), !noalias !968 ; 2 uses
  %i.hd = extractvalue { ptr, i64 } %i.hc, 0      ; 4 uses
  %i.he = extractvalue { ptr, i64 } %i.hc, 1      ; 3 uses
  %i.hf = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca, i64 noundef %i.hb), !noalias !968 ; 2 uses
  %i.hg = extractvalue { ptr, i64 } %i.hf, 0      ; 4 uses
  %i.hh = extractvalue { ptr, i64 } %i.hf, 1      ; 3 uses
  %i.hi = load i64, ptr %i.cc, align 8, !alias.scope !969, !noalias !955, !noundef !4
  %i.hj = add i64 %i.hi, %i.gz                    ; 2 uses
  %i.hk = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cb, i64 noundef %i.hj), !noalias !970 ; 2 uses
  %i.hl = extractvalue { ptr, i64 } %i.hk, 0      ; 4 uses
  %i.hm = extractvalue { ptr, i64 } %i.hk, 1      ; 3 uses
  %i.hn = call { ptr, i64 } @_RNvXsY_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_7WindowsmENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %i.hj), !noalias !970 ; 2 uses
  %i.ho = extractvalue { ptr, i64 } %i.hn, 0      ; 4 uses
  %i.hp = extractvalue { ptr, i64 } %i.hn, 1      ; 3 uses
  %i.hq = load i16, ptr %i.gw, align 2, !noalias !955, !noundef !4
  %i.hr = load i16, ptr %i.gx, align 2, !noalias !955, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hd) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hg) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hl) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %.not23.i = icmp eq i64 %i.he, 0
  br i1 %.not23.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.hs = icmp ugt i64 %i.he, 2
  br i1 %i.hs, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !955
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ht = load i32, ptr %i.hd, align 4, !noalias !955, !noundef !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hv = load i32, ptr %i.hu, align 4, !noalias !955, !noundef !4
  %i.hw = add i32 %i.hv, %i.ht
  %i.hx = mul i32 %i.hw, 5
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !noalias !955, !noundef !4
  %i.ia = mul i32 %i.hz, 6
  %i.ib = add i32 %i.hx, %i.ia
  %.not24.i = icmp eq i64 %i.hm, 0
  br i1 %.not24.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ac
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28, !noalias !955
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ic = icmp ugt i64 %i.hm, 2
  br i1 %i.ic, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28, !noalias !955
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.id = load i32, ptr %i.hl, align 4, !noalias !955, !noundef !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.if = load i32, ptr %i.ie, align 4, !noalias !955, !noundef !4
  %i.ig = add i32 %i.if, %i.id
  %i.ih = mul i32 %i.ig, 5
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !noalias !955, !noundef !4
  %i.ik = mul i32 %i.ij, 6
  %.not25.i = icmp eq i64 %i.hh, 0
  br i1 %.not25.i, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28, !noalias !955
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.il = icmp ugt i64 %i.hh, 2
  br i1 %i.il, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.ai
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !955
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.im = load i32, ptr %i.hg, align 4, !noalias !955, !noundef !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.io = load i32, ptr %i.in, align 4, !noalias !955, !noundef !4
  %i.ip = add i32 %i.io, %i.im
  %i.iq = mul i32 %i.ip, 5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !noalias !955, !noundef !4
  %i.it = mul i32 %i.is, 6
  %i.iu = add i32 %i.iq, %i.it                    ; 2 uses
  %.not26.i = icmp eq i64 %i.hp, 0
  br i1 %.not26.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !955
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.iv = icmp ugt i64 %i.hp, 2
  br i1 %i.iv, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28, !noalias !955
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.iw = load i32, ptr %i.ho, align 4, !noalias !955, !noundef !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.iy = load i32, ptr %i.ix, align 4, !noalias !955, !noundef !4
  %i.iz = add i32 %i.iy, %i.iw
  %i.ja = mul i32 %i.iz, 5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !noalias !955, !noundef !4
  %i.jd = mul i32 %i.jc, 6
  %i.je = add i32 %i.ja, %i.jd                    ; 2 uses
  %i.jf = add i32 %i.ib, %i.iu
  %i.jg = zext i16 %i.hq to i32
  %i.jh = mul i32 %i.jf, %i.jg
  %i.ji = add i32 %i.ik, 256
  %i.jj = add i32 %i.ji, %i.ih
  %i.jk = add i32 %i.jj, %i.jh
  %i.jl = add i32 %i.jk, %i.je
  %i.jm = lshr i32 %i.jl, 9
  store i32 %i.jm, ptr %i.gs, align 4, !noalias !955
  %i.jn = zext i16 %i.hr to i32
  %i.jo = mul i32 %i.iu, %i.jn
  %i.jp = add i32 %i.jo, 128
  %i.jq = add i32 %i.jp, %i.je
  %i.jr = lshr i32 %i.jq, 8
  store i32 %i.jr, ptr %i.gt, align 4, !noalias !955
  %i.js = load i64, ptr %i.bp, align 8, !alias.scope !962, !noalias !955, !noundef !4 ; 2 uses
  %i.jt = load i64, ptr %i.bq, align 8, !alias.scope !962, !noalias !955, !noundef !4
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef %i.hp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28, !noalias !955
  unreachable

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r2_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.aq, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.split

._crit_edge:                                      ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not43 = icmp eq i64 %i.dq, 0
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %.not43, label %._crit_edge271, label %bb.n

.lr.ph265:                                        ; preds = %.split, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.014.0264 = phi i64 [ %i.jv, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit ], [ 0, %.split ] ; 3 uses
  %i.jv = add nuw nsw i64 %.sroa.014.0264, 1      ; 2 uses
  %i.jw = add nuw nsw i64 %.sroa.014.0264, %.sroa.011.0268 ; 8 uses
  br i1 %.not42, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.lr.ph265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.jx = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw), !noalias !971 ; 2 uses
  %i.jy = extractvalue { ptr, i64 } %i.jx, 0      ; 3 uses
  br i1 %i.bm, label %bb.au, label %bb.at, !prof !19

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !971
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.jz = extractvalue { ptr, i64 } %i.jx, 1      ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.jz
  br i1 %.not.i, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.jz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28, !noalias !971
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.ac
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.co, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.ka)
  %.sroa.075.0.copyload = load ptr, ptr %i.s, align 8, !noalias !972 ; 9 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !972 ; 9 uses
  %.sroa.578.0.copyload = load i64, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !972 ; 8 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !972 ; 7 uses
  %i.kb = icmp ult i64 %.sroa.578.0.copyload, %.sroa.7.0.copyload
  br i1 %i.kb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.477.0.copyload) ]
  %i.kc = sub nuw i64 %.sroa.7.0.copyload, %.sroa.578.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.kc, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph
  %i.kd = shl i64 %.sroa.578.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.kd
  %i.ke = shl i64 %.sroa.7.0.copyload, 2
  %scevgep528 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.ke
  %i.kf = shl i64 %.sroa.578.0.copyload, 1
  %scevgep529 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.kf
  %i.kg = shl i64 %.sroa.7.0.copyload, 1
  %scevgep530 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.kg
  %bound0 = icmp ult ptr %scevgep, %scevgep530
  %bound1 = icmp ult ptr %scevgep529, %scevgep528
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kc, -8                      ; 3 uses
  %i.kh = add i64 %.sroa.578.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.578.0.copyload, %index ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.ki ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %wide.load = load <4 x i16>, ptr %i.kk, align 2, !alias.scope !973
  %wide.load531 = load <4 x i16>, ptr %i.kl, align 2, !alias.scope !973
  %i.km = zext <4 x i16> %wide.load to <4 x i32>
  %i.kn = zext <4 x i16> %wide.load531 to <4 x i32>
  %i.ko = shl nuw nsw <4 x i32> %i.km, splat (i32 4)
  %i.kp = shl nuw nsw <4 x i32> %i.kn, splat (i32 4)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <4 x i32> %i.ko, ptr %i.kj, align 4, !alias.scope !974, !noalias !973
  store <4 x i32> %i.kp, ptr %i.kq, align 4, !alias.scope !974, !noalias !973
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kr = icmp eq i64 %index.next, %n.vec
  br i1 %i.kr, label %middle.block, label %vector.body, !llvm.loop !920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph, %middle.block
  %.sroa.578.0262.ph = phi i64 [ %.sroa.578.0.copyload, %vector.memcheck ], [ %.sroa.578.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.lr.ph ], [ %i.kh, %middle.block ] ; 4 uses
  %i.ks = sub i64 %.sroa.7.0.copyload, %.sroa.578.0262.ph
  %xtraiter653 = and i64 %i.ks, 3                 ; 2 uses
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br i1 %lcmp.mod654.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol
  %.sroa.578.0262.prol = phi i64 [ %i.kv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ] ; 3 uses
  %prol.iter655 = phi i64 [ %prol.iter655.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262.prol
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262.prol
  %i.kv = add nuw i64 %.sroa.578.0262.prol, 1     ; 2 uses
  %i.kw = load i16, ptr %i.ku, align 2, !noundef !4
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 4
  store i32 %i.ky, ptr %i.kt, align 4
  %prol.iter655.next = add i64 %prol.iter655, 1   ; 2 uses
  %prol.iter655.cmp.not = icmp eq i64 %prol.iter655.next, %xtraiter653
  br i1 %prol.iter655.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, !llvm.loop !921

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader
  %.sroa.578.0262.unr = phi i64 [ %.sroa.578.0262.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.preheader ], [ %i.kv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol ]
  %i.kz = sub i64 %.sroa.578.0262.ph, %.sroa.7.0.copyload
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55
  %.sroa.578.0262 = phi i64 [ %i.lv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55 ], [ %.sroa.578.0262.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.578.0262
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.578.0262
  %i.ld = add nuw i64 %.sroa.578.0262, 1          ; 2 uses
  %i.le = load i16, ptr %i.lc, align 2, !noundef !4
  %i.lf = zext i16 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, 4
  store i32 %i.lg, ptr %i.lb, align 4
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ld
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.ld
  %i.lj = add nuw i64 %.sroa.578.0262, 2          ; 2 uses
  %i.lk = load i16, ptr %i.li, align 2, !noundef !4
  %i.ll = zext i16 %i.lk to i32
  %i.lm = shl nuw nsw i32 %i.ll, 4
  store i32 %i.lm, ptr %i.lh, align 4
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lj
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.lj
  %i.lp = add nuw i64 %.sroa.578.0262, 3          ; 2 uses
  %i.lq = load i16, ptr %i.lo, align 2, !noundef !4
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw nsw i32 %i.lr, 4
  store i32 %i.ls, ptr %i.ln, align 4
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.lp
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.477.0.copyload, i64 %i.lp
  %i.lv = add nuw i64 %.sroa.578.0262, 4          ; 2 uses
  %i.lw = load i16, ptr %i.lu, align 2, !noundef !4
  %i.lx = zext i16 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 4
  store i32 %i.ly, ptr %i.lt, align 4
  %exitcond351.not.3 = icmp eq i64 %i.lv, %.sroa.7.0.copyload
  br i1 %exitcond351.not.3, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, !llvm.loop !922

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCs2mu2Cb9JdUH_5ravif.exit55, %middle.block, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit

bb.ax:                                            ; preds = %.lr.ph265
  %i.lz = add i64 %i.jw, 2                        ; 2 uses
  %i.ma = urem i64 %i.lz, 3                       ; 2 uses
  %i.mb = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.ma ; 7 uses
  %i.mc = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.ma ; 7 uses
  br i1 %i.ci, label %bb.az, label %bb.ay, !prof !8

_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.be, %bb.ba, %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r0_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.md = call { ptr, i64 } @_RNvXsd_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) ; 2 uses
  %i.me = extractvalue { ptr, i64 } %i.md, 0      ; 2 uses
  %i.mf = icmp ult i64 %i.jw, %i.ae
  br i1 %i.mf, label %bb.bh, label %bb.bg, !prof !19

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.cj, label %bb.bf, label %bb.ba, !prof !8

bb.az:                                            ; preds = %bb.ax
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void %.sroa.02.0120(ptr noalias nofree noundef nonnull align 4 %i.mb, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.mc, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.cm, i64 noundef %4, i64 noundef %i.lz, i64 noundef %i.ac, i32 noundef %i.an), !callees !18
  %i.mg = urem i64 %i.jw, 3                       ; 2 uses
  %i.mh = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mg ; 6 uses
  %i.mi = add i64 %i.jw, 1
  %i.mj = urem i64 %i.mi, 3                       ; 2 uses
  %i.mk = getelementptr inbounds nuw [1544 x i8], ptr %i.w, i64 %i.mj ; 6 uses
  %i.ml = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mg ; 6 uses
  %i.mm = getelementptr inbounds nuw [1544 x i8], ptr %i.v, i64 %i.mj ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.mn = call { ptr, i64 } @_RNvMsc_NtCsko5zPvjVG7R_7v_frame5planeINtB5_10PlaneSlicetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i64 noundef %i.jw), !noalias !976 ; 2 uses
  %i.mo = extractvalue { ptr, i64 } %i.mn, 0      ; 2 uses
  %i.mp = extractvalue { ptr, i64 } %i.mn, 1      ; 4 uses
  br i1 %.not272, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261.preheader

.lr.ph261.preheader:                              ; preds = %bb.ba
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.cy) ; 2 uses
  %min.iters.check533 = icmp ult i64 %i.mq, 4
  br i1 %min.iters.check533, label %.lr.ph261.preheader580, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph261.preheader
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mq, i64 384)
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 2 uses
  %i.mt = and i64 %i.ms, 3                        ; 2 uses
  %i.mu = icmp eq i64 %i.mt, 0
  %i.mv = select i1 %i.mu, i64 4, i64 %i.mt
  %n.vec535 = sub nsw i64 %i.ms, %i.mv            ; 2 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next557, %vector.body536 ] ; 11 uses
  %i.mw = or disjoint i64 %index537, 1            ; 6 uses
  %i.mx = or disjoint i64 %index537, 2            ; 6 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %index537
  %wide.load538 = load <4 x i32>, ptr %i.my, align 4, !noalias !976
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %index537
  %wide.load539 = load <4 x i32>, ptr %i.mz, align 4, !noalias !976
  %i.na = add <4 x i32> %wide.load539, %wide.load538
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mx
  %wide.load540 = load <4 x i32>, ptr %i.nb, align 4, !noalias !976
  %i.nc = add <4 x i32> %i.na, %wide.load540
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mx
  %wide.load541 = load <4 x i32>, ptr %i.nd, align 4, !noalias !976
  %i.ne = add <4 x i32> %i.nc, %wide.load541
  %i.nf = mul <4 x i32> %i.ne, splat (i32 3)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index537
  %wide.load542 = load <4 x i32>, ptr %i.ng, align 4, !noalias !976
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %index537
  %wide.load543 = load <4 x i32>, ptr %i.nh, align 4, !noalias !976
  %i.ni = add <4 x i32> %wide.load543, %wide.load542
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mx
  %wide.load544 = load <4 x i32>, ptr %i.nj, align 4, !noalias !976
  %i.nk = add <4 x i32> %i.ni, %wide.load544
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mx
  %wide.load545 = load <4 x i32>, ptr %i.nl, align 4, !noalias !976
  %i.nm = add <4 x i32> %i.nk, %wide.load545
  %i.nn = mul <4 x i32> %i.nm, splat (i32 3)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index537
  %wide.load546 = load <4 x i32>, ptr %i.no, align 4, !noalias !976
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mw
  %wide.load547 = load <4 x i32>, ptr %i.np, align 4, !noalias !976
  %i.nq = add <4 x i32> %wide.load547, %wide.load546
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mw
  %wide.load548 = load <4 x i32>, ptr %i.nr, align 4, !noalias !976
  %i.ns = add <4 x i32> %i.nq, %wide.load548
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mw
  %wide.load549 = load <4 x i32>, ptr %i.nt, align 4, !noalias !976
  %i.nu = add <4 x i32> %i.ns, %wide.load549
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mx
  %wide.load550 = load <4 x i32>, ptr %i.nv, align 4, !noalias !976
  %i.nw = add <4 x i32> %i.nu, %wide.load550
  %i.nx = shl <4 x i32> %i.nw, splat (i32 2)
  %i.ny = add <4 x i32> %i.nx, %i.nn
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %index537
  %wide.load551 = load <4 x i32>, ptr %i.nz, align 4, !noalias !976
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mw
  %wide.load552 = load <4 x i32>, ptr %i.oa, align 4, !noalias !976
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mw
  %wide.load553 = load <4 x i32>, ptr %i.ob, align 4, !noalias !976
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mw
  %wide.load554 = load <4 x i32>, ptr %i.oc, align 4, !noalias !976
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mx
  %wide.load555 = load <4 x i32>, ptr %i.od, align 4, !noalias !976
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %index537
  %wide.load556 = load <4 x i16>, ptr %i.oe, align 2, !noalias !976
  %i.of = zext <4 x i16> %wide.load556 to <4 x i32>
  %i.og = mul <4 x i32> %i.ny, %i.of
  %i.oh = add <4 x i32> %wide.load552, %wide.load551
  %i.oi = add <4 x i32> %i.oh, %wide.load553
  %i.oj = add <4 x i32> %i.oi, %wide.load554
  %i.ok = add <4 x i32> %i.oj, %wide.load555
  %i.ol = shl <4 x i32> %i.ok, splat (i32 2)
  %i.om = add <4 x i32> %i.nf, splat (i32 256)
  %i.on = add <4 x i32> %i.om, %i.ol
  %i.oo = add <4 x i32> %i.on, %i.og
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index537
  %i.oq = lshr <4 x i32> %i.oo, splat (i32 9)
  store <4 x i32> %i.oq, ptr %i.op, align 4, !alias.scope !975
  %index.next557 = add nuw i64 %index537, 4       ; 2 uses
  %i.or = icmp eq i64 %index.next557, %n.vec535
  br i1 %i.or, label %.lr.ph261.preheader580, label %vector.body536, !llvm.loop !927

.lr.ph261.preheader580:                           ; preds = %vector.body536, %.lr.ph261.preheader
  %.sroa.0.0.i260.ph = phi i64 [ 0, %.lr.ph261.preheader ], [ %n.vec535, %vector.body536 ]
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader580, %bb.be
  %.sroa.0.0.i260 = phi i64 [ %i.os, %bb.be ], [ %.sroa.0.0.i260.ph, %.lr.ph261.preheader580 ] ; 12 uses
  %i.os = add nuw nsw i64 %.sroa.0.0.i260, 1      ; 8 uses
  %i.ot = add nuw nsw i64 %.sroa.0.0.i260, 2      ; 7 uses
  %exitcond348.not = icmp eq i64 %.sroa.0.0.i260, 384
  br i1 %exitcond348.not, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph261
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ot, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !976
  unreachable

bb.bc:                                            ; preds = %.lr.ph261
  %exitcond349.not = icmp eq i64 %.sroa.0.0.i260, %i.mp
  br i1 %exitcond349.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mp, i64 noundef %i.mp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !976
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %.sroa.0.0.i260
  %i.ov = load i32, ptr %i.ou, align 4, !noalias !976, !noundef !4
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.sroa.0.0.i260
  %i.ox = load i32, ptr %i.ow, align 4, !noalias !976, !noundef !4
  %i.oy = add i32 %i.ox, %i.ov
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ot
  %i.pa = load i32, ptr %i.oz, align 4, !noalias !976, !noundef !4
  %i.pb = add i32 %i.oy, %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.ot
  %i.pd = load i32, ptr %i.pc, align 4, !noalias !976, !noundef !4
  %i.pe = add i32 %i.pb, %i.pd
  %i.pf = mul i32 %i.pe, 3
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.sroa.0.0.i260
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !976, !noundef !4
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %.sroa.0.0.i260
  %i.pj = load i32, ptr %i.pi, align 4, !noalias !976, !noundef !4
  %i.pk = add i32 %i.pj, %i.ph
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.ot
  %i.pm = load i32, ptr %i.pl, align 4, !noalias !976, !noundef !4
  %i.pn = add i32 %i.pk, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.ot
  %i.pp = load i32, ptr %i.po, align 4, !noalias !976, !noundef !4
  %i.pq = add i32 %i.pn, %i.pp
  %i.pr = mul i32 %i.pq, 3
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.sroa.0.0.i260
  %i.pt = load i32, ptr %i.ps, align 4, !noalias !976, !noundef !4
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.os
  %i.pv = load i32, ptr %i.pu, align 4, !noalias !976, !noundef !4
  %i.pw = add i32 %i.pv, %i.pt
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.os
  %i.py = load i32, ptr %i.px, align 4, !noalias !976, !noundef !4
  %i.pz = add i32 %i.pw, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.os
  %i.qb = load i32, ptr %i.qa, align 4, !noalias !976, !noundef !4
  %i.qc = add i32 %i.pz, %i.qb
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ot
  %i.qe = load i32, ptr %i.qd, align 4, !noalias !976, !noundef !4
  %i.qf = add i32 %i.qc, %i.qe
  %i.qg = shl i32 %i.qf, 2
  %i.qh = add i32 %i.qg, %i.pr
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %.sroa.0.0.i260
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !976, !noundef !4
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.os
  %i.ql = load i32, ptr %i.qk, align 4, !noalias !976, !noundef !4
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.os
  %i.qn = load i32, ptr %i.qm, align 4, !noalias !976, !noundef !4
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.os
  %i.qp = load i32, ptr %i.qo, align 4, !noalias !976, !noundef !4
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ot
  %i.qr = load i32, ptr %i.qq, align 4, !noalias !976, !noundef !4
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %.sroa.0.0.i260
  %i.qt = load i16, ptr %i.qs, align 2, !noalias !976, !noundef !4
  %i.qu = zext i16 %i.qt to i32
  %i.qv = mul i32 %i.qh, %i.qu
  %i.qw = add i32 %i.ql, %i.qj
  %i.qx = add i32 %i.qw, %i.qn
  %i.qy = add i32 %i.qx, %i.qp
  %i.qz = add i32 %i.qy, %i.qr
  %i.ra = shl i32 %i.qz, 2
  %i.rb = add i32 %i.pf, 256
  %i.rc = add i32 %i.rb, %i.ra
  %i.rd = add i32 %i.rc, %i.qv
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i260
  %i.rf = lshr i32 %i.rd, 9
  store i32 %i.rf, ptr %i.re, align 4, !alias.scope !975
  %exitcond350.not = icmp eq i64 %i.os, %i.ac
  br i1 %exitcond350.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph261, !llvm.loop !928

bb.bf:                                            ; preds = %bb.ay
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ch, i64 noundef %i.bk, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.bg:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.bh:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.rg = extractvalue { ptr, i64 } %i.md, 1      ; 2 uses
  %i.rh = load i64, ptr %i.cw, align 8, !noundef !4
  %i.ri = mul i64 %i.rh, %i.jw
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ri ; 2 uses
  %i.rk = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.014.0264 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !noundef !4 ; 2 uses
  %i.ro = load i64, ptr %i.aq, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i48 = icmp ugt i64 %i.ac, %i.rg
  br i1 %.not.i48, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 4611686018427387904) %i.rg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28, !noalias !977
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.ac
  %.not6.i49 = icmp ugt i64 %i.ac, %i.rn
  br i1 %.not6.i49, label %bb.bk, label %bb.bl, !prof !8

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef range(i64 0, 2305843009213693952) %i.rn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28, !noalias !977
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.bm, label %bb.bn, label %bb.bm, !prof !19

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28, !noalias !977
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.ac
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.rj, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !978
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 2 %i.rj, ptr noundef nonnull %i.rr, ptr noundef nonnull readonly align 2 %i.me, ptr noundef nonnull readonly %i.rp), !noalias !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !978
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.rl, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.co)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !978
  %.sroa.0101.0.copyload = load ptr, ptr %i.m, align 8, !noalias !977 ; 2 uses
  %.sroa.4103.0.copyload = load ptr, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.5105.0.copyload = load i64, ptr %.sroa.5105.0..sroa_idx, align 8, !noalias !977
  %.sroa.6107.0.copyload = load ptr, ptr %.sroa.6107.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.7109.0.copyload = load ptr, ptr %.sroa.7109.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.8111.0.copyload = load i64, ptr %.sroa.8111.0..sroa_idx, align 8, !noalias !977
  %.sroa.9113.0.copyload = load i64, ptr %.sroa.9113.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %.sroa.11114.0.copyload = load i64, ptr %.sroa.11114.0..sroa_idx, align 8, !noalias !977 ; 2 uses
  %i.rs = icmp ult i64 %.sroa.9113.0.copyload, %.sroa.11114.0.copyload
  br i1 %i.rs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0101.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4103.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6107.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7109.0.copyload) ]
  %i.rt = trunc i64 %i.ro to i32
  %i.ru = and i32 %i.rt, 31
  %notmask.i = shl nsw i32 -1, %i.ru
  %i.rv = xor i32 %notmask.i, -1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.9113.0263 = phi i64 [ %.sroa.9113.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph ], [ %i.sc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit ] ; 3 uses
  %i.rw = add i64 %.sroa.9113.0263, %.sroa.5105.0.copyload ; 2 uses
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0101.0.copyload, i64 %i.rw
  %i.ry = add i64 %.sroa.9113.0263, %.sroa.8111.0.copyload ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7109.0.copyload, i64 %i.ry
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6107.0.copyload, i64 %i.ry
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4103.0.copyload, i64 %i.rw
  %i.sc = add i64 %.sroa.9113.0263, 1             ; 2 uses
  %i.sd = load i16, ptr %i.sb, align 2, !noundef !4
  %i.se = load i32, ptr %i.sa, align 4, !noundef !4
  %i.sf = load i32, ptr %i.rz, align 4, !noundef !4
  %i.sg = zext i16 %i.sd to i32
  %i.sh = mul i32 %i.se, %i.cp
  %i.si = mul nsw i32 %i.cx, %i.sg
  %i.sj = mul i32 %i.sf, %i.ct
  %i.sk = add i32 %i.sh, 1024
  %i.sl = add i32 %i.sk, %i.si
  %i.sm = add i32 %i.sl, %i.sj
  %i.sn = ashr i32 %i.sm, 11
  %i.so = call noundef i32 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clamplECs2mu2Cb9JdUH_5ravif(i32 noundef %i.sn, i32 noundef 0, i32 noundef %i.rv)
  %i.sp = trunc i32 %i.so to i16
  store i16 %i.sp, ptr %i.rx, align 2
  %exitcond352.not = icmp eq i64 %i.sc, %.sroa.11114.0.copyload
  br i1 %exitcond352.not, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filter12apply_filtertECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuttEINtB13_4ItertEEIBN_IB1w_mEB1O_EEINtB5_7ZipImplBW_B1K_E4nextCs2mu2Cb9JdUH_5ravif.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond353.not = icmp eq i64 %i.jv, %umax
  br i1 %exitcond353.not, label %._crit_edge, label %.lr.ph265
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEEECs2mu2Cb9JdUH_5ravif(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !986, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !986, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 64) #27, !noalias !987
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i: ; preds = %bb.d, %bb.c
  %i.e = icmp eq i64 %i.c, %.16.val
  br i1 %i.e, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEEECs2mu2Cb9JdUH_5ravif(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.b
  %.sroa.0.012.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !994, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val8.i.i = load ptr, ptr %i.b, align 8, !alias.scope !994, !nonnull !4, !noundef !4
  %i.e = shl nuw nsw i64 %.val9.i.i, 1
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.e, i64 noundef 64) #27, !noalias !995
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEENtNtNtB7_3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecmEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state11MiTileStateECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #24
          to label %.body7.i unwind label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoEECs2mu2Cb9JdUH_5ravif.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling17tile_motion_stats14TileMEStatsMutEECs2mu2Cb9JdUH_5ravif.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdEEMmLUVy6d_5rav1e6tiling10tile_state14CodedBlockInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body7.i unwind label %bb.g
end_hunk_4
begin_hunk_5_@_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif:switch.lookup
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.y

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.w, %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorshECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @_RNvMs4_NtNtCsdEEMmLUVy6d_5rav1e7context10block_unitNtB5_11FrameBlocks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  invoke void @_RINvMNtNtCsdEEMmLUVy6d_5rav1e6tiling5tilerNtB3_10TilingInfo13tile_iter_muthECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(12536) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val3, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.o = mul nuw nsw i64 %.val3, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEEINtB2_12SpecFromIterBU_INtBX_18TileContextIterMuthEE9from_iterCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtCsfCiG4zJPfKh_5rayon3vec8IntoIterINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEENtNtB8_4iter16ParallelIterator8for_eachNCINvNtNtBM_3api9lookahead22compute_motion_vectorshE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.r = mul nuw nsw i64 %.val1, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorstECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @_RNvMs4_NtNtCsdEEMmLUVy6d_5rav1e7context10block_unitNtB5_11FrameBlocks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  invoke void @_RINvMNtNtCsdEEMmLUVy6d_5rav1e6tiling5tilerNtB3_10TilingInfo13tile_iter_muttECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(12536) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val3, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.o = mul nuw nsw i64 %.val3, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEEINtB2_12SpecFromIterBU_INtBX_18TileContextIterMuttEE9from_iterCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtCsfCiG4zJPfKh_5rayon3vec8IntoIterINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEENtNtB8_4iter16ParallelIterator8for_eachNCINvNtNtBM_3api9lookahead22compute_motion_vectorstE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.r = mul nuw nsw i64 %.val1, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 4 %4, i64 noundef range(i64 0, 2305843009213693952) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  %switch.ext31 = zext i8 %switch.load30 to i64
  %i.d = add nuw nsw i64 %switch.ext31, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitlEEINtNtB7_3map3MapINtBZ_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload20 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload21 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i32, ptr %i.r, align 4, !noalias !1109, !noundef !4 ; 2 uses
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.s = mul i32 %.val1.i.i.i.i.peel, %.sroa.01.0.peel
  %isneg.peel = icmp slt i32 %.val1.i.i.i.i.peel, 0
  %i.t = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.u = add i32 %i.t, %i.s
  %i.v = ashr i32 %i.u, %i.i
  store i32 %i.v, ptr %i.q, align 4
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.w = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.x = add i64 %.sroa.0.sroa.6.0.copyload, %i.w ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %.sroa.0.sroa.3.0.copyload21, %.sroa.0.sroa.0.0.copyload20
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.x, -8                       ; 4 uses
  %i.z = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.aa = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !noalias !1109 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.ad, align 4, !noalias !1109 ; 2 uses
  %i.ae = mul <4 x i32> %wide.load, %broadcast.splat
  %i.af = mul <4 x i32> %wide.load26, %broadcast.splat
  %i.ag = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.ah = icmp slt <4 x i32> %wide.load26, zeroinitializer
  %i.ai = select <4 x i1> %i.ag, <4 x i32> %broadcast.splat23, <4 x i32> zeroinitializer
  %i.aj = select <4 x i1> %i.ah, <4 x i32> %broadcast.splat23, <4 x i32> zeroinitializer
  %i.ak = add <4 x i32> %i.ai, %i.ae
  %i.al = add <4 x i32> %i.aj, %i.af
  %i.am = ashr <4 x i32> %i.ak, %broadcast.splat25
  %i.an = ashr <4 x i32> %i.al, %broadcast.splat25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %i.am, ptr %i.ab, align 4
  store <4 x i32> %i.an, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.z, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.aa, %middle.block ] ; 3 uses
  %i.aq = xor i64 %.sroa.8.015.ph, -1
  %i.ar = add i64 %.sroa.0.sroa.6.0.copyload, %i.aq
  %i.as = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.at = and i64 %i.as, 1
  %lcmp.mod.not.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.av = add i64 %.sroa.8.015.ph, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i32, ptr %i.aw, align 4, !noalias !1109, !noundef !4 ; 2 uses
  %i.ax = mul i32 %.val1.i.i.i.i.prol, %.sroa.01.0
  %isneg.prol = icmp slt i32 %.val1.i.i.i.i.prol, 0
  %i.ay = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = ashr i32 %i.az, %i.i
  store i32 %i.ba, ptr %i.au, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.av, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.bb = icmp eq i64 %i.ar, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bb, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i32, ptr %i.bd, align 4, !noalias !1109, !noundef !4 ; 2 uses
  %i.be = mul i32 %.val1.i.i.i.i, %.sroa.01.0
  %isneg = icmp slt i32 %.val1.i.i.i.i, 0
  %i.bf = select i1 %isneg, i32 %i.j, i32 0
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = ashr i32 %i.bg, %i.i
  store i32 %i.bh, ptr %i.bc, align 4
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bj = add i64 %.sroa.8.015, 2                 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i32, ptr %i.bk, align 4, !noalias !1109, !noundef !4 ; 2 uses
  %i.bl = mul i32 %.val1.i.i.i.i.1, %.sroa.01.0
  %isneg.1 = icmp slt i32 %.val1.i.i.i.i.1, 0
  %i.bm = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = ashr i32 %i.bn, %i.i
  store i32 %i.bo, ptr %i.bi, align 4
  %exitcond.not.1 = icmp eq i64 %i.bj, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1108

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 2 %4, i64 noundef range(i64 0, 4611686018427387904) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep28 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  %switch.ext30 = zext i8 %switch.load29 to i64
  %i.d = add nuw nsw i64 %switch.ext30, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitsEEINtNtB7_3map3MapINtBZ_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload20 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload21 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i16, ptr %i.r, align 2, !noalias !1119, !noundef !4 ; 2 uses
  %i.s = sext i16 %.val1.i.i.i.i.peel to i32
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.t = mul nsw i32 %i.s, %.sroa.01.0.peel
  %isneg.peel = icmp slt i16 %.val1.i.i.i.i.peel, 0
  %i.u = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = ashr i32 %i.v, %i.i
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.q, align 2
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.y = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.z = add i64 %.sroa.0.sroa.6.0.copyload, %i.y ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %.sroa.0.sroa.3.0.copyload21, %.sroa.0.sroa.0.0.copyload20
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.ab = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat25 = shufflevector <8 x i32> %broadcast.splatinsert24, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass
  %wide.load = load <8 x i16>, ptr %i.ae, align 2, !noalias !1119 ; 2 uses
  %i.af = sext <8 x i16> %wide.load to <8 x i32>
  %i.ag = mul nsw <8 x i32> %broadcast.splat, %i.af
  %i.ah = icmp slt <8 x i16> %wide.load, zeroinitializer
  %i.ai = select <8 x i1> %i.ah, <8 x i32> %broadcast.splat23, <8 x i32> zeroinitializer
  %i.aj = add nsw <8 x i32> %i.ag, %i.ai
  %i.ak = ashr <8 x i32> %i.aj, %broadcast.splat25
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ab, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ac, %middle.block ] ; 3 uses
  %i.an = xor i64 %.sroa.8.015.ph, -1
  %i.ao = add i64 %.sroa.0.sroa.6.0.copyload, %i.an
  %i.ap = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.aq = and i64 %i.ap, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.as = add i64 %.sroa.8.015.ph, 1
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i16, ptr %i.at, align 2, !noalias !1119, !noundef !4 ; 2 uses
  %i.au = sext i16 %.val1.i.i.i.i.prol to i32
  %i.av = mul nsw i32 %i.au, %.sroa.01.0
  %isneg.prol = icmp slt i16 %.val1.i.i.i.i.prol, 0
  %i.aw = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = ashr i32 %i.ax, %i.i
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %i.ar, align 2
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.ba = icmp eq i64 %i.ao, %.sroa.0.sroa.5.0.copyload
  br i1 %i.ba, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bk, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i16, ptr %i.bc, align 2, !noalias !1119, !noundef !4 ; 2 uses
  %i.bd = sext i16 %.val1.i.i.i.i to i32
  %i.be = mul nsw i32 %i.bd, %.sroa.01.0
  %isneg = icmp slt i16 %.val1.i.i.i.i, 0
  %i.bf = select i1 %isneg, i32 %i.j, i32 0
  %i.bg = add nsw i32 %i.be, %i.bf
  %i.bh = ashr i32 %i.bg, %i.i
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %i.bb, align 2
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bk = add i64 %.sroa.8.015, 2                 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i16, ptr %i.bl, align 2, !noalias !1119, !noundef !4 ; 2 uses
  %i.bm = sext i16 %.val1.i.i.i.i.1 to i32
  %i.bn = mul nsw i32 %i.bm, %.sroa.01.0
  %isneg.1 = icmp slt i16 %.val1.i.i.i.i.1, 0
  %i.bo = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bp = add nsw i32 %i.bn, %i.bo
  %i.bq = ashr i32 %i.bp, %i.i
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %i.bj, align 2
  %exitcond.not.1 = icmp eq i64 %i.bk, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1118

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatahE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload11 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload12 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload10 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.d = add i64 %i.b, %.sroa.65.0.copyload10     ; 2 uses
  %i.e = add i64 %i.c, %.sroa.0.0.copyload11
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = add i64 %i.c, %.sroa.41.0.copyload12
  %i.h = sub i64 %i.g, %i.d
  %diff.check13 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !noalias !1134
  %wide.load14 = load <4 x i32>, ptr %i.m, align 4, !noalias !1134
  %i.n = zext <4 x i32> %wide.load to <4 x i64>
  %i.o = zext <4 x i32> %wide.load14 to <4 x i64>
  %i.p = mul nuw <4 x i64> %i.o, %i.n
  %i.q = add nuw <4 x i64> %i.p, splat (i64 8192)
  %i.r = lshr <4 x i64> %i.q, splat (i64 14)      ; 2 uses
  %i.s = icmp eq <4 x i64> %i.r, zeroinitializer
  %i.t = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.r, <4 x i64> splat (i64 268435455))
  %i.u = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.v = select <4 x i1> %i.s, <4 x i32> splat (i32 1), <4 x i32> %i.u
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !noalias !1135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.i, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.y = phi i64 [ %i.am, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.aa = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.aa
  %.val13.i.i = load i32, ptr %i.ab, align 4, !noalias !1134, !noundef !4
  %.val14.i.i = load i32, ptr %i.ac, align 4, !noalias !1134, !noundef !4
  %i.ad = zext i32 %.val13.i.i to i64
  %i.ae = zext i32 %.val14.i.i to i64
  %i.af = mul nuw i64 %i.ae, %i.ad
  %i.ag = add nuw i64 %i.af, 8192
  %i.ah = lshr i64 %i.ag, 14                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.ah, i64 268435455)
  %i.aj = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ak = select i1 %i.ai, i32 1, i32 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.y
  store i32 %i.ak, ptr %i.al, align 4, !noalias !1135
  %i.am = add i64 %i.y, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1133

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1134
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatatE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload11 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload12 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload10 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.d = add i64 %i.b, %.sroa.65.0.copyload10     ; 2 uses
  %i.e = add i64 %i.c, %.sroa.0.0.copyload11
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = add i64 %i.c, %.sroa.41.0.copyload12
  %i.h = sub i64 %i.g, %i.d
  %diff.check13 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !noalias !1150
  %wide.load14 = load <4 x i32>, ptr %i.m, align 4, !noalias !1150
  %i.n = zext <4 x i32> %wide.load to <4 x i64>
  %i.o = zext <4 x i32> %wide.load14 to <4 x i64>
  %i.p = mul nuw <4 x i64> %i.o, %i.n
  %i.q = add nuw <4 x i64> %i.p, splat (i64 8192)
  %i.r = lshr <4 x i64> %i.q, splat (i64 14)      ; 2 uses
  %i.s = icmp eq <4 x i64> %i.r, zeroinitializer
  %i.t = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.r, <4 x i64> splat (i64 268435455))
  %i.u = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.v = select <4 x i1> %i.s, <4 x i32> splat (i32 1), <4 x i32> %i.u
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !noalias !1151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.i, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.y = phi i64 [ %i.am, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.aa = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.aa
  %.val13.i.i = load i32, ptr %i.ab, align 4, !noalias !1150, !noundef !4
  %.val14.i.i = load i32, ptr %i.ac, align 4, !noalias !1150, !noundef !4
  %i.ad = zext i32 %.val13.i.i to i64
  %i.ae = zext i32 %.val14.i.i to i64
  %i.af = mul nuw i64 %i.ae, %i.ad
  %i.ag = add nuw i64 %i.af, 8192
  %i.ah = lshr i64 %i.ag, 14                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.ah, i64 268435455)
  %i.aj = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ak = select i1 %i.ai, i32 1, i32 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.y
  store i32 %i.ak, ptr %i.al, align 4, !noalias !1151
  %i.am = add i64 %i.y, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1149

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1150
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i16 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItertEIB1e_lEENCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB1V_19QuantizationContext8quantizelE0ENtNtNtBa_6traits8iterator8Iterator4foldtNvYtNtNtBc_3cmp3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !21, !noundef !4
  %.val = load i32, ptr %i.b, align 4             ; 3 uses
  %i.c = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.neg = add i64 %.sroa.52.0.copyload, 1
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i64 %.sroa.6.0.copyload, %.neg
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %.sroa.0.017.i.i = phi i16 [ %1, %.lr.ph.i.i.new ], [ %..i.i.i.i.i.1, %bb.b ] ; 2 uses
  %.sroa.02.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.j, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.e = or disjoint i64 %.sroa.02.016.i.i, 1
  %i.f = add i64 %.sroa.02.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.f
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.f
  %.val13.i.i = load i16, ptr %i.g, align 2, !noalias !1157, !noundef !4
  %.val14.i.i = load i32, ptr %i.h, align 4, !noalias !1157, !noundef !4
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i, i1 false)
  %.not.i.i.i.i = icmp slt i32 %.sroa.0.0.i.i.i.i.i, %.val
  %i.i = tail call i16 @llvm.umax.i16(i16 %.val13.i.i, i16 %.sroa.0.017.i.i)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i, i16 %.sroa.0.017.i.i, i16 %i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.02.016.i.i, 2         ; 2 uses
  %i.k = add i64 %i.e, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i16, ptr %i.l, align 2, !noalias !1157, !noundef !4
  %.val14.i.i.1 = load i32, ptr %i.m, align 4, !noalias !1157, !noundef !4
  %.sroa.0.0.i.i.i.i.i.1 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i.1, i1 false)
  %.not.i.i.i.i.1 = icmp slt i32 %.sroa.0.0.i.i.i.i.i.1, %.val
  %i.n = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.1, i16 %..i.i.i.i.i)
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %..i.i.i.i.i, i16 %i.n ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.017.i.i.epil.init = phi i16 [ %1, %.lr.ph.i.i ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.o = add i64 %.sroa.02.016.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %.val13.i.i.epil = load i16, ptr %i.p, align 2, !noalias !1157, !noundef !4
  %.val14.i.i.epil = load i32, ptr %i.q, align 4, !noalias !1157, !noundef !4
  %.sroa.0.0.i.i.i.i.i.epil = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %.val14.i.i.epil, i1 false)
  %.not.i.i.i.i.epil = icmp slt i32 %.sroa.0.0.i.i.i.i.i.epil, %.val
  %i.r = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.epil, i16 %.sroa.0.017.i.i.epil.init)
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.epil, i16 %.sroa.0.017.i.i.epil.init, i16 %i.r
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i16 [ %1, %bb.a ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_lEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRlEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizelE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.epil.preheader ]
  ret i16 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i16 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItertEIB1e_sEENCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB1V_19QuantizationContext8quantizesE0ENtNtNtBa_6traits8iterator8Iterator4foldtNvYtNtNtBc_3cmp3Ord3maxECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i16 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !1163, !noundef !4
  %.val = load i16, ptr %i.b, align 2             ; 3 uses
  %i.c = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.neg = add i64 %.sroa.52.0.copyload, 1
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i64 %.sroa.6.0.copyload, %.neg
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %.sroa.0.017.i.i = phi i16 [ %1, %.lr.ph.i.i.new ], [ %..i.i.i.i.i.1, %bb.b ] ; 2 uses
  %.sroa.02.016.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.j, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.e = or disjoint i64 %.sroa.02.016.i.i, 1
  %i.f = add i64 %.sroa.02.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.f
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.f
  %.val13.i.i = load i16, ptr %i.g, align 2, !noalias !1164, !noundef !4
  %.val14.i.i = load i16, ptr %i.h, align 2, !noalias !1164, !noundef !4
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i, i1 false)
  %.not.i.i.i.i = icmp slt i16 %.sroa.0.0.i.i.i.i.i, %.val
  %i.i = tail call i16 @llvm.umax.i16(i16 %.val13.i.i, i16 %.sroa.0.017.i.i)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i, i16 %.sroa.0.017.i.i, i16 %i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.02.016.i.i, 2         ; 2 uses
  %i.k = add i64 %i.e, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i16, ptr %i.l, align 2, !noalias !1164, !noundef !4
  %.val14.i.i.1 = load i16, ptr %i.m, align 2, !noalias !1164, !noundef !4
  %.sroa.0.0.i.i.i.i.i.1 = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i.1, i1 false)
  %.not.i.i.i.i.1 = icmp slt i16 %.sroa.0.0.i.i.i.i.i.1, %.val
  %i.n = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.1, i16 %..i.i.i.i.i)
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.1, i16 %..i.i.i.i.i, i16 %i.n ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.017.i.i.epil.init = phi i16 [ %1, %.lr.ph.i.i ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.o = add i64 %.sroa.02.016.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.o
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload, i64 %i.o
  %.val13.i.i.epil = load i16, ptr %i.p, align 2, !noalias !1164, !noundef !4
  %.val14.i.i.epil = load i16, ptr %i.q, align 2, !noalias !1164, !noundef !4
  %.sroa.0.0.i.i.i.i.i.epil = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %.val14.i.i.epil, i1 false)
  %.not.i.i.i.i.epil = icmp slt i16 %.sroa.0.0.i.i.i.i.i.epil, %.val
  %i.r = tail call i16 @llvm.umax.i16(i16 %.val13.i.i.epil, i16 %.sroa.0.017.i.i.epil.init)
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.epil, i16 %.sroa.0.017.i.i.epil.init, i16 %i.r
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i16 [ %1, %bb.a ], [ %..i.i.i.i.i.1, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEIBX_sEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldTRtRsEttNCINvMs_NtCsdEEMmLUVy6d_5rav1e8quantizeNtB2M_19QuantizationContext8quantizesE0NvYtNtNtBb_3cmp3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.epil.preheader ]
  ret i16 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden i48 @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_INtNtNtBc_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB1l_EB1l_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00ENtNtNtBa_6traits8iterator8Iterator4foldINtNtB1Q_3rgb3RgbtENvYB4o_NtNtNtBc_3ops5arith3Add3addEB2N_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i48 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.a, label %bb.b, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.b = icmp eq ptr %.sroa.4.0.copyload, %.sroa.5.0.copyload
  br i1 %i.b, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 3 uses
  %i.f = lshr exact i64 %i.e, 2                   ; 2 uses
  %extract.t.i.i.i = trunc i48 %1 to i16          ; 2 uses
  %extract.i.i.i = lshr i48 %1, 16
  %extract.t23.i.i.i = trunc i48 %extract.i.i.i to i16 ; 2 uses
  %extract26.i.i.i = lshr i48 %1, 32
  %extract.t27.i.i.i = trunc nuw i48 %extract26.i.i.i to i16 ; 2 uses
  %i.g = icmp eq i64 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.f, 4611686018427387902
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %.sroa.05.0.off0.i.i.i = phi i16 [ %extract.t.i.i.i, %.new ], [ %i.x, %bb.e ]
  %.sroa.05.0.off16.i.i.i = phi i16 [ %extract.t23.i.i.i, %.new ], [ %i.y, %bb.e ]
  %.sroa.05.0.off32.i.i.i = phi i16 [ %extract.t27.i.i.i, %.new ], [ %i.z, %bb.e ]
  %.sroa.07.0.i.i.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1205, !noalias !1206, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1207, !noalias !1206, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1208, !noalias !1206, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.i to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.k to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i = zext i8 %i.m to i16
  %i.n = add i16 %.sroa.05.0.off0.i.i.i, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.o = add i16 %.sroa.05.0.off16.i.i.i, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i
  %i.p = add i16 %.sroa.05.0.off32.i.i.i, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1205, !noalias !1206, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1207, !noalias !1206, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !1208, !noalias !1206, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.s to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.u to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.1 = zext i8 %i.w to i16
  %i.x = add i16 %i.n, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.y = add i16 %i.o, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.z = add i16 %i.p, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.1 ; 3 uses
  %i.aa = add nuw i64 %.sroa.07.0.i.i.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.unr-lcssa, label %bb.e

.loopexit.i.i.i.unr-lcssa:                        ; preds = %bb.e
  %i.ab = and i64 %i.e, 4
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.unr-lcssa, %bb.d
  %.sroa.05.0.off0.i.i.i.epil.init = phi i16 [ %extract.t.i.i.i, %bb.d ], [ %i.x, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.05.0.off16.i.i.i.epil.init = phi i16 [ %extract.t23.i.i.i, %bb.d ], [ %i.y, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.05.0.off32.i.i.i.epil.init = phi i16 [ %extract.t27.i.i.i, %bb.d ], [ %i.z, %.loopexit.i.i.i.unr-lcssa ]
  %.sroa.07.0.i.i.i.epil.init = phi i64 [ 0, %bb.d ], [ %i.aa, %.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod52 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.07.0.i.i.i.epil.init ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1205, !noalias !1206, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !1207, !noalias !1206, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !1208, !noalias !1206, !noundef !4
  %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.ad to i16
  %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.af to i16
  %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.epil = zext i8 %i.ah to i16
  %i.ai = add i16 %.sroa.05.0.off0.i.i.i.epil.init, %.sroa.05.0.extract.trunc.i.i.i.i.i.i.i.i.epil
  %i.aj = add i16 %.sroa.05.0.off16.i.i.i.epil.init, %.sroa.05.2.extract.trunc.i.i.i.i.i.i.i.i.epil
  %i.ak = add i16 %.sroa.05.0.off32.i.i.i.epil.init, %.sroa.05.4.extract.trunc.i.i.i.i.i.i.i.i.epil
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa48 = phi i16 [ %i.x, %.loopexit.i.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ]
  %.lcssa47 = phi i16 [ %i.y, %.loopexit.i.i.i.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %.lcssa46 = phi i16 [ %i.z, %.loopexit.i.i.i.unr-lcssa ], [ %i.ak, %.epil.preheader ]
  %.sroa.39.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa46 to i48
  %.sroa.39.0.insert.shift.i.i.i.i.i.le.i.i.i = shl nuw i48 %.sroa.39.0.insert.ext.i.i.i.i.i.le.i.i.i, 32
  %.sroa.28.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa47 to i48
  %.sroa.28.0.insert.shift.i.i.i.i.i.le.i.i.i = shl nuw nsw i48 %.sroa.28.0.insert.ext.i.i.i.i.i.le.i.i.i, 16
  %.sroa.28.0.insert.insert.i.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.39.0.insert.shift.i.i.i.i.i.le.i.i.i, %.sroa.28.0.insert.shift.i.i.i.i.i.le.i.i.i
  %.sroa.07.0.insert.ext.i.i.i.i.i.le.i.i.i = zext i16 %.lcssa48 to i48
  %.sroa.07.0.insert.insert.i.i.i.i.i.le.i.i.i = or disjoint i48 %.sroa.28.0.insert.insert.i.i.i.i.i.le.i.i.i, %.sroa.07.0.insert.ext.i.i.i.i.i.le.i.i.i
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i48 [ %1, %bb.b ], [ %1, %bb.c ], [ %.sroa.07.0.insert.insert.i.i.i.i.i.le.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  %.not20.i.i = icmp eq ptr %.sroa.6.0.copyload, null
  br i1 %.not20.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBV_3rgb3RgbtEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2k_NtNtNtBb_3ops5arith3Add3addE0EB3x_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.al = icmp eq ptr %.sroa.6.0.copyload, %.sroa.7.0.copyload
  br i1 %i.al, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtB1v_3rgb3RgbtEQNCINvNtB7_3map8map_foldRB1q_B2S_B2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha23blur_transparent_pixels00NvYB2S_NtNtNtBb_3ops5arith3Add3addE0EB3U_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.an = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.ao = sub nuw i64 %i.am, %i.an                ; 3 uses
  %i.ap = lshr exact i64 %i.ao, 2                 ; 2 uses
  %extract.t.i21.i.i = trunc i48 %.sroa.01.0.i.i to i16 ; 2 uses
  %extract.i22.i.i = lshr i48 %.sroa.01.0.i.i, 16
  %extract.t23.i23.i.i = trunc i48 %extract.i22.i.i to i16 ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1W_B1T_3lenEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjEjNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0EB2T_4foldINtNtBc_3cmp11KeyAndValuejB3H_ENvYB4W_NtB4Z_3Ord3maxECs2mu2Cb9JdUH_5ravif:bb.a
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1299
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val.i.i.i = load i64, ptr %i.p, align 8, !noalias !1299, !noundef !4 ; 4 uses
  %i.q = icmp sgt i64 %.val.i.i.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i.i.i, ptr %i.m, align 8, !noalias !1300
  store i64 %.val.i.i.i, ptr %.sroa.6.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1300
  store i64 %.val.i.i.i, ptr %.sroa.7.24..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1300
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1301, !noalias !1302, !noundef !4
  %i.r = icmp ult i64 %.val.i.i.i, %.val1.i.i.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.a, ptr %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1298
  %i.s = add i64 %.sroa.0.0.i.i.i, 1
  %i.t = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENvMs_B1R_B1O_3lenEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejTjjEENCINvB1b_8map_foldB3K_B3k_B3k_NCINvNvB2H_10max_by_key3keyB3K_jNCINvNtCsdEEMmLUVy6d_5rav1e7encoder17encode_tile_grouptEs3_0E0NvYB3k_NtB3n_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnerhE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.07.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  %i.b = alloca [168 x i8], align 8               ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, i64 168, i1 false)
  %.sroa.42.8.copyload = load ptr, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1354, !noalias !1349, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1354, !noalias !1349, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1357, !noalias !1349, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1358
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1357, !noalias !1349 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1357, !noalias !1349, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1357, !noalias !1349, !noundef !4 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1357, !noalias !1349, !noundef !4 ; 2 uses
  %i.u = add nuw i64 %i.t, 1
  %i.v = add i64 %i.i, -1
  %i.w = icmp ne i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = udiv i64 %i.v, %i.u
  %i.y = add nuw i64 %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.z = sub i64 %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.z) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i.i.i.i.i, i64 48
  %.sroa.4.0..sroa_idx.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bo, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1359, !noalias !1349, !noundef !4 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1359, !noalias !1349, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1359, !noalias !1349
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1360 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1360 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1361, !noalias !1349, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1361, !noalias !1349
  store i8 0, ptr %i.j, align 8, !alias.scope !1361, !noalias !1349
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1362, !noalias !1349, !noundef !4 ; 5 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.as) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %i.av = select i1 %i.aq, i64 0, i64 %i.au       ; 3 uses
  %i.aw = extractvalue { i64, i1 } %i.at, 1
  %not..i.i.i.i.i.i = xor i1 %i.aq, true
  %i.ax = select i1 %not..i.i.i.i.i.i, i1 %i.aw, i1 false
  br i1 %i.ax, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !1362, !noalias !1349, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ab, align 8, !alias.scope !1362, !noalias !1349, !nonnull !4, !align !21, !noundef !4
  %i.bb = sub nuw i64 %i.ay, %i.av                ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  store ptr %i.bc, ptr %i.ab, align 8, !alias.scope !1362, !noalias !1349, !captures !25
  store i64 %i.bb, ptr %i.h, align 8, !alias.scope !1362, !noalias !1349
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.as
  %i.be = sub nuw i64 %i.bb, %i.as
  store ptr %i.bd, ptr %i.ab, align 8, !alias.scope !1362, !noalias !1349, !captures !25
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.bc, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1362, !noalias !1349
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bg), !noalias !1365
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1364
  %i.bi = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1366, !nonnull !4, !align !15, !noundef !4
  %i.bj = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1366, !nonnull !4, !align !15, !noundef !4
  %i.bk = load i8, ptr %.sroa.7.8.copyload, align 1, !range !26, !noalias !1366, !noundef !4
  %i.bl = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1366, !noundef !4
  %i.bm = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1366, !nonnull !4, !align !15, !noundef !4
  %i.bn = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1366, !noundef !4
  store ptr %i.bi, ptr %i.a, align 8, !noalias !1364
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1364
  store ptr %i.bm, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1364
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1364
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store i8 %i.bk, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store i64 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.07.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !1364
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store ptr %i.bh, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1364
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1363
  %i.bo = add i64 %i.ad, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnerhE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1349
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter11ChunksExactmEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNvMs0_NtNtB2Y_3api8internalINtB3F_12ContextInnertE24update_block_importances0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB5E_13FlattenCompatppE9iter_fold7flattenIBO_IBY_IB1q_IB1q_INtB1N_4ItermEIB6R_fEEIB2t_IB6R_B2U_EEEENCNCB3z_00EuNCINvNvXsi_B5E_B5R_B4P_4fold7flattenB6y_uNCINvNvB4P_8for_each4callTfxxENCB3z_s_0E0E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.07.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.a = alloca [160 x i8], align 8               ; 16 uses
  %i.b = alloca [168 x i8], align 8               ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, i64 168, i1 false)
  %.sroa.42.8.copyload = load ptr, ptr %0, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8.copyload = load ptr, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1417, !noalias !1412, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.val14.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1417, !noalias !1412, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.val14.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %.val14.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %bb.b, label %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #28, !noalias !1421
  unreachable

_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1420, !noalias !1412 ; 2 uses
  %i.i = udiv i64 %.val.i.i.i.i.i.i.i, %.val14.i.i.i.i.i.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1420, !noalias !1412, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.m = icmp ugt i64 %.val14.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 2 uses
  %i.p = add nuw i64 %i.o, 1
  %i.q = icmp ne i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %i.i, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1420, !noalias !1412, !noundef !4 ; 2 uses
  %i.u = add nuw i64 %i.t, 1
  %i.v = add i64 %i.i, -1
  %i.w = icmp ne i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = udiv i64 %i.v, %i.u
  %i.y = add nuw i64 %i.x, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ]
  %i.z = sub i64 %.val14.i.i.i.i.i, %.val.i.i.i.i.i
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.z) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i.i.i.i.i, i64 48
  %.sroa.4.0..sroa_idx.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.bo, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.ae = add nuw i64 %.sroa.01.025.i.i.i.i, 1    ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !alias.scope !1422, !noalias !1412, !noundef !4 ; 4 uses
  %i.ag = load i64, ptr %i.e, align 8, !alias.scope !1422, !noalias !1412, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !1422, !noalias !1412
  %i.aj = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.b, i64 noundef %i.af), !noalias !1423 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.af), !noalias !1423 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.617.0.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ undef, %bb.g ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.415.0.i.i.i.i = phi i64 [ %i.al, %bb.h ], [ undef, %bb.g ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ null, %bb.g ] ; 3 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !10, !alias.scope !1424, !noalias !1412, !noundef !4
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %i.ar = load i64, ptr %i.ac, align 8, !alias.scope !1424, !noalias !1412
  store i8 0, ptr %i.j, align 8, !alias.scope !1424, !noalias !1412
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1425, !noalias !1412, !noundef !4 ; 5 uses
  %i.at = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.as) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %i.av = select i1 %i.aq, i64 0, i64 %i.au       ; 3 uses
  %i.aw = extractvalue { i64, i1 } %i.at, 1
  %not..i.i.i.i.i.i = xor i1 %i.aq, true
  %i.ax = select i1 %not..i.i.i.i.i.i, i1 %i.aw, i1 false
  br i1 %i.ax, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412, !noundef !4 ; 2 uses
  %i.az = icmp ult i64 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !nonnull !4, !align !21, !noundef !4
  %i.bb = sub nuw i64 %i.ay, %i.av                ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.av ; 3 uses
  store ptr %i.bc, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !captures !25
  store i64 %i.bb, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.as
  %i.be = sub nuw i64 %i.bb, %i.as
  store ptr %i.bd, ptr %i.ab, align 8, !alias.scope !1425, !noalias !1412, !captures !25
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i: ; preds = %bb.k, %bb.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.ph.i.i.i.i = phi ptr [ %i.bc, %bb.k ], [ null, %bb.i ], [ null, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter11ChunksExactmEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  store i64 %.sink.i.i.i.i, ptr %i.h, align 8, !alias.scope !1425, !noalias !1412
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i, %bb.j
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ null, %bb.j ], [ %.sroa.0.1.i.i.i.ph.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.sink.split.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1427
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i) ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sroa.415.0.i.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.sroa.617.0.i.i.i.i
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.07.i.i.i.i.i.i.i, ptr noundef nonnull %.sink.i.i.i.i.i.i, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.5.0.i.i.i.i, ptr noundef nonnull %i.bg), !noalias !1428
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.48..48..sroa_idx12.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !1427
  %i.bi = load ptr, ptr %.sroa.42.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bj = load ptr, ptr %.sroa.6.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bk = load i8, ptr %.sroa.7.8.copyload, align 1, !range !26, !noalias !1429, !noundef !4
  %i.bl = load i64, ptr %.sroa.8.8.copyload, align 8, !noalias !1429, !noundef !4
  %i.bm = load ptr, ptr %.sroa.9.8.copyload, align 8, !noalias !1429, !nonnull !4, !align !15, !noundef !4
  %i.bn = load i64, ptr %.sroa.10.8.copyload, align 8, !noalias !1429, !noundef !4
  store ptr %i.bi, ptr %i.a, align 8, !noalias !1427
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i11.i.i.i.i, align 8, !noalias !1427
  store ptr %i.bm, ptr %.sroa.5.0..sroa_idx.i.i12.i.i.i.i, align 8, !noalias !1427
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i13.i.i.i.i, align 8, !noalias !1427
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 %i.bn, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i8 %i.bk, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 0, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.07.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !1427
  store ptr %.sroa.0.1.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store ptr %i.bh, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i64 1, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1427
  call void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i.i.i.i.i), !noalias !1426
  %i.bo = add i64 %i.ad, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ae, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.g

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter11ChunksExactmEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRSmRSfERSB2D_EEINtB3Z_3MapIBT_IB19_IB19_INtB1w_4ItermEIB50_fEEIB2c_IB50_B2D_EEEENCNCNvMs0_NtNtB2H_3api8internalINtB5N_12ContextInnertE24update_block_importances00EuNCB5H_0NCINvNvMsg_NtB7_7flattenINtB7h_13FlattenCompatppE9iter_fold7flattenB4A_uNCINvNvXsi_B7h_B7u_B3g_4fold7flattenB4A_uNCINvNvB3g_8for_each4callTfxxENCB5H_s_0E0E0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_5slice4iter11ChunksExactNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1412
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.51.0.copyload = load ptr, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.62.0.copyload = load i64, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.83.0.copyload = load ptr, ptr %.sroa.83.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.45.8.copyload = load ptr, ptr %0, align 8 ; 8 uses
  %.sroa.66.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.66.8.copyload = load ptr, ptr %.sroa.66.8..sroa_idx, align 8 ; 7 uses
  %.sroa.78.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.78.8.copyload = load i64, ptr %.sroa.78.8..sroa_idx, align 8 ; 2 uses
  %.sroa.89.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.89.8.copyload = load i64, ptr %.sroa.89.8..sroa_idx, align 8
  %.sroa.910.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.910.8.copyload = load i64, ptr %.sroa.910.8..sroa_idx, align 8
  %.sroa.1011.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1011.8.copyload = load i8, ptr %.sroa.1011.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.83.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.d = ptrtoint ptr %.sroa.9.0.copyload to i64  ; 2 uses
  %i.e = ptrtoint ptr %.sroa.83.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc nuw i8 %.sroa.11.0.copyload to i1  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %.sroa.9.0.copyload, %.sroa.83.0.copyload
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = add nuw i64 %.sroa.10.0.copyload, 1
  %i.k = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = udiv i64 %i.g, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.10.0.copyload, 1
  %i.n = add nsw i64 %i.g, -1
  %i.o = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = udiv i64 %i.n, %i.m
  %i.q = add nuw nsw i64 %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.r = sub i64 %.sroa.7.0.copyload, %.sroa.62.0.copyload
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.r) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.s = shl i64 %.sroa.78.8.copyload, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.8.copyload) ]
  %i.t = shl i64 %.sroa.78.8.copyload, 3          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.835.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1336.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1837.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = uitofp i64 %.sroa.910.8.copyload to float
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = select i1 %i.h, i64 0, i64 %.sroa.10.0.copyload
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !align !15 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !4, !align !21 ; 4 uses
  %i.aq = load i64, ptr %i.am, align 8            ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 320 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 328 ; 4 uses
  %i.at = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.at
  %i.au = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep58 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.au
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.0.i.i13.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.10.0.copyload, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.028.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.av = phi i64 [ %.sroa.62.0.copyload, %.lr.ph.i.i.i.i ], [ %i.ba, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 4 uses
  %i.aw = phi ptr [ %.sroa.83.0.copyload, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.gq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 3 uses
  %i.ay = add nuw i64 %.sroa.01.028.i.i.i.i, 1    ; 2 uses
  %i.az = icmp ult i64 %i.av, %.sroa.7.0.copyload
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw i64 %i.av, 1
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %i.av
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51.0.copyload, i64 %i.av
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub nuw i64 %i.d, %i.bd
  %i.bf = lshr exact i64 %i.be, 3
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i13.i.i.i.i, %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.0.i.i13.i.i.i.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %storemerge.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bh, ptr %.sroa.9.0.copyload
  %i.bi = load i32, ptr %i.bb, align 4, !noalias !1482, !noundef !4
  %i.bj = load float, ptr %i.bc, align 4, !noalias !1482, !noundef !4
  %i.bk = load i16, ptr %i.bg, align 4, !noalias !1482, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !1482, !noundef !4
  %i.bn = shl i64 %i.ax, 6
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = sext i16 %i.bk to i64
  %i.br = add i64 %i.s, %i.bq                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1482
  %i.bs = shl i64 %i.ax, 3                        ; 4 uses
  %i.bt = load i64, ptr %i.u, align 8, !noalias !1482, !noundef !4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.45.8.copyload, align 8, !noalias !1482, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.bv = load i64, ptr %i.v, align 8, !alias.scope !1484, !noalias !1482, !noundef !4
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = load i64, ptr %i.w, align 8, !alias.scope !1484, !noalias !1482
  %i.by = icmp eq i64 %i.bx, 0
  %or.cond.i6.i.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %i.by, !prof !11
  br i1 %or.cond.i6.i.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  store ptr null, ptr %i.aa, align 8, !alias.scope !1486, !noalias !1487
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1486, !noalias !1487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false), !alias.scope !1486, !noalias !1487
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.bz = load i64, ptr %i.x, align 8, !alias.scope !1484, !noalias !1482, !noundef !4 ; 3 uses
  %i.ca = sub i64 0, %i.bz
  %.not.i7.i.i.i.i.i.i.i = icmp slt i64 %i.bs, %i.ca
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.y, align 8, !alias.scope !1484, !noalias !1482, !noundef !4 ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %.not5.i8.i.i.i.i.i.i.i = icmp slt i64 %i.t, %i.cc
  br i1 %.not5.i8.i.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cd = add i64 %i.bs, 8
  %i.ce = add i64 %i.cd, %i.bz
  %.not6.i9.i.i.i.i.i.i.i = icmp sgt i64 %i.ce, %i.bt
  br i1 %.not6.i9.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cf = add i64 %i.cb, %i.t                     ; 2 uses
  %i.cg = add i64 %i.cf, 8
  %i.ch = load i64, ptr %i.z, align 8, !alias.scope !1484, !noalias !1482, !noundef !4
  %.not7.i10.i.i.i.i.i.i.i = icmp sgt i64 %i.cg, %i.ch
  br i1 %.not7.i10.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1488
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ci = mul i64 %i.cf, %i.bt
  %i.cj = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bz
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.aa, align 8, !alias.scope !1483, !noalias !1482
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1483, !noalias !1482
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !1489, !noalias !1482
  store i64 %i.t, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  store i64 8, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  store i64 8, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1482
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1482
  %i.cm = sdiv i64 %i.bp, 8                       ; 4 uses
  %i.cn = sdiv i64 %i.br, 8                       ; 3 uses
  %i.co = load i64, ptr %i.ac, align 8, !noalias !1482, !noundef !4 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.66.8.copyload, align 8, !noalias !1482, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !1491, !noalias !1482, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = load i64, ptr %i.ae, align 8, !alias.scope !1491, !noalias !1482
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cr, i1 true, i1 %i.ct, !prof !11
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.ai, align 8, !alias.scope !1493, !noalias !1494
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1493, !noalias !1494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !alias.scope !1493, !noalias !1494
  br label %switch.lookup

end_hunk_6
begin_hunk_7_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnerhE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif:bb.a
  %i.du = add i64 %..i.i.i.i.i.i.i.i.i, %i.bp     ; 2 uses
  %i.dv = sdiv i64 %i.du, 64                      ; 5 uses
  %i.dw = shl nsw i64 %i.dv, 6                    ; 2 uses
  %i.dx = add i64 %.sroa.01.0.neg.i.i.i.i.i.i.i.i.i, %i.br ; 2 uses
  %i.dy = sdiv i64 %i.dx, 64                      ; 5 uses
  %i.dz = shl nsw i64 %i.dy, 6                    ; 2 uses
  %i.ea = add i64 %i.dw, 64                       ; 3 uses
  %i.eb = add i64 %i.dz, 64                       ; 3 uses
  %i.ec = sub i64 %i.ea, %i.bp                    ; 2 uses
  %i.ed = sub i64 %i.eb, %i.br                    ; 2 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = sitofp i64 %i.ee to float
  %i.eg = fmul nnan float %i.ef, f0x39800000
  %i.eh = icmp sgt i64 %i.du, -64                 ; 2 uses
  %i.ei = icmp sgt i64 %i.dx, -64                 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %switch.lookup
  %i.ej = load i64, ptr %i.ar, align 8, !noalias !1497, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.dv, %i.ej
  br i1 %i.ek, label %bb.aa, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.el = load i64, ptr %i.as, align 8, !noalias !1497, !noundef !4
  %i.em = icmp ult i64 %i.dy, %i.el
  br i1 %i.em, label %bb.ab, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.en = mul i64 %i.ej, %i.dy
  %i.eo = add i64 %i.en, %i.dv                    ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.aq
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = fmul float %i.eg, %i.dr
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.eo ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !noalias !1497, !noundef !4
  %i.et = fadd float %i.eq, %i.es
  store float %i.et, ptr %i.er, align 4, !noalias !1497
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1497
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.z, %switch.lookup
  %i.eu = sub i64 %i.bp, %i.dw                    ; 2 uses
  %i.ev = mul i64 %i.ed, %i.eu
  %i.ew = sitofp i64 %i.ev to float
  %i.ex = fmul nnan float %i.ew, f0x39800000
  %i.ey = ashr exact i64 %i.ea, 6                 ; 4 uses
  %i.ez = icmp sgt i64 %i.ea, -64                 ; 2 uses
  %or.cond.i15.i.i.i.i.i.i.i.i.i = and i1 %i.ei, %i.ez
  br i1 %or.cond.i15.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fa = load i64, ptr %i.ar, align 8, !noalias !1498, !noundef !4 ; 2 uses
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.af, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr %i.as, align 8, !noalias !1498, !noundef !4
  %i.fd = icmp ult i64 %i.dy, %i.fc
  br i1 %i.fd, label %bb.ag, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fe = mul i64 %i.fa, %i.dy
  %i.ff = add i64 %i.fe, %i.ey                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %i.aq
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fh = fmul float %i.ex, %i.dr
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ff ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !noalias !1498, !noundef !4
  %i.fk = fadd float %i.fh, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !noalias !1498
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1498
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ae, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i.i.i.i.i.i
  %i.fl = sub i64 %i.br, %i.dz                    ; 2 uses
  %i.fm = mul i64 %i.ec, %i.fl
  %i.fn = sitofp i64 %i.fm to float
  %i.fo = fmul nnan float %i.fn, f0x39800000
  %i.fp = ashr exact i64 %i.eb, 6                 ; 4 uses
  %i.fq = icmp sgt i64 %i.eb, -64                 ; 2 uses
  %or.cond.i17.i.i.i.i.i.i.i.i.i = and i1 %i.eh, %i.fq
  br i1 %or.cond.i17.i.i.i.i.i.i.i.i.i, label %bb.aj, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.fr = load i64, ptr %i.ar, align 8, !noalias !1499, !noundef !4 ; 2 uses
  %i.fs = icmp ult i64 %i.dv, %i.fr
  br i1 %i.fs, label %bb.ak, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ft = load i64, ptr %i.as, align 8, !noalias !1499, !noundef !4
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %bb.al, label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fv = mul i64 %i.fr, %i.fp
  %i.fw = add i64 %i.fv, %i.dv                    ; 3 uses
  %i.fx = icmp ult i64 %i.fw, %i.aq
  br i1 %i.fx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fy = fmul float %i.fo, %i.dr
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.fw ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !noalias !1499, !noundef !4
  %i.gb = fadd float %i.fy, %i.ga
  store float %i.gb, ptr %i.fz, align 4, !noalias !1499
  br label %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1499
  unreachable

_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %bb.ak, %bb.aj, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit16.i.i.i.i.i.i.i.i.i
  %i.gc = mul i64 %i.eu, %i.fl
  %i.gd = sitofp i64 %i.gc to float
  %i.ge = fmul nnan float %i.gd, f0x39800000
  %or.cond.i19.i.i.i.i.i.i.i.i.i = and i1 %i.fq, %i.ez
  br i1 %or.cond.i19.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ao:                                            ; preds = %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gf = load i64, ptr %i.ar, align 8, !noalias !1500, !noundef !4 ; 2 uses
  %i.gg = icmp ult i64 %i.ey, %i.gf
  br i1 %i.gg, label %bb.ap, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.gh = load i64, ptr %i.as, align 8, !noalias !1500, !noundef !4
  %i.gi = icmp ult i64 %i.fp, %i.gh
  br i1 %i.gi, label %bb.aq, label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.gj = mul i64 %i.gf, %i.fp
  %i.gk = add i64 %i.gj, %i.ey                    ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.aq
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gm = fmul float %i.ge, %i.dr
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.gk ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !noalias !1500, !noundef !4
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gn, align 4, !noalias !1500
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !noalias !1500
  unreachable

_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %bb.ar, %bb.ap, %bb.ao, %_RNCNCNvMs0_NtNtCsdEEMmLUVy6d_5rav1e3api8internalINtB9_12ContextInnerhE24update_block_importancess_00Cs2mu2Cb9JdUH_5ravif.exit18.i.i.i.i.i.i.i.i.i
  %i.gq = add i64 %i.ax, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ay, %..i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnerhE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnerhE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.51.0.copyload = load ptr, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.62.0.copyload = load i64, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.83.0.copyload = load ptr, ptr %.sroa.83.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.45.8.copyload = load ptr, ptr %0, align 8 ; 8 uses
  %.sroa.66.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.66.8.copyload = load ptr, ptr %.sroa.66.8..sroa_idx, align 8 ; 7 uses
  %.sroa.78.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.78.8.copyload = load i64, ptr %.sroa.78.8..sroa_idx, align 8 ; 2 uses
  %.sroa.89.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.89.8.copyload = load i64, ptr %.sroa.89.8..sroa_idx, align 8
  %.sroa.910.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.910.8.copyload = load i64, ptr %.sroa.910.8..sroa_idx, align 8
  %.sroa.1011.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1011.8.copyload = load i8, ptr %.sroa.1011.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.83.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.d = ptrtoint ptr %.sroa.9.0.copyload to i64  ; 2 uses
  %i.e = ptrtoint ptr %.sroa.83.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  %i.h = trunc nuw i8 %.sroa.11.0.copyload to i1  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %.sroa.9.0.copyload, %.sroa.83.0.copyload
  br i1 %i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = add nuw i64 %.sroa.10.0.copyload, 1
  %i.k = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = udiv i64 %i.g, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.10.0.copyload, 1
  %i.n = add nsw i64 %i.g, -1
  %i.o = icmp ne i64 %.sroa.10.0.copyload, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = udiv i64 %i.n, %i.m
  %i.q = add nuw nsw i64 %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.05.016.sink17.i.i.i.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.r = sub i64 %.sroa.7.0.copyload, %.sroa.62.0.copyload
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.05.016.sink17.i.i.i.i.i.i.i, i64 %i.r) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3zip3ZipIB19_INtNtNtBb_5slice4iter4ItermEIB1u_fEEINtNtB7_7step_by6StepByIB1u_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjTTRmRfERB2v_EETfxxEuNCNCNvMs0_NtNtB2z_3api8internalINtB4F_12ContextInnertE24update_block_importances00QNCINvNvB38_8for_each4callB4p_NCB4z_s_0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.s = shl i64 %.sroa.78.8.copyload, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.8.copyload) ]
  %i.t = shl i64 %.sroa.78.8.copyload, 3          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.45.8.copyload, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.66.8.copyload, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.835.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1336.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1837.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = uitofp i64 %.sroa.910.8.copyload to float
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = select i1 %i.h, i64 0, i64 %.sroa.10.0.copyload
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !align !15 ; 2 uses
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !4, !align !21 ; 4 uses
  %i.aq = load i64, ptr %i.am, align 8            ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 320 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 328 ; 4 uses
  %i.at = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif, i64 %i.at
  %i.au = zext nneg i8 %.sroa.1011.8.copyload to i64
  %switch.gep58 = getelementptr inbounds nuw i8, ptr @switch.table._RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtB8_3zip3ZipIB1q_INtNtNtBc_5slice4iter4ItermEIB1L_fEEINtNtB8_7step_by6StepByIB1L_NtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEEEENCNCNvMs0_NtNtB2Q_3api8internalINtB3z_12ContextInnertE24update_block_importances00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4K_8for_each4callTfxxENCB3t_s_0E0ECs2mu2Cb9JdUH_5ravif.208, i64 %i.au
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i: ; preds = %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.0.i.i13.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.sroa.10.0.copyload, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %.sroa.01.028.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ay, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ]
  %i.av = phi i64 [ %.sroa.62.0.copyload, %.lr.ph.i.i.i.i ], [ %i.ba, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 4 uses
  %i.aw = phi ptr [ %.sroa.83.0.copyload, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 2 uses
  %i.ax = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i ], [ %i.gq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTTRmRfERNtNtCsdEEMmLUVy6d_5rav1e2me7MEStatsEuNCINvNtBb_3map8map_foldTjB21_ETfxxEuNCNCNvMs0_NtNtB2d_3api8internalINtB3u_12ContextInnertE24update_block_importances00QNCINvNvB1e_8for_each4callB3e_NCB3o_s_0E0E0E0Cs2mu2Cb9JdUH_5ravif.exit.i.i.i.i ] ; 3 uses
  %i.ay = add nuw i64 %.sroa.01.028.i.i.i.i, 1    ; 2 uses
  %i.az = icmp ult i64 %i.av, %.sroa.7.0.copyload
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw i64 %i.av, 1
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %i.av
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51.0.copyload, i64 %i.av
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub nuw i64 %i.d, %i.bd
  %i.bf = lshr exact i64 %i.be, 3
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.0.0.i.i13.i.i.i.i, %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.0.i.i13.i.i.i.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %storemerge.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bh, ptr %.sroa.9.0.copyload
  %i.bi = load i32, ptr %i.bb, align 4, !noalias !1553, !noundef !4
  %i.bj = load float, ptr %i.bc, align 4, !noalias !1553, !noundef !4
  %i.bk = load i16, ptr %i.bg, align 4, !noalias !1553, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !1553, !noundef !4
  %i.bn = shl i64 %i.ax, 6
  %i.bo = sext i16 %i.bm to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = sext i16 %i.bk to i64
  %i.br = add i64 %i.s, %i.bq                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1553
  %i.bs = shl i64 %i.ax, 3                        ; 4 uses
  %i.bt = load i64, ptr %i.u, align 8, !noalias !1553, !noundef !4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.45.8.copyload, align 8, !noalias !1553, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.bv = load i64, ptr %i.v, align 8, !alias.scope !1555, !noalias !1553, !noundef !4
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = load i64, ptr %i.w, align 8, !alias.scope !1555, !noalias !1553
  %i.by = icmp eq i64 %i.bx, 0
  %or.cond.i6.i.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %i.by, !prof !11
  br i1 %or.cond.i6.i.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  store ptr null, ptr %i.aa, align 8, !alias.scope !1557, !noalias !1558
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1557, !noalias !1558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false), !alias.scope !1557, !noalias !1558
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4ItermEIBW_fEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.i.i.i.i
  %i.bz = load i64, ptr %i.x, align 8, !alias.scope !1555, !noalias !1553, !noundef !4 ; 3 uses
  %i.ca = sub i64 0, %i.bz
  %.not.i7.i.i.i.i.i.i.i = icmp slt i64 %i.bs, %i.ca
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %i.y, align 8, !alias.scope !1555, !noalias !1553, !noundef !4 ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %.not5.i8.i.i.i.i.i.i.i = icmp slt i64 %i.t, %i.cc
  br i1 %.not5.i8.i.i.i.i.i.i.i, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cd = add i64 %i.bs, 8
  %i.ce = add i64 %i.cd, %i.bz
  %.not6.i9.i.i.i.i.i.i.i = icmp sgt i64 %i.ce, %i.bt
  br i1 %.not6.i9.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cf = add i64 %i.cb, %i.t                     ; 2 uses
  %i.cg = add i64 %i.cf, 8
  %i.ch = load i64, ptr %i.z, align 8, !alias.scope !1555, !noalias !1553, !noundef !4
  %.not7.i10.i.i.i.i.i.i.i = icmp sgt i64 %i.cg, %i.ch
  br i1 %.not7.i10.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 103, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !1559
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ci = mul i64 %i.cf, %i.bt
  %i.cj = getelementptr [2 x i8], ptr %i.bu, i64 %i.ci
  %i.ck = getelementptr [2 x i8], ptr %i.cj, i64 %i.bz
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.aa, align 8, !alias.scope !1554, !noalias !1553
  store ptr %i.u, ptr %i.b, align 8, !alias.scope !1554, !noalias !1553
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !1560, !noalias !1553
  store i64 %i.t, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  store i64 8, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  store i64 8, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1560, !noalias !1553
  br label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1553
  %i.cm = sdiv i64 %i.bp, 8                       ; 4 uses
  %i.cn = sdiv i64 %i.br, 8                       ; 3 uses
  %i.co = load i64, ptr %i.ac, align 8, !noalias !1553, !noundef !4 ; 2 uses
  %i.cp = load ptr, ptr %.sroa.66.8.copyload, align 8, !noalias !1553, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !1562, !noalias !1553, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = load i64, ptr %i.ae, align 8, !alias.scope !1562, !noalias !1553
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.cr, i1 true, i1 %i.ct, !prof !11
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.ai, align 8, !alias.scope !1564, !noalias !1565
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !1564, !noalias !1565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !alias.scope !1564, !noalias !1565
  br label %switch.lookup

end_hunk_7
begin_hunk_8_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjRlETB2P_iENCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0EB1Z_4foldINtNtBc_3cmp11KeyAndValueB2S_B2N_ENvYB47_NtB4a_3Ord3maxECs2mu2Cb9JdUH_5ravif:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i.i.i.i, i64 32, i1 false), !noalias !1604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1603
  %i.t = add i64 %.sroa.0.0.i.i, 1
  %i.u = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.l
  br i1 %i.v, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueTRliETjB2E_EENCINvNtB7_3map8map_foldB2I_B2e_B2e_NCINvNvB1B_10max_by_key3keyB2I_B2D_NCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0NvYB2e_NtB2h_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueTRliETjB2E_EENCINvNtB7_3map8map_foldB2I_B2e_B2e_NCINvNvB1B_10max_by_key3keyB2I_B2D_NCNvNtNtCsdEEMmLUVy6d_5rav1e4cdef4rust17first_max_element0E0NvYB2e_NtB2h_3Ord3maxE0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB1w_6BufferNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VecB4d_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val6.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1616
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENCINvNtB1r_12segmentation27segmentation_optimize_innerhE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4g_3VecsE14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.g, align 4, !noalias !1625, !noundef !4 ; 5 uses
  %i.h = icmp eq i32 %.val15.i, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val15.i, i1 true) ; 3 uses
  %i.j = icmp ugt i32 %.val15.i, 65535
  %i.k = sub nsw i32 16, %i.i
  %i.l = lshr i32 %.val15.i, %i.k
  %i.m = xor i32 %i.i, 16
  %i.n = shl i32 %.val15.i, %i.m
  %.sroa.01.0.i.i.i.i = select i1 %i.j, i32 %i.l, i32 %i.n
  %i.o = add i32 %.sroa.01.0.i.i.i.i, -49152      ; 4 uses
  %i.p = mul i32 %i.o, -1402
  %i.q = ashr i32 %i.p, 15
  %i.r = add nsw i32 %i.q, 2546
  %i.s = mul i32 %i.r, %i.o
  %i.t = ashr i32 %i.s, 15
  %i.u = add nsw i32 %i.t, -5216
  %i.v = mul i32 %i.u, %i.o
  %i.w = ashr i32 %i.v, 15
  %i.x = add nsw i32 %i.w, 15745
  %i.y = mul i32 %i.x, %i.o
  %i.z = ashr i32 %i.y, 15
  %i.aa = add nsw i32 %i.z, 517491
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = shl nuw nsw i32 %i.i, 11
  %reass.sub4.i.i.i.i = sub nsw i32 %i.ab, %i.ac
  %i.ad = trunc i32 %reass.sub4.i.i.i.i to i16
  %i.ae = add i16 %i.ad, -28672
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ -28673, %bb.c ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.af, align 2, !noalias !1626
  %i.ag = add i64 %i.f, 1                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innerhE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1625
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENCINvNtB1r_12segmentation27segmentation_optimize_innertE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4g_3VecsE14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.g, align 4, !noalias !1635, !noundef !4 ; 5 uses
  %i.h = icmp eq i32 %.val15.i, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val15.i, i1 true) ; 3 uses
  %i.j = icmp ugt i32 %.val15.i, 65535
  %i.k = sub nsw i32 16, %i.i
  %i.l = lshr i32 %.val15.i, %i.k
  %i.m = xor i32 %i.i, 16
  %i.n = shl i32 %.val15.i, %i.m
  %.sroa.01.0.i.i.i.i = select i1 %i.j, i32 %i.l, i32 %i.n
  %i.o = add i32 %.sroa.01.0.i.i.i.i, -49152      ; 4 uses
  %i.p = mul i32 %i.o, -1402
  %i.q = ashr i32 %i.p, 15
  %i.r = add nsw i32 %i.q, 2546
  %i.s = mul i32 %i.r, %i.o
  %i.t = ashr i32 %i.s, 15
  %i.u = add nsw i32 %i.t, -5216
  %i.v = mul i32 %i.u, %i.o
  %i.w = ashr i32 %i.v, 15
  %i.x = add nsw i32 %i.w, 15745
  %i.y = mul i32 %i.x, %i.o
  %i.z = ashr i32 %i.y, 15
  %i.aa = add nsw i32 %i.z, 517491
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = shl nuw nsw i32 %i.i, 11
  %reass.sub4.i.i.i.i = sub nsw i32 %i.ab, %i.ac
  %i.ad = trunc i32 %reass.sub4.i.i.i.i to i16
  %i.ae = add i16 %i.ad, -28672
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.ae, %bb.d ], [ -28673, %bb.c ]
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.f
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.af, align 2, !noalias !1636
  %i.ag = add i64 %i.f, 1                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_suNCINvNtBU_12segmentation27segmentation_optimize_innertE0NCINvNvB1A_8for_each4callsNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4t_3VecsE14extend_trustedINtB2q_3MapBF_B30_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1635
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENCNvMs2_NtNtB1u_6tiling10tile_stateINtB2e_12TileStateMuthE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtB2g_17tile_motion_stats14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB51_3VecB4b_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq ptr %i.a, %i.c
  br i1 %i.e, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %i.k = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1654, !noundef !4
  %i.l = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1654, !noundef !4
  %i.m = add i64 %i.l, 62
  %i.n = and i64 %i.m, 63                         ; 2 uses
  %i.o = shl i64 %i.k, %i.n                       ; 5 uses
  %i.p = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1654, !noundef !4
  %i.q = shl i64 %i.p, %i.n                       ; 4 uses
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1654, !noundef !4
  %i.s = lshr i64 %i.r, 2                         ; 2 uses
  %i.t = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !1654, !noundef !4
  %i.u = lshr i64 %i.t, 2                         ; 2 uses
  %i.v = add i64 %i.s, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1655, !noalias !1656, !noundef !4 ; 6 uses
  %.not.i.i.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i.i, label %.invoke, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.u, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1655, !noalias !1656, !noundef !4
  %.not5.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not5.i.i.i.i, label %.invoke, label %bb.e, !prof !8

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ @72, %bb.c ], [ @75, %bb.d ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.cont unwind label %bb.j, !noalias !1656

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !1655, !noalias !1656, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1655, !noalias !1656, !noundef !4 ; 2 uses
  %i.af = mul i64 %i.x, %i.q                      ; 3 uses
  %i.ag = add i64 %i.q, 1
  %i.ah = mul i64 %i.x, %i.ag                     ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %.not6.i.i.i.i = icmp ugt i64 %i.ah, %i.ae
  %or.cond.i.i.i.i = or i1 %i.ai, %.not6.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp ult i64 %i.o, %i.x
  br i1 %i.aj, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc16.i unwind label %bb.j, !noalias !1656

.noexc16.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc17.i unwind label %bb.j, !noalias !1656

.noexc17.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.o
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 6 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1657
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1657
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.q, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1657
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.s, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !1657
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.u, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !1657
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.x, ptr %.sroa.86.0..sroa_idx.i.i, align 8, !noalias !1657
  %i.an = add i64 %.val10.i, 1                    ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.i
  br i1 %i.ap, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.j:                                             ; preds = %.invoke, %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1656
  resume { ptr, i32 } %i.aq

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuthE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.an, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1656
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENCNvMs2_NtNtB1u_6tiling10tile_stateINtB2e_12TileStateMuttE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtB2g_17tile_motion_stats14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB51_3VecB4b_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq ptr %i.a, %i.c
  br i1 %i.e, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuttE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.an, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.k = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1675, !noundef !4
  %i.l = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1675, !noundef !4
  %i.m = add i64 %i.l, 62
  %i.n = and i64 %i.m, 63                         ; 2 uses
  %i.o = shl i64 %i.k, %i.n                       ; 5 uses
  %i.p = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1675, !noundef !4
  %i.q = shl i64 %i.p, %i.n                       ; 4 uses
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1675, !noundef !4
  %i.s = lshr i64 %i.r, 2                         ; 2 uses
  %i.t = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !1675, !noundef !4
  %i.u = lshr i64 %i.t, 2                         ; 2 uses
  %i.v = add i64 %i.s, %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1676, !noalias !1677, !noundef !4 ; 6 uses
  %.not.i.i.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i.i, label %.invoke, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %i.u, %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1676, !noalias !1677, !noundef !4
  %.not5.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not5.i.i.i.i, label %.invoke, label %bb.e, !prof !8

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ @72, %bb.c ], [ @75, %bb.d ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.cont unwind label %bb.j, !noalias !1677

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !1676, !noalias !1677, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1676, !noalias !1677, !noundef !4 ; 2 uses
  %i.af = mul i64 %i.x, %i.q                      ; 3 uses
  %i.ag = add i64 %i.q, 1
  %i.ah = mul i64 %i.x, %i.ag                     ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %.not6.i.i.i.i = icmp ugt i64 %i.ah, %i.ae
  %or.cond.i.i.i.i = or i1 %i.ai, %.not6.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp ult i64 %i.o, %i.x
  br i1 %i.aj, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc16.i unwind label %bb.j, !noalias !1677

.noexc16.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc17.i unwind label %bb.j, !noalias !1677

.noexc17.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.o
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 6 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1678
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1678
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.q, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1678
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.s, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !1678
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.u, ptr %.sroa.75.0..sroa_idx.i.i, align 8, !noalias !1678
  %.sroa.86.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.x, ptr %.sroa.86.0..sroa_idx.i.i, align 8, !noalias !1678
  %i.an = add i64 %.val10.i, 1                    ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.i
  br i1 %i.ap, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuttE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.j:                                             ; preds = %.invoke, %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1677
  resume { ptr, i32 } %i.aq

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtCsdEEMmLUVy6d_5rav1e2me12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldQBT_NtNtNtBX_6tiling17tile_motion_stats14TileMEStatsMutuNCNvMs2_NtB31_10tile_stateINtB3V_12TileStateMuttE3new0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5h_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3N_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.an, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1677
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENCNvMs0_NtB1u_4tileINtB2z_12TileStateMuthE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtB1s_14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4L_3VecB4g_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuthE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1692
  %i.l = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1693, !noundef !4
  %i.m = shl i64 %i.l, 4
  %i.n = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1693, !noundef !4
  %i.o = shl i64 %i.n, 4
  %i.p = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1693, !noundef !4
  %i.q = lshr i64 %i.p, 2
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1693, !noundef !4
  %i.s = lshr i64 %i.r, 2
  invoke void @_RNvMsw_NtNtCs65NEs4fedBE_14av_scenechange4data6motionNtB5_14TileMEStatsMut3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s)
          to label %bb.d unwind label %bb.e, !noalias !1694

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1695
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1692
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuthE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1694
  resume { ptr, i32 } %i.x

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuthE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1694
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENCNvMs0_NtB1u_4tileINtB2z_12TileStateMuttE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtB1s_14TileMEStatsMutNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4L_3VecB4g_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1709
  %i.l = load i64, ptr %.sroa.01.0.copyload, align 8, !noalias !1710, !noundef !4
  %i.m = shl i64 %i.l, 4
  %i.n = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !1710, !noundef !4
  %i.o = shl i64 %i.n, 4
  %i.p = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !1710, !noundef !4
  %i.q = lshr i64 %i.p, 2
  %i.r = load i64, ptr %.sroa.62.0.copyload, align 8, !noalias !1710, !noundef !4
  %i.s = lshr i64 %i.r, 2
  invoke void @_RNvMsw_NtNtCs65NEs4fedBE_14av_scenechange4data6motionNtB5_14TileMEStatsMut3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.m, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s)
          to label %bb.d unwind label %bb.e, !noalias !1711

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1712
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1709
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1711
  resume { ptr, i32 } %i.x

_RINvXs2Q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_7IterMutNtNtNtCs65NEs4fedBE_14av_scenechange4data6motion12FrameMEStatsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldQBT_NtBV_14TileMEStatsMutuNCNvMs0_NtBX_4tileINtB3M_12TileStateMuttE3new0NCINvNvB1U_8for_each4callB3i_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB3i_E14extend_trustedINtB2K_3MapBF_B3E_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1711
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1z_3rgb3RgbmEENCINvNtB7_3map8map_foldRB1u_TtB33_EB31_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB42_s_0E0EB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.d = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  %.sroa.018.0.copyload19.i = load i32, ptr %2, align 4, !alias.scope !1747 ; 2 uses
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.5.0.copyload21.i = load i32, ptr %.sroa.5.0..sroa_idx20.i, align 4, !alias.scope !1747 ; 2 uses
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.6.0.copyload23.i = load i32, ptr %.sroa.6.0..sroa_idx22.i, align 4, !alias.scope !1747 ; 2 uses
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.7.0.copyload25.i = load i32, ptr %.sroa.7.0..sroa_idx24.i, align 4, !alias.scope !1747 ; 2 uses
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, %bb.d
  %.sroa.8.0.i.i = phi i32 [ %.sroa.7.0.copyload25.i, %bb.d ], [ %i.ac, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.7.0.i.i = phi i32 [ %.sroa.6.0.copyload23.i, %bb.d ], [ %i.ab, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.612.0.i.i = phi i32 [ %.sroa.5.0.copyload21.i, %bb.d ], [ %i.aa, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.09.0.i.i = phi i32 [ %.sroa.018.0.copyload19.i, %bb.d ], [ %i.z, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ad, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.01.0.i.i ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !1748, !noalias !1749, !noundef !4 ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !1748, !noalias !1749, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !1748, !noalias !1749, !noundef !4
  %i.q = load i8, ptr %i.i, align 1, !alias.scope !1748, !noalias !1749, !noundef !4
  %i.r = zext i8 %i.k to i32
  %i.s = sub nuw nsw i32 256, %i.r                ; 4 uses
  %i.t = zext i8 %i.q to i32
  %i.u = mul nuw nsw i32 %i.s, %i.t
  %i.v = zext i8 %i.p to i32
  %i.w = mul nuw nsw i32 %i.s, %i.v
  %i.x = zext i8 %i.n to i32
  %i.y = mul nuw nsw i32 %i.s, %i.x
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink3.i.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %.sink2.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %.sink1.i.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  %.sink.i.i.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = add i32 %.sink3.i.i.i.i.i.i, %.sroa.09.0.i.i ; 2 uses
  %i.aa = add i32 %.sink2.i.i.i.i.i.i, %.sroa.612.0.i.i ; 2 uses
  %i.ab = add i32 %.sink1.i.i.i.i.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.ac = add i32 %.sink.i.i.i.i.i.i, %.sroa.8.0.i.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i.i, 1          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.h
  br i1 %i.ae, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, label %bb.e

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i, %bb.c
  %.sroa.7.0.i = phi i32 [ %.sroa.7.0.copyload25.i, %bb.c ], [ %i.ac, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.6.0.i = phi i32 [ %.sroa.6.0.copyload23.i, %bb.c ], [ %i.ab, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.copyload21.i, %bb.c ], [ %i.aa, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  %.sroa.018.0.i = phi i32 [ %.sroa.018.0.copyload19.i, %bb.c ], [ %i.z, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1A_3rgb3RgbmEETmB2g_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2J_s_0E0INtB7_5FnMutTB2A_B1u_EE8call_mutB2P_.exit.i.i ]
  store i32 %.sroa.018.0.i, ptr %2, align 4, !alias.scope !1744
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx20.i, align 4, !alias.scope !1744
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx22.i, align 4, !alias.scope !1744
  store i32 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx24.i, align 4, !alias.scope !1744
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3x_s_0E0EB3D_.exit.i, %bb.b
  %.not2.i = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not2.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldTmINtNtB1v_3rgb3RgbmEEQNCINvNtB7_3map8map_foldRB1q_TtB2U_EB2S_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3U_s_0E0EB40_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.af = icmp eq ptr %.sroa.5.0.copyload, %.sroa.6.0.copyload
  %.sroa.026.0.copyload27.i = load i32, ptr %2, align 4, !alias.scope !1752 ; 2 uses
  %.sroa.528.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.528.0.copyload30.i = load i32, ptr %.sroa.528.0..sroa_idx29.i, align 4, !alias.scope !1752 ; 2 uses
  %.sroa.631.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.631.0.copyload33.i = load i32, ptr %.sroa.631.0..sroa_idx32.i, align 4, !alias.scope !1752 ; 2 uses
  %.sroa.734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.734.0.copyload36.i = load i32, ptr %.sroa.734.0..sroa_idx35.i, align 4, !alias.scope !1752 ; 2 uses
  br i1 %i.af, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.ah = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i, %bb.i
  %.sroa.8.0.i10.i = phi i32 [ %.sroa.734.0.copyload36.i, %bb.i ], [ %i.be, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.7.0.i11.i = phi i32 [ %.sroa.631.0.copyload33.i, %bb.i ], [ %i.bd, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.612.0.i12.i = phi i32 [ %.sroa.528.0.copyload30.i, %bb.i ], [ %i.bc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.09.0.i13.i = phi i32 [ %.sroa.026.0.copyload27.i, %bb.i ], [ %i.bb, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ]
  %.sroa.01.0.i14.i = phi i64 [ 0, %bb.i ], [ %i.bf, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.01.0.i14.i ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1753, !noalias !1754, !noundef !4 ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1753, !noalias !1754, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !1753, !noalias !1754, !noundef !4
  %i.as = load i8, ptr %i.ak, align 1, !alias.scope !1753, !noalias !1754, !noundef !4
  %i.at = zext i8 %i.am to i32
  %i.au = sub nuw nsw i32 256, %i.at              ; 4 uses
  %i.av = zext i8 %i.as to i32
  %i.aw = mul nuw nsw i32 %i.au, %i.av
  %i.ax = zext i8 %i.ar to i32
  %i.ay = mul nuw nsw i32 %i.au, %i.ax
  %i.az = zext i8 %i.ap to i32
  %i.ba = mul nuw nsw i32 %i.au, %i.az
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahETtINtNtB1z_3rgb3RgbmEETmB2f_ENCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB2I_s_0E0INtB7_5FnMutTB2z_B1t_EE8call_mutB2O_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sink3.i.i.i.i.i = phi i32 [ %i.au, %bb.k ], [ 0, %bb.j ]
  %.sink2.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ 0, %bb.j ]
  %.sink1.i.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  %.sink.i.i.i.i.i = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.j ]
  %i.bb = add i32 %.sink3.i.i.i.i.i, %.sroa.09.0.i13.i ; 2 uses
  %i.bc = add i32 %.sink2.i.i.i.i.i, %.sroa.612.0.i12.i ; 2 uses
  %i.bd = add i32 %.sink1.i.i.i.i.i, %.sroa.7.0.i11.i ; 2 uses
  %i.be = add i32 %.sink.i.i.i.i.i, %.sroa.8.0.i10.i ; 2 uses
  %i.bf = add nuw i64 %.sroa.01.0.i14.i, 1        ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %i.aj
  br i1 %i.bg, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtNtCse3EvFgu4yEJ_3rgb7formats4rgba4RgbahEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTmINtNtBV_3rgb3RgbmEEQNCINvNtNtB1G_8adapters3map8map_foldRBQ_TtB2m_EB2k_NCNCNvNtCs2mu2Cb9JdUH_5ravif10dirtyalpha18bleed_opaque_color00NCB3w_s_0E0EB3C_.exit.i, label %bb.j

end_hunk_8
