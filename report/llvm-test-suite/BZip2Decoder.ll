inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9NCompress6NBZip28CDecoder10DecodeFileERbP21ICompressProgressInfo:bb.a
  %i.gi = add i32 %i.gh, %.01720.i                ; 2 uses
  store i32 %.01720.i, ptr %i.gg, align 4, !tbaa !4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.gm = add i32 %i.gl, %i.gi                    ; 2 uses
  store i32 %i.gi, ptr %i.gk, align 4, !tbaa !4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %i.gq = add i32 %i.gp, %i.gm                    ; 2 uses
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !4
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = add i32 %i.gt, %i.gq
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %bb.w, label %bb.x, !llvm.loop !84

bb.y:                                             ; preds = %bb.y, %.new
  %indvars.iv22.i = phi i64 [ 0, %.new ], [ %indvars.iv.next23.i.1, %bb.y ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.y ]
  %i.gv = trunc nuw i64 %indvars.iv22.i to i32
  %i.gw = shl i32 %i.gv, 8
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv22.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = and i32 %i.gy, 255
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4  ; 2 uses
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !4
  %i.he = zext i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = or i32 %i.hg, %i.gw
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !4
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next23.i to i32
  %i.hj = shl i32 %i.hi, 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next23.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = and i32 %i.hl, 255
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4  ; 2 uses
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !4
  %i.hr = zext i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = or i32 %i.ht, %i.hj
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !4
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, label %bb.y, !llvm.loop !85

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %bb.w
  %indvars.iv22.i.epil.init = phi i64 [ 0, %bb.w ], [ %indvars.iv.next23.i.1, %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod214 = trunc i32 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod214)
  %i.hv = trunc nuw i64 %indvars.iv22.i.epil.init to i32
  %i.hw = shl i32 %i.hv, 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv22.i.epil.init
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = and i32 %i.hy, 255
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4  ; 2 uses
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !4
  %i.ie = zext i32 %i.ic to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = or i32 %i.ig, %i.hw
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !4
  br label %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit

_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit:     ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit.unr-lcssa, %.epil.preheader
  %i.ii = load i8, ptr %i.i, align 1, !tbaa !71, !range !63, !noundef !64
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = load i32, ptr %i.h, align 4, !tbaa !4   ; 2 uses
  br i1 %i.ij, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.il = call fastcc noundef i32 @_ZN9NCompress6NBZip2L16DecodeBlock2RandEPKjjjR10COutBuffer(ptr noundef nonnull %i.ge, i32 noundef %i.gd, i32 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(49) %i.fa)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN9NCompress6NBZip2L12DecodeBlock1EPjj.exit
  %i.im = call fastcc noundef i32 @_ZN9NCompress6NBZip2L12DecodeBlock2EPKjjjR10COutBuffer(ptr noundef nonnull %i.ge, i32 noundef %i.gd, i32 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(49) %i.fa)
  br label %bb.ab

.thread139:                                       ; preds = %bb.s, %bb.t
  %.16.ph = phi i32 [ 0, %bb.t ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread128

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.in = phi i32 [ %i.il, %bb.z ], [ %i.im, %bb.aa ]
  %i.io = load i32, ptr %i.f, align 4, !tbaa !4
  %.not113 = icmp eq i32 %i.in, %i.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br i1 %.not113, label %bb.r, label %.thread128, !llvm.loop !86

bb.ac:                                            ; preds = %bb.p
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !79
  %i.ir = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !80
  %i.iu = load i32, ptr %i.ae, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.iv = load ptr, ptr %i.j, align 8, !tbaa !72
  %.not.i118 = icmp eq ptr %i.iv, null
  br i1 %.not.i118, label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iw = ptrtoint ptr %i.ir to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i32 32, %i.iu
  %i.iz = lshr i32 %i.iy, 3
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !81
  %.neg150 = add i64 %i.iq, %i.iw
  %i.jd = add i64 %i.ix, %i.ja
  %i.je = add i64 %i.jd, %i.jc
  %i.jf = sub i64 %.neg150, %i.je
  store i64 %i.jf, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jh = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.jg)
  store i64 %i.jh, ptr %i.b, align 8, !tbaa !82
  %i.ji = load ptr, ptr %i.j, align 8, !tbaa !72  ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !35
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = call noundef i32 %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120

