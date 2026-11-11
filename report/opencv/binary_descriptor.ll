Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14OctaveKeyLinesERNS_3MatERSt6vectorIS4_INS1_16OctaveSingleLineESaIS5_EESaIS7_EE:bb.a
  %i.mq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !153 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, %i.ms
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.na, %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.mq, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !161
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mu to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.mz) #25
  br label %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.na, %i.ms
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nb = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.mq, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !162
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #25
  br label %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.ae, %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i369 = icmp eq ptr %i.nh, %i.mp
  br i1 %.not.i.i.i.i369, label %_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !148
  %.pre = load ptr, ptr %2, align 8, !tbaa !149
  br label %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE5clearEv.exit

_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE5clearEv.exit: ; preds = %.loopexit459, %_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.ni = phi ptr [ %i.mn, %.loopexit459 ], [ %.pre, %_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.nj = zext i32 %.4 to i64                     ; 4 uses
  %i.nk = ptrtoint ptr %i.mn to i64
  %i.nl = ptrtoint ptr %i.ni to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = sdiv exact i64 %i.nm, 24                ; 3 uses
  %i.no = icmp ult i64 %i.nn, %i.nj
  br i1 %i.no, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE5clearEv.exit
  %i.np = sub nuw nsw i64 %i.nj, %i.nn
  invoke void @_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.np)
          to label %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit unwind label %bb.ba

bb.ag:                                            ; preds = %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE5clearEv.exit
  %i.nq = icmp ugt i64 %i.nn, %i.nj
  br i1 %i.nq, label %bb.ah, label %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit

bb.ah:                                            ; preds = %bb.ag
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.ni, i64 %i.nj ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.mn, %i.nr
  br i1 %.not.i.i370, label %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i371

.lr.ph.i.i.i.i371:                                ; preds = %bb.ah, %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383
  %.05.i.i.i.i372 = phi ptr [ %i.oj, %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383 ], [ %i.nr, %bb.ah ] ; 5 uses
  %i.ns = load ptr, ptr %.05.i.i.i.i372, align 8, !tbaa !153 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i372, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i373 = icmp eq ptr %i.ns, %i.nu
  br i1 %.not4.i.i.i.i.i.i.i.i373, label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i381, label %.lr.ph.i.i.i.i.i.i.i.i374

.lr.ph.i.i.i.i.i.i.i.i374:                        ; preds = %.lr.ph.i.i.i.i371, %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377
  %.05.i.i.i.i.i.i.i.i375 = phi ptr [ %i.oc, %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377 ], [ %i.ns, %.lr.ph.i.i.i.i371 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i375, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i376 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i376, label %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i374
  %i.nx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i375, i64 72
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !161
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %i.nw to i64
  %i.ob = sub i64 %i.nz, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.ob) #25
  br label %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377

_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i374
  %i.oc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i375, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i.i.i378 = icmp eq ptr %i.oc, %i.nu
  br i1 %.not.i.i.i.i.i.i.i.i378, label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i379, label %.lr.ph.i.i.i.i.i.i.i.i374, !llvm.loop !7

_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i379: ; preds = %_ZSt8_DestroyIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineEEvPT_.exit.i.i.i.i.i.i.i.i377
  %.pr.i.i.i.i.i.i380 = load ptr, ptr %.05.i.i.i.i372, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i381

_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i381: ; preds = %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i379, %.lr.ph.i.i.i.i371
  %i.od = phi ptr [ %.pr.i.i.i.i.i.i380, %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i379 ], [ %i.ns, %.lr.ph.i.i.i.i371 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i382 = icmp eq ptr %i.od, null
  br i1 %.not.i.i1.i.i.i.i.i.i382, label %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i381
  %i.oe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i372, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !162
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.oi) #25
  br label %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383

_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383: ; preds = %bb.aj, %_ZSt8_DestroyIPN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i381
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i372, i64 24 ; 2 uses
  %.not.i.i.i.i384 = icmp eq ptr %i.oj, %i.mn
  br i1 %.not.i.i.i.i384, label %_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i385, label %.lr.ph.i.i.i.i371, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i385: ; preds = %_ZSt8_DestroyISt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EEEvPT_.exit.i.i.i.i383
  store ptr %i.nr, ptr %i.mo, align 8, !tbaa !148
  br label %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i.i385, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ok = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %10, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, i8 0, i64 24, i1 false)
  %.not525 = icmp eq i32 %.6334, 0
  br i1 %.not525, label %._crit_edge522, label %.lr.ph521

