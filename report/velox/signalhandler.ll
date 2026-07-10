inline.NumInlined: 69
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv:bb.a
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store <4 x i8> <i8 42, i8 42, i8 42, i8 32>, ptr %i.a, align 16, !tbaa !7
  %i.ec = load i8, ptr %switch.load, align 1, !tbaa !7 ; 2 uses
  %.not9.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not9.i.i, label %.thread301.i, label %.lr.ph.i.i.preheader

.thread301.i:                                     ; preds = %switch.lookup
  store i8 32, ptr %.0.lcssa.i.sroa.gep.i11, align 4, !tbaa !7
  br label %.sink.split

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.er
  store i8 %i.et, ptr %i.ed, align 1, !tbaa !7
  %i.ee = or disjoint i64 %.010.i12.i163, 2       ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.1 = icmp eq i8 %i.eg, 0
  br i1 %.not.i14.i.1, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.1, !llvm.loop !18

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.ee
  store i8 %i.eg, ptr %i.eh, align 2, !tbaa !7
  %i.ei = or disjoint i64 %.010.i12.i163, 3       ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.2 = icmp eq i8 %i.ek, 0
  br i1 %.not.i14.i.2, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.2, !llvm.loop !18

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.ei
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !7
  %i.em = add nuw nsw i64 %.010.i12.i163, 4       ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.3 = icmp eq i8 %i.eo, 0
  br i1 %.not.i14.i.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.3, !llvm.loop !18

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %exitcond.not.i.3 = icmp eq i64 %i.em, 252
  br i1 %exitcond.not.i.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.preheader, !llvm.loop !18

.lr.ph.i.i.preheader:                             ; preds = %switch.lookup, %.lr.ph.i.i.3
  %.010.i12.i163 = phi i64 [ %i.em, %.lr.ph.i.i.3 ], [ 0, %switch.lookup ] ; 5 uses
  %i.ep = phi i8 [ %i.eo, %.lr.ph.i.i.3 ], [ %i.ec, %switch.lookup ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %.010.i12.i163
  store i8 %i.ep, ptr %i.eq, align 4, !tbaa !7
  %i.er = or disjoint i64 %.010.i12.i163, 1       ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i = icmp eq i8 %i.et, 0
  br i1 %.not.i14.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i: ; preds = %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.0.lcssa.i13.ph.i = phi i64 [ %i.er, %.lr.ph.i.i.preheader ], [ 252, %.lr.ph.i.i.3 ], [ %i.ee, %.lr.ph.i.i ], [ %i.em, %.lr.ph.i.i.2 ], [ %i.ei, %.lr.ph.i.i.1 ]
  %i.eu = add nuw nsw i64 %.0.lcssa.i13.ph.i, 4
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i: ; preds = %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store <8 x i8> <i8 42, i8 42, i8 42, i8 32, i8 83, i8 105, i8 103, i8 110>, ptr %i.a, align 16, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 97, ptr %i.ev, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 108, ptr %i.ew, align 1, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 32, ptr %i.ex, align 2, !tbaa !7
  %.ptr174.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 3 uses
  %i.ey = sext i32 %0 to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.br
  %exitcond84.not = icmp eq i64 %indvars.iv.next82, 245
  br i1 %exitcond84.not, label %.lr.ph.i.i.preheader.i.i14, label %bb.br

bb.br:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i, %bb.bq
  %.014.i.i13165 = phi i64 [ %i.ey, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i ], [ %i.fb, %bb.bq ] ; 3 uses
  %indvars.iv81164 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i ], [ %indvars.iv.next82, %bb.bq ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.ptr174.i, i64 %indvars.iv81164
  %i.fa = urem i64 %.014.i.i13165, 10
  %i.fb = udiv i64 %.014.i.i13165, 10
  %i.fc = trunc nuw nsw i64 %i.fa to i8
  %i.fd = or disjoint i8 %i.fc, 48
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !7
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81164, 1 ; 3 uses
  %i.fe = icmp ult i64 %.014.i.i13165, 10
  br i1 %i.fe, label %split.i.i21, label %bb.bq

split.i.i21:                                      ; preds = %bb.br
  %.not.i23 = icmp eq i64 %indvars.iv81164, 0
  br i1 %.not.i23, label %.thread130, label %.lr.ph.i.i.preheader.i.i14

.thread130:                                       ; preds = %split.i.i21
  %.ptr.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 32, ptr %.ptr.i112, align 4, !tbaa !7
  br label %.sink.split

.lr.ph.i.i.preheader.i.i14:                       ; preds = %bb.bq, %split.i.i21
  %.pre-phi.i279.i = phi i64 [ %indvars.iv.next82, %split.i.i21 ], [ 245, %bb.bq ] ; 2 uses
  %i.ff = getelementptr i8, ptr %.ptr174.i, i64 %.pre-phi.i279.i
  %.012.i.i.i.i15 = getelementptr i8, ptr %i.ff, i64 -1
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16, %.lr.ph.i.i.preheader.i.i14
  %.014.i.i.i.i17 = phi ptr [ %.0.i.i.i.i19, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i15, %.lr.ph.i.i.preheader.i.i14 ] ; 3 uses
  %.0913.i.i.i.i18 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i16 ], [ %.ptr174.i, %.lr.ph.i.i.preheader.i.i14 ] ; 3 uses
  %i.fg = load i8, ptr %.0913.i.i.i.i18, align 1, !tbaa !7
  %i.fh = load i8, ptr %.014.i.i.i.i17, align 1, !tbaa !7
  store i8 %i.fh, ptr %.0913.i.i.i.i18, align 1, !tbaa !7
  store i8 %i.fg, ptr %.014.i.i.i.i17, align 1, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i18, i64 1 ; 2 uses
  %.0.i.i.i.i19 = getelementptr inbounds i8, ptr %.014.i.i.i.i17, i64 -1 ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %.0.i.i.i.i19
  br i1 %i.fj, label %.lr.ph.i.i.i.i16, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit: ; preds = %.lr.ph.i.i.i.i16
  %i.fk = add nuw nsw i64 %.pre-phi.i279.i, 11
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i: ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i
  %.sroa.4.0.idx.i = phi i64 [ %i.eu, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i ], [ %i.fk, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit ] ; 8 uses
  %exitcond242.not.i = icmp sgt i64 %.sroa.4.0.idx.i, 255
  br i1 %exitcond242.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.4.0.idx.i ; 4 uses
  store i8 32, ptr %.ptr.i, align 1, !tbaa !7
  %exitcond242.1.not.i = icmp eq i64 %.sroa.4.0.idx.i, 255
  br i1 %exitcond242.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 1
  store i8 40, ptr %.ptr.1.i, align 1, !tbaa !7
  %exitcond242.2.not.i = icmp eq i64 %.sroa.4.0.idx.i, 254
  br i1 %exitcond242.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 2
  store i8 64, ptr %.ptr.2.i, align 1, !tbaa !7
  %exitcond242.3.not.i = icmp eq i64 %.sroa.4.0.idx.i, 253
  br i1 %exitcond242.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 3
  store i8 48, ptr %.ptr.3.i, align 1, !tbaa !7
  %exitcond242.4.not.i = icmp eq i64 %.sroa.4.0.idx.i, 252
  br i1 %exitcond242.4.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bw

