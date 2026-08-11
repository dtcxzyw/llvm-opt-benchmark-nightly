inline.NumInlined: 946
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8rawspeed15CrwDecompressor10decompressEv:bb.a
  tail call void @llvm.assume(i1 %i.o)
  %i.p = and i32 %.fr209, 3
  %i.q = icmp eq i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = mul nuw nsw i32 %i.j, %.fr209            ; 2 uses
  %i.t = and i32 %i.s, 60
  %i.u = icmp eq i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.037.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !19
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.238.0.copyload = load i32, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !21 ; 3 uses
  store i64 0, ptr %1, align 8, !tbaa !190
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !192
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.037.0.copyload, ptr %i.x, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.238.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !193
  %i.z = icmp sgt i32 %.sroa.238.0.copyload, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp samesign ult i32 %.sroa.238.0.copyload, 8
  br i1 %i.aa, label %bb.b, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #15
  unreachable

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ab = lshr exact i32 %i.s, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 -1, ptr %i.ac, align 8, !tbaa !196
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.ae = icmp eq i32 %i.br, %.fr209
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !96, !range !98, !noundef !99
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %.loopexit186

bb.d:                                             ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %bb.e
  %.sroa.7.0 = phi i32 [ 512, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.bh, %bb.e ]
  %.sroa.0.0 = phi i32 [ 512, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0.3, %bb.e ]
  %.043197 = phi i16 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.aj, %bb.e ]
  %.044196 = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.2.1, %bb.e ]
  %.046195 = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.br, %bb.e ]
  %.052194 = phi i32 [ 0, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  call void @_ZN8rawspeed15CrwDecompressor11decodeBlockEPSt5arrayIsLm64EERKS1_INS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS5_EEEELm2EERNS_15BitStreamerJPEGE(ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.ai = load i16, ptr %2, align 2, !tbaa !198
  %i.aj = add i16 %i.ai, %.043197                 ; 2 uses
  store i16 %i.aj, ptr %2, align 2, !tbaa !198
  br label %bb.f

bb.e:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ak = add nuw nsw i32 %.052194, 1             ; 2 uses
  %exitcond215.not = icmp eq i32 %i.ak, %i.ab
  br i1 %exitcond215.not, label %bb.c, label %bb.d, !llvm.loop !199

bb.f:                                             ; preds = %bb.m, %bb.d
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %bb.d ], [ %i.bh, %bb.m ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.3, %bb.m ]
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.1, %bb.m ] ; 3 uses
  %.1193 = phi i32 [ %.044196, %bb.d ], [ %.2.1, %bb.m ] ; 2 uses
  %.147192 = phi i32 [ %.046195, %bb.d ], [ %i.br, %bb.m ] ; 2 uses
  %i.al = icmp eq i32 %.147192, %.fr209
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = add nsw i32 %.1193, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.2 = phi i32 [ 512, %bb.g ], [ %.sroa.7.1, %bb.f ]
  %.sroa.0.2 = phi i32 [ 512, %bb.g ], [ %.sroa.0.1, %bb.f ]
  %.248 = phi i32 [ 0, %bb.g ], [ %.147192, %bb.f ] ; 3 uses
  %.2 = phi i32 [ %i.am, %bb.g ], [ %.1193, %bb.f ] ; 4 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !198
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %.sroa.0.2, %i.ap           ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 1024
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15CrwDecompressor10decompressEv) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.as = trunc nuw nsw i32 %i.aq to i16
  %i.at = icmp samesign ult i32 %.248, %.fr209
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %.2, %i.j
  call void @llvm.assume(i1 %i.au)
  %i.av = mul nuw nsw i32 %.2, %i.m
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.aw
  %i.ay = zext nneg i32 %.248 to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ay
  store i16 %i.as, ptr %i.az, align 2, !tbaa !198
  %i.ba = add nuw nsw i32 %.248, 1                ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %.fr209
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %.2, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.3 = phi i32 [ 512, %bb.k ], [ %.sroa.7.2, %bb.j ]
  %.sroa.0.3 = phi i32 [ 512, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %.248.1 = phi i32 [ 0, %bb.k ], [ %i.ba, %bb.j ] ; 3 uses
  %.2.1 = phi i32 [ %i.bc, %bb.k ], [ %.2, %bb.j ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !198
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %.sroa.7.3, %i.bg           ; 4 uses
  %i.bi = icmp ult i32 %i.bh, 1024
  br i1 %i.bi, label %bb.m, label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc nuw nsw i32 %i.bh to i16
  %i.bk = icmp samesign ult i32 %.248.1, %.fr209
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ult i32 %.2.1, %i.j
  call void @llvm.assume(i1 %i.bl)
  %i.bm = mul nuw nsw i32 %.2.1, %i.m
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bn
  %i.bp = zext nneg i32 %.248.1 to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  store i16 %i.bj, ptr %i.bq, align 2, !tbaa !198
  %i.br = add nuw nsw i32 %.248.1, 1              ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %bb.e, label %bb.f, !llvm.loop !200

bb.n:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !19 ; 4 uses
  %i.bt = lshr exact i32 %.fr209, 2               ; 9 uses
  %i.bu = icmp sgt i32 %i.j, 0
  br i1 %i.bu, label %.preheader.lr.ph, label %.loopexit186

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.bv = icmp eq i32 %.fr209, 2672
  %i.bw = zext i32 %i.m to i64                    ; 3 uses
  br i1 %i.bv, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %.fr209 to i64            ; 5 uses
  %i.by = zext nneg i32 %i.bt to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  %i.bz = add nsw i32 %.fr209, -4                 ; 2 uses
  %i.ca = lshr exact i32 %i.bz, 2
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %xtraiter = and i32 %i.cb, 3                    ; 3 uses
  %i.cc = icmp ult i32 %i.bz, 12
  %unroll_iter = and i32 %i.cb, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod258 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.cd = zext nneg i32 %i.bt to i64              ; 2 uses
  %wide.trip.count241 = zext nneg i32 %i.j to i64 ; 2 uses
  %i.ce = add nsw i64 %wide.trip.count241, -1     ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %i.bw
  %i.cg = shl i64 %i.cf, 1
  %i.ch = getelementptr i8, ptr %i.c, i64 %i.cg
  %scevgep = getelementptr i8, ptr %i.ch, i64 5344
  %i.ci = mul nsw i64 %i.ce, %i.cd
  %i.cj = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ci
  %scevgep250 = getelementptr i8, ptr %i.cj, i64 668
  %bound0 = icmp ult ptr %i.c, %scevgep250
  %bound1 = icmp ult ptr %.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.split207.us.us
  %indvars.iv237 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next238, %.split207.us.us ] ; 3 uses
  %i.ck = mul nuw nsw i64 %indvars.iv237, %i.cd
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ck ; 3 uses
  %i.cm = mul nuw nsw i64 %indvars.iv237, %i.bw
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cm ; 3 uses
  br i1 %found.conflict, label %.split.us205.us.preheader.new, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %i.co = phi i32 [ %i.ed, %vector.body ], [ 0, %.preheader.us ] ; 2 uses
  %3 = shl nuw i32 %index, 2
  %4 = zext nneg i32 %3 to i64
  %i.cp = lshr exact i32 %i.co, 2
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %wide.load = load <8 x i8>, ptr %i.cr, align 1, !tbaa !116, !alias.scope !201
  %i.cs = zext <8 x i8> %wide.load to <8 x i32>   ; 4 uses
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %4 ; 2 uses
  %i.ct = and <8 x i32> %i.cs, splat (i32 3)
  %wide.vec = load <32 x i16>, ptr %5, align 2, !tbaa !198, !alias.scope !204, !noalias !201 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec252 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec253 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec254 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cu = zext <8 x i16> %strided.vec to <8 x i32>
  %i.cv = shl nuw nsw <8 x i32> %i.cu, splat (i32 2)
  %i.cw = or disjoint <8 x i32> %i.cv, %i.ct
  %i.cx = trunc <8 x i32> %i.cw to <8 x i16>      ; 3 uses
  %i.cy = icmp ult <8 x i16> %i.cx, splat (i16 512)
  %i.cz = add nuw nsw <8 x i16> %i.cx, splat (i16 2)
  %i.da = select <8 x i1> %i.cy, <8 x i16> %i.cz, <8 x i16> %i.cx
  %i.db = lshr <8 x i32> %i.cs, splat (i32 2)
  %i.dc = and <8 x i32> %i.db, splat (i32 3)
  %i.dd = zext <8 x i16> %strided.vec252 to <8 x i32>
  %i.de = shl nuw nsw <8 x i32> %i.dd, splat (i32 2)
  %i.df = or disjoint <8 x i32> %i.de, %i.dc
  %i.dg = trunc <8 x i32> %i.df to <8 x i16>      ; 3 uses
  %i.dh = icmp ult <8 x i16> %i.dg, splat (i16 512)
  %i.di = add nuw nsw <8 x i16> %i.dg, splat (i16 2)
  %i.dj = select <8 x i1> %i.dh, <8 x i16> %i.di, <8 x i16> %i.dg
  %i.dk = lshr <8 x i32> %i.cs, splat (i32 4)
  %i.dl = and <8 x i32> %i.dk, splat (i32 3)
  %i.dm = zext <8 x i16> %strided.vec253 to <8 x i32>
  %i.dn = shl nuw nsw <8 x i32> %i.dm, splat (i32 2)
  %i.do = or disjoint <8 x i32> %i.dn, %i.dl
  %i.dp = trunc <8 x i32> %i.do to <8 x i16>      ; 3 uses
  %i.dq = icmp ult <8 x i16> %i.dp, splat (i16 512)
  %i.dr = add nuw nsw <8 x i16> %i.dp, splat (i16 2)
  %i.ds = select <8 x i1> %i.dq, <8 x i16> %i.dr, <8 x i16> %i.dp
  %i.dt = lshr <8 x i32> %i.cs, splat (i32 6)
  %i.du = zext <8 x i16> %strided.vec254 to <8 x i32>
  %i.dv = shl nuw nsw <8 x i32> %i.du, splat (i32 2)
  %i.dw = or disjoint <8 x i32> %i.dv, %i.dt
  %i.dx = trunc <8 x i32> %i.dw to <8 x i16>      ; 3 uses
  %i.dy = icmp ult <8 x i16> %i.dx, splat (i16 512)
  %i.dz = add nuw nsw <8 x i16> %i.dx, splat (i16 2)
  %i.ea = select <8 x i1> %i.dy, <8 x i16> %i.dz, <8 x i16> %i.dx
  %i.eb = shufflevector <8 x i16> %i.da, <8 x i16> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = shufflevector <8 x i16> %i.ds, <8 x i16> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.eb, <16 x i16> %i.ec, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %5, align 2, !tbaa !198, !alias.scope !204, !noalias !201
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ed = add nuw nsw i32 %i.co, 32
  %i.ee = icmp eq i32 %index.next, 664
  br i1 %i.ee, label %.split.us205.us.preheader.new, label %vector.body, !llvm.loop !206

.split.us205.us.preheader.new:                    ; preds = %vector.body, %.preheader.us
  %indvars.iv226.ph = phi i32 [ 0, %.preheader.us ], [ 2656, %vector.body ]
  br label %.split.us205.us

.split.us205.us:                                  ; preds = %.split.us205.us, %.split.us205.us.preheader.new
  %indvars.iv226 = phi i32 [ %indvars.iv226.ph, %.split.us205.us.preheader.new ], [ %indvars.iv.next227.1, %.split.us205.us ] ; 5 uses
  %6 = zext nneg i32 %indvars.iv226 to i64
  %i.ef = lshr exact i32 %indvars.iv226, 2        ; 2 uses
  %i.eg = icmp samesign ult i32 %i.ef, %i.bt
  call void @llvm.assume(i1 %i.eg)
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !116
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %6 ; 2 uses
  %i.el = zext i8 %i.ej to i16
  %i.em = insertelement <4 x i16> poison, i16 %i.el, i64 0
  %i.en = shufflevector <4 x i16> %i.em, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.eo = lshr <4 x i16> %i.en, <i16 0, i16 2, i16 4, i16 6>
  %i.ep = and <4 x i16> %i.eo, <i16 3, i16 3, i16 3, i16 -1>
  %i.eq = load <4 x i16>, ptr %i.ek, align 2, !tbaa !198
  %i.er = shl <4 x i16> %i.eq, splat (i16 2)      ; 2 uses
  %i.es = or disjoint <4 x i16> %i.er, %i.ep      ; 2 uses
  %i.et = icmp ult <4 x i16> %i.er, splat (i16 512)
  %i.eu = add nuw nsw <4 x i16> %i.es, splat (i16 2)
  %i.ev = select <4 x i1> %i.et, <4 x i16> %i.eu, <4 x i16> %i.es
  store <4 x i16> %i.ev, ptr %i.ek, align 2, !tbaa !198
  %indvars.iv.next227 = or disjoint i32 %indvars.iv226, 4 ; 3 uses
  %7 = zext nneg i32 %indvars.iv.next227 to i64
  %i.ew = lshr exact i32 %indvars.iv.next227, 2   ; 2 uses
  %i.ex = icmp samesign ult i32 %i.ew, %i.bt
  call void @llvm.assume(i1 %i.ex)
  %i.ey = zext nneg i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !116
  %i.fb = icmp samesign ult i32 %indvars.iv226, 2672
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %7 ; 2 uses
  %i.fd = zext i8 %i.fa to i16
  %i.fe = insertelement <4 x i16> poison, i16 %i.fd, i64 0
  %i.ff = shufflevector <4 x i16> %i.fe, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.fg = lshr <4 x i16> %i.ff, <i16 0, i16 2, i16 4, i16 6>
  %i.fh = and <4 x i16> %i.fg, <i16 3, i16 3, i16 3, i16 -1>
  %i.fi = load <4 x i16>, ptr %i.fc, align 2, !tbaa !198
  %i.fj = shl <4 x i16> %i.fi, splat (i16 2)      ; 2 uses
  %i.fk = or disjoint <4 x i16> %i.fj, %i.fh      ; 2 uses
  %i.fl = icmp ult <4 x i16> %i.fj, splat (i16 512)
  %i.fm = add nuw nsw <4 x i16> %i.fk, splat (i16 2)
  %i.fn = select <4 x i1> %i.fl, <4 x i16> %i.fm, <4 x i16> %i.fk
  store <4 x i16> %i.fn, ptr %i.fc, align 2, !tbaa !198
  %indvars.iv.next227.1 = add nuw nsw i32 %indvars.iv226, 8
  %i.fo = icmp samesign ult i32 %indvars.iv.next227, 2668
  br i1 %i.fo, label %.split.us205.us, label %.split207.us.us, !llvm.loop !207

.split207.us.us:                                  ; preds = %.split.us205.us
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit186, label %.preheader.us, !llvm.loop !208

.preheader:                                       ; preds = %.preheader.preheader, %.split207
  %indvars.iv223 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next224, %.split207 ] ; 3 uses
  %i.fp = mul nuw nsw i64 %indvars.iv223, %i.by
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.fp ; 5 uses
  %i.fr = mul nuw nsw i64 %indvars.iv223, %i.bw
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fr ; 5 uses
  br i1 %i.cc, label %.split.us.epil.preheader, label %.split.us

