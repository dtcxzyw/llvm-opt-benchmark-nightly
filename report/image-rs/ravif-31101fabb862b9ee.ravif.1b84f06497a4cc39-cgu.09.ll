Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_framehECs2mu2Cb9JdUH_5ravif:bb.a
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = lshr i64 %i.dd, 1
  %i.df = add i64 %i.de, %i.ao
  %i.dg = lshr i64 %i.df, %i.dc                   ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.di, 0
  %i.dj = lshr i64 64, %i.dc
  %i.dk = lshr i64 56, %i.dc
  %i.dl = add i64 %i.di, -1
  %i.dm = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dn = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.du = add i64 %i.db, 3
  %i.dv = add i64 %i.dg, -1                       ; 2 uses
  %i.dw = add i64 %i.db, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.dz, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.dz = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ea = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ea, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.eb = shl nuw i64 %.sroa.021.0150.us, 6
  %i.ec = add i64 %i.eb, -8
  %i.ed = lshr i64 %i.ec, %i.dc
  %.fr = freeze i64 %i.ed                         ; 6 uses
  %i.ee = sub i64 %i.dg, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %i.dj)
  %i.ef = sub i64 0, %.fr
  %i.eg = sub i64 %i.dg, %.fr
  %i.eh = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.eh, i64 %i.ef, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.ei = phi i64 [ %i.dg, %bb.o ], [ %i.eg, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dk, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.ej = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.ek = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.el = icmp sgt i64 %i.ek, %i.dg
  %i.em = add i64 %.sroa.04.0.us290, %i.ej
  %i.en = sub i64 %i.dg, %i.em
  %i.eo = sub i64 %.sroa.010.0.us289, %i.ej
  %.sroa.021.0.i.us = select i1 %i.el, i64 %i.en, i64 %i.eo ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.ep = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.eq = add nuw i64 %i.ek, 4                    ; 2 uses
  %i.er = icmp slt i64 %i.ep, %i.eq
  %i.es = add nuw i64 %i.ek, 1
  %i.et = add i64 %.sroa.04.0.us290, -2
  %i.eu = add i64 %..i.i.us, %i.ej                ; 2 uses
  %i.ev = icmp ult i64 %i.ej, %i.eu
  %i.ew = add nuw i64 %i.ej, 1
  %i.ex = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.ey, %.backedge.us ] ; 4 uses
  %i.ey = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.ez = mul i64 %i.dy, %.sroa.023.0148.us       ; 12 uses
  %i.fa = icmp eq i64 %.sroa.023.0148.us, %i.dl
  %i.fb = sub i64 %i.db, %i.ez                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fa, i64 %i.fb, i64 %i.dy ; 4 uses
  %i.fc = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cr, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fd = load i8, ptr %i.fc, align 1, !range !9, !noundef !4
  switch i8 %i.fd, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fg, align 1
  %i.fh = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dm, ptr %i.o, align 8
  store i64 %i.ez, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dn, ptr %i.n, align 8
  store i64 %i.ez, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fb, i64 noundef %i.ei, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dm, ptr %i.m, align 8
  store i64 %i.ez, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.fj = load i64, ptr %i.do, align 8, !alias.scope !109, !noalias !110, !noundef !4 ; 2 uses
  %i.fk = load ptr, ptr %i.cs, align 8, !alias.scope !109, !noalias !110, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.fl = load i64, ptr %i.dp, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = load i64, ptr %i.dq, align 8, !alias.scope !114, !noalias !115
  %i.fo = icmp eq i64 %i.fn, 0
  %or.cond.i.i.us = select i1 %i.fm, i1 true, i1 %i.fo, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fp = load i64, ptr %i.dr, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 3 uses
  %i.fq = sub i64 0, %i.fp
  %.not.i.i.us = icmp slt i64 %i.ez, %i.fq
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fr = load i64, ptr %i.ds, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 2 uses
  %i.fs = sub i64 0, %i.fr
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fs
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.ft = add i64 %.sroa.014.0.us, %i.ez
  %i.fu = add i64 %i.ft, %i.fp
  %.not6.i.i.us = icmp sgt i64 %i.fu, %i.fj
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fv = add i64 %i.fr, %.sroa.04.0.us290        ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.010.0.us289
  %i.fx = load i64, ptr %i.dt, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fw, %i.fx
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.fy = mul i64 %i.fv, %i.fj
  %i.fz = getelementptr i8, ptr %i.fk, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fp
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.ez
  store ptr %i.gb, ptr %i.bt, align 8, !alias.scope !116, !noalias !117
  store ptr %i.do, ptr %i.l, align 8, !alias.scope !116, !noalias !117
  store i64 %i.ez, ptr %i.bu, align 8, !alias.scope !118, !noalias !119
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store ptr null, ptr %i.bt, align 8, !alias.scope !120, !noalias !121
  store ptr %i.do, ptr %i.l, align 8, !alias.scope !120, !noalias !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !120, !noalias !121
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif(i8 noundef %i.ff, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gc, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gd = load i64, ptr %i.bv, align 8, !noalias !122, !noundef !4 ; 4 uses
  %i.ge = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gf = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gg = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gh = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gk = trunc nsw i48 %i.gj to i32              ; 3 uses
  %i.gl = icmp eq i64 %i.gd, 12                   ; 3 uses
  %..i49.us = select i1 %i.gl, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !122
  %i.gm = add nsw i32 %i.gf, %i.ge
  %i.gn = add nsw i32 %i.gm, %i.gg
  %i.go = shl nsw i32 %i.gn, 1
  %i.gp = sub nsw i32 128, %i.go
  store i32 %i.ge, ptr %i.f, align 4, !noalias !122
  store i32 %i.gf, ptr %i.bw, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bx, align 4, !noalias !122
  store i32 %i.gp, ptr %i.by, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bz, align 4, !noalias !122
  store i32 %i.gf, ptr %i.ca, align 4, !noalias !122
  store i32 %i.ge, ptr %i.cb, align 4, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !122
  %i.gq = add nsw i32 %i.gh, %i.gk
  %i.gr = add nsw i32 %i.gq, %i.gi
  %i.gs = shl nsw i32 %i.gr, 1
  %i.gt = sub nsw i32 128, %i.gs
  store i32 %i.gh, ptr %i.e, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cc, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cd, align 4, !noalias !122
  store i32 %i.gt, ptr %i.ce, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cf, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cg, align 4, !noalias !122
  store i32 %i.gh, ptr %i.ch, align 4, !noalias !122
  %i.gu = add i64 %.sroa.014.0.us, %i.ez          ; 2 uses
  %i.gv = icmp ult i64 %i.ez, %i.gu
  br i1 %i.gv, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %4 = add i64 %i.gd, 8
  %.98.neg91.i.us = select i1 %i.gl, i64 27, i64 29
  %5 = add i64 %4, %.98.neg91.i.us
  %6 = trunc i64 %5 to i32
  %i.gw = and i32 %6, 31
  %notmask.i.us = shl nsw i32 -1, %i.gw
  %i.gx = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.gl, i64 5, i64 3       ; 2 uses
  %i.gy = sub i64 %i.gd, %.98.i.us
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = add i32 %i.gz, 6
  %i.hb = and i32 %i.ha, 31
  %i.hc = shl nuw i32 1, %i.hb                    ; 2 uses
  %i.hd = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.he = shl nuw nsw i32 1, %i.hd
  %i.hf = lshr exact i32 %i.he, 1
  %i.hg = sub i32 0, %i.hc
  %i.hh = sub i32 %i.gx, %i.hc
  %i.hi = shl nuw nsw i32 1, %..i49.us
  %i.hj = lshr exact i32 %i.hi, 1
  %7 = trunc i64 %i.gd to i32
  %i.hk = and i32 %7, 31
  %notmask93.i.us = shl nsw i32 -1, %i.hk
  %i.hl = xor i32 %notmask93.i.us, -1
  %i.hm = sub i64 3, %i.ez
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hm, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.ez, %.lr.ph89.i.us ], [ %i.hn, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.hn = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !122
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !122
  %i.ho = sub i64 %i.du, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.ho, i64 7) ; 6 uses
  br i1 %i.er, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.hp = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.hq = icmp sgt i64 %i.hp, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.hp, i64 0) ; 4 uses
  %i.hr = sub i64 %..i105.i.us, %i.hp             ; 3 uses
  %i.hs = sub i64 %..i101.i.us, %i.hp             ; 4 uses
  %i.ht = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.hu = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.ht, %i.hu
  %i.hv = icmp ult i64 %i.hs, %i.hr
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.hy = icmp slt i64 %i.ho, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.ep, %.lr.ph78.i.us ], [ %i.hz, %bb.aj ] ; 6 uses
  %i.hz = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.ia = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us290
  br i1 %i.ia, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ib = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dv)
          to label %.noexc56.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.ic = icmp slt i64 %.sroa.069.076.i.us, %i.ek
  br i1 %i.ic, label %.noexc57.us.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.es, i64 %i.ib)
  br label %.noexc57.us.invoke

