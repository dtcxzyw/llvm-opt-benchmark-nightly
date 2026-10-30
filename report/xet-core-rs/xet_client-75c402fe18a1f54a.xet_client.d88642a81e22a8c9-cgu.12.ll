Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.12?download=true
inline.NumInlined: 591
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart26parse_multipart_byteranges:bb.a
  %i.ob = load i8, ptr %i.oa, align 1, !alias.scope !722, !noalias !718, !noundef !4
  %i.oc = add i64 %.sroa.04.0.us.i.i.i.i1256, %i.nk ; 2 uses
  %i.od = icmp ult i64 %i.oc, %.sroa.0111.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0111.sroa.12.0.copyload.i, i64 %i.oc
  %i.of = load i8, ptr %i.oe, align 1, !alias.scope !721, !noalias !718, !noundef !4
  %.not21.us.i.i.i.i = icmp eq i8 %i.ob, %i.of
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.bn

.preheader.i19.i.i.i:                             ; preds = %.preheader.i19.preheader.i.i.i
  br i1 %.not34.i.us.i.i.i1258, label %.split.us.i21.i.i.i, label %.split32.us.i20.i.i.i.invoke

.split32.us.i20.i.i.i.invoke:                     ; preds = %.preheader.i19.i.i.i, %.lr.ph1253
  %i.og = phi i64 [ %i.mx, %.lr.ph1253 ], [ %i.nh, %.preheader.i19.i.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.og, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0111.sroa.15.0.copyload.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
          to label %.split32.us.i20.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split32.us.i20.i.i.i.cont:                       ; preds = %.split32.us.i20.i.i.i.invoke
  unreachable

bb.bn:                                            ; preds = %.lr.ph1257
  %.reass282.i.reass.i.reass.i.reass.reass = add i64 %i.nk, %invariant.op1537
  %i.oh = add i64 %.reass282.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i1256
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
  %.sroa.12255.sroa.12272.2.i = phi i8 [ 0, %.split166.us.i.i.i ], [ 0, %bb.ar ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bp ], [ 0, %bb.ax ], [ %.sroa.12255.sroa.12272.0392.i, %.split.us.i21.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.split.us.i11.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.loopexit43.i.i.i ], [ 1, %.preheader.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %.noexc167 ], [ %.sroa.12255.sroa.12272.0392.i, %bb.az ], [ %.sroa.12255.sroa.12272.0392.i, %bb.be ], [ 1, %bb.bq ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bd ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bm ], [ 0, %bb.ay ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.12255.sroa.12272.0392.i, %bb.bh ]
  %.sroa.12255.sroa.0.3.i = phi i8 [ 0, %.split166.us.i.i.i ], [ 0, %bb.ar ], [ %.sroa.12255.sroa.0.0393.i, %bb.bp ], [ 0, %bb.ax ], [ %.sroa.12255.sroa.0.0393.i, %.split.us.i21.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.split.us.i11.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.loopexit43.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.preheader.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %.noexc167 ], [ %.sroa.12255.sroa.0.0393.i, %bb.az ], [ %.sroa.12255.sroa.0.0393.i, %bb.be ], [ 1, %bb.bq ], [ %.sroa.12255.sroa.0.0393.i, %bb.bd ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %bb.bm ], [ 0, %bb.ay ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ 0, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.12255.sroa.0.0393.i, %bb.bh ]
  %.sroa.49.1.i = phi i1 [ false, %.split166.us.i.i.i ], [ false, %bb.ar ], [ true, %bb.bp ], [ false, %bb.ax ], [ false, %.split.us.i21.i.i.i ], [ false, %.split.us.i11.i.i.i ], [ false, %.loopexit43.i.i.i ], [ true, %.preheader.i.i.i ], [ true, %.noexc167 ], [ true, %bb.az ], [ true, %bb.be ], [ true, %bb.bq ], [ true, %bb.bd ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ true, %bb.bm ], [ false, %bb.ay ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ false, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ true, %bb.bh ]
  %.sroa.39.1.i = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %.fr215.i.i399.i, %bb.ar ], [ %.sroa.39.0395.i, %bb.bp ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %i.ol, %.split.us.i21.i.i.i ], [ %i.mw, %.split.us.i11.i.i.i ], [ %i.lw, %.loopexit43.i.i.i ], [ %.sroa.39.0395.i, %.preheader.i.i.i ], [ %.sroa.39.0395.i, %.noexc167 ], [ %.sroa.39.0395.i, %bb.az ], [ %.sroa.39.0395.i, %bb.be ], [ %.sroa.39.0395.i, %bb.bq ], [ %.sroa.39.0395.i, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.39.0395.i, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.39.0395.i, %bb.bh ]
  %.sroa.32260.4.i = phi i64 [ %.sroa.32260.0397.i, %.split166.us.i.i.i ], [ %.sroa.32260.0397.i, %bb.ar ], [ -1, %bb.bp ], [ %.sroa.32260.0397.i, %bb.ax ], [ -1, %.split.us.i21.i.i.i ], [ 0, %.split.us.i11.i.i.i ], [ %.sroa.32260.0397.i, %.loopexit43.i.i.i ], [ %.sroa.32260.0397.i, %.preheader.i.i.i ], [ %.sroa.32260.0397.i, %.noexc167 ], [ %.sroa.32260.0397.i, %bb.az ], [ %.sroa.32260.0397.i, %bb.be ], [ %.sroa.32260.0397.i, %bb.bq ], [ %.sroa.32260.0397.i, %bb.bd ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ -1, %bb.bm ], [ %.sroa.32260.0397.i, %bb.ay ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %.sroa.32260.0397.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sink70.i.i.i.i, %bb.bh ]
  %.sroa.24.3.i = phi i64 [ %.sroa.24.0398.i, %.split166.us.i.i.i ], [ %.sroa.24.0398.i, %bb.ar ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bp ], [ %.sroa.24.0398.i, %bb.ax ], [ %i.ol, %.split.us.i21.i.i.i ], [ %i.mw, %.split.us.i11.i.i.i ], [ %.sroa.24.0398.i, %.loopexit43.i.i.i ], [ %.sroa.24.0398.i, %.preheader.i.i.i ], [ %.sroa.24.0398.i, %.noexc167 ], [ %.sroa.24.0398.i, %bb.az ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.be ], [ %.sroa.24.0398.i, %bb.bq ], [ %.sroa.24.0398.i, %bb.bd ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bm ], [ %.sroa.24.0398.i, %bb.ay ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %.sroa.24.0398.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bh ]
  %.sroa.5.4.i = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %.fr215.i.i399.i, %bb.ar ], [ %.fr215.i.i399.i, %bb.bp ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %.fr215.i.i399.i, %.split.us.i21.i.i.i ], [ %.fr215.i.i399.i, %.split.us.i11.i.i.i ], [ %i.lw, %.loopexit43.i.i.i ], [ %.fr215.i.i399.i, %.preheader.i.i.i ], [ %.sroa.0111.sroa.13.0.copyload.i, %.noexc167 ], [ %.fr215.i.i399.i, %bb.az ], [ %.fr215.i.i399.i, %bb.be ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bq ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %.fr215.i.i399.i, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %.fr215.i.i399.i, %bb.bh ]
  %.pn.i153 = phi i64 [ %.sroa.0111.sroa.13.0.copyload.i, %.split166.us.i.i.i ], [ %.fr215.i.i399.i, %bb.ar ], [ %i.io, %bb.bp ], [ %.sroa.0111.sroa.13.0.copyload.i, %bb.ax ], [ %i.nk, %.split.us.i21.i.i.i ], [ %i.mb, %.split.us.i11.i.i.i ], [ %i.lv, %.loopexit43.i.i.i ], [ %i.io, %.preheader.i.i.i ], [ %i.io, %.noexc167 ], [ %i.io, %bb.az ], [ %i.io, %bb.be ], [ %i.io, %bb.bq ], [ %i.io, %bb.bd ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.us.i.i.i ], [ %i.io, %bb.bm ], [ %i.ko, %bb.ay ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.us.i.i.i ], [ %i.ko, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.us.i.i.i ], [ %i.io, %bb.bh ] ; 2 uses
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