.split207.unr-lcssa:                              ; preds = %.split.us
  br i1 %lcmp.mod.not, label %.split207, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %.split207.unr-lcssa, %.preheader
  %indvars.iv216.epil.init = phi i32 [ 0, %.preheader ], [ %indvars.iv.next217.3, %.split207.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.split.us.epil

.split.us.epil:                                   ; preds = %.split.us.epil, %.split.us.epil.preheader
  %indvars.iv216.epil = phi i32 [ %indvars.iv216.epil.init, %.split.us.epil.preheader ], [ %indvars.iv.next217.epil, %.split.us.epil ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.split.us.epil.preheader ], [ %epil.iter.next, %.split.us.epil ]
  %8 = zext i32 %indvars.iv216.epil to i64        ; 2 uses
  %i.ft = ashr exact i32 %indvars.iv216.epil, 2   ; 2 uses
  %i.fu = icmp samesign ult i32 %i.ft, %i.bt
  call void @llvm.assume(i1 %i.fu)
  %i.fv = zext nneg i32 %i.ft to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !116
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %8 ; 2 uses
  %indvars.iv.next217.2.epil = or disjoint i64 %8, 3
  %i.fz = icmp samesign ult i64 %indvars.iv.next217.2.epil, %i.bx
  call void @llvm.assume(i1 %i.fz)
  %i.ga = zext i8 %i.fx to i16
  %i.gb = insertelement <4 x i16> poison, i16 %i.ga, i64 0
  %i.gc = shufflevector <4 x i16> %i.gb, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gd = lshr <4 x i16> %i.gc, <i16 0, i16 2, i16 4, i16 6>
  %i.ge = and <4 x i16> %i.gd, <i16 3, i16 3, i16 3, i16 -1>
  %i.gf = load <4 x i16>, ptr %i.fy, align 2, !tbaa !198
  %i.gg = shl <4 x i16> %i.gf, splat (i16 2)
  %i.gh = or disjoint <4 x i16> %i.gg, %i.ge
  store <4 x i16> %i.gh, ptr %i.fy, align 2, !tbaa !198
  %indvars.iv.next217.epil = add i32 %indvars.iv216.epil, 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split207, label %.split.us.epil, !llvm.loop !209

.split207:                                        ; preds = %.split.us.epil, %.split207.unr-lcssa
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count
  br i1 %exitcond227.not, label %.loopexit186, label %.preheader, !llvm.loop !208

.split.us:                                        ; preds = %.preheader, %.split.us
  %indvars.iv216 = phi i32 [ %indvars.iv.next217.3, %.split.us ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i32 [ %niter.next.3, %.split.us ], [ 0, %.preheader ]
  %9 = zext i32 %indvars.iv216 to i64             ; 2 uses
  %i.gi = ashr exact i32 %indvars.iv216, 2        ; 2 uses
  %i.gj = icmp samesign ult i32 %i.gi, %i.bt
  call void @llvm.assume(i1 %i.gj)
  %i.gk = zext nneg i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !116
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %9 ; 2 uses
  %indvars.iv.next217.2.a = or disjoint i64 %9, 3
  %i.go = icmp samesign ult i64 %indvars.iv.next217.2.a, %i.bx
  call void @llvm.assume(i1 %i.go)
  %i.gp = zext i8 %i.gm to i16
  %i.gq = insertelement <4 x i16> poison, i16 %i.gp, i64 0
  %i.gr = shufflevector <4 x i16> %i.gq, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.gs = lshr <4 x i16> %i.gr, <i16 0, i16 2, i16 4, i16 6>
  %i.gt = and <4 x i16> %i.gs, <i16 3, i16 3, i16 3, i16 -1>
  %i.gu = load <4 x i16>, ptr %i.gn, align 2, !tbaa !198
  %i.gv = shl <4 x i16> %i.gu, splat (i16 2)
  %i.gw = or disjoint <4 x i16> %i.gv, %i.gt
  store <4 x i16> %i.gw, ptr %i.gn, align 2, !tbaa !198
  %indvars.iv.next217 = or disjoint i32 %indvars.iv216, 4 ; 2 uses
  %10 = zext i32 %indvars.iv.next217 to i64       ; 2 uses
  %i.gx = ashr exact i32 %indvars.iv.next217, 2   ; 2 uses
  %i.gy = icmp samesign ult i32 %i.gx, %i.bt
  call void @llvm.assume(i1 %i.gy)
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !116
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %10 ; 2 uses
  %indvars.iv.next217.2.1 = or disjoint i64 %10, 3
  %i.hd = icmp samesign ult i64 %indvars.iv.next217.2.1, %i.bx
  call void @llvm.assume(i1 %i.hd)
  %i.he = zext i8 %i.hb to i16
  %i.hf = insertelement <4 x i16> poison, i16 %i.he, i64 0
  %i.hg = shufflevector <4 x i16> %i.hf, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.hh = lshr <4 x i16> %i.hg, <i16 0, i16 2, i16 4, i16 6>
  %i.hi = and <4 x i16> %i.hh, <i16 3, i16 3, i16 3, i16 -1>
  %i.hj = load <4 x i16>, ptr %i.hc, align 2, !tbaa !198
  %i.hk = shl <4 x i16> %i.hj, splat (i16 2)
  %i.hl = or disjoint <4 x i16> %i.hk, %i.hi
  store <4 x i16> %i.hl, ptr %i.hc, align 2, !tbaa !198
  %indvars.iv.next217.1 = or disjoint i32 %indvars.iv216, 8 ; 2 uses
  %11 = zext i32 %indvars.iv.next217.1 to i64     ; 2 uses
  %i.hm = ashr exact i32 %indvars.iv.next217.1, 2 ; 2 uses
  %i.hn = icmp samesign ult i32 %i.hm, %i.bt
  call void @llvm.assume(i1 %i.hn)
  %i.ho = zext nneg i32 %i.hm to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !116
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %11 ; 2 uses
  %indvars.iv.next217.2.2 = or disjoint i64 %11, 3
  %i.hs = icmp samesign ult i64 %indvars.iv.next217.2.2, %i.bx
  call void @llvm.assume(i1 %i.hs)
  %i.ht = zext i8 %i.hq to i16
  %i.hu = insertelement <4 x i16> poison, i16 %i.ht, i64 0
  %i.hv = shufflevector <4 x i16> %i.hu, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.hw = lshr <4 x i16> %i.hv, <i16 0, i16 2, i16 4, i16 6>
  %i.hx = and <4 x i16> %i.hw, <i16 3, i16 3, i16 3, i16 -1>
  %i.hy = load <4 x i16>, ptr %i.hr, align 2, !tbaa !198
  %i.hz = shl <4 x i16> %i.hy, splat (i16 2)
  %i.ia = or disjoint <4 x i16> %i.hz, %i.hx
  store <4 x i16> %i.ia, ptr %i.hr, align 2, !tbaa !198
  %indvars.iv.next217.2 = or disjoint i32 %indvars.iv216, 12 ; 2 uses
  %12 = zext i32 %indvars.iv.next217.2 to i64     ; 2 uses
  %i.ib = ashr exact i32 %indvars.iv.next217.2, 2 ; 2 uses
  %i.ic = icmp samesign ult i32 %i.ib, %i.bt
  call void @llvm.assume(i1 %i.ic)
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !116
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %12 ; 2 uses
  %indvars.iv.next217.2.3 = or disjoint i64 %12, 3
  %i.ih = icmp samesign ult i64 %indvars.iv.next217.2.3, %i.bx
  call void @llvm.assume(i1 %i.ih)
  %i.ii = zext i8 %i.if to i16
  %i.ij = insertelement <4 x i16> poison, i16 %i.ii, i64 0
  %i.ik = shufflevector <4 x i16> %i.ij, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.il = lshr <4 x i16> %i.ik, <i16 0, i16 2, i16 4, i16 6>
  %i.im = and <4 x i16> %i.il, <i16 3, i16 3, i16 3, i16 -1>
  %i.in = load <4 x i16>, ptr %i.ig, align 2, !tbaa !198
  %i.io = shl <4 x i16> %i.in, splat (i16 2)
  %i.ip = or disjoint <4 x i16> %i.io, %i.im
  store <4 x i16> %i.ip, ptr %i.ig, align 2, !tbaa !198
  %indvars.iv.next217.3 = add i32 %indvars.iv216, 16 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split207.unr-lcssa, label %.split.us, !llvm.loop !211

.loopexit186:                                     ; preds = %.split207, %.split207.us.us, %bb.n, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed15CrwDecompressor11decodeBlockEPSt5arrayIsLm64EERKS1_INS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS5_EEEELm2EERNS_15BitStreamerJPEGE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.073 = phi i32 [ 0, %bb.a ], [ %.2, %bb.m ]    ; 4 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 65
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i32, ptr %i.b, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp sgt i32 %i.g, 7
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !193  ; 5 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i39 = icmp samesign ult i32 %i.e, 32
  br i1 %.not.i39, label %bb.c, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.k = add nuw nsw i32 %i.i, 8
  %.not.i.i = icmp samesign ugt i32 %i.k, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !117

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !15, !noalias !213
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.l
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.g, 16
  %i.o = icmp samesign ugt i32 %i.i, %i.n
  br i1 %i.o, label %bb.f, label %bb.g, !prof !117

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !15
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.p = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.p)
  %i.q = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.r = icmp ult i32 %i.q, 9
  tail call void @llvm.assume(i1 %i.r)
  %i.s = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.g ], [ %i.m, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.v = tail call noundef i32 @_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE(ptr noundef nonnull align 8 dereferenceable(48) %2, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i) ; 3 uses
  %i.w = load i32, ptr %i.c, align 8, !tbaa !193  ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i32 %i.v, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i32 %i.w, %i.v
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !193
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 31
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i, %bb.b
  %i.ad = phi i32 [ %i.e, %bb.b ], [ %i.ab, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i ] ; 2 uses
  %i.ae = icmp sgt i32 %.073, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [152 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ad, 65
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %2, align 8, !tbaa !190   ; 2 uses
  %i.aj = lshr i64 %i.ai, 53                      ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !163
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21 ; 3 uses
  %i.ao = ashr i32 %i.an, 9
  %i.ap = and i32 %i.an, 255                      ; 4 uses
  %i.aq = icmp samesign ult i32 %i.ap, 33
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw nsw i32 %i.ad, %i.ap            ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !192
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = shl i64 %i.ai, %i.as                    ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !190
  %.not17.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i, label %bb.h, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %i.au = trunc nuw nsw i64 %i.aj to i32
  %.sroa.0.0.insert.insert66 = or disjoint i32 %i.au, 720896
  %i.av = icmp eq i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add nsw i32 %i.ar, -11
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !192
  %i.ax = shl i64 %i.at, 11
  store i64 %i.ax, ptr %2, align 8, !tbaa !190
  %i.ay = tail call i64 @_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 %.sroa.0.0.insert.insert66)
  %.sroa.453.0.extract.shift = lshr i64 %i.ay, 32
  %i.az = trunc nuw i64 %.sroa.453.0.extract.shift to i32
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit: ; preds = %bb.h, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50
  %.0.i = phi i32 [ %i.ao, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit50 ], [ %i.az, %bb.h ] ; 2 uses
  %i.ba = and i32 %.0.i, 15                       ; 8 uses
  %i.bb = lshr i32 %.0.i, 4                       ; 2 uses
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %i.bd = icmp eq i32 %i.ba, 0
  %i.be = or i32 %i.bc, %i.ba
  %or.cond = icmp eq i32 %i.be, 0
  %i.bf = icmp ne i32 %.073, 0
  %or.cond3 = and i1 %i.bf, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit
  %i.bg = and i32 %i.ba, %i.bb
  %or.cond5 = icmp eq i32 %i.bg, 15
  br i1 %or.cond5, label %bb.m, label %bb.j, !llvm.loop !216

bb.j:                                             ; preds = %bb.i
  %i.bh = add nsw i32 %i.bc, %.073                ; 4 uses
  br i1 %i.bd, label %bb.m, label %bb.k, !llvm.loop !216

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !192 ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 65
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ule i32 %i.ba, %i.bi
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load i64, ptr %2, align 8, !tbaa !190   ; 3 uses
  %i.bm = sub nsw i32 %i.bi, %i.ba
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !192
  %i.bn = zext nneg i32 %i.ba to i64
  %i.bo = shl i64 %i.bl, %i.bn
  store i64 %i.bo, ptr %2, align 8, !tbaa !190
  %i.bp = icmp sgt i32 %i.bh, 63
  br i1 %i.bp, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = sub nuw nsw i32 64, %i.ba
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bl, %i.br
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = icmp sgt i64 %i.bl, -1
  %notmask.i = shl nsw i32 -1, %i.ba
  %.neg.i = or disjoint i32 %notmask.i, 1
  %i.bv = select i1 %i.bu, i32 %.neg.i, i32 0
  %.0.i51 = add nsw i32 %i.bv, %i.bt
  %i.bw = trunc nsw i32 %.0.i51 to i16
  %i.bx = sext i32 %i.bh to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bx
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.l
  %.2.in = phi i32 [ %i.bh, %bb.l ], [ %.073, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %.2 = add nsw i32 %.2.in, 1
  %i.bz = icmp slt i32 %.2.in, 63
  br i1 %i.bz, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.k, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb0EEEiRT_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !call_target !107, !inline_history !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !116
end_hunk_0