bb.ae:                                            ; preds = %bb.ab
  %i.id = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dv)
          to label %.noexc57.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.et, i64 %i.id)
  br label %.noexc57.us.invoke

.noexc57.us.invoke:                               ; preds = %.noexc56.us, %bb.ad, %.noexc57.us
  %i.ie = phi ptr [ %i.dn, %.noexc57.us ], [ %i.dn, %bb.ad ], [ %i.dm, %.noexc56.us ]
  %i.if = phi i64 [ %..i103.i.us, %.noexc57.us ], [ %..i104.i.us, %bb.ad ], [ %i.ib, %.noexc56.us ]
  %i.ig = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanehE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ie, i64 noundef %i.if)
          to label %.noexc58.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc58.us:                                      ; preds = %.noexc57.us.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.ig, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.ig, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.ih = load i8, ptr %.sroa.031.0.i.us, align 1, !noundef !4
  %i.ii = zext i8 %i.ih to i32
  %i.ij = icmp ult i64 %i.dw, %.sroa.10.0.i.us
  br i1 %i.ij, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.dw
  %i.il = load i8, ptr %i.ik, align 1, !noundef !4
  %i.im = zext i8 %i.il to i32
  br i1 %i.hq, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.in = load i32, ptr %i.e, align 4, !noalias !122, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.io = load i32, ptr %i.cc, align 4, !noalias !122, !noundef !4
  %i.ip = add i32 %i.io, %i.in                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.iq = load i32, ptr %i.cd, align 4, !noalias !122, !noundef !4
  %i.ir = add i32 %i.iq, %i.ip                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.is = load i32, ptr %i.ce, align 4, !noalias !122, !noundef !4
  %i.it = add i32 %i.is, %i.ir                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.iu = load i32, ptr %i.cf, align 4, !noalias !122, !noundef !4
  %i.iv = add i32 %i.iu, %i.it                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

