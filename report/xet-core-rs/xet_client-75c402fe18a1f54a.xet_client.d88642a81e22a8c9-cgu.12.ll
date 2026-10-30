Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.12?download=true
inline.NumInlined: 591
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart26parse_multipart_byteranges:bb.a
  %i.ly = sub i64 %.sroa.0111.sroa.15.0.copyload.i, %.sroa.12255.sroa.0.0.insert.insert.i
  %invariant.op = sub i64 1, %.fr215.i.i399.i
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.bh, %.lr.ph.i8.i.i.i
  %i.lz = phi i64 [ %.sink70.i.i.i.i, %bb.bh ], [ %.sroa.32260.0397.i, %.lr.ph.i8.i.i.i ] ; 3 uses
  %i.ma = phi i64 [ %i.mk, %bb.bh ], [ %i.lh, %.lr.ph.i8.i.i.i ]
  %i.mb = phi i64 [ %.sink71.i.i.i.i, %bb.bh ], [ %.sroa.24.0398.i, %.lr.ph.i8.i.i.i ] ; 7 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.ma
  %i.md = load i8, ptr %i.mc, align 1, !alias.scope !719, !noalias !718, !noundef !4
  %i.me = and i8 %i.md, 63
  %i.mf = zext nneg i8 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = and i64 %i.mg, %.sroa.0111.sroa.7.0.copyload.i
  %.not.i9.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not.i9.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.mi = add i64 %i.mb, %.sroa.0111.sroa.15.0.copyload.i
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.split.i.i.i.i
  %..i.i10.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.lz, i64 %.fr215.i.i399.i) ; 2 uses
  %i.mj = icmp ult i64 %..i.i10.i.i.i, %.sroa.0111.sroa.15.0.copyload.i
  br i1 %i.mj, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

bb.bh:                                            ; preds = %bb.bl, %bb.bk, %bb.bf
  %.sink71.i.i.i.i = phi i64 [ %i.ng, %bb.bl ], [ %i.nf, %bb.bk ], [ %i.mi, %bb.bf ] ; 2 uses
  %.sink70.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.ly, %bb.bk ], [ 0, %bb.bf ] ; 2 uses
  %i.mk = add i64 %.sink71.i.i.i.i, %i.ip         ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %.sroa.0111.sroa.13.0.copyload.i
  br i1 %i.ml, label %.lr.ph.split.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

bb.bi:                                            ; preds = %.lr.ph
  %i.mm = add nuw nsw i64 %.sroa.04.0.i.i.i.i1252, 1 ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %.sroa.0111.sroa.15.0.copyload.i
  br i1 %i.mn, label %.lr.ph, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.bi, %bb.bg
  %i.mo = icmp ult i64 %i.lz, %.fr215.i.i399.i
  br i1 %i.mo, label %.lr.ph1254, label %.split.us.i11.i.i.i

.lr.ph:                                           ; preds = %bb.bg, %bb.bi
  %.sroa.04.0.i.i.i.i1252 = phi i64 [ %i.mm, %bb.bi ], [ %..i.i10.i.i.i, %bb.bg ] ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.14.0.copyload.i, i64 %.sroa.04.0.i.i.i.i1252
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !720, !noalias !718, !noundef !4
  %i.mr = add i64 %.sroa.04.0.i.i.i.i1252, %i.mb  ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %.sroa.0111.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ms)
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.mr
  %i.mu = load i8, ptr %i.mt, align 1, !alias.scope !719, !noalias !718, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.mq, %i.mu
  br i1 %.not21.i.i.i.i, label %bb.bi, label %bb.bl

.preheader36.i.i.i.i:                             ; preds = %bb.bj
  %i.mv = icmp ult i64 %i.lz, %i.mx
  br i1 %i.mv, label %.lr.ph1254, label %.split.us.i11.i.i.i

.split.us.i11.i.i.i:                              ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %i.mw = add i64 %i.mb, %.sroa.0111.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