.invoke:                                          ; preds = %bb.dz, %bb.ef, %bb.br
  %i.ow = phi i64 [ %i.ot, %bb.br ], [ %i.vy, %bb.ef ], [ %i.vo, %bb.dz ]
  %i.ox = phi i64 [ %i.ov, %bb.br ], [ %i.wa, %bb.ef ], [ %i.vq, %bb.dz ]
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
          to label %.body unwind label %bb.dg, !noalias !723

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
  %i.qd = add i64 %.sroa.5.0.i.i.i185.i, %i.po    ; 12 uses
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

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i: ; preds = %.preheader56.i232.i, %bb.dd, %.preheader.i240.i, %bb.df, %bb.de, %bb.cp, %bb.cf
  %.sroa.21.0 = phi i64 [ %.sroa.21.16.copyload, %bb.cf ], [ %.sroa.21.16.copyload219, %bb.cp ], [ %.sroa.21.16.copyload220, %bb.df ], [ %.sroa.21.16.copyload221, %bb.de ], [ 0, %.preheader.i240.i ], [ %i.tj, %bb.dd ], [ %i.sz, %.preheader56.i232.i ] ; 2 uses
  %.sroa.12.0233 = phi i64 [ %.sroa.635.0.copyload.i, %bb.cf ], [ %.sroa.655.0.copyload.i, %bb.cp ], [ %.sroa.675.0.copyload.i, %bb.df ], [ %.sroa.692.0.copyload.i, %bb.de ], [ %.sroa.12285.0334483.i, %.preheader.i240.i ], [ %.sroa.12285.0334483.i, %bb.dd ], [ %.sroa.12285.0334483.i, %.preheader56.i232.i ] ; 2 uses
  %.not122 = phi i1 [ false, %bb.cf ], [ false, %bb.cp ], [ false, %bb.df ], [ false, %bb.de ], [ true, %.preheader.i240.i ], [ true, %bb.dd ], [ true, %.preheader56.i232.i ]
  %.sroa.0216.0 = phi i64 [ 29, %bb.cf ], [ 29, %bb.cp ], [ 29, %bb.df ], [ 29, %bb.de ], [ -1, %.preheader.i240.i ], [ -1, %bb.dd ], [ -1, %.preheader56.i232.i ]
  %i.qh = phi <2 x i64> [ %i.qg, %bb.cf ], [ %i.rc, %bb.cp ], [ %i.tl, %bb.df ], [ %i.tk, %bb.de ], [ undef, %.preheader.i240.i ], [ undef, %bb.dd ], [ undef, %.preheader56.i232.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit192.i unwind label %bb.cg, !noalias !723

bb.cg:                                            ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.ch, !noalias !723

bb.ch:                                            ; preds = %bb.cg
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !723
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit192.i: ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.split.i.i193.i:                            ; preds = %bb.ce, %.lr.ph.split.i.i193.i.backedge
  %i.qk = phi i64 [ %i.qy, %.lr.ph.split.i.i193.i.backedge ], [ 0, %bb.ce ] ; 5 uses
  %i.ql = sub nuw i64 %i.qd, %i.qk                ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qk ; 2 uses
  %i.qn = icmp samesign ult i64 %i.ql, 16
  br i1 %i.qn, label %.preheader.i.i.i205.i, label %bb.ci

.preheader.i.i.i205.i:                            ; preds = %.lr.ph.split.i.i193.i
  %.not.i.i.i206.i = icmp eq i64 %i.qd, %i.qk
  br i1 %.not.i.i.i206.i, label %.thread316.i, label %.lr.ph.i.i.i207.i

bb.ci:                                            ; preds = %.lr.ph.split.i.i193.i
  %i.qo = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef 45, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qm, i64 noundef range(i64 0, -9223372036854775808) %i.ql)
          to label %.noexc210.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723 ; 2 uses

