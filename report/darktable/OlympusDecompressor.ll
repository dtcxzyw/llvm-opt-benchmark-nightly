Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/OlympusDecompressor?download=true
inline.NumInlined: 353
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed19OlympusDecompressor10decompressERKNS_10ByteStreamE:bb.a
  br label %bb.k

.loopexit.split-lp.i.i:                           ; preds = %bb.h, %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ao = phi ptr [ %i.r, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %i.ap = phi ptr [ %.val.val.i.i.i, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %i.aq = phi ptr [ %i.r, %.loopexit.i.i ], [ %i.ao, %.loopexit.split-lp.i.i ]
  %i.ar = phi ptr [ %.val.val.i.i.i, %.loopexit.i.i ], [ %i.ap, %.loopexit.split-lp.i.i ] ; 3 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.not.i.i.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i6, label %.body.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #22
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %2) #19
  br label %.body

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i
  %.sroa.015.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.416.0.copyload = load i32, ptr %.sroa.416.0..sroa_idx, align 8 ; 3 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !19    ; 6 uses
  %.val5 = load ptr, ptr %i.m, align 8            ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !124 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp uge i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext i32 %.sroa.416.0.copyload to i64
  %i.bb = sub nuw i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload ; 14 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.ba ; 8 uses
  %i.bd = icmp samesign ult i32 %i.bb, 4
  br i1 %i.bd, label %.invoke, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !90, !noalias !125
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !126, !noalias !125
  %i.bj = mul nsw i32 %i.bi, %i.bg                ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !127, !noalias !125
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !128, !noalias !125
  %i.bo = ashr i32 %i.bn, 1                       ; 3 uses
  %i.bp = icmp sge i32 %i.bo, %i.bj
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp sgt i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = and i32 %i.bj, 1
  %i.bs = icmp eq i32 %i.br, 0
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = lshr exact i32 %i.bj, 1
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !129, !noalias !130 ; 2 uses
  %i.bv = add nuw nsw i32 %i.bb, 8                ; 4 uses
  %i.bw = zext nneg i32 %i.bj to i64              ; 4 uses
  %.not235.i.i = icmp eq i32 %i.bj, 2
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = zext i32 %i.bo to i64
  %i.bz = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.ca = sext i32 %i.bo to i64
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %indvars.iv.next.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %.sroa.4011.016.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.4011.6.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 6 uses
  %.sroa.02.015.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.02.2.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 2 uses
  %.sroa.19.014.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.19.1.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.i, 2  ; 4 uses
  %i.cc = add nsw i64 %indvars.iv.i, -2           ; 2 uses
  %i.cd = icmp samesign ult i64 %i.cc, %i.bz      ; 4 uses
  %i.ce = mul nuw nsw i64 %i.cc, %i.ca
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.i, %i.bz
  %i.ch = mul nuw nsw i64 %indvars.iv.i, %i.by
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ch ; 7 uses
  %i.cj = icmp samesign ult i32 %.sroa.19.014.i, 65
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp sgt i32 %.sroa.4011.016.i, -1
  tail call void @llvm.assume(i1 %i.ck)
  %.not.i30.i.i = icmp samesign ult i32 %.sroa.19.014.i, 32
  br i1 %.not.i30.i.i, label %bb.n, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.cl = add nuw nsw i32 %.sroa.4011.016.i, 4    ; 2 uses
  %.not.i.i.i.i7 = icmp samesign ugt i32 %i.cl, %i.bb
  br i1 %.not.i.i.i.i7, label %bb.p, label %bb.o, !prof !105

bb.o:                                             ; preds = %bb.n
  %i.cm = zext nneg i32 %.sroa.4011.016.i to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cm
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.co = icmp samesign ugt i32 %.sroa.4011.016.i, %i.bv
  br i1 %i.co, label %.invoke, label %bb.q, !prof !105

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %.sroa.4011.016.i) ; 3 uses
  %i.cp = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.cp)
  %i.cq = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.cr = icmp samesign ult i32 %i.cq, 5
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cs
  %i.cu = zext nneg i32 %i.cq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ct, i64 %i.cu, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.q, %bb.o
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.q ], [ %i.cn, %bb.o ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i32 %.sroa.19.014.i, 32
  %i.cy = sub nuw nsw i32 32, %.sroa.19.014.i
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cw, %i.cz
  %i.db = or i64 %i.da, %.sroa.02.015.i
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %bb.m
  %.sroa.4011.1.i = phi i32 [ %i.cl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.4011.016.i, %bb.m ] ; 5 uses
  %i.dc = phi i64 [ %i.db, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.02.015.i, %bb.m ] ; 3 uses
  %i.dd = phi i32 [ %i.cx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.19.014.i, %bb.m ] ; 3 uses
  %i.de = lshr i64 %i.dc, 49                      ; 2 uses
  %i.df = trunc nuw nsw i64 %i.de to i32          ; 2 uses
  %i.dg = lshr i32 %i.df, 14
  %i.dh = sub nsw i32 0, %i.dg
  %i.di = and i64 %i.de, 4095
  %i.dj = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !103 ; 3 uses
  %.not.i13.i.i = icmp eq i8 %i.dk, 12
  br i1 %.not.i13.i.i, label %bb.s, label %bb.r, !prof !105

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.dl = sext i8 %i.dk to i32                    ; 2 uses
  %i.dm = add nsw i32 %i.dl, 4                    ; 3 uses
  %i.dn = icmp slt i8 %i.dk, 29
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = icmp samesign ule i32 %i.dm, %i.dd
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = sub nuw nsw i32 %i.dd, %i.dm
  %i.dq = zext nneg i32 %i.dm to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

bb.s:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.dr = lshr i64 %i.dc, 38
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 2047
  %i.du = add nsw i32 %i.dd, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i: ; preds = %bb.s, %bb.r
  %.sink.i.i = phi i32 [ %i.du, %bb.s ], [ %i.dp, %bb.r ] ; 4 uses
  %.pn.i.i = phi i64 [ 27, %bb.s ], [ %i.dq, %bb.r ]
  %.0.i14.i.i = phi i32 [ %i.dt, %bb.s ], [ %i.dl, %bb.r ]
  %storemerge.i.i = shl i64 %i.dc, %.pn.i.i       ; 2 uses
  %i.dv = shl nsw i32 %.0.i14.i.i, 4
  %i.dw = icmp samesign ugt i32 %.sink.i.i, 3
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = lshr i64 %storemerge.i.i, 60
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nsw i32 %.sink.i.i, -4              ; 2 uses
  %i.ea = shl i64 %storemerge.i.i, 4              ; 2 uses
  %i.eb = or disjoint i32 %i.dv, %i.dy            ; 3 uses
  %i.ec = xor i32 %i.eb, %i.dh                    ; 2 uses
  %i.ed = mul nsw i32 %i.ec, 3
  %i.ee = icmp slt i32 %i.eb, 17
  %spec.select.i.i = zext i1 %i.ee to i32
  %i.ef = lshr i32 %i.df, 12
  %i.eg = and i32 %i.ef, 3
  %i.eh = shl nsw i32 %i.ec, 2
  %i.ei = or disjoint i32 %i.eh, %i.eg
  br i1 %i.cb, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  tail call void @llvm.assume(i1 %i.cd)
  %i.ej = load i16, ptr %i.cf, align 2, !tbaa !132
  %4 = zext i16 %i.ej to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i: ; preds = %bb.t, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  %.1.i.i.i = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i ], [ %4, %bb.t ]
  %5 = add nsw i32 %i.ei, %.1.i.i.i
  %6 = trunc i32 %5 to i16
  tail call void @llvm.assume(i1 %i.cg)
  store i16 %6, ptr %i.ci, align 2, !tbaa !132
  %.not.i30.1.i.i = icmp samesign ult i32 %.sink.i.i, 36
  br i1 %.not.i30.1.i.i, label %bb.u, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