.lr.ph1254:                                       ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i1253 = phi i64 [ %i.mx, %.preheader36.i.i.i.i ], [ %.fr215.i.i399.i, %.preheader36.i.i.i.i.preheader ]
  %i.mx = add i64 %.sroa.2.0.i.i.i.i1253, -1      ; 6 uses
  %i.my = icmp ult i64 %i.mx, %.sroa.0111.sroa.15.0.copyload.i
  br i1 %i.my, label %bb.bj, label %.split32.us.i20.i.i.i.invoke

bb.bj:                                            ; preds = %.lr.ph1254
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.14.0.copyload.i, i64 %i.mx
  %i.na = load i8, ptr %i.mz, align 1, !alias.scope !720, !noalias !718, !noundef !4
  %i.nb = add i64 %i.mx, %i.mb                    ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %.sroa.0111.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.nb
  %i.ne = load i8, ptr %i.nd, align 1, !alias.scope !719, !noalias !718, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.na, %i.ne
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nf = add i64 %i.mb, %.sroa.12255.sroa.0.0.insert.insert.i
  br label %bb.bh

bb.bl:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.mb, %invariant.op
  %i.ng = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i1252
  br label %bb.bh

bb.bm:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  br i1 %i.li, label %.lr.ph.i15.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

.lr.ph.i15.i.i.i:                                 ; preds = %bb.bm
  %.sroa.12255.sroa.12272.0.insert.ext273.i = zext i8 %.sroa.12255.sroa.12272.0392.i to i64
  %.sroa.12255.sroa.12272.0.insert.shift274.i = shl nuw nsw i64 %.sroa.12255.sroa.12272.0.insert.ext273.i, 16
  %.sroa.12255.sroa.0.0.insert.ext265.i = zext i8 %.sroa.12255.sroa.0.0393.i to i64
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr215.i.i399.i, i64 range(i64 0, -9223372036854775808) %.sroa.0111.sroa.15.0.copyload.i)
  %i.nh = add i64 %.fr215.i.i399.i, -1            ; 2 uses
  %.first_iter.i16.i.i.i = icmp ult i64 %i.nh, %.sroa.0111.sroa.15.0.copyload.i
  %i.ni = or disjoint i64 %.sroa.12255.sroa.12272.0.insert.shift274.i, %.sroa.12255.sroa.0.0.insert.ext265.i
  %.sroa.12255.sroa.0.0.insert.insert267.i = or disjoint i64 %i.ni, %i.iq
  %exitcond.not.i17.i.i.i1256.not = icmp ult i64 %.fr215.i.i399.i, %.sroa.0111.sroa.15.0.copyload.i
  %invariant.op1538 = sub i64 1, %.fr215.i.i399.i
  %.not34.i.us.i.i.i1259 = icmp eq i64 %.fr215.i.i399.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.bp, %.lr.ph.i15.i.i.i
  %i.nj = phi i64 [ %i.oj, %bb.bp ], [ %i.lh, %.lr.ph.i15.i.i.i ]
  %i.nk = phi i64 [ %.sink.i18.i.i.i, %bb.bp ], [ %.sroa.24.0398.i, %.lr.ph.i15.i.i.i ] ; 7 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.nj
  %i.nm = load i8, ptr %i.nl, align 1, !alias.scope !721, !noalias !718, !noundef !4
  %i.nn = and i8 %i.nm, 63
  %i.no = zext nneg i8 %i.nn to i64
  %i.np = shl nuw i64 1, %i.no
  %i.nq = and i64 %i.np, %.sroa.0111.sroa.7.0.copyload.i
  %.not.us.i.i.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not.us.i.i.i.i, label %bb.bo, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i1256.not, label %.lr.ph1258, label %.preheader.i19.preheader.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph1258
  %i.nr = add i64 %.sroa.04.0.us.i.i.i.i1257, 1   ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.nr, %umax.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %.preheader.i19.preheader.i.i.i, label %.lr.ph1258

.preheader.i19.preheader.i.i.i:                   ; preds = %.preheader35.i.i.i.i, %.preheader35.i.i.i.i.preheader
  br i1 %.first_iter.i16.i.i.i, label %.preheader.i19.us.i.i.i.preheader, label %.preheader.i19.i.i.i

.preheader.i19.us.i.i.i.preheader:                ; preds = %.preheader.i19.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i1259, label %.split.us.i21.i.i.i, label %.lr.ph1261