.lr.ph.5.i.us:                                    ; preds = %.lr.ph.4.i.us
  %i.iw = load i32, ptr %i.cg, align 4, !noalias !122, !noundef !4
  %i.ix = add i32 %i.iw, %i.iv                    ; 2 uses
  br i1 %exitcond142.5.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.6.i.us

.lr.ph.6.i.us:                                    ; preds = %.lr.ph.5.i.us
  %i.iy = load i32, ptr %i.ch, align 4, !noalias !122, !noundef !4
  %i.iz = add i32 %i.iy, %i.ix
  br i1 %exitcond142.6.not.i.us, label %._crit_edge.loopexit.i.us, label %.split179.us.invoke

._crit_edge.loopexit.i.us:                        ; preds = %.lr.ph.6.i.us, %.lr.ph.5.i.us, %.lr.ph.4.i.us, %.lr.ph.3.i.us, %.lr.ph.2.i.us, %.lr.ph.1.i.us, %.lr.ph.preheader.i.us
  %.pn175.i.us = phi i32 [ %i.in, %.lr.ph.preheader.i.us ], [ %i.ip, %.lr.ph.1.i.us ], [ %i.ir, %.lr.ph.2.i.us ], [ %i.it, %.lr.ph.3.i.us ], [ %i.iv, %.lr.ph.4.i.us ], [ %i.ix, %.lr.ph.5.i.us ], [ %i.iz, %.lr.ph.6.i.us ]
  %.lcssa.i.us = mul i32 %.pn175.i.us, %i.ii
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %bb.ag
  %.sroa.026.0.lcssa.i.us = phi i32 [ 0, %bb.ag ], [ %.lcssa.i.us, %._crit_edge.loopexit.i.us ] ; 3 uses
  br i1 %or.cond99.i.us, label %bb.ah, label %.split183.us.invoke, !prof !12

bb.ah:                                            ; preds = %._crit_edge.i.us
  %.not96.i.us = icmp ugt i64 %i.hs, %.sroa.10.0.i.us
  %or.cond100.i.us = or i1 %i.hv, %.not96.i.us
  br i1 %or.cond100.i.us, label %.split183.us.invoke, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.hr
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.031.0.i.us, i64 %i.hs
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.jb)
          to label %.noexc64.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc64.us:                                      ; preds = %bb.ai
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.c, align 8, !noalias !122 ; 3 uses
  %.sroa.41.0.copyload.i.us = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !122 ; 3 uses
  %.sroa.52.0.copyload.i.us = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !122 ; 5 uses
  %.sroa.7.0.copyload.i.us = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !122 ; 3 uses
  %i.jc = icmp ult i64 %.sroa.52.0.copyload.i.us, %.sroa.7.0.copyload.i.us
  br i1 %i.jc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc64.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.us) ]
  %i.jd = sub nuw i64 %.sroa.7.0.copyload.i.us, %.sroa.52.0.copyload.i.us ; 3 uses
  %min.iters.check388 = icmp ult i64 %i.jd, 8
  br i1 %min.iters.check388, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, label %vector.ph389

