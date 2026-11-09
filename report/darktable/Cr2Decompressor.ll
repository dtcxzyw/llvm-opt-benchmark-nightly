Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2Decompressor?download=true
inline.NumInlined: 634
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi2EEEjv:bb.a
  %.sroa.63161.1.lcssa = phi i32 [ %.sroa.63161.0365, %bb.d ], [ %.sroa.63161.0365, %.lr.ph346 ], [ %i.fr, %._crit_edge ] ; 3 uses
  %.sroa.0171.1.lcssa = phi ptr [ %.sroa.0171.0366, %bb.d ], [ %.sroa.0171.0366, %.lr.ph346 ], [ %.sroa.0171.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0367, %bb.d ], [ %.0367, %.lr.ph346 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ds, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre394 = load i32, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre395 = load ptr, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre396 = load i32, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre397 = load i32, ptr %.sroa.8109.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge347
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre395, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dv = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.el, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dw = phi i32 [ %.pre396, %.lr.ph.i.i57 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %i.dx = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %.02.i.i = phi i64 [ %i.dt, %.lr.ph.i.i57 ], [ %i.dy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.dy = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dz = icmp slt i32 %i.dw, %i.dv
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i32 %i.dw, 1                ; 3 uses
  %i.eb = icmp eq i32 %i.ea, %i.dv
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.eb, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre395, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ec = load i64, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ec, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !18
  %i.ee = sub nsw i32 %i.ed, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %i.eg = sub nsw i32 %.pre394, %i.dx             ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ee) ; 2 uses
  %i.ei = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dx ; 5 uses
  store i32 %i.ei, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  %i.ej = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ej to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ec, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19
  %i.ek = icmp sgt i32 %i.ei, -1
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i32, ptr %.pre395, align 4, !tbaa !16 ; 2 uses
  %i.em = icmp slt i32 %i.dw, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp sle i32 %i.ei, %.pre394
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i32 %i.ei, %.pre394
  %i.ep = trunc i64 %i.ec to i32
  br i1 %i.eo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ea, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = phi i32 [ %i.ea, %bb.f ], [ %i.dw, %bb.e ] ; 2 uses
  %i.er = phi i32 [ 0, %bb.f ], [ %i.ei, %bb.e ]  ; 2 uses
  %i.es = load i32, ptr %i.du, align 4, !tbaa !18
  %i.et = icmp eq i32 %i.ej, %i.es
  br i1 %i.et, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dk, align 4, !tbaa !172
  %i.eu = add nsw i32 %.0.i.i.i.i.i.i.i, %i.ep
  store i32 %i.eu, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge347
  %i.ev = phi i32 [ %.pre397, %._crit_edge347 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ew = phi i32 [ %.pre396, %._crit_edge347 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ex = load ptr, ptr %.sroa.9111.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bq
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.10112.0..sroa_idx, align 8, !tbaa !168
  %i.fa = icmp eq i32 %i.ez, %i.bp
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.11114.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.fc = icmp eq ptr %i.fb, %i.bl
  call void @llvm.assume(i1 %i.fc)
  %i.fd = load i32, ptr %.sroa.12115.0..sroa_idx, align 8, !tbaa !170
  %i.fe = icmp eq i32 %i.fd, %spec.select201.i.i
  %i.ff = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fg = icmp eq i32 %i.ff, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq ptr %.pre, %i.bq
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i32 %.pre394, %i.bp
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq ptr %.pre395, %i.bl
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i32 %i.ew, %spec.select201.i.i
  %i.fl = icmp eq i32 %i.ev, %spec.select200.i.i
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %._crit_edge369, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph346.split, %._crit_edge
  %.1344 = phi i32 [ %.0367, %.lr.ph346.split ], [ %.3, %._crit_edge ]
  %.045343 = phi i32 [ %.sroa.086.4.extract.trunc, %.lr.ph346.split ], [ %i.fs, %._crit_edge ] ; 3 uses
  %.sroa.0171.1342 = phi ptr [ %.sroa.0171.0366, %.lr.ph346.split ], [ %.sroa.0171.3, %._crit_edge ]
  %.sroa.63161.1341 = phi i32 [ %.sroa.63161.0365, %.lr.ph346.split ], [ %i.fr, %._crit_edge ]
  %.sroa.51151.1340 = phi i32 [ %.sroa.51151.0364, %.lr.ph346.split ], [ %.sroa.51151.3.lcssa, %._crit_edge ]
  %.sroa.0124.1339 = phi i64 [ %.sroa.0124.0363, %.lr.ph346.split ], [ %.sroa.0124.3.lcssa, %._crit_edge ]
  %.sroa.18.1338 = phi i32 [ %.sroa.18.0362, %.lr.ph346.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1232337 = phi i32 [ %.0231361, %.lr.ph346.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fn = icmp samesign ult i32 %.045343, %i.j    ; 2 uses
  %i.fo = mul nuw nsw i32 %.045343, %i.m
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3234, %bb.j ], [ %i.gi, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2322, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0124.3.lcssa = phi i64 [ %.sroa.0124.2323, %bb.j ], [ %.sroa.0124.6, %bb.k ] ; 3 uses
  %.sroa.51151.3.lcssa = phi i32 [ %.sroa.51151.2324, %bb.j ], [ %.sroa.51151.5, %bb.k ] ; 3 uses
  %.sroa.63161.3.lcssa = phi i32 [ %.sroa.63161.2325, %bb.j ], [ %.sroa.63161.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046327, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fr = freeze i32 %.sroa.63161.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dq
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !249

._crit_edge:                                      ; preds = %.loopexit
  %i.fs = add nsw i32 %.045343, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fs, %i.dp
  br i1 %.not, label %._crit_edge347, label %.lr.ph, !llvm.loop !250

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2328 = phi i32 [ %.1344, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046327 = phi i32 [ %.sroa.086.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0171.2326 = phi ptr [ %.sroa.0171.1342, %.lr.ph ], [ %.sroa.0171.3, %.loopexit ] ; 3 uses
  %.sroa.63161.2325 = phi i32 [ %.sroa.63161.1341, %.lr.ph ], [ %i.fr, %.loopexit ] ; 2 uses
  %.sroa.51151.2324 = phi i32 [ %.sroa.51151.1340, %.lr.ph ], [ %.sroa.51151.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0124.2323 = phi i64 [ %.sroa.0124.1339, %.lr.ph ], [ %.sroa.0124.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2322 = phi i32 [ %.sroa.18.1338, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2233321 = phi i32 [ %.1232337, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.ft = icmp sge i32 %i.dr, %.2233321
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i32 %i.dr, %.2233321
  br i1 %i.fu, label %.preheader236.preheader, label %bb.j

.preheader236.preheader:                          ; preds = %bb.i
  %i.fv = load i16, ptr %.sroa.0171.2326, align 2, !tbaa !157
  store i16 %i.fv, ptr %6, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0171.2326, i64 8
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !157
  store <2 x i16> %i.fx, ptr %i.dm, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fn)
  %i.fy = icmp samesign ule i32 %.046327, %i.h
  call void @llvm.assume(i1 %i.fy)
  %i.fz = mul nuw nsw i32 %.046327, 6             ; 2 uses
  %i.ga = icmp ule i32 %i.fz, %invariant.op
  call void @llvm.assume(i1 %i.ga)
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.gb
  %i.gd = add nsw i32 %.2328, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader236.preheader, %bb.i
  %.3234 = phi i32 [ 0, %.preheader236.preheader ], [ %.2233321, %bb.i ] ; 3 uses
  %.sroa.0171.3 = phi ptr [ %i.gc, %.preheader236.preheader ], [ %.sroa.0171.2326, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.gd, %.preheader236.preheader ], [ %.2328, %bb.i ] ; 3 uses
  %i.ge = sub nsw i32 %i.dr, %.3234               ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nsw i32 %i.ge, %.046327
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.dq) ; 4 uses
  %.not50308 = icmp eq i32 %.046327, %.sroa.speculated
  br i1 %.not50308, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gh = add i32 %.3234, %.sroa.speculated
  %i.gi = sub i32 %i.gh, %.046327
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147314 = phi i32 [ %i.gl, %bb.k ], [ %.046327, %.preheader.preheader ] ; 2 uses
  %.sroa.63161.3313 = phi i32 [ %.sroa.63161.5, %bb.k ], [ %.sroa.63161.2325, %.preheader.preheader ]
  %.sroa.51151.3312 = phi i32 [ %.sroa.51151.5, %bb.k ], [ %.sroa.51151.2324, %.preheader.preheader ]
  %.sroa.0124.3311 = phi i64 [ %.sroa.0124.6, %bb.k ], [ %.sroa.0124.2323, %.preheader.preheader ]
  %.sroa.18.3310 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2322, %.preheader.preheader ]
  %i.gj = mul nuw nsw i32 %.147314, 6
  %i.gk = zext nneg i32 %i.gj to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gl = add nsw i32 %.147314, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gl, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !251

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.63161.4306 = phi i32 [ %.sroa.63161.3313, %.preheader ], [ %.sroa.63161.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51151.4303 = phi i32 [ %.sroa.51151.3312, %.preheader ], [ %.sroa.51151.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0124.4302 = phi i64 [ %.sroa.0124.3311, %.preheader ], [ %.sroa.0124.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4301 = phi i32 [ %.sroa.18.3310, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = call i32 @llvm.usub.sat.i32(i32 %i.gm, i32 3)
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !176 ; 8 uses
  %i.gr = icmp samesign ult i32 %.sroa.18.4301, 65
  call void @llvm.assume(i1 %i.gr)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4301, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gs = add nuw nsw i32 %.sroa.51151.4303, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gs, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gt = zext nneg i32 %.sroa.51151.4303 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gv = icmp samesign ugt i32 %.sroa.51151.4303, %i.di
  br i1 %i.gv, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51151.4303) ; 3 uses
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
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.hc = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255 ; 2 uses
  %i.hd = icmp ne i64 %i.hc, 255                  ; 2 uses
  %i.he = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hf = trunc i64 %i.he to i8                   ; 3 uses
  %i.hg = icmp ne i8 %i.hf, -1
  %i.hh = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hi = trunc i64 %i.hh to i8                   ; 2 uses
  %i.hj = icmp ne i8 %i.hi, -1
  %i.hk = and i1 %i.hg, %i.hj
  %i.hl = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hm = icmp ne i64 %i.hl, 4278190080
  %i.hn = and i1 %i.hm, %i.hk
  %i.ho = and i1 %i.hd, %i.hn
  br i1 %i.ho, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hp = zext nneg i32 %.sroa.18.4301 to i64     ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.hp, 8
  %i.hq = sub nuw nsw i64 56, %i.hp
  %i.hr = shl nuw i64 %i.hc, %i.hq
  %i.hs = or i64 %i.hr, %.sroa.0124.4302          ; 2 uses
  br i1 %i.hd, label %bb.u, label %bb.s

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.ht = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hu = call i32 @llvm.bswap.i32(i32 %i.ht)
  %i.hv = zext i32 %i.hu to i64
  %i.hw = sub nuw nsw i32 32, %.sroa.18.4301
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl nuw i64 %i.hv, %i.hx
  %i.hz = or i64 %i.hy, %.sroa.0124.4302
  %i.ia = or disjoint i32 %.sroa.18.4301, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.ib = icmp eq i8 %i.hf, 0
  br i1 %i.ib, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg373 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.it, %bb.x ], [ %i.je, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.hp, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i77 = phi i64 [ %i.hs, %bb.s ], [ %i.in, %bb.v ], [ %i.ja, %bb.x ], [ %i.jl, %bb.z ]
  %i.ic = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51151.4303
  %i.id = icmp slt i32 %.sroa.63161.4306, 0
  call void @llvm.assume(i1 %i.id)
  %i.ie = lshr i64 -1, %.lcssa66.wide.i
  %i.if = xor i64 %i.ie, -1
  %i.ig = and i64 %.lcssa.i77, %i.if
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51151.4303
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg373 ; 2 uses
  %i.ih = add nuw nsw i32 %reass.sub.i, 4
  %i.ii = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.ii)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.ij = phi i8 [ %i.hf, %.preheader.i ], [ %i.hi, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.ik = zext i8 %i.ij to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.hp, 16
  %i.il = sub nuw nsw i64 48, %i.hp
  %i.im = shl nuw nsw i64 %i.ik, %i.il
  %i.in = or i64 %i.im, %i.hs                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ij, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.io = zext nneg i32 %.2.ph.i to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !150
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.it = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %i.iu ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !150 ; 2 uses
  %i.ix = zext i8 %i.iw to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.hp, 24
  %i.iy = sub nuw nsw i64 40, %i.hp
  %i.iz = shl nuw nsw i64 %i.ix, %i.iy
  %i.ja = or i64 %i.iz, %i.in                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.iw, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !150
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink73.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.je = add nuw nsw i32 %.sink73.i, %i.it       ; 3 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !150 ; 2 uses
  %i.ji = zext i8 %i.jh to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4301, 32
  %i.jj = sub nuw nsw i64 32, %i.hp
  %i.jk = shl nuw nsw i64 %i.ji, %i.jj
  %i.jl = or i64 %i.jk, %i.ja                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.jh, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !150
  %i.jo = icmp eq i8 %i.jn, 0
  br i1 %i.jo, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink74.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.jp = add nuw nsw i32 %.sink74.i, %i.je
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0124.11 = phi i64 [ %i.jl, %.loopexit.i ], [ %i.ig, %bb.t ]
  %.sroa.63161.6 = phi i32 [ %.sroa.63161.4306, %.loopexit.i ], [ %i.ic, %bb.t ]
  %.3.i = phi i32 [ %i.jp, %.loopexit.i ], [ %i.ih, %bb.t ] ; 2 uses
  %i.jq = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.jq)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.ia, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0124.12 = phi i64 [ %i.hz, %bb.r ], [ %.sroa.0124.11, %bb.aa ]
  %.sroa.63161.7 = phi i32 [ %.sroa.63161.4306, %bb.r ], [ %.sroa.63161.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.jr = add nuw nsw i32 %.021.i, %.sroa.51151.4303
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

end_hunk_0
begin_hunk_1_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi1EEEjv:bb.a
  %.sroa.63161.1.lcssa = phi i32 [ %.sroa.63161.0365, %bb.d ], [ %.sroa.63161.0365, %.lr.ph346 ], [ %i.fr, %._crit_edge ] ; 3 uses
  %.sroa.0171.1.lcssa = phi ptr [ %.sroa.0171.0366, %bb.d ], [ %.sroa.0171.0366, %.lr.ph346 ], [ %.sroa.0171.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0367, %bb.d ], [ %.0367, %.lr.ph346 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.ds, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre394 = load i32, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre395 = load ptr, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre396 = load i32, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre397 = load i32, ptr %.sroa.8109.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge347
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre395, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dv = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.el, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dw = phi i32 [ %.pre396, %.lr.ph.i.i57 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %i.dx = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %.02.i.i = phi i64 [ %i.dt, %.lr.ph.i.i57 ], [ %i.dy, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.dy = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dz = icmp slt i32 %i.dw, %i.dv
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i32 %i.dw, 1                ; 3 uses
  %i.eb = icmp eq i32 %i.ea, %i.dv
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.eb, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre395, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ec = load i64, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ec, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !18
  %i.ee = sub nsw i32 %i.ed, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.ef)
  %i.eg = sub nsw i32 %.pre394, %i.dx             ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.eg, i32 %i.ee) ; 2 uses
  %i.ei = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dx ; 5 uses
  store i32 %i.ei, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  %i.ej = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ej to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ec, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19
  %i.ek = icmp sgt i32 %i.ei, -1
  call void @llvm.assume(i1 %i.ek)
  %i.el = load i32, ptr %.pre395, align 4, !tbaa !16 ; 2 uses
  %i.em = icmp slt i32 %i.dw, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp sle i32 %i.ei, %.pre394
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp eq i32 %i.ei, %.pre394
  %i.ep = trunc i64 %i.ec to i32
  br i1 %i.eo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ea, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eq = phi i32 [ %i.ea, %bb.f ], [ %i.dw, %bb.e ] ; 2 uses
  %i.er = phi i32 [ 0, %bb.f ], [ %i.ei, %bb.e ]  ; 2 uses
  %i.es = load i32, ptr %i.du, align 4, !tbaa !18
  %i.et = icmp eq i32 %i.ej, %i.es
  br i1 %i.et, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dk, align 4, !tbaa !172
  %i.eu = add nsw i32 %.0.i.i.i.i.i.i.i, %i.ep
  store i32 %i.eu, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge347
  %i.ev = phi i32 [ %.pre397, %._crit_edge347 ], [ %i.er, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ew = phi i32 [ %.pre396, %._crit_edge347 ], [ %i.eq, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ex = load ptr, ptr %.sroa.9111.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bq
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.10112.0..sroa_idx, align 8, !tbaa !168
  %i.fa = icmp eq i32 %i.ez, %i.bp
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %.sroa.11114.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.fc = icmp eq ptr %i.fb, %i.bl
  call void @llvm.assume(i1 %i.fc)
  %i.fd = load i32, ptr %.sroa.12115.0..sroa_idx, align 8, !tbaa !170
  %i.fe = icmp eq i32 %i.fd, %spec.select201.i.i
  %i.ff = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fg = icmp eq i32 %i.ff, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq ptr %.pre, %i.bq
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp eq i32 %.pre394, %i.bp
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq ptr %.pre395, %i.bl
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i32 %i.ew, %spec.select201.i.i
  %i.fl = icmp eq i32 %i.ev, %spec.select200.i.i
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %._crit_edge369, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph346.split, %._crit_edge
  %.1344 = phi i32 [ %.0367, %.lr.ph346.split ], [ %.3, %._crit_edge ]
  %.045343 = phi i32 [ %.sroa.086.4.extract.trunc, %.lr.ph346.split ], [ %i.fs, %._crit_edge ] ; 3 uses
  %.sroa.0171.1342 = phi ptr [ %.sroa.0171.0366, %.lr.ph346.split ], [ %.sroa.0171.3, %._crit_edge ]
  %.sroa.63161.1341 = phi i32 [ %.sroa.63161.0365, %.lr.ph346.split ], [ %i.fr, %._crit_edge ]
  %.sroa.51151.1340 = phi i32 [ %.sroa.51151.0364, %.lr.ph346.split ], [ %.sroa.51151.3.lcssa, %._crit_edge ]
  %.sroa.0124.1339 = phi i64 [ %.sroa.0124.0363, %.lr.ph346.split ], [ %.sroa.0124.3.lcssa, %._crit_edge ]
  %.sroa.18.1338 = phi i32 [ %.sroa.18.0362, %.lr.ph346.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1232337 = phi i32 [ %.0231361, %.lr.ph346.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fn = icmp samesign ult i32 %.045343, %i.j    ; 2 uses
  %i.fo = mul nuw nsw i32 %.045343, %i.m
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3234, %bb.j ], [ %i.gi, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2322, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0124.3.lcssa = phi i64 [ %.sroa.0124.2323, %bb.j ], [ %.sroa.0124.6, %bb.k ] ; 3 uses
  %.sroa.51151.3.lcssa = phi i32 [ %.sroa.51151.2324, %bb.j ], [ %.sroa.51151.5, %bb.k ] ; 3 uses
  %.sroa.63161.3.lcssa = phi i32 [ %.sroa.63161.2325, %bb.j ], [ %.sroa.63161.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046327, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fr = freeze i32 %.sroa.63161.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dq
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !280

._crit_edge:                                      ; preds = %.loopexit
  %i.fs = add nsw i32 %.045343, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fs, %i.dp
  br i1 %.not, label %._crit_edge347, label %.lr.ph, !llvm.loop !281

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2328 = phi i32 [ %.1344, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046327 = phi i32 [ %.sroa.086.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0171.2326 = phi ptr [ %.sroa.0171.1342, %.lr.ph ], [ %.sroa.0171.3, %.loopexit ] ; 3 uses
  %.sroa.63161.2325 = phi i32 [ %.sroa.63161.1341, %.lr.ph ], [ %i.fr, %.loopexit ] ; 2 uses
  %.sroa.51151.2324 = phi i32 [ %.sroa.51151.1340, %.lr.ph ], [ %.sroa.51151.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0124.2323 = phi i64 [ %.sroa.0124.1339, %.lr.ph ], [ %.sroa.0124.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2322 = phi i32 [ %.sroa.18.1338, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2233321 = phi i32 [ %.1232337, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.ft = icmp sge i32 %i.dr, %.2233321
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp eq i32 %i.dr, %.2233321
  br i1 %i.fu, label %.preheader236.preheader, label %bb.j

.preheader236.preheader:                          ; preds = %bb.i
  %i.fv = load i16, ptr %.sroa.0171.2326, align 2, !tbaa !157
  store i16 %i.fv, ptr %6, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0171.2326, i64 4
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !157
  store <2 x i16> %i.fx, ptr %i.dm, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fn)
  %i.fy = icmp samesign ule i32 %.046327, %i.h
  call void @llvm.assume(i1 %i.fy)
  %i.fz = shl nuw nsw i32 %.046327, 2             ; 2 uses
  %i.ga = icmp ule i32 %i.fz, %invariant.op
  call void @llvm.assume(i1 %i.ga)
  %i.gb = zext nneg i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.gb
  %i.gd = add nsw i32 %.2328, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader236.preheader, %bb.i
  %.3234 = phi i32 [ 0, %.preheader236.preheader ], [ %.2233321, %bb.i ] ; 3 uses
  %.sroa.0171.3 = phi ptr [ %i.gc, %.preheader236.preheader ], [ %.sroa.0171.2326, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.gd, %.preheader236.preheader ], [ %.2328, %bb.i ] ; 3 uses
  %i.ge = sub nsw i32 %i.dr, %.3234               ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nsw i32 %i.ge, %.046327
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.dq) ; 4 uses
  %.not50308 = icmp eq i32 %.046327, %.sroa.speculated
  br i1 %.not50308, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gh = add i32 %.3234, %.sroa.speculated
  %i.gi = sub i32 %i.gh, %.046327
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147314 = phi i32 [ %i.gl, %bb.k ], [ %.046327, %.preheader.preheader ] ; 2 uses
  %.sroa.63161.3313 = phi i32 [ %.sroa.63161.5, %bb.k ], [ %.sroa.63161.2325, %.preheader.preheader ]
  %.sroa.51151.3312 = phi i32 [ %.sroa.51151.5, %bb.k ], [ %.sroa.51151.2324, %.preheader.preheader ]
  %.sroa.0124.3311 = phi i64 [ %.sroa.0124.6, %bb.k ], [ %.sroa.0124.2323, %.preheader.preheader ]
  %.sroa.18.3310 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2322, %.preheader.preheader ]
  %i.gj = shl nuw nsw i32 %.147314, 2
  %i.gk = zext nneg i32 %i.gj to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gl = add nsw i32 %.147314, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gl, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !282

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.63161.4306 = phi i32 [ %.sroa.63161.3313, %.preheader ], [ %.sroa.63161.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51151.4303 = phi i32 [ %.sroa.51151.3312, %.preheader ], [ %.sroa.51151.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0124.4302 = phi i64 [ %.sroa.0124.3311, %.preheader ], [ %.sroa.0124.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4301 = phi i32 [ %.sroa.18.3310, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = call i32 @llvm.usub.sat.i32(i32 %i.gm, i32 1)
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !176 ; 8 uses
  %i.gr = icmp samesign ult i32 %.sroa.18.4301, 65
  call void @llvm.assume(i1 %i.gr)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4301, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gs = add nuw nsw i32 %.sroa.51151.4303, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gs, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gt = zext nneg i32 %.sroa.51151.4303 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gv = icmp samesign ugt i32 %.sroa.51151.4303, %i.di
  br i1 %i.gv, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51151.4303) ; 3 uses
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
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.hc = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255 ; 2 uses
  %i.hd = icmp ne i64 %i.hc, 255                  ; 2 uses
  %i.he = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hf = trunc i64 %i.he to i8                   ; 3 uses
  %i.hg = icmp ne i8 %i.hf, -1
  %i.hh = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hi = trunc i64 %i.hh to i8                   ; 2 uses
  %i.hj = icmp ne i8 %i.hi, -1
  %i.hk = and i1 %i.hg, %i.hj
  %i.hl = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hm = icmp ne i64 %i.hl, 4278190080
  %i.hn = and i1 %i.hm, %i.hk
  %i.ho = and i1 %i.hd, %i.hn
  br i1 %i.ho, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hp = zext nneg i32 %.sroa.18.4301 to i64     ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.hp, 8
  %i.hq = sub nuw nsw i64 56, %i.hp
  %i.hr = shl nuw i64 %i.hc, %i.hq
  %i.hs = or i64 %i.hr, %.sroa.0124.4302          ; 2 uses
  br i1 %i.hd, label %bb.u, label %bb.s

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.ht = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hu = call i32 @llvm.bswap.i32(i32 %i.ht)
  %i.hv = zext i32 %i.hu to i64
  %i.hw = sub nuw nsw i32 32, %.sroa.18.4301
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl nuw i64 %i.hv, %i.hx
  %i.hz = or i64 %i.hy, %.sroa.0124.4302
  %i.ia = or disjoint i32 %.sroa.18.4301, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.ib = icmp eq i8 %i.hf, 0
  br i1 %i.ib, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg373 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.it, %bb.x ], [ %i.je, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.hp, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i77 = phi i64 [ %i.hs, %bb.s ], [ %i.in, %bb.v ], [ %i.ja, %bb.x ], [ %i.jl, %bb.z ]
  %i.ic = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51151.4303
  %i.id = icmp slt i32 %.sroa.63161.4306, 0
  call void @llvm.assume(i1 %i.id)
  %i.ie = lshr i64 -1, %.lcssa66.wide.i
  %i.if = xor i64 %i.ie, -1
  %i.ig = and i64 %.lcssa.i77, %i.if
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51151.4303
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg373 ; 2 uses
  %i.ih = add nuw nsw i32 %reass.sub.i, 4
  %i.ii = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.ii)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.ij = phi i8 [ %i.hf, %.preheader.i ], [ %i.hi, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.ik = zext i8 %i.ij to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.hp, 16
  %i.il = sub nuw nsw i64 48, %i.hp
  %i.im = shl nuw nsw i64 %i.ik, %i.il
  %i.in = or i64 %i.im, %i.hs                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ij, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.io = zext nneg i32 %.2.ph.i to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !150
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.it = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %i.iu ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !150 ; 2 uses
  %i.ix = zext i8 %i.iw to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.hp, 24
  %i.iy = sub nuw nsw i64 40, %i.hp
  %i.iz = shl nuw nsw i64 %i.ix, %i.iy
  %i.ja = or i64 %i.iz, %i.in                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.iw, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !150
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink73.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.je = add nuw nsw i32 %.sink73.i, %i.it       ; 3 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !150 ; 2 uses
  %i.ji = zext i8 %i.jh to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4301, 32
  %i.jj = sub nuw nsw i64 32, %i.hp
  %i.jk = shl nuw nsw i64 %i.ji, %i.jj
  %i.jl = or i64 %i.jk, %i.ja                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.jh, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !150
  %i.jo = icmp eq i8 %i.jn, 0
  br i1 %i.jo, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink74.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.jp = add nuw nsw i32 %.sink74.i, %i.je
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0124.11 = phi i64 [ %i.jl, %.loopexit.i ], [ %i.ig, %bb.t ]
  %.sroa.63161.6 = phi i32 [ %.sroa.63161.4306, %.loopexit.i ], [ %i.ic, %bb.t ]
  %.3.i = phi i32 [ %i.jp, %.loopexit.i ], [ %i.ih, %bb.t ] ; 2 uses
  %i.jq = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.jq)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.ia, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0124.12 = phi i64 [ %i.hz, %bb.r ], [ %.sroa.0124.11, %bb.aa ]
  %.sroa.63161.7 = phi i32 [ %.sroa.63161.4306, %bb.r ], [ %.sroa.63161.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.jr = add nuw nsw i32 %.021.i, %.sroa.51151.4303
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

end_hunk_1
begin_hunk_2_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi2ELi1ELi1EEEjv:bb.a
  %.sroa.0173.1.lcssa = phi ptr [ %.sroa.0173.0368, %bb.d ], [ %.sroa.0173.0368, %.lr.ph348 ], [ %.sroa.0173.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0369, %bb.d ], [ %.0369, %.lr.ph348 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.do = load i32, ptr %i.dg, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.do, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !167   ; 2 uses
  %.pre396 = load i32, ptr %.sroa.4105.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre397 = load ptr, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre398 = load i32, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre399 = load i32, ptr %.sroa.8111.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %._crit_edge349
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre397, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %.lr.ph.i.i59
  %i.dr = phi i32 [ %.pre3.i.i, %.lr.ph.i.i59 ], [ %i.eh, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %i.ds = phi i32 [ %.pre398, %.lr.ph.i.i59 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 4 uses
  %i.dt = phi i32 [ %.pre399, %.lr.ph.i.i59 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ] ; 2 uses
  %.02.i.i = phi i64 [ %i.dp, %.lr.ph.i.i59 ], [ %i.du, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.du = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.dv = icmp slt i32 %i.ds, %i.dr
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i32 %i.ds, 1                ; 3 uses
  %i.dx = icmp eq i32 %i.dw, %i.dr
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.dx, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre397, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.dy = load i64, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.dy, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ea = sub nsw i32 %i.dz, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = sub nsw i32 %.pre396, %i.dt             ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 2 uses
  %i.ee = add nsw i32 %.sroa.speculated.i.i.i.i, %i.dt ; 5 uses
  store i32 %i.ee, ptr %.sroa.8111.0..sroa_idx, align 8, !tbaa !171
  %i.ef = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.ef to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.dy, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !19
  %i.eg = icmp sgt i32 %i.ee, -1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = load i32, ptr %.pre397, align 4, !tbaa !16 ; 2 uses
  %i.ei = icmp slt i32 %i.ds, %i.eh
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp sle i32 %i.ee, %.pre396
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp eq i32 %i.ee, %.pre396
  %i.el = trunc i64 %i.dy to i32
  br i1 %i.ek, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.dw, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8111.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.em = phi i32 [ %i.dw, %bb.f ], [ %i.ds, %bb.e ] ; 2 uses
  %i.en = phi i32 [ 0, %bb.f ], [ %i.ee, %bb.e ]  ; 2 uses
  %i.eo = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ep = icmp eq i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.dh, align 4, !tbaa !172
  %i.eq = add nsw i32 %.0.i.i.i.i.i.i.i, %i.el
  store i32 %i.eq, ptr %.sroa.7110.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61, %._crit_edge349
  %i.er = phi i32 [ %.pre399, %._crit_edge349 ], [ %i.en, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  %i.es = phi i32 [ %.pre398, %._crit_edge349 ], [ %i.em, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.et = load ptr, ptr %.sroa.9113.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.eu = icmp eq ptr %i.et, %i.bn
  call void @llvm.assume(i1 %i.eu)
  %i.ev = load i32, ptr %.sroa.10114.0..sroa_idx, align 8, !tbaa !168
  %i.ew = icmp eq i32 %i.ev, %i.bm
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load ptr, ptr %.sroa.11116.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.ey = icmp eq ptr %i.ex, %i.bi
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i32, ptr %.sroa.12117.0..sroa_idx, align 8, !tbaa !170
  %i.fa = icmp eq i32 %i.ez, %spec.select201.i.i
  %i.fb = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fc = icmp eq i32 %i.fb, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq ptr %.pre, %i.bn
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i32 %.pre396, %i.bm
  call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp eq ptr %.pre397, %i.bi
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i32 %i.es, %spec.select201.i.i
  %i.fh = icmp eq i32 %i.er, %spec.select200.i.i
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %._crit_edge371, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph348.split, %._crit_edge
  %.1346 = phi i32 [ %.0369, %.lr.ph348.split ], [ %.3, %._crit_edge ]
  %.045345 = phi i32 [ %.sroa.088.4.extract.trunc, %.lr.ph348.split ], [ %i.fo, %._crit_edge ] ; 3 uses
  %.sroa.0173.1344 = phi ptr [ %.sroa.0173.0368, %.lr.ph348.split ], [ %.sroa.0173.3, %._crit_edge ]
  %.sroa.63163.1343 = phi i32 [ %.sroa.63163.0367, %.lr.ph348.split ], [ %i.fn, %._crit_edge ]
  %.sroa.51153.1342 = phi i32 [ %.sroa.51153.0366, %.lr.ph348.split ], [ %.sroa.51153.3.lcssa, %._crit_edge ]
  %.sroa.0126.1341 = phi i64 [ %.sroa.0126.0365, %.lr.ph348.split ], [ %.sroa.0126.3.lcssa, %._crit_edge ]
  %.sroa.18.1340 = phi i32 [ %.sroa.18.0364, %.lr.ph348.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1234339 = phi i32 [ %.0233363, %.lr.ph348.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fj = icmp samesign ult i32 %.045345, %i.j    ; 2 uses
  %i.fk = mul nuw nsw i32 %.045345, %i.m
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fl ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3236, %bb.j ], [ %i.gc, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2324, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0126.3.lcssa = phi i64 [ %.sroa.0126.2325, %bb.j ], [ %.sroa.0126.6, %bb.k ] ; 3 uses
  %.sroa.51153.3.lcssa = phi i32 [ %.sroa.51153.2326, %bb.j ], [ %.sroa.51153.5, %bb.k ] ; 3 uses
  %.sroa.63163.3.lcssa = phi i32 [ %.sroa.63163.2327, %bb.j ], [ %.sroa.63163.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046329, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fn = freeze i32 %.sroa.63163.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dm
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !307

._crit_edge:                                      ; preds = %.loopexit
  %i.fo = add nsw i32 %.045345, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fo, %i.dl
  br i1 %.not, label %._crit_edge349, label %.lr.ph, !llvm.loop !308

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2330 = phi i32 [ %.1346, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046329 = phi i32 [ %.sroa.088.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0173.2328 = phi ptr [ %.sroa.0173.1344, %.lr.ph ], [ %.sroa.0173.3, %.loopexit ] ; 2 uses
  %.sroa.63163.2327 = phi i32 [ %.sroa.63163.1343, %.lr.ph ], [ %i.fn, %.loopexit ] ; 2 uses
  %.sroa.51153.2326 = phi i32 [ %.sroa.51153.1342, %.lr.ph ], [ %.sroa.51153.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0126.2325 = phi i64 [ %.sroa.0126.1341, %.lr.ph ], [ %.sroa.0126.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2324 = phi i32 [ %.sroa.18.1340, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2235323 = phi i32 [ %.1234339, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fp = icmp sge i32 %i.dn, %.2235323
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i32 %i.dn, %.2235323
  br i1 %i.fq, label %.preheader238.preheader, label %bb.j

.preheader238.preheader:                          ; preds = %bb.i
  %i.fr = load i32, ptr %.sroa.0173.2328, align 2, !tbaa !157 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.fr to i16
  store i16 %.sroa.0.sroa.0.0.extract.trunc, ptr %.sroa.0.sroa.0, align 4, !tbaa !157
  %.sroa.0.sroa.5.0.extract.shift = lshr i32 %i.fr, 16
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.0.sroa.5.0.extract.shift to i16
  store i16 %.sroa.0.sroa.5.0.extract.trunc, ptr %.sroa.0.sroa.5, align 2, !tbaa !157
  call void @llvm.assume(i1 %i.fj)
  %i.fs = icmp samesign ule i32 %.046329, %i.h
  call void @llvm.assume(i1 %i.fs)
  %i.ft = shl nuw nsw i32 %.046329, 1             ; 2 uses
  %i.fu = icmp ule i32 %i.ft, %invariant.op
  call void @llvm.assume(i1 %i.fu)
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fv
  %i.fx = add nsw i32 %.2330, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader238.preheader, %bb.i
  %.3236 = phi i32 [ 0, %.preheader238.preheader ], [ %.2235323, %bb.i ] ; 3 uses
  %.sroa.0173.3 = phi ptr [ %i.fw, %.preheader238.preheader ], [ %.sroa.0173.2328, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.fx, %.preheader238.preheader ], [ %.2330, %bb.i ] ; 3 uses
  %i.fy = sub nsw i32 %i.dn, %.3236               ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  call void @llvm.assume(i1 %i.fz)
  %i.ga = add nsw i32 %i.fy, %.046329
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ga, i32 %i.dm) ; 4 uses
  %.not50310 = icmp eq i32 %.046329, %.sroa.speculated
  br i1 %.not50310, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gb = add i32 %.3236, %.sroa.speculated
  %i.gc = sub i32 %i.gb, %.046329
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147316 = phi i32 [ %i.gf, %bb.k ], [ %.046329, %.preheader.preheader ] ; 2 uses
  %.sroa.63163.3315 = phi i32 [ %.sroa.63163.5, %bb.k ], [ %.sroa.63163.2327, %.preheader.preheader ]
  %.sroa.51153.3314 = phi i32 [ %.sroa.51153.5, %bb.k ], [ %.sroa.51153.2326, %.preheader.preheader ]
  %.sroa.0126.3313 = phi i64 [ %.sroa.0126.6, %bb.k ], [ %.sroa.0126.2325, %.preheader.preheader ]
  %.sroa.18.3312 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2324, %.preheader.preheader ]
  %i.gd = shl nuw nsw i32 %.147316, 1
  %i.ge = zext nneg i32 %i.gd to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gf = add nsw i32 %.147316, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gf, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !309

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gg = phi i1 [ true, %.preheader ], [ false, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %.sroa.0.sroa.0, %.preheader ], [ %.sroa.0.sroa.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 2 uses
  %indvars.iv.sroa.phi485.sroa.speculated = phi ptr [ %i.r, %.preheader ], [ %i.t, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ]
  %.sroa.63163.4308 = phi i32 [ %.sroa.63163.3315, %.preheader ], [ %.sroa.63163.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51153.4305 = phi i32 [ %.sroa.51153.3314, %.preheader ], [ %.sroa.51153.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0126.4304 = phi i64 [ %.sroa.0126.3313, %.preheader ], [ %.sroa.0126.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4303 = phi i32 [ %.sroa.18.3312, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gh = icmp samesign ult i32 %.sroa.18.4303, 65
  call void @llvm.assume(i1 %i.gh)
  %.not.i69 = icmp samesign ult i32 %.sroa.18.4303, 32
  br i1 %.not.i69, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gi = add nuw nsw i32 %.sroa.51153.4305, 8
  %.not.i.i70 = icmp samesign ugt i32 %i.gi, %.sroa.234.0.copyload
  br i1 %.not.i.i70, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gj = zext nneg i32 %.sroa.51153.4305 to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gj
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gl = icmp samesign ugt i32 %.sroa.51153.4305, %i.df
  br i1 %i.gl, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51153.4305) ; 3 uses
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
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.gs = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255 ; 2 uses
  %i.gt = icmp ne i64 %i.gs, 255                  ; 2 uses
  %i.gu = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.gv = trunc i64 %i.gu to i8                   ; 3 uses
  %i.gw = icmp ne i8 %i.gv, -1
  %i.gx = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.gy = trunc i64 %i.gx to i8                   ; 2 uses
  %i.gz = icmp ne i8 %i.gy, -1
  %i.ha = and i1 %i.gw, %i.gz
  %i.hb = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hc = icmp ne i64 %i.hb, 4278190080
  %i.hd = and i1 %i.hc, %i.ha
  %i.he = and i1 %i.gt, %i.hd
  br i1 %i.he, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hf = zext nneg i32 %.sroa.18.4303 to i64     ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.hf, 8
  %i.hg = sub nuw nsw i64 56, %i.hf
  %i.hh = shl nuw i64 %i.gs, %i.hg
  %i.hi = or i64 %i.hh, %.sroa.0126.4304          ; 2 uses
  br i1 %i.gt, label %bb.u, label %bb.s

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hj = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hk = call i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = zext i32 %i.hk to i64
  %i.hm = sub nuw nsw i32 32, %.sroa.18.4303
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = shl nuw i64 %i.hl, %i.hn
  %i.hp = or i64 %i.ho, %.sroa.0126.4304
  %i.hq = or disjoint i32 %.sroa.18.4303, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.hr = icmp eq i8 %i.gv, 0
  br i1 %i.hr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg375 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.ij, %bb.x ], [ %i.iu, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.hf, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i79 = phi i64 [ %i.hi, %bb.s ], [ %i.id, %bb.v ], [ %i.iq, %bb.x ], [ %i.jb, %bb.z ]
  %i.hs = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51153.4305
  %i.ht = icmp slt i32 %.sroa.63163.4308, 0
  call void @llvm.assume(i1 %i.ht)
  %i.hu = lshr i64 -1, %.lcssa66.wide.i
  %i.hv = xor i64 %i.hu, -1
  %i.hw = and i64 %.lcssa.i79, %i.hv
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51153.4305
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg375 ; 2 uses
  %i.hx = add nuw nsw i32 %reass.sub.i, 4
  %i.hy = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.hy)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.hz = phi i8 [ %i.gv, %.preheader.i ], [ %i.gy, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.ia = zext i8 %i.hz to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.hf, 16
  %i.ib = sub nuw nsw i64 48, %i.hf
  %i.ic = shl nuw nsw i64 %i.ia, %i.ib
  %i.id = or i64 %i.ic, %i.hi                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.hz, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ie = zext nneg i32 %.2.ph.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !150
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.ij = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %i.ik ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !150 ; 2 uses
  %i.in = zext i8 %i.im to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.hf, 24
  %i.io = sub nuw nsw i64 40, %i.hf
  %i.ip = shl nuw nsw i64 %i.in, %i.io
  %i.iq = or i64 %i.ip, %i.id                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.im, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !150
  %i.it = icmp eq i8 %i.is, 0
  br i1 %i.it, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink73.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.iu = add nuw nsw i32 %.sink73.i, %i.ij       ; 3 uses
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %i.iv ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !150 ; 2 uses
  %i.iy = zext i8 %i.ix to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4303, 32
  %i.iz = sub nuw nsw i64 32, %i.hf
  %i.ja = shl nuw nsw i64 %i.iy, %i.iz
  %i.jb = or i64 %i.ja, %i.iq                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.ix, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !150
  %i.je = icmp eq i8 %i.jd, 0
  br i1 %i.je, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink74.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.jf = add nuw nsw i32 %.sink74.i, %i.iu
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0126.11 = phi i64 [ %i.jb, %.loopexit.i ], [ %i.hw, %bb.t ]
  %.sroa.63163.6 = phi i32 [ %.sroa.63163.4308, %.loopexit.i ], [ %i.hs, %bb.t ]
  %.3.i = phi i32 [ %i.jf, %.loopexit.i ], [ %i.hx, %bb.t ] ; 2 uses
  %i.jg = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.jg)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.hq, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0126.12 = phi i64 [ %i.hp, %bb.r ], [ %.sroa.0126.11, %bb.aa ]
  %.sroa.63163.7 = phi i32 [ %.sroa.63163.4308, %bb.r ], [ %.sroa.63163.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.jh = add nuw nsw i32 %.021.i, %.sroa.51153.4305
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.l, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.18.7 = phi i32 [ %.sroa.18.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.18.4303, %bb.l ]
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi4ELi1ELi1EEEjv:bb.a
  %.sroa.18.1.lcssa = phi i32 [ %.sroa.18.0362, %bb.d ], [ %.sroa.18.0362, %.lr.ph346 ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.sroa.0124.1.lcssa = phi i64 [ %.sroa.0124.0363, %bb.d ], [ %.sroa.0124.0363, %.lr.ph346 ], [ %.sroa.0124.3.lcssa, %._crit_edge ]
  %.sroa.51151.1.lcssa = phi i32 [ %.sroa.51151.0364, %bb.d ], [ %.sroa.51151.0364, %.lr.ph346 ], [ %.sroa.51151.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.63161.1.lcssa = phi i32 [ %.sroa.63161.0365, %bb.d ], [ %.sroa.63161.0365, %.lr.ph346 ], [ %i.fu, %._crit_edge ] ; 3 uses
  %.sroa.0171.1.lcssa = phi ptr [ %.sroa.0171.0366, %bb.d ], [ %.sroa.0171.0366, %.lr.ph346 ], [ %.sroa.0171.3, %._crit_edge ]
  %.1.lcssa = phi i32 [ %.0367, %bb.d ], [ %.0367, %.lr.ph346 ], [ %.3, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK8rawspeed30Cr2VerticalOutputStripIterator8coalesceEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 4 %2, ptr noundef nonnull align 8 dereferenceable(96) %7)
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !163 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.dv, 0
  %.pre = load ptr, ptr %7, align 8, !tbaa !167   ; 2 uses
  %.pre394 = load i32, ptr %.sroa.4103.0..sroa_idx, align 8, !tbaa !168 ; 4 uses
  %.pre395 = load ptr, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !169 ; 4 uses
  %.pre396 = load i32, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170 ; 2 uses
  %.pre397 = load i32, ptr %.sroa.8109.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not1.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %._crit_edge347
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 2 uses
  %.pre3.i.i = load i32, ptr %.pre395, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %.lr.ph.i.i57
  %i.dy = phi i32 [ %.pre3.i.i, %.lr.ph.i.i57 ], [ %i.eo, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %i.dz = phi i32 [ %.pre396, %.lr.ph.i.i57 ], [ %i.et, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 4 uses
  %i.ea = phi i32 [ %.pre397, %.lr.ph.i.i57 ], [ %i.eu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ] ; 2 uses
  %.02.i.i = phi i64 [ %i.dw, %.lr.ph.i.i57 ], [ %i.eb, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.eb = add nsw i64 %.02.i.i, -1                ; 2 uses
  %i.ec = icmp slt i32 %i.dz, %i.dy
  call void @llvm.assume(i1 %i.ec)
  %i.ed = add nuw nsw i32 %i.dz, 1                ; 3 uses
  %i.ee = icmp eq i32 %i.ed, %i.dy
  %.0.in.v.i.i.i.i.i.i.i = select i1 %i.ee, i64 8, i64 4
  %.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre395, i64 %.0.in.v.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = load i32, ptr %.0.in.i.i.i.i.i.i.i, align 4, !tbaa !19
  %i.ef = load i64, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %i.ef, 32
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !18
  %i.eh = sub nsw i32 %i.eg, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  call void @llvm.assume(i1 %i.ei)
  %i.ej = sub nsw i32 %.pre394, %i.ea             ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  call void @llvm.assume(i1 %i.ek)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ej, i32 %i.eh) ; 2 uses
  %i.el = add nsw i32 %.sroa.speculated.i.i.i.i, %i.ea ; 5 uses
  store i32 %i.el, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  %i.em = add nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.em to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = and i64 %i.ef, 4294967295
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !19
  %i.en = icmp sgt i32 %i.el, -1
  call void @llvm.assume(i1 %i.en)
  %i.eo = load i32, ptr %.pre395, align 4, !tbaa !16 ; 2 uses
  %i.ep = icmp slt i32 %i.dz, %i.eo
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp sle i32 %i.el, %.pre394
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp eq i32 %i.el, %.pre394
  %i.es = trunc i64 %i.ef to i32
  br i1 %i.er, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ed, ptr %.sroa.6106.0..sroa_idx, align 8, !tbaa !170
  store i32 0, ptr %.sroa.8109.0..sroa_idx, align 8, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.et = phi i32 [ %i.ed, %bb.f ], [ %i.dz, %bb.e ] ; 2 uses
  %i.eu = phi i32 [ 0, %bb.f ], [ %i.el, %bb.e ]  ; 2 uses
  %i.ev = load i32, ptr %i.dx, align 4, !tbaa !18
  %i.ew = icmp eq i32 %i.em, %i.ev
  br i1 %i.ew, label %bb.h, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.do, align 4, !tbaa !172
  %i.ex = add nsw i32 %.0.i.i.i.i.i.i.i, %i.es
  store i32 %i.ex, ptr %.sroa.7108.0..sroa_idx, align 8, !tbaa !173
  br label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59: ; preds = %bb.h, %bb.g
  %.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i, label %_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit, label %bb.e, !llvm.loop !2

_ZN8rawspeed30Cr2VerticalOutputStripIteratorppEv.exit: ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59, %._crit_edge347
  %i.ey = phi i32 [ %.pre397, %._crit_edge347 ], [ %i.eu, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  %i.ez = phi i32 [ %.pre396, %._crit_edge347 ], [ %i.et, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.fa = load ptr, ptr %.sroa.9111.0..sroa_idx, align 8, !tbaa !167, !nonnull !122, !align !174
  %i.fb = icmp eq ptr %i.fa, %i.bu
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i32, ptr %.sroa.10112.0..sroa_idx, align 8, !tbaa !168
  %i.fd = icmp eq i32 %i.fc, %i.bt
  call void @llvm.assume(i1 %i.fd)
  %i.fe = load ptr, ptr %.sroa.11114.0..sroa_idx, align 8, !tbaa !169, !nonnull !122, !align !174
  %i.ff = icmp eq ptr %i.fe, %i.bp
  call void @llvm.assume(i1 %i.ff)
  %i.fg = load i32, ptr %.sroa.12115.0..sroa_idx, align 8, !tbaa !170
  %i.fh = icmp eq i32 %i.fg, %spec.select201.i.i
  %i.fi = load i32, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fj = icmp eq i32 %i.fi, %spec.select200.i.i
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq ptr %.pre, %i.bu
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp eq i32 %.pre394, %i.bt
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp eq ptr %.pre395, %i.bp
  call void @llvm.assume(i1 %i.fm)
  %i.fn = icmp eq i32 %i.ez, %spec.select201.i.i
  %i.fo = icmp eq i32 %i.ey, %spec.select200.i.i
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %._crit_edge369, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph346.split, %._crit_edge
  %.1344 = phi i32 [ %.0367, %.lr.ph346.split ], [ %.3, %._crit_edge ]
  %.045343 = phi i32 [ %.sroa.086.4.extract.trunc, %.lr.ph346.split ], [ %i.fv, %._crit_edge ] ; 3 uses
  %.sroa.0171.1342 = phi ptr [ %.sroa.0171.0366, %.lr.ph346.split ], [ %.sroa.0171.3, %._crit_edge ]
  %.sroa.63161.1341 = phi i32 [ %.sroa.63161.0365, %.lr.ph346.split ], [ %i.fu, %._crit_edge ]
  %.sroa.51151.1340 = phi i32 [ %.sroa.51151.0364, %.lr.ph346.split ], [ %.sroa.51151.3.lcssa, %._crit_edge ]
  %.sroa.0124.1339 = phi i64 [ %.sroa.0124.0363, %.lr.ph346.split ], [ %.sroa.0124.3.lcssa, %._crit_edge ]
  %.sroa.18.1338 = phi i32 [ %.sroa.18.0362, %.lr.ph346.split ], [ %.sroa.18.3.lcssa, %._crit_edge ]
  %.1232337 = phi i32 [ %.0231361, %.lr.ph346.split ], [ %.4.lcssa, %._crit_edge ]
  %i.fq = icmp samesign ult i32 %.045343, %i.j    ; 2 uses
  %i.fr = mul nuw nsw i32 %.045343, %i.m
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fs ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.4.lcssa = phi i32 [ %.3234, %bb.j ], [ %i.gj, %bb.k ] ; 3 uses
  %.sroa.18.3.lcssa = phi i32 [ %.sroa.18.2322, %bb.j ], [ %.sroa.18.6, %bb.k ] ; 3 uses
  %.sroa.0124.3.lcssa = phi i64 [ %.sroa.0124.2323, %bb.j ], [ %.sroa.0124.6, %bb.k ] ; 3 uses
  %.sroa.51151.3.lcssa = phi i32 [ %.sroa.51151.2324, %bb.j ], [ %.sroa.51151.5, %bb.k ] ; 3 uses
  %.sroa.63161.3.lcssa = phi i32 [ %.sroa.63161.2325, %bb.j ], [ %.sroa.63161.5, %bb.k ]
  %.147.lcssa = phi i32 [ %.046327, %bb.j ], [ %.sroa.speculated, %bb.k ] ; 2 uses
  %i.fu = freeze i32 %.sroa.63161.3.lcssa         ; 3 uses
  %.not49 = icmp eq i32 %.147.lcssa, %i.dt
  br i1 %.not49, label %._crit_edge, label %bb.i, !llvm.loop !335

._crit_edge:                                      ; preds = %.loopexit
  %i.fv = add nsw i32 %.045343, 1                 ; 2 uses
  %.not = icmp eq i32 %i.fv, %i.ds
  br i1 %.not, label %._crit_edge347, label %.lr.ph, !llvm.loop !336

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.2328 = phi i32 [ %.1344, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.046327 = phi i32 [ %.sroa.086.0.extract.trunc, %.lr.ph ], [ %.147.lcssa, %.loopexit ] ; 7 uses
  %.sroa.0171.2326 = phi ptr [ %.sroa.0171.1342, %.lr.ph ], [ %.sroa.0171.3, %.loopexit ] ; 2 uses
  %.sroa.63161.2325 = phi i32 [ %.sroa.63161.1341, %.lr.ph ], [ %i.fu, %.loopexit ] ; 2 uses
  %.sroa.51151.2324 = phi i32 [ %.sroa.51151.1340, %.lr.ph ], [ %.sroa.51151.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0124.2323 = phi i64 [ %.sroa.0124.1339, %.lr.ph ], [ %.sroa.0124.3.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.2322 = phi i32 [ %.sroa.18.1338, %.lr.ph ], [ %.sroa.18.3.lcssa, %.loopexit ] ; 2 uses
  %.2233321 = phi i32 [ %.1232337, %.lr.ph ], [ %.4.lcssa, %.loopexit ] ; 3 uses
  %i.fw = icmp sge i32 %i.du, %.2233321
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp eq i32 %i.du, %.2233321
  br i1 %i.fx, label %.preheader236.preheader, label %bb.j

.preheader236.preheader:                          ; preds = %bb.i
  %i.fy = load <4 x i16>, ptr %.sroa.0171.2326, align 2, !tbaa !157
  store <4 x i16> %i.fy, ptr %6, align 8, !tbaa !157
  call void @llvm.assume(i1 %i.fq)
  %i.fz = icmp samesign ule i32 %.046327, %i.h
  call void @llvm.assume(i1 %i.fz)
  %i.ga = shl nuw nsw i32 %.046327, 2             ; 2 uses
  %i.gb = icmp ule i32 %i.ga, %invariant.op
  call void @llvm.assume(i1 %i.gb)
  %i.gc = zext nneg i32 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.gc
  %i.ge = add nsw i32 %.2328, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader236.preheader, %bb.i
  %.3234 = phi i32 [ 0, %.preheader236.preheader ], [ %.2233321, %bb.i ] ; 3 uses
  %.sroa.0171.3 = phi ptr [ %i.gd, %.preheader236.preheader ], [ %.sroa.0171.2326, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %i.ge, %.preheader236.preheader ], [ %.2328, %bb.i ] ; 3 uses
  %i.gf = sub nsw i32 %i.du, %.3234               ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = add nsw i32 %i.gf, %.046327
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.gh, i32 %i.dt) ; 4 uses
  %.not50308 = icmp eq i32 %.046327, %.sroa.speculated
  br i1 %.not50308, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.gi = add i32 %.3234, %.sroa.speculated
  %i.gj = sub i32 %i.gi, %.046327
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.147314 = phi i32 [ %i.gm, %bb.k ], [ %.046327, %.preheader.preheader ] ; 2 uses
  %.sroa.63161.3313 = phi i32 [ %.sroa.63161.5, %bb.k ], [ %.sroa.63161.2325, %.preheader.preheader ]
  %.sroa.51151.3312 = phi i32 [ %.sroa.51151.5, %bb.k ], [ %.sroa.51151.2324, %.preheader.preheader ]
  %.sroa.0124.3311 = phi i64 [ %.sroa.0124.6, %bb.k ], [ %.sroa.0124.2323, %.preheader.preheader ]
  %.sroa.18.3310 = phi i32 [ %.sroa.18.6, %bb.k ], [ %.sroa.18.2322, %.preheader.preheader ]
  %i.gk = shl nuw nsw i32 %.147314, 2
  %i.gl = zext nneg i32 %i.gk to i64
  br label %bb.l

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %i.gm = add nsw i32 %.147314, 1                 ; 2 uses
  %.not50 = icmp eq i32 %i.gm, %.sroa.speculated
  br i1 %.not50, label %.loopexit, label %.preheader, !llvm.loop !337

bb.l:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.63161.4306 = phi i32 [ %.sroa.63161.3313, %.preheader ], [ %.sroa.63161.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 4 uses
  %.sroa.51151.4303 = phi i32 [ %.sroa.51151.3312, %.preheader ], [ %.sroa.51151.5, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 8 uses
  %.sroa.0124.4302 = phi i64 [ %.sroa.0124.3311, %.preheader ], [ %.sroa.0124.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 3 uses
  %.sroa.18.4301 = phi i32 [ %.sroa.18.3310, %.preheader ], [ %.sroa.18.6, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ] ; 7 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !176 ; 8 uses
  %i.gp = icmp samesign ult i32 %.sroa.18.4301, 65
  call void @llvm.assume(i1 %i.gp)
  %.not.i67 = icmp samesign ult i32 %.sroa.18.4301, 32
  br i1 %.not.i67, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.gq = add nuw nsw i32 %.sroa.51151.4303, 8
  %.not.i.i68 = icmp samesign ugt i32 %i.gq, %.sroa.234.0.copyload
  br i1 %.not.i.i68, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.gr = zext nneg i32 %.sroa.51151.4303 to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 %i.gr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.gt = icmp samesign ugt i32 %.sroa.51151.4303, %i.dm
  br i1 %i.gt, label %bb.p, label %bb.q, !prof !151

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = call i32 @llvm.umin.i32(i32 %.sroa.234.0.copyload, i32 %.sroa.51151.4303) ; 3 uses
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
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %1, align 8
  %i.ha = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255 ; 2 uses
  %i.hb = icmp ne i64 %i.ha, 255                  ; 2 uses
  %i.hc = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.hd = trunc i64 %i.hc to i8                   ; 3 uses
  %i.he = icmp ne i8 %i.hd, -1
  %i.hf = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.hg = trunc i64 %i.hf to i8                   ; 2 uses
  %i.hh = icmp ne i8 %i.hg, -1
  %i.hi = and i1 %i.he, %i.hh
  %i.hj = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.hk = icmp ne i64 %i.hj, 4278190080
  %i.hl = and i1 %i.hk, %i.hi
  %i.hm = and i1 %i.hb, %i.hl
  br i1 %i.hm, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hn = zext nneg i32 %.sroa.18.4301 to i64     ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.hn, 8
  %i.ho = sub nuw nsw i64 56, %i.hn
  %i.hp = shl nuw i64 %i.ha, %i.ho
  %i.hq = or i64 %i.hp, %.sroa.0124.4302          ; 2 uses
  br i1 %i.hb, label %bb.u, label %bb.s

bb.r:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.hr = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.hs = call i32 @llvm.bswap.i32(i32 %i.hr)
  %i.ht = zext i32 %i.hs to i64
  %i.hu = sub nuw nsw i32 32, %.sroa.18.4301
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl nuw i64 %i.ht, %i.hv
  %i.hx = or i64 %i.hw, %.sroa.0124.4302
  %i.hy = or disjoint i32 %.sroa.18.4301, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.s:                                             ; preds = %.preheader.i
  %i.hz = icmp eq i8 %i.hd, 0
  br i1 %i.hz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.s
  %.062.lcssa.i.neg373 = phi i32 [ 0, %bb.s ], [ -1, %bb.v ], [ -2, %bb.x ], [ -3, %bb.z ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.s ], [ %.2.ph.i, %bb.v ], [ %i.ir, %bb.x ], [ %i.jc, %bb.z ]
  %.lcssa66.wide.i = phi i64 [ %i.hn, %bb.s ], [ %indvars.iv.next.i, %bb.v ], [ %indvars.iv.next.1.i, %bb.x ], [ %indvars.iv.next.2.i, %bb.z ]
  %.lcssa.i77 = phi i64 [ %i.hq, %bb.s ], [ %i.il, %bb.v ], [ %i.iy, %bb.x ], [ %i.jj, %bb.z ]
  %i.ia = add nuw nsw i32 %.01861.lcssa.i, %.sroa.51151.4303
  %i.ib = icmp slt i32 %.sroa.63161.4306, 0
  call void @llvm.assume(i1 %i.ib)
  %i.ic = lshr i64 -1, %.lcssa66.wide.i
  %i.id = xor i64 %i.ic, -1
  %i.ie = and i64 %.lcssa.i77, %i.id
  %.neg = sub nsw i32 %.sroa.234.0.copyload, %.sroa.51151.4303
  %reass.sub.i = add nsw i32 %.neg, %.062.lcssa.i.neg373 ; 2 uses
  %i.if = add nuw nsw i32 %reass.sub.i, 4
  %i.ig = icmp ugt i32 %reass.sub.i, 1
  call void @llvm.assume(i1 %i.ig)
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %.preheader.i
  %i.ih = phi i8 [ %i.hd, %.preheader.i ], [ %i.hg, %bb.s ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.s ] ; 3 uses
  %i.ii = zext i8 %i.ih to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.hn, 16
  %i.ij = sub nuw nsw i64 48, %i.hn
  %i.ik = shl nuw nsw i64 %i.ii, %i.ij
  %i.il = or i64 %i.ik, %i.hq                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ih, -1
  br i1 %.not.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.im = zext nneg i32 %.2.ph.i to i64
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !150
  %i.iq = icmp eq i8 %i.ip, 0
  br i1 %i.iq, label %bb.w, label %bb.t

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ 1, %bb.u ], [ 2, %bb.v ]
  %i.ir = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 %i.is ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !150 ; 2 uses
  %i.iv = zext i8 %i.iu to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.hn, 24
  %i.iw = sub nuw nsw i64 40, %i.hn
  %i.ix = shl nuw nsw i64 %i.iv, %i.iw
  %i.iy = or i64 %i.ix, %i.il                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.iu, -1
  br i1 %.not.2.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !150
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink73.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.jc = add nuw nsw i32 %.sink73.i, %i.ir       ; 3 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !150 ; 2 uses
  %i.jg = zext i8 %i.jf to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.18.4301, 32
  %i.jh = sub nuw nsw i64 32, %i.hn
  %i.ji = shl nuw nsw i64 %i.jg, %i.jh
  %i.jj = or i64 %i.ji, %i.iy                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.jf, -1
  br i1 %.not.3.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !150
  %i.jm = icmp eq i8 %i.jl, 0
  br i1 %i.jm, label %.loopexit.i, label %bb.t

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %.sink74.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.jn = add nuw nsw i32 %.sink74.i, %i.jc
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i, %bb.t
  %.sroa.18.11 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.t ]
  %.sroa.0124.11 = phi i64 [ %i.jj, %.loopexit.i ], [ %i.ie, %bb.t ]
  %.sroa.63161.6 = phi i32 [ %.sroa.63161.4306, %.loopexit.i ], [ %i.ia, %bb.t ]
  %.3.i = phi i32 [ %i.jn, %.loopexit.i ], [ %i.if, %bb.t ] ; 2 uses
  %i.jo = icmp sgt i32 %.3.i, 4
  call void @llvm.assume(i1 %i.jo)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.r, %bb.aa
  %.sroa.18.12 = phi i32 [ %i.hy, %bb.r ], [ %.sroa.18.11, %bb.aa ]
  %.sroa.0124.12 = phi i64 [ %i.hx, %bb.r ], [ %.sroa.0124.11, %bb.aa ]
  %.sroa.63161.7 = phi i32 [ %.sroa.63161.4306, %bb.r ], [ %.sroa.63161.6, %bb.aa ]
  %.021.i = phi i32 [ 4, %bb.r ], [ %.3.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.jp = add nuw nsw i32 %.021.i, %.sroa.51151.4303
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.l, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.18.7 = phi i32 [ %.sroa.18.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.18.4301, %bb.l ]
  %.sroa.0124.7 = phi i64 [ %.sroa.0124.12, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0124.4302, %bb.l ] ; 2 uses
end_hunk_3