.preheader.i19.us.i.i.i:                          ; preds = %.lr.ph1261
  %.not34.i.us.i.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not34.i.us.i.i.i, label %.split.us.i21.i.i.i, label %.lr.ph1261

.lr.ph1261:                                       ; preds = %.preheader.i19.us.i.i.i.preheader, %.preheader.i19.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i1260 = phi i64 [ %i.ns, %.preheader.i19.us.i.i.i ], [ %.fr215.i.i399.i, %.preheader.i19.us.i.i.i.preheader ]
  %i.ns = add i64 %.sroa.2.0.us.i.us.i.i.i1260, -1 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.14.0.copyload.i, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !alias.scope !722, !noalias !718, !noundef !4
  %i.nv = add i64 %i.ns, %i.nk                    ; 2 uses
  %i.nw = icmp ult i64 %i.nv, %.sroa.0111.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.nw)
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.nv
  %i.ny = load i8, ptr %i.nx, align 1, !alias.scope !721, !noalias !718, !noundef !4
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.nu, %i.ny
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i19.us.i.i.i, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph1261
  %i.nz = add i64 %.sroa.12255.sroa.0.0.insert.insert267.i, %i.nk
  br label %bb.bp

.lr.ph1258:                                       ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i1257 = phi i64 [ %i.nr, %.preheader35.i.i.i.i ], [ %.fr215.i.i399.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.14.0.copyload.i, i64 %.sroa.04.0.us.i.i.i.i1257
  %i.ob = load i8, ptr %i.oa, align 1, !alias.scope !722, !noalias !718, !noundef !4
  %i.oc = add i64 %.sroa.04.0.us.i.i.i.i1257, %i.nk ; 2 uses
  %i.od = icmp ult i64 %i.oc, %.sroa.0111.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.oc
  %i.of = load i8, ptr %i.oe, align 1, !alias.scope !721, !noalias !718, !noundef !4
  %.not21.us.i.i.i.i = icmp eq i8 %i.ob, %i.of
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.bn

.preheader.i19.i.i.i:                             ; preds = %.preheader.i19.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i1259, label %.split.us.i21.i.i.i, label %.split32.us.i20.i.i.i.invoke

.split32.us.i20.i.i.i.invoke:                     ; preds = %.preheader.i19.i.i.i, %.lr.ph1254
  %i.og = phi i64 [ %i.mx, %.lr.ph1254 ], [ %i.nh, %.preheader.i19.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.og, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0111.sroa.15.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
          to label %.split32.us.i20.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split32.us.i20.i.i.i.cont:                       ; preds = %.split32.us.i20.i.i.i.invoke
  unreachable

bb.bn:                                            ; preds = %.lr.ph1258
  %.reass282.i.reass.i.reass.i.reass.reass = add i64 %i.nk, %invariant.op1538
  %i.oh = add i64 %.reass282.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i1257
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.oi = add i64 %i.nk, %.sroa.0111.sroa.15.0.copyload.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %.split.us.i.i.i
  %.sink.i18.i.i.i = phi i64 [ %i.oi, %bb.bo ], [ %i.oh, %bb.bn ], [ %i.nz, %.split.us.i.i.i ] ; 2 uses
  %i.oj = add i64 %.sink.i18.i.i.i, %i.ip         ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %.sroa.0111.sroa.13.0.copyload.i
  br i1 %i.ok, label %.lr.ph.split.us.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

.split.us.i21.i.i.i:                              ; preds = %.preheader.i19.us.i.i.i.preheader, %.preheader.i19.us.i.i.i, %.preheader.i19.i.i.i
  %i.ol = add i64 %i.nk, %.sroa.0111.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

bb.bq:                                            ; preds = %.split166.us.i.i.i
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.bh, %bb.bp, %bb.bd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i, %bb.ay, %bb.bq, %.split.us.i21.i.i.i, %bb.bm, %.split.us.i11.i.i.i, %bb.be, %.loopexit43.i.i.i, %.noexc167, %bb.az, %.split166.us.i.i.i, %bb.ax, %bb.ar, %.preheader.i.i.i
  %.sroa.12255.sroa.12272.2.i = phi i8 [ 0, %bb.ax ], [ 0, %bb.ar ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bp ], [ %.sroa.12255.sroa.12272.0392.i, %.split.us.i21.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.split.us.i11.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.loopexit43.i.i.i ], [ 0, %.split166.us.i.i.i ], [ 1, %.preheader.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.noexc167 ], [ %.sroa.12255.sroa.12272.0392.i, %bb.az ], [ %.sroa.12255.sroa.12272.0392.i, %bb.be ], [ 1, %bb.bq ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bd ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bm ], [ 0, %bb.ay ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bh ]
  %.sroa.12255.sroa.0.3.i = phi i8 [ 0, %bb.ax ], [ 0, %bb.ar ], [ %.sroa.12255.sroa.0.0393.i, %bb.bp ], [ %.sroa.12255.sroa.0.0393.i, %.split.us.i21.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.split.us.i11.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.loopexit43.i.i.i ], [ 0, %.split166.us.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.preheader.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.noexc167 ], [ %.sroa.12255.sroa.0.0393.i, %bb.az ], [ %.sroa.12255.sroa.0.0393.i, %bb.be ], [ 1, %bb.bq ], [ %.sroa.12255.sroa.0.0393.i, %bb.bd ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %bb.bm ], [ 0, %bb.ay ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %bb.bh ]
  %.sroa.49.1.i = phi i1 [ false, %bb.ax ], [ false, %bb.ar ], [ true, %bb.bp ], [ false, %.split.us.i21.i.i.i ], [ false, %.split.us.i11.i.i.i ], [ false, %.loopexit43.i.i.i ], [ false, %.split166.us.i.i.i ], [ true, %.preheader.i.i.i ], [ true, %.noexc167 ], [ true, %bb.az ], [ true, %bb.be ], [ true, %bb.bq ], [ true, %bb.bd ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ true, %bb.bm ], [ false, %bb.ay ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ true, %bb.bh ]
  %.sroa.39.1.i = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %.fr215.i.i399.i, %bb.ar ], [ %.sroa.39.0395.i, %bb.bp ], [ %i.ol, %.split.us.i21.i.i.i ], [ %i.mw, %.split.us.i11.i.i.i ], [ %i.lw, %.loopexit43.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %.sroa.39.0395.i, %.preheader.i.i.i ], [ %.sroa.39.0395.i, %.noexc167 ], [ %.sroa.39.0395.i, %bb.az ], [ %.sroa.39.0395.i, %bb.be ], [ %.sroa.39.0395.i, %bb.bq ], [ %.sroa.39.0395.i, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.39.0395.i, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.39.0395.i, %bb.bh ]
  %.sroa.32260.4.i = phi i64 [ %.sroa.32260.0397.i, %bb.ax ], [ %.sroa.32260.0397.i, %bb.ar ], [ -1, %bb.bp ], [ -1, %.split.us.i21.i.i.i ], [ 0, %.split.us.i11.i.i.i ], [ %.sroa.32260.0397.i, %.loopexit43.i.i.i ], [ %.sroa.32260.0397.i, %.split166.us.i.i.i ], [ %.sroa.32260.0397.i, %.preheader.i.i.i ], [ %.sroa.32260.0397.i, %.noexc167 ], [ %.sroa.32260.0397.i, %bb.az ], [ %.sroa.32260.0397.i, %bb.be ], [ %.sroa.32260.0397.i, %bb.bq ], [ %.sroa.32260.0397.i, %bb.bd ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ -1, %bb.bm ], [ %.sroa.32260.0397.i, %bb.ay ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sink70.i.i.i.i, %bb.bh ]
  %.sroa.24.3.i = phi i64 [ %.sroa.24.0398.i, %bb.ax ], [ %.sroa.24.0398.i, %bb.ar ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bp ], [ %i.ol, %.split.us.i21.i.i.i ], [ %i.mw, %.split.us.i11.i.i.i ], [ %.sroa.24.0398.i, %.loopexit43.i.i.i ], [ %.sroa.24.0398.i, %.split166.us.i.i.i ], [ %.sroa.24.0398.i, %.preheader.i.i.i ], [ %.sroa.24.0398.i, %.noexc167 ], [ %.sroa.24.0398.i, %bb.az ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.be ], [ %.sroa.24.0398.i, %bb.bq ], [ %.sroa.24.0398.i, %bb.bd ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bm ], [ %.sroa.24.0398.i, %bb.ay ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bh ]
  %.sroa.5.4.i = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %.fr215.i.i399.i, %bb.ar ], [ %.fr215.i.i399.i, %bb.bp ], [ %.fr215.i.i399.i, %.split.us.i21.i.i.i ], [ %.fr215.i.i399.i, %.split.us.i11.i.i.i ], [ %i.lw, %.loopexit43.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %.fr215.i.i399.i, %.preheader.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %.noexc167 ], [ %.fr215.i.i399.i, %bb.az ], [ %.fr215.i.i399.i, %bb.be ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bq ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.fr215.i.i399.i, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.fr215.i.i399.i, %bb.bh ]
  %.pn.i153 = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %.fr215.i.i399.i, %bb.ar ], [ %i.io, %bb.bp ], [ %i.nk, %.split.us.i21.i.i.i ], [ %i.mb, %.split.us.i11.i.i.i ], [ %i.lv, %.loopexit43.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %i.io, %.preheader.i.i.i ], [ %i.io, %.noexc167 ], [ %i.io, %bb.az ], [ %i.io, %bb.be ], [ %i.io, %bb.bq ], [ %i.io, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %i.io, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %i.io, %bb.bh ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %.sroa.39.0395.i ; 2 uses
  %.sroa.4.1.i.i = sub nuw i64 %.pn.i153, %.sroa.39.0395.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !709
  store ptr %.sroa.0.1.i.i, ptr %i.s, align 8, !noalias !709, !captures !11
  store i64 %.sroa.4.1.i.i, ptr %i.gq, align 8, !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !709
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %.pn.i153
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %.sroa.0.1.i.i, ptr noundef nonnull %i.om)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !709
  %i.on = load ptr, ptr %i.gr, align 8, !noalias !709, !nonnull !4, !noundef !4 ; 2 uses
  %i.oo = load i64, ptr %i.gs, align 8, !noalias !709, !noundef !4 ; 2 uses
  %i.op = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.on, i64 noundef %i.oo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 14)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.thread.i: ; preds = %.noexc173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !709
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 47, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc171:                                        ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.thread.i
  %i.oq = load i64, ptr %i.m, align 8, !range !6, !noalias !709, !noundef !4
  %i.or = trunc nuw i64 %i.oq to i1
  %i.os = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !range !7, !noalias !709, !noundef !4 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.or, label %bb.br, label %bb.bs, !prof !8