.lr.ph521:                                        ; preds = %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.om = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.on = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.oo = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.op = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ot = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %wide.trip.count564 = zext i32 %.6334 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph521, %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit
  %indvars.iv561 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next562, %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0397.0, i64 %indvars.iv561 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !311 ; 2 uses
  %i.ox = load i32, ptr %i.ou, align 4, !tbaa !310 ; 2 uses
  %i.oy = zext i32 %i.ox to i64                   ; 3 uses
  %i.oz = load ptr, ptr %i.en, align 8, !tbaa !52
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %i.oy
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !72 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 752
  %i.pd = zext i32 %i.ow to i64                   ; 4 uses
  %i.pe = load ptr, ptr %i.pc, align 8, !tbaa !157
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.pd
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !114 ; 2 uses
  store i32 %i.ox, ptr %i.ol, align 8, !tbaa !192
  store float %i.pg, ptr %i.om, align 8, !tbaa !193
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !313
  store float %i.pi, ptr %i.on, align 8, !tbaa !194
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 776
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !157
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pd
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !114
  store float %i.pm, ptr %i.oo, align 4, !tbaa !195
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pb, i64 672
  %i.po = add i32 %i.ow, 1
  %i.pp = zext i32 %i.po to i64
  %i.pq = load ptr, ptr %i.pn, align 8, !tbaa !196 ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pp
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !24
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.pd
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !24
  %i.pv = sub i32 %i.ps, %i.pu
  store i32 %i.pv, ptr %i.op, align 4, !tbaa !197
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pb, i64 728
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !189
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %i.px, i64 %i.pd
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !157
  %i.qa = load <4 x float>, ptr %i.pz, align 4, !tbaa !114 ; 4 uses
  %i.qb = fpext float %i.pg to double             ; 10 uses
  %i.qc = fcmp oge double %i.qb, f0xC002D97C7F3321D2
  %i.qd = fcmp olt double %i.qb, f0xBFE921FB54442D18
  %i.qe = and i1 %i.qc, %i.qd
  %11 = fcmp ult double %i.qb, f0xBFE921FB54442D18
  %i.qf = fcmp olt double %i.qb, f0x3FE921FB54442D18
  %12 = fcmp ult double %i.qb, f0x3FE921FB54442D18
  %i.qg = fcmp olt double %i.qb, f0x4002D97C7F3321D2
  %i.qh = shufflevector <4 x float> %i.qa, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %i.qi = shufflevector <4 x float> %i.qa, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.qj = fsub <2 x float> %i.qh, %i.qi           ; 4 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 1
  %i.ql = fcmp ogt float %i.qk, 0.000000e+00
  %.0291 = select i1 %i.qe, i1 %i.ql, i1 false
  %i.qm = fcmp olt <2 x float> %i.qj, zeroinitializer ; 2 uses
  %i.qn = extractelement <2 x i1> %i.qm, i64 0
  %.not443 = select i1 %i.qf, i1 %i.qn, i1 false
  %.1 = select i1 %11, i1 %.0291, i1 %.not443
  %i.qo = extractelement <2 x i1> %i.qm, i64 1
  %i.qp = select i1 %i.qg, i1 %i.qo, i1 false
  %.2 = select i1 %12, i1 %.1, i1 %i.qp
  %i.qq = fcmp oge double %i.qb, f0x4002D97C7F3321D2
  %i.qr = fcmp olt double %i.qb, f0x400921FB54442D18
  %or.cond365 = and i1 %i.qq, %i.qr
  br i1 %or.cond365, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qs = fcmp oge double %i.qb, f0xC00921FB54442D18
  %i.qt = fcmp olt double %i.qb, f0xC002D97C7F3321D2
  %i.qu = extractelement <2 x float> %i.qj, i64 0
  %i.qv = fcmp ogt float %i.qu, 0.000000e+00
  %or.cond8 = select i1 %i.qt, i1 %i.qv, i1 false
  %or.cond = select i1 %i.qs, i1 %or.cond8, i1 false
  br i1 %or.cond, label %.thread434, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.qw = extractelement <2 x float> %i.qj, i64 0
  %.old7 = fcmp ogt float %i.qw, 0.000000e+00
  br i1 %.old7, label %.thread434, label %bb.an

.thread434:                                       ; preds = %bb.al, %bb.am
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.oy
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !114
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.oy
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !114 ; 2 uses
  br i1 %.2, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread434, %bb.an
  %i.rb = phi float [ %i.qy, %.thread434 ], [ %i.ra, %bb.an ]
  %i.rc = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.rc, ptr %i.oq, align 8, !tbaa !114
  %i.rd = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rf = fmul <2 x float> %i.qh, %i.re
  store <2 x float> %i.rf, ptr %10, align 8, !tbaa !114
  %i.rg = fmul <2 x float> %i.qi, %i.re           ; 2 uses
  %i.rh = extractelement <2 x float> %i.rg, i64 0
  store float %i.rh, ptr %i.or, align 8, !tbaa !314
  %i.ri = extractelement <2 x float> %i.rg, i64 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store <4 x float> %i.qa, ptr %i.oq, align 8, !tbaa !114
  %i.rj = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rl = fmul <2 x float> %i.qi, %i.rk
  store <2 x float> %i.rl, ptr %10, align 8, !tbaa !114
  %i.rm = fmul <2 x float> %i.qh, %i.rk           ; 2 uses
  %i.rn = extractelement <2 x float> %i.rm, i64 0
  store float %i.rn, ptr %i.or, align 8, !tbaa !314
  %i.ro = extractelement <2 x float> %i.rm, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %storemerge = phi float [ %i.ro, %bb.ap ], [ %i.ri, %bb.ao ]
  store float %storemerge, ptr %i.os, align 4, !tbaa !315
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !312
  %i.rr = zext i32 %i.rq to i64
  %i.rs = load ptr, ptr %2, align 8, !tbaa !149
  %i.rt = getelementptr inbounds nuw [24 x i8], ptr %i.rs, i64 %i.rr ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !152 ; 6 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !162
  %.not.i387 = icmp eq ptr %i.rv, %i.rx
  br i1 %.not.i387, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.rv, ptr noundef nonnull align 8 dereferenceable(80) %10, i64 52, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 56 ; 2 uses
  %i.rz = load ptr, ptr %i.ot, align 8, !tbaa !156 ; 2 uses
  %i.sa = load ptr, ptr %i.ok, align 8, !tbaa !157 ; 2 uses
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ry, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rz, %i.sa
  br i1 %.not.i.i.i.i.i.i, label %.noexc389, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.se = icmp ugt i64 %i.sd, 9223372036854775804
  br i1 %i.se, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !62