.noexc210.i:                                      ; preds = %bb.ci
  %i.qp = extractvalue { i64, i64 } %i.qo, 0
  %i.qq = extractvalue { i64, i64 } %i.qo, 1
  %i.qr = trunc nuw i64 %i.qp to i1
  br i1 %i.qr, label %.loopexit.i.i196.i, label %.thread316.i

.lr.ph.i.i.i207.i:                                ; preds = %.preheader.i.i.i205.i, %bb.cj
  %.sroa.04.011.i.i.i208.i = phi i64 [ %i.qv, %bb.cj ], [ 0, %.preheader.i.i.i205.i ] ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.sroa.04.011.i.i.i208.i
  %i.qt = load i8, ptr %i.qs, align 1, !alias.scope !728, !noalias !729, !noundef !4
  %i.qu = icmp eq i8 %i.qt, 45
  br i1 %i.qu, label %.loopexit.i.i196.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i207.i
  %i.qv = add nuw nsw i64 %.sroa.04.011.i.i.i208.i, 1 ; 2 uses
  %exitcond.not.i.i.i209.i = icmp eq i64 %i.qv, %i.ql
  br i1 %exitcond.not.i.i.i209.i, label %.thread316.i, label %.lr.ph.i.i.i207.i

.loopexit.i.i196.i:                               ; preds = %.lr.ph.i.i.i207.i, %.noexc210.i
  %.sroa.5.0.i.i.i197.i = phi i64 [ %i.qq, %.noexc210.i ], [ %.sroa.04.011.i.i.i208.i, %.lr.ph.i.i.i207.i ] ; 3 uses
  %i.qw = icmp ult i64 %.sroa.5.0.i.i.i197.i, %i.ql
  call void @llvm.assume(i1 %i.qw)
  %i.qx = add i64 %i.qk, 1
  %i.qy = add i64 %i.qx, %.sroa.5.0.i.i.i197.i    ; 2 uses
  %.not12.i.i198.i = icmp ugt i64 %i.qy, %i.qd    ; 2 uses
  %i.qz = add i64 %.sroa.5.0.i.i.i197.i, %i.qk    ; 6 uses
  %or.cond.i.not.i199.i = icmp ult i64 %i.qz, %i.qd
  br i1 %or.cond.i.not.i199.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.loopexit.i.i196.i
  br i1 %.not12.i.i198.i, label %.thread316.i, label %.lr.ph.split.i.i193.i.backedge