vector.ph389:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %n.vec390 = and i64 %i.jd, -8                   ; 3 uses
  %i.je = add i64 %.sroa.52.0.copyload.i.us, %n.vec390
  %i.jf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.026.0.lcssa.i.us, i64 0
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next399, %vector.body391 ] ; 2 uses
  %vec.phi393 = phi <4 x i32> [ %i.jf, %vector.ph389 ], [ %i.jp, %vector.body391 ]
  %vec.phi394 = phi <4 x i32> [ zeroinitializer, %vector.ph389 ], [ %i.jq, %vector.body391 ]
  %i.jg = add nuw i64 %.sroa.52.0.copyload.i.us, %index392 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.us, i64 %i.jg ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %wide.load395 = load <4 x i8>, ptr %i.ji, align 1
  %wide.load396 = load <4 x i8>, ptr %i.jj, align 1
  %i.jk = zext <4 x i8> %wide.load395 to <4 x i32>
  %i.jl = zext <4 x i8> %wide.load396 to <4 x i32>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.jh, align 4
  %wide.load398 = load <4 x i32>, ptr %i.jm, align 4
  %i.jn = mul <4 x i32> %wide.load397, %i.jk
  %i.jo = mul <4 x i32> %wide.load398, %i.jl
  %i.jp = add <4 x i32> %i.jn, %vec.phi393        ; 2 uses
  %i.jq = add <4 x i32> %i.jo, %vec.phi394        ; 2 uses
  %index.next399 = add nuw i64 %index392, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next399, %n.vec390
  br i1 %i.jr, label %middle.block400, label %vector.body391, !llvm.loop !67