bb.br:                                            ; preds = %.noexc171
  %i.ov = load i64, ptr %i.ou, align 8, !noalias !709
  br label %.invoke

.invoke:                                          ; preds = %bb.dy, %bb.ee, %bb.br
  %i.ow = phi i64 [ %i.ot, %bb.br ], [ %i.vz, %bb.ee ], [ %i.vp, %bb.dy ]
  %i.ox = phi i64 [ %i.ov, %bb.br ], [ %i.wb, %bb.ee ], [ %i.vr, %bb.dy ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ow, i64 %i.ox) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bs:                                            ; preds = %.noexc171
  %i.oy = load ptr, ptr %i.ou, align 8, !noalias !709, !nonnull !4, !noundef !4 ; 2 uses
  %i.oz = icmp samesign ugt i64 %i.ot, 46
  call void @llvm.assume(i1 %i.oz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.oy, ptr noundef nonnull align 1 dereferenceable(47) @100, i64 47, i1 false), !noalias !723
  %i.pa = ptrtoint ptr %i.oy to i64
  br label %.thread258

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc170, %bb.bu, %bb.ca, %bb.ci, %.loopexit.i, %.thread324.i, %.thread316.i, %.thread303.i, %.thread337.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #25
          to label %.body unwind label %bb.df, !noalias !723