.sink.split:                                      ; preds = %.thread301.i, %.thread130
  %.sink180.sroa.phi = phi ptr [ %.sink180.sroa.gep, %.thread130 ], [ %.sink180.sroa.gep198, %.thread301.i ]
  %.sink179.sroa.phi = phi ptr [ %.sink179.sroa.gep, %.thread130 ], [ %.sink179.sroa.gep197, %.thread301.i ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread130 ], [ %.sink.sroa.gep196, %.thread301.i ]
  %.sroa.4.0.idx284290295300305.i.ph = phi i64 [ 12, %.thread130 ], [ 4, %.thread301.i ]
  store i8 40, ptr %.sink180.sroa.phi, align 1, !tbaa !7
  store i8 64, ptr %.sink179.sroa.phi, align 2, !tbaa !7
  store i8 48, ptr %.sink.sroa.phi, align 1, !tbaa !7
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.bv
  %.sroa.4.0.idx284290295300305.i = phi i64 [ %.sroa.4.0.idx.i, %bb.bv ], [ %.sroa.4.0.idx284290295300305.i.ph, %.sink.split ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.4.0.idx284290295300305.i
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i8 120, ptr %.ptr.4.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i: ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i
  %.sroa.4.0.idx285.i = phi i64 [ %.sroa.4.0.idx.i, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i ], [ %.sroa.4.0.idx284290295300305.i, %bb.bw ], [ 255, %bb.bs ], [ 252, %bb.bv ], [ 254, %bb.bt ], [ 253, %bb.bu ]
  %.0.lcssa.i23.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i ], [ 5, %bb.bw ], [ 1, %bb.bs ], [ 4, %bb.bv ], [ 2, %bb.bt ], [ 3, %bb.bu ]
  %i.fm = add nuw nsw i64 %.0.lcssa.i23.i, %.sroa.4.0.idx285.i ; 4 uses
  %.ptr179.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fm ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fo = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.fm) ; 3 uses
  %exitcond88.not166 = icmp ugt i64 %i.fm, 255
  br i1 %exitcond88.not166, label %split.i28.i, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !7
  %i.fq = ptrtoint ptr %i.fp to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.by
  %i.fr = lshr i64 %.014.i27.i168, 4
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %i.fo
  br i1 %exitcond88.not, label %split.i28.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph169, %bb.bx
  %.014.i27.i168 = phi i64 [ %i.fq, %.lr.ph169 ], [ %i.fr, %bb.bx ] ; 3 uses
  %indvars.iv85167 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next86, %bb.bx ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.ptr179.i, i64 %indvars.iv85167
  %i.ft = and i64 %.014.i27.i168, 15              ; 3 uses
  %i.fu = icmp samesign ult i64 %i.ft, 10
  %i.fv = or disjoint i64 %i.ft, 48
  %i.fw = add nuw nsw i64 %i.ft, 87
  %i.fx = select i1 %i.fu, i64 %i.fv, i64 %i.fw
  %i.fy = trunc nuw nsw i64 %i.fx to i8
  store i8 %i.fy, ptr %i.fs, align 1, !tbaa !7
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85167, 1 ; 3 uses
  %i.fz = icmp ult i64 %.014.i27.i168, 16
  br i1 %i.fz, label %split.i28.i, label %bb.bx

split.i28.i:                                      ; preds = %bb.bx, %bb.by, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i
  %.pre-phi.i29.i = phi i64 [ %i.fo, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i ], [ %i.fo, %bb.bx ], [ %indvars.iv.next86, %bb.by ] ; 3 uses
  %i.ga = and i64 %.pre-phi.i29.i, 4294967294
  %.not106 = icmp eq i64 %i.ga, 0
  br i1 %.not106, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i, label %.lr.ph.i.i.preheader.i31.i

.lr.ph.i.i.preheader.i31.i:                       ; preds = %split.i28.i
  %i.gb = getelementptr i8, ptr %.ptr179.i, i64 %.pre-phi.i29.i
  %.012.i.i.i32.i = getelementptr i8, ptr %i.gb, i64 -1
  br label %.lr.ph.i.i.i33.i

.lr.ph.i.i.i33.i:                                 ; preds = %.lr.ph.i.i.i33.i, %.lr.ph.i.i.preheader.i31.i
  %.014.i.i.i34.i = phi ptr [ %.0.i.i.i36.i, %.lr.ph.i.i.i33.i ], [ %.012.i.i.i32.i, %.lr.ph.i.i.preheader.i31.i ] ; 3 uses
  %.0913.i.i.i35.i = phi ptr [ %i.ge, %.lr.ph.i.i.i33.i ], [ %.ptr179.i, %.lr.ph.i.i.preheader.i31.i ] ; 3 uses
  %i.gc = load i8, ptr %.0913.i.i.i35.i, align 1, !tbaa !7
  %i.gd = load i8, ptr %.014.i.i.i34.i, align 1, !tbaa !7
  store i8 %i.gd, ptr %.0913.i.i.i35.i, align 1, !tbaa !7
  store i8 %i.gc, ptr %.014.i.i.i34.i, align 1, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %.0913.i.i.i35.i, i64 1 ; 2 uses
  %.0.i.i.i36.i = getelementptr inbounds i8, ptr %.014.i.i.i34.i, i64 -1 ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %.0.i.i.i36.i
  br i1 %i.gf, label %.lr.ph.i.i.i33.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i: ; preds = %.lr.ph.i.i.i33.i, %split.i28.i
  %.add176.i = add nuw nsw i64 %.pre-phi.i29.i, %i.fm ; 3 uses
  %i.gg = icmp samesign ult i64 %.add176.i, 256
  br i1 %i.gg, label %bb.bz, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i