_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120: ; preds = %bb.ac, %bb.ad
  %.0.i119 = phi i32 [ %i.jm, %bb.ad ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread128

.thread128:                                       ; preds = %bb.c, %bb.d, %_ZN9NCompress6NBZip26CState5AllocEv.exit, %bb.e, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit, %bb.ab, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3, %bb.p, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120, %.thread139, %.thread142, %._crit_edge163, %bb.a
  %.20 = phi i32 [ %i.fw, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit ], [ %i.k, %bb.a ], [ 0, %_ZN9NCompress6NBZip28CDecoder8ReadByteEv.exit.3 ], [ %.0.i119, %_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy.exit120 ], [ %i.eu, %bb.p ], [ %.16.ph, %.thread139 ], [ %i.et, %._crit_edge163 ], [ 1, %.thread142 ], [ 1, %bb.ab ], [ %i.w, %bb.c ], [ %i.aa, %bb.e ], [ -2147024882, %_ZN9NCompress6NBZip26CState5AllocEv.exit ], [ %i.y, %bb.d ]
  ret i32 %.20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy(ptr noundef nonnull align 8 dereferenceable(28988) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28672
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = sub i64 %1, %i.f
  store i64 %i.g, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.h)
  store i64 %i.i, ptr %i.b, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.NCompress::CMtf8Decoder", align 8 ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 14 uses
  %i.c = alloca [258 x i8], align 16              ; 6 uses
  %.not = icmp eq ptr %7, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !20 ; 4 uses
  %.pre326 = load i32, ptr %0, align 8, !tbaa !27 ; 3 uses
  br i1 %.not, label %._crit_edge325, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %.pre326, 1                      ; 4 uses
  store i32 %i.d, ptr %0, align 8, !tbaa !27
  %i.e = icmp ugt i32 %i.d, 7
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = phi i32 [ %i.d, %.lr.ph.i.i.i.i ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.i = phi i32 [ %.pre, %.lr.ph.i.i.i.i ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.j = shl i32 %i.i, 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.f)
  %.pre1.i.i.i.i = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !28
  %i.o = load i8, ptr %i.k, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %.pre1.i.i.i.i, %bb.d ], [ %i.h, %bb.e ]
  %.0.i.i.i.i.i = phi i8 [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %i.q = zext i8 %.0.i.i.i.i.i to i32
  %i.r = or disjoint i32 %i.j, %i.q               ; 3 uses
  store i32 %i.r, ptr %.phi.trans.insert, align 4, !tbaa !20
  %i.s = add i32 %i.p, -8                         ; 4 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !27
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.c, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i, %bb.b
  %i.u = phi i32 [ %i.d, %bb.b ], [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.v = phi i32 [ %.pre, %bb.b ], [ %i.r, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i ]
  %i.w = sub i32 8, %.pre326
  %i.x = shl i32 8388608, %i.w
  %i.y = and i32 %i.x, %.pre
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %7, align 1, !tbaa !71
  br label %._crit_edge325

._crit_edge325:                                   ; preds = %bb.a, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit
  %i.ab = phi i32 [ %i.u, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit ], [ %.pre326, %bb.a ] ; 2 uses
  %i.ac = phi i32 [ %i.v, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.ae = add i32 %i.ab, 24                       ; 3 uses
  store i32 %i.ae, ptr %0, align 8, !tbaa !27
  %i.af = icmp ugt i32 %i.ae, 7
  br i1 %i.af, label %.lr.ph.i.i.i.i188, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit

.lr.ph.i.i.i.i188:                                ; preds = %._crit_edge325
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191, %.lr.ph.i.i.i.i188
  %i.ai = phi i32 [ %i.ae, %.lr.ph.i.i.i.i188 ], [ %i.at, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191 ]
  %i.aj = phi i32 [ %i.ac, %.lr.ph.i.i.i.i188 ], [ %i.as, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191 ]
  %i.ak = shl i32 %i.aj, 8
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !29
  %.not.i.i.i.i.i189 = icmp ult ptr %i.al, %i.am
  br i1 %.not.i.i.i.i.i189, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ag)
  %.pre1.i.i.i.i190 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !28
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191:         ; preds = %bb.h, %bb.g
  %i.aq = phi i32 [ %.pre1.i.i.i.i190, %bb.g ], [ %i.ai, %bb.h ]
  %.0.i.i.i.i.i192 = phi i8 [ %i.an, %bb.g ], [ %i.ap, %bb.h ]
  %i.ar = zext i8 %.0.i.i.i.i.i192 to i32
  %i.as = or disjoint i32 %i.ak, %i.ar            ; 2 uses
  store i32 %i.as, ptr %i.ad, align 4, !tbaa !20
  %i.at = add i32 %i.aq, -8                       ; 3 uses
  store i32 %i.at, ptr %0, align 8, !tbaa !27
  %i.au = icmp ugt i32 %i.at, 7
  br i1 %i.au, label %bb.f, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit, !llvm.loop !31

_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i191, %._crit_edge325
  %i.av = sub i32 8, %i.ab
  %i.aw = lshr i32 %i.ac, %i.av
  %i.ax = and i32 %i.aw, 16777215                 ; 2 uses
  store i32 %i.ax, ptr %6, align 4, !tbaa !4
  %.not172 = icmp ult i32 %i.ax, %2
  br i1 %.not172, label %bb.i, label %bb.be

bb.i:                                             ; preds = %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %8, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.pre327 = load i32, ptr %i.ad, align 4, !tbaa !20
  %.pre328 = load i32, ptr %0, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198
  %i.ba = phi i32 [ %.pre328, %bb.i ], [ %i.br, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 2 uses
  %i.bb = phi i32 [ %.pre327, %bb.i ], [ %i.bs, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 2 uses
  %i.bc = add i32 %i.ba, 1                        ; 4 uses
  store i32 %i.bc, ptr %0, align 8, !tbaa !27
  %i.bd = icmp ugt i32 %i.bc, 7
  br i1 %i.bd, label %.lr.ph.i.i.i.i193, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198

.lr.ph.i.i.i.i193:                                ; preds = %bb.j, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196
  %i.be = phi i32 [ %i.bp, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ], [ %i.bc, %bb.j ]
  %i.bf = phi i32 [ %i.bo, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ], [ %i.bb, %bb.j ]
  %i.bg = shl i32 %i.bf, 8
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i194 = icmp ult ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i194, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i193
  %i.bj = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i195 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196

bb.l:                                             ; preds = %.lr.ph.i.i.i.i193
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !28
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196:         ; preds = %bb.l, %bb.k
  %i.bm = phi i32 [ %.pre1.i.i.i.i195, %bb.k ], [ %i.be, %bb.l ]
  %.0.i.i.i.i.i197 = phi i8 [ %i.bj, %bb.k ], [ %i.bl, %bb.l ]
  %i.bn = zext i8 %.0.i.i.i.i.i197 to i32
  %i.bo = or disjoint i32 %i.bg, %i.bn            ; 3 uses
  store i32 %i.bo, ptr %i.ad, align 4, !tbaa !20
  %i.bp = add i32 %i.bm, -8                       ; 4 uses
  store i32 %i.bp, ptr %0, align 8, !tbaa !27
  %i.bq = icmp ugt i32 %i.bp, 7
  br i1 %i.bq, label %.lr.ph.i.i.i.i193, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196, %bb.j
  %i.br = phi i32 [ %i.bc, %bb.j ], [ %i.bp, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ] ; 2 uses
  %i.bs = phi i32 [ %i.bb, %bb.j ], [ %i.bo, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i196 ] ; 2 uses
  %i.bt = sub i32 8, %i.ba
  %i.bu = lshr i32 %i.bb, %i.bt
  %i.bv = lshr i32 %i.bu, 23
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = and i8 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.preheader257, label %bb.j, !llvm.loop !87

.preheader257:                                    ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198, %bb.q
  %i.bz = phi i32 [ %i.di, %bb.q ], [ %i.br, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 4 uses
  %i.ca = phi i32 [ %i.dj, %bb.q ], [ %i.bs, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 4 uses
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %bb.q ], [ 0, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 3 uses
  %.0121264 = phi i32 [ %.1122, %bb.q ], [ 0, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit198 ] ; 5 uses
  %i.cb = lshr i64 %indvars.iv284, 4
  %i.cc = and i64 %i.cb, 268435455
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %.not182 = icmp eq i8 %i.ce, 0
  br i1 %.not182, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.preheader257
  %i.cf = add nuw nsw i32 %i.bz, 1                ; 2 uses
  store i32 %i.cf, ptr %0, align 8, !tbaa !27
  %i.cg = icmp ugt i32 %i.bz, 6
  br i1 %i.cg, label %.lr.ph.i.i.i.i199, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204

.lr.ph.i.i.i.i199:                                ; preds = %bb.m, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202
  %i.ch = phi i32 [ %i.cs, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ], [ 8, %bb.m ]
  %i.ci = phi i32 [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ], [ %i.ca, %bb.m ]
  %i.cj = shl i32 %i.ci, 8
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cn, ptr %i.ay, align 8, !tbaa !28
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202:         ; preds = %bb.o, %bb.n
  %i.cp = phi i32 [ %.pre1.i.i.i.i201, %bb.n ], [ %i.ch, %bb.o ]
  %.0.i.i.i.i.i203 = phi i8 [ %i.cm, %bb.n ], [ %i.co, %bb.o ]
  %i.cq = zext i8 %.0.i.i.i.i.i203 to i32
  %i.cr = or disjoint i32 %i.cj, %i.cq            ; 3 uses
  store i32 %i.cr, ptr %i.ad, align 4, !tbaa !20
  %i.cs = add i32 %i.cp, -8                       ; 4 uses
  store i32 %i.cs, ptr %0, align 8, !tbaa !27
  %i.ct = icmp ugt i32 %i.cs, 7
  br i1 %i.ct, label %.lr.ph.i.i.i.i199, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202, %bb.m
  %i.cu = phi i32 [ %i.cf, %bb.m ], [ %i.cs, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %i.cv = phi i32 [ %i.ca, %bb.m ], [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i202 ] ; 2 uses
  %i.cw = lshr exact i32 -2147483648, %i.bz
  %i.cx = and i32 %i.cw, %i.ca
  %.not183 = icmp eq i32 %i.cx, 0
  br i1 %.not183, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204
  %i.cy = add nsw i32 %.0121264, 1
  %i.cz = shl i32 %.0121264, 3
  %i.da = and i32 %i.cz, 56
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw i64 %indvars.iv284, %i.db
  %i.dd = lshr i32 %.0121264, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !82
  %i.dh = or i64 %i.dg, %i.dc
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %.preheader257, %bb.p, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204
  %i.di = phi i32 [ %i.cu, %bb.p ], [ %i.cu, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204 ], [ %i.bz, %.preheader257 ] ; 4 uses
  %i.dj = phi i32 [ %i.cv, %bb.p ], [ %i.cv, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204 ], [ %i.ca, %.preheader257 ] ; 4 uses
  %.1122 = phi i32 [ %i.cy, %bb.p ], [ %.0121264, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit204 ], [ %.0121264, %.preheader257 ] ; 6 uses
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, 256
  br i1 %exitcond287.not, label %bb.r, label %.preheader257, !llvm.loop !88

bb.r:                                             ; preds = %bb.q
  %.not173 = icmp eq i32 %.1122, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not173, label %.thread248, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = add nuw nsw i32 %i.di, 3                ; 3 uses
  store i32 %i.dk, ptr %0, align 8, !tbaa !27
  %i.dl = icmp ugt i32 %i.di, 4
  br i1 %i.dl, label %.lr.ph.i.i.i.i205, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit210

.lr.ph.i.i.i.i205:                                ; preds = %bb.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208
  %i.dm = phi i32 [ %i.dx, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208 ], [ %i.dk, %bb.s ]
  %i.dn = phi i32 [ %i.dw, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208 ], [ %i.dj, %bb.s ]
  %i.do = shl i32 %i.dn, 8
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.dq = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i206 = icmp ult ptr %i.dp, %i.dq
  br i1 %.not.i.i.i.i.i206, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i205
  %i.dr = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i207 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208

bb.u:                                             ; preds = %.lr.ph.i.i.i.i205
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.ds, ptr %i.ay, align 8, !tbaa !28
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208:         ; preds = %bb.u, %bb.t
  %i.du = phi i32 [ %.pre1.i.i.i.i207, %bb.t ], [ %i.dm, %bb.u ]
  %.0.i.i.i.i.i209 = phi i8 [ %i.dr, %bb.t ], [ %i.dt, %bb.u ]
  %i.dv = zext i8 %.0.i.i.i.i.i209 to i32
  %i.dw = or disjoint i32 %i.do, %i.dv            ; 3 uses
  store i32 %i.dw, ptr %i.ad, align 4, !tbaa !20
  %i.dx = add i32 %i.du, -8                       ; 4 uses
  store i32 %i.dx, ptr %0, align 8, !tbaa !27
  %i.dy = icmp ugt i32 %i.dx, 7
  br i1 %i.dy, label %.lr.ph.i.i.i.i205, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit210, !llvm.loop !31

_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit210: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208, %bb.s
  %i.dz = phi i32 [ %i.dk, %bb.s ], [ %i.dx, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208 ] ; 2 uses
  %i.ea = phi i32 [ %i.dj, %bb.s ], [ %i.dw, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i208 ] ; 2 uses
  %i.eb = sub nuw nsw i32 8, %i.di
  %i.ec = lshr i32 %i.dj, %i.eb
  %i.ed = lshr i32 %i.ec, 21
  %i.ee = and i32 %i.ed, 7                        ; 8 uses
  %i.ef = add nsw i32 %i.ee, -7
  %or.cond = icmp ult i32 %i.ef, -5
  br i1 %or.cond, label %.thread248, label %.lr.ph.i.i.i.i211

.lr.ph.i.i.i.i211:                                ; preds = %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit210
  %i.eg = add nuw nsw i32 %i.dz, 15               ; 2 uses
  store i32 %i.eg, ptr %0, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214, %.lr.ph.i.i.i.i211
  %i.eh = phi i32 [ %i.eg, %.lr.ph.i.i.i.i211 ], [ %i.es, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214 ]
  %i.ei = phi i32 [ %i.ea, %.lr.ph.i.i.i.i211 ], [ %i.er, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214 ]
  %i.ej = shl i32 %i.ei, 8
  %i.ek = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.el = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i212 = icmp ult ptr %i.ek, %i.el
  br i1 %.not.i.i.i.i.i212, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i213 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214

bb.x:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store ptr %i.en, ptr %i.ay, align 8, !tbaa !28
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214:         ; preds = %bb.x, %bb.w
  %i.ep = phi i32 [ %.pre1.i.i.i.i213, %bb.w ], [ %i.eh, %bb.x ]
  %.0.i.i.i.i.i215 = phi i8 [ %i.em, %bb.w ], [ %i.eo, %bb.x ]
  %i.eq = zext i8 %.0.i.i.i.i.i215 to i32
  %i.er = or disjoint i32 %i.ej, %i.eq            ; 2 uses
  store i32 %i.er, ptr %i.ad, align 4, !tbaa !20
  %i.es = add i32 %i.ep, -8                       ; 3 uses
  store i32 %i.es, ptr %0, align 8, !tbaa !27
  %i.et = icmp ugt i32 %i.es, 7
  br i1 %i.et, label %bb.v, label %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit216, !llvm.loop !31

_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit216: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i214
  %i.eu = sub nuw nsw i32 8, %i.dz
  %i.ev = lshr i32 %i.ea, %i.eu
  %i.ew = lshr i32 %i.ev, 9
  %i.ex = and i32 %i.ew, 32767                    ; 3 uses
  %i.ey = add nsw i32 %i.ex, -18003
  %or.cond8 = icmp ult i32 %i.ey, -18002
  br i1 %or.cond8, label %.thread248, label %bb.y

bb.y:                                             ; preds = %_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ee, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %umax to i64
  store i8 0, ptr %i.b, align 1, !tbaa !30
  %exitcond291.not = icmp samesign ult i32 %i.ee, 2
  br i1 %exitcond291.not, label %.preheader256, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.ez, align 1, !tbaa !30
  %exitcond291.not.1 = icmp eq i32 %i.ee, 2
  br i1 %exitcond291.not.1, label %.preheader256, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 2, ptr %i.fa, align 1, !tbaa !30
  %exitcond291.not.2 = icmp eq i32 %i.ee, 3
  br i1 %exitcond291.not.2, label %.preheader256, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 3, ptr %i.fb, align 1, !tbaa !30
  %exitcond291.not.3 = icmp eq i32 %i.ee, 4
  br i1 %exitcond291.not.3, label %.preheader256, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 4, ptr %i.fc, align 1, !tbaa !30
  %exitcond291.not.4 = icmp eq i32 %i.ee, 5
  br i1 %exitcond291.not.4, label %.preheader256, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 5, ptr %i.fd, align 1, !tbaa !30
  %exitcond291.not.5 = icmp eq i32 %i.ee, 6
  br i1 %exitcond291.not.5, label %.preheader256, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 6, ptr %i.fe, align 1, !tbaa !30
  br label %.preheader256

.preheader256:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %wide.trip.count306 = zext nneg i32 %i.ex to i64
  br label %bb.af

bb.af:                                            ; preds = %.preheader256, %._crit_edge
  %indvars.iv303 = phi i64 [ 0, %.preheader256 ], [ %indvars.iv.next304, %._crit_edge ] ; 2 uses
  %.pre329 = load i32, ptr %i.ad, align 4, !tbaa !20
  %.pre330 = load i32, ptr %0, align 8, !tbaa !27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %bb.af
  %i.ff = phi i32 [ %i.fw, %bb.aj ], [ %.pre330, %bb.af ] ; 2 uses
  %i.fg = phi i32 [ %i.fx, %bb.aj ], [ %.pre329, %bb.af ] ; 3 uses
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %bb.aj ], [ 0, %bb.af ] ; 4 uses
  %.0157 = phi i32 [ %i.gb, %bb.aj ], [ 0, %bb.af ] ; 3 uses
  %i.fh = add i32 %i.ff, 1                        ; 4 uses
  store i32 %i.fh, ptr %0, align 8, !tbaa !27
  %i.fi = icmp ugt i32 %i.fh, 7
  br i1 %i.fi, label %.lr.ph.i.i.i.i217, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit222

.lr.ph.i.i.i.i217:                                ; preds = %bb.ag, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220
  %i.fj = phi i32 [ %i.fu, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220 ], [ %i.fh, %bb.ag ]
  %i.fk = phi i32 [ %i.ft, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220 ], [ %i.fg, %bb.ag ]
  %i.fl = shl i32 %i.fk, 8
  %i.fm = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.fn = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i218 = icmp ult ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i218, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i217
  %i.fo = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i219 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i217
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store ptr %i.fp, ptr %i.ay, align 8, !tbaa !28
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220:         ; preds = %bb.ai, %bb.ah
  %i.fr = phi i32 [ %.pre1.i.i.i.i219, %bb.ah ], [ %i.fj, %bb.ai ]
  %.0.i.i.i.i.i221 = phi i8 [ %i.fo, %bb.ah ], [ %i.fq, %bb.ai ]
  %i.fs = zext i8 %.0.i.i.i.i.i221 to i32
  %i.ft = or disjoint i32 %i.fl, %i.fs            ; 3 uses
  store i32 %i.ft, ptr %i.ad, align 4, !tbaa !20
  %i.fu = add i32 %i.fr, -8                       ; 4 uses
  store i32 %i.fu, ptr %0, align 8, !tbaa !27
  %i.fv = icmp ugt i32 %i.fu, 7
  br i1 %i.fv, label %.lr.ph.i.i.i.i217, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit222, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit222: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220, %bb.ag
  %i.fw = phi i32 [ %i.fh, %bb.ag ], [ %i.fu, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220 ]
  %i.fx = phi i32 [ %i.fg, %bb.ag ], [ %i.ft, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i220 ]
  %i.fy = sub i32 8, %i.ff
  %i.fz = shl i32 8388608, %i.fy
  %i.ga = and i32 %i.fz, %i.fg
  %.not174 = icmp eq i32 %i.ga, 0
  br i1 %.not174, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit222
  %i.gb = add nuw nsw i32 %.0157, 1               ; 2 uses
  %exitcond292.not = icmp eq i32 %i.gb, %umax
  %indvars.iv.next298 = add i64 %indvars.iv297, 1
  br i1 %exitcond292.not, label %.critedge, label %bb.ag, !llvm.loop !89

bb.ak:                                            ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit222
  %i.gc = zext nneg i32 %.0157 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !30  ; 2 uses
  %.not275 = icmp eq i32 %.0157, 0
  br i1 %.not275, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.ak
  %i.gf = getelementptr nuw i8, ptr %i.b, i64 %indvars.iv297
  %9 = add i64 %indvars.iv297, -1                 ; 2 uses
  %10 = and i64 %9, 4294967295
  %11 = sub nsw i64 0, %10                        ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 %11
  %i.gh = getelementptr i8, ptr %i.b, i64 %9
  %scevgep296 = getelementptr i8, ptr %i.gh, i64 %11
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %scevgep296, i64 %indvars.iv297, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.5, %bb.ak
  store i8 %i.ge, ptr %i.b, align 1, !tbaa !30
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv303
  store i8 %i.ge, ptr %i.gi, align 1, !tbaa !30
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %bb.al, label %bb.af, !llvm.loop !90

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.gj = icmp sgt i32 %.1122, -2
  %i.gk = add i32 %.1122, 2                       ; 3 uses
  %wide.trip.count312 = zext i32 %i.gk to i64
  %i.gl = icmp samesign ult i32 %i.gk, 258
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.at
  %indvars.iv317 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next318, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.gm = call fastcc noundef i32 @_ZN9NCompress6NBZip2L8ReadBitsEPN5NBitm8CDecoderI9CInBufferEEj(ptr noundef nonnull %0, i32 noundef 5)
  br i1 %i.gj, label %.preheader253, label %.lr.ph272.preheader

.preheader254:                                    ; preds = %bb.as
  br i1 %i.gl, label %.lr.ph272.preheader, label %._crit_edge273

.lr.ph272.preheader:                              ; preds = %bb.am, %.preheader254
  %.0145.lcssa379 = phi i32 [ %i.gk, %.preheader254 ], [ 0, %bb.am ] ; 2 uses
  %i.gn = zext nneg i32 %.0145.lcssa379 to i64
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.gn
  %narrow = sub nuw nsw i32 258, %.0145.lcssa379
  %i.go = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.go, i1 false), !tbaa !30
  br label %._crit_edge273

.preheader253:                                    ; preds = %bb.am, %bb.as
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %bb.as ], [ 0, %bb.am ] ; 2 uses
  %.0147269 = phi i32 [ %.1148267, %bb.as ], [ %i.gm, %bb.am ] ; 2 uses
  %i.gp = add i32 %.0147269, -21
  %or.cond10266 = icmp ult i32 %i.gp, -20
  br i1 %or.cond10266, label %.critedge185, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %.preheader253
  %.pre331 = load i32, ptr %i.ad, align 4, !tbaa !20
  %.pre332 = load i32, ptr %0, align 8, !tbaa !27
  br label %.lr.ph268

.lr.ph268:                                        ; preds = %.lr.ph268.preheader, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234
  %i.gq = phi i32 [ %i.ib, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.pre331, %.lr.ph268.preheader ] ; 3 uses
  %i.gr = phi i32 [ %i.ic, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.pre332, %.lr.ph268.preheader ] ; 2 uses
  %.1148267 = phi i32 [ %i.ih, %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234 ], [ %.0147269, %.lr.ph268.preheader ] ; 3 uses
  %i.gs = add i32 %i.gr, 1                        ; 4 uses
  store i32 %i.gs, ptr %0, align 8, !tbaa !27
  %i.gt = icmp ugt i32 %i.gs, 7
  br i1 %i.gt, label %.lr.ph.i.i.i.i223, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228

.lr.ph.i.i.i.i223:                                ; preds = %.lr.ph268, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226
  %i.gu = phi i32 [ %i.hf, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226 ], [ %i.gs, %.lr.ph268 ]
  %i.gv = phi i32 [ %i.he, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226 ], [ %i.gq, %.lr.ph268 ]
  %i.gw = shl i32 %i.gv, 8
  %i.gx = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.gy = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i224 = icmp ult ptr %i.gx, %i.gy
  br i1 %.not.i.i.i.i.i224, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i223
  %i.gz = call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i225 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i223
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.ha, ptr %i.ay, align 8, !tbaa !28
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226:         ; preds = %bb.ao, %bb.an
  %i.hc = phi i32 [ %.pre1.i.i.i.i225, %bb.an ], [ %i.gu, %bb.ao ]
  %.0.i.i.i.i.i227 = phi i8 [ %i.gz, %bb.an ], [ %i.hb, %bb.ao ]
  %i.hd = zext i8 %.0.i.i.i.i.i227 to i32
  %i.he = or disjoint i32 %i.gw, %i.hd            ; 3 uses
  store i32 %i.he, ptr %i.ad, align 4, !tbaa !20
  %i.hf = add i32 %i.hc, -8                       ; 4 uses
  store i32 %i.hf, ptr %0, align 8, !tbaa !27
  %i.hg = icmp ugt i32 %i.hf, 7
  br i1 %i.hg, label %.lr.ph.i.i.i.i223, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226, %.lr.ph268
  %i.hh = phi i32 [ %i.gs, %.lr.ph268 ], [ %i.hf, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226 ] ; 3 uses
  %i.hi = phi i32 [ %i.gq, %.lr.ph268 ], [ %i.he, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i226 ] ; 3 uses
  %i.hj = sub i32 8, %i.gr
  %i.hk = shl i32 8388608, %i.hj
  %i.hl = and i32 %i.hk, %i.gq
  %.not176 = icmp eq i32 %i.hl, 0
  br i1 %.not176, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228
  %i.hm = add nuw nsw i32 %i.hh, 1                ; 2 uses
  store i32 %i.hm, ptr %0, align 8, !tbaa !27
  %i.hn = icmp eq i32 %i.hh, 7
  br i1 %i.hn, label %.lr.ph.i.i.i.i229, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234

.lr.ph.i.i.i.i229:                                ; preds = %bb.ap, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232
  %i.ho = phi i32 [ %i.hz, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232 ], [ 8, %bb.ap ]
  %i.hp = phi i32 [ %i.hy, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232 ], [ %i.hi, %bb.ap ]
  %i.hq = shl i32 %i.hp, 8
  %i.hr = load ptr, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.hs = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i.i.i.i230 = icmp ult ptr %i.hr, %i.hs
  br i1 %.not.i.i.i.i.i230, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i229
  %i.ht = call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.ay)
  %.pre1.i.i.i.i231 = load i32, ptr %0, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i229
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store ptr %i.hu, ptr %i.ay, align 8, !tbaa !28
  %i.hv = load i8, ptr %i.hr, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232:         ; preds = %bb.ar, %bb.aq
  %i.hw = phi i32 [ %.pre1.i.i.i.i231, %bb.aq ], [ %i.ho, %bb.ar ]
  %.0.i.i.i.i.i233 = phi i8 [ %i.ht, %bb.aq ], [ %i.hv, %bb.ar ]
  %i.hx = zext i8 %.0.i.i.i.i.i233 to i32
  %i.hy = or disjoint i32 %i.hq, %i.hx            ; 3 uses
  store i32 %i.hy, ptr %i.ad, align 4, !tbaa !20
  %i.hz = add i32 %i.hw, -8                       ; 4 uses
  store i32 %i.hz, ptr %0, align 8, !tbaa !27
  %i.ia = icmp ugt i32 %i.hz, 7
  br i1 %i.ia, label %.lr.ph.i.i.i.i229, label %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234, !llvm.loop !31

_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit234: ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232, %bb.ap
  %i.ib = phi i32 [ %i.hi, %bb.ap ], [ %i.hy, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232 ]
  %i.ic = phi i32 [ %i.hm, %bb.ap ], [ %i.hz, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i232 ]
  %i.id = sub nuw nsw i32 8, %i.hh
  %i.ie = lshr i32 %i.hi, %i.id
  %i.if = lshr i32 %i.ie, 22
  %i.ig = and i32 %i.if, 2
  %reass.sub = add i32 %.1148267, 1
  %i.ih = sub i32 %reass.sub, %i.ig               ; 2 uses
  %i.ii = add i32 %i.ih, -21
  %or.cond10 = icmp ult i32 %i.ii, -20
  br i1 %or.cond10, label %.critedge185, label %.lr.ph268, !llvm.loop !91

bb.as:                                            ; preds = %_ZN9NCompress6NBZip2L7ReadBitEPN5NBitm8CDecoderI9CInBufferEE.exit228
  %i.ij = trunc nuw nsw i32 %.1148267 to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv308
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !30
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond313 = icmp eq i64 %indvars.iv.next309, %wide.trip.count312
  br i1 %exitcond313, label %.preheader254, label %.preheader253, !llvm.loop !92

._crit_edge273:                                   ; preds = %.lr.ph272.preheader, %.preheader254
  %i.il = getelementptr inbounds nuw [1712 x i8], ptr %4, i64 %indvars.iv317
  %i.im = call noundef zeroext i1 @_ZN9NCompress8NHuffman8CDecoderILi20ELj258EE14SetCodeLengthsEPKh(ptr noundef nonnull align 4 dereferenceable(1712) %i.il, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %i.im, label %bb.at, label %.thread248

bb.at:                                            ; preds = %._crit_edge273
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count
  br i1 %exitcond321.not, label %.preheader252.preheader, label %bb.am, !llvm.loop !93

.preheader252.preheader:                          ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 0, i64 1024, i1 false), !tbaa !4
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %bb.bb, %.preheader252.preheader
  %.0138.ph = phi i32 [ %i.kv, %bb.bb ], [ 0, %.preheader252.preheader ] ; 7 uses
  %.0136.ph = phi i32 [ %.1137, %bb.bb ], [ 0, %.preheader252.preheader ]
  %.0134.ph = phi i32 [ %i.iv, %bb.bb ], [ 0, %.preheader252.preheader ]
  %.0132.ph = phi ptr [ %.1133, %bb.bb ], [ null, %.preheader252.preheader ]
  %.0129.ph = phi i32 [ %.1130, %bb.bb ], [ 0, %.preheader252.preheader ]
  %i.in = sub i32 %2, %.0138.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.ax
  %.0136 = phi i32 [ %.1137, %bb.ax ], [ %.0136.ph, %.preheader.outer ] ; 4 uses
  %.0134 = phi i32 [ %i.iv, %bb.ax ], [ %.0134.ph, %.preheader.outer ] ; 2 uses
  %.0132 = phi ptr [ %.1133, %bb.ax ], [ %.0132.ph, %.preheader.outer ]
  %.0129 = phi i32 [ %i.iz, %bb.ax ], [ %.0129.ph, %.preheader.outer ] ; 3 uses
  %.0125 = phi i32 [ %i.jb, %bb.ax ], [ 0, %.preheader.outer ] ; 10 uses
  %i.io = icmp eq i32 %.0134, 0
  br i1 %i.io, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.preheader
  %.not177 = icmp ult i32 %.0136, %i.ex
  br i1 %.not177, label %bb.av, label %.thread248

bb.av:                                            ; preds = %bb.au
  %i.ip = add nuw nsw i32 %.0136, 1
  %i.iq = zext nneg i32 %.0136 to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !30
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw [1712 x i8], ptr %4, i64 %i.it
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.preheader
  %.1137 = phi i32 [ %i.ip, %bb.av ], [ %.0136, %.preheader ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN9NCompress8NHuffman8CDecoderILi20ELj258EE12DecodeSymbolIN5NBitm8CDecoderI9CInBufferEEEEjPT_:bb.a
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 10, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %.not = icmp ult i32 %i.g, %i.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !142

.loopexit.loopexit:                               ; preds = %.preheader
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i32 [ %i.p, %bb.b ], [ %i.s, %.loopexit.loopexit ] ; 3 uses
  %i.t = add i32 %.1, %i.c                        ; 3 uses
  store i32 %i.t, ptr %1, align 8, !tbaa !27
  %i.u = icmp ugt i32 %i.t, 7
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit

.lr.ph.i.i:                                       ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i, %.lr.ph.i.i
  %i.x = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.ai, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.y = phi i32 [ %i.b, %.lr.ph.i.i ], [ %i.ah, %_ZN9CInBuffer8ReadByteEv.exit.i.i ]
  %i.z = shl i32 %i.y, 8
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !28  ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i.i = icmp ult ptr %i.aa, %i.ab
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.v)
  %.pre1.i.i = load i32, ptr %1, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !28
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.af = phi i32 [ %.pre1.i.i, %bb.d ], [ %i.x, %bb.e ]
  %.0.i.i.i = phi i8 [ %i.ac, %bb.d ], [ %i.ae, %bb.e ]
  %i.ag = zext i8 %.0.i.i.i to i32
  %i.ah = or disjoint i32 %i.z, %i.ag             ; 2 uses
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !20
  %i.ai = add i32 %i.af, -8                       ; 3 uses
  store i32 %i.ai, ptr %1, align 8, !tbaa !27
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %bb.c, label %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit, !llvm.loop !31

_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i, %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.al = zext nneg i32 %.1 to i64                ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = sub i32 %i.g, %i.aq
  %i.as = sub nsw i32 20, %.1
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = add i32 %i.at, %i.an                    ; 2 uses
  %i.av = icmp ugt i32 %i.au, 257
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit, %bb.f
  %.0 = phi i32 [ %i.az, %bb.f ], [ -1, %_ZN5NBitm8CDecoderI9CInBufferE7MovePosEj.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN9NCompress12CMtf8Decoder10GetAndMoveEj(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = lshr i32 %1, 3                           ; 3 uses
  %i.b = shl i32 %1, 3
  %i.c = and i32 %i.b, 56
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  %i.h = lshr i64 %i.f, %i.g
  %i.i = and i64 %i.h, 255                        ; 2 uses
  %i.j = and i32 %1, 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.l = shl i64 %i.k, 8
  %i.m = or disjoint i64 %i.l, %i.i
  store i64 %i.m, ptr %0, align 8, !tbaa !82
  %i.n = lshr i64 %i.k, 56
  %i.o = add nsw i32 %i.a, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.030 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.029 = phi i64 [ %i.n, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %i.p = icmp ult i32 %.030, %.0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = zext nneg i32 %.030 to i64
  %i.r = zext i32 %.0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.133 = phi i64 [ %.029, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82   ; 2 uses
  %i.x = shl i64 %i.t, 8
  %i.y = or i64 %i.x, %.133
  store i64 %i.y, ptr %i.s, align 8, !tbaa !82
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.t, i64 8)
  store i64 %i.z, ptr %i.v, align 8, !tbaa !82
  %i.aa = lshr i64 %i.w, 56                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !143

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.131.lcssa = phi i32 [ %.030, %bb.c ], [ %i.ac, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.029, %bb.c ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ad = zext i32 %.131.lcssa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !82 ; 2 uses
  %i.ag = shl i64 256, %i.g                       ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = and i64 %i.af, %i.ai
  %i.ak = shl i64 %i.af, 8
  %i.al = or i64 %i.ak, %.1.lcssa
  %i.am = and i64 %i.al, %i.ah
  %i.an = or i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.ae, align 8, !tbaa !82
  %i.ao = load i64, ptr %0, align 8, !tbaa !82
  %i.ap = trunc i64 %i.ao to i8
  ret i8 %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare i32 @AutoResetEvent_CreateNotSignaled(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

declare noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45), i32 noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN9NCompress6NBZip26CStateE", !10, i64 0, !12, i64 8, !13, i64 16, !16, i64 32, !17, i64 40, !17, i64 144, !17, i64 248, !6, i64 352}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN9NCompress6NBZip28CDecoderE", !11, i64 0}
!13 = !{!"_ZTSN8NWindows7CThreadE", !14, i64 0}
!14 = !{!"_ZTS8_CThread", !15, i64 0, !5, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN8NWindows16NSynchronization15CAutoResetEventE", !18, i64 0}
!18 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !19, i64 0}
!19 = !{!"_ZTS7_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!20 = !{!21, !5, i64 4}
!21 = !{!"_ZTSN5NBitm8CDecoderI9CInBufferEE", !5, i64 0, !5, i64 4, !22, i64 8}
!22 = !{!"_ZTS9CInBuffer", !23, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !26, i64 32, !5, i64 40, !16, i64 44}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !25, i64 0}
!25 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!26 = !{!"long long", !6, i64 0}
!27 = !{!21, !5, i64 0}
!28 = !{!22, !23, i64 0}
!29 = !{!22, !23, i64 8}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!34, !5, i64 0}
!34 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !7, i64 0}
!37 = !{!38, !23, i64 0}
!38 = !{!"_ZTS10COutBuffer", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !39, i64 24, !26, i64 32, !23, i64 40, !16, i64 48}
!39 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !40, i64 0}
!40 = !{!"p1 _ZTS20ISequentialOutStream", !11, i64 0}
!41 = !{!38, !5, i64 8}
!42 = !{!39, !40, i64 0}
!43 = !{!38, !23, i64 40}
!44 = !{!45, !5, i64 0}
!45 = !{!"_ZTS17CBZip2CombinedCrc", !5, i64 0}
!46 = !{!18, !5, i64 0}
!47 = !{!48, !53, i64 28696}
!48 = !{!"_ZTSN9NCompress6NBZip28CDecoderE", !49, i64 0, !51, i64 8, !34, i64 16, !38, i64 24, !6, i64 80, !21, i64 336, !6, i64 392, !6, i64 18396, !26, i64 28672, !16, i64 28680, !45, i64 28684, !52, i64 28688, !53, i64 28696, !5, i64 28704, !54, i64 28712, !55, i64 28816, !5, i64 28856, !16, i64 28860, !5, i64 28864, !16, i64 28868, !16, i64 28869, !16, i64 28870, !54, i64 28872, !5, i64 28976, !5, i64 28980, !5, i64 28984}
!49 = !{!"_ZTS14ICompressCoder", !50, i64 0}
!50 = !{!"_ZTS8IUnknown"}
!51 = !{!"_ZTS19ICompressSetCoderMt", !50, i64 0}
!52 = !{!"p1 _ZTS21ICompressProgressInfo", !11, i64 0}
!53 = !{!"p1 _ZTSN9NCompress6NBZip26CStateE", !11, i64 0}
!54 = !{!"_ZTSN8NWindows16NSynchronization17CManualResetEventE", !18, i64 0}
!55 = !{!"_ZTSN8NWindows16NSynchronization16CCriticalSectionE", !56, i64 0}
!56 = !{!"_ZTS16CCriticalSection", !6, i64 0}
!57 = !{!48, !5, i64 28704}
!58 = !{!48, !5, i64 28856}
!59 = !{!48, !16, i64 28680}
!60 = !{!24, !25, i64 0}
!61 = !{!48, !16, i64 28868}
!62 = !{!48, !16, i64 28860}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = distinct !{!65, !32}
!66 = !{ptr @_ZN9NCompress6NBZip28CDecoderD0Ev}
!67 = !{!13, !5, i64 8}
!68 = !{!9, !12, i64 8}
!69 = distinct !{!69, !32, !70}
!70 = !{!"llvm.loop.unswitch.partial.disable"}
!71 = !{!16, !16, i64 0}
!72 = !{!48, !52, i64 28688}
!73 = distinct !{!73, !32}
!74 = !{!48, !5, i64 28984}
!75 = !{!48, !5, i64 28980}
!76 = !{!48, !5, i64 28976}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = !{!22, !26, i64 32}
!80 = !{!22, !23, i64 16}
!81 = !{!48, !26, i64 28672}
!82 = !{!26, !26, i64 0}
!83 = !{ptr @_ZN9NCompress6NBZip28CDecoder16SetRatioProgressEy}
!84 = distinct !{!84, !32}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32, !95, !96}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !32, !95}
!100 = !{!101, !101, i64 0}
!101 = !{!"short", !6, i64 0}
!102 = !{!38, !5, i64 12}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = distinct !{!105, !32}
!106 = distinct !{!106, !32}
!107 = !{!108, !12, i64 0}
!108 = !{!"_ZTSN9NCompress6NBZip28CDecoder15CDecoderFlusherE", !12, i64 0, !16, i64 8, !16, i64 9}
!109 = !{!108, !16, i64 8}
!110 = !{!108, !16, i64 9}
!111 = distinct !{null}
!112 = !{!113, !5, i64 0}
!113 = !{!"_ZTS16CSystemException", !5, i64 0}
!114 = distinct !{null, null, null}
!115 = !{!48, !16, i64 28869}
!116 = distinct !{!116, !32}
!117 = !{!48, !5, i64 28864}
!118 = !{!48, !16, i64 28870}
!119 = distinct !{ptr @_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv, null, null, null}
!120 = !{!121, !5, i64 28976}
!121 = !{!"_ZTSN9NCompress6NBZip212CNsisDecoderE", !122, i64 0, !123, i64 8, !124, i64 16, !34, i64 24, !21, i64 32, !6, i64 88, !6, i64 18092, !9, i64 28368, !5, i64 28976, !5, i64 28980, !5, i64 28984, !5, i64 28988, !5, i64 28992, !5, i64 28996}
!122 = !{!"_ZTS19ISequentialInStream", !50, i64 0}
!123 = !{!"_ZTS20ICompressSetInStream", !50, i64 0}
!124 = !{!"_ZTS25ICompressSetOutStreamSize", !50, i64 0}
!125 = !{!121, !5, i64 28980}
!126 = !{!121, !5, i64 28984}
!127 = !{!121, !5, i64 28992}
!128 = !{!121, !5, i64 28996}
!129 = !{!121, !5, i64 28988}
!130 = distinct !{!130, !32}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !32}
!133 = !{!11, !11, i64 0}
!134 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD2Ev}
!135 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoder7ReleaseEv}
!136 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD0Ev, ptr @_ZN9NCompress6NBZip212CNsisDecoderD2Ev}
!137 = !{ptr @_ZN9NCompress6NBZip212CNsisDecoderD0Ev}
!138 = !{ptr @_ZN9NCompress6NBZip28CDecoder7ReleaseEv}
!139 = distinct !{!139, !32}
!140 = distinct !{!140, !32}
!141 = distinct !{!141, !32}
!142 = distinct !{!142, !32}
!143 = distinct !{!143, !32}
end_hunk_2