bb.cl:                                            ; preds = %.loopexit.i.i196.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qz
  %lhsc.i203.i = load i8, ptr %i.ra, align 1, !alias.scope !730, !noalias !723
  %i.rb = icmp eq i8 %lhsc.i203.i, 45             ; 2 uses
  %brmerge.i204.i = or i1 %.not12.i.i198.i, %i.rb
  br i1 %brmerge.i204.i, label %bb.cn, label %.lr.ph.split.i.i193.i.backedge

.lr.ph.split.i.i193.i.backedge:                   ; preds = %bb.cl, %bb.ck
  br label %.lr.ph.split.i.i193.i

bb.cm:                                            ; preds = %.thread337.i
  unreachable

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.rb, label %bb.co, label %.thread316.i

bb.co:                                            ; preds = %bb.cn
  switch i64 %i.qz, label %thread-pre-split.i.i [
    i64 0, label %.thread324.i
    i64 1, label %bb.cq
  ]

.thread316.i:                                     ; preds = %bb.ck, %.noexc210.i, %.preheader.i.i.i205.i, %bb.cj, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !731
  store ptr %i.s, ptr %i.f, align 8, !noalias !731
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsiAynQAjgDuT_10xet_client, ptr %.sroa.42.0..sroa_idx.i217.i, align 8, !noalias !731
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gv, ptr noundef nonnull @59, ptr noundef nonnull %i.f)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.cp:                                            ; preds = %.thread316.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !731
  %.sroa.655.0.copyload.i = load i64, ptr %i.gv, align 8, !noalias !709
  %.sroa.21.16.copyload219 = load i64, ptr %.sroa.858.0..sroa_idx.i, align 8, !noalias !711
  %i.rc = load <2 x i64>, ptr %.sroa.30.16..sroa.858.0..sroa_idx.i.sroa_idx, align 8, !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !709
  br label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i

bb.cq:                                            ; preds = %bb.co
  %i.rd = load i8, ptr %i.pm, align 1, !alias.scope !732, !noalias !723, !noundef !4 ; 2 uses
  switch i8 %i.rd, label %bb.cr [
    i8 43, label %.thread324.i
    i8 45, label %.thread324.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.co
  %.pr.i.i = load i8, ptr %i.pm, align 1, !alias.scope !732, !noalias !723
  br label %bb.cr

bb.cr:                                            ; preds = %thread-pre-split.i.i, %bb.cq
  %i.re = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.rd, %bb.cq ]
  %cond.i.i = icmp eq i8 %i.re, 43                ; 2 uses
  %i.rf = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.qz, %i.rf      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i219.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.rg = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.rg, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.cr
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.thread329.i, label %.lr.ph.i.i

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.thread329.i: ; preds = %.preheader.i.i
  %4 = add nuw i64 %i.qz, 1
  br label %bb.cw