bb.bz:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i
  %.ptr180.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add176.i
  store i8 41, ptr %.ptr180.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i: ; preds = %bb.bz, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i
  %.0.lcssa.i45.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i ], [ 1, %bb.bz ]
  %.add177.i = add nuw nsw i64 %.0.lcssa.i45.i, %.add176.i ; 5 uses
  %smax243.i = call i64 @llvm.smax.i64(i64 %.add177.i, i64 256)
  %i.gh = sub i64 %smax243.i, %.add177.i          ; 16 uses
  %exitcond244.not.i = icmp sgt i64 %.add177.i, 255
  br i1 %exitcond244.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i
  %.ptr182.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add177.i ; 17 uses
  store i8 32, ptr %.ptr182.i, align 1, !tbaa !7
  %exitcond244.1.not.i = icmp eq i64 %i.gh, 1
  br i1 %exitcond244.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.ptr182.1.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 1
  store i8 114, ptr %.ptr182.1.i, align 1, !tbaa !7
  %exitcond244.2.not.i = icmp eq i64 %i.gh, 2
  br i1 %exitcond244.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.ptr182.2.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 2
  store i8 101, ptr %.ptr182.2.i, align 1, !tbaa !7
  %exitcond244.3.not.i = icmp eq i64 %i.gh, 3
  br i1 %exitcond244.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.ptr182.3.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 3
  store i8 99, ptr %.ptr182.3.i, align 1, !tbaa !7
  %exitcond244.4.not.i = icmp eq i64 %i.gh, 4
  br i1 %exitcond244.4.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.ptr182.4.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 4
  store i8 101, ptr %.ptr182.4.i, align 1, !tbaa !7
  %exitcond244.5.not.i = icmp eq i64 %i.gh, 5
  br i1 %exitcond244.5.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.ptr182.5.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 5
  store i8 105, ptr %.ptr182.5.i, align 1, !tbaa !7
  %exitcond244.6.not.i = icmp eq i64 %i.gh, 6
  br i1 %exitcond244.6.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.ptr182.6.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 6
  store i8 118, ptr %.ptr182.6.i, align 1, !tbaa !7
  %exitcond244.7.not.i = icmp eq i64 %i.gh, 7
  br i1 %exitcond244.7.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.ptr182.7.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 7
  store i8 101, ptr %.ptr182.7.i, align 1, !tbaa !7
  %exitcond244.8.not.i = icmp eq i64 %i.gh, 8
  br i1 %exitcond244.8.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.ptr182.8.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 8
  store i8 100, ptr %.ptr182.8.i, align 1, !tbaa !7
  %exitcond244.9.not.i = icmp eq i64 %i.gh, 9
  br i1 %exitcond244.9.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.ptr182.9.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 9
  store i8 32, ptr %.ptr182.9.i, align 1, !tbaa !7
  %exitcond244.10.not.i = icmp eq i64 %i.gh, 10
  br i1 %exitcond244.10.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.ptr182.10.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 10
  store i8 98, ptr %.ptr182.10.i, align 1, !tbaa !7
  %exitcond244.11.not.i = icmp eq i64 %i.gh, 11
  br i1 %exitcond244.11.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.ptr182.11.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 11
  store i8 121, ptr %.ptr182.11.i, align 1, !tbaa !7
  %exitcond244.12.not.i = icmp eq i64 %i.gh, 12
  br i1 %exitcond244.12.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.ptr182.12.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 12
  store i8 32, ptr %.ptr182.12.i, align 1, !tbaa !7
  %exitcond244.13.not.i = icmp eq i64 %i.gh, 13
  br i1 %exitcond244.13.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.ptr182.13.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 13
  store i8 80, ptr %.ptr182.13.i, align 1, !tbaa !7
  %exitcond244.14.not.i = icmp eq i64 %i.gh, 14
  br i1 %exitcond244.14.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.ptr182.14.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 14
  store i8 73, ptr %.ptr182.14.i, align 1, !tbaa !7
  %exitcond244.15.not.i = icmp eq i64 %i.gh, 15
  br i1 %exitcond244.15.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.ptr182.15.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 15
  store i8 68, ptr %.ptr182.15.i, align 1, !tbaa !7
  %exitcond244.16.not.i = icmp eq i64 %i.gh, 16
  br i1 %exitcond244.16.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.ptr182.16.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 16
  store i8 32, ptr %.ptr182.16.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i
  %.0.lcssa.i50.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i ], [ 17, %bb.cq ], [ 1, %bb.ca ], [ 16, %bb.cp ], [ 2, %bb.cb ], [ 9, %bb.ci ], [ 3, %bb.cc ], [ 15, %bb.co ], [ 4, %bb.cd ], [ 12, %bb.cl ], [ 5, %bb.ce ], [ 14, %bb.cn ], [ 6, %bb.cf ], [ 10, %bb.cj ], [ 7, %bb.cg ], [ 13, %bb.cm ], [ 8, %bb.ch ], [ 11, %bb.ck ]
  %i.gi = add nuw nsw i64 %.0.lcssa.i50.i, %.add177.i ; 3 uses
  %.ptr186.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi ; 3 uses
  %i.gj = call i32 @getpid() #11
  %i.gk = sext i32 %i.gj to i64
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i
  %.015.i53.i = phi i32 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i ], [ %i.gt, %bb.cs ] ; 3 uses
  %.014.i54.i = phi i64 [ %i.gk, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i ], [ %i.gq, %bb.cs ] ; 3 uses
  %i.gl = zext i32 %.015.i53.i to i64             ; 3 uses
  %i.gm = add nuw nsw i64 %i.gi, %i.gl
  %i.gn = icmp samesign ult i64 %i.gm, 256
  br i1 %i.gn, label %bb.cs, label %split.i55.i

bb.cs:                                            ; preds = %bb.cr
  %i.go = getelementptr inbounds nuw i8, ptr %.ptr186.i, i64 %i.gl
  %i.gp = urem i64 %.014.i54.i, 10
  %i.gq = udiv i64 %.014.i54.i, 10
  %i.gr = trunc nuw nsw i64 %i.gp to i8
  %i.gs = or disjoint i8 %i.gr, 48
  store i8 %i.gs, ptr %i.go, align 1, !tbaa !7
  %i.gt = add i32 %.015.i53.i, 1                  ; 3 uses
  %i.gu = icmp ult i64 %.014.i54.i, 10
  br i1 %i.gu, label %._crit_edge.i66.i, label %bb.cr