bb.bt:                                            ; preds = %.noexc170
  br i1 %i.op, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pb = add i64 %i.oo, -14
  %i.pc = getelementptr inbounds nuw i8, ptr %i.on, i64 14
  %i.pd = call fastcc { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pc, i64 noundef %i.pb), !noalias !723 ; 2 uses
  %i.pe = extractvalue { ptr, i64 } %i.pd, 0      ; 2 uses
  %i.pf = extractvalue { ptr, i64 } %i.pd, 1      ; 2 uses
  %i.pg = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pe, i64 noundef %i.pf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 6)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.bv:                                            ; preds = %bb.by, %bb.bt
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.bw, !noalias !723

bb.bw:                                            ; preds = %bb.bv
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.bx, !noalias !723

bb.bx:                                            ; preds = %bb.bw
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !723
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !709
  %.fr215.i.i.i = freeze i64 %.sroa.5.4.i
  br i1 %.sroa.49.1.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsiAynQAjgDuT_10xet_client.exit.thread.i, label %bb.al

bb.by:                                            ; preds = %bb.bu
  br i1 %i.pg, label %bb.bz, label %bb.bv

bb.bz:                                            ; preds = %bb.by
  %i.pj = add i64 %i.pf, -6
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 6
  %i.pl = call fastcc { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pk, i64 noundef %i.pj), !noalias !723 ; 2 uses
  %i.pm = extractvalue { ptr, i64 } %i.pl, 0      ; 11 uses
  %i.pn = extractvalue { ptr, i64 } %i.pl, 1      ; 4 uses
  br label %.lr.ph.split.i.i.i154