middle.block400:                                  ; preds = %vector.body391
  %bin.rdx401 = add <4 x i32> %i.jq, %i.jp
  %i.js = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx401) ; 2 uses
  %cmp.n402 = icmp eq i64 %i.jd, %n.vec390
  br i1 %cmp.n402, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, %middle.block400
  %.sroa.026.170.i.us.ph = phi i32 [ %.sroa.026.0.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.js, %middle.block400 ]
  %.sroa.52.069.i.us.ph = phi i64 [ %.sroa.52.0.copyload.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.je, %middle.block400 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %.sroa.026.170.i.us = phi i32 [ %i.ka, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.026.170.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ]
  %.sroa.52.069.i.us = phi i64 [ %i.jv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.52.069.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_hEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_frametECs2mu2Cb9JdUH_5ravif:bb.a
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add i64 %i.dh, %i.ao
  %i.dj = lshr i64 %i.di, %i.df                   ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.dl, 0
  %i.dm = lshr i64 64, %i.df
  %i.dn = lshr i64 56, %i.df
  %i.do = add i64 %i.dl, -1
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dq = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dx = add i64 %i.de, 3
  %i.dy = add i64 %i.dj, -1                       ; 2 uses
  %i.dz = add i64 %i.de, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.ec, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.ec = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ed = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ed, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.ee = shl nuw i64 %.sroa.021.0150.us, 6
  %i.ef = add i64 %i.ee, -8
  %i.eg = lshr i64 %i.ef, %i.df
  %.fr = freeze i64 %i.eg                         ; 6 uses
  %i.eh = sub i64 %i.dj, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.dm)
  %i.ei = sub i64 0, %.fr
  %i.ej = sub i64 %i.dj, %.fr
  %i.ek = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.ek, i64 %i.ei, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.el = phi i64 [ %i.dj, %bb.o ], [ %i.ej, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dn, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.em = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.en = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.eo = icmp sgt i64 %i.en, %i.dj
  %i.ep = add i64 %.sroa.04.0.us290, %i.em
  %i.eq = sub i64 %i.dj, %i.ep
  %i.er = sub i64 %.sroa.010.0.us289, %i.em
  %.sroa.021.0.i.us = select i1 %i.eo, i64 %i.eq, i64 %i.er ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.es = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.et = add nuw i64 %i.en, 4                    ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  %i.ev = add nuw i64 %i.en, 1
  %i.ew = add i64 %.sroa.04.0.us290, -2
  %i.ex = add i64 %..i.i.us, %i.em                ; 2 uses
  %i.ey = icmp ult i64 %i.em, %i.ex
  %i.ez = add nuw i64 %i.em, 1
  %i.fa = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.fb, %.backedge.us ] ; 4 uses
  %i.fb = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.fc = mul i64 %i.eb, %.sroa.023.0148.us       ; 12 uses
  %i.fd = icmp eq i64 %.sroa.023.0148.us, %i.do
  %i.fe = sub i64 %i.de, %i.fc                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fd, i64 %i.fe, i64 %i.eb ; 4 uses
  %i.ff = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cu, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fg = load i8, ptr %i.ff, align 1, !range !9, !noundef !4
  switch i8 %i.fg, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fj, align 1
  %i.fk = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dp, ptr %i.o, align 8
  store i64 %i.fc, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dq, ptr %i.n, align 8
  store i64 %i.fc, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fe, i64 noundef %i.el, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dp, ptr %i.m, align 8
  store i64 %i.fc, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.fm = load i64, ptr %i.dr, align 8, !alias.scope !219, !noalias !220, !noundef !4 ; 2 uses
  %i.fn = load ptr, ptr %i.cv, align 8, !alias.scope !219, !noalias !220, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fo = load i64, ptr %i.ds, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = load i64, ptr %i.dt, align 8, !alias.scope !224, !noalias !225
  %i.fr = icmp eq i64 %i.fq, 0
  %or.cond.i.i.us = select i1 %i.fp, i1 true, i1 %i.fr, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fs = load i64, ptr %i.du, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 3 uses
  %i.ft = sub i64 0, %i.fs
  %.not.i.i.us = icmp slt i64 %i.fc, %i.ft
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fu = load i64, ptr %i.dv, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 2 uses
  %i.fv = sub i64 0, %i.fu
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fv
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.fw = add i64 %.sroa.014.0.us, %i.fc
  %i.fx = add i64 %i.fw, %i.fs
  %.not6.i.i.us = icmp sgt i64 %i.fx, %i.fm
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fy = add i64 %i.fu, %.sroa.04.0.us290        ; 2 uses
  %i.fz = add i64 %i.fy, %.sroa.010.0.us289
  %i.ga = load i64, ptr %i.dw, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fz, %i.ga
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.gb = mul i64 %i.fy, %i.fm
  %i.gc = getelementptr [2 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = getelementptr [2 x i8], ptr %i.gc, i64 %i.fs
  %i.ge = getelementptr [2 x i8], ptr %i.gd, i64 %i.fc
  store ptr %i.ge, ptr %i.bt, align 8, !alias.scope !226, !noalias !227
  store ptr %i.dr, ptr %i.l, align 8, !alias.scope !226, !noalias !227
  store i64 %i.fc, ptr %i.bu, align 8, !alias.scope !228, !noalias !229
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store ptr null, ptr %i.bt, align 8, !alias.scope !230, !noalias !231
  store ptr %i.dr, ptr %i.l, align 8, !alias.scope !230, !noalias !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !230, !noalias !231
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif(i8 noundef %i.fi, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gf, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gg = load i64, ptr %i.bv, align 8, !noalias !232, !noundef !4 ; 4 uses
  %i.gh = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gk = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gl = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gm = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gn = trunc nsw i48 %i.gm to i32              ; 3 uses
  %i.go = icmp eq i64 %i.gg, 12                   ; 3 uses
  %..i49.us = select i1 %i.go, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !232
  %i.gp = add nsw i32 %i.gi, %i.gh
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = shl nsw i32 %i.gq, 1
  %i.gs = sub nsw i32 128, %i.gr
  store i32 %i.gh, ptr %i.f, align 4, !noalias !232
  store i32 %i.gi, ptr %i.bw, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bx, align 4, !noalias !232
  store i32 %i.gs, ptr %i.by, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bz, align 4, !noalias !232
  store i32 %i.gi, ptr %i.ca, align 4, !noalias !232
  store i32 %i.gh, ptr %i.cb, align 4, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !232
  %i.gt = add nsw i32 %i.gk, %i.gn
  %i.gu = add nsw i32 %i.gt, %i.gl
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sub nsw i32 128, %i.gv
  store i32 %i.gk, ptr %i.e, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cc, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cd, align 4, !noalias !232
  store i32 %i.gw, ptr %i.ce, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cf, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cg, align 4, !noalias !232
  store i32 %i.gk, ptr %i.ch, align 4, !noalias !232
  %i.gx = add i64 %.sroa.014.0.us, %i.fc          ; 2 uses
  %i.gy = icmp ult i64 %i.fc, %i.gx
  br i1 %i.gy, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %4 = add i64 %i.gg, 8
  %.98.neg91.i.us = select i1 %i.go, i64 27, i64 29
  %5 = add i64 %4, %.98.neg91.i.us
  %6 = trunc i64 %5 to i32
  %i.gz = and i32 %6, 31
  %notmask.i.us = shl nsw i32 -1, %i.gz
  %i.ha = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.go, i64 5, i64 3       ; 2 uses
  %i.hb = sub i64 %i.gg, %.98.i.us
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = add i32 %i.hc, 6
  %i.he = and i32 %i.hd, 31
  %i.hf = shl nuw i32 1, %i.he                    ; 2 uses
  %i.hg = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hh = shl nuw nsw i32 1, %i.hg
  %i.hi = lshr exact i32 %i.hh, 1
  %i.hj = sub i32 0, %i.hf
  %i.hk = sub i32 %i.ha, %i.hf
  %i.hl = shl nuw nsw i32 1, %..i49.us
  %i.hm = lshr exact i32 %i.hl, 1
  %7 = trunc i64 %i.gg to i32
  %i.hn = and i32 %7, 31
  %notmask93.i.us = shl nsw i32 -1, %i.hn
  %i.ho = xor i32 %notmask93.i.us, -1
  %i.hp = sub i64 3, %i.fc
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hp, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.fc, %.lr.ph89.i.us ], [ %i.hq, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
  %i.hq = add i64 %.sroa.01.087.i.us, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !232
  store i64 %.sroa.01.087.i.us, ptr %i.d, align 8, !noalias !232
  %i.hr = sub i64 %i.dx, %.sroa.01.087.i.us       ; 2 uses
  %..i101.i.us = call noundef i64 @llvm.smin.i64(i64 %i.hr, i64 7) ; 6 uses
  br i1 %i.eu, label %.lr.ph78.i.us, label %._crit_edge79.i.us

.lr.ph78.i.us:                                    ; preds = %bb.aa
  %i.hs = sub i64 3, %.sroa.01.087.i.us           ; 4 uses
  %i.ht = icmp sgt i64 %i.hs, 0
  %..i105.i.us = call i64 @llvm.smax.i64(i64 %i.hs, i64 0) ; 4 uses
  %i.hu = sub i64 %..i105.i.us, %i.hs             ; 3 uses
  %i.hv = sub i64 %..i101.i.us, %i.hs             ; 4 uses
  %i.hw = icmp uge i64 %..i101.i.us, %..i105.i.us
  %i.hx = icmp ult i64 %..i101.i.us, 8
  %or.cond99.i.us = and i1 %i.hw, %i.hx
  %i.hy = icmp ult i64 %i.hv, %i.hu
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i101.i.us
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %..i105.i.us
  %i.ib = icmp slt i64 %i.hr, 7
  %exitcond142.not.i.us = icmp eq i64 %indvars.iv.i.us, 1
  %exitcond142.1.not.i.us = icmp eq i64 %indvars.iv.i.us, 2
  %exitcond142.2.not.i.us = icmp eq i64 %indvars.iv.i.us, 3
  %exitcond142.3.not.i.us = icmp eq i64 %indvars.iv.i.us, 4
  %exitcond142.4.not.i.us = icmp eq i64 %indvars.iv.i.us, 5
  %exitcond142.5.not.i.us = icmp eq i64 %indvars.iv.i.us, 6
  %exitcond142.6.not.i.us = icmp eq i64 %indvars.iv.i.us, 7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph78.i.us
  %.sroa.069.076.i.us = phi i64 [ %i.es, %.lr.ph78.i.us ], [ %i.ic, %bb.aj ] ; 6 uses
  %i.ic = add i64 %.sroa.069.076.i.us, 1          ; 2 uses
  %i.id = icmp slt i64 %.sroa.069.076.i.us, %.sroa.04.0.us290
  br i1 %i.id, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ie = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dy)
          to label %.noexc56.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc56.us:                                      ; preds = %bb.ac
  %i.if = icmp slt i64 %.sroa.069.076.i.us, %i.en
  br i1 %i.if, label %.noexc57.us.invoke, label %bb.ad

bb.ad:                                            ; preds = %.noexc56.us
  %..i104.i.us = call noundef i64 @llvm.smin.i64(i64 %i.ev, i64 %i.ie)
  br label %.noexc57.us.invoke

bb.ae:                                            ; preds = %bb.ab
  %i.ig = invoke noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.069.076.i.us, i64 noundef 0, i64 noundef %i.dy)
          to label %.noexc57.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc57.us:                                      ; preds = %bb.ae
  %..i103.i.us = call noundef i64 @llvm.smax.i64(i64 %i.ew, i64 %i.ig)
  br label %.noexc57.us.invoke

.noexc57.us.invoke:                               ; preds = %.noexc56.us, %bb.ad, %.noexc57.us
  %i.ih = phi ptr [ %i.dq, %.noexc57.us ], [ %i.dq, %bb.ad ], [ %i.dp, %.noexc56.us ]
  %i.ii = phi i64 [ %..i103.i.us, %.noexc57.us ], [ %..i104.i.us, %bb.ad ], [ %i.ie, %.noexc56.us ]
  %i.ij = invoke { ptr, i64 } @_RNvMs5_NtCsko5zPvjVG7R_7v_frame5planeINtB5_5PlanetE3rowCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ih, i64 noundef %i.ii)
          to label %.noexc58.us unwind label %.loopexit.split-lp.loopexit.split.us ; 2 uses