._crit_edge.i66.i:                                ; preds = %bb.cs
  %.pre19.i68.i = zext i32 %i.gt to i64
  br label %split.i55.i

split.i55.i:                                      ; preds = %bb.cr, %._crit_edge.i66.i
  %.pre-phi.i56.i = phi i64 [ %.pre19.i68.i, %._crit_edge.i66.i ], [ %i.gl, %bb.cr ] ; 2 uses
  %.1.i57.i = phi i32 [ %i.gt, %._crit_edge.i66.i ], [ %.015.i53.i, %bb.cr ]
  %i.gv = icmp ugt i32 %.1.i57.i, 1
  br i1 %i.gv, label %.lr.ph.i.i.preheader.i58.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i

.lr.ph.i.i.preheader.i58.i:                       ; preds = %split.i55.i
  %i.gw = getelementptr i8, ptr %.ptr186.i, i64 %.pre-phi.i56.i
  %.012.i.i.i59.i = getelementptr i8, ptr %i.gw, i64 -1
  br label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %.lr.ph.i.i.i60.i, %.lr.ph.i.i.preheader.i58.i
  %.014.i.i.i61.i = phi ptr [ %.0.i.i.i63.i, %.lr.ph.i.i.i60.i ], [ %.012.i.i.i59.i, %.lr.ph.i.i.preheader.i58.i ] ; 3 uses
  %.0913.i.i.i62.i = phi ptr [ %i.gz, %.lr.ph.i.i.i60.i ], [ %.ptr186.i, %.lr.ph.i.i.preheader.i58.i ] ; 3 uses
  %i.gx = load i8, ptr %.0913.i.i.i62.i, align 1, !tbaa !7
  %i.gy = load i8, ptr %.014.i.i.i61.i, align 1, !tbaa !7
  store i8 %i.gy, ptr %.0913.i.i.i62.i, align 1, !tbaa !7
  store i8 %i.gx, ptr %.014.i.i.i61.i, align 1, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %.0913.i.i.i62.i, i64 1 ; 2 uses
  %.0.i.i.i63.i = getelementptr inbounds i8, ptr %.014.i.i.i61.i, i64 -1 ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %.0.i.i.i63.i
  br i1 %i.ha, label %.lr.ph.i.i.i60.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i: ; preds = %.lr.ph.i.i.i60.i, %split.i55.i
  %.add183.i = add nuw nsw i64 %.pre-phi.i56.i, %i.gi ; 4 uses
  %.ptr187.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add183.i ; 8 uses
  %i.hb = call i64 @llvm.usub.sat.i64(i64 256, i64 %.add183.i) ; 7 uses
  %exitcond245.not.i = icmp ugt i64 %.add183.i, 255
  br i1 %exitcond245.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i
  store i8 32, ptr %.ptr187.i, align 1, !tbaa !7
  %exitcond245.1.not.i = icmp eq i64 %i.hb, 1
  br i1 %exitcond245.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hc = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 1
  store i8 40, ptr %i.hc, align 1, !tbaa !7
  %exitcond245.2.not.i = icmp eq i64 %i.hb, 2
  br i1 %exitcond245.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hd = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 2
  store i8 84, ptr %i.hd, align 1, !tbaa !7
  %exitcond245.3.not.i = icmp eq i64 %i.hb, 3
  br i1 %exitcond245.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.he = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 3
  store i8 73, ptr %i.he, align 1, !tbaa !7
  %exitcond245.4.not.i = icmp eq i64 %i.hb, 4
  br i1 %exitcond245.4.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hf = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 4
  store i8 68, ptr %i.hf, align 1, !tbaa !7
  %exitcond245.5.not.i = icmp eq i64 %i.hb, 5
  br i1 %exitcond245.5.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hg = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 5
  store i8 32, ptr %i.hg, align 1, !tbaa !7
  %exitcond245.6.not.i = icmp eq i64 %i.hb, 6
  br i1 %exitcond245.6.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hh = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 6
  store i8 48, ptr %i.hh, align 1, !tbaa !7
  %exitcond245.7.not.i = icmp eq i64 %i.hb, 7
  br i1 %exitcond245.7.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hi = getelementptr inbounds nuw i8, ptr %.ptr187.i, i64 7
  store i8 120, ptr %i.hi, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i
  %.0.lcssa.i72.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit69.i ], [ 8, %bb.da ], [ 1, %bb.ct ], [ 7, %bb.cz ], [ 2, %bb.cu ], [ 5, %bb.cx ], [ 3, %bb.cv ], [ 6, %bb.cy ], [ 4, %bb.cw ]
  %.add184.i = add nuw nsw i64 %.0.lcssa.i72.i, %.add183.i ; 5 uses
  %.ptr188.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add184.i ; 2 uses
  %smax = call i64 @llvm.usub.sat.i64(i64 256, i64 %.add184.i) ; 3 uses
  %i.hj = getelementptr i8, ptr %i.a, i64 %.add184.i
  %exitcond71.not149 = icmp ugt i64 %.add184.i, 255
  br i1 %exitcond71.not149, label %split.i77.i, label %.lr.ph175

bb.db:                                            ; preds = %.lr.ph175
  %i.hk = lshr i64 %.014.i76.i174, 4
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, %smax
  br i1 %exitcond92.not, label %split.i77.i, label %.lr.ph175

.lr.ph175:                                        ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i, %bb.db
  %.014.i76.i174 = phi i64 [ %i.hk, %bb.db ], [ %i.e, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i ] ; 3 uses
  %indvars.iv89173 = phi i64 [ %indvars.iv.next90, %bb.db ], [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i ] ; 2 uses
  %.ptr189.i = getelementptr i8, ptr %i.hj, i64 %indvars.iv89173
  %i.hl = and i64 %.014.i76.i174, 15              ; 3 uses
  %i.hm = icmp samesign ult i64 %i.hl, 10
  %i.hn = or disjoint i64 %i.hl, 48
  %i.ho = add nuw nsw i64 %i.hl, 87
  %i.hp = select i1 %i.hm, i64 %i.hn, i64 %i.ho
  %i.hq = trunc nuw nsw i64 %i.hp to i8
  store i8 %i.hq, ptr %.ptr189.i, align 1, !tbaa !7
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89173, 1 ; 3 uses
  %i.hr = icmp ult i64 %.014.i76.i174, 16
  br i1 %i.hr, label %split.i77.i, label %bb.db

