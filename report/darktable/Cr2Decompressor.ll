Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2Decompressor?download=true
inline.NumInlined: 634
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi2EEEjv:bb.a
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.bt) ; 5 uses
  %i.bx = icmp samesign ule i32 %i.bp, %i.bt      ; 4 uses
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.bm, %i.by
  %i.ca = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.cb = or i1 %i.bx, %i.ca
  %i.cc = and i1 %i.cb, %i.bz
  br i1 %i.cc, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cs, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.bx, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %i.cd = phi i1 [ %i.cu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %i.bx, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %i.ce = phi i32 [ %i.cs, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i140.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i139.i = phi i32 [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.0.0.i138.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i137.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.cf = add nuw nsw i32 %.sroa.14.0.i139.i, 1   ; 3 uses
  %i.cg = icmp eq i32 %i.cf, %i.bm
  %.0.in.v.i.i.i.i.i.i = select i1 %i.cg, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !19, !noalias !259 ; 2 uses
  %i.ch = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i138.i
  %i.ci = add nuw nsw i32 %.sroa.1951.sroa.12.0.i137.i, %.sroa.speculated.i.i.i.i140.i ; 2 uses
  %i.cj = icmp eq i32 %i.ch, %i.bu
  %i.ck = icmp eq i32 %i.ci, %i.bt                ; 3 uses
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %spec.select.i.i = select i1 %i.cd, i32 0, i32 %i.ce ; 2 uses
  %spec.select199.i.i = select i1 %i.cd, i32 %i.cf, i32 %.sroa.14.0.i139.i ; 4 uses
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.ck, i32 0, i32 %i.ci ; 3 uses
  %i.cm = select i1 %i.ck, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cm, %.sroa.1951.sroa.0.0.i138.i ; 2 uses
  %i.cn = icmp slt i32 %spec.select199.i.i, %i.bm
  tail call void @llvm.assume(i1 %i.cn), !noalias !260
  %i.co = sub nsw i32 %i.bt, %.sroa.1951.sroa.12.1.i.i ; 2 uses
  %i.cp = icmp sgt i32 %i.co, -1
  tail call void @llvm.assume(i1 %i.cp), !noalias !260
  %i.cq = sub nsw i32 %i.bp, %spec.select.i.i     ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  tail call void @llvm.assume(i1 %i.cr), !noalias !260
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.co) ; 3 uses
  %i.cs = add nuw nsw i32 %.sroa.speculated.i.i.i.i.i, %spec.select.i.i ; 5 uses
  %i.ct = icmp sle i32 %i.cs, %i.bp
  tail call void @llvm.assume(i1 %i.ct), !noalias !260
  %i.cu = icmp eq i32 %i.cs, %i.bp                ; 4 uses
  %i.cv = zext i1 %i.cu to i32
  %.sroa.13176.1.i.i = add nuw nsw i32 %spec.select199.i.i, %i.cv
  %i.cw = icmp eq i32 %.sroa.13176.1.i.i, %i.bm
  %i.cx = icmp eq i32 %i.cs, 0
  %i.cy = or i1 %i.cu, %i.cx
  %i.cz = and i1 %i.cy, %i.cw
  br i1 %i.cz, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !0

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i132.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i138.i, %.lr.ph.i ]
  %.sroa.14.0.i130.i = phi i32 [ %.sroa.14.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.14.0.i139.i, %.lr.ph.i ]
  %i.da = phi i32 [ %.lcssa126.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ce, %.lr.ph.i ]
  %i.db = phi i1 [ %.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cd, %.lr.ph.i ] ; 2 uses
  %.pre-phi203.i.i = phi i32 [ %.pre202.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cf, %.lr.ph.i ] ; 2 uses
  %i.dc = icmp eq i32 %.pre-phi.i.i, %i.bm
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.dc, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !19, !noalias !259
  %spec.select200.i.i = select i1 %i.db, i32 0, i32 %i.da ; 4 uses
  %spec.select201.i.i = select i1 %i.db, i32 %.pre-phi.i.i, i32 %.sroa.14.0.i130.i ; 4 uses
  %i.dd = icmp eq i32 %.pre-phi203.i.i, %i.bt     ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.dd, i32 0, i32 %.pre-phi203.i.i
  %i.de = select i1 %i.dd, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.de, %.sroa.1951.sroa.0.0.i132.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext nneg i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw nsw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.bq, ptr %7, align 8, !tbaa !24
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.bp, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bl, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !19
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7109.0..sroa_idx, align 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bq, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 %i.bp, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !19
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.bl, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !22
  %.sroa.12116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store i32 %spec.select201.i.i, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13118.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store i32 %spec.select200.i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.df = or i32 %spec.select201.i.i, %spec.select200.i.i
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %._crit_edge370.thread, label %.lr.ph369

._crit_edge370.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.c

.lr.ph369:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -6
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.di = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.dl = zext nneg i32 %i.h to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 2
  br label %bb.d

._crit_edge370:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dn = icmp slt i32 %.sroa.63162.1.lcssa, 0
  %spec.select = select i1 %i.dn, i32 %.sroa.51152.1.lcssa, i32 %.sroa.63162.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge370, %._crit_edge370.thread
  %i.do = phi i32 [ %spec.select, %._crit_edge370 ], [ 0, %._crit_edge370.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.do

bb.d:                                             ; preds = %.lr.ph369, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0368 = phi i32 [ 0, %.lr.ph369 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0172.0367 = phi ptr [ %i.c, %.lr.ph369 ], [ %.sroa.0172.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63162.0366 = phi i32 [ -1, %.lr.ph369 ], [ %.sroa.63162.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51152.0365 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.51152.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0125.0364 = phi i64 [ 0, %.lr.ph369 ], [ %.sroa.0125.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0232362 = phi i32 [ 0, %.lr.ph369 ], [ %.1233.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %.sroa.0.0.copyload.i53 = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i54, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.087.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i53, 32
  %.sroa.087.4.extract.trunc = trunc nuw i64 %.sroa.087.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.dp = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.087.4.extract.trunc
  %.not337 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not337, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.d
  %.sroa.087.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i53 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.dq = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.087.0.extract.trunc ; 2 uses
  %.not49321 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49321, label %._crit_edge348, label %.lr.ph347.split

.lr.ph347.split:                                  ; preds = %.lr.ph347
  %i.dr = load i32, ptr %i.dh, align 4, !tbaa !120 ; 3 uses
  br label %.lr.ph

._crit_edge348:                                   ; preds = %._crit_edge, %.lr.ph347, %bb.d
  %.1233.lcssa = phi i32 [ %.0232362, %bb.d ], [ %.0232362, %.lr.ph347 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0363, %bb.d ], [ %.sroa.18.0363, %.lr.ph347 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0125.1.lcssa = phi i64 [ %.sroa.0125.0364, %bb.d ], [ %.sroa.0125.0364, %.lr.ph347 ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.51152.1.lcssa = phi i32 [ %.sroa.51152.0365, %bb.d ], [ %.sroa.51152.0365, %.lr.ph347 ], [ %.sroa.51152.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63162.1.lcssa = phi i32 [ %.sroa.63162.0366, %bb.d ], [ %.sroa.63162.0366, %.lr.ph347 ], [ %i.fr, %._crit_edge ] ; 3 uses
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0367, %bb.d ], [ %.sroa.0172.0367, %.lr.ph347 ], [ %.sroa.0172.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0368, %bb.d ], [ %.0368, %.lr.ph347 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ds, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre395 = load i32, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre396 = load ptr, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre397 = load i32, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre398 = load i32, ptr %.sroa.8110.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge348
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre396, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dv = phi i32 [ %.pre398, %.lr.ph.i.i57 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dw = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.el, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dx = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %.02.i.i = phi i64 [ %i.dt, %.lr.ph.i.i57 ], [ %i.dy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.dy = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dw
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i32 %i.dx, 1                ; 3 uses
  %i.eb = icmp eq i32 %i.ea, %i.dw
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.eb, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre396, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ec = load i64, ptr %.sroa.7109.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ec, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !18
  %i.ee = sub nsw i32 %i.ed, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %i.eg = sub nsw i32 %.pre395, %i.dv             ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ee) ; 2 uses
  %i.ei = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dv ; 5 uses
  store i32 %i.ei, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  %i.ej = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ej to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ec, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7109.0..sroa_idx, align 8
  %i.ek = icmp sgt i32 %i.ei, -1
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i32, ptr %.pre396, align 4, !tbaa !16 ; 2 uses
  %i.em = icmp slt i32 %i.dx, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp sle i32 %i.ei, %.pre395
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i32 %i.ei, %.pre395
  %i.ep = trunc i64 %i.ec to i32
  br i1 %i.eo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ea, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = phi i32 [ 0, %bb.f ], [ %i.ei, %bb.e ]  ; 2 uses
  %i.er = phi i32 [ %i.ea, %bb.f ], [ %i.dx, %bb.e ] ; 2 uses
  %i.es = load i32, ptr %i.du, align 4, !tbaa !18
  %i.et = icmp eq i32 %i.ej, %i.es
  br i1 %i.et, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dk, align 4, !tbaa !172
  %i.eu = add nsw i32 %.0.i.i.i.i.i.i.i, %i.ep
  store i32 %i.eu, ptr %.sroa.7109.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge348
  %i.ev = phi i32 [ %.pre398, %._crit_edge348 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ew = phi i32 [ %.pre397, %._crit_edge348 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ex = load ptr, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bq
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !168
  %i.fa = icmp eq i32 %i.ez, %i.bp
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.fc = icmp eq ptr %i.fb, %i.bl
  call void @llvm.assume(i1 %i.fc)
  %i.fd = load i32, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !170
  %i.fe = icmp eq i32 %i.fd, %spec.select201.i.i
  %i.ff = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fg = icmp eq i32 %i.ff, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq ptr %.pre, %i.bq
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i32 %.pre395, %i.bp
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq ptr %.pre396, %i.bl
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i32 %i.ew, %spec.select201.i.i
  %i.fl = icmp eq i32 %i.ev, %spec.select200.i.i
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %._crit_edge370, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph347.split, %._crit_edge
  %.1345 = phi i32 [ %.0368, %.lr.ph347.split ], [ %.3, %._crit_edge ]
  %.045344 = phi i32 [ %.sroa.087.4.extract.trunc, %.lr.ph347.split ], [ %i.fs, %._crit_edge ] ; 3 uses
  %.sroa.0172.1343 = phi ptr [ %.sroa.0172.0367, %.lr.ph347.split ], [ %.sroa.0172.3, %._crit_edge ]
  %.sroa.63162.1342 = phi i32 [ %.sroa.63162.0366, %.lr.ph347.split ], [ %i.fr, %._crit_edge ]
  %.sroa.51152.1341 = phi i32 [ %.sroa.51152.0365, %.lr.ph347.split ], [ %.sroa.51152.3.lcssa, %._crit_edge ]
  %.sroa.0125.1340 = phi i64 [ %.sroa.0125.0364, %.lr.ph347.split ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.18.1339 = phi i32 [ %.sroa.18.0363, %.lr.ph347.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1233338 = phi i32 [ %.0232362, %.lr.ph347.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fn = icmp samesign ult i32 %.045344, %i.j    ; 2 uses
  %i.fo = mul nuw nsw i32 %.045344, %i.m
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3235, %bb.j ], [ %i.gi, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2323, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0125.3.lcssa = phi i64 [ %.sroa.0125.2324, %bb.j ], [ %.sroa.0125.6, %bb.k ] ; 3 uses
  %.sroa.51152.3.lcssa = phi i32 [ %.sroa.51152.2325, %bb.j ], [ %.sroa.51152.5, %bb.k ] ; 3 uses
  %.sroa.63162.3.lcssa = phi i32 [ %.sroa.63162.2326, %bb.j ], [ %.sroa.63162.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046328, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fr = freeze i32 %.sroa.63162.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dq
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !249

._crit_edge:                                      ; preds = %.loopexit
  %i.fs = add nsw i32 %.045344, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fs, %i.dp
  br i1 %.not, label %._crit_edge348, label %.lr.ph, !llvm.loop !250

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2329 = phi i32 [ %.1345, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046328 = phi i32 [ %.sroa.087.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0172.2327 = phi ptr [ %.sroa.0172.1343, %.lr.ph ], [ %.sroa.0172.3, %.loopexit ] ; 3 uses
  %.sroa.63162.2326 = phi i32 [ %.sroa.63162.1342, %.lr.ph ], [ %i.fr, %.loopexit ] ; 2 uses
  %.sroa.51152.2325 = phi i32 [ %.sroa.51152.1341, %.lr.ph ], [ %.sroa.51152.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0125.2324 = phi i64 [ %.sroa.0125.1340, %.lr.ph ], [ %.sroa.0125.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2323 = phi i32 [ %.sroa.18.1339, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2234322 = phi i32 [ %.1233338, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.ft = icmp sge i32 %i.dr, %.2234322
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i32 %i.dr, %.2234322
  br i1 %i.fu, label %.preheader237.preheader, label %bb.j

.preheader237.preheader:                          ; preds = %bb.i
  %i.fv = load i16, ptr %.sroa.0172.2327, align 2, !tbaa !157
  store i16 %i.fv, ptr %6, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0172.2327, i64 8
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !157
  store <2 x i16> %i.fx, ptr %i.dm, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fn)
  %i.fy = icmp samesign ule i32 %.046328, %i.h
  call void @llvm.assume(i1 %i.fy)
  %i.fz = mul nuw nsw i32 %.046328, 6             ; 2 uses
  %i.ga = icmp ule i32 %i.fz, %invariant.op
  call void @llvm.assume(i1 %i.ga)
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.gb
  %i.gd = add nsw i32 %.2329, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader237.preheader, %bb.i
  %.3235 = phi i32 [ 0, %.preheader237.preheader ], [ %.2234322, %bb.i ] ; 3 uses
  %.sroa.0172.3 = phi ptr [ %i.gc, %.preheader237.preheader ], [ %.sroa.0172.2327, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.gd, %.preheader237.preheader ], [ %.2329, %bb.i ] ; 3 uses
  %i.ge = sub nsw i32 %i.dr, %.3235               ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nsw i32 %i.ge, %.046328
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.dq) ; 4 uses
  %.not50309 = icmp eq i32 %.046328, %.sroa.speculated
  br i1 %.not50309, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gh = add i32 %.3235, %.sroa.speculated
  %i.gi = sub i32 %i.gh, %.046328
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147315 = phi i32 [ %i.gl, %bb.k ], [ %.046328, %.preheader.preheader ] ; 2 uses
  %.sroa.63162.3314 = phi i32 [ %.sroa.63162.5, %bb.k ], [ %.sroa.63162.2326, %.preheader.preheader ]
  %.sroa.51152.3313 = phi i32 [ %.sroa.51152.5, %bb.k ], [ %.sroa.51152.2325, %.preheader.preheader ]
  %.sroa.0125.3312 = phi i64 [ %.sroa.0125.6, %bb.k ], [ %.sroa.0125.2324, %.preheader.preheader ]
  %.sroa.18.3311 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2323, %.preheader.preheader ]
  %i.gj = mul nsw i32 %.147315, 6
  %i.gk = zext i32 %i.gj to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gl = add nsw i32 %.147315, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gl, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !251

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.63162.4307 = phi i32 [ %.sroa.63162.3314, %.preheader ], [ %.sroa.63162.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51152.4304 = phi i32 [ %.sroa.51152.3313, %.preheader ], [ %.sroa.51152.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0125.4303 = phi i64 [ %.sroa.0125.3312, %.preheader ], [ %.sroa.0125.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4302 = phi i32 [ %.sroa.18.3311, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = call i32 @llvm.usub.sat.i32(i32 %i.gm, i32 3)
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !176 ; 8 uses
  %i.gr = icmp samesign ult i32 %.sroa.18.4302, 65
  call void @llvm.assume(i1 %i.gr)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4302, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gs = add nuw nsw i32 %.sroa.51152.4304, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gs, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gt = zext nneg i32 %.sroa.51152.4304 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gv = icmp samesign ugt i32 %.sroa.51152.4304, %i.di
  br i1 %i.gv, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51152.4304) ; 3 uses
  %i.gw = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gw)
  %i.gx = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, 9
  call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gz
  %i.hb = zext nneg i32 %i.gx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.ha, i64 %i.hb, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gu, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.hc = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.hd = icmp ne i8 %i.hc, -1
  %i.he = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hf = trunc i64 %i.he to i8                   ; 3 uses
  %i.hg = icmp ne i8 %i.hf, -1
  %i.hh = and i1 %i.hd, %i.hg
  %i.hi = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hj = trunc i64 %i.hi to i8                   ; 2 uses
  %i.hk = icmp ne i8 %i.hj, -1
  %i.hl = and i1 %i.hk, %i.hh
  %i.hm = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hn = icmp ne i64 %i.hm, 4278190080
  %i.ho = and i1 %i.hn, %i.hl
  br i1 %i.ho, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hp = zext nneg i32 %.sroa.18.4302 to i64     ; 8 uses
  %i.hq = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.hp, 8
  %i.hr = sub nuw nsw i64 56, %i.hp
  %i.hs = shl nuw i64 %i.hq, %i.hr
  %i.ht = or i64 %i.hs, %.sroa.0125.4303          ; 2 uses
  %.not.i77 = icmp eq i8 %i.hc, -1
  br i1 %.not.i77, label %bb.s, label %bb.u
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi1EEEjv:bb.a
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 %i.bt) ; 5 uses
  %i.bx = icmp samesign ule i32 %i.bp, %i.bt      ; 4 uses
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.bm, %i.by
  %i.ca = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.cb = or i1 %i.bx, %i.ca
  %i.cc = and i1 %i.cb, %i.bz
  br i1 %i.cc, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cs, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.bx, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %i.cd = phi i1 [ %i.cu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %i.bx, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %i.ce = phi i32 [ %i.cs, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i140.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i139.i = phi i32 [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.0.0.i138.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i137.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.cf = add nuw nsw i32 %.sroa.14.0.i139.i, 1   ; 3 uses
  %i.cg = icmp eq i32 %i.cf, %i.bm
  %.0.in.v.i.i.i.i.i.i = select i1 %i.cg, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !19, !noalias !290 ; 2 uses
  %i.ch = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i138.i
  %i.ci = add nuw nsw i32 %.sroa.1951.sroa.12.0.i137.i, %.sroa.speculated.i.i.i.i140.i ; 2 uses
  %i.cj = icmp eq i32 %i.ch, %i.bu
  %i.ck = icmp eq i32 %i.ci, %i.bt                ; 3 uses
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %spec.select.i.i = select i1 %i.cd, i32 0, i32 %i.ce ; 2 uses
  %spec.select199.i.i = select i1 %i.cd, i32 %i.cf, i32 %.sroa.14.0.i139.i ; 4 uses
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.ck, i32 0, i32 %i.ci ; 3 uses
  %i.cm = select i1 %i.ck, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cm, %.sroa.1951.sroa.0.0.i138.i ; 2 uses
  %i.cn = icmp slt i32 %spec.select199.i.i, %i.bm
  tail call void @llvm.assume(i1 %i.cn), !noalias !291
  %i.co = sub nsw i32 %i.bt, %.sroa.1951.sroa.12.1.i.i ; 2 uses
  %i.cp = icmp sgt i32 %i.co, -1
  tail call void @llvm.assume(i1 %i.cp), !noalias !291
  %i.cq = sub nsw i32 %i.bp, %spec.select.i.i     ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  tail call void @llvm.assume(i1 %i.cr), !noalias !291
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.co) ; 3 uses
  %i.cs = add nuw nsw i32 %.sroa.speculated.i.i.i.i.i, %spec.select.i.i ; 5 uses
  %i.ct = icmp sle i32 %i.cs, %i.bp
  tail call void @llvm.assume(i1 %i.ct), !noalias !291
  %i.cu = icmp eq i32 %i.cs, %i.bp                ; 4 uses
  %i.cv = zext i1 %i.cu to i32
  %.sroa.13176.1.i.i = add nuw nsw i32 %spec.select199.i.i, %i.cv
  %i.cw = icmp eq i32 %.sroa.13176.1.i.i, %i.bm
  %i.cx = icmp eq i32 %i.cs, 0
  %i.cy = or i1 %i.cu, %i.cx
  %i.cz = and i1 %i.cy, %i.cw
  br i1 %i.cz, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !0

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i132.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i138.i, %.lr.ph.i ]
  %.sroa.14.0.i130.i = phi i32 [ %.sroa.14.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.14.0.i139.i, %.lr.ph.i ]
  %i.da = phi i32 [ %.lcssa126.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ce, %.lr.ph.i ]
  %i.db = phi i1 [ %.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cd, %.lr.ph.i ] ; 2 uses
  %.pre-phi203.i.i = phi i32 [ %.pre202.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cf, %.lr.ph.i ] ; 2 uses
  %i.dc = icmp eq i32 %.pre-phi.i.i, %i.bm
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.dc, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !19, !noalias !290
  %spec.select200.i.i = select i1 %i.db, i32 0, i32 %i.da ; 4 uses
  %spec.select201.i.i = select i1 %i.db, i32 %.pre-phi.i.i, i32 %.sroa.14.0.i130.i ; 4 uses
  %i.dd = icmp eq i32 %.pre-phi203.i.i, %i.bt     ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.dd, i32 0, i32 %.pre-phi203.i.i
  %i.de = select i1 %i.dd, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.de, %.sroa.1951.sroa.0.0.i132.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext nneg i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw nsw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.bq, ptr %7, align 8, !tbaa !24
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.bp, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bl, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !19
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7109.0..sroa_idx, align 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bq, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 %i.bp, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !19
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.bl, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !22
  %.sroa.12116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store i32 %spec.select201.i.i, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13118.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store i32 %spec.select200.i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.df = or i32 %spec.select201.i.i, %spec.select200.i.i
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %._crit_edge370.thread, label %.lr.ph369

._crit_edge370.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.c

.lr.ph369:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.di = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.dl = zext nneg i32 %i.h to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 2
  br label %bb.d

._crit_edge370:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dn = icmp slt i32 %.sroa.63162.1.lcssa, 0
  %spec.select = select i1 %i.dn, i32 %.sroa.51152.1.lcssa, i32 %.sroa.63162.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge370, %._crit_edge370.thread
  %i.do = phi i32 [ %spec.select, %._crit_edge370 ], [ 0, %._crit_edge370.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.do

bb.d:                                             ; preds = %.lr.ph369, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0368 = phi i32 [ 0, %.lr.ph369 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0172.0367 = phi ptr [ %i.c, %.lr.ph369 ], [ %.sroa.0172.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63162.0366 = phi i32 [ -1, %.lr.ph369 ], [ %.sroa.63162.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51152.0365 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.51152.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0125.0364 = phi i64 [ 0, %.lr.ph369 ], [ %.sroa.0125.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0232362 = phi i32 [ 0, %.lr.ph369 ], [ %.1233.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %.sroa.0.0.copyload.i53 = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i54, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.087.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i53, 32
  %.sroa.087.4.extract.trunc = trunc nuw i64 %.sroa.087.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.dp = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.087.4.extract.trunc
  %.not337 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not337, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.d
  %.sroa.087.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i53 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.dq = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.087.0.extract.trunc ; 2 uses
  %.not49321 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49321, label %._crit_edge348, label %.lr.ph347.split

.lr.ph347.split:                                  ; preds = %.lr.ph347
  %i.dr = load i32, ptr %i.dh, align 4, !tbaa !120 ; 3 uses
  br label %.lr.ph

._crit_edge348:                                   ; preds = %._crit_edge, %.lr.ph347, %bb.d
  %.1233.lcssa = phi i32 [ %.0232362, %bb.d ], [ %.0232362, %.lr.ph347 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0363, %bb.d ], [ %.sroa.18.0363, %.lr.ph347 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0125.1.lcssa = phi i64 [ %.sroa.0125.0364, %bb.d ], [ %.sroa.0125.0364, %.lr.ph347 ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.51152.1.lcssa = phi i32 [ %.sroa.51152.0365, %bb.d ], [ %.sroa.51152.0365, %.lr.ph347 ], [ %.sroa.51152.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63162.1.lcssa = phi i32 [ %.sroa.63162.0366, %bb.d ], [ %.sroa.63162.0366, %.lr.ph347 ], [ %i.fr, %._crit_edge ] ; 3 uses
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0367, %bb.d ], [ %.sroa.0172.0367, %.lr.ph347 ], [ %.sroa.0172.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0368, %bb.d ], [ %.0368, %.lr.ph347 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ds, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre395 = load i32, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre396 = load ptr, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre397 = load i32, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre398 = load i32, ptr %.sroa.8110.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge348
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre396, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dv = phi i32 [ %.pre398, %.lr.ph.i.i57 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dw = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.el, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dx = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %.02.i.i = phi i64 [ %i.dt, %.lr.ph.i.i57 ], [ %i.dy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.dy = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dz = icmp slt i32 %i.dx, %i.dw
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i32 %i.dx, 1                ; 3 uses
  %i.eb = icmp eq i32 %i.ea, %i.dw
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.eb, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre396, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ec = load i64, ptr %.sroa.7109.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ec, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !18
  %i.ee = sub nsw i32 %i.ed, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %i.eg = sub nsw i32 %.pre395, %i.dv             ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ee) ; 2 uses
  %i.ei = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dv ; 5 uses
  store i32 %i.ei, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  %i.ej = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ej to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ec, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7109.0..sroa_idx, align 8
  %i.ek = icmp sgt i32 %i.ei, -1
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i32, ptr %.pre396, align 4, !tbaa !16 ; 2 uses
  %i.em = icmp slt i32 %i.dx, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp sle i32 %i.ei, %.pre395
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i32 %i.ei, %.pre395
  %i.ep = trunc i64 %i.ec to i32
  br i1 %i.eo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ea, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = phi i32 [ 0, %bb.f ], [ %i.ei, %bb.e ]  ; 2 uses
  %i.er = phi i32 [ %i.ea, %bb.f ], [ %i.dx, %bb.e ] ; 2 uses
  %i.es = load i32, ptr %i.du, align 4, !tbaa !18
  %i.et = icmp eq i32 %i.ej, %i.es
  br i1 %i.et, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dk, align 4, !tbaa !172
  %i.eu = add nsw i32 %.0.i.i.i.i.i.i.i, %i.ep
  store i32 %i.eu, ptr %.sroa.7109.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge348
  %i.ev = phi i32 [ %.pre398, %._crit_edge348 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ew = phi i32 [ %.pre397, %._crit_edge348 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ex = load ptr, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bq
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !168
  %i.fa = icmp eq i32 %i.ez, %i.bp
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.fc = icmp eq ptr %i.fb, %i.bl
  call void @llvm.assume(i1 %i.fc)
  %i.fd = load i32, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !170
  %i.fe = icmp eq i32 %i.fd, %spec.select201.i.i
  %i.ff = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fg = icmp eq i32 %i.ff, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq ptr %.pre, %i.bq
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i32 %.pre395, %i.bp
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq ptr %.pre396, %i.bl
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i32 %i.ew, %spec.select201.i.i
  %i.fl = icmp eq i32 %i.ev, %spec.select200.i.i
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %._crit_edge370, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph347.split, %._crit_edge
  %.1345 = phi i32 [ %.0368, %.lr.ph347.split ], [ %.3, %._crit_edge ]
  %.045344 = phi i32 [ %.sroa.087.4.extract.trunc, %.lr.ph347.split ], [ %i.fs, %._crit_edge ] ; 3 uses
  %.sroa.0172.1343 = phi ptr [ %.sroa.0172.0367, %.lr.ph347.split ], [ %.sroa.0172.3, %._crit_edge ]
  %.sroa.63162.1342 = phi i32 [ %.sroa.63162.0366, %.lr.ph347.split ], [ %i.fr, %._crit_edge ]
  %.sroa.51152.1341 = phi i32 [ %.sroa.51152.0365, %.lr.ph347.split ], [ %.sroa.51152.3.lcssa, %._crit_edge ]
  %.sroa.0125.1340 = phi i64 [ %.sroa.0125.0364, %.lr.ph347.split ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.18.1339 = phi i32 [ %.sroa.18.0363, %.lr.ph347.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1233338 = phi i32 [ %.0232362, %.lr.ph347.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fn = icmp samesign ult i32 %.045344, %i.j    ; 2 uses
  %i.fo = mul nuw nsw i32 %.045344, %i.m
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3235, %bb.j ], [ %i.gi, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2323, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0125.3.lcssa = phi i64 [ %.sroa.0125.2324, %bb.j ], [ %.sroa.0125.6, %bb.k ] ; 3 uses
  %.sroa.51152.3.lcssa = phi i32 [ %.sroa.51152.2325, %bb.j ], [ %.sroa.51152.5, %bb.k ] ; 3 uses
  %.sroa.63162.3.lcssa = phi i32 [ %.sroa.63162.2326, %bb.j ], [ %.sroa.63162.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046328, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fr = freeze i32 %.sroa.63162.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dq
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !280

._crit_edge:                                      ; preds = %.loopexit
  %i.fs = add nsw i32 %.045344, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fs, %i.dp
  br i1 %.not, label %._crit_edge348, label %.lr.ph, !llvm.loop !281

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2329 = phi i32 [ %.1345, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046328 = phi i32 [ %.sroa.087.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0172.2327 = phi ptr [ %.sroa.0172.1343, %.lr.ph ], [ %.sroa.0172.3, %.loopexit ] ; 3 uses
  %.sroa.63162.2326 = phi i32 [ %.sroa.63162.1342, %.lr.ph ], [ %i.fr, %.loopexit ] ; 2 uses
  %.sroa.51152.2325 = phi i32 [ %.sroa.51152.1341, %.lr.ph ], [ %.sroa.51152.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0125.2324 = phi i64 [ %.sroa.0125.1340, %.lr.ph ], [ %.sroa.0125.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2323 = phi i32 [ %.sroa.18.1339, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2234322 = phi i32 [ %.1233338, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.ft = icmp sge i32 %i.dr, %.2234322
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i32 %i.dr, %.2234322
  br i1 %i.fu, label %.preheader237.preheader, label %bb.j

.preheader237.preheader:                          ; preds = %bb.i
  %i.fv = load i16, ptr %.sroa.0172.2327, align 2, !tbaa !157
  store i16 %i.fv, ptr %6, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0172.2327, i64 4
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !157
  store <2 x i16> %i.fx, ptr %i.dm, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fn)
  %i.fy = icmp samesign ule i32 %.046328, %i.h
  call void @llvm.assume(i1 %i.fy)
  %i.fz = shl nuw nsw i32 %.046328, 2             ; 2 uses
  %i.ga = icmp ule i32 %i.fz, %invariant.op
  call void @llvm.assume(i1 %i.ga)
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.gb
  %i.gd = add nsw i32 %.2329, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader237.preheader, %bb.i
  %.3235 = phi i32 [ 0, %.preheader237.preheader ], [ %.2234322, %bb.i ] ; 3 uses
  %.sroa.0172.3 = phi ptr [ %i.gc, %.preheader237.preheader ], [ %.sroa.0172.2327, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.gd, %.preheader237.preheader ], [ %.2329, %bb.i ] ; 3 uses
  %i.ge = sub nsw i32 %i.dr, %.3235               ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nsw i32 %i.ge, %.046328
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.dq) ; 4 uses
  %.not50309 = icmp eq i32 %.046328, %.sroa.speculated
  br i1 %.not50309, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gh = add i32 %.3235, %.sroa.speculated
  %i.gi = sub i32 %i.gh, %.046328
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147315 = phi i32 [ %i.gl, %bb.k ], [ %.046328, %.preheader.preheader ] ; 2 uses
  %.sroa.63162.3314 = phi i32 [ %.sroa.63162.5, %bb.k ], [ %.sroa.63162.2326, %.preheader.preheader ]
  %.sroa.51152.3313 = phi i32 [ %.sroa.51152.5, %bb.k ], [ %.sroa.51152.2325, %.preheader.preheader ]
  %.sroa.0125.3312 = phi i64 [ %.sroa.0125.6, %bb.k ], [ %.sroa.0125.2324, %.preheader.preheader ]
  %.sroa.18.3311 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2323, %.preheader.preheader ]
  %i.gj = shl nsw i32 %.147315, 2
  %i.gk = zext i32 %i.gj to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gl = add nsw i32 %.147315, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gl, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !282

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.63162.4307 = phi i32 [ %.sroa.63162.3314, %.preheader ], [ %.sroa.63162.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51152.4304 = phi i32 [ %.sroa.51152.3313, %.preheader ], [ %.sroa.51152.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0125.4303 = phi i64 [ %.sroa.0125.3312, %.preheader ], [ %.sroa.0125.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4302 = phi i32 [ %.sroa.18.3311, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = call i32 @llvm.usub.sat.i32(i32 %i.gm, i32 1)
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !176 ; 8 uses
  %i.gr = icmp samesign ult i32 %.sroa.18.4302, 65
  call void @llvm.assume(i1 %i.gr)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4302, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gs = add nuw nsw i32 %.sroa.51152.4304, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gs, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gt = zext nneg i32 %.sroa.51152.4304 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gv = icmp samesign ugt i32 %.sroa.51152.4304, %i.di
  br i1 %i.gv, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51152.4304) ; 3 uses
  %i.gw = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gw)
  %i.gx = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, 9
  call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gz
  %i.hb = zext nneg i32 %i.gx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.ha, i64 %i.hb, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gu, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.hc = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.hd = icmp ne i8 %i.hc, -1
  %i.he = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hf = trunc i64 %i.he to i8                   ; 3 uses
  %i.hg = icmp ne i8 %i.hf, -1
  %i.hh = and i1 %i.hd, %i.hg
  %i.hi = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hj = trunc i64 %i.hi to i8                   ; 2 uses
  %i.hk = icmp ne i8 %i.hj, -1
  %i.hl = and i1 %i.hk, %i.hh
  %i.hm = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hn = icmp ne i64 %i.hm, 4278190080
  %i.ho = and i1 %i.hn, %i.hl
  br i1 %i.ho, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hp = zext nneg i32 %.sroa.18.4302 to i64     ; 8 uses
  %i.hq = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.hp, 8
  %i.hr = sub nuw nsw i64 56, %i.hp
  %i.hs = shl nuw i64 %i.hq, %i.hr
  %i.ht = or i64 %i.hs, %.sroa.0125.4303          ; 2 uses
  %.not.i77 = icmp eq i8 %i.hc, -1
  br i1 %.not.i77, label %bb.s, label %bb.u
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi2ELi1ELi1EEEjv:bb.a
  tail call void @llvm.assume(i1 %i.bt), !noalias !315
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %i.bq) ; 5 uses
  %i.bu = icmp samesign ule i32 %i.bm, %i.bq      ; 4 uses
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bj, %i.bv
  %i.bx = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.by = or i1 %i.bu, %i.bx
  %i.bz = and i1 %i.by, %i.bw
  br i1 %i.bz, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cp, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.bu, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cr, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %i.ca = phi i1 [ %i.cr, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %i.bu, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %i.cb = phi i32 [ %i.cp, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i140.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i139.i = phi i32 [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.0.0.i138.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i137.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.cc = add nuw nsw i32 %.sroa.14.0.i139.i, 1   ; 3 uses
  %i.cd = icmp eq i32 %i.cc, %i.bj
  %.0.in.v.i.i.i.i.i.i = select i1 %i.cd, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !19, !noalias !314 ; 2 uses
  %i.ce = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i138.i
  %i.cf = add nuw nsw i32 %.sroa.1951.sroa.12.0.i137.i, %.sroa.speculated.i.i.i.i140.i ; 2 uses
  %i.cg = icmp eq i32 %i.ce, %i.br
  %i.ch = icmp eq i32 %i.cf, %i.bq                ; 3 uses
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %spec.select.i.i = select i1 %i.ca, i32 0, i32 %i.cb ; 2 uses
  %spec.select199.i.i = select i1 %i.ca, i32 %i.cc, i32 %.sroa.14.0.i139.i ; 4 uses
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.ch, i32 0, i32 %i.cf ; 3 uses
  %i.cj = select i1 %i.ch, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cj, %.sroa.1951.sroa.0.0.i138.i ; 2 uses
  %i.ck = icmp slt i32 %spec.select199.i.i, %i.bj
  tail call void @llvm.assume(i1 %i.ck), !noalias !315
  %i.cl = sub nsw i32 %i.bq, %.sroa.1951.sroa.12.1.i.i ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  tail call void @llvm.assume(i1 %i.cm), !noalias !315
  %i.cn = sub nsw i32 %i.bm, %spec.select.i.i     ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  tail call void @llvm.assume(i1 %i.co), !noalias !315
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cl) ; 3 uses
  %i.cp = add nuw nsw i32 %.sroa.speculated.i.i.i.i.i, %spec.select.i.i ; 5 uses
  %i.cq = icmp sle i32 %i.cp, %i.bm
  tail call void @llvm.assume(i1 %i.cq), !noalias !315
  %i.cr = icmp eq i32 %i.cp, %i.bm                ; 4 uses
  %i.cs = zext i1 %i.cr to i32
  %.sroa.13176.1.i.i = add nuw nsw i32 %spec.select199.i.i, %i.cs
  %i.ct = icmp eq i32 %.sroa.13176.1.i.i, %i.bj
  %i.cu = icmp eq i32 %i.cp, 0
  %i.cv = or i1 %i.cr, %i.cu
  %i.cw = and i1 %i.cv, %i.ct
  br i1 %i.cw, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !0

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i132.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i138.i, %.lr.ph.i ]
  %.sroa.14.0.i130.i = phi i32 [ %.sroa.14.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.14.0.i139.i, %.lr.ph.i ]
  %i.cx = phi i32 [ %.lcssa126.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cb, %.lr.ph.i ]
  %i.cy = phi i1 [ %.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %.pre-phi203.i.i = phi i32 [ %.pre202.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.bq, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %i.cz = icmp eq i32 %.pre-phi.i.i, %i.bj
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.cz, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !19, !noalias !314
  %spec.select200.i.i = select i1 %i.cy, i32 0, i32 %i.cx ; 4 uses
  %spec.select201.i.i = select i1 %i.cy, i32 %.pre-phi.i.i, i32 %.sroa.14.0.i130.i ; 4 uses
  %i.da = icmp eq i32 %.pre-phi203.i.i, %i.bq     ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.da, i32 0, i32 %.pre-phi203.i.i
  %i.db = select i1 %i.da, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.db, %.sroa.1951.sroa.0.0.i132.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext nneg i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw nsw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.bn, ptr %5, align 8, !tbaa !24
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.bm, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bi, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !19
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7111.0..sroa_idx, align 8
  %.sroa.8112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.bn, ptr %.sroa.9114.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i32 %i.bm, ptr %.sroa.10115.0..sroa_idx, align 8, !tbaa !19
  %.sroa.11117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.bi, ptr %.sroa.11117.0..sroa_idx, align 8, !tbaa !22
  %.sroa.12118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i32 %spec.select201.i.i, ptr %.sroa.12118.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13120.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i32 %spec.select200.i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.dc = or i32 %spec.select201.i.i, %spec.select200.i.i
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %._crit_edge372.thread, label %.lr.ph371

._crit_edge372.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.c

.lr.ph371:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.df = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.di = zext nneg i32 %i.h to i64
  br label %bb.d

._crit_edge372:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.dj = icmp slt i32 %.sroa.63164.1.lcssa, 0
  %spec.select = select i1 %i.dj, i32 %.sroa.51154.1.lcssa, i32 %.sroa.63164.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge372, %._crit_edge372.thread
  %i.dk = phi i32 [ %spec.select, %._crit_edge372 ], [ 0, %._crit_edge372.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.5)
  ret i32 %i.dk

bb.d:                                             ; preds = %.lr.ph371, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0370 = phi i32 [ 0, %.lr.ph371 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0174.0369 = phi ptr [ %i.c, %.lr.ph371 ], [ %.sroa.0174.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63164.0368 = phi i32 [ -1, %.lr.ph371 ], [ %.sroa.63164.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51154.0367 = phi i32 [ 0, %.lr.ph371 ], [ %.sroa.51154.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0127.0366 = phi i64 [ 0, %.lr.ph371 ], [ %.sroa.0127.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0365 = phi i32 [ 0, %.lr.ph371 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0234364 = phi i32 [ 0, %.lr.ph371 ], [ %.1235.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %.sroa.0.0.copyload.i55 = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i56, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.089.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i55, 32
  %.sroa.089.4.extract.trunc = trunc nuw i64 %.sroa.089.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.dl = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.089.4.extract.trunc
  %.not339 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not339, label %._crit_edge350, label %.lr.ph349

.lr.ph349:                                        ; preds = %bb.d
  %.sroa.089.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i55 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.dm = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.089.0.extract.trunc ; 2 uses
  %.not49323 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49323, label %._crit_edge350, label %.lr.ph349.split

.lr.ph349.split:                                  ; preds = %.lr.ph349
  %i.dn = load i32, ptr %i.de, align 4, !tbaa !120 ; 3 uses
  br label %.lr.ph

._crit_edge350:                                   ; preds = %._crit_edge, %.lr.ph349, %bb.d
  %.1235.lcssa = phi i32 [ %.0234364, %bb.d ], [ %.0234364, %.lr.ph349 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0365, %bb.d ], [ %.sroa.18.0365, %.lr.ph349 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0127.1.lcssa = phi i64 [ %.sroa.0127.0366, %bb.d ], [ %.sroa.0127.0366, %.lr.ph349 ], [ %.sroa.0127.3.lcssa, %._crit_edge ]
  %.sroa.51154.1.lcssa = phi i32 [ %.sroa.51154.0367, %bb.d ], [ %.sroa.51154.0367, %.lr.ph349 ], [ %.sroa.51154.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63164.1.lcssa = phi i32 [ %.sroa.63164.0368, %bb.d ], [ %.sroa.63164.0368, %.lr.ph349 ], [ %i.fn, %._crit_edge ] ; 3 uses
  %.sroa.0174.1.lcssa = phi ptr [ %.sroa.0174.0369, %bb.d ], [ %.sroa.0174.0369, %.lr.ph349 ], [ %.sroa.0174.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0370, %bb.d ], [ %.0370, %.lr.ph349 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.do, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !167   ; 2 uses
  %.pre397 = load i32, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre398 = load ptr, ptr %.sroa.5108.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre399 = load i32, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre400 = load i32, ptr %.sroa.8112.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %._crit_edge350
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre398, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %.lr.ph.i.i59
  %i.dr = phi i32 [ %.pre400, %.lr.ph.i.i59 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.ds = phi i32 [ %.pre3.i.i, %.lr.ph.i.i59 ], [ %i.eh, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.dt = phi i32 [ %.pre399, %.lr.ph.i.i59 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 4 uses
  %.02.i.i = phi i64 [ %i.dp, %.lr.ph.i.i59 ], [ %i.du, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.du = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.ds
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i32 %i.dt, 1                ; 3 uses
  %i.dx = icmp eq i32 %i.dw, %i.ds
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.dx, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre398, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.dy = load i64, ptr %.sroa.7111.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.dy, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ea = sub nsw i32 %i.dz, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = sub nsw i32 %.pre397, %i.dr             ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 2 uses
  %i.ee = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dr ; 5 uses
  store i32 %i.ee, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !171
  %i.ef = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ef to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.dy, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7111.0..sroa_idx, align 8
  %i.eg = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i32, ptr %.pre398, align 4, !tbaa !16 ; 2 uses
  %i.ei = icmp slt i32 %i.dt, %i.eh
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp sle i32 %i.ee, %.pre397
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp eq i32 %i.ee, %.pre397
  %i.el = trunc i64 %i.dy to i32
  br i1 %i.ek, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dw, ptr %.sroa.6109.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8112.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.em = phi i32 [ 0, %bb.f ], [ %i.ee, %bb.e ]  ; 2 uses
  %i.en = phi i32 [ %i.dw, %bb.f ], [ %i.dt, %bb.e ] ; 2 uses
  %i.eo = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ep = icmp eq i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dh, align 4, !tbaa !172
  %i.eq = add nsw i32 %.0.i.i.i.i.i.i.i, %i.el
  store i32 %i.eq, ptr %.sroa.7111.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %._crit_edge350
  %i.er = phi i32 [ %.pre400, %._crit_edge350 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.es = phi i32 [ %.pre399, %._crit_edge350 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.et = load ptr, ptr %.sroa.9114.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.eu = icmp eq ptr %i.et, %i.bn
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i32, ptr %.sroa.10115.0..sroa_idx, align 8, !tbaa !168
  %i.ew = icmp eq i32 %i.ev, %i.bm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load ptr, ptr %.sroa.11117.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bi
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.12118.0..sroa_idx, align 8, !tbaa !170
  %i.fa = icmp eq i32 %i.ez, %spec.select201.i.i
  %i.fb = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fc = icmp eq i32 %i.fb, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq ptr %.pre, %i.bn
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i32 %.pre397, %i.bm
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq ptr %.pre398, %i.bi
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i32 %i.es, %spec.select201.i.i
  %i.fh = icmp eq i32 %i.er, %spec.select200.i.i
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %._crit_edge372, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph349.split, %._crit_edge
  %.1347 = phi i32 [ %.0370, %.lr.ph349.split ], [ %.3, %._crit_edge ]
  %.045346 = phi i32 [ %.sroa.089.4.extract.trunc, %.lr.ph349.split ], [ %i.fo, %._crit_edge ] ; 3 uses
  %.sroa.0174.1345 = phi ptr [ %.sroa.0174.0369, %.lr.ph349.split ], [ %.sroa.0174.3, %._crit_edge ]
  %.sroa.63164.1344 = phi i32 [ %.sroa.63164.0368, %.lr.ph349.split ], [ %i.fn, %._crit_edge ]
  %.sroa.51154.1343 = phi i32 [ %.sroa.51154.0367, %.lr.ph349.split ], [ %.sroa.51154.3.lcssa, %._crit_edge ]
  %.sroa.0127.1342 = phi i64 [ %.sroa.0127.0366, %.lr.ph349.split ], [ %.sroa.0127.3.lcssa, %._crit_edge ]
  %.sroa.18.1341 = phi i32 [ %.sroa.18.0365, %.lr.ph349.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1235340 = phi i32 [ %.0234364, %.lr.ph349.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fj = icmp samesign ult i32 %.045346, %i.j    ; 2 uses
  %i.fk = mul nuw nsw i32 %.045346, %i.m
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fl ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3237, %bb.j ], [ %i.gc, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2325, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0127.3.lcssa = phi i64 [ %.sroa.0127.2326, %bb.j ], [ %.sroa.0127.6, %bb.k ] ; 3 uses
  %.sroa.51154.3.lcssa = phi i32 [ %.sroa.51154.2327, %bb.j ], [ %.sroa.51154.5, %bb.k ] ; 3 uses
  %.sroa.63164.3.lcssa = phi i32 [ %.sroa.63164.2328, %bb.j ], [ %.sroa.63164.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046330, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fn = freeze i32 %.sroa.63164.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dm
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !307

._crit_edge:                                      ; preds = %.loopexit
  %i.fo = add nsw i32 %.045346, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fo, %i.dl
  br i1 %.not, label %._crit_edge350, label %.lr.ph, !llvm.loop !308

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2331 = phi i32 [ %.1347, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046330 = phi i32 [ %.sroa.089.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0174.2329 = phi ptr [ %.sroa.0174.1345, %.lr.ph ], [ %.sroa.0174.3, %.loopexit ] ; 2 uses
  %.sroa.63164.2328 = phi i32 [ %.sroa.63164.1344, %.lr.ph ], [ %i.fn, %.loopexit ] ; 2 uses
  %.sroa.51154.2327 = phi i32 [ %.sroa.51154.1343, %.lr.ph ], [ %.sroa.51154.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0127.2326 = phi i64 [ %.sroa.0127.1342, %.lr.ph ], [ %.sroa.0127.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2325 = phi i32 [ %.sroa.18.1341, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2236324 = phi i32 [ %.1235340, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fp = icmp sge i32 %i.dn, %.2236324
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i32 %i.dn, %.2236324
  br i1 %i.fq, label %.preheader239.preheader, label %bb.j

.preheader239.preheader:                          ; preds = %bb.i
  %i.fr = load i32, ptr %.sroa.0174.2329, align 2, !tbaa !157 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.fr to i16
  store i16 %.sroa.0.sroa.0.0.extract.trunc, ptr %.sroa.0.sroa.0, align 4, !tbaa !157
  %.sroa.0.sroa.5.0.extract.shift = lshr i32 %i.fr, 16
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift to i16
  store i16 %.sroa.0.sroa.5.0.extract.trunc, ptr %.sroa.0.sroa.5, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fj)
  %i.fs = icmp samesign ule i32 %.046330, %i.h
  call void @llvm.assume(i1 %i.fs)
  %i.ft = shl nuw nsw i32 %.046330, 1             ; 2 uses
  %i.fu = icmp ule i32 %i.ft, %invariant.op
  call void @llvm.assume(i1 %i.fu)
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fv
  %i.fx = add nsw i32 %.2331, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader239.preheader, %bb.i
  %.3237 = phi i32 [ 0, %.preheader239.preheader ], [ %.2236324, %bb.i ] ; 3 uses
  %.sroa.0174.3 = phi ptr [ %i.fw, %.preheader239.preheader ], [ %.sroa.0174.2329, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.fx, %.preheader239.preheader ], [ %.2331, %bb.i ] ; 3 uses
  %i.fy = sub nsw i32 %i.dn, %.3237               ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  call void @llvm.assume(i1 %i.fz)
  %i.ga = add nsw i32 %i.fy, %.046330
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ga, i32 %i.dm) ; 4 uses
  %.not50311 = icmp eq i32 %.046330, %.sroa.speculated
  br i1 %.not50311, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gb = add i32 %.3237, %.sroa.speculated
  %i.gc = sub i32 %i.gb, %.046330
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147317 = phi i32 [ %i.gf, %bb.k ], [ %.046330, %.preheader.preheader ] ; 2 uses
  %.sroa.63164.3316 = phi i32 [ %.sroa.63164.5, %bb.k ], [ %.sroa.63164.2328, %.preheader.preheader ]
  %.sroa.51154.3315 = phi i32 [ %.sroa.51154.5, %bb.k ], [ %.sroa.51154.2327, %.preheader.preheader ]
  %.sroa.0127.3314 = phi i64 [ %.sroa.0127.6, %bb.k ], [ %.sroa.0127.2326, %.preheader.preheader ]
  %.sroa.18.3313 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2325, %.preheader.preheader ]
  %i.gd = shl nsw i32 %.147317, 1
  %i.ge = zext i32 %i.gd to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gf = add nsw i32 %.147317, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gf, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !309

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gg = phi i1 [ true, %.preheader ], [ false, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0.sroa.0, %.preheader ], [ %.sroa.0.sroa.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %indvars.iv.sroa.phi488.sroa.speculated = phi ptr [ %i.r, %.preheader ], [ %i.t, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %.sroa.63164.4309 = phi i32 [ %.sroa.63164.3316, %.preheader ], [ %.sroa.63164.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51154.4306 = phi i32 [ %.sroa.51154.3315, %.preheader ], [ %.sroa.51154.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0127.4305 = phi i64 [ %.sroa.0127.3314, %.preheader ], [ %.sroa.0127.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4304 = phi i32 [ %.sroa.18.3313, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gh = icmp samesign ult i32 %.sroa.18.4304, 65
  call void @llvm.assume(i1 %i.gh)
  %.not.i69 = icmp samesign ult i32 %.sroa.18.4304, 32
  br i1 %.not.i69, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gi = add nuw nsw i32 %.sroa.51154.4306, 8
  %.not.i.i70 = icmp samesign ugt i32 %i.gi, %.sroa.234.0.copyload
  br i1 %.not.i.i70, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gj = zext nneg i32 %.sroa.51154.4306 to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gj
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gl = icmp samesign ugt i32 %.sroa.51154.4306, %i.df
  br i1 %i.gl, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51154.4306) ; 3 uses
  %i.gm = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gm)
  %i.gn = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.go = icmp samesign ult i32 %i.gn, 9
  call void @llvm.assume(i1 %i.go)
  %i.gp = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gp
  %i.gr = zext nneg i32 %i.gn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.gq, i64 %i.gr, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gk, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.gs = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.gt = icmp ne i8 %i.gs, -1
  %i.gu = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.gv = trunc i64 %i.gu to i8                   ; 3 uses
  %i.gw = icmp ne i8 %i.gv, -1
  %i.gx = and i1 %i.gt, %i.gw
  %i.gy = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.gz = trunc i64 %i.gy to i8                   ; 2 uses
  %i.ha = icmp ne i8 %i.gz, -1
  %i.hb = and i1 %i.ha, %i.gx
  %i.hc = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hd = icmp ne i64 %i.hc, 4278190080
  %i.he = and i1 %i.hd, %i.hb
  br i1 %i.he, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hf = zext nneg i32 %.sroa.18.4304 to i64     ; 8 uses
  %i.hg = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.hf, 8
  %i.hh = sub nuw nsw i64 56, %i.hf
  %i.hi = shl nuw i64 %i.hg, %i.hh
  %i.hj = or i64 %i.hi, %.sroa.0127.4305          ; 2 uses
  %.not.i79 = icmp eq i8 %i.gs, -1
  br i1 %.not.i79, label %bb.s, label %bb.u

end_hunk_2
begin_hunk_3_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi4ELi1ELi1EEEjv:bb.a
  tail call void @llvm.assume(i1 %i.ca), !noalias !346
  %.sroa.speculated.i.i.i.i136.i = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %i.bx) ; 5 uses
  %i.cb = icmp samesign ule i32 %i.bt, %i.bx      ; 4 uses
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.bq, %i.cc
  %i.ce = icmp eq i32 %.sroa.speculated.i.i.i.i136.i, 0
  %i.cf = or i1 %i.cb, %i.ce
  %i.cg = and i1 %i.cf, %i.cd
  br i1 %i.cg, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %.sroa.1951.sroa.12.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.1951.sroa.0.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.sroa.14.0.i.lcssa.i = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.speculated.i.i.i.i.lcssa.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa126.i = phi i32 [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cw, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.lcssa.i = phi i1 [ %i.cb, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.cy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ]
  %.pre.i.i = add nuw nsw i32 %.sroa.14.0.i.lcssa.i, 1
  %.pre202.i.i = add nuw nsw i32 %.sroa.speculated.i.i.i.i.lcssa.i, %.sroa.1951.sroa.12.0.i.lcssa.i
  br label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit

.lr.ph.i:                                         ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i
  %i.ch = phi i1 [ %i.cy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %i.cb, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %i.ci = phi i32 [ %i.cw, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.speculated.i.i.i.i140.i = phi i32 [ %.sroa.speculated.i.i.i.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ %.sroa.speculated.i.i.i.i136.i, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.14.0.i139.i = phi i32 [ %spec.select199.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.0.0.i138.i = phi i32 [ %.sroa.1951.sroa.0.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.1951.sroa.12.0.i137.i = phi i32 [ %.sroa.1951.sroa.12.1.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i ], [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.cj = add nuw nsw i32 %.sroa.14.0.i139.i, 1   ; 3 uses
  %i.ck = icmp eq i32 %i.cj, %i.bq
  %.0.in.v.i.i.i.i.i.i = select i1 %i.ck, i64 8, i64 4
  %.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.0.in.v.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i, align 4, !tbaa !19, !noalias !345 ; 2 uses
  %i.cl = add nsw i32 %.0.i.i.i.i.i.i, %.sroa.1951.sroa.0.0.i138.i
  %i.cm = add nuw nsw i32 %.sroa.1951.sroa.12.0.i137.i, %.sroa.speculated.i.i.i.i140.i ; 2 uses
  %i.cn = icmp eq i32 %i.cl, %i.by
  %i.co = icmp eq i32 %i.cm, %i.bx                ; 3 uses
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i: ; preds = %.lr.ph.i
  %spec.select.i.i = select i1 %i.ch, i32 0, i32 %i.ci ; 2 uses
  %spec.select199.i.i = select i1 %i.ch, i32 %i.cj, i32 %.sroa.14.0.i139.i ; 4 uses
  %.sroa.1951.sroa.12.1.i.i = select i1 %i.co, i32 0, i32 %i.cm ; 3 uses
  %i.cq = select i1 %i.co, i32 %.0.i.i.i.i.i.i, i32 0
  %.sroa.1951.sroa.0.1.i.i = add nsw i32 %i.cq, %.sroa.1951.sroa.0.0.i138.i ; 2 uses
  %i.cr = icmp slt i32 %spec.select199.i.i, %i.bq
  tail call void @llvm.assume(i1 %i.cr), !noalias !346
  %i.cs = sub nsw i32 %i.bx, %.sroa.1951.sroa.12.1.i.i ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  tail call void @llvm.assume(i1 %i.ct), !noalias !346
  %i.cu = sub nsw i32 %i.bt, %spec.select.i.i     ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, -1
  tail call void @llvm.assume(i1 %i.cv), !noalias !346
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.cs) ; 3 uses
  %i.cw = add nuw nsw i32 %.sroa.speculated.i.i.i.i.i, %spec.select.i.i ; 5 uses
  %i.cx = icmp sle i32 %i.cw, %i.bt
  tail call void @llvm.assume(i1 %i.cx), !noalias !346
  %i.cy = icmp eq i32 %i.cw, %i.bt                ; 4 uses
  %i.cz = zext i1 %i.cy to i32
  %.sroa.13176.1.i.i = add nuw nsw i32 %spec.select199.i.i, %i.cz
  %i.da = icmp eq i32 %.sroa.13176.1.i.i, %i.bq
  %i.db = icmp eq i32 %i.cw, 0
  %i.dc = or i1 %i.cy, %i.db
  %i.dd = and i1 %i.dc, %i.da
  br i1 %i.dd, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i, label %.lr.ph.i, !llvm.loop !0

_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit: ; preds = %.lr.ph.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i
  %.sroa.1951.sroa.0.0.i132.i = phi i32 [ %.sroa.1951.sroa.0.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.1951.sroa.0.0.i138.i, %.lr.ph.i ]
  %.sroa.14.0.i130.i = phi i32 [ %.sroa.14.0.i.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %.sroa.14.0.i139.i, %.lr.ph.i ]
  %i.de = phi i32 [ %.lcssa126.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ci, %.lr.ph.i ]
  %i.df = phi i1 [ %.lcssa.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.ch, %.lr.ph.i ] ; 2 uses
  %.pre-phi203.i.i = phi i32 [ %.pre202.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.bx, %.lr.ph.i ] ; 2 uses
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i..critedge_crit_edge.i.i ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.dg = icmp eq i32 %.pre-phi.i.i, %i.bq
  %.0.in.v.i.i.i.i.i1.i.i = select i1 %i.dg, i64 8, i64 4
  %.0.in.i.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.0.in.v.i.i.i.i.i1.i.i
  %.0.i.i.i.i.i3.i.i = load i32, ptr %.0.in.i.i.i.i.i2.i.i, align 4, !tbaa !19, !noalias !345
  %spec.select200.i.i = select i1 %i.df, i32 0, i32 %i.de ; 4 uses
  %spec.select201.i.i = select i1 %i.df, i32 %.pre-phi.i.i, i32 %.sroa.14.0.i130.i ; 4 uses
  %i.dh = icmp eq i32 %.pre-phi203.i.i, %i.bx     ; 2 uses
  %.sroa.1951.sroa.12.2.i.i = select i1 %i.dh, i32 0, i32 %.pre-phi203.i.i
  %i.di = select i1 %i.dh, i32 %.0.i.i.i.i.i3.i.i, i32 0
  %.sroa.1951.sroa.0.2.i.i = add nsw i32 %i.di, %.sroa.1951.sroa.0.0.i132.i
  %.sroa.1951.sroa.12.0.insert.ext83.i.i = zext nneg i32 %.sroa.1951.sroa.12.2.i.i to i64
  %.sroa.1951.sroa.12.0.insert.shift84.i.i = shl nuw nsw i64 %.sroa.1951.sroa.12.0.insert.ext83.i.i, 32
  %.sroa.1951.sroa.0.0.insert.ext69.i.i = zext i32 %.sroa.1951.sroa.0.2.i.i to i64
  %.sroa.1951.sroa.0.0.insert.insert71.i.i = or disjoint i64 %.sroa.1951.sroa.12.0.insert.shift84.i.i, %.sroa.1951.sroa.0.0.insert.ext69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.bu, ptr %7, align 8, !tbaa !24
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %i.bt, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bp, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 0, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !19
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.7109.0..sroa_idx, align 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bu, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !24
  %.sroa.10113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 %i.bt, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !19
  %.sroa.11115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.bp, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !22
  %.sroa.12116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store i32 %spec.select201.i.i, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i.i, ptr %.sroa.13118.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store i32 %spec.select200.i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !19
  %i.dj = or i32 %spec.select201.i.i, %spec.select200.i.i
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %._crit_edge370.thread, label %.lr.ph369

._crit_edge370.thread:                            ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.c

.lr.ph369:                                        ; preds = %_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv.exit
  %.sroa.2.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %invariant.op = add nsw i32 %i.h, -4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dm = add nuw nsw i32 %.sroa.234.0.copyload, 16
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.dp = zext nneg i32 %i.h to i64
  br label %bb.d

._crit_edge370:                                   ; preds = %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dq = icmp slt i32 %.sroa.63162.1.lcssa, 0
  %spec.select = select i1 %i.dq, i32 %.sroa.51152.1.lcssa, i32 %.sroa.63162.1.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge370, %._crit_edge370.thread
  %i.dr = phi i32 [ %spec.select, %._crit_edge370 ], [ 0, %._crit_edge370.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.dr

bb.d:                                             ; preds = %.lr.ph369, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit
  %.0368 = phi i32 [ 0, %.lr.ph369 ], [ %.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0172.0367 = phi ptr [ %i.c, %.lr.ph369 ], [ %.sroa.0172.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.63162.0366 = phi i32 [ -1, %.lr.ph369 ], [ %.sroa.63162.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.51152.0365 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.51152.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.0125.0364 = phi i64 [ 0, %.lr.ph369 ], [ %.sroa.0125.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.sroa.18.0363 = phi i32 [ 0, %.lr.ph369 ], [ %.sroa.18.1.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  %.0232362 = phi i32 [ 0, %.lr.ph369 ], [ %.1233.lcssa, %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %3, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %.sroa.0.0.copyload.i53 = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i54, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.sroa.087.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i53, 32
  %.sroa.087.4.extract.trunc = trunc nuw i64 %.sroa.087.4.extract.shift to i32 ; 2 uses
  %.sroa.7.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32 ; 2 uses
  %.sroa.7.12.extract.trunc = trunc nuw i64 %.sroa.7.12.extract.shift to i32
  %i.ds = add nsw i32 %.sroa.7.12.extract.trunc, %.sroa.087.4.extract.trunc
  %.not337 = icmp eq i64 %.sroa.7.12.extract.shift, 0
  br i1 %.not337, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.d
  %.sroa.087.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i53 to i32 ; 2 uses
  %.sroa.7.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 2 uses
  %i.dt = add nsw i32 %.sroa.7.8.extract.trunc, %.sroa.087.0.extract.trunc ; 2 uses
  %.not49321 = icmp eq i32 %.sroa.7.8.extract.trunc, 0
  br i1 %.not49321, label %._crit_edge348, label %.lr.ph347.split

.lr.ph347.split:                                  ; preds = %.lr.ph347
  %i.du = load i32, ptr %i.dl, align 4, !tbaa !120 ; 3 uses
  br label %.lr.ph

._crit_edge348:                                   ; preds = %._crit_edge, %.lr.ph347, %bb.d
  %.1233.lcssa = phi i32 [ %.0232362, %bb.d ], [ %.0232362, %.lr.ph347 ], [ %.4.lcssa, %._crit_edge ]
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0363, %bb.d ], [ %.sroa.18.0363, %.lr.ph347 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0125.1.lcssa = phi i64 [ %.sroa.0125.0364, %bb.d ], [ %.sroa.0125.0364, %.lr.ph347 ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.51152.1.lcssa = phi i32 [ %.sroa.51152.0365, %bb.d ], [ %.sroa.51152.0365, %.lr.ph347 ], [ %.sroa.51152.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63162.1.lcssa = phi i32 [ %.sroa.63162.0366, %bb.d ], [ %.sroa.63162.0366, %.lr.ph347 ], [ %i.fu, %._crit_edge ] ; 3 uses
  %.sroa.0172.1.lcssa = phi ptr [ %.sroa.0172.0367, %bb.d ], [ %.sroa.0172.0367, %.lr.ph347 ], [ %.sroa.0172.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0368, %bb.d ], [ %.0368, %.lr.ph347 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.dv, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre395 = load i32, ptr %.sroa.4104.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre396 = load ptr, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre397 = load i32, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre398 = load i32, ptr %.sroa.8110.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge348
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre396, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dy = phi i32 [ %.pre398, %.lr.ph.i.i57 ], [ %i.et, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dz = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.eo, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.ea = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.eu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %.02.i.i = phi i64 [ %i.dw, %.lr.ph.i.i57 ], [ %i.eb, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.eb = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.ec = icmp slt i32 %i.ea, %i.dz
  call void @llvm.assume(i1 %i.ec)
  %i.ed = add nuw nsw i32 %i.ea, 1                ; 3 uses
  %i.ee = icmp eq i32 %i.ed, %i.dz
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.ee, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre396, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ef = load i64, ptr %.sroa.7109.0..sroa_idx, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ef, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !18
  %i.eh = sub nsw i32 %i.eg, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  call void @llvm.assume(i1 %i.ei)
  %i.ej = sub nsw i32 %.pre395, %i.dy             ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  call void @llvm.assume(i1 %i.ek)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ej, i32 %i.eh) ; 2 uses
  %i.el = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dy ; 5 uses
  store i32 %i.el, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  %i.em = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.em to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ef, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7109.0..sroa_idx, align 8
  %i.en = icmp sgt i32 %i.el, -1
  call void @llvm.assume(i1 %i.en)
  %i.eo = load i32, ptr %.pre396, align 4, !tbaa !16 ; 2 uses
  %i.ep = icmp slt i32 %i.ea, %i.eo
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp sle i32 %i.el, %.pre395
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp eq i32 %i.el, %.pre395
  %i.es = trunc i64 %i.ef to i32
  br i1 %i.er, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ed, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.et = phi i32 [ 0, %bb.f ], [ %i.el, %bb.e ]  ; 2 uses
  %i.eu = phi i32 [ %i.ed, %bb.f ], [ %i.ea, %bb.e ] ; 2 uses
  %i.ev = load i32, ptr %i.dx, align 4, !tbaa !18
  %i.ew = icmp eq i32 %i.em, %i.ev
  br i1 %i.ew, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.do, align 4, !tbaa !172
  %i.ex = add nsw i32 %.0.i.i.i.i.i.i.i, %i.es
  store i32 %i.ex, ptr %.sroa.7109.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge348
  %i.ey = phi i32 [ %.pre398, %._crit_edge348 ], [ %i.et, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ez = phi i32 [ %.pre397, %._crit_edge348 ], [ %i.eu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.fa = load ptr, ptr %.sroa.9112.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.fb = icmp eq ptr %i.fa, %i.bu
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i32, ptr %.sroa.10113.0..sroa_idx, align 8, !tbaa !168
  %i.fd = icmp eq i32 %i.fc, %i.bt
  call void @llvm.assume(i1 %i.fd)
  %i.fe = load ptr, ptr %.sroa.11115.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.ff = icmp eq ptr %i.fe, %i.bp
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load i32, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !170
  %i.fh = icmp eq i32 %i.fg, %spec.select201.i.i
  %i.fi = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fj = icmp eq i32 %i.fi, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq ptr %.pre, %i.bu
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp eq i32 %.pre395, %i.bt
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp eq ptr %.pre396, %i.bp
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp eq i32 %i.ez, %spec.select201.i.i
  %i.fo = icmp eq i32 %i.ey, %spec.select200.i.i
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %._crit_edge370, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph347.split, %._crit_edge
  %.1345 = phi i32 [ %.0368, %.lr.ph347.split ], [ %.3, %._crit_edge ]
  %.045344 = phi i32 [ %.sroa.087.4.extract.trunc, %.lr.ph347.split ], [ %i.fv, %._crit_edge ] ; 3 uses
  %.sroa.0172.1343 = phi ptr [ %.sroa.0172.0367, %.lr.ph347.split ], [ %.sroa.0172.3, %._crit_edge ]
  %.sroa.63162.1342 = phi i32 [ %.sroa.63162.0366, %.lr.ph347.split ], [ %i.fu, %._crit_edge ]
  %.sroa.51152.1341 = phi i32 [ %.sroa.51152.0365, %.lr.ph347.split ], [ %.sroa.51152.3.lcssa, %._crit_edge ]
  %.sroa.0125.1340 = phi i64 [ %.sroa.0125.0364, %.lr.ph347.split ], [ %.sroa.0125.3.lcssa, %._crit_edge ]
  %.sroa.18.1339 = phi i32 [ %.sroa.18.0363, %.lr.ph347.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1233338 = phi i32 [ %.0232362, %.lr.ph347.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fq = icmp samesign ult i32 %.045344, %i.j    ; 2 uses
  %i.fr = mul nuw nsw i32 %.045344, %i.m
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fs ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3235, %bb.j ], [ %i.gj, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2323, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0125.3.lcssa = phi i64 [ %.sroa.0125.2324, %bb.j ], [ %.sroa.0125.6, %bb.k ] ; 3 uses
  %.sroa.51152.3.lcssa = phi i32 [ %.sroa.51152.2325, %bb.j ], [ %.sroa.51152.5, %bb.k ] ; 3 uses
  %.sroa.63162.3.lcssa = phi i32 [ %.sroa.63162.2326, %bb.j ], [ %.sroa.63162.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046328, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fu = freeze i32 %.sroa.63162.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dt
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !335

._crit_edge:                                      ; preds = %.loopexit
  %i.fv = add nsw i32 %.045344, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fv, %i.ds
  br i1 %.not, label %._crit_edge348, label %.lr.ph, !llvm.loop !336

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2329 = phi i32 [ %.1345, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046328 = phi i32 [ %.sroa.087.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0172.2327 = phi ptr [ %.sroa.0172.1343, %.lr.ph ], [ %.sroa.0172.3, %.loopexit ] ; 2 uses
  %.sroa.63162.2326 = phi i32 [ %.sroa.63162.1342, %.lr.ph ], [ %i.fu, %.loopexit ] ; 2 uses
  %.sroa.51152.2325 = phi i32 [ %.sroa.51152.1341, %.lr.ph ], [ %.sroa.51152.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0125.2324 = phi i64 [ %.sroa.0125.1340, %.lr.ph ], [ %.sroa.0125.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2323 = phi i32 [ %.sroa.18.1339, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2234322 = phi i32 [ %.1233338, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fw = icmp sge i32 %i.du, %.2234322
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp eq i32 %i.du, %.2234322
  br i1 %i.fx, label %.preheader237.preheader, label %bb.j

.preheader237.preheader:                          ; preds = %bb.i
  %i.fy = load <4 x i16>, ptr %.sroa.0172.2327, align 2, !tbaa !157
  store <4 x i16> %i.fy, ptr %6, align 8, !tbaa !157
  call void @llvm.assume(i1 %i.fq)
  %i.fz = icmp samesign ule i32 %.046328, %i.h
  call void @llvm.assume(i1 %i.fz)
  %i.ga = shl nuw nsw i32 %.046328, 2             ; 2 uses
  %i.gb = icmp ule i32 %i.ga, %invariant.op
  call void @llvm.assume(i1 %i.gb)
  %i.gc = zext nneg i32 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.gc
  %i.ge = add nsw i32 %.2329, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader237.preheader, %bb.i
  %.3235 = phi i32 [ 0, %.preheader237.preheader ], [ %.2234322, %bb.i ] ; 3 uses
  %.sroa.0172.3 = phi ptr [ %i.gd, %.preheader237.preheader ], [ %.sroa.0172.2327, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.ge, %.preheader237.preheader ], [ %.2329, %bb.i ] ; 3 uses
  %i.gf = sub nsw i32 %i.du, %.3235               ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = add nsw i32 %i.gf, %.046328
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.dt) ; 4 uses
  %.not50309 = icmp eq i32 %.046328, %.sroa.speculated
  br i1 %.not50309, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gi = add i32 %.3235, %.sroa.speculated
  %i.gj = sub i32 %i.gi, %.046328
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147315 = phi i32 [ %i.gm, %bb.k ], [ %.046328, %.preheader.preheader ] ; 2 uses
  %.sroa.63162.3314 = phi i32 [ %.sroa.63162.5, %bb.k ], [ %.sroa.63162.2326, %.preheader.preheader ]
  %.sroa.51152.3313 = phi i32 [ %.sroa.51152.5, %bb.k ], [ %.sroa.51152.2325, %.preheader.preheader ]
  %.sroa.0125.3312 = phi i64 [ %.sroa.0125.6, %bb.k ], [ %.sroa.0125.2324, %.preheader.preheader ]
  %.sroa.18.3311 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2323, %.preheader.preheader ]
  %i.gk = shl nsw i32 %.147315, 2
  %i.gl = zext i32 %i.gk to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gm = add nsw i32 %.147315, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gm, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !337

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.63162.4307 = phi i32 [ %.sroa.63162.3314, %.preheader ], [ %.sroa.63162.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51152.4304 = phi i32 [ %.sroa.51152.3313, %.preheader ], [ %.sroa.51152.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0125.4303 = phi i64 [ %.sroa.0125.3312, %.preheader ], [ %.sroa.0125.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4302 = phi i32 [ %.sroa.18.3311, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !176 ; 8 uses
  %i.gp = icmp samesign ult i32 %.sroa.18.4302, 65
  call void @llvm.assume(i1 %i.gp)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4302, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gq = add nuw nsw i32 %.sroa.51152.4304, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gq, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gr = zext nneg i32 %.sroa.51152.4304 to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gt = icmp samesign ugt i32 %.sroa.51152.4304, %i.dm
  br i1 %i.gt, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51152.4304) ; 3 uses
  %i.gu = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %i.gu)
  %i.gv = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gv, 9
  call void @llvm.assume(i1 %i.gw)
  %i.gx = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gx
  %i.gz = zext nneg i32 %i.gv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.gy, i64 %i.gz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.q, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.q ], [ %i.gs, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.ha = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.hb = icmp ne i8 %i.ha, -1
  %i.hc = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hd = trunc i64 %i.hc to i8                   ; 3 uses
  %i.he = icmp ne i8 %i.hd, -1
  %i.hf = and i1 %i.hb, %i.he
  %i.hg = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hh = trunc i64 %i.hg to i8                   ; 2 uses
  %i.hi = icmp ne i8 %i.hh, -1
  %i.hj = and i1 %i.hi, %i.hf
  %i.hk = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hl = icmp ne i64 %i.hk, 4278190080
  %i.hm = and i1 %i.hl, %i.hj
  br i1 %i.hm, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hn = zext nneg i32 %.sroa.18.4302 to i64     ; 8 uses
  %i.ho = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.hn, 8
  %i.hp = sub nuw nsw i64 56, %i.hn
  %i.hq = shl nuw i64 %i.ho, %i.hp
  %i.hr = or i64 %i.hq, %.sroa.0125.4303          ; 2 uses
  %.not.i77 = icmp eq i8 %i.ha, -1
  br i1 %.not.i77, label %bb.s, label %bb.u

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hs = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.ht = call i32 @llvm.bswap.i32(i32 %i.hs)
  %i.hu = zext i32 %i.ht to i64
  %i.hv = sub nuw nsw i32 32, %.sroa.18.4302
end_hunk_3