.lr.ph.split.i.i.i154:                            ; preds = %.lr.ph.split.i.i.i154.backedge, %bb.bz
  %i.po = phi i64 [ 0, %bb.bz ], [ %i.qc, %.lr.ph.split.i.i.i154.backedge ] ; 5 uses
  %i.pp = sub nuw i64 %i.pn, %i.po                ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.po ; 2 uses
  %i.pr = icmp samesign ult i64 %i.pp, 16
  br i1 %i.pr, label %.preheader.i.i.i.i157, label %bb.ca

.preheader.i.i.i.i157:                            ; preds = %.lr.ph.split.i.i.i154
  %.not.i.i.i.i158 = icmp eq i64 %i.pn, %i.po
  br i1 %.not.i.i.i.i158, label %.thread303.i, label %.lr.ph.i.i.i186.i

bb.ca:                                            ; preds = %.lr.ph.split.i.i.i154
  %i.ps = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pq, i64 noundef range(i64 0, -9223372036854775808) %i.pp)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723 ; 2 uses

.noexc.i:                                         ; preds = %bb.ca
  %i.pt = extractvalue { i64, i64 } %i.ps, 0
  %i.pu = extractvalue { i64, i64 } %i.ps, 1
  %i.pv = trunc nuw i64 %i.pt to i1
  br i1 %i.pv, label %.loopexit.i.i.i155, label %.thread303.i