split.i77.i:                                      ; preds = %bb.db, %.lr.ph175, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i
  %.pre-phi.i78.i = phi i64 [ %smax, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit74.i ], [ %smax, %bb.db ], [ %indvars.iv.next90, %.lr.ph175 ] ; 3 uses
  %i.hs = and i64 %.pre-phi.i78.i, 4294967294
  %.not107 = icmp eq i64 %i.hs, 0
  br i1 %.not107, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i, label %.lr.ph.i.i.preheader.i80.i

.lr.ph.i.i.preheader.i80.i:                       ; preds = %split.i77.i
  %i.ht = getelementptr i8, ptr %.ptr188.ptr.i, i64 %.pre-phi.i78.i
  %.012.i.i.i81.i = getelementptr i8, ptr %i.ht, i64 -1
  br label %.lr.ph.i.i.i82.i

.lr.ph.i.i.i82.i:                                 ; preds = %.lr.ph.i.i.i82.i, %.lr.ph.i.i.preheader.i80.i
  %.014.i.i.i83.i = phi ptr [ %.0.i.i.i85.i, %.lr.ph.i.i.i82.i ], [ %.012.i.i.i81.i, %.lr.ph.i.i.preheader.i80.i ] ; 3 uses
  %.0913.i.i.i84.i = phi ptr [ %i.hw, %.lr.ph.i.i.i82.i ], [ %.ptr188.ptr.i, %.lr.ph.i.i.preheader.i80.i ] ; 3 uses
  %i.hu = load i8, ptr %.0913.i.i.i84.i, align 1, !tbaa !7
  %i.hv = load i8, ptr %.014.i.i.i83.i, align 1, !tbaa !7
  store i8 %i.hv, ptr %.0913.i.i.i84.i, align 1, !tbaa !7
  store i8 %i.hu, ptr %.014.i.i.i83.i, align 1, !tbaa !7
  %i.hw = getelementptr inbounds nuw i8, ptr %.0913.i.i.i84.i, i64 1 ; 2 uses
  %.0.i.i.i85.i = getelementptr inbounds i8, ptr %.014.i.i.i83.i, i64 -1 ; 2 uses
  %i.hx = icmp ult ptr %i.hw, %.0.i.i.i85.i
  br i1 %i.hx, label %.lr.ph.i.i.i82.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i: ; preds = %.lr.ph.i.i.i82.i, %split.i77.i
  %.ptr188.add.i = add nuw nsw i64 %.pre-phi.i78.i, %.add184.i ; 4 uses
  %.ptr192.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.ptr188.add.i ; 2 uses
  %exitcond247.not.i = icmp ugt i64 %.ptr188.add.i, 255
  br i1 %exitcond247.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i
  store i8 41, ptr %.ptr192.i, align 1, !tbaa !7
  %exitcond247.1.not.i = icmp eq i64 %.ptr188.add.i, 255
  br i1 %exitcond247.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.hy = getelementptr inbounds nuw i8, ptr %.ptr192.i, i64 1
  store i8 32, ptr %i.hy, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i: ; preds = %bb.dd, %bb.dc, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i
  %.0.lcssa.i94.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit91.i ], [ 2, %bb.dd ], [ 1, %bb.dc ]
  %.add190.i = add nuw nsw i64 %.0.lcssa.i94.i, %.ptr188.add.i ; 5 uses
  %smax248.i = call i64 @llvm.smax.i64(i64 %.add190.i, i64 256)
  %i.hz = sub i64 %smax248.i, %.add190.i          ; 8 uses
  %exitcond249.not.i = icmp sgt i64 %.add190.i, 255
  br i1 %exitcond249.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.de

bb.de:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i
  %.ptr194.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add190.i ; 9 uses
  store i8 102, ptr %.ptr194.i, align 1, !tbaa !7
  %exitcond249.1.not.i = icmp eq i64 %i.hz, 1
  br i1 %exitcond249.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.ptr194.1.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 1
  store i8 114, ptr %.ptr194.1.i, align 1, !tbaa !7
  %exitcond249.2.not.i = icmp eq i64 %i.hz, 2
  br i1 %exitcond249.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.ptr194.2.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 2
  store i8 111, ptr %.ptr194.2.i, align 1, !tbaa !7
  %exitcond249.3.not.i = icmp eq i64 %i.hz, 3
  br i1 %exitcond249.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.ptr194.3.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 3
  store i8 109, ptr %.ptr194.3.i, align 1, !tbaa !7
  %exitcond249.4.not.i = icmp eq i64 %i.hz, 4
  br i1 %exitcond249.4.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.ptr194.4.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 4
  store i8 32, ptr %.ptr194.4.i, align 1, !tbaa !7
  %exitcond249.5.not.i = icmp eq i64 %i.hz, 5
  br i1 %exitcond249.5.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.ptr194.5.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 5
  store i8 80, ptr %.ptr194.5.i, align 1, !tbaa !7
  %exitcond249.6.not.i = icmp eq i64 %i.hz, 6
  br i1 %exitcond249.6.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.ptr194.6.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 6
  store i8 73, ptr %.ptr194.6.i, align 1, !tbaa !7
  %exitcond249.7.not.i = icmp eq i64 %i.hz, 7
  br i1 %exitcond249.7.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %.ptr194.7.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 7
  store i8 68, ptr %.ptr194.7.i, align 1, !tbaa !7
  %exitcond249.8.not.i = icmp eq i64 %i.hz, 8
  br i1 %exitcond249.8.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.ptr194.8.i = getelementptr inbounds nuw i8, ptr %.ptr194.i, i64 8
  store i8 32, ptr %.ptr194.8.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i: ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i
  %.0.lcssa.i99.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit96.i ], [ 9, %bb.dm ], [ 1, %bb.de ], [ 8, %bb.dl ], [ 2, %bb.df ], [ 5, %bb.di ], [ 3, %bb.dg ], [ 7, %bb.dk ], [ 4, %bb.dh ], [ 6, %bb.dj ]
  %i.ia = add nuw nsw i64 %.0.lcssa.i99.i, %.add190.i ; 3 uses
  %.ptr198.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ia ; 3 uses
  %i.ib = load i32, ptr %i.fn, align 8, !tbaa !7
  %i.ic = sext i32 %i.ib to i64
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i
  %.015.i102.i = phi i32 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i ], [ %i.il, %bb.do ] ; 3 uses
  %.014.i103.i = phi i64 [ %i.ic, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit101.i ], [ %i.ii, %bb.do ] ; 3 uses
  %i.id = zext i32 %.015.i102.i to i64            ; 3 uses
  %i.ie = add nuw nsw i64 %i.ia, %i.id
  %i.if = icmp samesign ult i64 %i.ie, 256
  br i1 %i.if, label %bb.do, label %split.i104.i