.preheader56.i.i:                                 ; preds = %bb.cu
  %.not52.i.i = icmp eq i64 %i.ri, 0
  br i1 %.not52.i.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.cr, %.preheader56.i.i
  %.sroa.0.1.i220.i1265 = phi ptr [ %i.rh, %.preheader56.i.i ], [ %.sroa.0.0.i219.i, %bb.cr ] ; 2 uses
  %.sroa.15.1.i.i1264 = phi i64 [ %i.ri, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.cr ]
  %.sroa.042.0.i.i1263 = phi i64 [ %i.rt, %.preheader56.i.i ], [ 0, %bb.cr ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i220.i1265, i64 1
  %i.ri = add nsw i64 %.sroa.15.1.i.i1264, -1     ; 2 uses
  %i.rj = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i1263, i64 10) ; 2 uses
  %i.rk = extractvalue { i64, i1 } %i.rj, 0       ; 2 uses
  %i.rl = extractvalue { i64, i1 } %i.rj, 1
  %i.rm = load i8, ptr %.sroa.0.1.i220.i1265, align 1, !alias.scope !732, !noalias !723, !noundef !4 ; 2 uses
  br i1 %i.rl, label %bb.ct, label %bb.cs, !prof !8

bb.cs:                                            ; preds = %.preheader56.i.i.preheader
  %i.rn = zext i8 %i.rm to i32
  %i.ro = add nsw i32 %i.rn, -48                  ; 2 uses
  %i.rp = icmp ult i32 %i.ro, 10
  br i1 %i.rp, label %bb.cu, label %.thread324.i

bb.ct:                                            ; preds = %.preheader56.i.i.preheader
  %i.rq = add i8 %i.rm, -48
  %i.rr = icmp ult i8 %i.rq, 10
  %spec.select.i = select i1 %i.rr, i8 2, i8 1
  br label %.thread324.i

bb.cu:                                            ; preds = %bb.cs
  %i.rs = zext nneg i32 %i.ro to i64
  %i.rt = add i64 %i.rk, %i.rs                    ; 3 uses
  %i.ru = icmp ult i64 %i.rt, %i.rk
  br i1 %i.ru, label %.thread324.i, label %.preheader56.i.i, !prof !8

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.cv
  %.sroa.0.269.i.i = phi ptr [ %i.sb, %bb.cv ], [ %.sroa.0.0.i219.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.sa, %bb.cv ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.sd, %bb.cv ], [ 0, %.preheader.i.i ]
  %i.rv = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !732, !noalias !723, !noundef !4
  %i.rw = zext i8 %i.rv to i32
  %i.rx = add nsw i32 %i.rw, -48                  ; 2 uses
  %i.ry = icmp ult i32 %i.rx, 10
  br i1 %i.ry, label %bb.cv, label %.thread324.i

bb.cv:                                            ; preds = %.lr.ph.i.i
  %i.rz = mul i64 %.sroa.042.267.i.i, 10
  %i.sa = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.sc = zext nneg i32 %i.rx to i64
  %i.sd = add i64 %i.rz, %i.sc                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.sa, 0
  br i1 %.not53.i.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.thread324.i:                                     ; preds = %bb.cu, %bb.cs, %.lr.ph.i.i, %bb.ct, %bb.cq, %bb.cq, %bb.co
  %.sroa.5283.0.ph.i = phi i8 [ 0, %bb.co ], [ %spec.select.i, %bb.ct ], [ 1, %bb.cq ], [ 1, %.lr.ph.i.i ], [ 1, %bb.cq ], [ 1, %bb.cs ], [ 2, %bb.cu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !709
  store i8 %.sroa.5283.0.ph.i, ptr %i.e, align 1, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !733
  store ptr %i.e, ptr %i.d, align 8, !noalias !733
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i222.i, align 8, !noalias !733
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gt, ptr noundef nonnull @60, ptr noundef nonnull %i.d)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.cv
  %.sroa.12285.0.i = phi i64 [ %i.sd, %bb.cv ], [ %i.rt, %.preheader56.i.i ] ; 2 uses
  %5 = add i64 %i.qz, 1                           ; 2 uses
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %bb.cw

bb.cw:                                            ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.thread329.i
  %7 = phi i64 [ %4, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.thread329.i ], [ %5, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i ] ; 5 uses
  %.sroa.12285.0335.i = phi i64 [ 0, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.thread329.i ], [ %.sroa.12285.0.i, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i ] ; 2 uses
  %.not.i224.i = icmp ult i64 %7, %i.qd
  br i1 %.not.i224.i, label %bb.cx, label %.split.i225.i

.split.i225.i:                                    ; preds = %bb.cw
  %8 = icmp eq i64 %7, %i.qd
  br i1 %8, label %9, label %.thread337.i