.noexc58.us:                                      ; preds = %.noexc57.us.invoke
  %.sroa.031.0.i.us = extractvalue { ptr, i64 } %i.ij, 0 ; 5 uses
  %.sroa.10.0.i.us = extractvalue { ptr, i64 } %i.ij, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.0.i.us) ]
  %.not95.i.us = icmp eq i64 %.sroa.10.0.i.us, 0
  br i1 %.not95.i.us, label %.split179.us.invoke, label %bb.af

bb.af:                                            ; preds = %.noexc58.us
  %i.ik = load i16, ptr %.sroa.031.0.i.us, align 2, !noundef !4
  %i.il = zext i16 %i.ik to i32
  %i.im = icmp ult i64 %i.dz, %.sroa.10.0.i.us
  br i1 %i.im, label %bb.ag, label %.split179.us.invoke

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.dz
  %i.io = load i16, ptr %i.in, align 2, !noundef !4
  %i.ip = zext i16 %i.io to i32
  br i1 %i.ht, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %bb.ag
  %i.iq = load i32, ptr %i.e, align 4, !noalias !232, !noundef !4 ; 2 uses
  br i1 %exitcond142.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.1.i.us

.lr.ph.1.i.us:                                    ; preds = %.lr.ph.preheader.i.us
  %i.ir = load i32, ptr %i.cc, align 4, !noalias !232, !noundef !4
  %i.is = add i32 %i.ir, %i.iq                    ; 2 uses
  br i1 %exitcond142.1.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.2.i.us

