Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.2128.i.i = phi ptr [ %i.mh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.i.thread.i ], [ %.0126.i.i, %bb.cf ] ; 4 uses
  %.2125.i.i = phi ptr [ %.1124.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.i.thread.i ], [ %.0123.i.i, %bb.cf ]
  %.3.i.i = phi i32 [ %.2.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.i.thread.i ], [ %.1122.i.i, %bb.cf ] ; 2 uses
  %.0118.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.i.thread.i ], [ %i.mj, %bb.cf ]
  %.not141.i.i = icmp eq i64 %i.mk, 0
  br i1 %.not141.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit192.i.i, label %bb.ch

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit192.i.i: ; preds = %bb.cg
  %.val142.i.i = load ptr, ptr %i.eo, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %.val142.i.i, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !25
  %i.mn = and i8 %i.mm, 8
  %.not209.i.i = icmp eq i8 %i.mn, 0
  br i1 %.not209.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit192.i.i, %bb.cg
  %i.mo = load i8, ptr %.2128.i.i, align 1, !tbaa !26
  %i.mp = getelementptr inbounds i8, ptr %.2128.i.i, i64 -1 ; 2 uses
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !26
  store i8 46, ptr %.2128.i.i, align 1, !tbaa !26
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit192.i.i
  %.3129.i.i = phi ptr [ %i.mp, %bb.ch ], [ %.2128.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit192.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.mq = select i1 %i.em, i8 69, i8 101
  %i.mr = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.mq, ptr %i.g, align 16, !tbaa !26
  %i.ms = icmp sgt i32 %.3.i.i, -1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %.sink.i.i = select i1 %i.ms, i8 43, i8 45
  %.4.i.i = call i32 @llvm.abs.i32(i32 %.3.i.i, i1 true) ; 2 uses
  store i8 %.sink.i.i, ptr %i.mr, align 1, !tbaa !26
  %i.mu = icmp samesign ult i32 %.4.i.i, 10
  br i1 %i.mu, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 48, ptr %i.mt, align 2, !tbaa !26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1.i.i = phi ptr [ %i.mv, %bb.cj ], [ %i.mt, %bb.ci ]
  %i.mw = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %.4.i.i, ptr noundef nonnull %.1.i.i)
  %i.mx = ptrtoint ptr %.2125.i.i to i64
  %i.my = ptrtoint ptr %.3129.i.i to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ptrtoint ptr %i.mw to i64
  %i.nb = ptrtoint ptr %i.g to i64
  %i.nc = sub i64 %i.na, %i.nb
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %7, i64 %i.mz, ptr %.3129.i.i, i64 noundef 0, i64 noundef %.0118.i.i, i64 %i.nc, ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit: ; preds = %bb.ad, %bb.af, %bb.ah, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.cy

bb.cl:                                            ; preds = %bb.j
  %i.nd = icmp eq i32 %narrow, 0
  %i.ne = add nsw i64 %spec.select, -1
  %i.nf = select i1 %i.nd, i64 0, i64 %i.ne       ; 3 uses
  %i.ng = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.nh = trunc nuw nsw i64 %i.ng to i32
  %reass.sub = add i32 %i.au, 11
  %i.ni = sub i32 %reass.sub, %i.nh
  %i.nj = icmp sgt i32 %i.au, 52
  %i.nk = icmp sgt i32 %i.ni, 128
  %or.cond7 = select i1 %i.nj, i1 %i.nk, i1 false
  br i1 %or.cond7, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.nl = and i8 %i.ax, -7
  %i.nm = icmp eq i8 %i.nl, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i8 %.070106, ptr %8, align 8, !tbaa !37
  %i.nn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.nf, ptr %i.nn, align 8, !tbaa !38
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %i.no, align 8, !tbaa !39
  %i.np = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.np, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.aw, ptr %i.c, align 8, !tbaa !32
  store i32 %i.av, ptr %i.d, align 4, !tbaa !51
  %i.nq = zext i1 %i.nm to i8
  store i8 %i.nq, ptr %i.e, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %8, ptr %3, align 8, !tbaa !45
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.nr, align 8, !tbaa !50
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.d, ptr %i.ns, align 8, !tbaa !54
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.e, ptr %i.nt, align 8, !tbaa !47
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %i.aw, i64 0, i32 noundef range(i32 0, -2147483648) %i.av, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS4_11FormatStateEEUlNS4_15BinaryToDecimalEE_vJSA_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.cy