bb.do:                                            ; preds = %bb.dn
  %i.ig = getelementptr inbounds nuw i8, ptr %.ptr198.i, i64 %i.id
  %i.ih = urem i64 %.014.i103.i, 10
  %i.ii = udiv i64 %.014.i103.i, 10
  %i.ij = trunc nuw nsw i64 %i.ih to i8
  %i.ik = or disjoint i8 %i.ij, 48
  store i8 %i.ik, ptr %i.ig, align 1, !tbaa !7
  %i.il = add i32 %.015.i102.i, 1                 ; 3 uses
  %i.im = icmp ult i64 %.014.i103.i, 10
  br i1 %i.im, label %._crit_edge.i115.i, label %bb.dn

._crit_edge.i115.i:                               ; preds = %bb.do
  %.pre19.i117.i = zext i32 %i.il to i64
  br label %split.i104.i

split.i104.i:                                     ; preds = %bb.dn, %._crit_edge.i115.i
  %.pre-phi.i105.i = phi i64 [ %.pre19.i117.i, %._crit_edge.i115.i ], [ %i.id, %bb.dn ] ; 2 uses
  %.1.i106.i = phi i32 [ %i.il, %._crit_edge.i115.i ], [ %.015.i102.i, %bb.dn ]
  %i.in = icmp ugt i32 %.1.i106.i, 1
  br i1 %i.in, label %.lr.ph.i.i.preheader.i107.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i

.lr.ph.i.i.preheader.i107.i:                      ; preds = %split.i104.i
  %i.io = getelementptr i8, ptr %.ptr198.i, i64 %.pre-phi.i105.i
  %.012.i.i.i108.i = getelementptr i8, ptr %i.io, i64 -1
  br label %.lr.ph.i.i.i109.i

.lr.ph.i.i.i109.i:                                ; preds = %.lr.ph.i.i.i109.i, %.lr.ph.i.i.preheader.i107.i
  %.014.i.i.i110.i = phi ptr [ %.0.i.i.i112.i, %.lr.ph.i.i.i109.i ], [ %.012.i.i.i108.i, %.lr.ph.i.i.preheader.i107.i ] ; 3 uses
  %.0913.i.i.i111.i = phi ptr [ %i.ir, %.lr.ph.i.i.i109.i ], [ %.ptr198.i, %.lr.ph.i.i.preheader.i107.i ] ; 3 uses
  %i.ip = load i8, ptr %.0913.i.i.i111.i, align 1, !tbaa !7
  %i.iq = load i8, ptr %.014.i.i.i110.i, align 1, !tbaa !7
  store i8 %i.iq, ptr %.0913.i.i.i111.i, align 1, !tbaa !7
  store i8 %i.ip, ptr %.014.i.i.i110.i, align 1, !tbaa !7
  %i.ir = getelementptr inbounds nuw i8, ptr %.0913.i.i.i111.i, i64 1 ; 2 uses
  %.0.i.i.i112.i = getelementptr inbounds i8, ptr %.014.i.i.i110.i, i64 -1 ; 2 uses
  %i.is = icmp ult ptr %i.ir, %.0.i.i.i112.i
  br i1 %i.is, label %.lr.ph.i.i.i109.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i: ; preds = %.lr.ph.i.i.i109.i, %split.i104.i
  %.add195.i = add nuw nsw i64 %.pre-phi.i105.i, %i.ia ; 4 uses
  %.ptr199.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add195.i ; 2 uses
  %exitcond251.not.i = icmp ugt i64 %.add195.i, 255
  br i1 %exitcond251.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit123.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i
  store i8 59, ptr %.ptr199.i, align 1, !tbaa !7
  %exitcond251.1.not.i = icmp eq i64 %.add195.i, 255
  br i1 %exitcond251.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit123.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.it = getelementptr inbounds nuw i8, ptr %.ptr199.i, i64 1
  store i8 32, ptr %i.it, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit123.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit123.i: ; preds = %bb.dq, %bb.dp, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i
  %.0.lcssa.i121.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit118.i ], [ 2, %bb.dq ], [ 1, %bb.dp ]
  %.add196.i = add nuw nsw i64 %.0.lcssa.i121.i, %.add195.i ; 5 uses
  %smax252.i = call i64 @llvm.smax.i64(i64 %.add196.i, i64 256)
  %i.iu = sub i64 %smax252.i, %.add196.i          ; 16 uses
  %exitcond253.not.i = icmp sgt i64 %.add196.i, 255
  br i1 %exitcond253.not.i, label %_ZN6google12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit123.i
  %.ptr201.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add196.i ; 17 uses
  store i8 115, ptr %.ptr201.i, align 1, !tbaa !7
  %exitcond253.1.not.i = icmp eq i64 %i.iu, 1
  br i1 %exitcond253.1.not.i, label %_ZN6google12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.ptr201.1.i = getelementptr inbounds nuw i8, ptr %.ptr201.i, i64 1
  store i8 116, ptr %.ptr201.1.i, align 1, !tbaa !7
  %exitcond253.2.not.i = icmp eq i64 %i.iu, 2
  br i1 %exitcond253.2.not.i, label %_ZN6google12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.ptr201.2.i = getelementptr inbounds nuw i8, ptr %.ptr201.i, i64 2
  store i8 97, ptr %.ptr201.2.i, align 1, !tbaa !7
  %exitcond253.3.not.i = icmp eq i64 %i.iu, 3
  br i1 %exitcond253.3.not.i, label %_ZN6google12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.ptr201.3.i = getelementptr inbounds nuw i8, ptr %.ptr201.i, i64 3
  store i8 99, ptr %.ptr201.3.i, align 1, !tbaa !7
  %exitcond253.4.not.i = icmp eq i64 %i.iu, 4
  br i1 %exitcond253.4.not.i, label %_ZN6google12_GLOBAL__N_114DumpSignalInfoEiP9siginfo_t.exit, label %bb.dv

end_hunk_0
begin_hunk_1_@_ZN6google27InstallFailureSignalHandlerEv:bb.a
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 55)
          to label %.critedge.3 unwind label %bb.n ; 0 uses