.lr.ph.i.i.i186.i:                                ; preds = %.preheader.i.i.i.i157, %bb.cb
  %.sroa.04.011.i.i.i187.i = phi i64 [ %i.pz, %bb.cb ], [ 0, %.preheader.i.i.i.i157 ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.sroa.04.011.i.i.i187.i
  %i.px = load i8, ptr %i.pw, align 1, !alias.scope !724, !noalias !725, !noundef !4
  %i.py = icmp eq i8 %i.px, 47
  br i1 %i.py, label %.loopexit.i.i.i155, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i186.i
  %i.pz = add nuw nsw i64 %.sroa.04.011.i.i.i187.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i159 = icmp eq i64 %i.pz, %i.pp
  br i1 %exitcond.not.i.i.i.i159, label %.thread303.i, label %.lr.ph.i.i.i186.i

.loopexit.i.i.i155:                               ; preds = %.lr.ph.i.i.i186.i, %.noexc.i
  %.sroa.5.0.i.i.i185.i = phi i64 [ %i.pu, %.noexc.i ], [ %.sroa.04.011.i.i.i187.i, %.lr.ph.i.i.i186.i ] ; 3 uses
  %i.qa = icmp ult i64 %.sroa.5.0.i.i.i185.i, %i.pp
  call void @llvm.assume(i1 %i.qa)
  %i.qb = add i64 %i.po, 1
  %i.qc = add i64 %i.qb, %.sroa.5.0.i.i.i185.i    ; 2 uses
  %.not12.i.i.i156 = icmp ugt i64 %i.qc, %i.pn    ; 2 uses
  %i.qd = add i64 %.sroa.5.0.i.i.i185.i, %i.po    ; 10 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.qd, %i.pn
  br i1 %or.cond.i.not.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i.i.i155
  br i1 %.not12.i.i.i156, label %.thread303.i, label %.lr.ph.split.i.i.i154.backedge

bb.cd:                                            ; preds = %.loopexit.i.i.i155
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qd
  %lhsc.i.i = load i8, ptr %i.qe, align 1, !alias.scope !726, !noalias !723
  %i.qf = icmp eq i8 %lhsc.i.i, 47                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i156, %i.qf
  br i1 %brmerge.i.i, label %bb.ce, label %.lr.ph.split.i.i.i154.backedge

.lr.ph.split.i.i.i154.backedge:                   ; preds = %bb.cd, %bb.cc
  br label %.lr.ph.split.i.i.i154

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.qf, label %.lr.ph.split.i.i193.i, label %.thread303.i

.thread303.i:                                     ; preds = %bb.cc, %.noexc.i, %.preheader.i.i.i.i157, %bb.cb, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !727
  store ptr %i.s, ptr %i.g, align 8, !noalias !727
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiAynQAjgDuT_10xet_client, ptr %.sroa.42.0..sroa_idx.i189.i, align 8, !noalias !727
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gw, ptr noundef nonnull @59, ptr noundef nonnull %i.g)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.cf:                                            ; preds = %.thread303.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !727
  %.sroa.635.0.copyload.i = load i64, ptr %i.gw, align 8, !noalias !709
  %.sroa.21.16.copyload = load i64, ptr %.sroa.838.0..sroa_idx.i, align 8, !noalias !711
  %i.qg = load <2 x i64>, ptr %.sroa.30.16..sroa.838.0..sroa_idx.i.sroa_idx, align 8, !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !709
  br label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i: ; preds = %.preheader56.i232.i, %bb.dc, %.preheader.i240.i, %bb.de, %bb.dd, %bb.cp, %bb.cf
  %.sroa.21.0 = phi i64 [ %.sroa.21.16.copyload, %bb.cf ], [ %.sroa.21.16.copyload219, %bb.cp ], [ %.sroa.21.16.copyload220, %bb.de ], [ %.sroa.21.16.copyload221, %bb.dd ], [ 0, %.preheader.i240.i ], [ %i.tk, %bb.dc ], [ %i.ta, %.preheader56.i232.i ] ; 2 uses
  %.sroa.12.0233 = phi i64 [ %.sroa.635.0.copyload.i, %bb.cf ], [ %.sroa.655.0.copyload.i, %bb.cp ], [ %.sroa.675.0.copyload.i, %bb.de ], [ %.sroa.692.0.copyload.i, %bb.dd ], [ %.sroa.12285.0335.i, %.preheader.i240.i ], [ %.sroa.12285.0335.i, %bb.dc ], [ %.sroa.12285.0335.i, %.preheader56.i232.i ] ; 2 uses
  %.not122 = phi i1 [ false, %bb.cf ], [ false, %bb.cp ], [ false, %bb.de ], [ false, %bb.dd ], [ true, %.preheader.i240.i ], [ true, %bb.dc ], [ true, %.preheader56.i232.i ]
  %.sroa.0216.0 = phi i64 [ 29, %bb.cf ], [ 29, %bb.cp ], [ 29, %bb.de ], [ 29, %bb.dd ], [ -1, %.preheader.i240.i ], [ -1, %bb.dc ], [ -1, %.preheader56.i232.i ]
  %i.qh = phi <2 x i64> [ %i.qg, %bb.cf ], [ %i.rc, %bb.cp ], [ %i.tm, %bb.de ], [ %i.tl, %bb.dd ], [ undef, %.preheader.i240.i ], [ undef, %bb.dc ], [ undef, %.preheader56.i232.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit192.i unwind label %bb.cg, !noalias !723

bb.cg:                                            ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.ch, !noalias !723

end_hunk_0