bb.cn:                                            ; preds = %bb.cl
  %i.nu = icmp slt i32 %i.au, -75
  %i.nv = and i8 %i.ax, -7
  %i.nw = icmp eq i8 %i.nv, 9                     ; 2 uses
  br i1 %i.nu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store i8 %.070106, ptr %9, align 8, !tbaa !37
  %i.nx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.nf, ptr %i.nx, align 8, !tbaa !38
  %i.ny = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %1, ptr %i.ny, align 8, !tbaa !39
  %i.nz = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.nz, align 8, !tbaa !40
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowImEEvT_ibRKNS2_11FormatStateE(i64 noundef %i.aw, i32 noundef %i.av, i1 noundef zeroext %i.nw, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.cy

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i8 %.070106, ptr %10, align 8, !tbaa !37
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.nf, ptr %i.oa, align 8, !tbaa !38
  %i.ob = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %i.ob, align 8, !tbaa !39
  %i.oc = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %2, ptr %i.oc, align 8, !tbaa !40
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastImEEvT_ibRKNS2_11FormatStateE(i64 noundef %i.aw, i32 noundef %i.av, i1 noundef zeroext %i.nw, ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.cy

bb.cq:                                            ; preds = %bb.j
  %i.od = icmp eq i8 %i.ax, 15                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i8 %.070106, ptr %11, align 8, !tbaa !37
  %i.oe = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %spec.select, ptr %i.oe, align 8, !tbaa !38
  %i.of = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %1, ptr %i.of, align 8, !tbaa !39
  %i.og = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %2, ptr %i.og, align 8, !tbaa !40
  %i.oh = icmp sgt i32 %i.aq, -1                  ; 3 uses
  %i.oi = add i32 %i.au, 11                       ; 4 uses
  %or.cond23.i.i = icmp sgt i64 %i.aw, 0
  br i1 %or.cond23.i.i, label %.lr.ph.i.preheader.i, label %.critedge.i.i

.lr.ph.i.preheader.i:                             ; preds = %bb.cq
  %smin.i = call i32 @llvm.smin.i32(i32 %i.oi, i32 -1022)
  %.not20.i.i310 = icmp sgt i32 %i.oi, -1022
  br i1 %.not20.i.i310, label %.lr.ph, label %.lr.ph.i.i._crit_edge, !prof !119

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %.not20.i.i = icmp sgt i32 %i.on, -1021
  br i1 %.not20.i.i, label %.lr.ph, label %.lr.ph.i.i._crit_edge, !prof !120, !llvm.loop !115

.lr.ph.i.i._crit_edge:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.lcssa306 = phi i64 [ %i.aw, %.lr.ph.i.preheader.i ], [ %i.oo, %.lr.ph.i.i ]
  %i.oj = sub nuw nsw i32 -1022, %smin.i
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = lshr i64 %.lcssa306, %i.ok
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i

.lr.ph:                                           ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %i.om = phi i64 [ %i.oo, %.lr.ph.i.i ], [ %i.aw, %.lr.ph.i.preheader.i ]
  %i.on = phi i32 [ %i.op, %.lr.ph.i.i ], [ %i.oi, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.oo = shl nuw i64 %i.om, 1                    ; 4 uses
  %i.op = add nsw i32 %i.on, -1                   ; 2 uses
  %or.cond.i.i = icmp sgt i64 %i.oo, 0
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !115

.critedge.i.i:                                    ; preds = %.lr.ph, %bb.cq
  %.054.i = phi i32 [ %i.oi, %bb.cq ], [ %i.op, %.lr.ph ]
  %.153.i = phi i64 [ %i.aw, %bb.cq ], [ %i.oo, %.lr.ph ] ; 3 uses
  %i.oq = lshr i64 %.153.i, 63
  %i.or = trunc nuw nsw i64 %i.oq to i8
  %.not19.i.i = icmp eq i64 %.153.i, 0
  %i.os = add i32 %.054.i, -1
  %i.ot = select i1 %.not19.i.i, i32 0, i32 %i.os
  %i.ou = shl i64 %.153.i, 1
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i: ; preds = %.critedge.i.i, %.lr.ph.i.i._crit_edge
  %.058.i = phi i8 [ %i.or, %.critedge.i.i ], [ 0, %.lr.ph.i.i._crit_edge ] ; 6 uses
  %.155.i = phi i32 [ %i.ot, %.critedge.i.i ], [ -1022, %.lr.ph.i.i._crit_edge ] ; 2 uses
  %.2.i = phi i64 [ %i.ou, %.critedge.i.i ], [ %i.ol, %.lr.ph.i.i._crit_edge ] ; 8 uses
  br i1 %i.oh, label %bb.cr, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i

bb.cr:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i
  %i.ov = call i64 @llvm.usub.sat.i64(i64 16, i64 %spec.select) ; 3 uses
  %i.ow = icmp samesign ugt i32 %i.aq, 15
  br i1 %i.ow, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ox = shl nuw nsw i64 %i.ov, 2                ; 4 uses
  %i.oy = sub nuw nsw i64 64, %i.ox
  %i.oz = lshr i64 -1, %i.oy                      ; 2 uses
  %i.pa = and i64 %.2.i, %i.oz                    ; 2 uses
  %i.pb = add nuw nsw i64 %i.ox, 4294967292
  %i.pc = and i64 %i.pb, 4294967292
  %i.pd = shl i64 8, %i.pc                        ; 2 uses
  %.not.i.i.i91 = icmp eq i64 %i.pa, %i.pd
  br i1 %.not.i.i.i91, label %.split.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i

.split.i.i:                                       ; preds = %bb.cs
  %i.pe = icmp eq i64 %i.ov, 16
  %i.pf = lshr i64 %.2.i, %i.ox
  %i.pg = trunc i64 %i.pf to i8
  %i.ph = select i1 %i.pe, i8 %.058.i, i8 %i.pg
  %i.pi = trunc i8 %i.ph to i1
  br i1 %i.pi, label %bb.ct, label %._crit_edge.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i: ; preds = %bb.cs
  %i.pj = icmp ugt i64 %i.pa, %i.pd
  br i1 %i.pj, label %bb.ct, label %._crit_edge.i.i

bb.ct:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i, %.split.i.i
  %i.pk = icmp samesign ugt i64 %i.ov, 15         ; 2 uses
  %i.pl = shl nuw i64 1, %i.ox
  %i.pm = select i1 %i.pk, i64 0, i64 %i.pl
  %i.pn = add i64 %.2.i, %i.pm                    ; 2 uses
  %i.po = icmp slt i64 %.2.i, 0
  %i.pp = icmp sgt i64 %i.pn, -1
  %or.cond.not.i.i.i = select i1 %i.po, i1 %i.pp, i1 false
  %spec.select.i.i.i92 = or i1 %i.pk, %or.cond.not.i.i.i
  %i.pq = zext i1 %spec.select.i.i.i92 to i8
  %i.pr = add nuw nsw i8 %.058.i, %i.pq
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ct, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i, %.split.i.i
  %.159.i = phi i8 [ %i.pr, %bb.ct ], [ %.058.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i ], [ %.058.i, %.split.i.i ]
  %.pre.i35.i = phi i64 [ %i.pn, %bb.ct ], [ %.2.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_120HexFloatNeedsRoundUpImEEbT_mh.exit.i.i ], [ %.2.i, %.split.i.i ]
  %i.ps = xor i64 %i.oz, -1
  %i.pt = and i64 %.pre.i35.i, %i.ps
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i: ; preds = %._crit_edge.i.i, %bb.cr, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i
  %.361.i = phi i8 [ %.058.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i ], [ %.058.i, %bb.cr ], [ %.159.i, %._crit_edge.i.i ]
  %.3.i = phi i64 [ %.2.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116FormatANormalizeImEEvNS2_18HexFloatTypeParamsEPhPT_Pi.exit.i ], [ %.2.i, %bb.cr ], [ %i.pt, %._crit_edge.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.pu = select i1 %i.od, i64 0, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.a, align 16, !tbaa !26
  %i.px = select i1 %i.od, i8 88, i8 120
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !26
  %i.pz = zext nneg i8 %.361.i to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !26
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.qb, ptr %i.py, align 2, !tbaa !26
  br i1 %i.oh, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %.thread.i90, label %bb.cw

bb.cv:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_112FormatARoundImEEvbRKNS2_11FormatStateEPhPT_Pi.exit.i
  %i.qd = icmp eq i64 %.3.i, 0
  br i1 %i.qd, label %.thread.i90, label %bb.cw

.thread.i90:                                      ; preds = %bb.cv, %bb.cu
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !25
  %i.qg = and i8 %i.qf, 8
  %.not63.i = icmp eq i8 %i.qg, 0
  br i1 %.not63.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.thread.i90, %bb.cv, %bb.cu
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 46, ptr %i.qc, align 1, !tbaa !26
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread.i90
  %.030.i = phi ptr [ %i.qh, %bb.cw ], [ %i.qc, %.thread.i90 ] ; 2 uses
  %.not69.i = icmp eq i64 %.3.i, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cx, %.lr.ph.i
  %.02972.i = phi i64 [ %i.qn, %.lr.ph.i ], [ 0, %bb.cx ]
  %.171.i = phi ptr [ %i.ql, %.lr.ph.i ], [ %.030.i, %bb.cx ] ; 2 uses
  %.05270.i = phi i64 [ %i.qm, %.lr.ph.i ], [ %.3.i, %bb.cx ] ; 2 uses
  %i.qi = lshr i64 %.05270.i, 60
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !26
  %i.ql = getelementptr inbounds nuw i8, ptr %.171.i, i64 1 ; 2 uses
  store i8 %i.qk, ptr %.171.i, align 1, !tbaa !26
  %i.qm = shl i64 %.05270.i, 4                    ; 2 uses
  %i.qn = add nuw nsw i64 %.02972.i, 1            ; 2 uses
  %.not.i88 = icmp eq i64 %i.qm, 0
  br i1 %.not.i88, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !116

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.cx
  %.1.lcssa.i = phi ptr [ %.030.i, %bb.cx ], [ %i.ql, %.lr.ph.i ]
  %.029.lcssa.i = phi i64 [ 0, %bb.cx ], [ %i.qn, %.lr.ph.i ]
  %i.qo = sub i64 %spec.select, %.029.lcssa.i
  %.0.i89 = select i1 %i.oh, i64 %i.qo, i64 0
  %i.qp = ptrtoint ptr %.1.lcssa.i to i64
  %i.qq = ptrtoint ptr %i.a to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.qs = select i1 %i.od, i8 80, i8 112
  store i8 %i.qs, ptr %i.b, align 16, !tbaa !26
  %i.qt = icmp sgt i32 %.155.i, -1
  %i.qu = select i1 %i.qt, i8 43, i8 45
  %i.qv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !26
  %i.qw = call i32 @llvm.abs.i32(i32 %.155.i, i1 true)
  %i.qx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.qy = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.qw, ptr noundef nonnull %i.qx) ; 0 uses
  %i.qz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %11, i64 %i.qr, ptr nonnull %i.a, i64 noundef 2, i64 noundef %.0.i89, i64 %i.qz, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.cy

bb.cy:                                            ; preds = %bb.j, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit, %._crit_edge.i, %bb.cp, %bb.co, %bb.cm, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.2 = phi i1 [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit ], [ true, %bb.cm ], [ true, %._crit_edge.i ], [ true, %bb.cp ], [ true, %bb.co ], [ false, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056), i64, ptr, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_202605267uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16), x86_fp80 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEm(i64 %0, i64 %1, i32 noundef range(i32 -2147483647, -2147483648) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.4, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp ugt i64 %i.c, %4
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !56 ; 3 uses
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25
  %i.g = and i8 %i.f, 8
  %.not81 = icmp eq i8 %i.g, 0
  br i1 %.not81, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %reass.sub = sub i64 %i.c, %4
  %i.h = add i64 %reass.sub, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i1 [ true, %.thread ], [ false, %bb.b ]
  %i.j = phi i64 [ %i.h, %.thread ], [ 1, %bb.b ]
  %i.k = load i8, ptr %3, align 8, !tbaa !37      ; 2 uses
  %.not = icmp ne i8 %i.k, 0
  %i.l = zext i1 %.not to i64
  %i.m = add i64 %i.j, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28, !noalias !123 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.q
  br i1 %.not.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i64 %i.q, %i.m               ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25, !noalias !123 ; 2 uses
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i8 %i.t, 16
  %.not1.i = icmp eq i8 %i.v, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.sroa.12.0.ph = phi i64 [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.r, %bb.e ]
end_hunk_0