.lr.ph.2.i.us:                                    ; preds = %.lr.ph.1.i.us
  %i.it = load i32, ptr %i.cd, align 4, !noalias !232, !noundef !4
  %i.iu = add i32 %i.it, %i.is                    ; 2 uses
  br i1 %exitcond142.2.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.3.i.us

.lr.ph.3.i.us:                                    ; preds = %.lr.ph.2.i.us
  %i.iv = load i32, ptr %i.ce, align 4, !noalias !232, !noundef !4
  %i.iw = add i32 %i.iv, %i.iu                    ; 2 uses
  br i1 %exitcond142.3.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.4.i.us

.lr.ph.4.i.us:                                    ; preds = %.lr.ph.3.i.us
  %i.ix = load i32, ptr %i.cf, align 4, !noalias !232, !noundef !4
  %i.iy = add i32 %i.ix, %i.iw                    ; 2 uses
  br i1 %exitcond142.4.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.5.i.us

.lr.ph.5.i.us:                                    ; preds = %.lr.ph.4.i.us
  %i.iz = load i32, ptr %i.cg, align 4, !noalias !232, !noundef !4
  %i.ja = add i32 %i.iz, %i.iy                    ; 2 uses
  br i1 %exitcond142.5.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.6.i.us

.lr.ph.6.i.us:                                    ; preds = %.lr.ph.5.i.us
  %i.jb = load i32, ptr %i.ch, align 4, !noalias !232, !noundef !4
  %i.jc = add i32 %i.jb, %i.ja
  br i1 %exitcond142.6.not.i.us, label %._crit_edge.loopexit.i.us, label %.split179.us.invoke