bb.cx:                                            ; preds = %bb.cw
  %i.se = getelementptr inbounds nuw i8, ptr %i.pm, i64 %7
  %i.sf = load i8, ptr %i.se, align 1, !alias.scope !734, !noalias !723, !noundef !4
  %i.sg = icmp sgt i8 %i.sf, -65
  br i1 %i.sg, label %.thread.i, label %.thread337.i

9:                                                ; preds = %.split.i225.i, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i
  %10 = phi i64 [ 0, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i ], [ %i.qd, %.split.i225.i ]
  %.sroa.12285.0334.i = phi i64 [ %.sroa.12285.0.i, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.12285.0335.i, %.split.i225.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pm) ]
  br label %.thread.i

.thread.i:                                        ; preds = %9, %bb.cx
  %.pn523.i = phi i64 [ %10, %9 ], [ %7, %bb.cx ] ; 2 uses
  %.sroa.12285.0334483.i = phi i64 [ %.sroa.12285.0334.i, %9 ], [ %.sroa.12285.0335.i, %bb.cx ] ; 3 uses
  %i.sh = sub nuw i64 %i.qd, %.pn523.i            ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.pn523.i ; 3 uses
  switch i64 %i.sh, label %thread-pre-split.i247.i [
    i64 0, label %.loopexit.i
    i64 1, label %bb.cy
  ]