bb.u:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ek = add nuw nsw i32 %.sroa.4011.1.i, 4      ; 2 uses
  %.not.i.i.1.i.i = icmp samesign ugt i32 %i.ek, %i.bb
  br i1 %.not.i.i.1.i.i, label %bb.w, label %bb.v, !prof !105

bb.v:                                             ; preds = %bb.u
  %i.el = zext nneg i32 %.sroa.4011.1.i to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.el
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

bb.w:                                             ; preds = %bb.u
  %i.en = icmp samesign ugt i32 %.sroa.4011.1.i, %i.bv
  br i1 %i.en, label %.invoke, label %bb.x, !prof !105

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %.sroa.4011.1.i) ; 3 uses
  %i.eo = add nuw nsw i32 %.sroa.speculated27.i.i.i.1.i.i, 4
  %.sroa.speculated.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.eo)
  %i.ep = sub nsw i32 %.sroa.speculated.i.i.i.1.i.i, %.sroa.speculated27.i.i.i.1.i.i ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, 5
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i32 %.sroa.speculated27.i.i.i.1.i.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.er
  %i.et = zext nneg i32 %i.ep to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i: ; preds = %bb.x, %bb.v
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.x ], [ %i.em, %bb.v ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i)
  %i.ev = zext i32 %i.eu to i64
  %i.ew = or disjoint i32 %i.dz, 32
  %i.ex = sub nuw nsw i32 36, %.sink.i.i
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ev, %i.ey
  %i.fa = or i64 %i.ez, %i.ea
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  %.sroa.4011.2.i = phi i32 [ %i.ek, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %.sroa.4011.1.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fb = phi i64 [ %i.fa, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.ea, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fc = phi i32 [ %i.ew, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.dz, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fd = lshr i64 %i.fb, 49                      ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32          ; 2 uses
  %i.ff = lshr i32 %i.fe, 14
  %i.fg = sub nsw i32 0, %i.ff
  %i.fh = and i64 %i.fd, 4095
  %i.fi = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !103 ; 3 uses
  %.not.i13.1.i.i = icmp eq i8 %i.fj, 12
  br i1 %.not.i13.1.i.i, label %bb.z, label %bb.y, !prof !105

bb.y:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.fk = sext i8 %i.fj to i32                    ; 2 uses
  %i.fl = add nsw i32 %i.fk, 4                    ; 3 uses
  %i.fm = icmp slt i8 %i.fj, 29
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp samesign ule i32 %i.fl, %i.fc
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = sub nuw nsw i32 %i.fc, %i.fl
  %i.fp = zext nneg i32 %i.fl to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

bb.z:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.fq = lshr i64 %i.fb, 38
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 2047
  %i.ft = add nsw i32 %i.fc, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i: ; preds = %bb.z, %bb.y
  %.sink256.i.i = phi i32 [ %i.ft, %bb.z ], [ %i.fo, %bb.y ] ; 2 uses
  %.pn278.i.i = phi i64 [ 27, %bb.z ], [ %i.fp, %bb.y ]
  %.0.i14.1.i.i = phi i32 [ %i.fs, %bb.z ], [ %i.fk, %bb.y ]
  %storemerge.1.i.i = shl i64 %i.fb, %.pn278.i.i  ; 2 uses
  %i.fu = shl nsw i32 %.0.i14.1.i.i, 4
  %i.fv = icmp samesign ugt i32 %.sink256.i.i, 3
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = lshr i64 %storemerge.1.i.i, 60
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = add nsw i32 %.sink256.i.i, -4           ; 2 uses
  %i.fz = shl i64 %storemerge.1.i.i, 4            ; 2 uses
  %i.ga = or disjoint i32 %i.fu, %i.fx            ; 3 uses
  %i.gb = xor i32 %i.ga, %i.fg                    ; 2 uses
  %i.gc = mul nsw i32 %i.gb, 3
  %i.gd = icmp slt i32 %i.ga, 17
  %spec.select.1.i.i = zext i1 %i.gd to i32
  %i.ge = lshr i32 %i.fe, 12
  %i.gf = and i32 %i.ge, 3
  %i.gg = shl nsw i32 %i.gb, 2
  %i.gh = or disjoint i32 %i.gg, %i.gf
  br i1 %i.cb, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i
  tail call void @llvm.assume(i1 %i.cd)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !132
  %7 = zext i16 %i.gj to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i: ; preds = %bb.aa, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i
  %.1.i.1.i.i = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i ], [ %7, %bb.aa ]
  %8 = add nsw i32 %i.gh, %.1.i.1.i.i
  %9 = trunc i32 %8 to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i16 %9, ptr %i.gk, align 2, !tbaa !132
  br i1 %.not235.i.i, label %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i
  %.sroa.02.1.i = phi i64 [ %i.mv, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.fz, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.4011.3.i = phi i32 [ %.sroa.4011.5.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %.sroa.4011.2.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %i.gl = phi i32 [ %i.lj, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %.sroa.4011.2.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 5 uses
  %i.gm = phi i32 [ %i.mt, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.fy, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 4 uses
  %.sroa.21.0.i.i = phi i32 [ %i.mw, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.ga, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.26.0.in.i.i = phi i32 [ %i.na, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.gc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.10.0.in.i.i = phi i32 [ %i.iz, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.ed, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.30.0.i.i = phi i32 [ %spec.select226.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %spec.select.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ %i.iv, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.eb, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.14.0.i.i = phi i32 [ %spec.select226.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %spec.select.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ 1, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.10.0.i.i = ashr i32 %.sroa.10.0.in.i.i, 5 ; 2 uses
  %.sroa.26.0.i.i = ashr i32 %.sroa.26.0.in.i.i, 5 ; 2 uses
  %i.gn = shl nuw nsw i64 %indvars.iv.i.i, 1      ; 8 uses
  %.not.i39.i.i = icmp samesign ult i32 %i.gm, 32
  br i1 %.not.i39.i.i, label %bb.ab, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i

bb.ab:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.go = add nuw nsw i32 %i.gl, 4                ; 3 uses
  %.not.i.i40.i.i = icmp samesign ugt i32 %i.go, %i.bb
  br i1 %.not.i.i40.i.i, label %bb.ad, label %bb.ac, !prof !105

bb.ac:                                            ; preds = %bb.ab
  %i.gp = zext nneg i32 %i.gl to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.gp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gr = icmp samesign ugt i32 %i.gl, %i.bv
  br i1 %i.gr, label %.invoke, label %bb.ae, !prof !105

.invoke:                                          ; preds = %bb.p, %bb.w, %bb.ad, %bb.ap, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit
  %i.gs = phi ptr [ @.str.8, %bb.ad ], [ @.str.7, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit ], [ @.str.8, %bb.ap ], [ @.str.8, %bb.w ], [ @.str.8, %bb.p ]
  %i.gt = phi ptr [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ad ], [ @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ap ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.w ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.p ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gt) #14
          to label %.cont unwind label %bb.bl

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %.sroa.0.i.i38.i.i, align 4
  %.sroa.speculated27.i.i.i47.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.gl) ; 3 uses
  %i.gu = add nuw nsw i32 %.sroa.speculated27.i.i.i47.i.i, 4
  %.sroa.speculated.i.i.i48.i.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.gu)
  %i.gv = sub nsw i32 %.sroa.speculated.i.i.i48.i.i, %.sroa.speculated27.i.i.i47.i.i ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gv, 5
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = zext nneg i32 %.sroa.speculated27.i.i.i47.i.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.gx
  %i.gz = zext nneg i32 %i.gv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i38.i.i, ptr align 1 %i.gy, i64 %i.gz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i: ; preds = %bb.ae, %bb.ac
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.i.i = phi ptr [ %.sroa.0.i.i38.i.i, %bb.ae ], [ %i.gq, %bb.ac ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.ha = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.i.i)
  %i.hb = zext i32 %i.ha to i64
  %i.hc = or disjoint i32 %i.gm, 32
  %i.hd = sub nuw nsw i32 32, %i.gm
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw i64 %i.hb, %i.he
  %i.hg = or i64 %i.hf, %.sroa.02.1.i
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i, %.preheader.i.i
  %.sroa.4011.4.i = phi i32 [ %i.go, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %.sroa.4011.3.i, %.preheader.i.i ]
  %i.hh = phi i32 [ %i.go, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %i.gl, %.preheader.i.i ] ; 5 uses
  %i.hi = phi i64 [ %i.hg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %.sroa.02.1.i, %.preheader.i.i ] ; 3 uses
  %i.hj = phi i32 [ %i.hc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %i.gm, %.preheader.i.i ] ; 3 uses
  %.inv.i15.i.i = icmp sgt i32 %.sroa.14.0.i.i, 2 ; 2 uses
  %i.hk = and i32 %.sroa.5.0.i.i, 65535
  %i.hl = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hk, i1 false)
  %.neg232.i.i = select i1 %.inv.i15.i.i, i32 32, i32 30
  %i.hm = sub nsw i32 %.neg232.i.i, %i.hl         ; 3 uses
  %i.hn = select i1 %.inv.i15.i.i, i32 2, i32 4
  %.sroa.speculated115.i.i = tail call i32 @llvm.smax.i32(i32 %i.hm, i32 %i.hn) ; 8 uses
  %i.ho = lshr i64 %i.hi, 49                      ; 2 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32          ; 2 uses
  %i.hq = lshr i32 %i.hp, 14
  %i.hr = sub nsw i32 0, %i.hq
  %i.hs = and i64 %i.ho, 4095
  %i.ht = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !103 ; 3 uses
  %.not.i16.i.i = icmp eq i8 %i.hu, 12
  br i1 %.not.i16.i.i, label %bb.ag, label %bb.af, !prof !105

bb.af:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i
  %i.hv = sext i8 %i.hu to i32                    ; 2 uses
  %i.hw = add nsw i32 %i.hv, 4                    ; 3 uses
  %i.hx = icmp slt i8 %i.hu, 29
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ule i32 %i.hw, %i.hj
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = sub nuw nsw i32 %i.hj, %i.hw
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i

bb.ag:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i
  %i.ia = shl i64 %i.hi, 15                       ; 2 uses
  %i.ib = icmp slt i32 %i.hm, 16
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp ne i32 %i.hm, 15
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = add nuw nsw i32 %.sroa.speculated115.i.i, 49
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = lshr i64 %i.ia, %i.ie
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = sub nuw nsw i32 16, %.sroa.speculated115.i.i
  %i.ii = add nuw nsw i32 %.sroa.speculated115.i.i, -31
  %i.ij = add i32 %i.ii, %i.hj
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i: ; preds = %bb.ag, %bb.af
  %.sink281.i.i = phi i32 [ %i.ih, %bb.ag ], [ %i.hw, %bb.af ]
  %.sink279.i.i = phi i64 [ %i.ia, %bb.ag ], [ %i.hi, %bb.af ]
  %.sink257.i.i = phi i32 [ %i.ij, %bb.ag ], [ %i.hz, %bb.af ] ; 2 uses
  %.0.i17.i.i = phi i32 [ %i.ig, %bb.ag ], [ %i.hv, %bb.af ]
  %i.ik = zext nneg i32 %.sink281.i.i to i64
  %i.il = shl i64 %.sink279.i.i, %i.ik            ; 2 uses
  %i.im = shl nsw i32 %.0.i17.i.i, %.sroa.speculated115.i.i
  %i.in = icmp samesign ule i32 %.sroa.speculated115.i.i, %.sink257.i.i
  tail call void @llvm.assume(i1 %i.in)
  %i.io = sub nuw nsw i32 64, %.sroa.speculated115.i.i
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = lshr i64 %i.il, %i.ip
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = sub nuw nsw i32 %.sink257.i.i, %.sroa.speculated115.i.i ; 4 uses
  %i.it = zext nneg i32 %.sroa.speculated115.i.i to i64
  %i.iu = shl i64 %i.il, %i.it                    ; 2 uses
  %i.iv = or i32 %i.im, %i.ir                     ; 3 uses
  %i.iw = xor i32 %i.iv, %i.hr
  %i.ix = add nsw i32 %i.iw, %.sroa.10.0.i.i      ; 2 uses
  %i.iy = mul nsw i32 %i.ix, 3
  %i.iz = add nsw i32 %i.iy, %.sroa.10.0.i.i
  %i.ja = icmp sgt i32 %i.iv, 16
  %i.jb = add nsw i32 %.sroa.14.0.i.i, 1
  %spec.select226.i.i = select i1 %i.ja, i32 0, i32 %i.jb
  %i.jc = lshr i32 %i.hp, 12
  %i.jd = and i32 %i.jc, 3
  %i.je = shl nsw i32 %i.ix, 2
  %i.jf = or disjoint i32 %i.je, %i.jd
  br i1 %i.cb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i
  %i.jg = getelementptr [2 x i8], ptr %i.ci, i64 %i.gn
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !132
  %i.jj = zext i16 %i.ji to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.ai:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i
  %i.jk = add nsw i64 %i.gn, -2                   ; 2 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !132 ; 2 uses
  %i.jn = zext i16 %i.jm to i32                   ; 4 uses
  %i.jo = icmp samesign ult i64 %i.gn, %i.bw
  tail call void @llvm.assume(i1 %i.jo)
  tail call void @llvm.assume(i1 %i.cd)
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.gn
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !132 ; 2 uses
  %i.jr = zext i16 %i.jq to i32                   ; 3 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.jk
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !132 ; 3 uses
  %i.ju = zext i16 %i.jt to i32                   ; 2 uses
  %i.jv = sub nsw i32 %i.jn, %i.ju                ; 3 uses
  %i.jw = sub nsw i32 %i.jr, %i.ju                ; 4 uses
  %i.jx = xor i32 %i.jv, %i.jw
  %i.jy = icmp slt i32 %i.jx, 0
  %i.jz = icmp ne i16 %i.jm, %i.jt
  %or.cond3.i20.i.i = and i1 %i.jz, %i.jy
  %i.ka = icmp ne i16 %i.jq, %i.jt
  %or.cond5.i21.i.i = and i1 %i.ka, %or.cond3.i20.i.i
  br i1 %or.cond5.i21.i.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.kb = add nsw i32 %i.jv, -33
  %i.kc = icmp ult i32 %i.kb, -65
  %i.kd = add nsw i32 %i.jw, -33
  %i.ke = icmp ult i32 %i.kd, -65
  %or.cond27.i23.i.i = select i1 %i.kc, i1 true, i1 %i.ke
  br i1 %or.cond27.i23.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kf = add nsw i32 %i.jw, %i.jn
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.al:                                            ; preds = %bb.aj
  %i.kg = add nuw nsw i32 %i.jr, %i.jn
  %i.kh = lshr i32 %i.kg, 1
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.am:                                            ; preds = %bb.ai
  %i.ki = tail call i32 @llvm.abs.i32(i32 %i.jv, i1 true)
  %i.kj = tail call i32 @llvm.abs.i32(i32 %i.jw, i1 true)
end_hunk_0
