Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/rsa?download=true
inline.NumInlined: 69
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wc_RsaPad_ex:bb.a
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
  %i.al = trunc nuw nsw i64 %indvars.iv.next.i to i32
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
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
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
  %i.do = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.dp = add i64 %i.do, %.idx.i.i.i
  %i.dq = add i64 %i.dp, 1
  %i.dr = add i64 %i.do, 9
  %i.ds = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.dt = add i64 %i.ds, -2
  %i.du = sub i64 %i.dt, %i.do                    ; 2 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.dw, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %i.c, i64 %i.dx   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dj, i64 %i.dx  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.ea ; 3 uses
  %next.gep107 = getelementptr i8, ptr %i.dj, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !22
  %wide.load108 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !22
  %i.ec = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %next.gep, align 16, !tbaa !22
  %wide.load110 = load <2 x i64>, ptr %i.ec, align 16, !tbaa !22
  %i.ed = xor <2 x i64> %wide.load109, %wide.load
  %i.ee = xor <2 x i64> %wide.load110, %wide.load108
  store <2 x i64> %i.ed, ptr %next.gep, align 16, !tbaa !22
  store <2 x i64> %i.ee, ptr %i.ec, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i.i, label %.lr.ph.i.i.i.preheader266

.lr.ph.i.i.i.preheader266:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.039.0.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.dy, %middle.block ]
  %.ph267 = phi ptr [ %i.dj, %.lr.ph.i.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader266, %.lr.ph.i.i.i
  %.sroa.039.0.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i ], [ %.sroa.039.0.i.i.ph, %.lr.ph.i.i.i.preheader266 ] ; 3 uses
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i.i ], [ %.ph267, %.lr.ph.i.i.i.preheader266 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i.i, i64 8 ; 2 uses
  %i.ek = load i64, ptr %.sroa.039.0.i.i, align 8, !tbaa !22
  %i.el = xor i64 %i.ek, %i.ei
  store i64 %i.el, ptr %.sroa.039.0.i.i, align 8, !tbaa !22
  %i.em = icmp ult ptr %i.eh, %i.dn
  br i1 %i.em, label %.lr.ph.i.i.i, label %XorWords.exit.i.i, !llvm.loop !43

XorWords.exit.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %bb.n
  %.sroa.039.1.i.i = phi ptr [ %i.c, %bb.n ], [ %i.dy, %middle.block ], [ %i.ej, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.dj, %bb.n ], [ %i.dz, %middle.block ], [ %i.eh, %.lr.ph.i.i.i ]
  %i.en = and i32 %.fr280, 7
  br label %bb.o
end_hunk_0