bb.cy:                                            ; preds = %.thread.i
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !735, !noalias !723, !noundef !4 ; 2 uses
  switch i8 %i.sj, label %bb.cz [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

thread-pre-split.i247.i:                          ; preds = %.thread.i
  %.pr.i248.i = load i8, ptr %i.si, align 1, !alias.scope !735, !noalias !723
  br label %bb.cz

bb.cz:                                            ; preds = %thread-pre-split.i247.i, %bb.cy
  %i.sk = phi i8 [ %.pr.i248.i, %thread-pre-split.i247.i ], [ %i.sj, %bb.cy ]
  %cond.i228.i = icmp eq i8 %i.sk, 43             ; 2 uses
  %i.sl = sext i1 %cond.i228.i to i64
  %.sroa.15.0.i229.i = add nsw i64 %i.sh, %i.sl   ; 4 uses
  %.sroa.0.0.idx.i230.i = zext i1 %cond.i228.i to i64
  %.sroa.0.0.i231.i = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sroa.0.0.idx.i230.i ; 2 uses
  %i.sm = icmp samesign ult i64 %.sroa.15.0.i229.i, 17
  br i1 %i.sm, label %.preheader.i240.i, label %.preheader56.i232.i.preheader

.preheader.i240.i:                                ; preds = %bb.cz
  %.not5366.i241.i = icmp eq i64 %.sroa.15.0.i229.i, 0
  br i1 %.not5366.i241.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i, label %.lr.ph.i242.i

.preheader56.i232.i:                              ; preds = %bb.dc
  %.not52.i236.i = icmp eq i64 %i.so, 0
  br i1 %.not52.i236.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i, label %.preheader56.i232.i.preheader

.preheader56.i232.i.preheader:                    ; preds = %bb.cz, %.preheader56.i232.i
  %.sroa.0.1.i235.i1268 = phi ptr [ %i.sn, %.preheader56.i232.i ], [ %.sroa.0.0.i231.i, %bb.cz ] ; 2 uses
  %.sroa.15.1.i234.i1267 = phi i64 [ %i.so, %.preheader56.i232.i ], [ %.sroa.15.0.i229.i, %bb.cz ]
  %.sroa.042.0.i233.i1266 = phi i64 [ %i.sz, %.preheader56.i232.i ], [ 0, %bb.cz ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i235.i1268, i64 1
  %i.so = add nsw i64 %.sroa.15.1.i234.i1267, -1  ; 2 uses
  %i.sp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i233.i1266, i64 10) ; 2 uses
  %i.sq = extractvalue { i64, i1 } %i.sp, 0       ; 2 uses
  %i.sr = extractvalue { i64, i1 } %i.sp, 1
  %i.ss = load i8, ptr %.sroa.0.1.i235.i1268, align 1, !alias.scope !735, !noalias !723, !noundef !4 ; 2 uses
  br i1 %i.sr, label %bb.db, label %bb.da, !prof !8

bb.da:                                            ; preds = %.preheader56.i232.i.preheader
  %i.st = zext i8 %i.ss to i32
  %i.su = add nsw i32 %i.st, -48                  ; 2 uses
  %i.sv = icmp ult i32 %i.su, 10
  br i1 %i.sv, label %bb.dc, label %.loopexit.i

bb.db:                                            ; preds = %.preheader56.i232.i.preheader
  %i.sw = add i8 %i.ss, -48
  %i.sx = icmp ult i8 %i.sw, 10
  %spec.select346.i = select i1 %i.sx, i8 2, i8 1
  br label %.loopexit.i

bb.dc:                                            ; preds = %bb.da
  %i.sy = zext nneg i32 %i.su to i64
  %i.sz = add i64 %i.sq, %i.sy                    ; 3 uses
  %i.ta = icmp ult i64 %i.sz, %i.sq
  br i1 %i.ta, label %.loopexit.i, label %.preheader56.i232.i, !prof !8

.lr.ph.i242.i:                                    ; preds = %.preheader.i240.i, %bb.dd
  %.sroa.0.269.i243.i = phi ptr [ %i.th, %bb.dd ], [ %.sroa.0.0.i231.i, %.preheader.i240.i ] ; 2 uses
  %.sroa.15.268.i244.i = phi i64 [ %i.tg, %bb.dd ], [ %.sroa.15.0.i229.i, %.preheader.i240.i ]
  %.sroa.042.267.i245.i = phi i64 [ %i.tj, %bb.dd ], [ 0, %.preheader.i240.i ]
  %i.tb = load i8, ptr %.sroa.0.269.i243.i, align 1, !alias.scope !735, !noalias !723, !noundef !4
  %i.tc = zext i8 %i.tb to i32
  %i.td = add nsw i32 %i.tc, -48                  ; 2 uses
  %i.te = icmp ult i32 %i.td, 10
  br i1 %i.te, label %bb.dd, label %.loopexit.i

bb.dd:                                            ; preds = %.lr.ph.i242.i
  %i.tf = mul i64 %.sroa.042.267.i245.i, 10
  %i.tg = add nsw i64 %.sroa.15.268.i244.i, -1    ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i243.i, i64 1
  %i.ti = zext nneg i32 %i.td to i64
  %i.tj = add i64 %i.tf, %i.ti                    ; 2 uses
  %.not53.i246.i = icmp eq i64 %i.tg, 0
  br i1 %.not53.i246.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i, label %.lr.ph.i242.i

.thread337.i:                                     ; preds = %bb.cx, %.split.i225.i
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pm, i64 noundef %i.qd, i64 noundef %7, i64 noundef %i.qd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #26
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

.loopexit.i:                                      ; preds = %bb.dc, %bb.da, %.lr.ph.i242.i, %bb.db, %bb.cy, %bb.cy, %.thread.i
  %.sroa.5287.0.ph.i = phi i8 [ 1, %bb.cy ], [ %spec.select346.i, %bb.db ], [ 1, %bb.cy ], [ 0, %.thread.i ], [ 1, %.lr.ph.i242.i ], [ 1, %bb.da ], [ 2, %bb.dc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !709
  store i8 %.sroa.5287.0.ph.i, ptr %i.c, align 1, !noalias !736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !736
  store ptr %i.c, ptr %i.b, align 8, !noalias !736
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i251.i, align 8, !noalias !736
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gu, ptr noundef nonnull @61, ptr noundef nonnull %i.b)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !723

bb.de:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !709
  %.sroa.692.0.copyload.i = load i64, ptr %i.gu, align 8, !noalias !709
  %.sroa.21.16.copyload221 = load i64, ptr %.sroa.895.0..sroa_idx.i, align 8, !noalias !711
  %i.tk = load <2 x i64>, ptr %.sroa.30.16..sroa.895.0..sroa_idx.i.sroa_idx, align 8, !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !709
  br label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i

bb.df:                                            ; preds = %.thread324.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !709
  %.sroa.675.0.copyload.i = load i64, ptr %i.gt, align 8, !noalias !709
  %.sroa.21.16.copyload220 = load i64, ptr %.sroa.878.0..sroa_idx.i, align 8, !noalias !711
  %i.tl = load <2 x i64>, ptr %.sroa.30.16..sroa.878.0..sroa_idx.i.sroa_idx, align 8, !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !709
  br label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit249.i

bb.dg:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !723
  unreachable

.thread258:                                       ; preds = %.noexc164, %bb.bs
  %.sroa.21.1.ph = phi i64 [ %i.pa, %bb.bs ], [ %.sroa.812.0.copyload.i, %.noexc164 ]
  %.sroa.12.1.ph = phi i64 [ %i.ot, %bb.bs ], [ %i.il, %.noexc164 ]
  %i.tn = phi <2 x i64> [ <i64 47, i64 undef>, %bb.bs ], [ %i.im, %.noexc164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.loopexit293

bb.dh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %.not122, label %bb.di, label %.loopexit293

.loopexit293:                                     ; preds = %bb.dh, %.thread258
  %.sroa.0216.1269 = phi i64 [ 29, %.thread258 ], [ %.sroa.0216.0, %bb.dh ]
  %.sroa.12.1268 = phi i64 [ %.sroa.12.1.ph, %.thread258 ], [ %.sroa.12.0233, %bb.dh ]
  %.sroa.21.1267 = phi i64 [ %.sroa.21.1.ph, %.thread258 ], [ %.sroa.21.0, %bb.dh ]
  %i.to = phi <2 x i64> [ %i.tn, %.thread258 ], [ %i.qh, %bb.dh ] ; 2 uses
  store i64 %.sroa.0216.1269, ptr %0, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.1268, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.21.1267, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tp = extractelement <2 x i64> %i.to, i64 0
  store i64 %i.tp, ptr %.sroa.6105.0..sroa_idx, align 8
  %i.tq = extractelement <2 x i64> %i.to, i64 1
  br label %bb.eb

bb.di:                                            ; preds = %bb.dh
  %i.tr = load i64, ptr %i.fq, align 8, !noundef !4
  %i.ts = sub i64 %i.tr, %i.fr
  %i.tt = ptrtoint ptr %i.hh to i64
  %i.tu = sub i64 %i.tt, %i.gx
  %i.tv = add i64 %i.ts, %i.tu                    ; 2 uses
  %i.tw = add i64 %i.tv, %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.tx = add i64 %i.tv, %.sroa.621.0
  invoke void @_RINvMNtCslc8SwK8fohf_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noundef nonnull align 8 %3, i64 noundef %i.tw, i64 noundef %i.tx)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  store i64 %.sroa.12.0233, ptr %i.gy, align 8
  store i64 %.sroa.21.0, ptr %i.gz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.ty = load i64, ptr %i.ft, align 8, !alias.scope !737, !noundef !4 ; 3 uses
  %i.tz = load i64, ptr %i.af, align 8, !range !9, !alias.scope !737, !noundef !4
  %i.ua = icmp eq i64 %i.ty, %i.tz
  br i1 %i.ua, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9multipart13MultipartPartE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.dn unwind label %bb.dl, !noalias !738

bb.dl:                                            ; preds = %bb.dk
  %i.ub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.uc = load ptr, ptr %i.ab, align 8, !alias.scope !742, !nonnull !4, !align !19, !noundef !4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !742, !nonnull !4, !noundef !4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !alias.scope !742, !noundef !4
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !742, !noundef !4
  invoke void %i.ue(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uf, ptr noundef %i.uh, i64 noundef %i.uj)
          to label %.body unwind label %bb.dm, !inline_history !682

bb.dm:                                            ; preds = %bb.dl
  %i.uk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.dn:                                            ; preds = %bb.dk, %bb.dj
  %i.ul = load ptr, ptr %i.fs, align 8, !alias.scope !737, !nonnull !4, !noundef !4 ; 2 uses
  %i.um = getelementptr inbounds nuw [48 x i8], ptr %i.ul, i64 %i.ty
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.um, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  %i.un = add i64 %i.ty, 1                        ; 2 uses
  store i64 %i.un, ptr %i.ft, align 8, !alias.scope !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.ht, label %bb.do, label %.loopexit294

bb.do:                                            ; preds = %bb.dn
  %i.uo = load i64, ptr %i.gn, align 8, !noundef !4 ; 2 uses
  %i.up = icmp sgt i64 %i.uo, -1
  call void @llvm.assume(i1 %i.up)
  %i.uq = add i64 %i.uo, %i.hu                    ; 4 uses
  %i.ur = icmp ugt i64 %i.uq, %i.hg
  br i1 %i.ur, label %.invoke1100, label %bb.dx, !prof !8

bb.dp:                                            ; preds = %.loopexit294, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !705
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.us, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ut = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.thread239 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.uu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ek

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i181 unwind label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit
  %i.uv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body182 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.uw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i181: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit185 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit185: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i187 unwind label %bb.du

bb.du:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit185
  %i.ux = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body188 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.uy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client.exit.i187: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit185
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
end_hunk_0