.critedge.3:                                      ; preds = %bb.i
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.critedge10.3

.critedge10.3:                                    ; preds = %.critedge.3, %.critedge10.2
  %i.w = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #11
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.j, label %.critedge10.4, !prof !24

bb.j:                                             ; preds = %.critedge10.3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !7
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !7
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.1, i64 noundef 55)
          to label %.critedge.4 unwind label %bb.n ; 0 uses

.critedge.4:                                      ; preds = %bb.k
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.critedge10.4

.critedge10.4:                                    ; preds = %.critedge.4, %.critedge10.3
  %i.aa = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %0, ptr noundef null) #11
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.l, label %.critedge10.5, !prof !24

bb.l:                                             ; preds = %.critedge10.4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !7
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !7
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.1, i64 noundef 55)
          to label %.critedge.5 unwind label %bb.n ; 0 uses

.critedge.5:                                      ; preds = %bb.m
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.critedge10.5

.critedge10.5:                                    ; preds = %.critedge.5, %.critedge10.4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret void

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  resume { ptr, i32 } %i.ae
}

declare void @_ZN6google10LogMessage9SendToLogEv(ptr noundef nonnull align 8 dereferenceable(96)) #5

declare void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef byval({ i64, i64 }) align 8) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6google20InstallFailureWriterEPFvPKcmE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  store ptr %0, ptr @_ZN6google12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #7

declare i32 @sleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google12_GLOBAL__N_118DumpStackFrameInfoEPKcPv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds i8, ptr %1, i64 -1
  %i.d = call noundef zeroext i1 @_ZN6google9SymbolizeEPvPcm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef 1024)
  %spec.select = select i1 %i.d, ptr %i.a, ptr @.str.8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.e = load i8, ptr %0, align 1, !tbaa !7       ; 2 uses
  %.not9.i = icmp eq i8 %i.e, 0
  br i1 %.not9.i, label %.thread, label %.lr.ph.i.preheader

.thread:                                          ; preds = %bb.a
  store i8 64, ptr %i.b, align 16, !tbaa !7
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  store i8 %i.v, ptr %i.f, align 1, !tbaa !7
  %i.g = or disjoint i64 %.010.i89, 2             ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7     ; 2 uses
  %.not.i.1 = icmp eq i8 %i.i, 0
  br i1 %.not.i.1, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.1, !llvm.loop !18

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  store i8 %i.i, ptr %i.j, align 2, !tbaa !7
  %i.k = or disjoint i64 %.010.i89, 3             ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7     ; 2 uses
  %.not.i.2 = icmp eq i8 %i.m, 0
  br i1 %.not.i.2, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.2, !llvm.loop !18

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = add nuw nsw i64 %.010.i89, 4             ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7     ; 2 uses
  %.not.i.3 = icmp eq i8 %i.q, 0
  br i1 %.not.i.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i.3, !llvm.loop !18

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %exitcond.not.3 = icmp eq i64 %i.o, 1024
  br i1 %exitcond.not.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %.lr.ph.i.preheader, !llvm.loop !18

.lr.ph.i.preheader:                               ; preds = %bb.a, %.lr.ph.i.3
  %.010.i89 = phi i64 [ %i.o, %.lr.ph.i.3 ], [ 0, %bb.a ] ; 6 uses
  %i.r = phi i8 [ %i.q, %.lr.ph.i.3 ], [ %i.e, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010.i89
  store i8 %i.r, ptr %i.s, align 4, !tbaa !7
  %i.t = or disjoint i64 %.010.i89, 1             ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !7     ; 2 uses
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit, label %.lr.ph.i, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit: ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i, %.lr.ph.i.preheader
  %.010.i89.lcssa = phi i64 [ %.010.i89, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i ], [ %i.g, %.lr.ph.i.1 ], [ %i.k, %.lr.ph.i.2 ]
  %.lcssa101 = phi i64 [ %i.t, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i ], [ %i.k, %.lr.ph.i.1 ], [ %i.o, %.lr.ph.i.2 ] ; 4 uses
  %exitcond60.not = icmp samesign ugt i64 %.010.i89.lcssa, 1022
  br i1 %exitcond60.not, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %bb.b

bb.b:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.lcssa101 ; 2 uses
  store i8 64, ptr %.ptr, align 1, !tbaa !7
  %exitcond60.1.not = icmp eq i64 %.lcssa101, 1023
  br i1 %exitcond60.1.not, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.0.lcssa.i8187 = phi i64 [ 0, %.thread ], [ %.lcssa101, %bb.b ]
  %.ptr8286 = phi ptr [ %i.b, %.thread ], [ %.ptr, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr8286, i64 1
  store i8 32, ptr %i.w, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9: ; preds = %.lr.ph.i.3, %bb.c, %bb.b, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit
  %.0.lcssa.i76 = phi i64 [ %.lcssa101, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit ], [ %.0.lcssa.i8187, %bb.c ], [ 1023, %bb.b ], [ 1024, %.lr.ph.i.3 ]
  %.0.lcssa.i7 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit ], [ 2, %bb.c ], [ 1, %bb.b ], [ 0, %.lr.ph.i.3 ]
  %.add = add nuw nsw i64 %.0.lcssa.i7, %.0.lcssa.i76 ; 5 uses
  %.ptr47.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add ; 6 uses
  %i.x = ptrtoint ptr %1 to i64
  %i.y = icmp samesign ult i64 %.add, 1024
  br i1 %i.y, label %bb.d, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i

bb.d:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9
  store i8 48, ptr %.ptr47.ptr, align 1, !tbaa !7
  %.not = icmp eq i64 %.add, 1023
  br i1 %.not, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.ptr47.ptr, i64 1
  store i8 120, ptr %i.z, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i: ; preds = %bb.e, %bb.d, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9
  %.0.lcssa.i.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit9 ], [ 2, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.add45 = add nuw nsw i64 %.0.lcssa.i.i, %.add  ; 5 uses
  %.ptr48.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add45 ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %.add45, i64 1024)
  %i.aa = sub i64 %smax, %.add45                  ; 4 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %.add45
  %exitcond62.not90 = icmp eq i64 %i.aa, 0
  br i1 %exitcond62.not90, label %split.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.ac = lshr i64 %.014.i.i92, 4
  %exitcond62.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond62.not, label %split.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i, %bb.f
  %.014.i.i92 = phi i64 [ %i.ac, %bb.f ], [ %i.x, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ] ; 3 uses
  %indvars.iv91 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ] ; 2 uses
  %.ptr49 = getelementptr i8, ptr %i.ab, i64 %indvars.iv91
  %i.ad = and i64 %.014.i.i92, 15                 ; 3 uses
  %i.ae = icmp samesign ult i64 %i.ad, 10
  %i.af = or disjoint i64 %i.ad, 48
  %i.ag = add nuw nsw i64 %i.ad, 87
  %i.ah = select i1 %i.ae, i64 %i.af, i64 %i.ag
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  store i8 %i.ai, ptr %.ptr49, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.aj = icmp ult i64 %.014.i.i92, 16
  br i1 %i.aj, label %split.i.i, label %bb.f