.noexc.i.i.i.i:                                   ; preds = %bb.as
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc388:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.as
  %i.sf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sd) #24
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc389:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.ar
  %i.sg = phi ptr [ null, %bb.ar ], [ %i.sf, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.sg, ptr %i.ry, align 8, !tbaa !157
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  store ptr %i.sg, ptr %i.sh, align 8, !tbaa !156
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sd
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rv, i64 72
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !161
  %i.sk = load ptr, ptr %i.ok, align 8, !tbaa !158 ; 3 uses
  %i.sl = load ptr, ptr %i.ot, align 8, !tbaa !158
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = ptrtoint ptr %i.sk to i64
  %i.so = sub i64 %i.sm, %i.sn                    ; 4 uses
  %i.sp = icmp sgt i64 %i.so, 4
  br i1 %i.sp, label %bb.at, label %bb.au, !prof !159

bb.at:                                            ; preds = %.noexc389
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.sg, ptr align 4 %i.sk, i64 %i.so, i1 false)
  br label %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineC2ERKS2_.exit.i

bb.au:                                            ; preds = %.noexc389
  %i.sq = icmp eq i64 %i.so, 4
  br i1 %i.sq, label %bb.av, label %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineC2ERKS2_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.sr = load float, ptr %i.sk, align 4, !tbaa !114
  store float %i.sr, ptr %i.sg, align 4, !tbaa !114
  br label %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineC2ERKS2_.exit.i

_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineC2ERKS2_.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.ss = getelementptr inbounds i8, ptr %i.sg, i64 %i.so
  store ptr %i.ss, ptr %i.sh, align 8, !tbaa !156
  %i.st = load ptr, ptr %i.ru, align 8, !tbaa !152
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 80
  store ptr %i.su, ptr %i.ru, align 8, !tbaa !152
  br label %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit

bb.aw:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.rt, ptr %i.rv, ptr noundef nonnull align 8 dereferenceable(80) %10)
          to label %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineC2ERKS2_.exit.i, %bb.aw
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next562, %wide.trip.count564
  br i1 %exitcond565.not, label %._crit_edge522, label %bb.ak, !llvm.loop !306

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.sv = load ptr, ptr %i.ok, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i391 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i.i.i391, label %.thread436, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.sw = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !161
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sv to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.ta) #25
  br label %.thread436

.thread436:                                       ; preds = %bb.ax, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bb

._crit_edge522:                                   ; preds = %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorIS_IN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineESaIS3_EESaIS5_EE6resizeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ez) #25
  %i.tb = load ptr, ptr %i.ok, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i392 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i392, label %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineD2Ev.exit393, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge522
  %i.tc = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !161
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tb to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tg) #25
  br label %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineD2Ev.exit393

_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineD2Ev.exit393: ; preds = %._crit_edge522, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i.i394 = icmp eq ptr %.sroa.0397.0, null
  br i1 %.not.i.i.i394, label %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor10OctaveLineESaIS3_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN2cv15line_descriptor16BinaryDescriptor16OctaveSingleLineD2Ev.exit393
  %i.th = ptrtoint ptr %.sroa.26.0 to i64
  %i.ti = ptrtoint ptr %.sroa.0397.0 to i64
  %i.tj = sub i64 %i.th, %i.ti
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.0, i64 noundef %i.tj) #25
  br label %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor10OctaveLineESaIS3_EED2Ev.exit

bb.ba:                                            ; preds = %._crit_edge488, %bb.af
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i395 = icmp eq ptr %.sroa.0397.0, null
  br i1 %.not.i.i.i395, label %_ZNSt6vectorIN2cv15line_descriptor16BinaryDescriptor10OctaveLineESaIS3_EED2Ev.exit396, label %bb.bb

bb.bb:                                            ; preds = %.thread436, %bb.ba
  %.pn355.pn439 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread436 ], [ %i.tk, %bb.ba ]
  %i.tl = ptrtoint ptr %.sroa.26.0 to i64
  %i.tm = ptrtoint ptr %.sroa.0397.0 to i64
end_hunk_0
