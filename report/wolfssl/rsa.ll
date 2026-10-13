Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/rsa?download=true
inline.NumInlined: 69
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wc_RsaPad_ex:bb.a
  %i.fx = zext i32 %i.fs to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.fx
  %i.fz = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr readonly align 1 %0, i64 %i.fz, i1 false)
  %i.ga = add i32 %i.fw, -1
  %i.gb = zext i32 %i.fw to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 %i.gb
  store i8 1, ptr %i.gc, align 1, !tbaa !24
  %i.gd = zext i32 %i.ga to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 %i.gd
  %i.gf = sext i32 %i.fu to i64                   ; 2 uses
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %i.ge, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gi, i8 0, i64 %i.gf, i1 false)
  %.neg34 = add i32 %i.fw, 2
  %i.gj = add i32 %i.fg, %i.ft
  %i.gk = sub i32 %.neg34, %i.gj
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 %i.gl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gm, ptr nonnull align 16 %i.b, i64 %i.fi, i1 false)
  %i.gn = call i32 @wc_RNG_GenerateBlock(ptr noundef %5, ptr noundef nonnull %i.c, i32 noundef %i.fg) #12 ; 2 uses
  %.not86.i = icmp eq i32 %i.gn, 0
  br i1 %.not86.i, label %bb.q, label %.sink.split.i

bb.q:                                             ; preds = %bb.p
  %i.go = xor i32 %i.fg, -1
  %i.gp = add i32 %3, %i.go                       ; 5 uses
  %i.gq = icmp ugt i32 %i.gp, 520
  br i1 %i.gq, label %RsaPad_OAEP.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gr = zext nneg i32 %i.gp to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.gr, i1 false)
  %i.gs = call fastcc i32 @RsaMGF(i32 noundef %8, ptr noundef nonnull %i.c, i32 noundef %i.fg, ptr noundef nonnull %i.a, i32 noundef %i.gp, ptr noundef %13) ; 2 uses
  %.not87.i = icmp eq i32 %i.gs, 0
  br i1 %.not87.i, label %bb.s, label %.sink.split.i

bb.s:                                             ; preds = %bb.r
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  call fastcc void @xorbuf(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.a, i32 noundef %i.gp)
  store i8 0, ptr %2, align 1, !tbaa !24
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.gw = call fastcc i32 @RsaMGF(i32 noundef %8, ptr noundef nonnull %i.gu, i32 noundef %i.gp, ptr noundef nonnull %i.gv, i32 noundef %i.fg, ptr noundef %13) ; 2 uses
  %.not88.i = icmp eq i32 %i.gw, 0
  br i1 %.not88.i, label %bb.t, label %.sink.split.i

bb.t:                                             ; preds = %bb.s
  call fastcc void @xorbuf(ptr noundef nonnull %i.gv, ptr noundef nonnull %i.c, i32 noundef %i.fg)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %.0.ph.i = phi i32 [ %i.gs, %bb.r ], [ %i.gn, %bb.p ], [ 0, %bb.t ], [ %i.gw, %bb.s ]
  call fastcc void @ForceZero(ptr noundef nonnull %i.c, i64 noundef %i.fi)
  br label %RsaPad_OAEP.exit