split.i.i:                                        ; preds = %bb.f, %.lr.ph, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i
  %.pre-phi.i.i = phi i64 [ %i.aa, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit.i ], [ %i.aa, %bb.f ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ak = and i64 %.pre-phi.i.i, 4294967294
  %.not72 = icmp eq i64 %i.ak, 0
  br i1 %.not72, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %split.i.i
  %i.al = getelementptr i8, ptr %.ptr48.ptr, i64 %.pre-phi.i.i
  %.012.i.i.i.i = getelementptr i8, ptr %i.al, i64 -1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.014.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.0913.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.ptr48.ptr, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.am = load i8, ptr %.0913.i.i.i.i, align 1, !tbaa !7
  %i.an = load i8, ptr %.014.i.i.i.i, align 1, !tbaa !7
  store i8 %i.an, ptr %.0913.i.i.i.i, align 1, !tbaa !7
  store i8 %i.am, ptr %.014.i.i.i.i, align 1, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i, i64 -1 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %.0.i.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i: ; preds = %.lr.ph.i.i.i.i, %split.i.i
  %.ptr48.add.a = add nuw nsw i64 %.pre-phi.i.i, %.add45 ; 2 uses
  %.ptr47.add = add nuw nsw i64 %.add, 18         ; 2 uses
  %i.aq = icmp samesign ult i64 %.ptr48.add.a, %.ptr47.add
  br i1 %i.aq, label %bb.g, label %_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit

bb.g:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  %i.ar = add i64 %.0.lcssa.i.i, %.pre-phi.i.i    ; 4 uses
  %gepdiff = sub i64 18, %i.ar                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.ptr47.ptr, i64 %gepdiff ; 2 uses
  %2 = icmp sgt i64 %i.ar, 1
  br i1 %2, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %.ptr47.ptr, i64 %i.ar, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.j, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %.ptr47.ptr, align 1, !tbaa !7
  store i8 %i.au, ptr %i.as, align 1, !tbaa !7
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.ptr47.ptr, i8 32, i64 %gepdiff, i1 false)
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit

_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit: ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  %.sroa.4.0.idx = phi i64 [ %.ptr47.add, %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit.i ], [ %.ptr48.add.a, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i ] ; 3 uses
  %i.av = icmp slt i64 %.sroa.4.0.idx, 1024
  br i1 %i.av, label %bb.k, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14

bb.k:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit
  %.ptr51 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.4.0.idx
  store i8 32, ptr %.ptr51, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14: ; preds = %bb.k, %_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit
  %.0.lcssa.i12 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter20AppendHexWithPaddingEmi.exit ], [ 1, %bb.k ]
  %i.aw = add i64 %.0.lcssa.i12, %.sroa.4.0.idx   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %spec.select, align 1, !tbaa !7 ; 2 uses
  %.not9.i15 = icmp eq i8 %i.ay, 0
  br i1 %.not9.i15, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14
  %i.az = call i64 @llvm.usub.sat.i64(i64 1024, i64 %i.aw) ; 3 uses
  %exitcond64.not95 = icmp ugt i64 %i.aw, 1023
  br i1 %exitcond64.not95, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20, label %.lr.ph97

.lr.ph.i16:                                       ; preds = %.lr.ph97
  %exitcond64.not = icmp eq i64 %i.bc, %i.az
  br i1 %exitcond64.not, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20, label %.lr.ph97, !llvm.loop !18

.lr.ph97:                                         ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16
  %.010.i1796 = phi i64 [ %i.bc, %.lr.ph.i16 ], [ 0, %.lr.ph.i16.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.be, %.lr.ph.i16 ], [ %i.ay, %.lr.ph.i16.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.010.i1796
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !7
  %i.bc = add nuw nsw i64 %.010.i1796, 1          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7   ; 2 uses
  %.not.i19 = icmp eq i8 %i.be, 0
  br i1 %.not.i19, label %._ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.loopexit_crit_edge, label %.lr.ph.i16, !llvm.loop !18

._ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.loopexit_crit_edge: ; preds = %.lr.ph97
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20: ; preds = %.lr.ph.i16, %.lr.ph.i16.preheader, %._ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.loopexit_crit_edge, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14
  %.0.lcssa.i18 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit14 ], [ %i.bc, %._ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.loopexit_crit_edge ], [ %i.az, %.lr.ph.i16.preheader ], [ %i.az, %.lr.ph.i16 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.0.lcssa.i18, %i.aw    ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, 1024
  br i1 %i.bg, label %bb.l, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25

bb.l:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.lcssa.i18
  store i8 10, ptr %i.bh, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25: ; preds = %bb.l, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20
  %.0.lcssa.i23 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20 ], [ 1, %bb.l ]
  %i.bi = load ptr, ptr @_ZN6google12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !16
  %i.bj = add nuw nsw i64 %i.bf, %.0.lcssa.i23
  call void %i.bi(ptr noundef nonnull %i.b, i64 noundef %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef i32 @_ZN6google13GetStackTraceEPPvii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6google19FlushLogFilesUnsafeEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google9SymbolizeEPvPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree uwtable
define internal void @_ZN6google12_GLOBAL__N_113WriteToStderrEPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #8 {
bb.a:
  %i.a = tail call i64 @write(i32 noundef 2, ptr noundef %0, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 long", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!12, !12, i64 0}
!17 = distinct !{null}
!18 = distinct !{!18, !14}
!19 = distinct !{null}
!20 = distinct !{!20, !14}
!21 = !{!22, !4, i64 136}
!22 = !{!"_ZTS9sigaction", !5, i64 0, !23, i64 8, !4, i64 136, !12, i64 144}
!23 = !{!"_ZTS10__sigset_t", !5, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