._crit_edge.loopexit.i.us:                        ; preds = %.lr.ph.6.i.us, %.lr.ph.5.i.us, %.lr.ph.4.i.us, %.lr.ph.3.i.us, %.lr.ph.2.i.us, %.lr.ph.1.i.us, %.lr.ph.preheader.i.us
  %.pn175.i.us = phi i32 [ %i.iq, %.lr.ph.preheader.i.us ], [ %i.is, %.lr.ph.1.i.us ], [ %i.iu, %.lr.ph.2.i.us ], [ %i.iw, %.lr.ph.3.i.us ], [ %i.iy, %.lr.ph.4.i.us ], [ %i.ja, %.lr.ph.5.i.us ], [ %i.jc, %.lr.ph.6.i.us ]
  %.lcssa.i.us = mul i32 %.pn175.i.us, %i.il
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.loopexit.i.us, %bb.ag
  %.sroa.026.0.lcssa.i.us = phi i32 [ 0, %bb.ag ], [ %.lcssa.i.us, %._crit_edge.loopexit.i.us ] ; 3 uses
  br i1 %or.cond99.i.us, label %bb.ah, label %.split183.us.invoke, !prof !12

bb.ah:                                            ; preds = %._crit_edge.i.us
  %.not96.i.us = icmp ugt i64 %i.hv, %.sroa.10.0.i.us
  %or.cond100.i.us = or i1 %i.hy, %.not96.i.us
  br i1 %or.cond100.i.us, label %.split183.us.invoke, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.hu
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.i.us, i64 %i.hv
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.jd, ptr noundef nonnull %i.je)
          to label %.noexc64.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc64.us:                                      ; preds = %bb.ai
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.c, align 8, !noalias !232 ; 3 uses
  %.sroa.41.0.copyload.i.us = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !232 ; 3 uses
  %.sroa.52.0.copyload.i.us = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !232 ; 5 uses
  %.sroa.7.0.copyload.i.us = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !232 ; 3 uses
  %i.jf = icmp ult i64 %.sroa.52.0.copyload.i.us, %.sroa.7.0.copyload.i.us
  br i1 %i.jf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us: ; preds = %.noexc64.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.us) ]
  %i.jg = sub nuw i64 %.sroa.7.0.copyload.i.us, %.sroa.52.0.copyload.i.us ; 3 uses
  %min.iters.check388 = icmp ult i64 %i.jg, 8
  br i1 %min.iters.check388, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, label %vector.ph389

vector.ph389:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us
  %n.vec390 = and i64 %i.jg, -8                   ; 3 uses
  %i.jh = add i64 %.sroa.52.0.copyload.i.us, %n.vec390
  %i.ji = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.026.0.lcssa.i.us, i64 0
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next399, %vector.body391 ] ; 2 uses
  %vec.phi393 = phi <4 x i32> [ %i.ji, %vector.ph389 ], [ %i.js, %vector.body391 ]
  %vec.phi394 = phi <4 x i32> [ zeroinitializer, %vector.ph389 ], [ %i.jt, %vector.body391 ]
  %i.jj = add nuw i64 %.sroa.52.0.copyload.i.us, %index392 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.us, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.41.0.copyload.i.us, i64 %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %wide.load395 = load <4 x i16>, ptr %i.jl, align 2
  %wide.load396 = load <4 x i16>, ptr %i.jm, align 2
  %i.jn = zext <4 x i16> %wide.load395 to <4 x i32>
  %i.jo = zext <4 x i16> %wide.load396 to <4 x i32>
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load397 = load <4 x i32>, ptr %i.jk, align 4
  %wide.load398 = load <4 x i32>, ptr %i.jp, align 4
  %i.jq = mul <4 x i32> %wide.load397, %i.jn
  %i.jr = mul <4 x i32> %wide.load398, %i.jo
  %i.js = add <4 x i32> %i.jq, %vec.phi393        ; 2 uses
  %i.jt = add <4 x i32> %i.jr, %vec.phi394        ; 2 uses
  %index.next399 = add nuw i64 %index392, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next399, %n.vec390
  br i1 %i.ju, label %middle.block400, label %vector.body391, !llvm.loop !177

middle.block400:                                  ; preds = %vector.body391
  %bin.rdx401 = add <4 x i32> %i.jt, %i.js
  %i.jv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx401) ; 2 uses
  %cmp.n402 = icmp eq i64 %i.jg, %n.vec390
  br i1 %cmp.n402, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.preheader.i.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us, %middle.block400
  %.sroa.026.170.i.us.ph = phi i32 [ %.sroa.026.0.lcssa.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.jv, %middle.block400 ]
  %.sroa.52.069.i.us.ph = phi i64 [ %.sroa.52.0.copyload.i.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph.i.us ], [ %i.jh, %middle.block400 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us
  %.sroa.026.170.i.us = phi i32 [ %i.kd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.026.170.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ]
  %.sroa.52.069.i.us = phi i64 [ %i.jy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us ], [ %.sroa.52.069.i.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEIBX_tEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.i.us.preheader ] ; 3 uses
end_hunk_1