RsaPad_OAEP.exit:                                 ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q, %.sink.split.i
  %.0.i = phi i32 [ -132, %bb.o ], [ -132, %bb.i ], [ %i.fg, %bb.j ], [ -125, %bb.k ], [ %i.fk, %bb.l ], [ -173, %bb.m ], [ -173, %bb.n ], [ -125, %bb.q ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %RsaPad.exit

bb.u:                                             ; preds = %bb.a
  %i.gx = icmp ugt i32 %3, 512
  br i1 %i.gx, label %RsaPad.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gy = tail call i32 @wc_HashGetDigestSize(i32 noundef %7) #12 ; 3 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %RsaPad.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i29 = icmp eq i32 %1, %i.gy
  br i1 %.not.i29, label %bb.x, label %RsaPad.exit

bb.x:                                             ; preds = %bb.w
  %i.ha = add i32 %12, 7
  %i.hb = and i32 %i.ha, 7                        ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0                    ; 2 uses
  br i1 %i.hc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %2, align 1, !tbaa !24
  %i.he = add nsw i32 %3, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.079.i = phi i32 [ %i.he, %bb.y ], [ %3, %bb.x ] ; 2 uses
  %.077.i = phi ptr [ %i.hd, %bb.y ], [ %2, %bb.x ] ; 5 uses
  %i.hf = icmp eq i32 %11, -1
  br i1 %i.hf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hg = icmp eq i32 %12, 1024
  %i.hh = icmp eq i32 %1, 64
  %or.cond.i31 = and i1 %i.hh, %i.hg
  %spec.store.select.i = select i1 %or.cond.i31, i32 62, i32 %1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hi = icmp slt i32 %11, -1
  br i1 %i.hi, label %RsaPad.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.i = phi i32 [ %spec.store.select.i, %bb.aa ], [ %11, %bb.ab ] ; 7 uses
  %i.hj = sub nsw i32 %.079.i, %1
  %i.hk = add nuw nsw i32 %.078.i, 2
  %i.hl = icmp slt i32 %i.hj, %i.hk
  br i1 %i.hl, label %RsaPad.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hm = add nsw i32 %.079.i, -1                 ; 2 uses
  %i.hn = sub nsw i32 %i.hm, %1                   ; 2 uses
  %i.ho = add nuw i32 %1, 8                       ; 2 uses
  %i.hp = add i32 %.078.i, %i.ho
  %i.hq = zext i32 %i.hp to i64
  %i.hr = tail call ptr @wolfSSL_Malloc(i64 noundef %i.hq) #12 ; 7 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %RsaPad.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hu = zext nneg i32 %1 to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr readonly align 1 %0, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu ; 3 uses
  %i.hw = ptrtoint ptr %i.hr to i64
  %.not99.i = icmp eq i32 %.078.i, 0
  br i1 %.not99.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = tail call i32 @wc_RNG_GenerateBlock(ptr noundef %5, ptr noundef nonnull %i.hv, i32 noundef %.078.i) #12 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ag, label %.thread96.i

bb.ag:                                            ; preds = %bb.af
  %i.hz = zext nneg i32 %.078.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hz
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.0.ph.i30 = phi ptr [ %i.hv, %bb.ae ], [ %i.ia, %bb.ag ]
  %i.ib = ptrtoint ptr %.0.ph.i30 to i64
  %i.ic = sub i64 %i.ib, %i.hw
  %i.id = trunc i64 %i.ic to i32
  %i.ie = sext i32 %i.hn to i64
  %i.if = getelementptr inbounds i8, ptr %.077.i, i64 %i.ie ; 3 uses
  %i.ig = tail call i32 @wc_Hash(i32 noundef %7, ptr noundef nonnull %i.hr, i32 noundef %i.id, ptr noundef %i.if, i32 noundef %1) #12 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ai, label %.thread96.i

bb.ai:                                            ; preds = %bb.ah
  %i.ii = zext i32 %i.hm to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %.077.i, i64 %i.ii
  store i8 -68, ptr %i.ij, align 1, !tbaa !24
  %i.ik = tail call fastcc i32 @RsaMGF(i32 noundef %8, ptr noundef %i.if, i32 noundef %1, ptr noundef %.077.i, i32 noundef %i.hn, ptr noundef %13) ; 2 uses
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.aj, label %.thread96.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.hc, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %notmask.i = shl nsw i32 -1, %i.hb
  %i.im = load i8, ptr %.077.i, align 1, !tbaa !24
  %i.in = trunc nsw i32 %notmask.i to i8
  %i.io = xor i8 %i.in, -1
  %i.ip = and i8 %i.im, %i.io
  store i8 %i.ip, ptr %.077.i, align 1, !tbaa !24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.iq = zext nneg i32 %.078.i to i64
  %i.ir = sub nsw i64 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.if, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -1 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !24
  %i.iv = xor i8 %i.iu, 1
  store i8 %i.iv, ptr %i.it, align 1, !tbaa !24
  %i.iw = sext i32 %i.ho to i64
  %i.ix = getelementptr inbounds i8, ptr %i.hr, i64 %i.iw
  tail call fastcc void @xorbuf(ptr noundef %i.is, ptr noundef nonnull %i.ix, i32 noundef %.078.i)
  br label %.thread96.i

.thread96.i:                                      ; preds = %bb.al, %bb.ai, %bb.ah, %bb.af
  %.298.i = phi i32 [ %i.ik, %bb.ai ], [ 0, %bb.al ], [ %i.ig, %bb.ah ], [ %i.hx, %bb.af ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.hr) #12
  br label %RsaPad.exit

RsaPad.exit:                                      ; preds = %.thread96.i, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.u, %.loopexit.i, %bb.f, %bb.c, %bb.b, %bb.a, %RsaPad_OAEP.exit
  %.0 = phi i32 [ -201, %bb.c ], [ -201, %bb.a ], [ %.0.i, %RsaPad_OAEP.exit ], [ %i.s, %bb.f ], [ -173, %bb.b ], [ 0, %.loopexit.i ], [ -173, %bb.w ], [ -125, %bb.u ], [ %i.gy, %bb.v ], [ -250, %bb.ab ], [ -250, %bb.ac ], [ %.298.i, %.thread96.i ], [ -125, %bb.ad ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_RsaUnPad_ex(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca [520 x i8], align 16              ; 18 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i16, align 2                      ; 13 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  switch i32 %4, label %RsaUnPad.exit [
    i32 0, label %bb.b
    i32 1, label %bb.i
    i32 2, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %2, null
  %i.j = add i32 %1, -65536
  %i.k = icmp ult i32 %i.j, -65534
  %or.cond3.i = or i1 %i.i, %i.k
  br i1 %or.cond3.i, label %RsaUnPad.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext i8 %3 to i32                        ; 2 uses
  %i.m = icmp eq i8 %3, 1
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %0, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.e, label %RsaUnPad.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %.not60.i = icmp eq i8 %i.p, 1
  br i1 %.not60.i, label %.preheader.preheader.i, label %RsaUnPad.exit

.preheader.preheader.i:                           ; preds = %bb.e
  %i.q = trunc nuw i32 %1 to i16                  ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %exitcond59.not105 = icmp eq i32 %1, 2
  br i1 %exitcond59.not105, label %.split.loop.exit92, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %exitcond59.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond59.not, label %.split.loop.exit92, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv106 = phi i64 [ %indvars.iv.next, %.preheader.i ], [ 2, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv106, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv106
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24
  %.not61.i = icmp eq i8 %i.s, -1
  br i1 %.not61.i, label %.preheader.i, label %.split.loop.exit, !llvm.loop !40

.split.loop.exit:                                 ; preds = %.lr.ph
  %indvars.le = trunc i64 %indvars.iv.next to i16
  br label %.split.loop.exit92

.split.loop.exit92:                               ; preds = %.preheader.i, %.preheader.preheader.i, %.split.loop.exit
  %.1.i = phi i16 [ %indvars.le, %.split.loop.exit ], [ %i.q, %.preheader.preheader.i ], [ %i.q, %.preheader.i ] ; 3 uses
  %i.t = zext i16 %.1.i to i32
  %i.u = icmp ult i16 %.1.i, 11
  br i1 %i.u, label %RsaUnPad.exit, label %bb.f

bb.f:                                             ; preds = %.split.loop.exit92
  %i.v = zext i16 %.1.i to i64
  %i.w = getelementptr i8, ptr %0, i64 %i.v       ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %.not62.i = icmp eq i8 %i.y, 0
  br i1 %.not62.i, label %bb.g, label %RsaUnPad.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.w, ptr %2, align 8, !tbaa !28
  %i.z = sub nsw i32 %1, %i.t
  br label %RsaUnPad.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i16 0, ptr %i.e, align 2, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i8 0, ptr %i.f, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aa = icmp samesign ugt i32 %1, 2
  br i1 %i.aa, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter276 = and i64 %wide.trip.count.i, 1
  %i.ab = icmp eq i32 %1, 3
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.ac = and i64 %wide.trip.count.i, 65534
  %i.ad = add nsw i64 %i.ac, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.265.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %.0..0..0..0..0..0.12.i = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.ae = xor i16 %.0..0..0..0..0..0.12.i, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -1
  %.neg.i.i = ashr i32 %i.ai, 31
  %.neg4.i.i = trunc nsw i32 %.neg.i.i to i16     ; 2 uses
  %i.aj = and i16 %.neg4.i.i, %i.ae
  %i.ak = zext i16 %i.aj to i32
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv.next.i to i32
  %i.am = and i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %.265.i
  %.0..0..0..0..0..0.13.i = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.ao = or i16 %.0..0..0..0..0..0.13.i, %.neg4.i.i
  store volatile i16 %i.ao, ptr %i.e, align 2, !tbaa !69
  %.0..0..0..0..0..0.12.i.1 = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.ap = xor i16 %.0..0..0..0..0..0.12.i.1, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -1
  %.neg.i.i.1 = ashr i32 %i.at, 31
  %.neg4.i.i.1 = trunc nsw i32 %.neg.i.i.1 to i16 ; 2 uses
  %i.au = and i16 %.neg4.i.i.1, %i.ap
  %i.av = zext i16 %i.au to i32
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.aw = trunc nuw i64 %indvars.iv.next.i.1 to i32
  %i.ax = and i32 %i.av, %i.aw
  %i.ay = or i32 %i.ax, %i.an                     ; 3 uses
  %.0..0..0..0..0..0.13.i.1 = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.az = or i16 %.0..0..0..0..0..0.13.i.1, %.neg4.i.i.1
  store volatile i16 %i.az, ptr %i.e, align 2, !tbaa !69
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ad
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.265.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod279 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %.0..0..0..0..0..0.12.i.epil = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.ba = xor i16 %.0..0..0..0..0..0.12.i.epil, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.epil.init
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -1
  %.neg.i.i.epil = ashr i32 %i.be, 31
  %.neg4.i.i.epil = trunc nsw i32 %.neg.i.i.epil to i16 ; 2 uses
  %i.bf = and i16 %.neg4.i.i.epil, %i.ba
  %i.bg = zext i16 %i.bf to i32
  %i.bh = trunc i64 %indvars.iv.i.epil.init to i32
  %i.bi = add i32 %i.bh, 1
  %i.bj = and i32 %i.bi, %i.bg
  %i.bk = or i32 %i.bj, %.265.i.epil.init
  %.0..0..0..0..0..0.13.i.epil = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.bl = or i16 %.0..0..0..0..0..0.13.i.epil, %.neg4.i.i.epil
  store volatile i16 %i.bl, ptr %i.e, align 2, !tbaa !69
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.h
  %.2.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.ay, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bk, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.0..0..0..0..0..0.11.i = load volatile i8, ptr %i.f, align 1, !tbaa !24
  %.0..0..0..0..0..0.14.i = load volatile i16, ptr %i.e, align 2, !tbaa !69
  %i.bm = icmp samesign ult i32 %.2.lcssa.i, 11
  %i.bn = sext i1 %i.bm to i8
  store volatile i8 %i.bn, ptr %i.g, align 1, !tbaa !24
  %.0..0..0..0..0..0.10.i = load volatile i8, ptr %i.g, align 1, !tbaa !24
  %i.bo = trunc i16 %.0..0..0..0..0..0.14.i to i8
  %i.bp = xor i8 %i.bo, -1
  %i.bq = load i8, ptr %0, align 1, !tbaa !24
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = lshr i32 %i.bs, 31
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = add nsw i8 %i.bu, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = xor i32 %i.l, -1
  %i.ca = add nsw i32 %i.by, %i.bz
  %i.cb = lshr i32 %i.ca, 31
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  %i.cd = add nsw i8 %i.cc, -1
  %i.ce = xor i32 %i.by, -1
  %i.cf = add nsw i32 %i.ce, %i.l
  %i.cg = lshr i32 %i.cf, 31
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %i.ci = add nsw i8 %i.ch, -1
  %i.cj = or i8 %.0..0..0..0..0..0.11.i, %i.bp
  %i.ck = or i8 %i.cj, %.0..0..0..0..0..0.10.i
  %i.cl = or i8 %i.ck, %i.bv
  %i.cm = or i8 %i.cl, %i.ci
  %i.cn = or i8 %i.cm, %i.cd                      ; 2 uses
  store volatile i8 %i.cn, ptr %i.f, align 1, !tbaa !24
  %i.co = zext nneg i32 %.2.lcssa.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  store ptr %i.cp, ptr %2, align 8, !tbaa !28
  %i.cq = lshr i8 %i.cn, 7
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -1
  store volatile i32 %i.cs, ptr %i.h, align 4, !tbaa !18
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.h, align 4, !tbaa !18
  %i.ct = sub nsw i32 %1, %.2.lcssa.i
  %i.cu = and i32 %.0..0..0..0..0..0..i, %i.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %RsaUnPad.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.cv = icmp eq ptr %7, null
  %i.cw = icmp ne i32 %8, 0
  %or.cond.i = and i1 %i.cv, %i.cw
  br i1 %or.cond.i, label %RsaUnPad_OAEP.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = tail call i32 @wc_HashGetDigestSize(i32 noundef %5) #12
  %.fr280 = freeze i32 %i.cx                      ; 16 uses
  %i.cy = icmp slt i32 %.fr280, 0
  br i1 %i.cy, label %RsaUnPad_OAEP.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = shl nuw i32 %.fr280, 1                  ; 3 uses
  %i.da = add i32 %i.cz, 2
  %i.db = icmp ult i32 %1, %i.da
  br i1 %i.db, label %RsaUnPad_OAEP.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = zext i32 %1 to i64                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.dc, i1 false)
  %i.dd = add nuw i32 %.fr280, 1                  ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de
  %i.dg = xor i32 %.fr280, -1
  %i.dh = add i32 %1, %i.dg                       ; 9 uses
  %i.di = call fastcc i32 @RsaMGF(i32 noundef %6, ptr noundef nonnull %i.df, i32 noundef %i.dh, ptr noundef nonnull %i.c, i32 noundef %.fr280, ptr noundef %11) ; 2 uses
  %.not.i21 = icmp eq i32 %i.di, 0
  br i1 %.not.i21, label %bb.m, label %RsaUnPad_OAEP.exit

bb.m:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, 7
  %or.cond.i.i = icmp eq i64 %i.dl, 0
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = and i32 %.fr280, 2147483640
  %.idx.i.i.i = zext nneg i32 %i.dm to i64        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx.i.i.i
  %.not.i.i.i = icmp samesign ult i32 %.fr280, 8
  br i1 %.not.i.i.i, label %XorWords.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  %12 = ptrtoaddr ptr %0 to i64                   ; 3 uses
  %i.do = add i64 %12, %.idx.i.i.i
  %i.dp = add i64 %i.do, 1
  %i.dq = add i64 %12, 9
  %i.dr = call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.dq)
  %i.ds = add i64 %i.dr, -2
  %i.dt = sub i64 %i.ds, %12                      ; 2 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.dv, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %i.c, i64 %i.dw   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dj, i64 %i.dw  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.dz ; 3 uses
  %next.gep107 = getelementptr i8, ptr %i.dj, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !22
  %wide.load108 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !22
  %i.eb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %next.gep, align 16, !tbaa !22
  %wide.load110 = load <2 x i64>, ptr %i.eb, align 16, !tbaa !22
  %i.ec = xor <2 x i64> %wide.load109, %wide.load
  %i.ed = xor <2 x i64> %wide.load110, %wide.load108
  store <2 x i64> %i.ec, ptr %next.gep, align 16, !tbaa !22
  store <2 x i64> %i.ed, ptr %i.eb, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i.i, label %.lr.ph.i.i.i.preheader266

.lr.ph.i.i.i.preheader266:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.039.0.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.dx, %middle.block ]
  %.ph267 = phi ptr [ %i.dj, %.lr.ph.i.i.i.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader266, %.lr.ph.i.i.i
  %.sroa.039.0.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i ], [ %.sroa.039.0.i.i.ph, %.lr.ph.i.i.i.preheader266 ] ; 3 uses
  %i.ef = phi ptr [ %i.eg, %.lr.ph.i.i.i ], [ %.ph267, %.lr.ph.i.i.i.preheader266 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i.i, i64 8 ; 2 uses
  %i.ej = load i64, ptr %.sroa.039.0.i.i, align 8, !tbaa !22
  %i.ek = xor i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %.sroa.039.0.i.i, align 8, !tbaa !22
  %i.el = icmp ult ptr %i.eg, %i.dn
  br i1 %i.el, label %.lr.ph.i.i.i, label %XorWords.exit.i.i, !llvm.loop !43

XorWords.exit.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %bb.n
  %.sroa.039.1.i.i = phi ptr [ %i.c, %bb.n ], [ %i.dx, %middle.block ], [ %i.ei, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.dj, %bb.n ], [ %i.dy, %middle.block ], [ %i.eg, %.lr.ph.i.i.i ]
  %i.em = and i32 %.fr280, 7
  br label %bb.o

bb.o:                                             ; preds = %XorWords.exit.i.i, %bb.m
  %.126.i.i = phi i32 [ %i.em, %XorWords.exit.i.i ], [ %.fr280, %bb.m ] ; 9 uses
  %.123.i.i = phi ptr [ %.sroa.039.1.i.i, %XorWords.exit.i.i ], [ %i.c, %bb.m ] ; 8 uses
  %.1.i.i = phi ptr [ %.sroa.0.0.i.i, %XorWords.exit.i.i ], [ %i.dj, %bb.m ] ; 8 uses
  %.not51.i.i = icmp eq i32 %.126.i.i, 0
  br i1 %.not51.i.i, label %xorbuf.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.o
  %i.en = zext nneg i32 %.126.i.i to i64          ; 5 uses
  %min.iters.check114 = icmp ult i32 %.126.i.i, 4
  br i1 %min.iters.check114, label %.lr.ph56.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eo = zext nneg i32 %.126.i.i to i64          ; 2 uses
  %i.ep = getelementptr i8, ptr %.123.i.i, i64 %i.eo
  %i.eq = getelementptr i8, ptr %.1.i.i, i64 %i.eo
  %bound0 = icmp ult ptr %.123.i.i, %i.eq
  %bound1 = icmp ult ptr %.1.i.i, %i.ep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %.126.i.i, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.en, 28
  %n.vec117 = and i64 %i.en, 2147483616           ; 6 uses
  %i.es = getelementptr i8, ptr %.1.i.i, i64 %n.vec117
  %i.et = getelementptr i8, ptr %.123.i.i, i64 %n.vec117
  %i.eu = trunc nuw nsw i64 %n.vec117 to i32
  %i.ev = sub nsw i32 %.126.i.i, %i.eu
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next126, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %.1.i.i, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %.123.i.i, i64 %index119 ; 3 uses
  %i.ew = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !24, !alias.scope !70
  %wide.load123 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !24, !alias.scope !70
  %i.ex = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load124 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  %wide.load125 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  %i.ey = xor <16 x i8> %wide.load124, %wide.load122
  %i.ez = xor <16 x i8> %wide.load125, %wide.load123
  store <16 x i8> %i.ey, ptr %next.gep121, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  store <16 x i8> %i.ez, ptr %i.ex, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  %index.next126 = add nuw i64 %index119, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next126, %n.vec117
  br i1 %i.fa, label %middle.block127, label %vector.body118, !llvm.loop !47

middle.block127:                                  ; preds = %vector.body118
  %cmp.n128 = icmp eq i64 %n.vec117, %i.en
  br i1 %cmp.n128, label %xorbuf.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block127
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.i.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec117, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.en, 2147483644           ; 5 uses
  %i.fb = getelementptr i8, ptr %.1.i.i, i64 %n.vec132
  %i.fc = getelementptr i8, ptr %.123.i.i, i64 %n.vec132
  %i.fd = trunc nuw nsw i64 %n.vec132 to i32
  %i.fe = sub nsw i32 %.126.i.i, %i.fd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.1.i.i, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.123.i.i, i64 %index133 ; 2 uses
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !24, !alias.scope !70
  %wide.load137 = load <4 x i8>, ptr %next.gep135, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  %i.ff = xor <4 x i8> %wide.load137, %wide.load136
  store <4 x i8> %i.ff, ptr %next.gep135, align 1, !tbaa !24, !alias.scope !71, !noalias !70
  %index.next138 = add nuw i64 %index133, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %n.vec132, %i.en
  br i1 %cmp.n139, label %xorbuf.exit.i, label %.lr.ph56.i.i.preheader

.lr.ph56.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.i.ph = phi ptr [ %.1.i.i, %iter.check ], [ %.1.i.i, %vector.memcheck ], [ %i.es, %vec.epilog.iter.check ], [ %i.fb, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.i.ph = phi ptr [ %.123.i.i, %iter.check ], [ %.123.i.i, %vector.memcheck ], [ %i.et, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.i.ph = phi i32 [ %.126.i.i, %iter.check ], [ %.126.i.i, %vector.memcheck ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ] ; 4 uses
  %i.fh = add i32 %.22752.i.i.ph, -1
  %xtraiter = and i32 %.22752.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.i.prol.loopexit, label %.lr.ph56.i.i.prol

.lr.ph56.i.i.prol:                                ; preds = %.lr.ph56.i.i.preheader, %.lr.ph56.i.i.prol
  %.254.i.i.prol = phi ptr [ %i.fi, %.lr.ph56.i.i.prol ], [ %.254.i.i.ph, %.lr.ph56.i.i.preheader ] ; 2 uses
  %.22453.i.i.prol = phi ptr [ %i.fk, %.lr.ph56.i.i.prol ], [ %.22453.i.i.ph, %.lr.ph56.i.i.preheader ] ; 3 uses
  %.22752.i.i.prol = phi i32 [ %i.fn, %.lr.ph56.i.i.prol ], [ %.22752.i.i.ph, %.lr.ph56.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.i.i.prol ], [ 0, %.lr.ph56.i.i.preheader ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.254.i.i.prol, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.254.i.i.prol, align 1, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %.22453.i.i.prol, i64 1 ; 2 uses
  %i.fl = load i8, ptr %.22453.i.i.prol, align 1, !tbaa !24
  %i.fm = xor i8 %i.fl, %i.fj
  store i8 %i.fm, ptr %.22453.i.i.prol, align 1, !tbaa !24
  %i.fn = add i32 %.22752.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.i.prol.loopexit, label %.lr.ph56.i.i.prol, !llvm.loop !49

.lr.ph56.i.i.prol.loopexit:                       ; preds = %.lr.ph56.i.i.prol, %.lr.ph56.i.i.preheader
  %.254.i.i.unr = phi ptr [ %.254.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fi, %.lr.ph56.i.i.prol ]
  %.22453.i.i.unr = phi ptr [ %.22453.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fk, %.lr.ph56.i.i.prol ]
  %.22752.i.i.unr = phi i32 [ %.22752.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fn, %.lr.ph56.i.i.prol ]
  %i.fo = icmp ult i32 %i.fh, 3
  br i1 %i.fo, label %xorbuf.exit.i, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %.lr.ph56.i.i.prol.loopexit, %.lr.ph56.i.i
  %.254.i.i = phi ptr [ %i.ge, %.lr.ph56.i.i ], [ %.254.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 5 uses
  %.22453.i.i = phi ptr [ %i.gg, %.lr.ph56.i.i ], [ %.22453.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 6 uses
  %.22752.i.i = phi i32 [ %i.gj, %.lr.ph56.i.i ], [ %.22752.i.i.unr, %.lr.ph56.i.i.prol.loopexit ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 1
  %i.fq = load i8, ptr %.254.i.i, align 1, !tbaa !24
  %i.fr = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 1 ; 2 uses
  %i.fs = load i8, ptr %.22453.i.i, align 1, !tbaa !24
  %i.ft = xor i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %.22453.i.i, align 1, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 2
  %i.fv = load i8, ptr %i.fp, align 1, !tbaa !24
  %i.fw = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 2 ; 2 uses
  %i.fx = load i8, ptr %i.fr, align 1, !tbaa !24
  %i.fy = xor i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fr, align 1, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 3
  %i.ga = load i8, ptr %i.fu, align 1, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 3 ; 2 uses
  %i.gc = load i8, ptr %i.fw, align 1, !tbaa !24
  %i.gd = xor i8 %i.gc, %i.ga
  store i8 %i.gd, ptr %i.fw, align 1, !tbaa !24
  %i.ge = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 4
  %i.gf = load i8, ptr %i.fz, align 1, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 4
  %i.gh = load i8, ptr %i.gb, align 1, !tbaa !24
  %i.gi = xor i8 %i.gh, %i.gf
  store i8 %i.gi, ptr %i.gb, align 1, !tbaa !24
  %i.gj = add i32 %.22752.i.i, -4                 ; 2 uses
  %.not.i.i.3 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i.3, label %xorbuf.exit.i, label %.lr.ph56.i.i, !llvm.loop !50

xorbuf.exit.i:                                    ; preds = %.lr.ph56.i.i.prol.loopexit, %.lr.ph56.i.i, %middle.block127, %vec.epilog.middle.block, %bb.o
  %i.gk = zext nneg i32 %.fr280 to i64            ; 11 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gk ; 10 uses
  %i.gm = call fastcc i32 @RsaMGF(i32 noundef %6, ptr noundef nonnull %i.c, i32 noundef %.fr280, ptr noundef nonnull %i.gl, i32 noundef %i.dh, ptr noundef %11) ; 2 uses
  %.not76.i = icmp eq i32 %i.gm, 0
  br i1 %.not76.i, label %bb.p, label %.preheader16.i.i

.preheader16.i.i:                                 ; preds = %xorbuf.exit.i
  fence seq_cst
  %i.gn = icmp samesign ugt i32 %.fr280, 7
  br i1 %i.gn, label %.lr.ph25.preheader.i.i, label %.preheader.i81.i

.lr.ph25.preheader.i.i:                           ; preds = %.preheader16.i.i
  %i.go = and i64 %i.gk, 2147483640               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.go, i1 false), !tbaa !22
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.go
  %i.gp = and i64 %i.gk, 7
  br label %.preheader.i81.i

.preheader.i81.i:                                 ; preds = %.lr.ph25.preheader.i.i, %.preheader16.i.i
  %.114.lcssa.i.i = phi i64 [ %i.gk, %.preheader16.i.i ], [ %i.gp, %.lr.ph25.preheader.i.i ] ; 2 uses
  %.0.lcssa.i82.i = phi ptr [ %i.c, %.preheader16.i.i ], [ %scevgep.i.i, %.lr.ph25.preheader.i.i ]
  %.not1528.i.i = icmp eq i64 %.114.lcssa.i.i, 0
  br i1 %.not1528.i.i, label %._crit_edge.i83.i, label %.lr.ph31.preheader.i.i

.lr.ph31.preheader.i.i:                           ; preds = %.preheader.i81.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i82.i, i8 0, i64 %.114.lcssa.i.i, i1 false), !tbaa !24
  br label %._crit_edge.i83.i

._crit_edge.i83.i:                                ; preds = %.lr.ph31.preheader.i.i, %.preheader.i81.i
  fence seq_cst
  br label %RsaUnPad_OAEP.exit

bb.p:                                             ; preds = %xorbuf.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 10 uses
  %i.gs = ptrtoint ptr %i.gr to i64               ; 3 uses
  %i.gt = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.gu = or i64 %i.gs, %i.gt
  %i.gv = and i64 %i.gu, 7
  %or.cond.i84.i = icmp eq i64 %i.gv, 0
  br i1 %or.cond.i84.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gw = and i32 %i.dh, -8
  %.idx.i.i110.i = zext i32 %i.gw to i64          ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i.i110.i
  %.not.i.i111.i = icmp ult i32 %i.dh, 8
  br i1 %.not.i.i111.i, label %XorWords.exit.i114.i, label %.lr.ph.i.i112.i.preheader

.lr.ph.i.i112.i.preheader:                        ; preds = %bb.q
  %13 = ptrtoaddr ptr %i.c to i64                 ; 3 uses
  %i.gy = add i64 %13, %.idx.i.i110.i
  %i.gz = add i64 %i.gy, %i.gk
  %i.ha = add i64 %13, %i.gk
  %i.hb = add i64 %i.ha, 8
  %i.hc = call i64 @llvm.umax.i64(i64 %i.gz, i64 %i.hb)
  %i.hd = xor i64 %13, -1
  %i.he = add i64 %i.hc, %i.hd
  %i.hf = sub i64 %i.he, %i.gk                    ; 2 uses
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.hf, 24
  br i1 %min.iters.check171, label %.lr.ph.i.i112.i.preheader256, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i.i112.i.preheader
  %n.vec173 = and i64 %i.hh, 4611686018427387900  ; 3 uses
  %i.hi = shl i64 %n.vec173, 3                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gr, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gl, i64 %i.hi  ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 2 uses
  %i.hl = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.gr, i64 %i.hl ; 3 uses
  %next.gep177 = getelementptr i8, ptr %i.gl, i64 %i.hl ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <2 x i64>, ptr %next.gep177, align 8, !tbaa !22
  %wide.load179 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !22
  %i.hn = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load180 = load <2 x i64>, ptr %next.gep176, align 8, !tbaa !22
  %wide.load181 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !22
  %i.ho = xor <2 x i64> %wide.load180, %wide.load178
  %i.hp = xor <2 x i64> %wide.load181, %wide.load179
  store <2 x i64> %i.ho, ptr %next.gep176, align 8, !tbaa !22
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !22
  %index.next182 = add nuw i64 %index175, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.hq, label %middle.block183, label %vector.body174, !llvm.loop !51

middle.block183:                                  ; preds = %vector.body174
  %cmp.n184 = icmp eq i64 %i.hh, %n.vec173
  br i1 %cmp.n184, label %XorWords.exit.i114.i, label %.lr.ph.i.i112.i.preheader256

.lr.ph.i.i112.i.preheader256:                     ; preds = %.lr.ph.i.i112.i.preheader, %middle.block183
  %.sroa.039.0.i113.i.ph = phi ptr [ %i.gr, %.lr.ph.i.i112.i.preheader ], [ %i.hj, %middle.block183 ]
  %.ph = phi ptr [ %i.gl, %.lr.ph.i.i112.i.preheader ], [ %i.hk, %middle.block183 ]
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.lr.ph.i.i112.i.preheader256, %.lr.ph.i.i112.i
  %.sroa.039.0.i113.i = phi ptr [ %i.hu, %.lr.ph.i.i112.i ], [ %.sroa.039.0.i113.i.ph, %.lr.ph.i.i112.i.preheader256 ] ; 3 uses
  %i.hr = phi ptr [ %i.hs, %.lr.ph.i.i112.i ], [ %.ph, %.lr.ph.i.i112.i.preheader256 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i113.i, i64 8 ; 2 uses
  %i.hv = load i64, ptr %.sroa.039.0.i113.i, align 8, !tbaa !22
  %i.hw = xor i64 %i.hv, %i.ht
  store i64 %i.hw, ptr %.sroa.039.0.i113.i, align 8, !tbaa !22
  %i.hx = icmp ult ptr %i.hs, %i.gx
  br i1 %i.hx, label %.lr.ph.i.i112.i, label %XorWords.exit.i114.i, !llvm.loop !52

XorWords.exit.i114.i:                             ; preds = %.lr.ph.i.i112.i, %middle.block183, %bb.q
  %.sroa.039.1.i115.i = phi ptr [ %i.gr, %bb.q ], [ %i.hj, %middle.block183 ], [ %i.hu, %.lr.ph.i.i112.i ]
  %.sroa.0.0.i116.i = phi ptr [ %i.gl, %bb.q ], [ %i.hk, %middle.block183 ], [ %i.hs, %.lr.ph.i.i112.i ]
  %i.hy = and i32 %i.dh, 7
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.hz = xor i64 %i.gs, %i.gt
  %i.ia = and i64 %i.hz, 7
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.preheader.i94.i, label %bb.s

.preheader.i94.i:                                 ; preds = %bb.r
  %i.ic = and i64 %i.gs, 7
  %i.id = icmp ne i64 %i.ic, 0
  %i.ie = icmp ne i32 %i.dh, 0
  %i.if = and i1 %i.ie, %i.id
  br i1 %i.if, label %.lr.ph.i106.i, label %._crit_edge.i95.i

.lr.ph.i106.i:                                    ; preds = %.preheader.i94.i, %.lr.ph.i106.i
  %.048.i107.i = phi ptr [ %i.ig, %.lr.ph.i106.i ], [ %i.gl, %.preheader.i94.i ] ; 2 uses
  %.02247.i108.i = phi ptr [ %i.ii, %.lr.ph.i106.i ], [ %i.gr, %.preheader.i94.i ] ; 3 uses
  %.02546.i109.i = phi i32 [ %i.il, %.lr.ph.i106.i ], [ %i.dh, %.preheader.i94.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i107.i, i64 1 ; 2 uses
  %i.ih = load i8, ptr %.048.i107.i, align 1, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %.02247.i108.i, i64 1 ; 3 uses
  %i.ij = load i8, ptr %.02247.i108.i, align 1, !tbaa !24
  %i.ik = xor i8 %i.ij, %i.ih
  store i8 %i.ik, ptr %.02247.i108.i, align 1, !tbaa !24
  %i.il = add i32 %.02546.i109.i, -1              ; 3 uses
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = and i64 %i.im, 7
  %i.io = icmp ne i64 %i.in, 0
  %i.ip = icmp ne i32 %i.il, 0
  %i.iq = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %i.iq, label %.lr.ph.i106.i, label %._crit_edge.i95.i, !llvm.loop !1

._crit_edge.i95.i:                                ; preds = %.lr.ph.i106.i, %.preheader.i94.i
  %.025.lcssa.i96.i = phi i32 [ %i.dh, %.preheader.i94.i ], [ %i.il, %.lr.ph.i106.i ] ; 3 uses
  %.022.lcssa.i97.i = phi ptr [ %i.gr, %.preheader.i94.i ], [ %i.ii, %.lr.ph.i106.i ] ; 7 uses
  %.0.lcssa.i98.i = phi ptr [ %i.gl, %.preheader.i94.i ], [ %i.ig, %.lr.ph.i106.i ] ; 9 uses
  %i.ir = and i32 %.025.lcssa.i96.i, -8
  %.idx.i30.i99.i = zext i32 %i.ir to i64         ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.lcssa.i98.i, i64 %.idx.i30.i99.i
  %.not.i31.i100.i = icmp ult i32 %.025.lcssa.i96.i, 8
  br i1 %.not.i31.i100.i, label %XorWords.exit33.i103.i, label %.lr.ph.i32.i101.i.preheader

.lr.ph.i32.i101.i.preheader:                      ; preds = %._crit_edge.i95.i
  %i.it = ptrtoaddr ptr %.0.lcssa.i98.i to i64    ; 3 uses
  %i.iu = add i64 %i.it, %.idx.i30.i99.i
  %i.iv = add i64 %i.it, 8
  %i.iw = call i64 @llvm.umax.i64(i64 %i.iu, i64 %i.iv)
  %i.ix = xor i64 %i.it, -1
  %i.iy = add i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = lshr i64 %i.iy, 3
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.iy, 152
  br i1 %min.iters.check150, label %.lr.ph.i32.i101.i.preheader259, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i32.i101.i.preheader
  %i.jb = and i64 %i.iy, -8
  %i.jc = add i64 %i.jb, 8                        ; 2 uses
  %i.jd = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.jc
  %i.je = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.jc
  %bound0152 = icmp ult ptr %.022.lcssa.i97.i, %i.je
  %bound1153 = icmp ult ptr %.0.lcssa.i98.i, %i.jd
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %.lr.ph.i32.i101.i.preheader259, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck151
  %n.vec156 = and i64 %i.ja, 4611686018427387900  ; 3 uses
  %i.jf = shl i64 %n.vec156, 3                    ; 2 uses
  %i.jg = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.jf ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next165, %vector.body157 ] ; 2 uses
  %i.ji = shl i64 %index158, 3                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.ji ; 3 uses
  %next.gep160 = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.ji ; 2 uses
  %i.jj = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load161 = load <2 x i64>, ptr %next.gep160, align 8, !tbaa !22, !alias.scope !72
  %wide.load162 = load <2 x i64>, ptr %i.jj, align 8, !tbaa !22, !alias.scope !72
  %i.jk = getelementptr i8, ptr %next.gep159, i64 16 ; 2 uses
  %wide.load163 = load <2 x i64>, ptr %next.gep159, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %wide.load164 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %i.jl = xor <2 x i64> %wide.load163, %wide.load161
  %i.jm = xor <2 x i64> %wide.load164, %wide.load162
  store <2 x i64> %i.jl, ptr %next.gep159, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %index.next165 = add nuw i64 %index158, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next165, %n.vec156
  br i1 %i.jn, label %middle.block166, label %vector.body157, !llvm.loop !56

middle.block166:                                  ; preds = %vector.body157
  %cmp.n167 = icmp eq i64 %i.ja, %n.vec156
  br i1 %cmp.n167, label %XorWords.exit33.i103.i, label %.lr.ph.i32.i101.i.preheader259

.lr.ph.i32.i101.i.preheader259:                   ; preds = %vector.memcheck151, %.lr.ph.i32.i101.i.preheader, %middle.block166
  %.sroa.039.2.i102.i.ph = phi ptr [ %.022.lcssa.i97.i, %vector.memcheck151 ], [ %.022.lcssa.i97.i, %.lr.ph.i32.i101.i.preheader ], [ %i.jg, %middle.block166 ]
  %.ph260 = phi ptr [ %.0.lcssa.i98.i, %vector.memcheck151 ], [ %.0.lcssa.i98.i, %.lr.ph.i32.i101.i.preheader ], [ %i.jh, %middle.block166 ]
  br label %.lr.ph.i32.i101.i

.lr.ph.i32.i101.i:                                ; preds = %.lr.ph.i32.i101.i.preheader259, %.lr.ph.i32.i101.i
  %.sroa.039.2.i102.i = phi ptr [ %i.jr, %.lr.ph.i32.i101.i ], [ %.sroa.039.2.i102.i.ph, %.lr.ph.i32.i101.i.preheader259 ] ; 3 uses
  %i.jo = phi ptr [ %i.jp, %.lr.ph.i32.i101.i ], [ %.ph260, %.lr.ph.i32.i101.i.preheader259 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !22
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i102.i, i64 8 ; 2 uses
  %i.js = load i64, ptr %.sroa.039.2.i102.i, align 8, !tbaa !22
  %i.jt = xor i64 %i.js, %i.jq
  store i64 %i.jt, ptr %.sroa.039.2.i102.i, align 8, !tbaa !22
  %i.ju = icmp ult ptr %i.jp, %i.is
  br i1 %i.ju, label %.lr.ph.i32.i101.i, label %XorWords.exit33.i103.i, !llvm.loop !57

XorWords.exit33.i103.i:                           ; preds = %.lr.ph.i32.i101.i, %middle.block166, %._crit_edge.i95.i
  %.sroa.039.3.i104.i = phi ptr [ %.022.lcssa.i97.i, %._crit_edge.i95.i ], [ %i.jg, %middle.block166 ], [ %i.jr, %.lr.ph.i32.i101.i ]
  %.sroa.0.1.i105.i = phi ptr [ %.0.lcssa.i98.i, %._crit_edge.i95.i ], [ %i.jh, %middle.block166 ], [ %i.jp, %.lr.ph.i32.i101.i ]
  %i.jv = and i32 %.025.lcssa.i96.i, 7
  br label %bb.s

bb.s:                                             ; preds = %XorWords.exit33.i103.i, %bb.r, %XorWords.exit.i114.i
  %.126.i85.i = phi i32 [ %i.hy, %XorWords.exit.i114.i ], [ %i.jv, %XorWords.exit33.i103.i ], [ %i.dh, %bb.r ] ; 9 uses
  %.123.i86.i = phi ptr [ %.sroa.039.1.i115.i, %XorWords.exit.i114.i ], [ %.sroa.039.3.i104.i, %XorWords.exit33.i103.i ], [ %i.gr, %bb.r ] ; 8 uses
  %.1.i87.i = phi ptr [ %.sroa.0.0.i116.i, %XorWords.exit.i114.i ], [ %.sroa.0.1.i105.i, %XorWords.exit33.i103.i ], [ %i.gl, %bb.r ] ; 8 uses
  %.not51.i88.i = icmp eq i32 %.126.i85.i, 0
  br i1 %.not51.i88.i, label %xorbuf.exit117.i, label %iter.check217

iter.check217:                                    ; preds = %bb.s
  %i.jw = zext i32 %.126.i85.i to i64             ; 5 uses
  %min.iters.check193 = icmp ult i32 %.126.i85.i, 4
  br i1 %min.iters.check193, label %.lr.ph56.i89.i.preheader, label %vector.memcheck194

vector.memcheck194:                               ; preds = %iter.check217
  %i.jx = zext i32 %.126.i85.i to i64             ; 2 uses
  %i.jy = getelementptr i8, ptr %.123.i86.i, i64 %i.jx
  %i.jz = getelementptr i8, ptr %.1.i87.i, i64 %i.jx
  %bound0195 = icmp ult ptr %.123.i86.i, %i.jz
  %bound1196 = icmp ult ptr %.1.i87.i, %i.jy
end_hunk_0
