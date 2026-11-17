Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZN22default_implementation12_GLOBAL__N_114detect_paletteILm4EEEbPKhmRNSt3__16vectorIjNS4_9allocatorIjEEEE:bb.a
  %i.et = load i8, ptr %i.es, align 1, !tbaa !85
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 16
  %i.ew = or disjoint i32 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 31
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !85
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 24
  %i.fb = or disjoint i32 %i.fa, %i.ew            ; 3 uses
  %i.fc = mul i32 %i.r, -1640531535
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = mul i32 %i.al, -1640531535
  %i.ff = lshr i32 %i.fe, 16
  %i.fg = mul i32 %i.bf, -1640531535
  %i.fh = lshr i32 %i.fg, 16
  %i.fi = mul i32 %i.bz, -1640531535
  %i.fj = lshr i32 %i.fi, 16
  %i.fk = mul i32 %i.ct, -1640531535
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = mul i32 %i.dn, -1640531535
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = mul i32 %i.eh, -1640531535
  %i.fp = lshr i32 %i.fo, 16
  %i.fq = mul i32 %i.fb, -1640531535
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = zext nneg i32 %i.fd to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !94 ; 2 uses
  %.not61 = icmp eq i32 %i.fu, 0
  br i1 %.not61, label %.preheader3.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.fv = icmp ne i32 %i.r, %i.fu
  %i.fw = or i1 %.05812, %i.fv
  br label %.preheader3.1

.preheader3.1:                                    ; preds = %bb.b, %.lr.ph
  %i.fx = phi i1 [ %.05812, %.lr.ph ], [ %i.fw, %bb.b ] ; 2 uses
  store i32 %i.r, ptr %i.ft, align 4, !tbaa !94
  %i.fy = zext nneg i32 %i.ff to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !94 ; 2 uses
  %.not61.1 = icmp eq i32 %i.ga, 0
  br i1 %.not61.1, label %.preheader3.2, label %bb.c

bb.c:                                             ; preds = %.preheader3.1
  %i.gb = icmp ne i32 %i.al, %i.ga
  %i.gc = or i1 %i.fx, %i.gb
  br label %.preheader3.2

.preheader3.2:                                    ; preds = %bb.c, %.preheader3.1
  %i.gd = phi i1 [ %i.fx, %.preheader3.1 ], [ %i.gc, %bb.c ] ; 2 uses
  store i32 %i.al, ptr %i.fz, align 4, !tbaa !94
  %i.ge = zext nneg i32 %i.fh to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !94 ; 2 uses
  %.not61.2 = icmp eq i32 %i.gg, 0
  br i1 %.not61.2, label %.preheader3.3, label %bb.d

bb.d:                                             ; preds = %.preheader3.2
  %i.gh = icmp ne i32 %i.bf, %i.gg
  %i.gi = or i1 %i.gd, %i.gh
  br label %.preheader3.3

.preheader3.3:                                    ; preds = %bb.d, %.preheader3.2
  %i.gj = phi i1 [ %i.gd, %.preheader3.2 ], [ %i.gi, %bb.d ] ; 2 uses
  store i32 %i.bf, ptr %i.gf, align 4, !tbaa !94
  %i.gk = zext nneg i32 %i.fj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !94 ; 2 uses
  %.not61.3 = icmp eq i32 %i.gm, 0
  br i1 %.not61.3, label %.preheader3.4, label %bb.e

bb.e:                                             ; preds = %.preheader3.3
  %i.gn = icmp ne i32 %i.bz, %i.gm
  %i.go = or i1 %i.gj, %i.gn
  br label %.preheader3.4

.preheader3.4:                                    ; preds = %bb.e, %.preheader3.3
  %i.gp = phi i1 [ %i.gj, %.preheader3.3 ], [ %i.go, %bb.e ] ; 2 uses
  store i32 %i.bz, ptr %i.gl, align 4, !tbaa !94
  %i.gq = zext nneg i32 %i.fl to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !94 ; 2 uses
  %.not61.4 = icmp eq i32 %i.gs, 0
  br i1 %.not61.4, label %.preheader3.5, label %bb.f

bb.f:                                             ; preds = %.preheader3.4
  %i.gt = icmp ne i32 %i.ct, %i.gs
  %i.gu = or i1 %i.gp, %i.gt
  br label %.preheader3.5

.preheader3.5:                                    ; preds = %bb.f, %.preheader3.4
  %i.gv = phi i1 [ %i.gp, %.preheader3.4 ], [ %i.gu, %bb.f ] ; 2 uses
  store i32 %i.ct, ptr %i.gr, align 4, !tbaa !94
  %i.gw = zext nneg i32 %i.fn to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !94 ; 2 uses
  %.not61.5 = icmp eq i32 %i.gy, 0
  br i1 %.not61.5, label %.preheader3.6, label %bb.g

bb.g:                                             ; preds = %.preheader3.5
  %i.gz = icmp ne i32 %i.dn, %i.gy
  %i.ha = or i1 %i.gv, %i.gz
  br label %.preheader3.6

.preheader3.6:                                    ; preds = %bb.g, %.preheader3.5
  %i.hb = phi i1 [ %i.gv, %.preheader3.5 ], [ %i.ha, %bb.g ] ; 2 uses
  store i32 %i.dn, ptr %i.gx, align 4, !tbaa !94
  %i.hc = zext nneg i32 %i.fp to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !94 ; 2 uses
  %.not61.6 = icmp eq i32 %i.he, 0
  br i1 %.not61.6, label %.preheader3.7, label %bb.h

bb.h:                                             ; preds = %.preheader3.6
  %i.hf = icmp ne i32 %i.eh, %i.he
  %i.hg = or i1 %i.hb, %i.hf
  br label %.preheader3.7

.preheader3.7:                                    ; preds = %bb.h, %.preheader3.6
  %i.hh = phi i1 [ %i.hb, %.preheader3.6 ], [ %i.hg, %bb.h ] ; 2 uses
  store i32 %i.eh, ptr %i.hd, align 4, !tbaa !94
  %i.hi = zext nneg i32 %i.fr to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !94 ; 2 uses
  %.not61.7 = icmp eq i32 %i.hk, 0
  br i1 %.not61.7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader3.7
  %i.hl = icmp ne i32 %i.fb, %i.hk
  %i.hm = or i1 %i.hh, %i.hl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader3.7
  %i.hn = phi i1 [ %i.hh, %.preheader3.7 ], [ %i.hm, %bb.i ] ; 2 uses
  store i32 %i.fb, ptr %i.hj, align 4, !tbaa !94
  %i.ho = add nuw i64 %.05911, 8                  ; 3 uses
  %i.hp = or disjoint i64 %i.ho, 7
  %i.hq = icmp ult i64 %i.hp, %1
  br i1 %i.hq, label %.lr.ph, label %.preheader1, !llvm.loop !938

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.217 = phi i1 [ %i.il, %.preheader ], [ %.217.unr, %.preheader.prol.loopexit ]
  %.16016 = phi i64 [ %i.im, %.preheader ], [ %.16016.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.hr = shl i64 %.16016, 2
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 1            ; 3 uses
  %i.hu = mul i32 %i.ht, -1640531535
  %i.hv = lshr i32 %i.hu, 16
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !94 ; 2 uses
  %.not = icmp ne i32 %i.hy, 0
  %i.hz = icmp ne i32 %i.ht, %i.hy
  %narrow = and i1 %.not, %i.hz
  %i.ia = or i1 %.217, %narrow
  store i32 %i.ht, ptr %i.hx, align 4, !tbaa !94
  %i.ib = shl i64 %.16016, 2
  %i.ic = getelementptr i8, ptr %0, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 4
  %i.ie = load i32, ptr %i.id, align 1            ; 3 uses
  %i.if = mul i32 %i.ie, -1640531535
  %i.ig = lshr i32 %i.if, 16
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !94 ; 2 uses
  %.not.1 = icmp ne i32 %i.ij, 0
  %i.ik = icmp ne i32 %i.ie, %i.ij
  %narrow.1 = and i1 %.not.1, %i.ik
  %i.il = or i1 %i.ia, %narrow.1                  ; 2 uses
  store i32 %i.ie, ptr %i.ii, align 4, !tbaa !94
  %i.im = add nuw i64 %.16016, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.im, %1
  br i1 %exitcond.not.1, label %._crit_edge, label %.preheader, !llvm.loop !939

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %.preheader1
  %.2.lcssa = phi i1 [ %.058.lcssa, %.preheader1 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.il, %.preheader ]
  ret i1 %.2.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 20 uses
  %i.b = alloca [4 x ptr], align 16               ; 16 uses
  %4 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = shl i64 %2, 8                            ; 2 uses
  %i.e = shl i64 %1, 8                            ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !971, !nonnull !121, !align !176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = sub i64 %i.g, %i.d
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 256) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !972, !nonnull !121, !align !176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = sub i64 %i.k, %i.e                       ; 3 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 256) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !973, !nonnull !121, !align !176 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.r = call noundef ptr %i.p(ptr noundef %i.q, i64 noundef %i.e, i64 noundef %i.d, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.c) #36 ; 9 uses
  %i.s = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.s, i64 0)
  %i.t = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.u = trunc i64 %3 to i32
  %i.v = shl i64 %i.t, 32
  %i.w = ashr exact i64 %i.v, 32                  ; 8 uses
  %i.x = sub nsw i64 %.sroa.speculated33, %i.t
  %i.y = trunc i64 %i.x to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.u) ; 2 uses
  %i.z = and i64 %.sroa.speculated28, 504         ; 12 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !68  ; 11 uses
  %i.ab = sext i32 %.sroa.speculated to i64       ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !974, !nonnull !121, !align !176 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !975, !nonnull !121, !align !176 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !976, !nonnull !121
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !95, !range !108, !noundef !121
  %i.aj = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !977, !nonnull !121
  %i.am = load i8, ptr %i.al, align 1, !tbaa !95, !range !108, !noundef !121
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !978, !nonnull !121, !align !176
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !68 ; 23 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !979, !nonnull !121, !align !176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !90
  %.not54.i = icmp eq i64 %i.aq, 0                ; 4 uses
  br i1 %i.an, label %.preheader49.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.av, align 8, !tbaa !199
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !199
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.ax, align 8, !tbaa !199
  br i1 %.not54.i, label %._crit_edge53.i, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.ay = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %i.aj ; 3 uses
  %i.az = getelementptr inbounds nuw [264 x i8], ptr %i.af, i64 %i.aj ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ba = icmp eq i64 %i.aq, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph52.i.new

.lr.ph52.i.new:                                   ; preds = %.lr.ph52.i
  %unroll_iter = and i64 %i.aq, -2
  br label %bb.b

._crit_edge53.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge53.i.loopexit.unr-lcssa, %.lr.ph52.i
  %.051.i.epil.init = phi i64 [ 0, %.lr.ph52.i ], [ %i.bm, %._crit_edge53.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod252 = trunc i64 %i.aq to i1
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.051.i.epil.init ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.051.i.epil.init
  store ptr %i.bb, ptr %i.bc, align 16, !tbaa !200
  store ptr %i.ay, ptr %i.bb, align 16, !tbaa !202
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !203
  br label %._crit_edge53.i

._crit_edge53.i:                                  ; preds = %.epil.preheader, %._crit_edge53.i.loopexit.unr-lcssa, %.preheader.i
  %i.be = add nsw i64 %i.ab, 1
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.w, i64 noundef range(i64 -2147483648, 2147483648) %i.z, i64 noundef %i.be, i64 noundef %i.aa, ptr noundef readonly %i.at, i64 noundef %i.aq, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_9UpTo8BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i.new
  %.051.i = phi i64 [ 0, %.lr.ph52.i.new ], [ %i.bm, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph52.i.new ], [ %niter.next.1, %bb.b ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.051.i ; 3 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.051.i
  store ptr %i.bf, ptr %i.bg, align 16, !tbaa !200
  store ptr %i.ay, ptr %i.bf, align 16, !tbaa !202
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !203
  %i.bi = or disjoint i64 %.051.i, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bi
  store ptr %i.bj, ptr %i.bk, align 16, !tbaa !200
  store ptr %i.ay, ptr %i.bj, align 16, !tbaa !202
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.az, ptr %i.bl, align 8, !tbaa !203
  %i.bm = add nuw nsw i64 %.051.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge53.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !940

.preheader49.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !199
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bo, align 8, !tbaa !199
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bp, align 8, !tbaa !199
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bq, align 8, !tbaa !199
  br i1 %.not54.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader49.i
  %xtraiter253 = and i64 %i.aq, 1
  %i.br = icmp eq i64 %i.aq, 1
  br i1 %i.br, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter256 = and i64 %i.aq, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03950.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.vm, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod255 = trunc i64 %i.aq to i1
  call void @llvm.assume(i1 %lcmp.mod255)
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03950.i.epil.init ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03950.i.epil.init
  store ptr %i.bs, ptr %i.bt, align 16, !tbaa !200
  %i.bu = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %.03950.i.epil.init
  store ptr %i.bu, ptr %i.bs, align 16, !tbaa !202
  %i.bv = getelementptr inbounds nuw [264 x i8], ptr %i.af, i64 %.03950.i.epil.init
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !203
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.bx = mul nuw nsw i64 %i.aq, 1408             ; 3 uses
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #40 ; 3 uses
  %i.bz = getelementptr inbounds nuw [1408 x i8], ptr %i.by, i64 %i.aq
  %i.ca = add nsw i64 %i.bx, -1408
  %i.cb = urem i64 %i.ca, 1408
  %i.cc = sub nuw nsw i64 %i.bx, %i.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.by, i8 0, i64 %i.cc, i1 false)
  %i.cd = ptrtoint ptr %i.bz to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader49.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %i.ce = phi i64 [ %i.cd, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader49.i ]
  %i.cf = phi ptr [ %i.by, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader49.i ] ; 6 uses
  %.not91.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not91.i.i, label %.preheader.i.i, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.not.i72.i.i = icmp eq i64 %i.z, 0             ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cj = add nsw i64 %i.w, %i.ab
  %i.ck = mul i64 %i.aa, %i.cj
  %i.cl = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 5
  %i.cn = getelementptr i8, ptr %i.r, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cn, i64 %i.cm ; 4 uses
  %i.co = mul i64 %i.aa, %i.w
  %scevgep94 = getelementptr i8, ptr %i.r, i64 %i.co ; 4 uses
  %i.cp = shl nuw nsw i64 %i.cl, 4                ; 4 uses
  %i.cq = add nsw i64 %i.w, %i.ab
  %i.cr = mul i64 %i.aa, %i.cq
  %i.cs = getelementptr i8, ptr %i.r, i64 %i.cr
  %scevgep137 = getelementptr i8, ptr %i.cs, i64 %i.z
  %i.ct = mul i64 %i.aa, %i.w
  %scevgep138 = getelementptr i8, ptr %i.r, i64 %i.ct
  %i.cu = lshr i64 %.sroa.speculated28, 3         ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cu, 4
  %i.cw = add nsw i64 %i.w, %i.ab
  %i.cx = mul i64 %i.aa, %i.cw
  %i.cy = mul nuw nsw i64 %i.cu, 24
  %i.cz = getelementptr i8, ptr %i.r, i64 %i.cx
  %scevgep186.a = getelementptr i8, ptr %i.cz, i64 %i.cy ; 3 uses
  %i.da = mul i64 %i.aa, %i.w
  %scevgep187 = getelementptr i8, ptr %i.r, i64 %i.da ; 3 uses
  %i.db = shl nuw nsw i64 %i.cu, 4                ; 3 uses
  %i.dc = add i64 %i.aq, -1                       ; 2 uses
  %min.iters.check222 = icmp ult i64 %i.aq, 4
  %n.vec224 = and i64 %i.aq, -4                   ; 3 uses
  %cmp.n242 = icmp eq i64 %i.aq, %n.vec224
  %stride.check201 = icmp slt i64 %i.aa, 0
  %stride.check145 = icmp slt i64 %i.aa, 0
  %min.iters.check146 = icmp ult i64 %i.l, 16
  %i.dd = and i64 %.sroa.speculated28, 8
  %n.vec = and i64 %.sroa.speculated28, 496       ; 4 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dd, 0
  %min.iters.check = icmp ult i64 %i.l, 16
  %stride.check = icmp slt i64 %i.aa, 0
  %xtraiter258 = and i64 %i.aq, 3                 ; 3 uses
  %i.de = icmp ult i64 %i.dc, 3
  %unroll_iter261 = and i64 %i.aq, -4
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod260 = icmp ne i64 %xtraiter258, 0
  %xtraiter263 = and i64 %i.aq, 3                 ; 3 uses
  %i.df = icmp ult i64 %i.dc, 3
  %unroll_iter267 = and i64 %i.aq, -4
  %lcmp.mod265.not = icmp eq i64 %xtraiter263, 0
  %lcmp.mod266 = icmp ne i64 %xtraiter263, 0
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.f

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph89.i.i
  %.06688.i.i = phi i64 [ 0, %.lr.ph89.i.i ], [ %i.uy, %.loopexit.i.i ] ; 5 uses
  %i.dg = add i64 %.06688.i.i, %i.w
  %i.dh = mul i64 %i.dg, %i.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dh ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br i1 %.not54.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.dj = and i64 %.06688.i.i, 1                  ; 4 uses
  %i.dk = xor i64 %i.dj, 1                        ; 3 uses
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.body225

vector.body225:                                   ; preds = %.lr.ph.i.i, %vector.body225
  %index226 = phi i64 [ %index.next240, %vector.body225 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body225 ], [ <i64 0, i64 1>, %.lr.ph.i.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %i.cf, <2 x i64> %vec.ind ; 2 uses
  %wide.gep227.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cf, <2 x i64> %step.add ; 2 uses
  %wide.gep228.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.dj
  %wide.gep229.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep227.a, i64 %i.dj
  %wide.gep230.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep228.a, i64 64 ; 2 uses
  %wide.gep231.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep229.a, i64 64 ; 2 uses
  %i.dl = ptrtoint <2 x ptr> %wide.gep230.a to <2 x i64>
  %i.dm = ptrtoint <2 x ptr> %wide.gep231.a to <2 x i64>
  %i.dn = lshr <2 x i64> %i.dl, splat (i64 1)
  %i.do = lshr <2 x i64> %i.dm, splat (i64 1)
  %i.dp = and <2 x i64> %i.dn, splat (i64 31)
  %i.dq = and <2 x i64> %i.do, splat (i64 31)
  %wide.gep232.a = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep230.a, <2 x i64> %i.dp
  %wide.gep233.a = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep231.a, <2 x i64> %i.dq
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index226 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <2 x ptr> %wide.gep232.a, ptr %i.dr, align 16, !tbaa !92
  store <2 x ptr> %wide.gep233.a, ptr %i.ds, align 16, !tbaa !92
  %wide.gep234.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.dk
  %wide.gep235.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep227.a, i64 %i.dk
  %wide.gep236.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep234.a, i64 64 ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep235.a, i64 64 ; 2 uses
  %i.dt = ptrtoint <2 x ptr> %wide.gep236.a to <2 x i64>
  %i.du = ptrtoint <2 x ptr> %wide.gep237 to <2 x i64>
  %i.dv = lshr <2 x i64> %i.dt, splat (i64 1)
  %i.dw = lshr <2 x i64> %i.du, splat (i64 1)
  %i.dx = and <2 x i64> %i.dv, splat (i64 31)
  %i.dy = and <2 x i64> %i.dw, splat (i64 31)
  %wide.gep238 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep236.a, <2 x i64> %i.dx
  %wide.gep239 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep237, <2 x i64> %i.dy
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index226 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x ptr> %wide.gep238, ptr %i.dz, align 16, !tbaa !92
  store <2 x ptr> %wide.gep239, ptr %i.ea, align 16, !tbaa !92
  %index.next240 = add nuw i64 %index226, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.eb = icmp eq i64 %index.next240, %n.vec224
  br i1 %i.eb, label %middle.block241, label %vector.body225, !llvm.loop !941

middle.block241:                                  ; preds = %vector.body225
  br i1 %cmp.n242, label %._crit_edge.i.i, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %.lr.ph.i.i, %middle.block241
  %.06582.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec224, %middle.block241 ]
  br label %scalar.ph221

._crit_edge.i.i:                                  ; preds = %scalar.ph221, %middle.block241
  %.pre.i = load ptr, ptr %i.a, align 16, !tbaa !92 ; 17 uses
  switch i64 %i.aq, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %iter.check
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre59.i = load ptr, ptr %i.cg, align 8, !tbaa !92
  %.pre60.i = load ptr, ptr %i.ch, align 16, !tbaa !92
  %.pre61.i = load ptr, ptr %i.ci, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %.06582.i.i = phi i64 [ %i.er, %scalar.ph221 ], [ %.06582.i.i.ph, %scalar.ph221.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [1408 x i8], ptr %i.cf, i64 %.06582.i.i ; 2 uses
  %i.ed = getelementptr inbounds nuw [704 x i8], ptr %i.ec, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64 ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = lshr i64 %i.ef, 1
  %i.eh = and i64 %i.eg, 31
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06582.i.i
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !92
  %i.ek = getelementptr inbounds nuw [704 x i8], ptr %i.ec, i64 %i.dk
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64 ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = lshr i64 %i.em, 1
  %i.eo = and i64 %i.en, 31
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06582.i.i
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !92
  %i.er = add nuw nsw i64 %.06582.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.aq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph221, !llvm.loop !942

iter.check:                                       ; preds = %._crit_edge.i.i
  br i1 %.not.i72.i.i, label %.lr.ph84.i.i, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check
  %i.es = getelementptr i8, ptr %.pre.i, i64 %i.cv
  %bound0142 = icmp ult ptr %.pre.i, %scevgep137
  %bound1143 = icmp ult ptr %scevgep138, %i.es
  %found.conflict144 = and i1 %bound0142, %bound1143
  %i.et = or i1 %found.conflict144, %stride.check145
  br i1 %i.et, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck141
  br i1 %min.iters.check146, label %vec.epilog.vector.body.preheader, label %vector.body148

vector.body148:                                   ; preds = %vector.main.loop.iter.check, %vector.body148
  %index149 = phi i64 [ %index.next151, %vector.body148 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.di, i64 %index149 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %wide.load = load <8 x i8>, ptr %i.eu, align 1, !tbaa !85, !alias.scope !980
  %wide.load150 = load <8 x i8>, ptr %i.ev, align 1, !tbaa !85, !alias.scope !980
  %i.ew = zext <8 x i8> %wide.load to <8 x i16>
  %i.ex = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index149 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <8 x i16> %i.ew, ptr %i.ey, align 2, !tbaa !104, !alias.scope !981, !noalias !980
  store <8 x i16> %i.ex, ptr %i.ez, align 2, !tbaa !104, !alias.scope !981, !noalias !980
  %index.next151 = add nuw i64 %index149, 16      ; 2 uses
  %i.fa = icmp eq i64 %index.next151, %n.vec
  br i1 %i.fa, label %middle.block152, label %vector.body148, !llvm.loop !946

middle.block152:                                  ; preds = %vector.body148
  br i1 %cmp.n, label %.lr.ph84.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block152
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.vector.body.preheader, !prof !204

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index153.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck141, %vec.epilog.iter.check
  %.06.i.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck141 ]
  br label %.lr.ph.i.i.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index153 = phi i64 [ %index.next155, %vec.epilog.vector.body ], [ %index153.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 %index153
  %wide.load154 = load <8 x i8>, ptr %i.fb, align 1, !tbaa !85, !alias.scope !980
  %i.fc = zext <8 x i8> %wide.load154 to <8 x i16>
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index153
  store <8 x i16> %i.fc, ptr %i.fd, align 2, !tbaa !104, !alias.scope !981, !noalias !980
  %index.next155 = add nuw i64 %index153, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next155, %i.z
  br i1 %i.fe, label %.lr.ph84.i.i, label %vec.epilog.vector.body, !llvm.loop !947

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.06.i.i.i = phi i64 [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i ] ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 %.06.i.i.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !85
  %i.fh = zext i8 %i.fg to i16
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.06.i.i.i
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !104
  %i.fj = or disjoint i64 %.06.i.i.i, 1           ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !85
  %i.fm = zext i8 %i.fl to i16
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.fj
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !104
  %i.fo = or disjoint i64 %.06.i.i.i, 2           ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !85
  %i.fr = zext i8 %i.fq to i16
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.fo
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !104
  %i.ft = or disjoint i64 %.06.i.i.i, 3           ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !85
  %i.fw = zext i8 %i.fv to i16
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ft
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !104
  %i.fy = add nuw nsw i64 %.06.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fy, %i.z
  br i1 %exitcond.not.i.i.i.3, label %.lr.ph84.i.i, label %.lr.ph.i.i.i, !llvm.loop !948

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.fz = load ptr, ptr %i.cg, align 8, !tbaa !92 ; 2 uses
  br i1 %.not.i72.i.i, label %.lr.ph84.i.i, label %.lr.ph.i70.i.i

.lr.ph.i70.i.i:                                   ; preds = %bb.d, %.lr.ph.i70.i.i
  %.010.i.i.i = phi i64 [ %i.gt, %.lr.ph.i70.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ga = shl nuw nsw i64 %.010.i.i.i, 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !85
  %i.gd = zext i8 %i.gc to i16
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.010.i.i.i
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !104
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !85
  %i.gh = zext i8 %i.gg to i16
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %.010.i.i.i
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !104
  %i.gj = or disjoint i64 %.010.i.i.i, 1          ; 3 uses
  %i.gk = shl nuw nsw i64 %i.gj, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !85
  %i.gn = zext i8 %i.gm to i16
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.gj
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !104
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !85
  %i.gr = zext i8 %i.gq to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.gj
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !104
  %i.gt = add nuw nsw i64 %.010.i.i.i, 2          ; 2 uses
  %exitcond.not.i71.i.i.1 = icmp eq i64 %i.gt, %i.z
  br i1 %exitcond.not.i71.i.i.1, label %.lr.ph84.i.i, label %.lr.ph.i70.i.i, !llvm.loop !27

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.gu = load ptr, ptr %i.cg, align 8, !tbaa !92 ; 6 uses
  %i.gv = load ptr, ptr %i.ch, align 16, !tbaa !92 ; 6 uses
  br i1 %.not.i72.i.i, label %.lr.ph84.i.i, label %vector.memcheck190

vector.memcheck190:                               ; preds = %bb.e
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.db  ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gv, i64 %i.db  ; 3 uses
  %i.gy = getelementptr i8, ptr %.pre.i, i64 %i.db ; 3 uses
  %bound0191 = icmp ult ptr %i.gu, %i.gx
  %bound1192 = icmp ult ptr %i.gv, %i.gw
  %found.conflict193 = and i1 %bound0191, %bound1192
  %bound0194 = icmp ult ptr %i.gu, %i.gy
  %bound1195 = icmp ult ptr %.pre.i, %i.gw
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %found.conflict193, %found.conflict196
  %bound0198 = icmp ult ptr %i.gu, %scevgep186.a
  %bound1199 = icmp ult ptr %scevgep187, %i.gw
  %found.conflict200 = and i1 %bound0198, %bound1199
  %i.gz = or i1 %found.conflict200, %stride.check201
  %conflict.rdx202 = or i1 %conflict.rdx197, %i.gz
  %bound0203 = icmp ult ptr %i.gv, %i.gy
  %bound1204 = icmp ult ptr %.pre.i, %i.gx
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %i.gv, %scevgep186.a
  %bound1208 = icmp ult ptr %scevgep187, %i.gx
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %.pre.i, %scevgep186.a
  %bound1212 = icmp ult ptr %scevgep187, %i.gy
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  br i1 %conflict.rdx214, label %.lr.ph.i73.i.i, label %vector.body216

vector.body216:                                   ; preds = %vector.memcheck190, %vector.body216
  %index217 = phi i64 [ %index.next218, %vector.body216 ], [ 0, %vector.memcheck190 ] ; 12 uses
  %i.ha = mul nuw nsw i64 %index217, 3
  %i.hb = mul nuw i64 %index217, 3
  %i.hc = mul nuw i64 %index217, 3
  %i.hd = mul nuw i64 %index217, 3
  %i.he = mul nuw i64 %index217, 3
  %i.hf = mul nuw i64 %index217, 3
  %i.hg = mul nuw i64 %index217, 3
  %i.hh = mul nuw i64 %index217, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ha ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hb ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hc ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.hn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hd ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.he ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hf ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hg ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.hh ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 21
  %i.hx = load i8, ptr %i.hi, align 1, !tbaa !85, !alias.scope !982
  %i.hy = load i8, ptr %i.hk, align 1, !tbaa !85, !alias.scope !982
  %i.hz = load i8, ptr %i.hm, align 1, !tbaa !85, !alias.scope !982
  %i.ia = load i8, ptr %i.ho, align 1, !tbaa !85, !alias.scope !982
  %i.ib = load i8, ptr %i.hq, align 1, !tbaa !85, !alias.scope !982
  %i.ic = load i8, ptr %i.hs, align 1, !tbaa !85, !alias.scope !982
  %i.id = load i8, ptr %i.hu, align 1, !tbaa !85, !alias.scope !982
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !85, !alias.scope !982
  %i.if = insertelement <8 x i8> poison, i8 %i.hx, i64 0
  %i.ig = insertelement <8 x i8> %i.if, i8 %i.hy, i64 1
  %i.ih = insertelement <8 x i8> %i.ig, i8 %i.hz, i64 2
  %i.ii = insertelement <8 x i8> %i.ih, i8 %i.ia, i64 3
  %i.ij = insertelement <8 x i8> %i.ii, i8 %i.ib, i64 4
  %i.ik = insertelement <8 x i8> %i.ij, i8 %i.ic, i64 5
  %i.il = insertelement <8 x i8> %i.ik, i8 %i.id, i64 6
  %i.im = insertelement <8 x i8> %i.il, i8 %i.ie, i64 7
  %i.in = zext <8 x i8> %i.im to <8 x i16>
  %i.io = getelementptr i8, ptr %i.hi, i64 1
  %i.ip = getelementptr i8, ptr %i.hj, i64 4
  %i.iq = getelementptr i8, ptr %i.hl, i64 7
  %i.ir = getelementptr i8, ptr %i.hn, i64 10
  %i.is = getelementptr i8, ptr %i.hp, i64 13
  %i.it = getelementptr i8, ptr %i.hr, i64 16
  %i.iu = getelementptr i8, ptr %i.ht, i64 19
  %i.iv = getelementptr i8, ptr %i.hv, i64 22
  %i.iw = load i8, ptr %i.io, align 1, !tbaa !85, !alias.scope !982
  %i.ix = load i8, ptr %i.ip, align 1, !tbaa !85, !alias.scope !982
  %i.iy = load i8, ptr %i.iq, align 1, !tbaa !85, !alias.scope !982
  %i.iz = load i8, ptr %i.ir, align 1, !tbaa !85, !alias.scope !982
  %i.ja = load i8, ptr %i.is, align 1, !tbaa !85, !alias.scope !982
  %i.jb = load i8, ptr %i.it, align 1, !tbaa !85, !alias.scope !982
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !85, !alias.scope !982
  %i.jd = load i8, ptr %i.iv, align 1, !tbaa !85, !alias.scope !982
  %i.je = insertelement <8 x i8> poison, i8 %i.iw, i64 0
  %i.jf = insertelement <8 x i8> %i.je, i8 %i.ix, i64 1
  %i.jg = insertelement <8 x i8> %i.jf, i8 %i.iy, i64 2
  %i.jh = insertelement <8 x i8> %i.jg, i8 %i.iz, i64 3
  %i.ji = insertelement <8 x i8> %i.jh, i8 %i.ja, i64 4
  %i.jj = insertelement <8 x i8> %i.ji, i8 %i.jb, i64 5
  %i.jk = insertelement <8 x i8> %i.jj, i8 %i.jc, i64 6
  %i.jl = insertelement <8 x i8> %i.jk, i8 %i.jd, i64 7
  %i.jm = zext <8 x i8> %i.jl to <8 x i16>
  %i.jn = getelementptr i8, ptr %i.hi, i64 2
  %i.jo = getelementptr i8, ptr %i.hj, i64 5
  %i.jp = getelementptr i8, ptr %i.hl, i64 8
  %i.jq = getelementptr i8, ptr %i.hn, i64 11
  %i.jr = getelementptr i8, ptr %i.hp, i64 14
  %i.js = getelementptr i8, ptr %i.hr, i64 17
  %i.jt = getelementptr i8, ptr %i.ht, i64 20
  %i.ju = getelementptr i8, ptr %i.hv, i64 23
  %i.jv = load i8, ptr %i.jn, align 1, !tbaa !85, !alias.scope !982
  %i.jw = load i8, ptr %i.jo, align 1, !tbaa !85, !alias.scope !982
  %i.jx = load i8, ptr %i.jp, align 1, !tbaa !85, !alias.scope !982
  %i.jy = load i8, ptr %i.jq, align 1, !tbaa !85, !alias.scope !982
  %i.jz = load i8, ptr %i.jr, align 1, !tbaa !85, !alias.scope !982
  %i.ka = load i8, ptr %i.js, align 1, !tbaa !85, !alias.scope !982
  %i.kb = load i8, ptr %i.jt, align 1, !tbaa !85, !alias.scope !982
  %i.kc = load i8, ptr %i.ju, align 1, !tbaa !85, !alias.scope !982
  %i.kd = insertelement <8 x i8> poison, i8 %i.jv, i64 0
  %i.ke = insertelement <8 x i8> %i.kd, i8 %i.jw, i64 1
  %i.kf = insertelement <8 x i8> %i.ke, i8 %i.jx, i64 2
  %i.kg = insertelement <8 x i8> %i.kf, i8 %i.jy, i64 3
  %i.kh = insertelement <8 x i8> %i.kg, i8 %i.jz, i64 4
  %i.ki = insertelement <8 x i8> %i.kh, i8 %i.ka, i64 5
  %i.kj = insertelement <8 x i8> %i.ki, i8 %i.kb, i64 6
  %i.kk = insertelement <8 x i8> %i.kj, i8 %i.kc, i64 7
  %i.kl = zext <8 x i8> %i.kk to <8 x i16>        ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index217
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %index217
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %index217
  %i.kp = sub nsw <8 x i16> %i.in, %i.kl          ; 2 uses
  store <8 x i16> %i.kp, ptr %i.kn, align 2, !tbaa !104, !alias.scope !983, !noalias !984
  %i.kq = ashr <8 x i16> %i.kp, splat (i16 1)
  %i.kr = add nsw <8 x i16> %i.kq, %i.kl          ; 2 uses
  %i.ks = sub nsw <8 x i16> %i.jm, %i.kr          ; 2 uses
  store <8 x i16> %i.ks, ptr %i.ko, align 2, !tbaa !104, !alias.scope !985, !noalias !986
  %i.kt = ashr <8 x i16> %i.ks, splat (i16 1)
  %i.ku = add nsw <8 x i16> %i.kt, %i.kr
  store <8 x i16> %i.ku, ptr %i.km, align 2, !tbaa !104, !alias.scope !987, !noalias !982
  %index.next218 = add nuw i64 %index217, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next218, %i.z
  br i1 %i.kv, label %.lr.ph84.i.i, label %vector.body216, !llvm.loop !954

.lr.ph.i73.i.i:                                   ; preds = %vector.memcheck190, %.lr.ph.i73.i.i
  %.017.i.i.i = phi i64 [ %i.lp, %.lr.ph.i73.i.i ], [ 0, %vector.memcheck190 ] ; 5 uses
  %i.kw = mul nuw nsw i64 %.017.i.i.i, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.kw ; 3 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !85
  %i.kz = zext i8 %i.ky to i16
  %i.la = getelementptr i8, ptr %i.kx, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !85
  %i.lc = zext i8 %i.lb to i16
  %i.ld = getelementptr i8, ptr %i.kx, i64 2
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !85
  %i.lf = zext i8 %i.le to i16                    ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.017.i.i.i
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %.017.i.i.i
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %.017.i.i.i
  %i.lj = sub nsw i16 %i.kz, %i.lf                ; 2 uses
  store i16 %i.lj, ptr %i.lh, align 2, !tbaa !104
  %i.lk = ashr i16 %i.lj, 1
  %i.ll = add nsw i16 %i.lk, %i.lf                ; 2 uses
  %i.lm = sub nsw i16 %i.lc, %i.ll                ; 2 uses
  store i16 %i.lm, ptr %i.li, align 2, !tbaa !104
  %i.ln = ashr i16 %i.lm, 1
  %i.lo = add nsw i16 %i.ln, %i.ll
  store i16 %i.lo, ptr %i.lg, align 2, !tbaa !104
  %i.lp = add nuw nsw i64 %.017.i.i.i, 1          ; 2 uses
  %exitcond.not.i74.i.i = icmp eq i64 %i.lp, %i.z
  br i1 %exitcond.not.i74.i.i, label %.lr.ph84.i.i, label %.lr.ph.i73.i.i, !llvm.loop !955

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.lq = phi ptr [ %.pre61.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 7 uses
  %i.lr = phi ptr [ %.pre60.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 7 uses
  %i.ls = phi ptr [ %.pre59.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 7 uses
  %i.lt = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 7 uses
  br i1 %.not.i72.i.i, label %_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %.lr.ph.i76.i.i.preheader

.lr.ph.i76.i.i.preheader:                         ; preds = %._crit_edge.thread.i.i
  br i1 %min.iters.check, label %.lr.ph.i76.i.i.preheader245, label %vector.memcheck

.lr.ph.i76.i.i.preheader245:                      ; preds = %vector.memcheck, %.lr.ph.i76.i.i.preheader
  br label %.lr.ph.i76.i.i

vector.memcheck:                                  ; preds = %.lr.ph.i76.i.i.preheader
  %i.lu = getelementptr i8, ptr %i.ls, i64 %i.cp  ; 4 uses
  %i.lv = getelementptr i8, ptr %i.lr, i64 %i.cp  ; 4 uses
  %i.lw = getelementptr i8, ptr %i.lt, i64 %i.cp  ; 4 uses
  %i.lx = getelementptr i8, ptr %i.lq, i64 %i.cp  ; 4 uses
  %bound0 = icmp ult ptr %i.ls, %i.lv
  %bound1 = icmp ult ptr %i.lr, %i.lu
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %i.ls, %i.lw
  %bound196 = icmp ult ptr %i.lt, %i.lu
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx = or i1 %found.conflict, %found.conflict97
  %bound098 = icmp ult ptr %i.ls, %i.lx
  %bound199 = icmp ult ptr %i.lq, %i.lu
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx, %found.conflict100
  %bound0102 = icmp ult ptr %i.ls, %scevgep
  %bound1103 = icmp ult ptr %scevgep94, %i.lu
  %found.conflict104 = and i1 %bound0102, %bound1103
  %i.ly = or i1 %found.conflict104, %stride.check
  %conflict.rdx105 = or i1 %conflict.rdx101, %i.ly
  %bound0106 = icmp ult ptr %i.lr, %i.lw
  %bound1107 = icmp ult ptr %i.lt, %i.lv
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  %bound0110 = icmp ult ptr %i.lr, %i.lx
  %bound1111 = icmp ult ptr %i.lq, %i.lv
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  %bound0114 = icmp ult ptr %i.lr, %scevgep
  %bound1115 = icmp ult ptr %scevgep94, %i.lv
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx113, %found.conflict116
  %bound0118 = icmp ult ptr %i.lt, %i.lx
  %bound1119 = icmp ult ptr %i.lq, %i.lw
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  %bound0122 = icmp ult ptr %i.lt, %scevgep
  %bound1123 = icmp ult ptr %scevgep94, %i.lw
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %i.lq, %scevgep
  %bound1127 = icmp ult ptr %scevgep94, %i.lx
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %.lr.ph.i76.i.i.preheader245, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 13 uses
  %i.lz = shl nuw nsw i64 %index, 2
  %i.ma = shl i64 %index, 2
  %i.mb = shl i64 %index, 2
  %i.mc = shl i64 %index, 2
  %i.md = shl i64 %index, 2
  %i.me = shl i64 %index, 2
  %i.mf = shl i64 %index, 2
  %i.mg = shl i64 %index, 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.lz ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ma ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.mb ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.mc ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.md ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.me ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 20
  %i.ms = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.mf ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.mg ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 28
  %i.mw = load i8, ptr %i.mh, align 1, !tbaa !85, !alias.scope !988
  %i.mx = load i8, ptr %i.mj, align 1, !tbaa !85, !alias.scope !988
  %i.my = load i8, ptr %i.ml, align 1, !tbaa !85, !alias.scope !988
  %i.mz = load i8, ptr %i.mn, align 1, !tbaa !85, !alias.scope !988
  %i.na = load i8, ptr %i.mp, align 1, !tbaa !85, !alias.scope !988
  %i.nb = load i8, ptr %i.mr, align 1, !tbaa !85, !alias.scope !988
  %i.nc = load i8, ptr %i.mt, align 1, !tbaa !85, !alias.scope !988
  %i.nd = load i8, ptr %i.mv, align 1, !tbaa !85, !alias.scope !988
  %i.ne = insertelement <8 x i8> poison, i8 %i.mw, i64 0
  %i.nf = insertelement <8 x i8> %i.ne, i8 %i.mx, i64 1
  %i.ng = insertelement <8 x i8> %i.nf, i8 %i.my, i64 2
  %i.nh = insertelement <8 x i8> %i.ng, i8 %i.mz, i64 3
  %i.ni = insertelement <8 x i8> %i.nh, i8 %i.na, i64 4
  %i.nj = insertelement <8 x i8> %i.ni, i8 %i.nb, i64 5
  %i.nk = insertelement <8 x i8> %i.nj, i8 %i.nc, i64 6
  %i.nl = insertelement <8 x i8> %i.nk, i8 %i.nd, i64 7
  %i.nm = zext <8 x i8> %i.nl to <8 x i16>
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 5
  %i.np = getelementptr inbounds nuw i8, ptr %i.mk, i64 9
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mm, i64 13
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mo, i64 17
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mq, i64 21
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ms, i64 25
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mu, i64 29
  %i.nv = load i8, ptr %i.nn, align 1, !tbaa !85, !alias.scope !988
  %i.nw = load i8, ptr %i.no, align 1, !tbaa !85, !alias.scope !988
  %i.nx = load i8, ptr %i.np, align 1, !tbaa !85, !alias.scope !988
  %i.ny = load i8, ptr %i.nq, align 1, !tbaa !85, !alias.scope !988
  %i.nz = load i8, ptr %i.nr, align 1, !tbaa !85, !alias.scope !988
  %i.oa = load i8, ptr %i.ns, align 1, !tbaa !85, !alias.scope !988
  %i.ob = load i8, ptr %i.nt, align 1, !tbaa !85, !alias.scope !988
  %i.oc = load i8, ptr %i.nu, align 1, !tbaa !85, !alias.scope !988
  %i.od = insertelement <8 x i8> poison, i8 %i.nv, i64 0
  %i.oe = insertelement <8 x i8> %i.od, i8 %i.nw, i64 1
  %i.of = insertelement <8 x i8> %i.oe, i8 %i.nx, i64 2
  %i.og = insertelement <8 x i8> %i.of, i8 %i.ny, i64 3
  %i.oh = insertelement <8 x i8> %i.og, i8 %i.nz, i64 4
  %i.oi = insertelement <8 x i8> %i.oh, i8 %i.oa, i64 5
  %i.oj = insertelement <8 x i8> %i.oi, i8 %i.ob, i64 6
  %i.ok = insertelement <8 x i8> %i.oj, i8 %i.oc, i64 7
  %i.ol = zext <8 x i8> %i.ok to <8 x i16>
  %i.om = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.mi, i64 6
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mk, i64 10
  %i.op = getelementptr inbounds nuw i8, ptr %i.mm, i64 14
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mo, i64 18
  %i.or = getelementptr inbounds nuw i8, ptr %i.mq, i64 22
  %i.os = getelementptr inbounds nuw i8, ptr %i.ms, i64 26
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mu, i64 30
  %i.ou = load i8, ptr %i.om, align 1, !tbaa !85, !alias.scope !988
  %i.ov = load i8, ptr %i.on, align 1, !tbaa !85, !alias.scope !988
  %i.ow = load i8, ptr %i.oo, align 1, !tbaa !85, !alias.scope !988
  %i.ox = load i8, ptr %i.op, align 1, !tbaa !85, !alias.scope !988
  %i.oy = load i8, ptr %i.oq, align 1, !tbaa !85, !alias.scope !988
  %i.oz = load i8, ptr %i.or, align 1, !tbaa !85, !alias.scope !988
  %i.pa = load i8, ptr %i.os, align 1, !tbaa !85, !alias.scope !988
  %i.pb = load i8, ptr %i.ot, align 1, !tbaa !85, !alias.scope !988
  %i.pc = insertelement <8 x i8> poison, i8 %i.ou, i64 0
  %i.pd = insertelement <8 x i8> %i.pc, i8 %i.ov, i64 1
  %i.pe = insertelement <8 x i8> %i.pd, i8 %i.ow, i64 2
  %i.pf = insertelement <8 x i8> %i.pe, i8 %i.ox, i64 3
  %i.pg = insertelement <8 x i8> %i.pf, i8 %i.oy, i64 4
  %i.ph = insertelement <8 x i8> %i.pg, i8 %i.oz, i64 5
  %i.pi = insertelement <8 x i8> %i.ph, i8 %i.pa, i64 6
  %i.pj = insertelement <8 x i8> %i.pi, i8 %i.pb, i64 7
  %i.pk = zext <8 x i8> %i.pj to <8 x i16>        ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.mi, i64 7
  %i.pn = getelementptr inbounds nuw i8, ptr %i.mk, i64 11
  %i.po = getelementptr inbounds nuw i8, ptr %i.mm, i64 15
  %i.pp = getelementptr inbounds nuw i8, ptr %i.mo, i64 19
  %i.pq = getelementptr inbounds nuw i8, ptr %i.mq, i64 23
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ms, i64 27
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mu, i64 31
  %i.pt = load i8, ptr %i.pl, align 1, !tbaa !85, !alias.scope !988
  %i.pu = load i8, ptr %i.pm, align 1, !tbaa !85, !alias.scope !988
  %i.pv = load i8, ptr %i.pn, align 1, !tbaa !85, !alias.scope !988
  %i.pw = load i8, ptr %i.po, align 1, !tbaa !85, !alias.scope !988
  %i.px = load i8, ptr %i.pp, align 1, !tbaa !85, !alias.scope !988
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !85, !alias.scope !988
  %i.pz = load i8, ptr %i.pr, align 1, !tbaa !85, !alias.scope !988
  %i.qa = load i8, ptr %i.ps, align 1, !tbaa !85, !alias.scope !988
  %i.qb = insertelement <8 x i8> poison, i8 %i.pt, i64 0
  %i.qc = insertelement <8 x i8> %i.qb, i8 %i.pu, i64 1
  %i.qd = insertelement <8 x i8> %i.qc, i8 %i.pv, i64 2
  %i.qe = insertelement <8 x i8> %i.qd, i8 %i.pw, i64 3
  %i.qf = insertelement <8 x i8> %i.qe, i8 %i.px, i64 4
  %i.qg = insertelement <8 x i8> %i.qf, i8 %i.py, i64 5
  %i.qh = insertelement <8 x i8> %i.qg, i8 %i.pz, i64 6
  %i.qi = insertelement <8 x i8> %i.qh, i8 %i.qa, i64 7
  %i.qj = zext <8 x i8> %i.qi to <8 x i16>
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %index
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %index
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %index
  %i.qn = sub nsw <8 x i16> %i.nm, %i.pk          ; 2 uses
  store <8 x i16> %i.qn, ptr %i.ql, align 2, !tbaa !104, !alias.scope !989, !noalias !990
  %i.qo = ashr <8 x i16> %i.qn, splat (i16 1)
  %i.qp = add nsw <8 x i16> %i.qo, %i.pk          ; 2 uses
  %i.qq = sub nsw <8 x i16> %i.ol, %i.qp          ; 2 uses
  store <8 x i16> %i.qq, ptr %i.qm, align 2, !tbaa !104, !alias.scope !991, !noalias !992
  %i.qr = ashr <8 x i16> %i.qq, splat (i16 1)
  %i.qs = add nsw <8 x i16> %i.qr, %i.qp
  store <8 x i16> %i.qs, ptr %i.qk, align 2, !tbaa !104, !alias.scope !993, !noalias !994
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %index
  store <8 x i16> %i.qj, ptr %i.qt, align 2, !tbaa !104, !alias.scope !995, !noalias !988
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qu = icmp eq i64 %index.next, %i.z
  br i1 %i.qu, label %_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %vector.body, !llvm.loop !962

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.preheader245, %.lr.ph.i76.i.i
  %.022.i.i.i = phi i64 [ %i.rs, %.lr.ph.i76.i.i ], [ 0, %.lr.ph.i76.i.i.preheader245 ] ; 6 uses
  %i.qv = shl nuw nsw i64 %.022.i.i.i, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.qv ; 4 uses
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !85
  %i.qy = zext i8 %i.qx to i16
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !85
  %i.rb = zext i8 %i.ra to i16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 2
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !85
  %i.re = zext i8 %i.rd to i16                    ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qw, i64 3
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !85
  %i.rh = zext i8 %i.rg to i16
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %.022.i.i.i
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %.022.i.i.i
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %.022.i.i.i
  %i.rl = sub nsw i16 %i.qy, %i.re                ; 2 uses
  store i16 %i.rl, ptr %i.rj, align 2, !tbaa !104
  %i.rm = ashr i16 %i.rl, 1
  %i.rn = add nsw i16 %i.rm, %i.re                ; 2 uses
  %i.ro = sub nsw i16 %i.rb, %i.rn                ; 2 uses
  store i16 %i.ro, ptr %i.rk, align 2, !tbaa !104
  %i.rp = ashr i16 %i.ro, 1
  %i.rq = add nsw i16 %i.rp, %i.rn
  store i16 %i.rq, ptr %i.ri, align 2, !tbaa !104
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %.022.i.i.i
  store i16 %i.rh, ptr %i.rr, align 2, !tbaa !104
  %i.rs = add nuw nsw i64 %.022.i.i.i, 1          ; 2 uses
  %exitcond.not.i77.i.i = icmp eq i64 %i.rs, %i.z
  br i1 %exitcond.not.i77.i.i, label %_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %.lr.ph.i76.i.i, !llvm.loop !963

_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i: ; preds = %vector.body, %.lr.ph.i76.i.i, %._crit_edge.thread.i.i
  br i1 %.not54.i, label %.loopexit.i.i, label %.lr.ph84.i.i

.lr.ph84.i.i:                                     ; preds = %vector.body216, %.lr.ph.i73.i.i, %.lr.ph.i70.i.i, %vec.epilog.vector.body, %.lr.ph.i.i.i, %middle.block152, %_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, %bb.e, %bb.d, %iter.check
  %.not.i.i = icmp eq i64 %.06688.i.i, 0
  br i1 %.not.i.i, label %.critedge.us.i.i.preheader, label %.lr.ph84.split.i.i.preheader

.lr.ph84.split.i.i.preheader:                     ; preds = %.lr.ph84.i.i
  br i1 %i.de, label %.lr.ph84.split.i.i.epil.preheader, label %.lr.ph84.split.i.i

.critedge.us.i.i.preheader:                       ; preds = %.lr.ph84.i.i
  br i1 %i.df, label %.critedge.us.i.i.epil.preheader, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %.critedge.us.i.i.preheader, %.critedge.us.i.i
  %.06483.us.i.i = phi i64 [ %i.su, %.critedge.us.i.i ], [ 0, %.critedge.us.i.i.preheader ] ; 6 uses
  %niter268 = phi i64 [ %niter268.next.3, %.critedge.us.i.i ], [ 0, %.critedge.us.i.i.preheader ]
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06483.us.i.i
  %i.ru = load ptr, ptr %i.rt, align 16, !tbaa !92
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -2
  store i16 0, ptr %i.rv, align 2, !tbaa !104
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06483.us.i.i
  %i.rx = load ptr, ptr %i.rw, align 16, !tbaa !92
  %i.ry = getelementptr inbounds i8, ptr %i.rx, i64 -2
  store i16 0, ptr %i.ry, align 2, !tbaa !104
  %i.rz = or disjoint i64 %.06483.us.i.i, 1       ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rz
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !92
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 -2
  store i16 0, ptr %i.sc, align 2, !tbaa !104
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.rz
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !92
  %i.sf = getelementptr inbounds i8, ptr %i.se, i64 -2
  store i16 0, ptr %i.sf, align 2, !tbaa !104
  %i.sg = or disjoint i64 %.06483.us.i.i, 2       ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 16, !tbaa !92
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -2
  store i16 0, ptr %i.sj, align 2, !tbaa !104
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sg
  %i.sl = load ptr, ptr %i.sk, align 16, !tbaa !92
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 -2
  store i16 0, ptr %i.sm, align 2, !tbaa !104
  %i.sn = or disjoint i64 %.06483.us.i.i, 3       ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !92
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 -2
  store i16 0, ptr %i.sq, align 2, !tbaa !104
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.sn
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !92
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 -2
  store i16 0, ptr %i.st, align 2, !tbaa !104
  %i.su = add nuw nsw i64 %.06483.us.i.i, 4       ; 2 uses
  %niter268.next.3 = add i64 %niter268, 4         ; 2 uses
  %niter268.ncmp.3 = icmp eq i64 %niter268.next.3, %unroll_iter267
  br i1 %niter268.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.critedge.us.i.i, !llvm.loop !964

.lr.ph84.split.i.i:                               ; preds = %.lr.ph84.split.i.i.preheader, %.lr.ph84.split.i.i
  %.06483.i.i = phi i64 [ %i.ua, %.lr.ph84.split.i.i ], [ 0, %.lr.ph84.split.i.i.preheader ] ; 6 uses
  %niter262 = phi i64 [ %niter262.next.3, %.lr.ph84.split.i.i ], [ 0, %.lr.ph84.split.i.i.preheader ]
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06483.i.i
  %i.sw = load ptr, ptr %i.sv, align 16, !tbaa !92 ; 2 uses
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !104 ; 2 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06483.i.i
  %i.sz = load ptr, ptr %i.sy, align 16, !tbaa !92
  %i.ta = getelementptr inbounds i8, ptr %i.sz, i64 -2
  store i16 %i.sx, ptr %i.ta, align 2, !tbaa !104
  %i.tb = getelementptr inbounds i8, ptr %i.sw, i64 -2
  store i16 %i.sx, ptr %i.tb, align 2, !tbaa !104
  %i.tc = or disjoint i64 %.06483.i.i, 1          ; 2 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !92 ; 2 uses
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !104 ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tc
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !92
  %i.ti = getelementptr inbounds i8, ptr %i.th, i64 -2
  store i16 %i.tf, ptr %i.ti, align 2, !tbaa !104
  %i.tj = getelementptr inbounds i8, ptr %i.te, i64 -2
  store i16 %i.tf, ptr %i.tj, align 2, !tbaa !104
  %i.tk = or disjoint i64 %.06483.i.i, 2          ; 2 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.tk
  %i.tm = load ptr, ptr %i.tl, align 16, !tbaa !92 ; 2 uses
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !104 ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tk
  %i.tp = load ptr, ptr %i.to, align 16, !tbaa !92
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -2
  store i16 %i.tn, ptr %i.tq, align 2, !tbaa !104
  %i.tr = getelementptr inbounds i8, ptr %i.tm, i64 -2
  store i16 %i.tn, ptr %i.tr, align 2, !tbaa !104
  %i.ts = or disjoint i64 %.06483.i.i, 3          ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ts
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !92 ; 2 uses
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !104 ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ts
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !92
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 -2
  store i16 %i.tv, ptr %i.ty, align 2, !tbaa !104
  %i.tz = getelementptr inbounds i8, ptr %i.tu, i64 -2
  store i16 %i.tv, ptr %i.tz, align 2, !tbaa !104
  %i.ua = add nuw nsw i64 %.06483.i.i, 4          ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %.lr.ph87.i.i.preheader.unr-lcssa, label %.lr.ph84.split.i.i, !llvm.loop !964

.lr.ph87.i.i.preheader.unr-lcssa:                 ; preds = %.lr.ph84.split.i.i
  br i1 %lcmp.mod259.not, label %.lr.ph87.i.i.preheader, label %.lr.ph84.split.i.i.epil.preheader

.lr.ph84.split.i.i.epil.preheader:                ; preds = %.lr.ph87.i.i.preheader.unr-lcssa, %.lr.ph84.split.i.i.preheader
  %.06483.i.i.epil.init = phi i64 [ 0, %.lr.ph84.split.i.i.preheader ], [ %i.ua, %.lr.ph87.i.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph84.split.i.i.epil

.lr.ph84.split.i.i.epil:                          ; preds = %.lr.ph84.split.i.i.epil, %.lr.ph84.split.i.i.epil.preheader
  %.06483.i.i.epil = phi i64 [ %i.ui, %.lr.ph84.split.i.i.epil ], [ %.06483.i.i.epil.init, %.lr.ph84.split.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph84.split.i.i.epil ], [ 0, %.lr.ph84.split.i.i.epil.preheader ]
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06483.i.i.epil
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !92 ; 2 uses
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !104 ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06483.i.i.epil
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !92
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 -2
  store i16 %i.ud, ptr %i.ug, align 2, !tbaa !104
  %i.uh = getelementptr inbounds i8, ptr %i.uc, i64 -2
  store i16 %i.ud, ptr %i.uh, align 2, !tbaa !104
  %i.ui = add nuw nsw i64 %.06483.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter258
  br i1 %epil.iter.cmp.not, label %.lr.ph87.i.i.preheader, label %.lr.ph84.split.i.i.epil, !llvm.loop !965

.lr.ph87.i.i.preheader:                           ; preds = %.lr.ph84.split.i.i.epil, %.lr.ph87.i.i.preheader.unr-lcssa
  br label %.lr.ph87.i.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i
  %.06386.i.i = phi i64 [ %i.uq, %.lr.ph87.i.i ], [ 0, %.lr.ph87.i.i.preheader ] ; 4 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06386.i.i
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !92 ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -2
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06386.i.i
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !92 ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 -2
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.06386.i.i
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef %i.uk, ptr noundef nonnull %i.ul, ptr noundef %i.un, ptr noundef nonnull %i.uo, i64 noundef range(i64 -2147483648, 2147483648) %i.z) #38
  %i.uq = add nuw nsw i64 %.06386.i.i, 1          ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %i.uq, %i.aq
  br i1 %exitcond101.not.i.i, label %.loopexit.i.i, label %.lr.ph87.i.i, !llvm.loop !966

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.critedge.us.i.i
  br i1 %lcmp.mod265.not, label %.loopexit.i.i, label %.critedge.us.i.i.epil.preheader

.critedge.us.i.i.epil.preheader:                  ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.critedge.us.i.i.preheader
  %.06483.us.i.i.epil.init = phi i64 [ 0, %.critedge.us.i.i.preheader ], [ %i.su, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %.critedge.us.i.i.epil

.critedge.us.i.i.epil:                            ; preds = %.critedge.us.i.i.epil, %.critedge.us.i.i.epil.preheader
  %.06483.us.i.i.epil = phi i64 [ %i.ux, %.critedge.us.i.i.epil ], [ %.06483.us.i.i.epil.init, %.critedge.us.i.i.epil.preheader ] ; 3 uses
  %epil.iter264 = phi i64 [ %epil.iter264.next, %.critedge.us.i.i.epil ], [ 0, %.critedge.us.i.i.epil.preheader ]
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06483.us.i.i.epil
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !92
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 -2
  store i16 0, ptr %i.ut, align 2, !tbaa !104
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06483.us.i.i.epil
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !92
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 -2
  store i16 0, ptr %i.uw, align 2, !tbaa !104
  %i.ux = add nuw nsw i64 %.06483.us.i.i.epil, 1
  %epil.iter264.next = add i64 %epil.iter264, 1   ; 2 uses
  %epil.iter264.cmp.not = icmp eq i64 %epil.iter264.next, %xtraiter263
  br i1 %epil.iter264.cmp.not, label %.loopexit.i.i, label %.critedge.us.i.i.epil, !llvm.loop !967

.loopexit.i.i:                                    ; preds = %.lr.ph87.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.critedge.us.i.i.epil, %_ZN22default_implementation12_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.uy = add nuw i64 %.06688.i.i, 1
  %exitcond102.not.i.i = icmp eq i64 %.06688.i.i, %i.ab
  br i1 %exitcond102.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !968

bb.f:                                             ; preds = %.preheader.i.i
  %i.uz = ptrtoint ptr %i.cf to i64
  %i.va = sub i64 %i.ce, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.va) #39
  br label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.f, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_9UpTo8BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03950.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.vm, %.lr.ph.i ] ; 6 uses
  %niter257 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter257.next.1, %.lr.ph.i ]
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03950.i ; 3 uses
  %i.vc = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03950.i
  store ptr %i.vb, ptr %i.vc, align 16, !tbaa !200
  %i.vd = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %.03950.i
  store ptr %i.vd, ptr %i.vb, align 16, !tbaa !202
  %i.ve = getelementptr inbounds nuw [264 x i8], ptr %i.af, i64 %.03950.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store ptr %i.ve, ptr %i.vf, align 8, !tbaa !203
  %i.vg = or disjoint i64 %.03950.i, 1            ; 4 uses
  %i.vh = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.vg ; 3 uses
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.vg
  store ptr %i.vh, ptr %i.vi, align 16, !tbaa !200
  %i.vj = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %i.vg
  store ptr %i.vj, ptr %i.vh, align 16, !tbaa !202
end_hunk_0
begin_hunk_1_@_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m:bb.a
  %.pre.i40.i = load i64, ptr %i.gp, align 8, !tbaa !74
  %.pre12.i41.i = load i64, ptr %i.gq, align 8, !tbaa !68
  %.pre13.i42.i = load i64, ptr %i.gr, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i39.i
  %i.gs = phi i64 [ %.pre13.i42.i, %.lr.ph.i39.i ], [ %i.ib, %bb.i ]
  %i.gt = phi i64 [ %.pre12.i41.i, %.lr.ph.i39.i ], [ %i.hz, %bb.i ] ; 2 uses
  %i.gu = phi i64 [ %.pre.i40.i, %.lr.ph.i39.i ], [ %i.id, %bb.i ]
  %.011.i43.i = phi i64 [ 0, %.lr.ph.i39.i ], [ %i.ie, %bb.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.011.i43.i
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !104 ; 2 uses
  %i.gx = zext i16 %i.gw to i32                   ; 2 uses
  %.not.i.i.i44.i = icmp eq i16 %i.gw, 0          ; 2 uses
  %i.gy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gx, i1 false) ; 2 uses
  %i.gz = xor i32 %i.gy, 31                       ; 2 uses
  %i.ha = sub nuw nsw i32 32, %i.gy
  %i.hb = select i1 %.not.i.i.i44.i, i32 0, i32 %i.gz
  %i.hc = shl nsw i32 -1, %i.gz
  %i.hd = add nsw i32 %i.hc, %i.gx
  %i.he = select i1 %.not.i.i.i44.i, i32 0, i32 %i.hd
  %i.hf = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !85
  %i.hi = zext i8 %i.hh to i32                    ; 2 uses
  %i.hj = add nuw nsw i32 %i.hb, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hf
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !85
  %i.hm = zext i8 %i.hl to i32
  %i.hn = shl i32 %i.he, %i.hi
  %i.ho = or i32 %i.hn, %i.hm
  %i.hp = zext i32 %i.ho to i64
  %i.hq = load ptr, ptr %i.gn, align 8, !tbaa !71
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.gu
  %i.hs = shl i64 %i.hp, %i.gt
  %i.ht = or i64 %i.hs, %i.gs                     ; 2 uses
  store i64 %i.ht, ptr %i.gr, align 8, !tbaa !68
  %i.hu = zext nneg i32 %i.hj to i64
  %i.hv = add i64 %i.gt, %i.hu
  store i64 %i.hv, ptr %i.gq, align 8, !tbaa !68
  store i64 %i.ht, ptr %i.hr, align 1
  %i.hw = load i64, ptr %i.gq, align 8, !tbaa !68 ; 3 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = and i64 %i.hw, -8
  %i.hz = and i64 %i.hw, 7                        ; 2 uses
  store i64 %i.hz, ptr %i.gq, align 8, !tbaa !68
  %i.ia = load i64, ptr %i.gr, align 8, !tbaa !68
  %i.ib = lshr i64 %i.ia, %i.hy                   ; 2 uses
  store i64 %i.ib, ptr %i.gr, align 8, !tbaa !68
  %i.ic = load i64, ptr %i.gp, align 8, !tbaa !74
  %i.id = add i64 %i.ic, %i.hx                    ; 2 uses
  store i64 %i.id, ptr %i.gp, align 8, !tbaa !74
  %i.ie = add nuw nsw i64 %.011.i43.i, 1          ; 2 uses
  %exitcond.not.i45.i = icmp eq i64 %i.ie, %.sroa.speculated
  br i1 %exitcond.not.i45.i, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit, label %bb.i, !llvm.loop !32

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.sink.split: ; preds = %bb.h, %_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i, %bb.d
  %.sink = phi i64 [ %i.bi, %bb.d ], [ 0, %_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE9EncodeRleEmRKN12_GLOBAL__N_110PrefixCodeERNS4_9BitWriterE.exit.i ], [ 0, %bb.h ]
  store i64 %.sink, ptr %.phi.trans.insert.i, align 8, !tbaa !207
  br label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit: ; preds = %bb.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.if = add i64 %.015, 8                        ; 2 uses
  %i.ig = icmp ult i64 %i.if, %5
  br i1 %i.ig, label %bb.b, label %._crit_edge, !llvm.loop !1024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_12ChunkEncoderINS0_9UpTo8BitsEEES3_E8FinalizeEv(ptr nofree readonly captures(none) %.0.val.0.val, ptr nofree captures(none) %.0.val.8.val, i64 %.8.val) unnamed_addr #33 align 2 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %.8.val, -8                      ; 4 uses
  %i.c = icmp ult i64 %i.b, 32
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 144
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = load ptr, ptr %.0.val.8.val, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 32 ; 4 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %i.q = shl i64 %i.i, %i.p
  %i.r = load i64, ptr %i.o, align 8, !tbaa !68
  %i.s = or i64 %i.r, %i.q                        ; 2 uses
  store i64 %i.s, ptr %i.o, align 8, !tbaa !68
  %i.t = zext i8 %i.f to i64
  %i.u = add i64 %i.p, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !68
  store i64 %i.s, ptr %i.m, align 1
  %i.v = load i64, ptr %i.n, align 8, !tbaa !68   ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.v, -8
  %i.y = and i64 %i.v, 7
  store i64 %i.y, ptr %i.n, align 8, !tbaa !68
  %i.z = load i64, ptr %i.o, align 8, !tbaa !68
  %i.aa = lshr i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !68
  %i.ab = load i64, ptr %i.k, align 8, !tbaa !74
  %i.ac = add i64 %i.ab, %i.w
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !74
  br label %_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = trunc i64 %i.b to i32                   ; 4 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.af = xor i32 %i.ae, 31
  %i.ag = icmp ult i32 %i.ad, 16                  ; 3 uses
  %i.ah = sub nuw nsw i32 43, %i.ae
  %i.ai = select i1 %i.ag, i32 %i.ad, i32 %i.ah
  %i.aj = select i1 %i.ag, i32 0, i32 %i.af       ; 2 uses
  %.neg.i.i = shl nsw i32 -1, %i.aj
  %i.ak = add i32 %.neg.i.i, %i.ad
  %i.al = select i1 %i.ag, i32 0, i32 %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 38
  %i.ao = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !85  ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = zext nneg i8 %i.aq to i64
  %i.at = shl i64 %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 72
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ao
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !104
  %i.ax = zext i16 %i.aw to i64
  %i.ay = or i64 %i.at, %i.ax
  %i.az = load i8, ptr %.0.val.0.val, align 8, !tbaa !85 ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val.0.val, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !85
  %i.bf = zext i8 %i.be to i64
  %i.bg = or i64 %i.bc, %i.bf
  %i.bh = add nuw nsw i32 %i.aj, %i.ar
  %i.bi = add nuw nsw i32 %i.bh, %i.ba
  %i.bj = load ptr, ptr %.0.val.8.val, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 24 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val.8.val, i64 32 ; 4 uses
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !68 ; 2 uses
  %i.bq = shl i64 %i.bg, %i.bp
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bs = or i64 %i.br, %i.bq                     ; 2 uses
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !68
  %i.bt = zext nneg i32 %i.bi to i64
  %i.bu = add i64 %i.bp, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !68
  store i64 %i.bs, ptr %i.bm, align 1
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !68 ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bv, -8
  %i.by = and i64 %i.bv, 7
  store i64 %i.by, ptr %i.bn, align 8, !tbaa !68
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.ca = lshr i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !68
  %i.cb = load i64, ptr %i.bk, align 8, !tbaa !74
  %i.cc = add i64 %i.cb, %i.bw
  store i64 %i.cc, ptr %i.bk, align 8, !tbaa !74
  br label %_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit

_ZN22default_implementation12_GLOBAL__N_112ChunkEncoderINS0_9UpTo8BitsEE8FinalizeEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [8 x i16], align 64               ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 16 uses
  %i.c = alloca [4 x ptr], align 16               ; 12 uses
  %4 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector.142"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor.143"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1083, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1084, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 5 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1085, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 16 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.w = trunc i64 %3 to i32
  %i.x = shl i64 %i.v, 32
  %i.y = ashr exact i64 %i.x, 32                  ; 14 uses
  %i.z = sub nsw i64 %.sroa.speculated33, %i.v
  %i.aa = trunc i64 %i.z to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.w) ; 2 uses
  %i.ab = and i64 %.sroa.speculated28, 504        ; 23 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !68  ; 21 uses
  %i.ad = sext i32 %.sroa.speculated to i64       ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1086, !nonnull !121, !align !176 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1087, !nonnull !121, !align !176 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1088, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = zext nneg i8 %i.ak to i64               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1089, !nonnull !121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1090, !nonnull !121, !align !176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 22 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1091, !nonnull !121
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95, !range !108, !noundef !121
  %i.aw = trunc nuw i8 %i.av to i1                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1092, !nonnull !121, !align !176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %.not59.i = icmp eq i64 %i.as, 0                ; 4 uses
  br i1 %i.ap, label %.preheader52.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.bb, align 8, !tbaa !199
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !199
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !199
  br i1 %.not59.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.al ; 3 uses
  %i.bf = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.bg = icmp eq i64 %i.as, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph57.i.new

.lr.ph57.i.new:                                   ; preds = %.lr.ph57.i
  %unroll_iter = and i64 %i.as, -2
  br label %bb.b

._crit_edge58.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge58.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge58.i.loopexit.unr-lcssa, %.lr.ph57.i
  %.056.i.epil.init = phi i64 [ 0, %.lr.ph57.i ], [ %i.bs, %._crit_edge58.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod548 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod548)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.056.i.epil.init ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.056.i.epil.init
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bh, align 16, !tbaa !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !203
  br label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %.epil.preheader, %._crit_edge58.i.loopexit.unr-lcssa, %.preheader.i
  %i.bk = add nsw i64 %i.ad, 1
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i64 noundef %i.bk, i64 noundef %i.ac, ptr noundef readonly %i.az, i64 noundef %i.as, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph57.i.new
  %.056.i = phi i64 [ 0, %.lr.ph57.i.new ], [ %i.bs, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph57.i.new ], [ %niter.next.1, %bb.b ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.056.i ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.056.i
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bl, align 16, !tbaa !202
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !203
  %i.bo = or disjoint i64 %.056.i, 1              ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bo
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bp, align 16, !tbaa !202
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !203
  %i.bs = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge58.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1025

.preheader52.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !1095
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !1095
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bv, align 8, !tbaa !1095
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bw, align 8, !tbaa !1095
  br i1 %.not59.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader52.i
  %xtraiter549.a = and i64 %i.as, 1
  %i.bx = icmp eq i64 %i.as, 1
  br i1 %i.bx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter552 = and i64 %i.as, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod550.not.a = icmp eq i64 %xtraiter549.a, 0
  br i1 %lcmp.mod550.not.a, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03953.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ami, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod551 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod551)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03953.i.epil.init ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03953.i.epil.init
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !1096
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.03953.i.epil.init
  store ptr %i.ca, ptr %i.by, align 16, !tbaa !1098
  %i.cb = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.03953.i.epil.init
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1099
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cd = mul nuw nsw i64 %i.as, 1408             ; 2 uses
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #40 ; 3 uses
  %i.cf = getelementptr inbounds nuw [1408 x i8], ptr %i.ce, i64 %i.as
  %i.cg = add nsw i64 %i.cd, -1408                ; 2 uses
  %i.ch = urem i64 %i.cg, 1408
  %i.ci = sub nuw nsw i64 %i.cg, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, 1408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ce, i8 0, i64 %i.cj, i1 false)
  %i.ck = ptrtoint ptr %i.cf to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader52.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %.sroa.0.0 = phi ptr [ %i.ce, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader52.i ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %i.ck, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader52.i ]
  %.not133.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not133.i.i, label %.preheader.i.i, label %.lr.ph130.i.i

.lr.ph130.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.i97.i.i = icmp eq i64 %i.ab, 0            ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = add nsw i64 %i.y, %i.ad
  %i.cp = mul i64 %i.ac, %i.co
  %i.cq = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 6
  %i.cs = getelementptr i8, ptr %i.s, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.cr ; 4 uses
  %i.ct = mul i64 %i.ac, %i.y
  %scevgep114 = getelementptr i8, ptr %i.s, i64 %i.ct ; 4 uses
  %i.cu = shl nuw nsw i64 %i.cq, 4                ; 4 uses
  %i.cv = add nsw i64 %i.y, %i.ad
  %i.cw = mul i64 %i.ac, %i.cv
  %i.cx = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 6
  %i.cz = getelementptr i8, ptr %i.s, i64 %i.cw
  %scevgep196 = getelementptr i8, ptr %i.cz, i64 %i.cy ; 4 uses
  %i.da = mul i64 %i.ac, %i.y                     ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.s, i64 %i.da ; 4 uses
  %i.db = shl nuw nsw i64 %i.cx, 4                ; 4 uses
  %i.dc = sub i64 0, %i.ac                        ; 2 uses
  %i.dd = add i64 %i.da, %i.t                     ; 2 uses
  %i.de = add nsw i64 %i.y, %i.ad
  %i.df = mul i64 %i.ac, %i.de
  %i.dg = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 5
  %i.di = getelementptr i8, ptr %i.s, i64 %i.df
  %scevgep310 = getelementptr i8, ptr %i.di, i64 %i.dh ; 2 uses
  %i.dj = mul i64 %i.ac, %i.y
  %scevgep311 = getelementptr i8, ptr %i.s, i64 %i.dj ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dg, 4                ; 2 uses
  %i.dl = add nsw i64 %i.y, %i.ad
  %i.dm = mul i64 %i.ac, %i.dl
  %i.dn = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 5
  %i.dp = getelementptr i8, ptr %i.s, i64 %i.dm
  %scevgep350 = getelementptr i8, ptr %i.dp, i64 %i.do ; 2 uses
  %i.dq = mul i64 %i.ac, %i.y
  %scevgep351 = getelementptr i8, ptr %i.s, i64 %i.dq ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  %i.ds = add nsw i64 %i.y, %i.ad
  %i.dt = mul i64 %i.ac, %i.ds
  %i.du = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.dv = mul nuw nsw i64 %i.du, 48
  %i.dw = getelementptr i8, ptr %i.s, i64 %i.dt
  %scevgep405 = getelementptr i8, ptr %i.dw, i64 %i.dv ; 3 uses
  %i.dx = mul i64 %i.ac, %i.y
  %scevgep406 = getelementptr i8, ptr %i.s, i64 %i.dx ; 3 uses
  %i.dy = shl nuw nsw i64 %i.du, 4                ; 3 uses
  %i.dz = add nsw i64 %i.y, %i.ad
  %i.ea = mul i64 %i.ac, %i.dz
  %i.eb = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.ec = mul nuw nsw i64 %i.eb, 48
  %i.ed = getelementptr i8, ptr %i.s, i64 %i.ea
  %scevgep469 = getelementptr i8, ptr %i.ed, i64 %i.ec ; 3 uses
  %i.ee = mul i64 %i.ac, %i.y
  %scevgep470 = getelementptr i8, ptr %i.s, i64 %i.ee ; 3 uses
  %i.ef = shl nuw nsw i64 %i.eb, 4                ; 3 uses
  %min.iters.check505 = icmp ult i64 %i.as, 4
  %n.vec507 = and i64 %i.as, -4                   ; 3 uses
  %cmp.n525 = icmp eq i64 %i.as, %n.vec507
  %stride.check484 = icmp slt i64 %i.ac, 0
  %stride.check420 = icmp slt i64 %i.ac, 0
  %min.iters.check353 = icmp samesign ult i64 %i.ab, 12
  %stride.check361 = icmp slt i64 %i.ac, 0
  %stride.check321 = icmp slt i64 %i.ac, 0
  %min.iters.check271 = icmp ult i64 %i.m, 16
  %i.eg = and i64 %.sroa.speculated28, 8
  %n.vec273 = and i64 %.sroa.speculated28, 496    ; 4 uses
  %cmp.n280 = icmp eq i64 %i.ab, %n.vec273
  %min.epilog.iters.check284.not.not = icmp eq i64 %i.eg, 0
  %min.iters.check253 = icmp ult i64 %i.m, 16
  %i.eh = and i64 %.sroa.speculated28, 8
  %n.vec = and i64 %.sroa.speculated28, 496       ; 4 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.eh, 0
  %min.iters.check199 = icmp ult i64 %i.m, 16
  %stride.check215 = icmp slt i64 %i.ac, 0
  %min.iters.check = icmp ult i64 %i.m, 16
  %stride.check = icmp slt i64 %i.ac, 0
  %xtraiter555 = and i64 %i.as, 1
  %i.ei = icmp eq i64 %i.as, 1
  %unroll_iter558 = and i64 %i.as, -2
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  %lcmp.mod557 = trunc i64 %i.as to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i114.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i114.i.i, label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.s

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph130.i.i
  %.078129.i.i = phi i64 [ 0, %.lr.ph130.i.i ], [ %i.alu, %.loopexit.i.i ] ; 7 uses
  %i.ej = add i64 %.078129.i.i, %i.y
  %i.ek = mul i64 %i.ej, %i.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ek ; 54 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not59.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.em = and i64 %.078129.i.i, 1                 ; 4 uses
  %i.en = xor i64 %i.em, 1                        ; 3 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.body508

vector.body508:                                   ; preds = %.lr.ph.i.i, %vector.body508
  %index509 = phi i64 [ %index.next523, %vector.body508 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body508 ], [ <i64 0, i64 1>, %.lr.ph.i.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, <2 x i64> %vec.ind ; 2 uses
  %wide.gep510.a = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, <2 x i64> %step.add ; 2 uses
  %wide.gep511.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.em
  %wide.gep512.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep510.a, i64 %i.em
  %wide.gep513.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep511.a, i64 64 ; 2 uses
  %wide.gep514.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep512.a, i64 64 ; 2 uses
  %i.eo = ptrtoint <2 x ptr> %wide.gep513.a to <2 x i64>
  %i.ep = ptrtoint <2 x ptr> %wide.gep514.a to <2 x i64>
  %i.eq = lshr <2 x i64> %i.eo, splat (i64 1)
  %i.er = lshr <2 x i64> %i.ep, splat (i64 1)
  %i.es = and <2 x i64> %i.eq, splat (i64 31)
  %i.et = and <2 x i64> %i.er, splat (i64 31)
  %wide.gep515 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep513.a, <2 x i64> %i.es
  %wide.gep516 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep514.a, <2 x i64> %i.et
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index509 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x ptr> %wide.gep515, ptr %i.eu, align 16, !tbaa !92
  store <2 x ptr> %wide.gep516, ptr %i.ev, align 16, !tbaa !92
  %wide.gep517 = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.en
  %wide.gep518 = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep510.a, i64 %i.en
  %wide.gep519 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep517, i64 64 ; 2 uses
  %wide.gep520 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep518, i64 64 ; 2 uses
  %i.ew = ptrtoint <2 x ptr> %wide.gep519 to <2 x i64>
  %i.ex = ptrtoint <2 x ptr> %wide.gep520 to <2 x i64>
  %i.ey = lshr <2 x i64> %i.ew, splat (i64 1)
  %i.ez = lshr <2 x i64> %i.ex, splat (i64 1)
  %i.fa = and <2 x i64> %i.ey, splat (i64 31)
  %i.fb = and <2 x i64> %i.ez, splat (i64 31)
  %wide.gep521 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep519, <2 x i64> %i.fa
  %wide.gep522 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep520, <2 x i64> %i.fb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index509 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x ptr> %wide.gep521, ptr %i.fc, align 16, !tbaa !92
  store <2 x ptr> %wide.gep522, ptr %i.fd, align 16, !tbaa !92
  %index.next523 = add nuw i64 %index509, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fe = icmp eq i64 %index.next523, %n.vec507
  br i1 %i.fe, label %middle.block524, label %vector.body508, !llvm.loop !1026

middle.block524:                                  ; preds = %vector.body508
  br i1 %cmp.n525, label %._crit_edge.i.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %.lr.ph.i.i, %middle.block524
  %.077123.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec507, %middle.block524 ]
  br label %scalar.ph504

._crit_edge.i.i:                                  ; preds = %scalar.ph504, %middle.block524
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !92 ; 38 uses
  %.pre.i249 = ptrtoaddr ptr %.pre.i to i64       ; 2 uses
  switch i64 %i.as, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.g
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre68.i = load ptr, ptr %i.cl, align 8, !tbaa !92
  %.pre69.i = load ptr, ptr %i.cm, align 16, !tbaa !92
  %.pre70.i = load ptr, ptr %i.cn, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %.077123.i.i = phi i64 [ %i.fu, %scalar.ph504 ], [ %.077123.i.i.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, i64 %.077123.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw [704 x i8], ptr %i.ff, i64 %i.em
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = lshr i64 %i.fi, 1
  %i.fk = and i64 %i.fj, 31
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077123.i.i
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !92
  %i.fn = getelementptr inbounds nuw [704 x i8], ptr %i.ff, i64 %i.en
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = and i64 %i.fq, 31
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077123.i.i
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !92
  %i.fu = add nuw nsw i64 %.077123.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fu, %i.as
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph504, !llvm.loop !1027

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.aw, label %iter.check, label %iter.check281

iter.check:                                       ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck252

vector.memcheck252:                               ; preds = %iter.check
  %i.fv = mul i64 %.078129.i.i, %i.dc
  %i.fw = sub i64 %i.fv, %i.dd
  %i.fx = add i64 %i.fw, %.pre.i249
  %i.fy = add i64 %i.fx, -1
  %diff.check = icmp ult i64 %i.fy, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck252
  br i1 %min.iters.check253, label %vec.epilog.vector.body.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.main.loop.iter.check, %vector.body255
  %index256 = phi i64 [ %index.next258, %vector.body255 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fz = shl nuw nsw i64 %index256, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load = load <8 x i16>, ptr %i.ga, align 1
  %wide.load257 = load <8 x i16>, ptr %i.gb, align 1
  %i.gc = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.gd = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load257)
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index256 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <8 x i16> %i.gc, ptr %i.ge, align 2, !tbaa !104
  store <8 x i16> %i.gd, ptr %i.gf, align 2, !tbaa !104
  %index.next258 = add nuw i64 %index256, 16      ; 2 uses
  %i.gg = icmp eq i64 %index.next258, %n.vec
  br i1 %i.gg, label %middle.block259, label %vector.body255, !llvm.loop !1028

middle.block259:                                  ; preds = %vector.body255
  br i1 %cmp.n, label %.lr.ph125.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block259
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.vector.body.preheader, !prof !204

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index260.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck252, %vec.epilog.iter.check
  %.09.i.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck252 ]
  br label %.lr.ph.i.i.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index260 = phi i64 [ %index.next262, %vec.epilog.vector.body ], [ %index260.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.gh = shl nuw nsw i64 %index260, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gh
  %wide.load261 = load <8 x i16>, ptr %i.gi, align 1
  %i.gj = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load261)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index260
  store <8 x i16> %i.gj, ptr %i.gk, align 2, !tbaa !104
  %index.next262 = add nuw i64 %index260, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next262, %i.ab
  br i1 %i.gl, label %.lr.ph125.i.i, label %vec.epilog.vector.body, !llvm.loop !1029

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.09.i.i.i = phi i64 [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.hf, %.lr.ph.i.i.i ] ; 6 uses
  %i.gm = shl nuw nsw i64 %.09.i.i.i, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gm
  %.val.i.i.i = load i16, ptr %i.gn, align 1
  %i.go = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i)
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.09.i.i.i
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !104
  %i.gq = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gr
  %.val.i.i.i.1 = load i16, ptr %i.gs, align 1
  %i.gt = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.1)
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.gq
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !104
  %i.gv = or disjoint i64 %.09.i.i.i, 2           ; 2 uses
  %i.gw = shl nuw nsw i64 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gw
  %.val.i.i.i.2 = load i16, ptr %i.gx, align 1
  %i.gy = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.2)
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.gv
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !104
  %i.ha = or disjoint i64 %.09.i.i.i, 3           ; 2 uses
  %i.hb = shl nuw nsw i64 %i.ha, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hb
  %.val.i.i.i.3 = load i16, ptr %i.hc, align 1
  %i.hd = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.3)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ha
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !104
  %i.hf = add nuw nsw i64 %.09.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.hf, %i.ab
  br i1 %exitcond.not.i.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i.i.i, !llvm.loop !1030

iter.check281:                                    ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck268

vector.memcheck268:                               ; preds = %iter.check281
  %i.hg = mul i64 %.078129.i.i, %i.dc
  %i.hh = sub i64 %i.hg, %i.dd
  %i.hi = add i64 %i.hh, %.pre.i249
  %i.hj = add i64 %i.hi, -1
  %diff.check269 = icmp ult i64 %i.hj, 31
  br i1 %diff.check269, label %.lr.ph.i82.i.i.preheader, label %vector.main.loop.iter.check270

vector.main.loop.iter.check270:                   ; preds = %vector.memcheck268
  br i1 %min.iters.check271, label %vec.epilog.vector.body287.preheader, label %vector.body274

vector.body274:                                   ; preds = %vector.main.loop.iter.check270, %vector.body274
  %index275 = phi i64 [ %index.next278, %vector.body274 ], [ 0, %vector.main.loop.iter.check270 ] ; 3 uses
  %i.hk = shl nuw nsw i64 %index275, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load276 = load <8 x i16>, ptr %i.hl, align 1
  %wide.load277 = load <8 x i16>, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index275 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <8 x i16> %wide.load276, ptr %i.hn, align 2, !tbaa !104
  store <8 x i16> %wide.load277, ptr %i.ho, align 2, !tbaa !104
  %index.next278 = add nuw i64 %index275, 16      ; 2 uses
  %i.hp = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.hp, label %middle.block279, label %vector.body274, !llvm.loop !1031

middle.block279:                                  ; preds = %vector.body274
  br i1 %cmp.n280, label %.lr.ph125.i.i, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block279
  br i1 %min.epilog.iters.check284.not.not, label %.lr.ph.i82.i.i.preheader, label %vec.epilog.vector.body287.preheader, !prof !204

vec.epilog.vector.body287.preheader:              ; preds = %vector.main.loop.iter.check270, %vec.epilog.iter.check282
  %index288.ph = phi i64 [ 0, %vector.main.loop.iter.check270 ], [ %n.vec273, %vec.epilog.iter.check282 ]
  br label %vec.epilog.vector.body287

.lr.ph.i82.i.i.preheader:                         ; preds = %vector.memcheck268, %vec.epilog.iter.check282
  %.08.i.i.i.ph = phi i64 [ %n.vec273, %vec.epilog.iter.check282 ], [ 0, %vector.memcheck268 ]
  br label %.lr.ph.i82.i.i

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287.preheader, %vec.epilog.vector.body287
  %index288 = phi i64 [ %index.next290, %vec.epilog.vector.body287 ], [ %index288.ph, %vec.epilog.vector.body287.preheader ] ; 3 uses
  %i.hq = shl nuw nsw i64 %index288, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hq
  %wide.load289 = load <8 x i16>, ptr %i.hr, align 1
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index288
  store <8 x i16> %wide.load289, ptr %i.hs, align 2, !tbaa !104
  %index.next290 = add nuw i64 %index288, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next290, %i.ab
  br i1 %i.ht, label %.lr.ph125.i.i, label %vec.epilog.vector.body287, !llvm.loop !1032

.lr.ph.i82.i.i:                                   ; preds = %.lr.ph.i82.i.i, %.lr.ph.i82.i.i.preheader
  %.08.i.i.i = phi i64 [ %.08.i.i.i.ph, %.lr.ph.i82.i.i.preheader ], [ %i.ij, %.lr.ph.i82.i.i ] ; 6 uses
  %i.hu = shl nuw nsw i64 %.08.i.i.i, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hu
  %.val.i83.i.i = load i16, ptr %i.hv, align 1
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.08.i.i.i
  store i16 %.val.i83.i.i, ptr %i.hw, align 2, !tbaa !104
  %i.hx = or disjoint i64 %.08.i.i.i, 1           ; 2 uses
  %i.hy = shl nuw nsw i64 %i.hx, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hy
  %.val.i83.i.i.1 = load i16, ptr %i.hz, align 1
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.hx
  store i16 %.val.i83.i.i.1, ptr %i.ia, align 2, !tbaa !104
  %i.ib = or disjoint i64 %.08.i.i.i, 2           ; 2 uses
  %i.ic = shl nuw nsw i64 %i.ib, 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ic
  %.val.i83.i.i.2 = load i16, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ib
  store i16 %.val.i83.i.i.2, ptr %i.ie, align 2, !tbaa !104
  %i.if = or disjoint i64 %.08.i.i.i, 3           ; 2 uses
  %i.ig = shl nuw nsw i64 %i.if, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ig
  %.val.i83.i.i.3 = load i16, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.if
  store i16 %.val.i83.i.i.3, ptr %i.ii, align 2, !tbaa !104
  %i.ij = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i84.i.i.3 = icmp eq i64 %i.ij, %i.ab
  br i1 %exitcond.not.i84.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i82.i.i, !llvm.loop !1033

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ik = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 12 uses
  br i1 %i.aw, label %.lr.ph.i86.i.i.preheader, label %bb.f

.lr.ph.i86.i.i.preheader:                         ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i86.i.i.preheader
  %i.il = getelementptr i8, ptr %.pre.i, i64 %i.dk ; 2 uses
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.dk  ; 2 uses
  %bound0315.a = icmp ult ptr %.pre.i, %i.im
  %bound1316.a = icmp ult ptr %i.ik, %i.il
  %found.conflict317.a = and i1 %bound0315.a, %bound1316.a
  %bound0318 = icmp ult ptr %.pre.i, %scevgep310
  %bound1319 = icmp ult ptr %scevgep311, %i.il
  %found.conflict320 = and i1 %bound0318, %bound1319
  %i.in = or i1 %found.conflict320, %stride.check321
  %conflict.rdx322 = or i1 %found.conflict317.a, %i.in
  %bound0323 = icmp ult ptr %i.ik, %scevgep310
  %bound1324 = icmp ult ptr %scevgep311, %i.im
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  br i1 %conflict.rdx326, label %.lr.ph.i86.i.i, label %vector.body328

vector.body328:                                   ; preds = %vector.memcheck314, %vector.body328
  %index329 = phi i64 [ %index.next331, %vector.body328 ], [ 0, %vector.memcheck314 ] ; 4 uses
  %i.io = shl nuw nsw i64 %index329, 2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.io
  %wide.vec = load <8 x i16>, ptr %i.ip, align 1, !alias.scope !1100 ; 2 uses
  %i.iq = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec)
  %i.ir = shufflevector <8 x i16> %i.iq, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.is = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec)
  %i.it = shufflevector <8 x i16> %i.is, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index329
  store <4 x i16> %i.ir, ptr %i.iu, align 2, !tbaa !104, !alias.scope !1101, !noalias !1102
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %index329
  store <4 x i16> %i.it, ptr %i.iv, align 2, !tbaa !104, !alias.scope !1103, !noalias !1100
  %index.next331 = add nuw i64 %index329, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next331, %i.ab
  br i1 %i.iw, label %.lr.ph125.i.i, label %vector.body328, !llvm.loop !1038

.lr.ph.i86.i.i:                                   ; preds = %vector.memcheck314, %.lr.ph.i86.i.i
  %.017.i.i.i = phi i64 [ %i.jm, %.lr.ph.i86.i.i ], [ 0, %vector.memcheck314 ] ; 5 uses
  %i.ix = shl nuw nsw i64 %.017.i.i.i, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ix ; 2 uses
  %.val15.i.i.i = load i16, ptr %i.iy, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  %.val.i87.i.i = load i16, ptr %i.iz, align 1
  %i.ja = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i)
  %i.jb = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i)
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.017.i.i.i
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !104
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %.017.i.i.i
  store i16 %i.jb, ptr %i.jd, align 2, !tbaa !104
  %i.je = or disjoint i64 %.017.i.i.i, 1          ; 3 uses
  %i.jf = shl nuw nsw i64 %i.je, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jf ; 2 uses
  %.val15.i.i.i.1 = load i16, ptr %i.jg, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %.val.i87.i.i.1 = load i16, ptr %i.jh, align 1
  %i.ji = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.1)
  %i.jj = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i.1)
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.je
  store i16 %i.ji, ptr %i.jk, align 2, !tbaa !104
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.je
  store i16 %i.jj, ptr %i.jl, align 2, !tbaa !104
  %i.jm = add nuw nsw i64 %.017.i.i.i, 2          ; 2 uses
  %exitcond.not.i88.i.i.1 = icmp eq i64 %i.jm, %i.ab
  br i1 %exitcond.not.i88.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i86.i.i, !llvm.loop !1039

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i.preheader

.lr.ph.i90.i.i.preheader:                         ; preds = %bb.f
  br i1 %min.iters.check353, label %.lr.ph.i90.i.i.preheader539, label %vector.memcheck354

.lr.ph.i90.i.i.preheader539:                      ; preds = %vector.memcheck354, %.lr.ph.i90.i.i.preheader
  br label %.lr.ph.i90.i.i

vector.memcheck354:                               ; preds = %.lr.ph.i90.i.i.preheader
  %i.jn = getelementptr i8, ptr %.pre.i, i64 %i.dr ; 2 uses
  %i.jo = getelementptr i8, ptr %i.ik, i64 %i.dr  ; 2 uses
  %bound0355 = icmp ult ptr %.pre.i, %i.jo
  %bound1356 = icmp ult ptr %i.ik, %i.jn
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult ptr %.pre.i, %scevgep350
  %bound1359 = icmp ult ptr %scevgep351, %i.jn
  %found.conflict360 = and i1 %bound0358, %bound1359
  %i.jp = or i1 %found.conflict360, %stride.check361
  %conflict.rdx362.a = or i1 %found.conflict357, %i.jp
  %bound0363 = icmp ult ptr %i.ik, %scevgep350
  %bound1364 = icmp ult ptr %scevgep351, %i.jo
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362.a, %found.conflict365
  br i1 %conflict.rdx366, label %.lr.ph.i90.i.i.preheader539, label %vector.body368

vector.body368:                                   ; preds = %vector.memcheck354, %vector.body368
  %index369 = phi i64 [ %index.next373, %vector.body368 ], [ 0, %vector.memcheck354 ] ; 4 uses
  %i.jq = shl nuw nsw i64 %index369, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jq
  %wide.vec370 = load <8 x i16>, ptr %i.jr, align 1, !alias.scope !1104 ; 2 uses
  %strided.vec371 = shufflevector <8 x i16> %wide.vec370, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec372 = shufflevector <8 x i16> %wide.vec370, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index369
  store <4 x i16> %strided.vec371, ptr %i.js, align 2, !tbaa !104, !alias.scope !1105, !noalias !1106
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %index369
  store <4 x i16> %strided.vec372, ptr %i.jt, align 2, !tbaa !104, !alias.scope !1107, !noalias !1104
  %index.next373 = add nuw i64 %index369, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next373, %i.ab
  br i1 %i.ju, label %.lr.ph125.i.i, label %vector.body368, !llvm.loop !1044

.lr.ph.i90.i.i:                                   ; preds = %.lr.ph.i90.i.i, %.lr.ph.i90.i.i.preheader539
  %.015.i.i.i = phi i64 [ 0, %.lr.ph.i90.i.i.preheader539 ], [ %i.kg, %.lr.ph.i90.i.i ] ; 5 uses
  %i.jv = shl nuw nsw i64 %.015.i.i.i, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jv ; 2 uses
  %.val13.i.i.i = load i16, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %.val.i91.i.i = load i16, ptr %i.jx, align 1
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.015.i.i.i
  store i16 %.val13.i.i.i, ptr %i.jy, align 2, !tbaa !104
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %.015.i.i.i
  store i16 %.val.i91.i.i, ptr %i.jz, align 2, !tbaa !104
  %i.ka = or disjoint i64 %.015.i.i.i, 1          ; 3 uses
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kb ; 2 uses
  %.val13.i.i.i.1 = load i16, ptr %i.kc, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %.val.i91.i.i.1 = load i16, ptr %i.kd, align 1
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ka
  store i16 %.val13.i.i.i.1, ptr %i.ke, align 2, !tbaa !104
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ka
  store i16 %.val.i91.i.i.1, ptr %i.kf, align 2, !tbaa !104
  %i.kg = add nuw nsw i64 %.015.i.i.i, 2          ; 2 uses
  %exitcond.not.i92.i.i.1 = icmp eq i64 %i.kg, %i.ab
  br i1 %exitcond.not.i92.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i, !llvm.loop !1045

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.kh = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 12 uses
  %i.ki = load ptr, ptr %i.cm, align 16, !tbaa !92 ; 12 uses
  br i1 %i.aw, label %.lr.ph.i94.i.i.preheader, label %.lr.ph.i98.i.i.preheader

.lr.ph.i94.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.i94.i.i.preheader
  %i.kj = getelementptr i8, ptr %i.kh, i64 %i.dy  ; 3 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 %i.dy  ; 3 uses
  %i.kl = getelementptr i8, ptr %.pre.i, i64 %i.dy ; 3 uses
  %bound0410 = icmp ult ptr %i.kh, %i.kk
  %bound1411 = icmp ult ptr %i.ki, %i.kj
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0413 = icmp ult ptr %i.kh, %i.kl
  %bound1414 = icmp ult ptr %.pre.i, %i.kj
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416.a = or i1 %found.conflict412, %found.conflict415
  %bound0417.a = icmp ult ptr %i.kh, %scevgep405
  %bound1418.a = icmp ult ptr %scevgep406, %i.kj
  %found.conflict419.a = and i1 %bound0417.a, %bound1418.a
  %i.km = or i1 %found.conflict419.a, %stride.check420
  %conflict.rdx421 = or i1 %conflict.rdx416.a, %i.km
  %bound0422 = icmp ult ptr %i.ki, %i.kl
  %bound1423 = icmp ult ptr %.pre.i, %i.kk
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.ki, %scevgep405
  %bound1427 = icmp ult ptr %scevgep406, %i.kk
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %.pre.i, %scevgep405
  %bound1431 = icmp ult ptr %scevgep406, %i.kl
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  br i1 %conflict.rdx433, label %.lr.ph.i94.i.i, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck409, %vector.body435
  %index436 = phi i64 [ %index.next437, %vector.body435 ], [ 0, %vector.memcheck409 ] ; 12 uses
  %i.kn = mul nuw nsw i64 %index436, 6
  %i.ko = mul nuw i64 %index436, 6
  %i.kp = mul nuw i64 %index436, 6
  %i.kq = mul nuw i64 %index436, 6
  %i.kr = mul nuw i64 %index436, 6
  %i.ks = mul nuw i64 %index436, 6
  %i.kt = mul nuw i64 %index436, 6
  %i.ku = mul nuw i64 %index436, 6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kn ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ko ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  %i.ky = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kp ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kq ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 18
  %i.lc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kr ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ks ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 30
  %i.lg = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kt ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  %i.li = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ku ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 42
  %i.lk = load i16, ptr %i.kv, align 1, !alias.scope !1108
  %i.ll = load i16, ptr %i.kx, align 1, !alias.scope !1108
  %i.lm = load i16, ptr %i.kz, align 1, !alias.scope !1108
  %i.ln = load i16, ptr %i.lb, align 1, !alias.scope !1108
  %i.lo = load i16, ptr %i.ld, align 1, !alias.scope !1108
  %i.lp = load i16, ptr %i.lf, align 1, !alias.scope !1108
  %i.lq = load i16, ptr %i.lh, align 1, !alias.scope !1108
  %i.lr = load i16, ptr %i.lj, align 1, !alias.scope !1108
  %i.ls = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %i.lt = insertelement <8 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 2
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 3
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 4
  %i.lx = insertelement <8 x i16> %i.lw, i16 %i.lp, i64 5
  %i.ly = insertelement <8 x i16> %i.lx, i16 %i.lq, i64 6
  %i.lz = insertelement <8 x i16> %i.ly, i16 %i.lr, i64 7
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  %i.md = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %i.me = getelementptr inbounds nuw i8, ptr %i.lc, i64 26
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 38
  %i.mh = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  %i.mi = load i16, ptr %i.ma, align 1, !alias.scope !1108
  %i.mj = load i16, ptr %i.mb, align 1, !alias.scope !1108
  %i.mk = load i16, ptr %i.mc, align 1, !alias.scope !1108
  %i.ml = load i16, ptr %i.md, align 1, !alias.scope !1108
  %i.mm = load i16, ptr %i.me, align 1, !alias.scope !1108
  %i.mn = load i16, ptr %i.mf, align 1, !alias.scope !1108
  %i.mo = load i16, ptr %i.mg, align 1, !alias.scope !1108
  %i.mp = load i16, ptr %i.mh, align 1, !alias.scope !1108
  %i.mq = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 1
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 2
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 3
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 4
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 5
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 6
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 7
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kw, i64 10
  %i.na = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.la, i64 22
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  %i.nd = getelementptr inbounds nuw i8, ptr %i.le, i64 34
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.nf = getelementptr inbounds nuw i8, ptr %i.li, i64 46
  %i.ng = load i16, ptr %i.my, align 1, !alias.scope !1108
  %i.nh = load i16, ptr %i.mz, align 1, !alias.scope !1108
  %i.ni = load i16, ptr %i.na, align 1, !alias.scope !1108
  %i.nj = load i16, ptr %i.nb, align 1, !alias.scope !1108
  %i.nk = load i16, ptr %i.nc, align 1, !alias.scope !1108
  %i.nl = load i16, ptr %i.nd, align 1, !alias.scope !1108
  %i.nm = load i16, ptr %i.ne, align 1, !alias.scope !1108
  %i.nn = load i16, ptr %i.nf, align 1, !alias.scope !1108
  %i.no = insertelement <8 x i16> poison, i16 %i.ng, i64 0
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 1
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 2
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 3
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 4
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 5
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 6
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 7
  %i.nw = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lz)
  %i.nx = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mx)
  %i.ny = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.nv) ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index436
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %index436
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %index436
  %i.oc = sub <8 x i16> %i.nw, %i.ny              ; 2 uses
  store <8 x i16> %i.oc, ptr %i.oa, align 2, !tbaa !104, !alias.scope !1109, !noalias !1110
  %i.od = ashr <8 x i16> %i.oc, splat (i16 1)
  %i.oe = add <8 x i16> %i.od, %i.ny              ; 2 uses
  %i.of = sub <8 x i16> %i.nx, %i.oe              ; 2 uses
  store <8 x i16> %i.of, ptr %i.ob, align 2, !tbaa !104, !alias.scope !1111, !noalias !1112
  %i.og = ashr <8 x i16> %i.of, splat (i16 1)
  %i.oh = add <8 x i16> %i.og, %i.oe
  store <8 x i16> %i.oh, ptr %i.nz, align 2, !tbaa !104, !alias.scope !1113, !noalias !1108
  %index.next437 = add nuw i64 %index436, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next437, %i.ab
  br i1 %i.oi, label %.lr.ph125.i.i, label %vector.body435, !llvm.loop !1051

.lr.ph.i94.i.i:                                   ; preds = %vector.memcheck409, %.lr.ph.i94.i.i
  %.025.i.i.i = phi i64 [ %i.oz, %.lr.ph.i94.i.i ], [ 0, %vector.memcheck409 ] ; 5 uses
  %i.oj = mul nuw nsw i64 %.025.i.i.i, 6
  %i.ok = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.oj ; 3 uses
  %.val23.i.i.i = load i16, ptr %i.ok, align 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %.val21.i.i.i = load i16, ptr %i.ol, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %.val.i95.i.i = load i16, ptr %i.om, align 1
  %i.on = call noundef i16 @llvm.bswap.i16(i16 %.val23.i.i.i)
  %i.oo = call noundef i16 @llvm.bswap.i16(i16 %.val21.i.i.i)
  %i.op = call noundef i16 @llvm.bswap.i16(i16 %.val.i95.i.i) ; 2 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.025.i.i.i
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.025.i.i.i
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %.025.i.i.i
  %i.ot = sub i16 %i.on, %i.op                    ; 2 uses
  store i16 %i.ot, ptr %i.or, align 2, !tbaa !104
  %i.ou = ashr i16 %i.ot, 1
  %i.ov = add i16 %i.ou, %i.op                    ; 2 uses
  %i.ow = sub i16 %i.oo, %i.ov                    ; 2 uses
  store i16 %i.ow, ptr %i.os, align 2, !tbaa !104
  %i.ox = ashr i16 %i.ow, 1
  %i.oy = add i16 %i.ox, %i.ov
  store i16 %i.oy, ptr %i.oq, align 2, !tbaa !104
  %i.oz = add nuw nsw i64 %.025.i.i.i, 1          ; 2 uses
  %exitcond.not.i96.i.i = icmp eq i64 %i.oz, %i.ab
  br i1 %exitcond.not.i96.i.i, label %.lr.ph125.i.i, label %.lr.ph.i94.i.i, !llvm.loop !1052

.lr.ph.i98.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph.i98.i.i.preheader
  %i.pa = getelementptr i8, ptr %i.kh, i64 %i.ef  ; 3 uses
  %i.pb = getelementptr i8, ptr %i.ki, i64 %i.ef  ; 3 uses
  %i.pc = getelementptr i8, ptr %.pre.i, i64 %i.ef ; 3 uses
  %bound0474.a = icmp ult ptr %i.kh, %i.pb
  %bound1475.a = icmp ult ptr %i.ki, %i.pa
  %found.conflict476.a = and i1 %bound0474.a, %bound1475.a
  %bound0477 = icmp ult ptr %i.kh, %i.pc
  %bound1478 = icmp ult ptr %.pre.i, %i.pa
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %found.conflict476.a, %found.conflict479
  %bound0481 = icmp ult ptr %i.kh, %scevgep469
  %bound1482 = icmp ult ptr %scevgep470, %i.pa
  %found.conflict483 = and i1 %bound0481, %bound1482
  %i.pd = or i1 %found.conflict483, %stride.check484
  %conflict.rdx485 = or i1 %conflict.rdx480, %i.pd
  %bound0486 = icmp ult ptr %i.ki, %i.pc
  %bound1487 = icmp ult ptr %.pre.i, %i.pb
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.ki, %scevgep469
  %bound1491 = icmp ult ptr %scevgep470, %i.pb
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %.pre.i, %scevgep469
  %bound1495 = icmp ult ptr %scevgep470, %i.pc
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  br i1 %conflict.rdx497, label %.lr.ph.i98.i.i, label %vector.body499

vector.body499:                                   ; preds = %vector.memcheck473, %vector.body499
  %index500 = phi i64 [ %index.next501, %vector.body499 ], [ 0, %vector.memcheck473 ] ; 12 uses
  %i.pe = mul nuw nsw i64 %index500, 6
  %i.pf = mul nuw i64 %index500, 6
  %i.pg = mul nuw i64 %index500, 6
  %i.ph = mul nuw i64 %index500, 6
  %i.pi = mul nuw i64 %index500, 6
  %i.pj = mul nuw i64 %index500, 6
  %i.pk = mul nuw i64 %index500, 6
  %i.pl = mul nuw i64 %index500, 6
  %i.pm = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pe ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pf ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 6
  %i.pp = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pg ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ph ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 18
  %i.pt = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pi ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pj ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 30
  %i.px = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pk ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 36
  %i.pz = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pl ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 42
  %i.qb = load i16, ptr %i.pm, align 1, !alias.scope !1114
  %i.qc = load i16, ptr %i.po, align 1, !alias.scope !1114
  %i.qd = load i16, ptr %i.pq, align 1, !alias.scope !1114
  %i.qe = load i16, ptr %i.ps, align 1, !alias.scope !1114
  %i.qf = load i16, ptr %i.pu, align 1, !alias.scope !1114
  %i.qg = load i16, ptr %i.pw, align 1, !alias.scope !1114
  %i.qh = load i16, ptr %i.py, align 1, !alias.scope !1114
  %i.qi = load i16, ptr %i.qa, align 1, !alias.scope !1114
  %i.qj = insertelement <8 x i16> poison, i16 %i.qb, i64 0
  %i.qk = insertelement <8 x i16> %i.qj, i16 %i.qc, i64 1
  %i.ql = insertelement <8 x i16> %i.qk, i16 %i.qd, i64 2
  %i.qm = insertelement <8 x i16> %i.ql, i16 %i.qe, i64 3
  %i.qn = insertelement <8 x i16> %i.qm, i16 %i.qf, i64 4
  %i.qo = insertelement <8 x i16> %i.qn, i16 %i.qg, i64 5
  %i.qp = insertelement <8 x i16> %i.qo, i16 %i.qh, i64 6
  %i.qq = insertelement <8 x i16> %i.qp, i16 %i.qi, i64 7
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 14
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pr, i64 20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pt, i64 26
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.px, i64 38
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pz, i64 44
  %i.qz = load i16, ptr %i.qr, align 1, !alias.scope !1114
  %i.ra = load i16, ptr %i.qs, align 1, !alias.scope !1114
  %i.rb = load i16, ptr %i.qt, align 1, !alias.scope !1114
  %i.rc = load i16, ptr %i.qu, align 1, !alias.scope !1114
  %i.rd = load i16, ptr %i.qv, align 1, !alias.scope !1114
  %i.re = load i16, ptr %i.qw, align 1, !alias.scope !1114
  %i.rf = load i16, ptr %i.qx, align 1, !alias.scope !1114
  %i.rg = load i16, ptr %i.qy, align 1, !alias.scope !1114
  %i.rh = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %i.ri = insertelement <8 x i16> %i.rh, i16 %i.ra, i64 1
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 2
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 3
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 4
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 5
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 6
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pn, i64 10
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pr, i64 22
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pv, i64 34
  %i.rv = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pz, i64 46
  %i.rx = load i16, ptr %i.rp, align 1, !alias.scope !1114
  %i.ry = load i16, ptr %i.rq, align 1, !alias.scope !1114
  %i.rz = load i16, ptr %i.rr, align 1, !alias.scope !1114
  %i.sa = load i16, ptr %i.rs, align 1, !alias.scope !1114
  %i.sb = load i16, ptr %i.rt, align 1, !alias.scope !1114
  %i.sc = load i16, ptr %i.ru, align 1, !alias.scope !1114
  %i.sd = load i16, ptr %i.rv, align 1, !alias.scope !1114
  %i.se = load i16, ptr %i.rw, align 1, !alias.scope !1114
  %i.sf = insertelement <8 x i16> poison, i16 %i.rx, i64 0
  %i.sg = insertelement <8 x i16> %i.sf, i16 %i.ry, i64 1
  %i.sh = insertelement <8 x i16> %i.sg, i16 %i.rz, i64 2
  %i.si = insertelement <8 x i16> %i.sh, i16 %i.sa, i64 3
  %i.sj = insertelement <8 x i16> %i.si, i16 %i.sb, i64 4
  %i.sk = insertelement <8 x i16> %i.sj, i16 %i.sc, i64 5
  %i.sl = insertelement <8 x i16> %i.sk, i16 %i.sd, i64 6
  %i.sm = insertelement <8 x i16> %i.sl, i16 %i.se, i64 7 ; 2 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index500
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %index500
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %index500
  %i.sq = sub <8 x i16> %i.qq, %i.sm              ; 2 uses
  store <8 x i16> %i.sq, ptr %i.so, align 2, !tbaa !104, !alias.scope !1115, !noalias !1116
  %i.sr = ashr <8 x i16> %i.sq, splat (i16 1)
  %i.ss = add <8 x i16> %i.sr, %i.sm              ; 2 uses
  %i.st = sub <8 x i16> %i.ro, %i.ss              ; 2 uses
  store <8 x i16> %i.st, ptr %i.sp, align 2, !tbaa !104, !alias.scope !1117, !noalias !1118
  %i.su = ashr <8 x i16> %i.st, splat (i16 1)
  %i.sv = add <8 x i16> %i.su, %i.ss
  store <8 x i16> %i.sv, ptr %i.sn, align 2, !tbaa !104, !alias.scope !1119, !noalias !1114
  %index.next501 = add nuw i64 %index500, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next501, %i.ab
  br i1 %i.sw, label %.lr.ph125.i.i, label %vector.body499, !llvm.loop !1058

.lr.ph.i98.i.i:                                   ; preds = %vector.memcheck473, %.lr.ph.i98.i.i
  %.022.i.i.i = phi i64 [ %i.tk, %.lr.ph.i98.i.i ], [ 0, %vector.memcheck473 ] ; 5 uses
  %i.sx = mul nuw nsw i64 %.022.i.i.i, 6
  %i.sy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.sx ; 3 uses
  %.val20.i.i.i = load i16, ptr %i.sy, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %.val18.i.i.i = load i16, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  %.val.i99.i.i = load i16, ptr %i.ta, align 1    ; 2 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.022.i.i.i
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.022.i.i.i
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %.022.i.i.i
  %i.te = sub i16 %.val20.i.i.i, %.val.i99.i.i    ; 2 uses
  store i16 %i.te, ptr %i.tc, align 2, !tbaa !104
  %i.tf = ashr i16 %i.te, 1
  %i.tg = add i16 %i.tf, %.val.i99.i.i            ; 2 uses
  %i.th = sub i16 %.val18.i.i.i, %i.tg            ; 2 uses
  store i16 %i.th, ptr %i.td, align 2, !tbaa !104
  %i.ti = ashr i16 %i.th, 1
  %i.tj = add i16 %i.ti, %i.tg
  store i16 %i.tj, ptr %i.tb, align 2, !tbaa !104
  %i.tk = add nuw nsw i64 %.022.i.i.i, 1          ; 2 uses
  %exitcond.not.i100.i.i = icmp eq i64 %i.tk, %i.ab
  br i1 %exitcond.not.i100.i.i, label %.lr.ph125.i.i, label %.lr.ph.i98.i.i, !llvm.loop !1059

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.tl = phi ptr [ %.pre70.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.tm = phi ptr [ %.pre69.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.tn = phi ptr [ %.pre68.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.to = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not.i97.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %.lr.ph.i102.i.i.preheader

.lr.ph.i102.i.i.preheader:                        ; preds = %bb.h
  br i1 %min.iters.check, label %.lr.ph.i102.i.i.preheader528, label %vector.memcheck

.lr.ph.i102.i.i.preheader528:                     ; preds = %vector.memcheck, %.lr.ph.i102.i.i.preheader
  br label %.lr.ph.i102.i.i

vector.memcheck:                                  ; preds = %.lr.ph.i102.i.i.preheader
  %i.tp = getelementptr i8, ptr %i.tn, i64 %i.cu  ; 4 uses
  %i.tq = getelementptr i8, ptr %i.tm, i64 %i.cu  ; 4 uses
  %i.tr = getelementptr i8, ptr %i.to, i64 %i.cu  ; 4 uses
  %i.ts = getelementptr i8, ptr %i.tl, i64 %i.cu  ; 4 uses
  %bound0 = icmp ult ptr %i.tn, %i.tq
  %bound1 = icmp ult ptr %i.tm, %i.tp
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.tn, %i.tr
  %bound1116 = icmp ult ptr %i.to, %i.tp
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %i.tn, %i.ts
  %bound1119 = icmp ult ptr %i.tl, %i.tp
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %bound0122 = icmp ult ptr %i.tn, %scevgep
  %bound1123 = icmp ult ptr %scevgep114, %i.tp
  %found.conflict124 = and i1 %bound0122, %bound1123
  %i.tt = or i1 %found.conflict124, %stride.check
  %conflict.rdx125 = or i1 %conflict.rdx121, %i.tt
  %bound0126 = icmp ult ptr %i.tm, %i.tr
  %bound1127 = icmp ult ptr %i.to, %i.tq
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  %bound0130 = icmp ult ptr %i.tm, %i.ts
  %bound1131 = icmp ult ptr %i.tl, %i.tq
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %i.tm, %scevgep
  %bound1135 = icmp ult ptr %scevgep114, %i.tq
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %i.to, %i.ts
  %bound1139 = icmp ult ptr %i.tl, %i.tr
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.to, %scevgep
  %bound1143 = icmp ult ptr %scevgep114, %i.tr
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.tl, %scevgep
  %bound1147 = icmp ult ptr %scevgep114, %i.ts
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %.lr.ph.i102.i.i.preheader528, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 13 uses
  %i.tu = shl nuw nsw i64 %index, 3
  %i.tv = shl i64 %index, 3
  %i.tw = shl i64 %index, 3
  %i.tx = shl i64 %index, 3
  %i.ty = shl i64 %index, 3
  %i.tz = shl i64 %index, 3
  %i.ua = shl i64 %index, 3
  %i.ub = shl i64 %index, 3
  %i.uc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tu ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tv ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tw ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tx ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uj = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ty ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.ul = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tz ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  %i.un = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ua ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 48
  %i.up = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ub ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 56
  %i.ur = load i16, ptr %i.uc, align 1, !alias.scope !1120
  %i.us = load i16, ptr %i.ue, align 1, !alias.scope !1120
  %i.ut = load i16, ptr %i.ug, align 1, !alias.scope !1120
  %i.uu = load i16, ptr %i.ui, align 1, !alias.scope !1120
  %i.uv = load i16, ptr %i.uk, align 1, !alias.scope !1120
  %i.uw = load i16, ptr %i.um, align 1, !alias.scope !1120
  %i.ux = load i16, ptr %i.uo, align 1, !alias.scope !1120
  %i.uy = load i16, ptr %i.uq, align 1, !alias.scope !1120
  %i.uz = insertelement <8 x i16> poison, i16 %i.ur, i64 0
  %i.va = insertelement <8 x i16> %i.uz, i16 %i.us, i64 1
  %i.vb = insertelement <8 x i16> %i.va, i16 %i.ut, i64 2
  %i.vc = insertelement <8 x i16> %i.vb, i16 %i.uu, i64 3
  %i.vd = insertelement <8 x i16> %i.vc, i16 %i.uv, i64 4
  %i.ve = insertelement <8 x i16> %i.vd, i16 %i.uw, i64 5
  %i.vf = insertelement <8 x i16> %i.ve, i16 %i.ux, i64 6
  %i.vg = insertelement <8 x i16> %i.vf, i16 %i.uy, i64 7
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ud, i64 10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uf, i64 18
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uh, i64 26
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uj, i64 34
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ul, i64 42
  %i.vn = getelementptr inbounds nuw i8, ptr %i.un, i64 50
  %i.vo = getelementptr inbounds nuw i8, ptr %i.up, i64 58
  %i.vp = load i16, ptr %i.vh, align 1, !alias.scope !1120
  %i.vq = load i16, ptr %i.vi, align 1, !alias.scope !1120
  %i.vr = load i16, ptr %i.vj, align 1, !alias.scope !1120
  %i.vs = load i16, ptr %i.vk, align 1, !alias.scope !1120
  %i.vt = load i16, ptr %i.vl, align 1, !alias.scope !1120
  %i.vu = load i16, ptr %i.vm, align 1, !alias.scope !1120
  %i.vv = load i16, ptr %i.vn, align 1, !alias.scope !1120
  %i.vw = load i16, ptr %i.vo, align 1, !alias.scope !1120
  %i.vx = insertelement <8 x i16> poison, i16 %i.vp, i64 0
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 1
  %i.vz = insertelement <8 x i16> %i.vy, i16 %i.vr, i64 2
  %i.wa = insertelement <8 x i16> %i.vz, i16 %i.vs, i64 3
  %i.wb = insertelement <8 x i16> %i.wa, i16 %i.vt, i64 4
  %i.wc = insertelement <8 x i16> %i.wb, i16 %i.vu, i64 5
  %i.wd = insertelement <8 x i16> %i.wc, i16 %i.vv, i64 6
  %i.we = insertelement <8 x i16> %i.wd, i16 %i.vw, i64 7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uf, i64 20
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uh, i64 28
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ul, i64 44
  %i.wl = getelementptr inbounds nuw i8, ptr %i.un, i64 52
  %i.wm = getelementptr inbounds nuw i8, ptr %i.up, i64 60
  %i.wn = load i16, ptr %i.wf, align 1, !alias.scope !1120
  %i.wo = load i16, ptr %i.wg, align 1, !alias.scope !1120
  %i.wp = load i16, ptr %i.wh, align 1, !alias.scope !1120
  %i.wq = load i16, ptr %i.wi, align 1, !alias.scope !1120
  %i.wr = load i16, ptr %i.wj, align 1, !alias.scope !1120
  %i.ws = load i16, ptr %i.wk, align 1, !alias.scope !1120
  %i.wt = load i16, ptr %i.wl, align 1, !alias.scope !1120
  %i.wu = load i16, ptr %i.wm, align 1, !alias.scope !1120
  %i.wv = insertelement <8 x i16> poison, i16 %i.wn, i64 0
  %i.ww = insertelement <8 x i16> %i.wv, i16 %i.wo, i64 1
  %i.wx = insertelement <8 x i16> %i.ww, i16 %i.wp, i64 2
  %i.wy = insertelement <8 x i16> %i.wx, i16 %i.wq, i64 3
  %i.wz = insertelement <8 x i16> %i.wy, i16 %i.wr, i64 4
  %i.xa = insertelement <8 x i16> %i.wz, i16 %i.ws, i64 5
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wt, i64 6
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wu, i64 7
  %i.xd = getelementptr inbounds nuw i8, ptr %i.uc, i64 6
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ud, i64 14
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uf, i64 22
  %i.xg = getelementptr inbounds nuw i8, ptr %i.uh, i64 30
  %i.xh = getelementptr inbounds nuw i8, ptr %i.uj, i64 38
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ul, i64 46
  %i.xj = getelementptr inbounds nuw i8, ptr %i.un, i64 54
  %i.xk = getelementptr inbounds nuw i8, ptr %i.up, i64 62
  %i.xl = load i16, ptr %i.xd, align 1, !alias.scope !1120
  %i.xm = load i16, ptr %i.xe, align 1, !alias.scope !1120
  %i.xn = load i16, ptr %i.xf, align 1, !alias.scope !1120
  %i.xo = load i16, ptr %i.xg, align 1, !alias.scope !1120
  %i.xp = load i16, ptr %i.xh, align 1, !alias.scope !1120
  %i.xq = load i16, ptr %i.xi, align 1, !alias.scope !1120
  %i.xr = load i16, ptr %i.xj, align 1, !alias.scope !1120
  %i.xs = load i16, ptr %i.xk, align 1, !alias.scope !1120
  %i.xt = insertelement <8 x i16> poison, i16 %i.xl, i64 0
  %i.xu = insertelement <8 x i16> %i.xt, i16 %i.xm, i64 1
  %i.xv = insertelement <8 x i16> %i.xu, i16 %i.xn, i64 2
  %i.xw = insertelement <8 x i16> %i.xv, i16 %i.xo, i64 3
  %i.xx = insertelement <8 x i16> %i.xw, i16 %i.xp, i64 4
  %i.xy = insertelement <8 x i16> %i.xx, i16 %i.xq, i64 5
  %i.xz = insertelement <8 x i16> %i.xy, i16 %i.xr, i64 6
  %i.ya = insertelement <8 x i16> %i.xz, i16 %i.xs, i64 7
  %i.yb = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.vg)
end_hunk_1
begin_hunk_2_@_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %found.conflict203, %found.conflict206
  %bound0208 = icmp ult ptr %i.tn, %i.zn
  %bound1209 = icmp ult ptr %i.tl, %i.zk
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %i.tn, %scevgep196
  %bound1213 = icmp ult ptr %scevgep197, %i.zk
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.zo = or i1 %found.conflict214, %stride.check215
  %conflict.rdx216 = or i1 %conflict.rdx211, %i.zo
  %bound0217 = icmp ult ptr %i.tm, %i.zm
  %bound1218 = icmp ult ptr %i.to, %i.zl
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.tm, %i.zn
  %bound1222 = icmp ult ptr %i.tl, %i.zl
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.tm, %scevgep196
  %bound1226 = icmp ult ptr %scevgep197, %i.zl
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.to, %i.zn
  %bound1230 = icmp ult ptr %i.tl, %i.zm
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.to, %scevgep196
  %bound1234 = icmp ult ptr %scevgep197, %i.zm
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %i.tl, %scevgep196
  %bound1238 = icmp ult ptr %scevgep197, %i.zn
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  br i1 %conflict.rdx240, label %.lr.ph.i106.i.i.preheader530, label %vector.body242

vector.body242:                                   ; preds = %vector.memcheck200, %vector.body242
  %index243 = phi i64 [ %index.next244, %vector.body242 ], [ 0, %vector.memcheck200 ] ; 13 uses
  %i.zp = shl nuw nsw i64 %index243, 3
  %i.zq = shl i64 %index243, 3
  %i.zr = shl i64 %index243, 3
  %i.zs = shl i64 %index243, 3
  %i.zt = shl i64 %index243, 3
  %i.zu = shl i64 %index243, 3
  %i.zv = shl i64 %index243, 3
  %i.zw = shl i64 %index243, 3
  %i.zx = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zp ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zq ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zr ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zs ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aae = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zt ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 32
  %i.aag = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zu ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %i.aai = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zv ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 48
  %i.aak = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zw ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 56
  %i.aam = load i16, ptr %i.zx, align 1, !alias.scope !1128
  %i.aan = load i16, ptr %i.zz, align 1, !alias.scope !1128
  %i.aao = load i16, ptr %i.aab, align 1, !alias.scope !1128
  %i.aap = load i16, ptr %i.aad, align 1, !alias.scope !1128
  %i.aaq = load i16, ptr %i.aaf, align 1, !alias.scope !1128
  %i.aar = load i16, ptr %i.aah, align 1, !alias.scope !1128
  %i.aas = load i16, ptr %i.aaj, align 1, !alias.scope !1128
  %i.aat = load i16, ptr %i.aal, align 1, !alias.scope !1128
  %i.aau = insertelement <8 x i16> poison, i16 %i.aam, i64 0
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 1
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 2
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 3
  %i.aay = insertelement <8 x i16> %i.aax, i16 %i.aaq, i64 4
  %i.aaz = insertelement <8 x i16> %i.aay, i16 %i.aar, i64 5
  %i.aba = insertelement <8 x i16> %i.aaz, i16 %i.aas, i64 6
  %i.abb = insertelement <8 x i16> %i.aba, i16 %i.aat, i64 7
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zx, i64 2
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zy, i64 10
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaa, i64 18
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aac, i64 26
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aae, i64 34
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aag, i64 42
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aai, i64 50
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aak, i64 58
  %i.abk = load i16, ptr %i.abc, align 1, !alias.scope !1128
  %i.abl = load i16, ptr %i.abd, align 1, !alias.scope !1128
  %i.abm = load i16, ptr %i.abe, align 1, !alias.scope !1128
  %i.abn = load i16, ptr %i.abf, align 1, !alias.scope !1128
  %i.abo = load i16, ptr %i.abg, align 1, !alias.scope !1128
  %i.abp = load i16, ptr %i.abh, align 1, !alias.scope !1128
  %i.abq = load i16, ptr %i.abi, align 1, !alias.scope !1128
  %i.abr = load i16, ptr %i.abj, align 1, !alias.scope !1128
  %i.abs = insertelement <8 x i16> poison, i16 %i.abk, i64 0
  %i.abt = insertelement <8 x i16> %i.abs, i16 %i.abl, i64 1
  %i.abu = insertelement <8 x i16> %i.abt, i16 %i.abm, i64 2
  %i.abv = insertelement <8 x i16> %i.abu, i16 %i.abn, i64 3
  %i.abw = insertelement <8 x i16> %i.abv, i16 %i.abo, i64 4
  %i.abx = insertelement <8 x i16> %i.abw, i16 %i.abp, i64 5
  %i.aby = insertelement <8 x i16> %i.abx, i16 %i.abq, i64 6
  %i.abz = insertelement <8 x i16> %i.aby, i16 %i.abr, i64 7
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.acb = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aaa, i64 20
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aac, i64 28
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aae, i64 36
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aag, i64 44
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aai, i64 52
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aak, i64 60
  %i.aci = load i16, ptr %i.aca, align 1, !alias.scope !1128
  %i.acj = load i16, ptr %i.acb, align 1, !alias.scope !1128
  %i.ack = load i16, ptr %i.acc, align 1, !alias.scope !1128
  %i.acl = load i16, ptr %i.acd, align 1, !alias.scope !1128
  %i.acm = load i16, ptr %i.ace, align 1, !alias.scope !1128
  %i.acn = load i16, ptr %i.acf, align 1, !alias.scope !1128
  %i.aco = load i16, ptr %i.acg, align 1, !alias.scope !1128
  %i.acp = load i16, ptr %i.ach, align 1, !alias.scope !1128
  %i.acq = insertelement <8 x i16> poison, i16 %i.aci, i64 0
  %i.acr = insertelement <8 x i16> %i.acq, i16 %i.acj, i64 1
  %i.acs = insertelement <8 x i16> %i.acr, i16 %i.ack, i64 2
  %i.act = insertelement <8 x i16> %i.acs, i16 %i.acl, i64 3
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 4
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 5
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 6
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 7 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.zx, i64 6
  %i.acz = getelementptr inbounds nuw i8, ptr %i.zy, i64 14
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aaa, i64 22
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aac, i64 30
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aae, i64 38
  %i.add = getelementptr inbounds nuw i8, ptr %i.aag, i64 46
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aai, i64 54
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aak, i64 62
  %i.adg = load i16, ptr %i.acy, align 1, !alias.scope !1128
  %i.adh = load i16, ptr %i.acz, align 1, !alias.scope !1128
  %i.adi = load i16, ptr %i.ada, align 1, !alias.scope !1128
  %i.adj = load i16, ptr %i.adb, align 1, !alias.scope !1128
  %i.adk = load i16, ptr %i.adc, align 1, !alias.scope !1128
  %i.adl = load i16, ptr %i.add, align 1, !alias.scope !1128
  %i.adm = load i16, ptr %i.ade, align 1, !alias.scope !1128
  %i.adn = load i16, ptr %i.adf, align 1, !alias.scope !1128
  %i.ado = insertelement <8 x i16> poison, i16 %i.adg, i64 0
  %i.adp = insertelement <8 x i16> %i.ado, i16 %i.adh, i64 1
  %i.adq = insertelement <8 x i16> %i.adp, i16 %i.adi, i64 2
  %i.adr = insertelement <8 x i16> %i.adq, i16 %i.adj, i64 3
  %i.ads = insertelement <8 x i16> %i.adr, i16 %i.adk, i64 4
  %i.adt = insertelement <8 x i16> %i.ads, i16 %i.adl, i64 5
  %i.adu = insertelement <8 x i16> %i.adt, i16 %i.adm, i64 6
  %i.adv = insertelement <8 x i16> %i.adu, i16 %i.adn, i64 7
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %index243
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %index243
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %index243
  %i.adz = sub <8 x i16> %i.abb, %i.acx           ; 2 uses
  store <8 x i16> %i.adz, ptr %i.adx, align 2, !tbaa !104, !alias.scope !1129, !noalias !1130
  %i.aea = ashr <8 x i16> %i.adz, splat (i16 1)
  %i.aeb = add <8 x i16> %i.aea, %i.acx           ; 2 uses
  %i.aec = sub <8 x i16> %i.abz, %i.aeb           ; 2 uses
  store <8 x i16> %i.aec, ptr %i.ady, align 2, !tbaa !104, !alias.scope !1131, !noalias !1132
  %i.aed = ashr <8 x i16> %i.aec, splat (i16 1)
  %i.aee = add <8 x i16> %i.aed, %i.aeb
  store <8 x i16> %i.aee, ptr %i.adw, align 2, !tbaa !104, !alias.scope !1133, !noalias !1134
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %index243
  store <8 x i16> %i.adv, ptr %i.aef, align 2, !tbaa !104, !alias.scope !1135, !noalias !1128
  %index.next244 = add nuw i64 %index243, 8       ; 2 uses
  %i.aeg = icmp eq i64 %index.next244, %i.ab
  br i1 %i.aeg, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vector.body242, !llvm.loop !1074

.lr.ph.i106.i.i:                                  ; preds = %.lr.ph.i106.i.i.preheader530, %.lr.ph.i106.i.i
  %.029.i.i.i = phi i64 [ %i.aew, %.lr.ph.i106.i.i ], [ 0, %.lr.ph.i106.i.i.preheader530 ] ; 6 uses
  %i.aeh = shl nuw nsw i64 %.029.i.i.i, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.aeh ; 4 uses
  %.val27.i107.i.i = load i16, ptr %i.aei, align 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 2
  %.val25.i.i.i = load i16, ptr %i.aej, align 1
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %.val23.i108.i.i = load i16, ptr %i.aek, align 1 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 6
  %.val.i109.i.i = load i16, ptr %i.ael, align 1
  %i.aem = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %.029.i.i.i
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %.029.i.i.i
  %i.aeo = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %.029.i.i.i
  %i.aep = sub i16 %.val27.i107.i.i, %.val23.i108.i.i ; 2 uses
  store i16 %i.aep, ptr %i.aen, align 2, !tbaa !104
  %i.aeq = ashr i16 %i.aep, 1
  %i.aer = add i16 %i.aeq, %.val23.i108.i.i       ; 2 uses
  %i.aes = sub i16 %.val25.i.i.i, %i.aer          ; 2 uses
  store i16 %i.aes, ptr %i.aeo, align 2, !tbaa !104
  %i.aet = ashr i16 %i.aes, 1
  %i.aeu = add i16 %i.aet, %i.aer
  store i16 %i.aeu, ptr %i.aem, align 2, !tbaa !104
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %.029.i.i.i
  store i16 %.val.i109.i.i, ptr %i.aev, align 2, !tbaa !104
  %i.aew = add nuw nsw i64 %.029.i.i.i, 1         ; 2 uses
  %exitcond.not.i110.i.i = icmp eq i64 %i.aew, %i.ab
  br i1 %exitcond.not.i110.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %.lr.ph.i106.i.i, !llvm.loop !1075

_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i: ; preds = %vector.body242, %.lr.ph.i106.i.i, %vector.body, %.lr.ph.i102.i.i, %bb.i, %bb.h
  br i1 %.not59.i, label %.loopexit.i.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %vector.body499, %.lr.ph.i98.i.i, %vector.body435, %.lr.ph.i94.i.i, %vector.body368, %.lr.ph.i90.i.i, %vector.body328, %.lr.ph.i86.i.i, %vec.epilog.vector.body287, %.lr.ph.i82.i.i, %vec.epilog.vector.body, %.lr.ph.i.i.i, %middle.block279, %middle.block259, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, %.lr.ph.i98.i.i.preheader, %.lr.ph.i94.i.i.preheader, %bb.f, %.lr.ph.i86.i.i.preheader, %iter.check281, %iter.check
  %.not.i.i = icmp eq i64 %.078129.i.i, 0         ; 4 uses
  br i1 %i.ei, label %.epil.preheader554, label %.lr.ph125.i.i.new

._crit_edge126.i.i.unr-lcssa:                     ; preds = %bb.n
  br i1 %lcmp.mod556.not, label %._crit_edge126.i.i, label %.epil.preheader554

.epil.preheader554:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %.lr.ph125.i.i
  %.076124.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i ], [ %i.agj, %._crit_edge126.i.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod557)
  br i1 %.not.i.i, label %.critedge.i.i.epil, label %bb.j

bb.j:                                             ; preds = %.epil.preheader554
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !92 ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !104 ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !92
  %i.afc = getelementptr inbounds i8, ptr %i.afb, i64 -2
  store i16 %i.aez, ptr %i.afc, align 2, !tbaa !104
  br label %._crit_edge126.i.i.epilog-lcssa

.critedge.i.i.epil:                               ; preds = %.epil.preheader554
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !92
  %i.aff = getelementptr inbounds i8, ptr %i.afe, i64 -2
  store i16 0, ptr %i.aff, align 2, !tbaa !104
  %.phi.trans.insert.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %.pre.i.i.epil = load ptr, ptr %.phi.trans.insert.i.i.epil, align 8, !tbaa !92
  br label %._crit_edge126.i.i.epilog-lcssa

._crit_edge126.i.i.epilog-lcssa:                  ; preds = %.critedge.i.i.epil, %bb.j
  %i.afg = phi ptr [ %i.aey, %bb.j ], [ %.pre.i.i.epil, %.critedge.i.i.epil ]
  %i.afh = phi i16 [ %i.aez, %bb.j ], [ 0, %.critedge.i.i.epil ]
  %i.afi = getelementptr inbounds i8, ptr %i.afg, i64 -2
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !104
  br label %._crit_edge126.i.i

._crit_edge126.i.i:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %._crit_edge126.i.i.epilog-lcssa
  %i.afj = or i1 %.not.i97.i.i, %.not.i.i
  br i1 %i.afj, label %.loopexit.i.i, label %.lr.ph.i112.i.i

.lr.ph125.i.i.new:                                ; preds = %.lr.ph125.i.i, %bb.n
  %.076124.i.i = phi i64 [ %i.agj, %bb.n ], [ 0, %.lr.ph125.i.i ] ; 6 uses
  %niter559 = phi i64 [ %niter559.next.1, %bb.n ], [ 0, %.lr.ph125.i.i ]
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph125.i.i.new
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %i.afl = load ptr, ptr %i.afk, align 16, !tbaa !92 ; 2 uses
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !104 ; 2 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.afo = load ptr, ptr %i.afn, align 16, !tbaa !92
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 -2
  store i16 %i.afm, ptr %i.afp, align 2, !tbaa !104
  br label %bb.l

.critedge.i.i:                                    ; preds = %.lr.ph125.i.i.new
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.afr = load ptr, ptr %i.afq, align 16, !tbaa !92
  %i.afs = getelementptr inbounds i8, ptr %i.afr, i64 -2
  store i16 0, ptr %i.afs, align 2, !tbaa !104
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 16, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.i, %bb.k
  %i.aft = phi ptr [ %i.afl, %bb.k ], [ %.pre.i.i, %.critedge.i.i ]
  %i.afu = phi i16 [ %i.afm, %bb.k ], [ 0, %.critedge.i.i ]
  %i.afv = getelementptr inbounds i8, ptr %i.aft, i64 -2
  store i16 %i.afu, ptr %i.afv, align 2, !tbaa !104
  %i.afw = or disjoint i64 %.076124.i.i, 1        ; 4 uses
  br i1 %.not.i.i, label %.critedge.i.i.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.afw
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !92 ; 2 uses
  %i.afz = load i16, ptr %i.afy, align 2, !tbaa !104 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.afw
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !92
  %i.agc = getelementptr inbounds i8, ptr %i.agb, i64 -2
  store i16 %i.afz, ptr %i.agc, align 2, !tbaa !104
  br label %bb.n

.critedge.i.i.1:                                  ; preds = %bb.l
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.afw
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !92
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 -2
  store i16 0, ptr %i.agf, align 2, !tbaa !104
  %.phi.trans.insert.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.afw
  %.pre.i.i.1 = load ptr, ptr %.phi.trans.insert.i.i.1, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.1, %bb.m
  %i.agg = phi ptr [ %i.afy, %bb.m ], [ %.pre.i.i.1, %.critedge.i.i.1 ]
  %i.agh = phi i16 [ %i.afz, %bb.m ], [ 0, %.critedge.i.i.1 ]
  %i.agi = getelementptr inbounds i8, ptr %i.agg, i64 -2
  store i16 %i.agh, ptr %i.agi, align 2, !tbaa !104
  %i.agj = add nuw nsw i64 %.076124.i.i, 2        ; 2 uses
  %niter559.next.1 = add i64 %niter559, 2         ; 2 uses
  %niter559.ncmp.1 = icmp eq i64 %niter559.next.1, %unroll_iter558
  br i1 %niter559.ncmp.1, label %._crit_edge126.i.i.unr-lcssa, label %.lr.ph125.i.i.new, !llvm.loop !1076

.lr.ph.i112.i.i:                                  ; preds = %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i
  %.075127.i.i = phi i64 [ %i.alt, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i ], [ 0, %._crit_edge126.i.i ] ; 4 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.075127.i.i
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !92 ; 2 uses
  %i.agm = getelementptr inbounds i8, ptr %i.agl, i64 -2
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.075127.i.i
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !92 ; 2 uses
  %i.agp = getelementptr inbounds i8, ptr %i.ago, i64 -2
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.075127.i.i ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 16         ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1095
  br label %bb.o

bb.o:                                             ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, %.lr.ph.i112.i.i
  %.sink.i.i55.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %.lr.ph.i112.i.i ], [ %.sink.i.i54.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i ] ; 4 uses
  %.015.i113.i.i = phi i64 [ 0, %.lr.ph.i112.i.i ], [ %i.alr, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i ] ; 6 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.agl, i64 %.015.i113.i.i
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.agm, i64 %.015.i113.i.i
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.ago, i64 %.015.i113.i.i
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.agp, i64 %.015.i113.i.i
  %i.agx = sub nsw i64 %i.ab, %.015.i113.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.agx, i64 8) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.agy = load <8 x i16>, ptr %i.agu, align 2, !tbaa !104 ; 3 uses
  %i.agz = load <8 x i16>, ptr %i.agw, align 2, !tbaa !104 ; 2 uses
  %i.aha = load <8 x i16>, ptr %i.agt, align 2, !tbaa !104
  %i.ahb = load <8 x i16>, ptr %i.agv, align 2, !tbaa !104 ; 4 uses
  %i.ahc = sub <8 x i16> %i.agy, %i.agz           ; 2 uses
  %i.ahd = sub <8 x i16> %i.agy, %i.ahb
  %i.ahe = sub <8 x i16> %i.ahb, %i.agz           ; 2 uses
  %i.ahf = add <8 x i16> %i.ahc, %i.ahb
  %i.ahg = xor <8 x i16> %i.ahe, %i.ahd
  %i.ahh = icmp slt <8 x i16> %i.ahg, zeroinitializer
  %i.ahi = select <8 x i1> %i.ahh, <8 x i16> %i.ahb, <8 x i16> %i.agy
  %i.ahj = xor <8 x i16> %i.ahe, %i.ahc
  %i.ahk = icmp slt <8 x i16> %i.ahj, zeroinitializer
  %i.ahl = select <8 x i1> %i.ahk, <8 x i16> %i.ahf, <8 x i16> %i.ahi
  %i.ahm = sext <8 x i16> %i.aha to <8 x i32>
  %i.ahn = sext <8 x i16> %i.ahl to <8 x i32>
  %i.aho = sub nsw <8 x i32> %i.ahm, %i.ahn       ; 2 uses
  %i.ahp = shl nsw <8 x i32> %i.aho, splat (i32 1)
  %i.ahq = ashr <8 x i32> %i.aho, splat (i32 31)
  %i.ahr = xor <8 x i32> %i.ahp, %i.ahq           ; 2 uses
  %i.ahs = trunc <8 x i32> %i.ahr to <8 x i16>
  store <8 x i16> %i.ahs, ptr %i.a, align 64, !tbaa !104
  %i.aht = and <8 x i32> %i.ahr, splat (i32 65535)
  %i.ahu = icmp eq <8 x i32> %i.aht, zeroinitializer ; 8 uses
  %i.ahv = extractelement <8 x i1> %i.ahu, i64 0  ; 2 uses
  %i.ahw = zext i1 %i.ahv to i64
  %i.ahx = extractelement <8 x i1> %i.ahu, i64 1
  %narrow.1.i.i.i.i = select i1 %i.ahv, i1 %i.ahx, i1 false ; 2 uses
  %i.ahy = zext i1 %narrow.1.i.i.i.i to i64
  %i.ahz = add nuw nsw i64 %i.ahy, %i.ahw
  %i.aia = extractelement <8 x i1> %i.ahu, i64 2
  %narrow.2.i.i.i.i = select i1 %narrow.1.i.i.i.i, i1 %i.aia, i1 false
  %i.aib = zext i1 %narrow.2.i.i.i.i to i64
  %i.aic = add nuw nsw i64 %i.ahz, %i.aib         ; 2 uses
  %i.aid = icmp eq i64 %i.aic, 3
  %i.aie = extractelement <8 x i1> %i.ahu, i64 3
  %narrow.3.i.i.i.i = select i1 %i.aid, i1 %i.aie, i1 false
  %i.aif = zext i1 %narrow.3.i.i.i.i to i64
  %i.aig = add nuw nsw i64 %i.aic, %i.aif         ; 2 uses
  %i.aih = icmp eq i64 %i.aig, 4
  %i.aii = extractelement <8 x i1> %i.ahu, i64 4
  %narrow.4.i.i.i.i = select i1 %i.aih, i1 %i.aii, i1 false
  %i.aij = zext i1 %narrow.4.i.i.i.i to i64
  %i.aik = add nuw nsw i64 %i.aig, %i.aij         ; 2 uses
  %i.ail = icmp eq i64 %i.aik, 5
  %i.aim = extractelement <8 x i1> %i.ahu, i64 5
  %narrow.5.i.i.i.i = select i1 %i.ail, i1 %i.aim, i1 false
  %i.ain = zext i1 %narrow.5.i.i.i.i to i64
  %i.aio = add nuw nsw i64 %i.aik, %i.ain         ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 6
  %i.aiq = extractelement <8 x i1> %i.ahu, i64 6
  %narrow.6.i.i.i.i = select i1 %i.aip, i1 %i.aiq, i1 false
  %i.air = zext i1 %narrow.6.i.i.i.i to i64
  %i.ais = add nuw nsw i64 %i.aio, %i.air         ; 2 uses
  %i.ait = icmp eq i64 %i.ais, 7
  %i.aiu = extractelement <8 x i1> %i.ahu, i64 7
  %narrow.7.i.i.i.i = select i1 %i.ait, i1 %i.aiu, i1 false
  %i.aiv = zext i1 %narrow.7.i.i.i.i to i64
  %i.aiw = add nuw nsw i64 %i.ais, %i.aiv         ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aiw, i64 %.sroa.speculated.i.i.i) ; 8 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %.sroa.speculated.i.i.i, %i.aiw ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aix = icmp ne i64 %.sink.i.i55.i, 0
  %i.aiy = icmp samesign ugt i64 %.sroa.speculated.i.i.i.i, 7
  %or.cond.i.i.i.i = or i1 %i.aix, %i.aiy
  br i1 %or.cond.i.i.i.i, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.aiz = add i64 %.sroa.speculated.i.i.i.i, %.sink.i.i55.i
  br label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %i.aja = phi i64 [ 0, %bb.p ], [ %.sink.i.i55.i, %bb.o ]
  %i.ajb = add i64 %i.aja, %.sroa.speculated.i.i.i.i ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 7
  br i1 %i.ajc, label %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ajd = load ptr, ptr %i.ags, align 8, !tbaa !1099
  %i.aje = load ptr, ptr %i.agr, align 8, !tbaa !1098 ; 5 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !68
  %i.ajg = add i64 %i.ajf, 1
  store i64 %i.ajg, ptr %i.aje, align 8, !tbaa !68
  %i.ajh = trunc i64 %i.ajb to i32
  %i.aji = add i32 %i.ajh, -8                     ; 3 uses
  %i.ajj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aji, i1 true)
  %i.ajk = icmp ult i32 %i.aji, 16
  %i.ajl = sub nuw nsw i32 43, %i.ajj
  %i.ajm = select i1 %i.ajk, i32 %i.aji, i32 %i.ajl
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajd, i64 %i.ajn ; 2 uses
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !68
  %i.ajq = add i64 %i.ajp, 1
  store i64 %i.ajq, ptr %i.ajo, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %.lr.ph61.i.i.i.i.preheader, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

.lr.ph61.i.i.i.i.preheader:                       ; preds = %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i
  %.neg = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %xtraiter560 = and i64 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph61.i.i.i.i.prol.loopexit, label %.lr.ph61.i.i.i.i.prol

.lr.ph61.i.i.i.i.prol:                            ; preds = %.lr.ph61.i.i.i.i.preheader
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.speculated.i.i.i.i
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !104
  %i.ajt = zext i16 %i.ajs to i32
  %i.aju = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajt, i1 false)
  %i.ajv = sub nuw nsw i32 32, %i.aju
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.ajw ; 2 uses
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !68
  %i.ajz = add i64 %i.ajy, 1
  store i64 %i.ajz, ptr %i.ajx, align 8, !tbaa !68
  %i.aka = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  br label %.lr.ph61.i.i.i.i.prol.loopexit

.lr.ph61.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph61.i.i.i.i.prol, %.lr.ph61.i.i.i.i.preheader
  %.0.i3960.i.i.i.i.unr = phi i64 [ %.sroa.speculated.i.i.i.i, %.lr.ph61.i.i.i.i.preheader ], [ %i.aka, %.lr.ph61.i.i.i.i.prol ]
  %i.akb = icmp eq i64 %.sroa.speculated.i.i.i, %.neg
  br i1 %i.akb, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i

.lr.ph61.i.i.i.i:                                 ; preds = %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i
  %.0.i3960.i.i.i.i = phi i64 [ %i.akv, %.lr.ph61.i.i.i.i ], [ %.0.i3960.i.i.i.i.unr, %.lr.ph61.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.akc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !104
  %i.ake = zext i16 %i.akd to i32
  %i.akf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ake, i1 false)
  %i.akg = sub nuw nsw i32 32, %i.akf
  %i.akh = zext nneg i32 %i.akg to i64
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.akh ; 2 uses
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !68
  %i.akk = add i64 %i.akj, 1
  store i64 %i.akk, ptr %i.aki, align 8, !tbaa !68
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 2
  %i.akn = load i16, ptr %i.akm, align 2, !tbaa !104
  %i.ako = zext i16 %i.akn to i32
  %i.akp = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ako, i1 false)
  %i.akq = sub nuw nsw i32 32, %i.akp
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.akr ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !68
  %i.aku = add i64 %i.akt, 1
  store i64 %i.aku, ptr %i.aks, align 8, !tbaa !68
  %i.akv = add nuw nsw i64 %.0.i3960.i.i.i.i, 2   ; 2 uses
  %exitcond63.not.i.i.i.i.1 = icmp eq i64 %i.akv, %.sroa.speculated.i.i.i
  br i1 %exitcond63.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !1077

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  %i.akw = load ptr, ptr %i.agr, align 8, !tbaa !1098 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.0.i59.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.alq, %bb.r ] ; 3 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.aky = load i16, ptr %i.akx, align 4, !tbaa !104
  %i.akz = zext i16 %i.aky to i32
  %i.ala = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.akz, i1 false)
  %i.alb = sub nuw nsw i32 32, %i.ala
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.alc ; 2 uses
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !68
  %i.alf = add i64 %i.ale, 1
  store i64 %i.alf, ptr %i.ald, align 8, !tbaa !68
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 2
  %i.ali = load i16, ptr %i.alh, align 2, !tbaa !104
  %i.alj = zext i16 %i.ali to i32
  %i.alk = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alj, i1 false)
  %i.all = sub nuw nsw i32 32, %i.alk
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.alm ; 2 uses
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !68
  %i.alp = add i64 %i.alo, 1
  store i64 %i.alp, ptr %i.aln, align 8, !tbaa !68
  %i.alq = add nuw nsw i64 %.0.i59.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.alq, %.sroa.speculated.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %bb.r, !llvm.loop !1077

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i: ; preds = %bb.r, %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i, %bb.q
  %.sink.i.i54.i = phi i64 [ 0, %.lr.ph61.i.i.i.i.prol.loopexit ], [ %i.aiz, %bb.q ], [ 0, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i ], [ 0, %.lr.ph61.i.i.i.i ], [ %.sink.i.i55.i, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.alr = add nuw nsw i64 %.015.i113.i.i, 8      ; 2 uses
  %i.als = icmp samesign ult i64 %i.alr, %i.ab
  br i1 %i.als, label %bb.o, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, !llvm.loop !1078

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i: ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i
  store i64 %.sink.i.i54.i, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.alt = add nuw nsw i64 %.075127.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.alt, %i.as
  br i1 %exitcond145.not.i.i, label %.loopexit.i.i, label %.lr.ph.i112.i.i, !llvm.loop !1079

.loopexit.i.i:                                    ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.alu = add i64 %.078129.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %.078129.i.i, %i.ad
  br i1 %exitcond146.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !1080

bb.s:                                             ; preds = %.preheader.i.i
  %i.alv = ptrtoint ptr %.sroa.0.0 to i64
  %i.alw = sub i64 %.sroa.8.0, %i.alv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.alw) #39
  br label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.s, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03953.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ami, %.lr.ph.i ] ; 6 uses
  %niter553 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter553.next.1, %.lr.ph.i ]
  %i.alx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03953.i ; 3 uses
  %i.aly = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03953.i
  store ptr %i.alx, ptr %i.aly, align 16, !tbaa !1096
  %i.alz = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.03953.i
  store ptr %i.alz, ptr %i.alx, align 16, !tbaa !1098
  %i.ama = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.03953.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store ptr %i.ama, ptr %i.amb, align 8, !tbaa !1099
  %i.amc = or disjoint i64 %.03953.i, 1           ; 4 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.amc ; 3 uses
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.amc
  store ptr %i.amd, ptr %i.ame, align 16, !tbaa !1096
  %i.amf = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.amc
  store ptr %i.amf, ptr %i.amd, align 16, !tbaa !1098
  %i.amg = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.amc
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store ptr %i.amg, ptr %i.amh, align 8, !tbaa !1099
  %i.ami = add nuw nsw i64 %.03953.i, 2           ; 2 uses
  %niter553.next.1 = add nuw i64 %niter553, 2     ; 2 uses
  %niter553.ncmp.1 = icmp eq i64 %niter553.next.1, %unroll_iter552
  br i1 %niter553.ncmp.1, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1081

_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit: ; preds = %._crit_edge58.i, %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i
  %i.amj = load ptr, ptr %i.n, align 8, !tbaa !1085, !nonnull !121, !align !176 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 40
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !107
  %i.amm = load ptr, ptr %i.amj, align 8, !tbaa !106
  call void %i.aml(ptr noundef %i.amm, ptr noundef %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_13Exactly14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [8 x i16], align 64               ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 16 uses
  %i.c = alloca [4 x ptr], align 16               ; 12 uses
  %4 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector.148"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor.149"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1194, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1195, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 5 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1196, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 16 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.w = trunc i64 %3 to i32
  %i.x = shl i64 %i.v, 32
  %i.y = ashr exact i64 %i.x, 32                  ; 14 uses
  %i.z = sub nsw i64 %.sroa.speculated33, %i.v
  %i.aa = trunc i64 %i.z to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.w) ; 2 uses
  %i.ab = and i64 %.sroa.speculated28, 504        ; 23 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !68  ; 21 uses
  %i.ad = sext i32 %.sroa.speculated to i64       ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1197, !nonnull !121, !align !176 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1198, !nonnull !121, !align !176 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1199, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = zext nneg i8 %i.ak to i64               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1200, !nonnull !121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1201, !nonnull !121, !align !176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 22 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1202, !nonnull !121
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95, !range !108, !noundef !121
  %i.aw = trunc nuw i8 %i.av to i1                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1203, !nonnull !121, !align !176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %.not58.i = icmp eq i64 %i.as, 0                ; 4 uses
  br i1 %i.ap, label %.preheader51.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.bb, align 8, !tbaa !199
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !199
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !199
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.al ; 3 uses
  %i.bf = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.bg = icmp eq i64 %i.as, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph56.i.new

.lr.ph56.i.new:                                   ; preds = %.lr.ph56.i
  %unroll_iter = and i64 %i.as, -2
  br label %bb.b

._crit_edge57.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge57.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge57.i.loopexit.unr-lcssa, %.lr.ph56.i
  %.03855.i.epil.init = phi i64 [ 0, %.lr.ph56.i ], [ %i.bs, %._crit_edge57.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod548 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod548)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.03855.i.epil.init ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.03855.i.epil.init
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bh, align 16, !tbaa !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !203
  br label %._crit_edge57.i

._crit_edge57.i:                                  ; preds = %.epil.preheader, %._crit_edge57.i.loopexit.unr-lcssa, %.preheader.i
  %i.bk = add nsw i64 %i.ad, 1
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i64 noundef %i.bk, i64 noundef %i.ac, ptr noundef readonly %i.az, i64 noundef %i.as, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph56.i.new
  %.03855.i = phi i64 [ 0, %.lr.ph56.i.new ], [ %i.bs, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph56.i.new ], [ %niter.next.1, %bb.b ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.03855.i ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.03855.i
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bl, align 16, !tbaa !202
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !203
  %i.bo = or disjoint i64 %.03855.i, 1            ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bo
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !200
  store ptr %i.be, ptr %i.bp, align 16, !tbaa !202
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !203
  %i.bs = add nuw nsw i64 %.03855.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge57.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1136

.preheader51.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !1206
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !1206
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bv, align 8, !tbaa !1206
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bw, align 8, !tbaa !1206
  br i1 %.not58.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader51.i
  %xtraiter549.a = and i64 %i.as, 1
  %i.bx = icmp eq i64 %i.as, 1
  br i1 %i.bx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter552 = and i64 %i.as, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod550.not.a = icmp eq i64 %xtraiter549.a, 0
  br i1 %lcmp.mod550.not.a, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.052.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ami, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod551 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod551)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.052.i.epil.init ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.052.i.epil.init
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !1207
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.052.i.epil.init
  store ptr %i.ca, ptr %i.by, align 16, !tbaa !1209
  %i.cb = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.052.i.epil.init
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1210
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cd = mul nuw nsw i64 %i.as, 1408             ; 2 uses
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #40 ; 3 uses
  %i.cf = getelementptr inbounds nuw [1408 x i8], ptr %i.ce, i64 %i.as
  %i.cg = add nsw i64 %i.cd, -1408                ; 2 uses
  %i.ch = urem i64 %i.cg, 1408
  %i.ci = sub nuw nsw i64 %i.cg, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, 1408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ce, i8 0, i64 %i.cj, i1 false)
  %i.ck = ptrtoint ptr %i.cf to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader51.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %.sroa.0.0 = phi ptr [ %i.ce, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader51.i ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %i.ck, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader51.i ]
  %.not133.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not133.i.i, label %.preheader.i.i, label %.lr.ph130.i.i

.lr.ph130.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.i97.i.i = icmp eq i64 %i.ab, 0            ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = add nsw i64 %i.y, %i.ad
  %i.cp = mul i64 %i.ac, %i.co
  %i.cq = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 6
  %i.cs = getelementptr i8, ptr %i.s, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.cr ; 4 uses
  %i.ct = mul i64 %i.ac, %i.y
  %scevgep114 = getelementptr i8, ptr %i.s, i64 %i.ct ; 4 uses
  %i.cu = shl nuw nsw i64 %i.cq, 4                ; 4 uses
  %i.cv = add nsw i64 %i.y, %i.ad
  %i.cw = mul i64 %i.ac, %i.cv
  %i.cx = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 6
  %i.cz = getelementptr i8, ptr %i.s, i64 %i.cw
  %scevgep196 = getelementptr i8, ptr %i.cz, i64 %i.cy ; 4 uses
  %i.da = mul i64 %i.ac, %i.y                     ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.s, i64 %i.da ; 4 uses
  %i.db = shl nuw nsw i64 %i.cx, 4                ; 4 uses
  %i.dc = sub i64 0, %i.ac                        ; 2 uses
  %i.dd = add i64 %i.da, %i.t                     ; 2 uses
  %i.de = add nsw i64 %i.y, %i.ad
  %i.df = mul i64 %i.ac, %i.de
  %i.dg = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 5
  %i.di = getelementptr i8, ptr %i.s, i64 %i.df
  %scevgep310 = getelementptr i8, ptr %i.di, i64 %i.dh ; 2 uses
  %i.dj = mul i64 %i.ac, %i.y
  %scevgep311 = getelementptr i8, ptr %i.s, i64 %i.dj ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dg, 4                ; 2 uses
  %i.dl = add nsw i64 %i.y, %i.ad
  %i.dm = mul i64 %i.ac, %i.dl
  %i.dn = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 5
  %i.dp = getelementptr i8, ptr %i.s, i64 %i.dm
  %scevgep350 = getelementptr i8, ptr %i.dp, i64 %i.do ; 2 uses
  %i.dq = mul i64 %i.ac, %i.y
  %scevgep351 = getelementptr i8, ptr %i.s, i64 %i.dq ; 2 uses
  %i.dr = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  %i.ds = add nsw i64 %i.y, %i.ad
  %i.dt = mul i64 %i.ac, %i.ds
  %i.du = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.dv = mul nuw nsw i64 %i.du, 48
  %i.dw = getelementptr i8, ptr %i.s, i64 %i.dt
  %scevgep405 = getelementptr i8, ptr %i.dw, i64 %i.dv ; 3 uses
  %i.dx = mul i64 %i.ac, %i.y
  %scevgep406 = getelementptr i8, ptr %i.s, i64 %i.dx ; 3 uses
  %i.dy = shl nuw nsw i64 %i.du, 4                ; 3 uses
  %i.dz = add nsw i64 %i.y, %i.ad
  %i.ea = mul i64 %i.ac, %i.dz
  %i.eb = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.ec = mul nuw nsw i64 %i.eb, 48
  %i.ed = getelementptr i8, ptr %i.s, i64 %i.ea
  %scevgep469 = getelementptr i8, ptr %i.ed, i64 %i.ec ; 3 uses
  %i.ee = mul i64 %i.ac, %i.y
  %scevgep470 = getelementptr i8, ptr %i.s, i64 %i.ee ; 3 uses
  %i.ef = shl nuw nsw i64 %i.eb, 4                ; 3 uses
  %min.iters.check505 = icmp ult i64 %i.as, 4
  %n.vec507 = and i64 %i.as, -4                   ; 3 uses
  %cmp.n525 = icmp eq i64 %i.as, %n.vec507
  %stride.check484 = icmp slt i64 %i.ac, 0
  %stride.check420 = icmp slt i64 %i.ac, 0
  %min.iters.check353 = icmp samesign ult i64 %i.ab, 12
  %stride.check361 = icmp slt i64 %i.ac, 0
  %stride.check321 = icmp slt i64 %i.ac, 0
  %min.iters.check271 = icmp ult i64 %i.m, 16
  %i.eg = and i64 %.sroa.speculated28, 8
  %n.vec273 = and i64 %.sroa.speculated28, 496    ; 4 uses
  %cmp.n280 = icmp eq i64 %i.ab, %n.vec273
  %min.epilog.iters.check284.not.not = icmp eq i64 %i.eg, 0
  %min.iters.check253 = icmp ult i64 %i.m, 16
  %i.eh = and i64 %.sroa.speculated28, 8
  %n.vec = and i64 %.sroa.speculated28, 496       ; 4 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.eh, 0
  %min.iters.check199 = icmp ult i64 %i.m, 16
  %stride.check215 = icmp slt i64 %i.ac, 0
  %min.iters.check = icmp ult i64 %i.m, 16
  %stride.check = icmp slt i64 %i.ac, 0
  %xtraiter555 = and i64 %i.as, 1
  %i.ei = icmp eq i64 %i.as, 1
  %unroll_iter558 = and i64 %i.as, -2
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  %lcmp.mod557 = trunc i64 %i.as to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i114.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i114.i.i, label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.s

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph130.i.i
  %.078129.i.i = phi i64 [ 0, %.lr.ph130.i.i ], [ %i.alu, %.loopexit.i.i ] ; 7 uses
  %i.ej = add i64 %.078129.i.i, %i.y
  %i.ek = mul i64 %i.ej, %i.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ek ; 54 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not58.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.em = and i64 %.078129.i.i, 1                 ; 4 uses
  %i.en = xor i64 %i.em, 1                        ; 3 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.body508

vector.body508:                                   ; preds = %.lr.ph.i.i, %vector.body508
  %index509 = phi i64 [ %index.next523, %vector.body508 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body508 ], [ <i64 0, i64 1>, %.lr.ph.i.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, <2 x i64> %vec.ind ; 2 uses
  %wide.gep510.a = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, <2 x i64> %step.add ; 2 uses
  %wide.gep511.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.em
  %wide.gep512.a = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep510.a, i64 %i.em
  %wide.gep513.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep511.a, i64 64 ; 2 uses
  %wide.gep514.a = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep512.a, i64 64 ; 2 uses
  %i.eo = ptrtoint <2 x ptr> %wide.gep513.a to <2 x i64>
  %i.ep = ptrtoint <2 x ptr> %wide.gep514.a to <2 x i64>
  %i.eq = lshr <2 x i64> %i.eo, splat (i64 1)
  %i.er = lshr <2 x i64> %i.ep, splat (i64 1)
  %i.es = and <2 x i64> %i.eq, splat (i64 31)
  %i.et = and <2 x i64> %i.er, splat (i64 31)
  %wide.gep515 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep513.a, <2 x i64> %i.es
  %wide.gep516 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep514.a, <2 x i64> %i.et
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index509 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x ptr> %wide.gep515, ptr %i.eu, align 16, !tbaa !92
  store <2 x ptr> %wide.gep516, ptr %i.ev, align 16, !tbaa !92
  %wide.gep517 = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep, i64 %i.en
  %wide.gep518 = getelementptr inbounds nuw [704 x i8], <2 x ptr> %wide.gep510.a, i64 %i.en
  %wide.gep519 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep517, i64 64 ; 2 uses
  %wide.gep520 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep518, i64 64 ; 2 uses
  %i.ew = ptrtoint <2 x ptr> %wide.gep519 to <2 x i64>
  %i.ex = ptrtoint <2 x ptr> %wide.gep520 to <2 x i64>
  %i.ey = lshr <2 x i64> %i.ew, splat (i64 1)
  %i.ez = lshr <2 x i64> %i.ex, splat (i64 1)
  %i.fa = and <2 x i64> %i.ey, splat (i64 31)
  %i.fb = and <2 x i64> %i.ez, splat (i64 31)
  %wide.gep521 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep519, <2 x i64> %i.fa
  %wide.gep522 = getelementptr inbounds nuw [2 x i8], <2 x ptr> %wide.gep520, <2 x i64> %i.fb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index509 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x ptr> %wide.gep521, ptr %i.fc, align 16, !tbaa !92
  store <2 x ptr> %wide.gep522, ptr %i.fd, align 16, !tbaa !92
  %index.next523 = add nuw i64 %index509, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fe = icmp eq i64 %index.next523, %n.vec507
  br i1 %i.fe, label %middle.block524, label %vector.body508, !llvm.loop !1137

middle.block524:                                  ; preds = %vector.body508
  br i1 %cmp.n525, label %._crit_edge.i.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %.lr.ph.i.i, %middle.block524
  %.077123.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec507, %middle.block524 ]
  br label %scalar.ph504

._crit_edge.i.i:                                  ; preds = %scalar.ph504, %middle.block524
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !92 ; 38 uses
  %.pre.i249 = ptrtoaddr ptr %.pre.i to i64       ; 2 uses
  switch i64 %i.as, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.g
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre67.i = load ptr, ptr %i.cl, align 8, !tbaa !92
  %.pre68.i = load ptr, ptr %i.cm, align 16, !tbaa !92
  %.pre69.i = load ptr, ptr %i.cn, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %.077123.i.i = phi i64 [ %i.fu, %scalar.ph504 ], [ %.077123.i.i.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [1408 x i8], ptr %.sroa.0.0, i64 %.077123.i.i ; 2 uses
  %i.fg = getelementptr inbounds nuw [704 x i8], ptr %i.ff, i64 %i.em
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = lshr i64 %i.fi, 1
  %i.fk = and i64 %i.fj, 31
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077123.i.i
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !92
  %i.fn = getelementptr inbounds nuw [704 x i8], ptr %i.ff, i64 %i.en
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = and i64 %i.fq, 31
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077123.i.i
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !92
  %i.fu = add nuw nsw i64 %.077123.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fu, %i.as
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph504, !llvm.loop !1138

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.aw, label %iter.check, label %iter.check281

iter.check:                                       ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck252

vector.memcheck252:                               ; preds = %iter.check
  %i.fv = mul i64 %.078129.i.i, %i.dc
  %i.fw = sub i64 %i.fv, %i.dd
  %i.fx = add i64 %i.fw, %.pre.i249
  %i.fy = add i64 %i.fx, -1
  %diff.check = icmp ult i64 %i.fy, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck252
  br i1 %min.iters.check253, label %vec.epilog.vector.body.preheader, label %vector.body255

vector.body255:                                   ; preds = %vector.main.loop.iter.check, %vector.body255
  %index256 = phi i64 [ %index.next258, %vector.body255 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fz = shl nuw nsw i64 %index256, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load = load <8 x i16>, ptr %i.ga, align 1
  %wide.load257 = load <8 x i16>, ptr %i.gb, align 1
  %i.gc = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.gd = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load257)
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index256 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <8 x i16> %i.gc, ptr %i.ge, align 2, !tbaa !104
  store <8 x i16> %i.gd, ptr %i.gf, align 2, !tbaa !104
  %index.next258 = add nuw i64 %index256, 16      ; 2 uses
  %i.gg = icmp eq i64 %index.next258, %n.vec
  br i1 %i.gg, label %middle.block259, label %vector.body255, !llvm.loop !1139

middle.block259:                                  ; preds = %vector.body255
  br i1 %cmp.n, label %.lr.ph125.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block259
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.i.preheader, label %vec.epilog.vector.body.preheader, !prof !204

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index260.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck252, %vec.epilog.iter.check
  %.09.i.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck252 ]
  br label %.lr.ph.i.i.i

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index260 = phi i64 [ %index.next262, %vec.epilog.vector.body ], [ %index260.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.gh = shl nuw nsw i64 %index260, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gh
  %wide.load261 = load <8 x i16>, ptr %i.gi, align 1
  %i.gj = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load261)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index260
  store <8 x i16> %i.gj, ptr %i.gk, align 2, !tbaa !104
  %index.next262 = add nuw i64 %index260, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next262, %i.ab
  br i1 %i.gl, label %.lr.ph125.i.i, label %vec.epilog.vector.body, !llvm.loop !1140

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.09.i.i.i = phi i64 [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.hf, %.lr.ph.i.i.i ] ; 6 uses
  %i.gm = shl nuw nsw i64 %.09.i.i.i, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gm
  %.val.i.i.i = load i16, ptr %i.gn, align 1
  %i.go = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i)
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.09.i.i.i
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !104
  %i.gq = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gr
  %.val.i.i.i.1 = load i16, ptr %i.gs, align 1
  %i.gt = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.1)
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.gq
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !104
  %i.gv = or disjoint i64 %.09.i.i.i, 2           ; 2 uses
  %i.gw = shl nuw nsw i64 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gw
  %.val.i.i.i.2 = load i16, ptr %i.gx, align 1
  %i.gy = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.2)
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.gv
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !104
  %i.ha = or disjoint i64 %.09.i.i.i, 3           ; 2 uses
  %i.hb = shl nuw nsw i64 %i.ha, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hb
  %.val.i.i.i.3 = load i16, ptr %i.hc, align 1
  %i.hd = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.3)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ha
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !104
  %i.hf = add nuw nsw i64 %.09.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.hf, %i.ab
  br i1 %exitcond.not.i.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i.i.i, !llvm.loop !1141

iter.check281:                                    ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck268

vector.memcheck268:                               ; preds = %iter.check281
  %i.hg = mul i64 %.078129.i.i, %i.dc
  %i.hh = sub i64 %i.hg, %i.dd
  %i.hi = add i64 %i.hh, %.pre.i249
  %i.hj = add i64 %i.hi, -1
  %diff.check269 = icmp ult i64 %i.hj, 31
  br i1 %diff.check269, label %.lr.ph.i82.i.i.preheader, label %vector.main.loop.iter.check270

vector.main.loop.iter.check270:                   ; preds = %vector.memcheck268
  br i1 %min.iters.check271, label %vec.epilog.vector.body287.preheader, label %vector.body274

vector.body274:                                   ; preds = %vector.main.loop.iter.check270, %vector.body274
  %index275 = phi i64 [ %index.next278, %vector.body274 ], [ 0, %vector.main.loop.iter.check270 ] ; 3 uses
  %i.hk = shl nuw nsw i64 %index275, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load276 = load <8 x i16>, ptr %i.hl, align 1
  %wide.load277 = load <8 x i16>, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index275 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <8 x i16> %wide.load276, ptr %i.hn, align 2, !tbaa !104
  store <8 x i16> %wide.load277, ptr %i.ho, align 2, !tbaa !104
  %index.next278 = add nuw i64 %index275, 16      ; 2 uses
  %i.hp = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.hp, label %middle.block279, label %vector.body274, !llvm.loop !1142

middle.block279:                                  ; preds = %vector.body274
  br i1 %cmp.n280, label %.lr.ph125.i.i, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block279
  br i1 %min.epilog.iters.check284.not.not, label %.lr.ph.i82.i.i.preheader, label %vec.epilog.vector.body287.preheader, !prof !204

vec.epilog.vector.body287.preheader:              ; preds = %vector.main.loop.iter.check270, %vec.epilog.iter.check282
  %index288.ph = phi i64 [ 0, %vector.main.loop.iter.check270 ], [ %n.vec273, %vec.epilog.iter.check282 ]
  br label %vec.epilog.vector.body287

.lr.ph.i82.i.i.preheader:                         ; preds = %vector.memcheck268, %vec.epilog.iter.check282
  %.08.i.i.i.ph = phi i64 [ %n.vec273, %vec.epilog.iter.check282 ], [ 0, %vector.memcheck268 ]
  br label %.lr.ph.i82.i.i

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287.preheader, %vec.epilog.vector.body287
  %index288 = phi i64 [ %index.next290, %vec.epilog.vector.body287 ], [ %index288.ph, %vec.epilog.vector.body287.preheader ] ; 3 uses
  %i.hq = shl nuw nsw i64 %index288, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hq
  %wide.load289 = load <8 x i16>, ptr %i.hr, align 1
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index288
  store <8 x i16> %wide.load289, ptr %i.hs, align 2, !tbaa !104
  %index.next290 = add nuw i64 %index288, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next290, %i.ab
  br i1 %i.ht, label %.lr.ph125.i.i, label %vec.epilog.vector.body287, !llvm.loop !1143

.lr.ph.i82.i.i:                                   ; preds = %.lr.ph.i82.i.i, %.lr.ph.i82.i.i.preheader
  %.08.i.i.i = phi i64 [ %.08.i.i.i.ph, %.lr.ph.i82.i.i.preheader ], [ %i.ij, %.lr.ph.i82.i.i ] ; 6 uses
  %i.hu = shl nuw nsw i64 %.08.i.i.i, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hu
  %.val.i83.i.i = load i16, ptr %i.hv, align 1
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.08.i.i.i
  store i16 %.val.i83.i.i, ptr %i.hw, align 2, !tbaa !104
  %i.hx = or disjoint i64 %.08.i.i.i, 1           ; 2 uses
  %i.hy = shl nuw nsw i64 %i.hx, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.hy
  %.val.i83.i.i.1 = load i16, ptr %i.hz, align 1
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.hx
  store i16 %.val.i83.i.i.1, ptr %i.ia, align 2, !tbaa !104
  %i.ib = or disjoint i64 %.08.i.i.i, 2           ; 2 uses
  %i.ic = shl nuw nsw i64 %i.ib, 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ic
  %.val.i83.i.i.2 = load i16, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ib
  store i16 %.val.i83.i.i.2, ptr %i.ie, align 2, !tbaa !104
  %i.if = or disjoint i64 %.08.i.i.i, 3           ; 2 uses
  %i.ig = shl nuw nsw i64 %i.if, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ig
  %.val.i83.i.i.3 = load i16, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.if
  store i16 %.val.i83.i.i.3, ptr %i.ii, align 2, !tbaa !104
  %i.ij = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i84.i.i.3 = icmp eq i64 %i.ij, %i.ab
  br i1 %exitcond.not.i84.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i82.i.i, !llvm.loop !1144

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ik = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 12 uses
  br i1 %i.aw, label %.lr.ph.i86.i.i.preheader, label %bb.f

.lr.ph.i86.i.i.preheader:                         ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i86.i.i.preheader
  %i.il = getelementptr i8, ptr %.pre.i, i64 %i.dk ; 2 uses
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.dk  ; 2 uses
  %bound0315.a = icmp ult ptr %.pre.i, %i.im
  %bound1316.a = icmp ult ptr %i.ik, %i.il
  %found.conflict317.a = and i1 %bound0315.a, %bound1316.a
  %bound0318 = icmp ult ptr %.pre.i, %scevgep310
  %bound1319 = icmp ult ptr %scevgep311, %i.il
  %found.conflict320 = and i1 %bound0318, %bound1319
  %i.in = or i1 %found.conflict320, %stride.check321
  %conflict.rdx322 = or i1 %found.conflict317.a, %i.in
  %bound0323 = icmp ult ptr %i.ik, %scevgep310
  %bound1324 = icmp ult ptr %scevgep311, %i.im
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  br i1 %conflict.rdx326, label %.lr.ph.i86.i.i, label %vector.body328

vector.body328:                                   ; preds = %vector.memcheck314, %vector.body328
  %index329 = phi i64 [ %index.next331, %vector.body328 ], [ 0, %vector.memcheck314 ] ; 4 uses
  %i.io = shl nuw nsw i64 %index329, 2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.io
  %wide.vec = load <8 x i16>, ptr %i.ip, align 1, !alias.scope !1211 ; 2 uses
  %i.iq = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec)
  %i.ir = shufflevector <8 x i16> %i.iq, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.is = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec)
  %i.it = shufflevector <8 x i16> %i.is, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index329
  store <4 x i16> %i.ir, ptr %i.iu, align 2, !tbaa !104, !alias.scope !1212, !noalias !1213
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %index329
  store <4 x i16> %i.it, ptr %i.iv, align 2, !tbaa !104, !alias.scope !1214, !noalias !1211
  %index.next331 = add nuw i64 %index329, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next331, %i.ab
  br i1 %i.iw, label %.lr.ph125.i.i, label %vector.body328, !llvm.loop !1149

.lr.ph.i86.i.i:                                   ; preds = %vector.memcheck314, %.lr.ph.i86.i.i
  %.017.i.i.i = phi i64 [ %i.jm, %.lr.ph.i86.i.i ], [ 0, %vector.memcheck314 ] ; 5 uses
  %i.ix = shl nuw nsw i64 %.017.i.i.i, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ix ; 2 uses
  %.val15.i.i.i = load i16, ptr %i.iy, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  %.val.i87.i.i = load i16, ptr %i.iz, align 1
  %i.ja = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i)
  %i.jb = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i)
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.017.i.i.i
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !104
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %.017.i.i.i
  store i16 %i.jb, ptr %i.jd, align 2, !tbaa !104
  %i.je = or disjoint i64 %.017.i.i.i, 1          ; 3 uses
  %i.jf = shl nuw nsw i64 %i.je, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jf ; 2 uses
  %.val15.i.i.i.1 = load i16, ptr %i.jg, align 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %.val.i87.i.i.1 = load i16, ptr %i.jh, align 1
  %i.ji = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.1)
  %i.jj = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i.1)
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.je
  store i16 %i.ji, ptr %i.jk, align 2, !tbaa !104
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.je
  store i16 %i.jj, ptr %i.jl, align 2, !tbaa !104
  %i.jm = add nuw nsw i64 %.017.i.i.i, 2          ; 2 uses
  %exitcond.not.i88.i.i.1 = icmp eq i64 %i.jm, %i.ab
  br i1 %exitcond.not.i88.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i86.i.i, !llvm.loop !1150

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i.preheader

.lr.ph.i90.i.i.preheader:                         ; preds = %bb.f
  br i1 %min.iters.check353, label %.lr.ph.i90.i.i.preheader539, label %vector.memcheck354

.lr.ph.i90.i.i.preheader539:                      ; preds = %vector.memcheck354, %.lr.ph.i90.i.i.preheader
  br label %.lr.ph.i90.i.i

vector.memcheck354:                               ; preds = %.lr.ph.i90.i.i.preheader
  %i.jn = getelementptr i8, ptr %.pre.i, i64 %i.dr ; 2 uses
  %i.jo = getelementptr i8, ptr %i.ik, i64 %i.dr  ; 2 uses
  %bound0355 = icmp ult ptr %.pre.i, %i.jo
  %bound1356 = icmp ult ptr %i.ik, %i.jn
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult ptr %.pre.i, %scevgep350
  %bound1359 = icmp ult ptr %scevgep351, %i.jn
  %found.conflict360 = and i1 %bound0358, %bound1359
  %i.jp = or i1 %found.conflict360, %stride.check361
  %conflict.rdx362.a = or i1 %found.conflict357, %i.jp
  %bound0363 = icmp ult ptr %i.ik, %scevgep350
  %bound1364 = icmp ult ptr %scevgep351, %i.jo
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362.a, %found.conflict365
  br i1 %conflict.rdx366, label %.lr.ph.i90.i.i.preheader539, label %vector.body368

vector.body368:                                   ; preds = %vector.memcheck354, %vector.body368
  %index369 = phi i64 [ %index.next373, %vector.body368 ], [ 0, %vector.memcheck354 ] ; 4 uses
  %i.jq = shl nuw nsw i64 %index369, 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jq
  %wide.vec370 = load <8 x i16>, ptr %i.jr, align 1, !alias.scope !1215 ; 2 uses
  %strided.vec371 = shufflevector <8 x i16> %wide.vec370, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec372 = shufflevector <8 x i16> %wide.vec370, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index369
  store <4 x i16> %strided.vec371, ptr %i.js, align 2, !tbaa !104, !alias.scope !1216, !noalias !1217
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %index369
  store <4 x i16> %strided.vec372, ptr %i.jt, align 2, !tbaa !104, !alias.scope !1218, !noalias !1215
  %index.next373 = add nuw i64 %index369, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next373, %i.ab
  br i1 %i.ju, label %.lr.ph125.i.i, label %vector.body368, !llvm.loop !1155

.lr.ph.i90.i.i:                                   ; preds = %.lr.ph.i90.i.i, %.lr.ph.i90.i.i.preheader539
  %.015.i.i.i = phi i64 [ 0, %.lr.ph.i90.i.i.preheader539 ], [ %i.kg, %.lr.ph.i90.i.i ] ; 5 uses
  %i.jv = shl nuw nsw i64 %.015.i.i.i, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.jv ; 2 uses
  %.val13.i.i.i = load i16, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %.val.i91.i.i = load i16, ptr %i.jx, align 1
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.015.i.i.i
  store i16 %.val13.i.i.i, ptr %i.jy, align 2, !tbaa !104
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %.015.i.i.i
  store i16 %.val.i91.i.i, ptr %i.jz, align 2, !tbaa !104
  %i.ka = or disjoint i64 %.015.i.i.i, 1          ; 3 uses
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kb ; 2 uses
  %.val13.i.i.i.1 = load i16, ptr %i.kc, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %.val.i91.i.i.1 = load i16, ptr %i.kd, align 1
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ka
  store i16 %.val13.i.i.i.1, ptr %i.ke, align 2, !tbaa !104
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ka
  store i16 %.val.i91.i.i.1, ptr %i.kf, align 2, !tbaa !104
  %i.kg = add nuw nsw i64 %.015.i.i.i, 2          ; 2 uses
  %exitcond.not.i92.i.i.1 = icmp eq i64 %i.kg, %i.ab
  br i1 %exitcond.not.i92.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i, !llvm.loop !1156

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.kh = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 12 uses
  %i.ki = load ptr, ptr %i.cm, align 16, !tbaa !92 ; 12 uses
  br i1 %i.aw, label %.lr.ph.i94.i.i.preheader, label %.lr.ph.i98.i.i.preheader

.lr.ph.i94.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.i94.i.i.preheader
  %i.kj = getelementptr i8, ptr %i.kh, i64 %i.dy  ; 3 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 %i.dy  ; 3 uses
  %i.kl = getelementptr i8, ptr %.pre.i, i64 %i.dy ; 3 uses
  %bound0410 = icmp ult ptr %i.kh, %i.kk
  %bound1411 = icmp ult ptr %i.ki, %i.kj
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0413 = icmp ult ptr %i.kh, %i.kl
  %bound1414 = icmp ult ptr %.pre.i, %i.kj
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416.a = or i1 %found.conflict412, %found.conflict415
  %bound0417.a = icmp ult ptr %i.kh, %scevgep405
  %bound1418.a = icmp ult ptr %scevgep406, %i.kj
  %found.conflict419.a = and i1 %bound0417.a, %bound1418.a
  %i.km = or i1 %found.conflict419.a, %stride.check420
  %conflict.rdx421 = or i1 %conflict.rdx416.a, %i.km
  %bound0422 = icmp ult ptr %i.ki, %i.kl
  %bound1423 = icmp ult ptr %.pre.i, %i.kk
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.ki, %scevgep405
  %bound1427 = icmp ult ptr %scevgep406, %i.kk
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %.pre.i, %scevgep405
  %bound1431 = icmp ult ptr %scevgep406, %i.kl
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  br i1 %conflict.rdx433, label %.lr.ph.i94.i.i, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck409, %vector.body435
  %index436 = phi i64 [ %index.next437, %vector.body435 ], [ 0, %vector.memcheck409 ] ; 12 uses
  %i.kn = mul nuw nsw i64 %index436, 6
  %i.ko = mul nuw i64 %index436, 6
  %i.kp = mul nuw i64 %index436, 6
  %i.kq = mul nuw i64 %index436, 6
  %i.kr = mul nuw i64 %index436, 6
  %i.ks = mul nuw i64 %index436, 6
  %i.kt = mul nuw i64 %index436, 6
  %i.ku = mul nuw i64 %index436, 6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kn ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ko ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  %i.ky = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kp ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kq ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 18
  %i.lc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kr ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ks ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 30
  %i.lg = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.kt ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  %i.li = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ku ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 42
  %i.lk = load i16, ptr %i.kv, align 1, !alias.scope !1219
  %i.ll = load i16, ptr %i.kx, align 1, !alias.scope !1219
  %i.lm = load i16, ptr %i.kz, align 1, !alias.scope !1219
  %i.ln = load i16, ptr %i.lb, align 1, !alias.scope !1219
  %i.lo = load i16, ptr %i.ld, align 1, !alias.scope !1219
  %i.lp = load i16, ptr %i.lf, align 1, !alias.scope !1219
  %i.lq = load i16, ptr %i.lh, align 1, !alias.scope !1219
  %i.lr = load i16, ptr %i.lj, align 1, !alias.scope !1219
  %i.ls = insertelement <8 x i16> poison, i16 %i.lk, i64 0
  %i.lt = insertelement <8 x i16> %i.ls, i16 %i.ll, i64 1
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 2
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 3
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 4
  %i.lx = insertelement <8 x i16> %i.lw, i16 %i.lp, i64 5
  %i.ly = insertelement <8 x i16> %i.lx, i16 %i.lq, i64 6
  %i.lz = insertelement <8 x i16> %i.ly, i16 %i.lr, i64 7
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  %i.md = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %i.me = getelementptr inbounds nuw i8, ptr %i.lc, i64 26
  %i.mf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 38
  %i.mh = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  %i.mi = load i16, ptr %i.ma, align 1, !alias.scope !1219
  %i.mj = load i16, ptr %i.mb, align 1, !alias.scope !1219
  %i.mk = load i16, ptr %i.mc, align 1, !alias.scope !1219
  %i.ml = load i16, ptr %i.md, align 1, !alias.scope !1219
  %i.mm = load i16, ptr %i.me, align 1, !alias.scope !1219
  %i.mn = load i16, ptr %i.mf, align 1, !alias.scope !1219
  %i.mo = load i16, ptr %i.mg, align 1, !alias.scope !1219
  %i.mp = load i16, ptr %i.mh, align 1, !alias.scope !1219
  %i.mq = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 1
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 2
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 3
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 4
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 5
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 6
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 7
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kw, i64 10
  %i.na = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.la, i64 22
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  %i.nd = getelementptr inbounds nuw i8, ptr %i.le, i64 34
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.nf = getelementptr inbounds nuw i8, ptr %i.li, i64 46
  %i.ng = load i16, ptr %i.my, align 1, !alias.scope !1219
  %i.nh = load i16, ptr %i.mz, align 1, !alias.scope !1219
  %i.ni = load i16, ptr %i.na, align 1, !alias.scope !1219
  %i.nj = load i16, ptr %i.nb, align 1, !alias.scope !1219
  %i.nk = load i16, ptr %i.nc, align 1, !alias.scope !1219
  %i.nl = load i16, ptr %i.nd, align 1, !alias.scope !1219
  %i.nm = load i16, ptr %i.ne, align 1, !alias.scope !1219
  %i.nn = load i16, ptr %i.nf, align 1, !alias.scope !1219
  %i.no = insertelement <8 x i16> poison, i16 %i.ng, i64 0
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 1
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 2
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 3
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 4
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 5
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 6
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 7
  %i.nw = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lz)
  %i.nx = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mx)
  %i.ny = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.nv) ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index436
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %index436
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %index436
  %i.oc = sub <8 x i16> %i.nw, %i.ny              ; 2 uses
  store <8 x i16> %i.oc, ptr %i.oa, align 2, !tbaa !104, !alias.scope !1220, !noalias !1221
  %i.od = ashr <8 x i16> %i.oc, splat (i16 1)
  %i.oe = add <8 x i16> %i.od, %i.ny              ; 2 uses
  %i.of = sub <8 x i16> %i.nx, %i.oe              ; 2 uses
  store <8 x i16> %i.of, ptr %i.ob, align 2, !tbaa !104, !alias.scope !1222, !noalias !1223
  %i.og = ashr <8 x i16> %i.of, splat (i16 1)
  %i.oh = add <8 x i16> %i.og, %i.oe
  store <8 x i16> %i.oh, ptr %i.nz, align 2, !tbaa !104, !alias.scope !1224, !noalias !1219
  %index.next437 = add nuw i64 %index436, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next437, %i.ab
  br i1 %i.oi, label %.lr.ph125.i.i, label %vector.body435, !llvm.loop !1162

.lr.ph.i94.i.i:                                   ; preds = %vector.memcheck409, %.lr.ph.i94.i.i
  %.025.i.i.i = phi i64 [ %i.oz, %.lr.ph.i94.i.i ], [ 0, %vector.memcheck409 ] ; 5 uses
  %i.oj = mul nuw nsw i64 %.025.i.i.i, 6
  %i.ok = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.oj ; 3 uses
  %.val23.i.i.i = load i16, ptr %i.ok, align 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %.val21.i.i.i = load i16, ptr %i.ol, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %.val.i95.i.i = load i16, ptr %i.om, align 1
  %i.on = call noundef i16 @llvm.bswap.i16(i16 %.val23.i.i.i)
  %i.oo = call noundef i16 @llvm.bswap.i16(i16 %.val21.i.i.i)
  %i.op = call noundef i16 @llvm.bswap.i16(i16 %.val.i95.i.i) ; 2 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.025.i.i.i
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.025.i.i.i
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %.025.i.i.i
  %i.ot = sub i16 %i.on, %i.op                    ; 2 uses
  store i16 %i.ot, ptr %i.or, align 2, !tbaa !104
  %i.ou = ashr i16 %i.ot, 1
  %i.ov = add i16 %i.ou, %i.op                    ; 2 uses
  %i.ow = sub i16 %i.oo, %i.ov                    ; 2 uses
  store i16 %i.ow, ptr %i.os, align 2, !tbaa !104
  %i.ox = ashr i16 %i.ow, 1
  %i.oy = add i16 %i.ox, %i.ov
  store i16 %i.oy, ptr %i.oq, align 2, !tbaa !104
  %i.oz = add nuw nsw i64 %.025.i.i.i, 1          ; 2 uses
  %exitcond.not.i96.i.i = icmp eq i64 %i.oz, %i.ab
  br i1 %exitcond.not.i96.i.i, label %.lr.ph125.i.i, label %.lr.ph.i94.i.i, !llvm.loop !1163

.lr.ph.i98.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph.i98.i.i.preheader
  %i.pa = getelementptr i8, ptr %i.kh, i64 %i.ef  ; 3 uses
  %i.pb = getelementptr i8, ptr %i.ki, i64 %i.ef  ; 3 uses
  %i.pc = getelementptr i8, ptr %.pre.i, i64 %i.ef ; 3 uses
  %bound0474.a = icmp ult ptr %i.kh, %i.pb
  %bound1475.a = icmp ult ptr %i.ki, %i.pa
  %found.conflict476.a = and i1 %bound0474.a, %bound1475.a
  %bound0477 = icmp ult ptr %i.kh, %i.pc
  %bound1478 = icmp ult ptr %.pre.i, %i.pa
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %found.conflict476.a, %found.conflict479
  %bound0481 = icmp ult ptr %i.kh, %scevgep469
  %bound1482 = icmp ult ptr %scevgep470, %i.pa
  %found.conflict483 = and i1 %bound0481, %bound1482
  %i.pd = or i1 %found.conflict483, %stride.check484
  %conflict.rdx485 = or i1 %conflict.rdx480, %i.pd
  %bound0486 = icmp ult ptr %i.ki, %i.pc
  %bound1487 = icmp ult ptr %.pre.i, %i.pb
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.ki, %scevgep469
  %bound1491 = icmp ult ptr %scevgep470, %i.pb
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %.pre.i, %scevgep469
  %bound1495 = icmp ult ptr %scevgep470, %i.pc
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  br i1 %conflict.rdx497, label %.lr.ph.i98.i.i, label %vector.body499

vector.body499:                                   ; preds = %vector.memcheck473, %vector.body499
  %index500 = phi i64 [ %index.next501, %vector.body499 ], [ 0, %vector.memcheck473 ] ; 12 uses
  %i.pe = mul nuw nsw i64 %index500, 6
  %i.pf = mul nuw i64 %index500, 6
  %i.pg = mul nuw i64 %index500, 6
  %i.ph = mul nuw i64 %index500, 6
  %i.pi = mul nuw i64 %index500, 6
  %i.pj = mul nuw i64 %index500, 6
  %i.pk = mul nuw i64 %index500, 6
  %i.pl = mul nuw i64 %index500, 6
  %i.pm = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pe ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pf ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 6
  %i.pp = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pg ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ph ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 18
  %i.pt = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pi ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pj ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 30
  %i.px = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pk ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 36
  %i.pz = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.pl ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 42
  %i.qb = load i16, ptr %i.pm, align 1, !alias.scope !1225
  %i.qc = load i16, ptr %i.po, align 1, !alias.scope !1225
  %i.qd = load i16, ptr %i.pq, align 1, !alias.scope !1225
  %i.qe = load i16, ptr %i.ps, align 1, !alias.scope !1225
  %i.qf = load i16, ptr %i.pu, align 1, !alias.scope !1225
  %i.qg = load i16, ptr %i.pw, align 1, !alias.scope !1225
  %i.qh = load i16, ptr %i.py, align 1, !alias.scope !1225
  %i.qi = load i16, ptr %i.qa, align 1, !alias.scope !1225
  %i.qj = insertelement <8 x i16> poison, i16 %i.qb, i64 0
  %i.qk = insertelement <8 x i16> %i.qj, i16 %i.qc, i64 1
  %i.ql = insertelement <8 x i16> %i.qk, i16 %i.qd, i64 2
  %i.qm = insertelement <8 x i16> %i.ql, i16 %i.qe, i64 3
  %i.qn = insertelement <8 x i16> %i.qm, i16 %i.qf, i64 4
  %i.qo = insertelement <8 x i16> %i.qn, i16 %i.qg, i64 5
  %i.qp = insertelement <8 x i16> %i.qo, i16 %i.qh, i64 6
  %i.qq = insertelement <8 x i16> %i.qp, i16 %i.qi, i64 7
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pp, i64 14
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pr, i64 20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pt, i64 26
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.px, i64 38
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pz, i64 44
  %i.qz = load i16, ptr %i.qr, align 1, !alias.scope !1225
  %i.ra = load i16, ptr %i.qs, align 1, !alias.scope !1225
  %i.rb = load i16, ptr %i.qt, align 1, !alias.scope !1225
  %i.rc = load i16, ptr %i.qu, align 1, !alias.scope !1225
  %i.rd = load i16, ptr %i.qv, align 1, !alias.scope !1225
  %i.re = load i16, ptr %i.qw, align 1, !alias.scope !1225
  %i.rf = load i16, ptr %i.qx, align 1, !alias.scope !1225
  %i.rg = load i16, ptr %i.qy, align 1, !alias.scope !1225
  %i.rh = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %i.ri = insertelement <8 x i16> %i.rh, i16 %i.ra, i64 1
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 2
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 3
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 4
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 5
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 6
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pn, i64 10
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pr, i64 22
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pv, i64 34
  %i.rv = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pz, i64 46
  %i.rx = load i16, ptr %i.rp, align 1, !alias.scope !1225
  %i.ry = load i16, ptr %i.rq, align 1, !alias.scope !1225
  %i.rz = load i16, ptr %i.rr, align 1, !alias.scope !1225
  %i.sa = load i16, ptr %i.rs, align 1, !alias.scope !1225
  %i.sb = load i16, ptr %i.rt, align 1, !alias.scope !1225
  %i.sc = load i16, ptr %i.ru, align 1, !alias.scope !1225
  %i.sd = load i16, ptr %i.rv, align 1, !alias.scope !1225
  %i.se = load i16, ptr %i.rw, align 1, !alias.scope !1225
  %i.sf = insertelement <8 x i16> poison, i16 %i.rx, i64 0
  %i.sg = insertelement <8 x i16> %i.sf, i16 %i.ry, i64 1
  %i.sh = insertelement <8 x i16> %i.sg, i16 %i.rz, i64 2
  %i.si = insertelement <8 x i16> %i.sh, i16 %i.sa, i64 3
  %i.sj = insertelement <8 x i16> %i.si, i16 %i.sb, i64 4
  %i.sk = insertelement <8 x i16> %i.sj, i16 %i.sc, i64 5
  %i.sl = insertelement <8 x i16> %i.sk, i16 %i.sd, i64 6
  %i.sm = insertelement <8 x i16> %i.sl, i16 %i.se, i64 7 ; 2 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %index500
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %index500
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %index500
  %i.sq = sub <8 x i16> %i.qq, %i.sm              ; 2 uses
  store <8 x i16> %i.sq, ptr %i.so, align 2, !tbaa !104, !alias.scope !1226, !noalias !1227
  %i.sr = ashr <8 x i16> %i.sq, splat (i16 1)
  %i.ss = add <8 x i16> %i.sr, %i.sm              ; 2 uses
  %i.st = sub <8 x i16> %i.ro, %i.ss              ; 2 uses
  store <8 x i16> %i.st, ptr %i.sp, align 2, !tbaa !104, !alias.scope !1228, !noalias !1229
  %i.su = ashr <8 x i16> %i.st, splat (i16 1)
  %i.sv = add <8 x i16> %i.su, %i.ss
  store <8 x i16> %i.sv, ptr %i.sn, align 2, !tbaa !104, !alias.scope !1230, !noalias !1225
  %index.next501 = add nuw i64 %index500, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next501, %i.ab
  br i1 %i.sw, label %.lr.ph125.i.i, label %vector.body499, !llvm.loop !1169

.lr.ph.i98.i.i:                                   ; preds = %vector.memcheck473, %.lr.ph.i98.i.i
  %.022.i.i.i = phi i64 [ %i.tk, %.lr.ph.i98.i.i ], [ 0, %vector.memcheck473 ] ; 5 uses
  %i.sx = mul nuw nsw i64 %.022.i.i.i, 6
  %i.sy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.sx ; 3 uses
  %.val20.i.i.i = load i16, ptr %i.sy, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %.val18.i.i.i = load i16, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  %.val.i99.i.i = load i16, ptr %i.ta, align 1    ; 2 uses
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.022.i.i.i
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.022.i.i.i
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %.022.i.i.i
  %i.te = sub i16 %.val20.i.i.i, %.val.i99.i.i    ; 2 uses
  store i16 %i.te, ptr %i.tc, align 2, !tbaa !104
  %i.tf = ashr i16 %i.te, 1
  %i.tg = add i16 %i.tf, %.val.i99.i.i            ; 2 uses
  %i.th = sub i16 %.val18.i.i.i, %i.tg            ; 2 uses
  store i16 %i.th, ptr %i.td, align 2, !tbaa !104
  %i.ti = ashr i16 %i.th, 1
  %i.tj = add i16 %i.ti, %i.tg
  store i16 %i.tj, ptr %i.tb, align 2, !tbaa !104
  %i.tk = add nuw nsw i64 %.022.i.i.i, 1          ; 2 uses
  %exitcond.not.i100.i.i = icmp eq i64 %i.tk, %i.ab
  br i1 %exitcond.not.i100.i.i, label %.lr.ph125.i.i, label %.lr.ph.i98.i.i, !llvm.loop !1170

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.tl = phi ptr [ %.pre69.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.tm = phi ptr [ %.pre68.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.tn = phi ptr [ %.pre67.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.to = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not.i97.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %.lr.ph.i102.i.i.preheader

.lr.ph.i102.i.i.preheader:                        ; preds = %bb.h
  br i1 %min.iters.check, label %.lr.ph.i102.i.i.preheader528, label %vector.memcheck

.lr.ph.i102.i.i.preheader528:                     ; preds = %vector.memcheck, %.lr.ph.i102.i.i.preheader
  br label %.lr.ph.i102.i.i

vector.memcheck:                                  ; preds = %.lr.ph.i102.i.i.preheader
  %i.tp = getelementptr i8, ptr %i.tn, i64 %i.cu  ; 4 uses
  %i.tq = getelementptr i8, ptr %i.tm, i64 %i.cu  ; 4 uses
  %i.tr = getelementptr i8, ptr %i.to, i64 %i.cu  ; 4 uses
  %i.ts = getelementptr i8, ptr %i.tl, i64 %i.cu  ; 4 uses
  %bound0 = icmp ult ptr %i.tn, %i.tq
  %bound1 = icmp ult ptr %i.tm, %i.tp
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.tn, %i.tr
  %bound1116 = icmp ult ptr %i.to, %i.tp
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %i.tn, %i.ts
  %bound1119 = icmp ult ptr %i.tl, %i.tp
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %bound0122 = icmp ult ptr %i.tn, %scevgep
  %bound1123 = icmp ult ptr %scevgep114, %i.tp
  %found.conflict124 = and i1 %bound0122, %bound1123
  %i.tt = or i1 %found.conflict124, %stride.check
  %conflict.rdx125 = or i1 %conflict.rdx121, %i.tt
  %bound0126 = icmp ult ptr %i.tm, %i.tr
  %bound1127 = icmp ult ptr %i.to, %i.tq
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  %bound0130 = icmp ult ptr %i.tm, %i.ts
  %bound1131 = icmp ult ptr %i.tl, %i.tq
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %i.tm, %scevgep
  %bound1135 = icmp ult ptr %scevgep114, %i.tq
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %i.to, %i.ts
  %bound1139 = icmp ult ptr %i.tl, %i.tr
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.to, %scevgep
  %bound1143 = icmp ult ptr %scevgep114, %i.tr
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.tl, %scevgep
  %bound1147 = icmp ult ptr %scevgep114, %i.ts
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %.lr.ph.i102.i.i.preheader528, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 13 uses
  %i.tu = shl nuw nsw i64 %index, 3
  %i.tv = shl i64 %index, 3
  %i.tw = shl i64 %index, 3
  %i.tx = shl i64 %index, 3
  %i.ty = shl i64 %index, 3
  %i.tz = shl i64 %index, 3
  %i.ua = shl i64 %index, 3
  %i.ub = shl i64 %index, 3
  %i.uc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tu ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tv ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tw ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tx ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uj = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ty ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 32
  %i.ul = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.tz ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  %i.un = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ua ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 48
  %i.up = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ub ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 56
  %i.ur = load i16, ptr %i.uc, align 1, !alias.scope !1231
  %i.us = load i16, ptr %i.ue, align 1, !alias.scope !1231
  %i.ut = load i16, ptr %i.ug, align 1, !alias.scope !1231
  %i.uu = load i16, ptr %i.ui, align 1, !alias.scope !1231
  %i.uv = load i16, ptr %i.uk, align 1, !alias.scope !1231
  %i.uw = load i16, ptr %i.um, align 1, !alias.scope !1231
  %i.ux = load i16, ptr %i.uo, align 1, !alias.scope !1231
  %i.uy = load i16, ptr %i.uq, align 1, !alias.scope !1231
  %i.uz = insertelement <8 x i16> poison, i16 %i.ur, i64 0
  %i.va = insertelement <8 x i16> %i.uz, i16 %i.us, i64 1
  %i.vb = insertelement <8 x i16> %i.va, i16 %i.ut, i64 2
  %i.vc = insertelement <8 x i16> %i.vb, i16 %i.uu, i64 3
  %i.vd = insertelement <8 x i16> %i.vc, i16 %i.uv, i64 4
  %i.ve = insertelement <8 x i16> %i.vd, i16 %i.uw, i64 5
  %i.vf = insertelement <8 x i16> %i.ve, i16 %i.ux, i64 6
  %i.vg = insertelement <8 x i16> %i.vf, i16 %i.uy, i64 7
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ud, i64 10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uf, i64 18
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uh, i64 26
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uj, i64 34
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ul, i64 42
  %i.vn = getelementptr inbounds nuw i8, ptr %i.un, i64 50
  %i.vo = getelementptr inbounds nuw i8, ptr %i.up, i64 58
  %i.vp = load i16, ptr %i.vh, align 1, !alias.scope !1231
  %i.vq = load i16, ptr %i.vi, align 1, !alias.scope !1231
  %i.vr = load i16, ptr %i.vj, align 1, !alias.scope !1231
  %i.vs = load i16, ptr %i.vk, align 1, !alias.scope !1231
  %i.vt = load i16, ptr %i.vl, align 1, !alias.scope !1231
  %i.vu = load i16, ptr %i.vm, align 1, !alias.scope !1231
  %i.vv = load i16, ptr %i.vn, align 1, !alias.scope !1231
  %i.vw = load i16, ptr %i.vo, align 1, !alias.scope !1231
  %i.vx = insertelement <8 x i16> poison, i16 %i.vp, i64 0
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 1
  %i.vz = insertelement <8 x i16> %i.vy, i16 %i.vr, i64 2
  %i.wa = insertelement <8 x i16> %i.vz, i16 %i.vs, i64 3
  %i.wb = insertelement <8 x i16> %i.wa, i16 %i.vt, i64 4
  %i.wc = insertelement <8 x i16> %i.wb, i16 %i.vu, i64 5
  %i.wd = insertelement <8 x i16> %i.wc, i16 %i.vv, i64 6
  %i.we = insertelement <8 x i16> %i.wd, i16 %i.vw, i64 7
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uf, i64 20
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uh, i64 28
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ul, i64 44
  %i.wl = getelementptr inbounds nuw i8, ptr %i.un, i64 52
  %i.wm = getelementptr inbounds nuw i8, ptr %i.up, i64 60
  %i.wn = load i16, ptr %i.wf, align 1, !alias.scope !1231
  %i.wo = load i16, ptr %i.wg, align 1, !alias.scope !1231
  %i.wp = load i16, ptr %i.wh, align 1, !alias.scope !1231
  %i.wq = load i16, ptr %i.wi, align 1, !alias.scope !1231
  %i.wr = load i16, ptr %i.wj, align 1, !alias.scope !1231
  %i.ws = load i16, ptr %i.wk, align 1, !alias.scope !1231
  %i.wt = load i16, ptr %i.wl, align 1, !alias.scope !1231
  %i.wu = load i16, ptr %i.wm, align 1, !alias.scope !1231
  %i.wv = insertelement <8 x i16> poison, i16 %i.wn, i64 0
  %i.ww = insertelement <8 x i16> %i.wv, i16 %i.wo, i64 1
  %i.wx = insertelement <8 x i16> %i.ww, i16 %i.wp, i64 2
  %i.wy = insertelement <8 x i16> %i.wx, i16 %i.wq, i64 3
  %i.wz = insertelement <8 x i16> %i.wy, i16 %i.wr, i64 4
  %i.xa = insertelement <8 x i16> %i.wz, i16 %i.ws, i64 5
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wt, i64 6
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wu, i64 7
  %i.xd = getelementptr inbounds nuw i8, ptr %i.uc, i64 6
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ud, i64 14
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uf, i64 22
  %i.xg = getelementptr inbounds nuw i8, ptr %i.uh, i64 30
  %i.xh = getelementptr inbounds nuw i8, ptr %i.uj, i64 38
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ul, i64 46
  %i.xj = getelementptr inbounds nuw i8, ptr %i.un, i64 54
  %i.xk = getelementptr inbounds nuw i8, ptr %i.up, i64 62
  %i.xl = load i16, ptr %i.xd, align 1, !alias.scope !1231
  %i.xm = load i16, ptr %i.xe, align 1, !alias.scope !1231
  %i.xn = load i16, ptr %i.xf, align 1, !alias.scope !1231
  %i.xo = load i16, ptr %i.xg, align 1, !alias.scope !1231
  %i.xp = load i16, ptr %i.xh, align 1, !alias.scope !1231
  %i.xq = load i16, ptr %i.xi, align 1, !alias.scope !1231
  %i.xr = load i16, ptr %i.xj, align 1, !alias.scope !1231
  %i.xs = load i16, ptr %i.xk, align 1, !alias.scope !1231
  %i.xt = insertelement <8 x i16> poison, i16 %i.xl, i64 0
  %i.xu = insertelement <8 x i16> %i.xt, i16 %i.xm, i64 1
  %i.xv = insertelement <8 x i16> %i.xu, i16 %i.xn, i64 2
  %i.xw = insertelement <8 x i16> %i.xv, i16 %i.xo, i64 3
  %i.xx = insertelement <8 x i16> %i.xw, i16 %i.xp, i64 4
  %i.xy = insertelement <8 x i16> %i.xx, i16 %i.xq, i64 5
  %i.xz = insertelement <8 x i16> %i.xy, i16 %i.xr, i64 6
  %i.ya = insertelement <8 x i16> %i.xz, i16 %i.xs, i64 7
  %i.yb = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.vg)
end_hunk_2
begin_hunk_3_@_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_13Exactly14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %found.conflict203, %found.conflict206
  %bound0208 = icmp ult ptr %i.tn, %i.zn
  %bound1209 = icmp ult ptr %i.tl, %i.zk
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %i.tn, %scevgep196
  %bound1213 = icmp ult ptr %scevgep197, %i.zk
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.zo = or i1 %found.conflict214, %stride.check215
  %conflict.rdx216 = or i1 %conflict.rdx211, %i.zo
  %bound0217 = icmp ult ptr %i.tm, %i.zm
  %bound1218 = icmp ult ptr %i.to, %i.zl
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.tm, %i.zn
  %bound1222 = icmp ult ptr %i.tl, %i.zl
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.tm, %scevgep196
  %bound1226 = icmp ult ptr %scevgep197, %i.zl
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.to, %i.zn
  %bound1230 = icmp ult ptr %i.tl, %i.zm
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.to, %scevgep196
  %bound1234 = icmp ult ptr %scevgep197, %i.zm
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %i.tl, %scevgep196
  %bound1238 = icmp ult ptr %scevgep197, %i.zn
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  br i1 %conflict.rdx240, label %.lr.ph.i106.i.i.preheader530, label %vector.body242

vector.body242:                                   ; preds = %vector.memcheck200, %vector.body242
  %index243 = phi i64 [ %index.next244, %vector.body242 ], [ 0, %vector.memcheck200 ] ; 13 uses
  %i.zp = shl nuw nsw i64 %index243, 3
  %i.zq = shl i64 %index243, 3
  %i.zr = shl i64 %index243, 3
  %i.zs = shl i64 %index243, 3
  %i.zt = shl i64 %index243, 3
  %i.zu = shl i64 %index243, 3
  %i.zv = shl i64 %index243, 3
  %i.zw = shl i64 %index243, 3
  %i.zx = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zp ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zq ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zr ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zs ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aae = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zt ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 32
  %i.aag = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zu ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %i.aai = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zv ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 48
  %i.aak = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.zw ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 56
  %i.aam = load i16, ptr %i.zx, align 1, !alias.scope !1239
  %i.aan = load i16, ptr %i.zz, align 1, !alias.scope !1239
  %i.aao = load i16, ptr %i.aab, align 1, !alias.scope !1239
  %i.aap = load i16, ptr %i.aad, align 1, !alias.scope !1239
  %i.aaq = load i16, ptr %i.aaf, align 1, !alias.scope !1239
  %i.aar = load i16, ptr %i.aah, align 1, !alias.scope !1239
  %i.aas = load i16, ptr %i.aaj, align 1, !alias.scope !1239
  %i.aat = load i16, ptr %i.aal, align 1, !alias.scope !1239
  %i.aau = insertelement <8 x i16> poison, i16 %i.aam, i64 0
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 1
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 2
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 3
  %i.aay = insertelement <8 x i16> %i.aax, i16 %i.aaq, i64 4
  %i.aaz = insertelement <8 x i16> %i.aay, i16 %i.aar, i64 5
  %i.aba = insertelement <8 x i16> %i.aaz, i16 %i.aas, i64 6
  %i.abb = insertelement <8 x i16> %i.aba, i16 %i.aat, i64 7
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zx, i64 2
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zy, i64 10
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaa, i64 18
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aac, i64 26
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aae, i64 34
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aag, i64 42
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aai, i64 50
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aak, i64 58
  %i.abk = load i16, ptr %i.abc, align 1, !alias.scope !1239
  %i.abl = load i16, ptr %i.abd, align 1, !alias.scope !1239
  %i.abm = load i16, ptr %i.abe, align 1, !alias.scope !1239
  %i.abn = load i16, ptr %i.abf, align 1, !alias.scope !1239
  %i.abo = load i16, ptr %i.abg, align 1, !alias.scope !1239
  %i.abp = load i16, ptr %i.abh, align 1, !alias.scope !1239
  %i.abq = load i16, ptr %i.abi, align 1, !alias.scope !1239
  %i.abr = load i16, ptr %i.abj, align 1, !alias.scope !1239
  %i.abs = insertelement <8 x i16> poison, i16 %i.abk, i64 0
  %i.abt = insertelement <8 x i16> %i.abs, i16 %i.abl, i64 1
  %i.abu = insertelement <8 x i16> %i.abt, i16 %i.abm, i64 2
  %i.abv = insertelement <8 x i16> %i.abu, i16 %i.abn, i64 3
  %i.abw = insertelement <8 x i16> %i.abv, i16 %i.abo, i64 4
  %i.abx = insertelement <8 x i16> %i.abw, i16 %i.abp, i64 5
  %i.aby = insertelement <8 x i16> %i.abx, i16 %i.abq, i64 6
  %i.abz = insertelement <8 x i16> %i.aby, i16 %i.abr, i64 7
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.acb = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aaa, i64 20
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aac, i64 28
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aae, i64 36
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aag, i64 44
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aai, i64 52
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aak, i64 60
  %i.aci = load i16, ptr %i.aca, align 1, !alias.scope !1239
  %i.acj = load i16, ptr %i.acb, align 1, !alias.scope !1239
  %i.ack = load i16, ptr %i.acc, align 1, !alias.scope !1239
  %i.acl = load i16, ptr %i.acd, align 1, !alias.scope !1239
  %i.acm = load i16, ptr %i.ace, align 1, !alias.scope !1239
  %i.acn = load i16, ptr %i.acf, align 1, !alias.scope !1239
  %i.aco = load i16, ptr %i.acg, align 1, !alias.scope !1239
  %i.acp = load i16, ptr %i.ach, align 1, !alias.scope !1239
  %i.acq = insertelement <8 x i16> poison, i16 %i.aci, i64 0
  %i.acr = insertelement <8 x i16> %i.acq, i16 %i.acj, i64 1
  %i.acs = insertelement <8 x i16> %i.acr, i16 %i.ack, i64 2
  %i.act = insertelement <8 x i16> %i.acs, i16 %i.acl, i64 3
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 4
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 5
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 6
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 7 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.zx, i64 6
  %i.acz = getelementptr inbounds nuw i8, ptr %i.zy, i64 14
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aaa, i64 22
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aac, i64 30
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aae, i64 38
  %i.add = getelementptr inbounds nuw i8, ptr %i.aag, i64 46
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aai, i64 54
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aak, i64 62
  %i.adg = load i16, ptr %i.acy, align 1, !alias.scope !1239
  %i.adh = load i16, ptr %i.acz, align 1, !alias.scope !1239
  %i.adi = load i16, ptr %i.ada, align 1, !alias.scope !1239
  %i.adj = load i16, ptr %i.adb, align 1, !alias.scope !1239
  %i.adk = load i16, ptr %i.adc, align 1, !alias.scope !1239
  %i.adl = load i16, ptr %i.add, align 1, !alias.scope !1239
  %i.adm = load i16, ptr %i.ade, align 1, !alias.scope !1239
  %i.adn = load i16, ptr %i.adf, align 1, !alias.scope !1239
  %i.ado = insertelement <8 x i16> poison, i16 %i.adg, i64 0
  %i.adp = insertelement <8 x i16> %i.ado, i16 %i.adh, i64 1
  %i.adq = insertelement <8 x i16> %i.adp, i16 %i.adi, i64 2
  %i.adr = insertelement <8 x i16> %i.adq, i16 %i.adj, i64 3
  %i.ads = insertelement <8 x i16> %i.adr, i16 %i.adk, i64 4
  %i.adt = insertelement <8 x i16> %i.ads, i16 %i.adl, i64 5
  %i.adu = insertelement <8 x i16> %i.adt, i16 %i.adm, i64 6
  %i.adv = insertelement <8 x i16> %i.adu, i16 %i.adn, i64 7
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %index243
  %i.adx = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %index243
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %index243
  %i.adz = sub <8 x i16> %i.abb, %i.acx           ; 2 uses
  store <8 x i16> %i.adz, ptr %i.adx, align 2, !tbaa !104, !alias.scope !1240, !noalias !1241
  %i.aea = ashr <8 x i16> %i.adz, splat (i16 1)
  %i.aeb = add <8 x i16> %i.aea, %i.acx           ; 2 uses
  %i.aec = sub <8 x i16> %i.abz, %i.aeb           ; 2 uses
  store <8 x i16> %i.aec, ptr %i.ady, align 2, !tbaa !104, !alias.scope !1242, !noalias !1243
  %i.aed = ashr <8 x i16> %i.aec, splat (i16 1)
  %i.aee = add <8 x i16> %i.aed, %i.aeb
  store <8 x i16> %i.aee, ptr %i.adw, align 2, !tbaa !104, !alias.scope !1244, !noalias !1245
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %index243
  store <8 x i16> %i.adv, ptr %i.aef, align 2, !tbaa !104, !alias.scope !1246, !noalias !1239
  %index.next244 = add nuw i64 %index243, 8       ; 2 uses
  %i.aeg = icmp eq i64 %index.next244, %i.ab
  br i1 %i.aeg, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vector.body242, !llvm.loop !1185

.lr.ph.i106.i.i:                                  ; preds = %.lr.ph.i106.i.i.preheader530, %.lr.ph.i106.i.i
  %.029.i.i.i = phi i64 [ %i.aew, %.lr.ph.i106.i.i ], [ 0, %.lr.ph.i106.i.i.preheader530 ] ; 6 uses
  %i.aeh = shl nuw nsw i64 %.029.i.i.i, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.aeh ; 4 uses
  %.val27.i107.i.i = load i16, ptr %i.aei, align 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 2
  %.val25.i.i.i = load i16, ptr %i.aej, align 1
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %.val23.i108.i.i = load i16, ptr %i.aek, align 1 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 6
  %.val.i109.i.i = load i16, ptr %i.ael, align 1
  %i.aem = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %.029.i.i.i
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %.029.i.i.i
  %i.aeo = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %.029.i.i.i
  %i.aep = sub i16 %.val27.i107.i.i, %.val23.i108.i.i ; 2 uses
  store i16 %i.aep, ptr %i.aen, align 2, !tbaa !104
  %i.aeq = ashr i16 %i.aep, 1
  %i.aer = add i16 %i.aeq, %.val23.i108.i.i       ; 2 uses
  %i.aes = sub i16 %.val25.i.i.i, %i.aer          ; 2 uses
  store i16 %i.aes, ptr %i.aeo, align 2, !tbaa !104
  %i.aet = ashr i16 %i.aes, 1
  %i.aeu = add i16 %i.aet, %i.aer
  store i16 %i.aeu, ptr %i.aem, align 2, !tbaa !104
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %.029.i.i.i
  store i16 %.val.i109.i.i, ptr %i.aev, align 2, !tbaa !104
  %i.aew = add nuw nsw i64 %.029.i.i.i, 1         ; 2 uses
  %exitcond.not.i110.i.i = icmp eq i64 %i.aew, %i.ab
  br i1 %exitcond.not.i110.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %.lr.ph.i106.i.i, !llvm.loop !1186

_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i: ; preds = %vector.body242, %.lr.ph.i106.i.i, %vector.body, %.lr.ph.i102.i.i, %bb.i, %bb.h
  br i1 %.not58.i, label %.loopexit.i.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %vector.body499, %.lr.ph.i98.i.i, %vector.body435, %.lr.ph.i94.i.i, %vector.body368, %.lr.ph.i90.i.i, %vector.body328, %.lr.ph.i86.i.i, %vec.epilog.vector.body287, %.lr.ph.i82.i.i, %vec.epilog.vector.body, %.lr.ph.i.i.i, %middle.block279, %middle.block259, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, %.lr.ph.i98.i.i.preheader, %.lr.ph.i94.i.i.preheader, %bb.f, %.lr.ph.i86.i.i.preheader, %iter.check281, %iter.check
  %.not.i.i = icmp eq i64 %.078129.i.i, 0         ; 4 uses
  br i1 %i.ei, label %.epil.preheader554, label %.lr.ph125.i.i.new

._crit_edge126.i.i.unr-lcssa:                     ; preds = %bb.n
  br i1 %lcmp.mod556.not, label %._crit_edge126.i.i, label %.epil.preheader554

.epil.preheader554:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %.lr.ph125.i.i
  %.076124.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i ], [ %i.agj, %._crit_edge126.i.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod557)
  br i1 %.not.i.i, label %.critedge.i.i.epil, label %bb.j

bb.j:                                             ; preds = %.epil.preheader554
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !92 ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !104 ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !92
  %i.afc = getelementptr inbounds i8, ptr %i.afb, i64 -2
  store i16 %i.aez, ptr %i.afc, align 2, !tbaa !104
  br label %._crit_edge126.i.i.epilog-lcssa

.critedge.i.i.epil:                               ; preds = %.epil.preheader554
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !92
  %i.aff = getelementptr inbounds i8, ptr %i.afe, i64 -2
  store i16 0, ptr %i.aff, align 2, !tbaa !104
  %.phi.trans.insert.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %.pre.i.i.epil = load ptr, ptr %.phi.trans.insert.i.i.epil, align 8, !tbaa !92
  br label %._crit_edge126.i.i.epilog-lcssa

._crit_edge126.i.i.epilog-lcssa:                  ; preds = %.critedge.i.i.epil, %bb.j
  %i.afg = phi ptr [ %i.aey, %bb.j ], [ %.pre.i.i.epil, %.critedge.i.i.epil ]
  %i.afh = phi i16 [ %i.aez, %bb.j ], [ 0, %.critedge.i.i.epil ]
  %i.afi = getelementptr inbounds i8, ptr %i.afg, i64 -2
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !104
  br label %._crit_edge126.i.i

._crit_edge126.i.i:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %._crit_edge126.i.i.epilog-lcssa
  %i.afj = or i1 %.not.i97.i.i, %.not.i.i
  br i1 %i.afj, label %.loopexit.i.i, label %.lr.ph.i112.i.i

.lr.ph125.i.i.new:                                ; preds = %.lr.ph125.i.i, %bb.n
  %.076124.i.i = phi i64 [ %i.agj, %bb.n ], [ 0, %.lr.ph125.i.i ] ; 6 uses
  %niter559 = phi i64 [ %niter559.next.1, %bb.n ], [ 0, %.lr.ph125.i.i ]
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph125.i.i.new
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %i.afl = load ptr, ptr %i.afk, align 16, !tbaa !92 ; 2 uses
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !104 ; 2 uses
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.afo = load ptr, ptr %i.afn, align 16, !tbaa !92
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 -2
  store i16 %i.afm, ptr %i.afp, align 2, !tbaa !104
  br label %bb.l

.critedge.i.i:                                    ; preds = %.lr.ph125.i.i.new
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.afr = load ptr, ptr %i.afq, align 16, !tbaa !92
  %i.afs = getelementptr inbounds i8, ptr %i.afr, i64 -2
  store i16 0, ptr %i.afs, align 2, !tbaa !104
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 16, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.i, %bb.k
  %i.aft = phi ptr [ %i.afl, %bb.k ], [ %.pre.i.i, %.critedge.i.i ]
  %i.afu = phi i16 [ %i.afm, %bb.k ], [ 0, %.critedge.i.i ]
  %i.afv = getelementptr inbounds i8, ptr %i.aft, i64 -2
  store i16 %i.afu, ptr %i.afv, align 2, !tbaa !104
  %i.afw = or disjoint i64 %.076124.i.i, 1        ; 4 uses
  br i1 %.not.i.i, label %.critedge.i.i.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.afw
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !92 ; 2 uses
  %i.afz = load i16, ptr %i.afy, align 2, !tbaa !104 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.afw
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !92
  %i.agc = getelementptr inbounds i8, ptr %i.agb, i64 -2
  store i16 %i.afz, ptr %i.agc, align 2, !tbaa !104
  br label %bb.n

.critedge.i.i.1:                                  ; preds = %bb.l
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.afw
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !92
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 -2
  store i16 0, ptr %i.agf, align 2, !tbaa !104
  %.phi.trans.insert.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.afw
  %.pre.i.i.1 = load ptr, ptr %.phi.trans.insert.i.i.1, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.1, %bb.m
  %i.agg = phi ptr [ %i.afy, %bb.m ], [ %.pre.i.i.1, %.critedge.i.i.1 ]
  %i.agh = phi i16 [ %i.afz, %bb.m ], [ 0, %.critedge.i.i.1 ]
  %i.agi = getelementptr inbounds i8, ptr %i.agg, i64 -2
  store i16 %i.agh, ptr %i.agi, align 2, !tbaa !104
  %i.agj = add nuw nsw i64 %.076124.i.i, 2        ; 2 uses
  %niter559.next.1 = add i64 %niter559, 2         ; 2 uses
  %niter559.ncmp.1 = icmp eq i64 %niter559.next.1, %unroll_iter558
  br i1 %niter559.ncmp.1, label %._crit_edge126.i.i.unr-lcssa, label %.lr.ph125.i.i.new, !llvm.loop !1187

.lr.ph.i112.i.i:                                  ; preds = %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i
  %.075127.i.i = phi i64 [ %i.alt, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i ], [ 0, %._crit_edge126.i.i ] ; 4 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.075127.i.i
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !92 ; 2 uses
  %i.agm = getelementptr inbounds i8, ptr %i.agl, i64 -2
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.075127.i.i
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !92 ; 2 uses
  %i.agp = getelementptr inbounds i8, ptr %i.ago, i64 -2
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.075127.i.i ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 16         ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1206
  br label %bb.o

bb.o:                                             ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, %.lr.ph.i112.i.i
  %.sink.i.i54.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %.lr.ph.i112.i.i ], [ %.sink.i.i53.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i ] ; 4 uses
  %.015.i113.i.i = phi i64 [ 0, %.lr.ph.i112.i.i ], [ %i.alr, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i ] ; 6 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.agl, i64 %.015.i113.i.i
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.agm, i64 %.015.i113.i.i
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.ago, i64 %.015.i113.i.i
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.agp, i64 %.015.i113.i.i
  %i.agx = sub nsw i64 %i.ab, %.015.i113.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.agx, i64 8) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.agy = load <8 x i16>, ptr %i.agu, align 2, !tbaa !104 ; 3 uses
  %i.agz = load <8 x i16>, ptr %i.agw, align 2, !tbaa !104 ; 2 uses
  %i.aha = load <8 x i16>, ptr %i.agt, align 2, !tbaa !104
  %i.ahb = load <8 x i16>, ptr %i.agv, align 2, !tbaa !104 ; 4 uses
  %i.ahc = sub <8 x i16> %i.agy, %i.agz           ; 2 uses
  %i.ahd = sub <8 x i16> %i.agy, %i.ahb
  %i.ahe = sub <8 x i16> %i.ahb, %i.agz           ; 2 uses
  %i.ahf = add <8 x i16> %i.ahc, %i.ahb
  %i.ahg = xor <8 x i16> %i.ahe, %i.ahd
  %i.ahh = icmp slt <8 x i16> %i.ahg, zeroinitializer
  %i.ahi = select <8 x i1> %i.ahh, <8 x i16> %i.ahb, <8 x i16> %i.agy
  %i.ahj = xor <8 x i16> %i.ahe, %i.ahc
  %i.ahk = icmp slt <8 x i16> %i.ahj, zeroinitializer
  %i.ahl = select <8 x i1> %i.ahk, <8 x i16> %i.ahf, <8 x i16> %i.ahi
  %i.ahm = sext <8 x i16> %i.aha to <8 x i32>
  %i.ahn = sext <8 x i16> %i.ahl to <8 x i32>
  %i.aho = sub nsw <8 x i32> %i.ahm, %i.ahn       ; 2 uses
  %i.ahp = shl nsw <8 x i32> %i.aho, splat (i32 1)
  %i.ahq = ashr <8 x i32> %i.aho, splat (i32 31)
  %i.ahr = xor <8 x i32> %i.ahp, %i.ahq           ; 2 uses
  %i.ahs = trunc <8 x i32> %i.ahr to <8 x i16>
  store <8 x i16> %i.ahs, ptr %i.a, align 64, !tbaa !104
  %i.aht = and <8 x i32> %i.ahr, splat (i32 65535)
  %i.ahu = icmp eq <8 x i32> %i.aht, zeroinitializer ; 8 uses
  %i.ahv = extractelement <8 x i1> %i.ahu, i64 0  ; 2 uses
  %i.ahw = zext i1 %i.ahv to i64
  %i.ahx = extractelement <8 x i1> %i.ahu, i64 1
  %narrow.1.i.i.i.i = select i1 %i.ahv, i1 %i.ahx, i1 false ; 2 uses
  %i.ahy = zext i1 %narrow.1.i.i.i.i to i64
  %i.ahz = add nuw nsw i64 %i.ahy, %i.ahw
  %i.aia = extractelement <8 x i1> %i.ahu, i64 2
  %narrow.2.i.i.i.i = select i1 %narrow.1.i.i.i.i, i1 %i.aia, i1 false
  %i.aib = zext i1 %narrow.2.i.i.i.i to i64
  %i.aic = add nuw nsw i64 %i.ahz, %i.aib         ; 2 uses
  %i.aid = icmp eq i64 %i.aic, 3
  %i.aie = extractelement <8 x i1> %i.ahu, i64 3
  %narrow.3.i.i.i.i = select i1 %i.aid, i1 %i.aie, i1 false
  %i.aif = zext i1 %narrow.3.i.i.i.i to i64
  %i.aig = add nuw nsw i64 %i.aic, %i.aif         ; 2 uses
  %i.aih = icmp eq i64 %i.aig, 4
  %i.aii = extractelement <8 x i1> %i.ahu, i64 4
  %narrow.4.i.i.i.i = select i1 %i.aih, i1 %i.aii, i1 false
  %i.aij = zext i1 %narrow.4.i.i.i.i to i64
  %i.aik = add nuw nsw i64 %i.aig, %i.aij         ; 2 uses
  %i.ail = icmp eq i64 %i.aik, 5
  %i.aim = extractelement <8 x i1> %i.ahu, i64 5
  %narrow.5.i.i.i.i = select i1 %i.ail, i1 %i.aim, i1 false
  %i.ain = zext i1 %narrow.5.i.i.i.i to i64
  %i.aio = add nuw nsw i64 %i.aik, %i.ain         ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 6
  %i.aiq = extractelement <8 x i1> %i.ahu, i64 6
  %narrow.6.i.i.i.i = select i1 %i.aip, i1 %i.aiq, i1 false
  %i.air = zext i1 %narrow.6.i.i.i.i to i64
  %i.ais = add nuw nsw i64 %i.aio, %i.air         ; 2 uses
  %i.ait = icmp eq i64 %i.ais, 7
  %i.aiu = extractelement <8 x i1> %i.ahu, i64 7
  %narrow.7.i.i.i.i = select i1 %i.ait, i1 %i.aiu, i1 false
  %i.aiv = zext i1 %narrow.7.i.i.i.i to i64
  %i.aiw = add nuw nsw i64 %i.ais, %i.aiv         ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aiw, i64 %.sroa.speculated.i.i.i) ; 8 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %.sroa.speculated.i.i.i, %i.aiw ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aix = icmp ne i64 %.sink.i.i54.i, 0
  %i.aiy = icmp samesign ugt i64 %.sroa.speculated.i.i.i.i, 7
  %or.cond.i.i.i.i = or i1 %i.aix, %i.aiy
  br i1 %or.cond.i.i.i.i, label %bb.q, label %._crit_edge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.aiz = add i64 %.sroa.speculated.i.i.i.i, %.sink.i.i54.i
  br label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %i.aja = phi i64 [ 0, %bb.p ], [ %.sink.i.i54.i, %bb.o ]
  %i.ajb = add i64 %i.aja, %.sroa.speculated.i.i.i.i ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 7
  br i1 %i.ajc, label %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ajd = load ptr, ptr %i.ags, align 8, !tbaa !1210
  %i.aje = load ptr, ptr %i.agr, align 8, !tbaa !1209 ; 5 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !68
  %i.ajg = add i64 %i.ajf, 1
  store i64 %i.ajg, ptr %i.aje, align 8, !tbaa !68
  %i.ajh = trunc i64 %i.ajb to i32
  %i.aji = add i32 %i.ajh, -8                     ; 3 uses
  %i.ajj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aji, i1 true)
  %i.ajk = icmp ult i32 %i.aji, 16
  %i.ajl = sub nuw nsw i32 43, %i.ajj
  %i.ajm = select i1 %i.ajk, i32 %i.aji, i32 %i.ajl
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajd, i64 %i.ajn ; 2 uses
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !68
  %i.ajq = add i64 %i.ajp, 1
  store i64 %i.ajq, ptr %i.ajo, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %.lr.ph61.i.i.i.i.preheader, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

.lr.ph61.i.i.i.i.preheader:                       ; preds = %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i
  %.neg = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %xtraiter560 = and i64 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph61.i.i.i.i.prol.loopexit, label %.lr.ph61.i.i.i.i.prol

.lr.ph61.i.i.i.i.prol:                            ; preds = %.lr.ph61.i.i.i.i.preheader
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.speculated.i.i.i.i
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !104
  %i.ajt = zext i16 %i.ajs to i32
  %i.aju = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajt, i1 false)
  %i.ajv = sub nuw nsw i32 32, %i.aju
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.ajw ; 2 uses
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !68
  %i.ajz = add i64 %i.ajy, 1
  store i64 %i.ajz, ptr %i.ajx, align 8, !tbaa !68
  %i.aka = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  br label %.lr.ph61.i.i.i.i.prol.loopexit

.lr.ph61.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph61.i.i.i.i.prol, %.lr.ph61.i.i.i.i.preheader
  %.0.i3960.i.i.i.i.unr = phi i64 [ %.sroa.speculated.i.i.i.i, %.lr.ph61.i.i.i.i.preheader ], [ %i.aka, %.lr.ph61.i.i.i.i.prol ]
  %i.akb = icmp eq i64 %.sroa.speculated.i.i.i, %.neg
  br i1 %i.akb, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i

.lr.ph61.i.i.i.i:                                 ; preds = %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i
  %.0.i3960.i.i.i.i = phi i64 [ %i.akv, %.lr.ph61.i.i.i.i ], [ %.0.i3960.i.i.i.i.unr, %.lr.ph61.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.akc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !104
  %i.ake = zext i16 %i.akd to i32
  %i.akf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ake, i1 false)
  %i.akg = sub nuw nsw i32 32, %i.akf
  %i.akh = zext nneg i32 %i.akg to i64
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.akh ; 2 uses
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !68
  %i.akk = add i64 %i.akj, 1
  store i64 %i.akk, ptr %i.aki, align 8, !tbaa !68
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 2
  %i.akn = load i16, ptr %i.akm, align 2, !tbaa !104
  %i.ako = zext i16 %i.akn to i32
  %i.akp = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ako, i1 false)
  %i.akq = sub nuw nsw i32 32, %i.akp
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.akr ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !68
  %i.aku = add i64 %i.akt, 1
  store i64 %i.aku, ptr %i.aks, align 8, !tbaa !68
  %i.akv = add nuw nsw i64 %.0.i3960.i.i.i.i, 2   ; 2 uses
  %exitcond63.not.i.i.i.i.1 = icmp eq i64 %i.akv, %.sroa.speculated.i.i.i
  br i1 %exitcond63.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !1188

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  %i.akw = load ptr, ptr %i.agr, align 8, !tbaa !1209 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.0.i59.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.alq, %bb.r ] ; 3 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.aky = load i16, ptr %i.akx, align 4, !tbaa !104
  %i.akz = zext i16 %i.aky to i32
  %i.ala = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.akz, i1 false)
  %i.alb = sub nuw nsw i32 32, %i.ala
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.alc ; 2 uses
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !68
  %i.alf = add i64 %i.ale, 1
  store i64 %i.alf, ptr %i.ald, align 8, !tbaa !68
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 2
  %i.ali = load i16, ptr %i.alh, align 2, !tbaa !104
  %i.alj = zext i16 %i.ali to i32
  %i.alk = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alj, i1 false)
  %i.all = sub nuw nsw i32 32, %i.alk
  %i.alm = zext nneg i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.alm ; 2 uses
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !68
  %i.alp = add i64 %i.alo, 1
  store i64 %i.alp, ptr %i.aln, align 8, !tbaa !68
  %i.alq = add nuw nsw i64 %.0.i59.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.alq, %.sroa.speculated.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %bb.r, !llvm.loop !1188

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i: ; preds = %bb.r, %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i, %bb.q
  %.sink.i.i53.i = phi i64 [ 0, %.lr.ph61.i.i.i.i.prol.loopexit ], [ %i.aiz, %bb.q ], [ 0, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i ], [ 0, %.lr.ph61.i.i.i.i ], [ %.sink.i.i54.i, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.alr = add nuw nsw i64 %.015.i113.i.i, 8      ; 2 uses
  %i.als = icmp samesign ult i64 %i.alr, %i.ab
  br i1 %i.als, label %bb.o, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, !llvm.loop !1189

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i: ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i
  store i64 %.sink.i.i53.i, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.alt = add nuw nsw i64 %.075127.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.alt, %i.as
  br i1 %exitcond145.not.i.i, label %.loopexit.i.i, label %.lr.ph.i112.i.i, !llvm.loop !1190

.loopexit.i.i:                                    ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.alu = add i64 %.078129.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %.078129.i.i, %i.ad
  br i1 %exitcond146.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !1191

bb.s:                                             ; preds = %.preheader.i.i
  %i.alv = ptrtoint ptr %.sroa.0.0 to i64
  %i.alw = sub i64 %.sroa.8.0, %i.alv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.alw) #39
  br label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.s, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.052.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ami, %.lr.ph.i ] ; 6 uses
  %niter553 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter553.next.1, %.lr.ph.i ]
  %i.alx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.052.i ; 3 uses
  %i.aly = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.052.i
  store ptr %i.alx, ptr %i.aly, align 16, !tbaa !1207
  %i.alz = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.052.i
  store ptr %i.alz, ptr %i.alx, align 16, !tbaa !1209
  %i.ama = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.052.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store ptr %i.ama, ptr %i.amb, align 8, !tbaa !1210
  %i.amc = or disjoint i64 %.052.i, 1             ; 4 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.amc ; 3 uses
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.amc
  store ptr %i.amd, ptr %i.ame, align 16, !tbaa !1207
  %i.amf = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.amc
  store ptr %i.amf, ptr %i.amd, align 16, !tbaa !1209
  %i.amg = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.amc
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store ptr %i.amg, ptr %i.amh, align 8, !tbaa !1210
  %i.ami = add nuw nsw i64 %.052.i, 2             ; 2 uses
  %niter553.next.1 = add nuw i64 %niter553, 2     ; 2 uses
  %niter553.ncmp.1 = icmp eq i64 %niter553.next.1, %unroll_iter552
  br i1 %niter553.ncmp.1, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1192

_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit: ; preds = %._crit_edge57.i, %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i
  %i.amj = load ptr, ptr %i.n, align 8, !tbaa !1196, !nonnull !121, !align !176 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 40
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !107
  %i.amm = load ptr, ptr %i.amj, align 8, !tbaa !106
  call void %i.aml(ptr noundef %i.amm, ptr noundef %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [8 x i32], align 64               ; 9 uses
  %i.b = alloca [4 x ptr], align 16               ; 16 uses
  %i.c = alloca [4 x ptr], align 16               ; 12 uses
  %4 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChunkSampleCollector.154"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.default_implementation::(anonymous namespace)::ChannelRowProcessor.155"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1309, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1310, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1311, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 19 uses
  %i.t = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.u = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.v = trunc i64 %3 to i32
  %i.w = shl i64 %i.u, 32
  %i.x = ashr exact i64 %i.w, 32                  ; 18 uses
  %i.y = sub nsw i64 %.sroa.speculated33, %i.u
  %i.z = trunc i64 %i.y to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.v) ; 2 uses
  %i.aa = and i64 %.sroa.speculated28, 504        ; 22 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !68  ; 26 uses
  %i.ac = sext i32 %.sroa.speculated to i64       ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1312, !nonnull !121, !align !176 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1313, !nonnull !121, !align !176 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1314, !nonnull !121
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1315, !nonnull !121
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1316, !nonnull !121, !align !176
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 22 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1317, !nonnull !121
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95, !range !108, !noundef !121
  %i.av = trunc nuw i8 %i.au to i1                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1318, !nonnull !121, !align !176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %.not59.i = icmp eq i64 %i.ar, 0                ; 4 uses
  br i1 %i.ao, label %.preheader52.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !199
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ba, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !199
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bc, align 8, !tbaa !199
  br i1 %.not59.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.ak ; 3 uses
  %i.be = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %i.ak ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bf = icmp eq i64 %i.ar, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph57.i.new

.lr.ph57.i.new:                                   ; preds = %.lr.ph57.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.b

._crit_edge58.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge58.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge58.i.loopexit.unr-lcssa, %.lr.ph57.i
  %.056.i.epil.init = phi i64 [ 0, %.lr.ph57.i ], [ %i.br, %._crit_edge58.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod549 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod549)
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.056.i.epil.init ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.056.i.epil.init
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !200
  store ptr %i.bd, ptr %i.bg, align 16, !tbaa !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !203
  br label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %.epil.preheader, %._crit_edge58.i.loopexit.unr-lcssa, %.preheader.i
  %i.bj = add nsw i64 %i.ac, 1
  call fastcc void @_ZN22default_implementation12_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.aa, i64 noundef %i.bj, i64 noundef %i.ab, ptr noundef readonly %i.ay, i64 noundef %i.ar, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_14MoreThan14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph57.i.new
  %.056.i = phi i64 [ 0, %.lr.ph57.i.new ], [ %i.br, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph57.i.new ], [ %niter.next.1, %bb.b ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.056.i ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.056.i
  store ptr %i.bk, ptr %i.bl, align 16, !tbaa !200
  store ptr %i.bd, ptr %i.bk, align 16, !tbaa !202
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.be, ptr %i.bm, align 8, !tbaa !203
  %i.bn = or disjoint i64 %.056.i, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bn
  store ptr %i.bo, ptr %i.bp, align 16, !tbaa !200
  store ptr %i.bd, ptr %i.bo, align 16, !tbaa !202
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.be, ptr %i.bq, align 8, !tbaa !203
  %i.br = add nuw nsw i64 %.056.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge58.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1247

.preheader52.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !1321
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bt, align 8, !tbaa !1321
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !1321
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bv, align 8, !tbaa !1321
  br i1 %.not59.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader52.i
  %xtraiter550 = and i64 %i.ar, 1
  %i.bw = icmp eq i64 %i.ar, 1
  br i1 %i.bw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter553 = and i64 %i.ar, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03953.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.agr, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod552 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod552)
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03953.i.epil.init ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03953.i.epil.init
  store ptr %i.bx, ptr %i.by, align 16, !tbaa !1322
  %i.bz = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %.03953.i.epil.init
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !1324
  %i.ca = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %.03953.i.epil.init
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !1325
  br label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.cc = mul nuw nsw i64 %i.ar, 2688             ; 2 uses
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #40 ; 3 uses
  %i.ce = getelementptr inbounds nuw [2688 x i8], ptr %i.cd, i64 %i.ar
  %i.cf = add nsw i64 %i.cc, -2688                ; 2 uses
  %i.cg = urem i64 %i.cf, 2688
  %i.ch = sub nuw nsw i64 %i.cf, %i.cg
  %i.ci = add nuw nsw i64 %i.ch, 2688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cd, i8 0, i64 %i.ci, i1 false)
  %i.cj = ptrtoint ptr %i.ce to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader52.i, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %.sroa.0.0 = phi ptr [ %i.cd, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader52.i ] ; 6 uses
  %.sroa.8.0 = phi i64 [ %i.cj, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader52.i ]
  %.not133.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not133.i.i, label %.preheader.i.i, label %.lr.ph130.i.i

.lr.ph130.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.i97.i.i = icmp eq i64 %i.aa, 0            ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = add nsw i64 %i.x, %i.ac
  %i.cp = mul i64 %i.ab, %i.co
  %i.cq = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 6
  %i.cs = getelementptr i8, ptr %i.s, i64 %i.cp
  %scevgep = getelementptr i8, ptr %i.cs, i64 %i.cr ; 4 uses
  %i.ct = mul i64 %i.ab, %i.x
  %scevgep114 = getelementptr i8, ptr %i.s, i64 %i.ct ; 4 uses
  %i.cu = shl nuw nsw i64 %i.cq, 5                ; 4 uses
  %i.cv = add nsw i64 %i.x, %i.ac
  %i.cw = mul i64 %i.ab, %i.cv
  %i.cx = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 6
  %i.cz = getelementptr i8, ptr %i.s, i64 %i.cw
  %scevgep196 = getelementptr i8, ptr %i.cz, i64 %i.cy ; 4 uses
  %i.da = mul i64 %i.ab, %i.x
  %scevgep197 = getelementptr i8, ptr %i.s, i64 %i.da ; 4 uses
  %i.db = shl nuw nsw i64 %i.cx, 5                ; 4 uses
  %i.dc = add nsw i64 %i.x, %i.ac
  %i.dd = mul i64 %i.ab, %i.dc
  %i.de = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = getelementptr i8, ptr %i.s, i64 %i.dd
  %scevgep254 = getelementptr i8, ptr %i.dg, i64 %i.df
  %i.dh = mul i64 %i.ab, %i.x
  %scevgep255 = getelementptr i8, ptr %i.s, i64 %i.dh
  %i.di = shl nuw nsw i64 %i.de, 5
  %i.dj = add nsw i64 %i.x, %i.ac
  %i.dk = mul i64 %i.ab, %i.dj
  %i.dl = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 4
  %i.dn = getelementptr i8, ptr %i.s, i64 %i.dk
  %scevgep277 = getelementptr i8, ptr %i.dn, i64 %i.dm
  %i.do = mul i64 %i.ab, %i.x
  %scevgep278 = getelementptr i8, ptr %i.s, i64 %i.do
  %i.dp = shl nuw nsw i64 %i.dl, 5
  %i.dq = add nsw i64 %i.x, %i.ac
  %i.dr = mul i64 %i.ab, %i.dq
  %i.ds = shl nuw nsw i64 %.sroa.speculated28, 2
  %i.dt = and i64 %i.ds, 2016                     ; 3 uses
  %i.du = getelementptr i8, ptr %i.s, i64 %i.dr
  %scevgep310 = getelementptr i8, ptr %i.du, i64 %i.dt ; 2 uses
  %i.dv = mul i64 %i.ab, %i.x
  %scevgep311 = getelementptr i8, ptr %i.s, i64 %i.dv ; 2 uses
  %i.dw = add nsw i64 %i.x, %i.ac
  %i.dx = mul i64 %i.ab, %i.dw
  %i.dy = shl nuw nsw i64 %.sroa.speculated28, 2
  %i.dz = and i64 %i.dy, 2016                     ; 3 uses
  %i.ea = getelementptr i8, ptr %i.s, i64 %i.dx
  %scevgep350 = getelementptr i8, ptr %i.ea, i64 %i.dz ; 2 uses
  %i.eb = mul i64 %i.ab, %i.x
  %scevgep351 = getelementptr i8, ptr %i.s, i64 %i.eb ; 2 uses
  %i.ec = add nsw i64 %i.x, %i.ac
  %i.ed = mul i64 %i.ab, %i.ec
  %i.ee = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.ef = mul nuw nsw i64 %i.ee, 48
  %i.eg = getelementptr i8, ptr %i.s, i64 %i.ed
  %scevgep405 = getelementptr i8, ptr %i.eg, i64 %i.ef ; 3 uses
  %i.eh = mul i64 %i.ab, %i.x
  %scevgep406 = getelementptr i8, ptr %i.s, i64 %i.eh ; 3 uses
  %i.ei = shl nuw nsw i64 %i.ee, 5                ; 3 uses
  %i.ej = add nsw i64 %i.x, %i.ac
  %i.ek = mul i64 %i.ab, %i.ej
  %i.el = lshr i64 %.sroa.speculated28, 3         ; 2 uses
  %i.em = mul nuw nsw i64 %i.el, 48
  %i.en = getelementptr i8, ptr %i.s, i64 %i.ek
  %scevgep469 = getelementptr i8, ptr %i.en, i64 %i.em ; 3 uses
  %i.eo = mul i64 %i.ab, %i.x
  %scevgep470 = getelementptr i8, ptr %i.s, i64 %i.eo ; 3 uses
  %i.ep = shl nuw nsw i64 %i.el, 5                ; 3 uses
  %min.iters.check505 = icmp ult i64 %i.ar, 4
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  %stride.check484 = icmp slt i64 %i.ab, 0
  %stride.check420 = icmp slt i64 %i.ab, 0
  %min.iters.check353 = icmp samesign ult i64 %i.aa, 12
  %stride.check361 = icmp slt i64 %i.ab, 0
  %stride.check321 = icmp slt i64 %i.ab, 0
  %stride.check285 = icmp slt i64 %i.ab, 0
  %stride.check262 = icmp slt i64 %i.ab, 0
  %min.iters.check199 = icmp samesign ult i64 %i.aa, 12
  %stride.check215 = icmp slt i64 %i.ab, 0
  %stride.check = icmp slt i64 %i.ab, 0
  %xtraiter556 = and i64 %i.ar, 1
  %i.eq = icmp eq i64 %i.ar, 1
  %unroll_iter559 = and i64 %i.ar, -2
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  %lcmp.mod558 = trunc i64 %i.ar to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i114.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i114.i.i, label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.r

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph130.i.i
  %.078129.i.i = phi i64 [ 0, %.lr.ph130.i.i ], [ %i.agd, %.loopexit.i.i ] ; 5 uses
  %i.er = add i64 %.078129.i.i, %i.x
  %i.es = mul i64 %i.er, %i.ab
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.es ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not59.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.eu = and i64 %.078129.i.i, 1                 ; 4 uses
  %i.ev = xor i64 %i.eu, 1                        ; 3 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.body507

vector.body507:                                   ; preds = %.lr.ph.i.i, %vector.body507
  %index508 = phi i64 [ %index.next522, %vector.body507 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body507 ], [ <i64 0, i64 1>, %.lr.ph.i.i ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <2 x i64> %vec.ind ; 2 uses
  %wide.gep509.a = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <2 x i64> %step.add ; 2 uses
  %wide.gep510 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep, i64 %i.eu
  %wide.gep511 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep509.a, i64 %i.eu
  %wide.gep512 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep510, i64 128 ; 2 uses
  %wide.gep513 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep511, i64 128 ; 2 uses
  %i.ew = ptrtoint <2 x ptr> %wide.gep512 to <2 x i64>
  %i.ex = ptrtoint <2 x ptr> %wide.gep513 to <2 x i64>
  %i.ey = lshr <2 x i64> %i.ew, splat (i64 2)
  %i.ez = lshr <2 x i64> %i.ex, splat (i64 2)
  %i.fa = and <2 x i64> %i.ey, splat (i64 15)
  %i.fb = and <2 x i64> %i.ez, splat (i64 15)
  %wide.gep514 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep512, <2 x i64> %i.fa
  %wide.gep515 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep513, <2 x i64> %i.fb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index508 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x ptr> %wide.gep514, ptr %i.fc, align 16, !tbaa !101
  store <2 x ptr> %wide.gep515, ptr %i.fd, align 16, !tbaa !101
  %wide.gep516 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep, i64 %i.ev
  %wide.gep517 = getelementptr inbounds nuw [1344 x i8], <2 x ptr> %wide.gep509.a, i64 %i.ev
  %wide.gep518 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep516, i64 128 ; 2 uses
  %wide.gep519 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep517, i64 128 ; 2 uses
  %i.fe = ptrtoint <2 x ptr> %wide.gep518 to <2 x i64>
  %i.ff = ptrtoint <2 x ptr> %wide.gep519 to <2 x i64>
  %i.fg = lshr <2 x i64> %i.fe, splat (i64 2)
  %i.fh = lshr <2 x i64> %i.ff, splat (i64 2)
  %i.fi = and <2 x i64> %i.fg, splat (i64 15)
  %i.fj = and <2 x i64> %i.fh, splat (i64 15)
  %wide.gep520 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep518, <2 x i64> %i.fi
  %wide.gep521 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep519, <2 x i64> %i.fj
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index508 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x ptr> %wide.gep520, ptr %i.fk, align 16, !tbaa !101
  store <2 x ptr> %wide.gep521, ptr %i.fl, align 16, !tbaa !101
  %index.next522 = add nuw i64 %index508, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fm = icmp eq i64 %index.next522, %n.vec
  br i1 %i.fm, label %middle.block523, label %vector.body507, !llvm.loop !1248

middle.block523:                                  ; preds = %vector.body507
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %.lr.ph.i.i, %middle.block523
  %.077123.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block523 ]
  br label %scalar.ph504

._crit_edge.i.i:                                  ; preds = %scalar.ph504, %middle.block523
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !101 ; 37 uses
  switch i64 %i.ar, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.g
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre68.i = load ptr, ptr %i.ck, align 8, !tbaa !101
  %.pre69.i = load ptr, ptr %i.cl, align 16, !tbaa !101
  %.pre70.i = load ptr, ptr %i.cm, align 8, !tbaa !101
  br label %._crit_edge.thread.i.i

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %.077123.i.i = phi i64 [ %i.gc, %scalar.ph504 ], [ %.077123.i.i.ph, %scalar.ph504.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, i64 %.077123.i.i ; 2 uses
  %i.fo = getelementptr inbounds nuw [1344 x i8], ptr %i.fn, i64 %i.eu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 128 ; 2 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = and i64 %i.fr, 15
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077123.i.i
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !101
  %i.fv = getelementptr inbounds nuw [1344 x i8], ptr %i.fn, i64 %i.ev
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128 ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = and i64 %i.fy, 15
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077123.i.i
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !101
  %i.gc = add nuw nsw i64 %.077123.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gc, %i.ar
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph504, !llvm.loop !1249

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.av, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i82.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.gd = getelementptr i8, ptr %.pre.i, i64 %i.di
  %bound0259 = icmp ult ptr %.pre.i, %scevgep254
  %bound1260 = icmp ult ptr %scevgep255, %i.gd
  %found.conflict261 = and i1 %bound0259, %bound1260
  %i.ge = or i1 %found.conflict261, %stride.check262
  br i1 %i.ge, label %.lr.ph.i.i.i, label %vector.body264

vector.body264:                                   ; preds = %vector.memcheck258, %vector.body264
  %index265 = phi i64 [ %index.next267, %vector.body264 ], [ 0, %vector.memcheck258 ] ; 3 uses
  %i.gf = shl nuw nsw i64 %index265, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %wide.load = load <4 x i16>, ptr %i.gg, align 1, !alias.scope !1326
  %wide.load266 = load <4 x i16>, ptr %i.gh, align 1, !alias.scope !1326
  %i.gi = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.gj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load266)
  %i.gk = zext <4 x i16> %i.gi to <4 x i32>
  %i.gl = zext <4 x i16> %i.gj to <4 x i32>
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index265 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !94, !alias.scope !1327, !noalias !1326
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !94, !alias.scope !1327, !noalias !1326
  %index.next267 = add nuw i64 %index265, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next267, %i.aa
  br i1 %i.go, label %.lr.ph125.i.i, label %vector.body264, !llvm.loop !1253

.lr.ph.i.i.i:                                     ; preds = %vector.memcheck258, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.i.i ], [ 0, %vector.memcheck258 ] ; 4 uses
  %i.gp = shl nuw nsw i64 %.09.i.i.i, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gp
  %.val.i.i.i = load i16, ptr %i.gq, align 1
  %i.gr = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i)
  %i.gs = zext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.09.i.i.i
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !94
  %i.gu = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gu, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gv
  %.val.i.i.i.1 = load i16, ptr %i.gw, align 1
  %i.gx = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.1)
  %i.gy = zext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.gu
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !94
  %i.ha = add nuw nsw i64 %.09.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.ha, %i.aa
  br i1 %exitcond.not.i.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i.i.i, !llvm.loop !1254

.lr.ph.i82.i.i.preheader:                         ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.lr.ph.i82.i.i.preheader
  %i.hb = getelementptr i8, ptr %.pre.i, i64 %i.dp
  %bound0282 = icmp ult ptr %.pre.i, %scevgep277
  %bound1283 = icmp ult ptr %scevgep278, %i.hb
  %found.conflict284 = and i1 %bound0282, %bound1283
  %i.hc = or i1 %found.conflict284, %stride.check285
  br i1 %i.hc, label %.lr.ph.i82.i.i, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck281, %vector.body287
  %index288 = phi i64 [ %index.next291, %vector.body287 ], [ 0, %vector.memcheck281 ] ; 3 uses
  %i.hd = shl nuw nsw i64 %index288, 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %wide.load289 = load <4 x i16>, ptr %i.he, align 1, !alias.scope !1328
  %wide.load290 = load <4 x i16>, ptr %i.hf, align 1, !alias.scope !1328
  %i.hg = zext <4 x i16> %wide.load289 to <4 x i32>
  %i.hh = zext <4 x i16> %wide.load290 to <4 x i32>
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index288 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <4 x i32> %i.hg, ptr %i.hi, align 4, !tbaa !94, !alias.scope !1329, !noalias !1328
  store <4 x i32> %i.hh, ptr %i.hj, align 4, !tbaa !94, !alias.scope !1329, !noalias !1328
  %index.next291 = add nuw i64 %index288, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next291, %i.aa
  br i1 %i.hk, label %.lr.ph125.i.i, label %vector.body287, !llvm.loop !1258

.lr.ph.i82.i.i:                                   ; preds = %vector.memcheck281, %.lr.ph.i82.i.i
  %.08.i.i.i = phi i64 [ %i.ie, %.lr.ph.i82.i.i ], [ 0, %vector.memcheck281 ] ; 6 uses
  %i.hl = shl nuw nsw i64 %.08.i.i.i, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hl
  %.val.i83.i.i = load i16, ptr %i.hm, align 1
  %i.hn = zext i16 %.val.i83.i.i to i32
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.08.i.i.i
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !94
  %i.hp = or disjoint i64 %.08.i.i.i, 1           ; 2 uses
  %i.hq = shl nuw nsw i64 %i.hp, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hq
  %.val.i83.i.i.1 = load i16, ptr %i.hr, align 1
  %i.hs = zext i16 %.val.i83.i.i.1 to i32
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hp
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !94
  %i.hu = or disjoint i64 %.08.i.i.i, 2           ; 2 uses
  %i.hv = shl nuw nsw i64 %i.hu, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hv
  %.val.i83.i.i.2 = load i16, ptr %i.hw, align 1
  %i.hx = zext i16 %.val.i83.i.i.2 to i32
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hu
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !94
  %i.hz = or disjoint i64 %.08.i.i.i, 3           ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hz, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ia
  %.val.i83.i.i.3 = load i16, ptr %i.ib, align 1
  %i.ic = zext i16 %.val.i83.i.i.3 to i32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hz
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !94
  %i.ie = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i84.i.i.3 = icmp eq i64 %i.ie, %i.aa
  br i1 %exitcond.not.i84.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i82.i.i, !llvm.loop !1259

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.if = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 12 uses
  br i1 %i.av, label %.lr.ph.i86.i.i.preheader, label %bb.f

.lr.ph.i86.i.i.preheader:                         ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i86.i.i.preheader
  %i.ig = getelementptr i8, ptr %.pre.i, i64 %i.dt ; 2 uses
  %i.ih = getelementptr i8, ptr %i.if, i64 %i.dt  ; 2 uses
  %bound0315 = icmp ult ptr %.pre.i, %i.ih
  %bound1316 = icmp ult ptr %i.if, %i.ig
  %found.conflict317 = and i1 %bound0315, %bound1316
  %bound0318 = icmp ult ptr %.pre.i, %scevgep310
  %bound1319 = icmp ult ptr %scevgep311, %i.ig
  %found.conflict320 = and i1 %bound0318, %bound1319
  %i.ii = or i1 %found.conflict320, %stride.check321
  %conflict.rdx322 = or i1 %found.conflict317, %i.ii
  %bound0323 = icmp ult ptr %i.if, %scevgep310
  %bound1324 = icmp ult ptr %scevgep311, %i.ih
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  br i1 %conflict.rdx326, label %.lr.ph.i86.i.i, label %vector.body328

vector.body328:                                   ; preds = %vector.memcheck314, %vector.body328
  %index329 = phi i64 [ %index.next331, %vector.body328 ], [ 0, %vector.memcheck314 ] ; 4 uses
  %i.ij = shl nuw nsw i64 %index329, 2
  %i.ik = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ij
  %wide.vec = load <8 x i16>, ptr %i.ik, align 1, !alias.scope !1330
  %wide.vec.fr = freeze <8 x i16> %wide.vec       ; 2 uses
  %i.il = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %i.im = bitcast <8 x i16> %i.il to <4 x i32>
  %i.in = and <4 x i32> %i.im, splat (i32 65535)
  %i.io = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %i.ip = bitcast <8 x i16> %i.io to <4 x i32>
  %i.iq = lshr <4 x i32> %i.ip, splat (i32 16)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index329
  store <4 x i32> %i.in, ptr %i.ir, align 4, !tbaa !94, !alias.scope !1331, !noalias !1332
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index329
  store <4 x i32> %i.iq, ptr %i.is, align 4, !tbaa !94, !alias.scope !1333, !noalias !1330
  %index.next331 = add nuw i64 %index329, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next331, %i.aa
  br i1 %i.it, label %.lr.ph125.i.i, label %vector.body328, !llvm.loop !1264

.lr.ph.i86.i.i:                                   ; preds = %vector.memcheck314, %.lr.ph.i86.i.i
  %.017.i.i.i = phi i64 [ %i.jn, %.lr.ph.i86.i.i ], [ 0, %vector.memcheck314 ] ; 5 uses
  %i.iu = shl nuw nsw i64 %.017.i.i.i, 2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.iu ; 2 uses
  %.val15.i.i.i = load i16, ptr %i.iv, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %.val.i87.i.i = load i16, ptr %i.iw, align 1
  %i.ix = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i)
  %i.iy = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i)
  %i.iz = zext i16 %i.ix to i32
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.017.i.i.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !94
  %i.jb = zext i16 %i.iy to i32
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.017.i.i.i
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !94
  %i.jd = or disjoint i64 %.017.i.i.i, 1          ; 3 uses
  %i.je = shl nuw nsw i64 %i.jd, 2
  %i.jf = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.je ; 2 uses
  %.val15.i.i.i.1 = load i16, ptr %i.jf, align 1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %.val.i87.i.i.1 = load i16, ptr %i.jg, align 1
  %i.jh = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.1)
  %i.ji = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i.1)
  %i.jj = zext i16 %i.jh to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.jd
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !94
  %i.jl = zext i16 %i.ji to i32
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jd
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !94
  %i.jn = add nuw nsw i64 %.017.i.i.i, 2          ; 2 uses
  %exitcond.not.i88.i.i.1 = icmp eq i64 %i.jn, %i.aa
  br i1 %exitcond.not.i88.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i86.i.i, !llvm.loop !1265

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i.preheader

.lr.ph.i90.i.i.preheader:                         ; preds = %bb.f
  br i1 %min.iters.check353, label %.lr.ph.i90.i.i.preheader540, label %vector.memcheck354

.lr.ph.i90.i.i.preheader540:                      ; preds = %vector.memcheck354, %.lr.ph.i90.i.i.preheader
  br label %.lr.ph.i90.i.i

vector.memcheck354:                               ; preds = %.lr.ph.i90.i.i.preheader
  %i.jo = getelementptr i8, ptr %.pre.i, i64 %i.dz ; 2 uses
  %i.jp = getelementptr i8, ptr %i.if, i64 %i.dz  ; 2 uses
  %bound0355.a = icmp ult ptr %.pre.i, %i.jp
  %bound1356.a = icmp ult ptr %i.if, %i.jo
  %found.conflict357.a = and i1 %bound0355.a, %bound1356.a
  %bound0358 = icmp ult ptr %.pre.i, %scevgep350
  %bound1359 = icmp ult ptr %scevgep351, %i.jo
  %found.conflict360 = and i1 %bound0358, %bound1359
  %i.jq = or i1 %found.conflict360, %stride.check361
  %conflict.rdx362 = or i1 %found.conflict357.a, %i.jq
  %bound0363 = icmp ult ptr %i.if, %scevgep350
  %bound1364 = icmp ult ptr %scevgep351, %i.jp
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict365
  br i1 %conflict.rdx366, label %.lr.ph.i90.i.i.preheader540, label %vector.body368

vector.body368:                                   ; preds = %vector.memcheck354, %vector.body368
  %index369 = phi i64 [ %index.next373, %vector.body368 ], [ 0, %vector.memcheck354 ] ; 4 uses
  %i.jr = shl nuw nsw i64 %index369, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.jr
  %wide.vec370 = load <8 x i16>, ptr %i.js, align 1, !alias.scope !1334
  %i.jt = freeze <8 x i16> %wide.vec370           ; 2 uses
  %i.ju = bitcast <8 x i16> %i.jt to <4 x i32>
  %i.jv = bitcast <8 x i16> %i.jt to <4 x i32>
  %i.jw = and <4 x i32> %i.jv, splat (i32 65535)
  %i.jx = lshr <4 x i32> %i.ju, splat (i32 16)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index369
  store <4 x i32> %i.jw, ptr %i.jy, align 4, !tbaa !94, !alias.scope !1335, !noalias !1336
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index369
  store <4 x i32> %i.jx, ptr %i.jz, align 4, !tbaa !94, !alias.scope !1337, !noalias !1334
  %index.next373 = add nuw i64 %index369, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next373, %i.aa
  br i1 %i.ka, label %.lr.ph125.i.i, label %vector.body368, !llvm.loop !1270

.lr.ph.i90.i.i:                                   ; preds = %.lr.ph.i90.i.i, %.lr.ph.i90.i.i.preheader540
  %.015.i.i.i = phi i64 [ 0, %.lr.ph.i90.i.i.preheader540 ], [ %i.kq, %.lr.ph.i90.i.i ] ; 5 uses
  %i.kb = shl nuw nsw i64 %.015.i.i.i, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kb ; 2 uses
  %.val13.i.i.i = load i16, ptr %i.kc, align 1
  %i.kd = zext i16 %.val13.i.i.i to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %.val.i91.i.i = load i16, ptr %i.ke, align 1
  %i.kf = zext i16 %.val.i91.i.i to i32
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.015.i.i.i
  store i32 %i.kd, ptr %i.kg, align 4, !tbaa !94
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.015.i.i.i
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !94
  %i.ki = or disjoint i64 %.015.i.i.i, 1          ; 3 uses
  %i.kj = shl nuw nsw i64 %i.ki, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kj ; 2 uses
  %.val13.i.i.i.1 = load i16, ptr %i.kk, align 1
  %i.kl = zext i16 %.val13.i.i.i.1 to i32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %.val.i91.i.i.1 = load i16, ptr %i.km, align 1
  %i.kn = zext i16 %.val.i91.i.i.1 to i32
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.ki
  store i32 %i.kl, ptr %i.ko, align 4, !tbaa !94
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ki
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !94
  %i.kq = add nuw nsw i64 %.015.i.i.i, 2          ; 2 uses
  %exitcond.not.i92.i.i.1 = icmp eq i64 %i.kq, %i.aa
  br i1 %exitcond.not.i92.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i, !llvm.loop !1271

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.kr = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 12 uses
  %i.ks = load ptr, ptr %i.cl, align 16, !tbaa !101 ; 12 uses
  br i1 %i.av, label %.lr.ph.i94.i.i.preheader, label %.lr.ph.i98.i.i.preheader

.lr.ph.i94.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.i94.i.i.preheader
  %i.kt = getelementptr i8, ptr %i.kr, i64 %i.ei  ; 3 uses
  %i.ku = getelementptr i8, ptr %i.ks, i64 %i.ei  ; 3 uses
  %i.kv = getelementptr i8, ptr %.pre.i, i64 %i.ei ; 3 uses
  %bound0410 = icmp ult ptr %i.kr, %i.ku
  %bound1411 = icmp ult ptr %i.ks, %i.kt
  %found.conflict412 = and i1 %bound0410, %bound1411
  %bound0413.a = icmp ult ptr %i.kr, %i.kv
  %bound1414.a = icmp ult ptr %.pre.i, %i.kt
  %found.conflict415.a = and i1 %bound0413.a, %bound1414.a
  %conflict.rdx416.a = or i1 %found.conflict412, %found.conflict415.a
  %bound0417.a = icmp ult ptr %i.kr, %scevgep405
  %bound1418.a = icmp ult ptr %scevgep406, %i.kt
  %found.conflict419.a = and i1 %bound0417.a, %bound1418.a
  %i.kw = or i1 %found.conflict419.a, %stride.check420
  %conflict.rdx421 = or i1 %conflict.rdx416.a, %i.kw
  %bound0422 = icmp ult ptr %i.ks, %i.kv
  %bound1423 = icmp ult ptr %.pre.i, %i.ku
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %i.ks, %scevgep405
  %bound1427 = icmp ult ptr %scevgep406, %i.ku
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %.pre.i, %scevgep405
  %bound1431 = icmp ult ptr %scevgep406, %i.kv
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  br i1 %conflict.rdx433, label %.lr.ph.i94.i.i, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck409, %vector.body435
  %index436 = phi i64 [ %index.next437, %vector.body435 ], [ 0, %vector.memcheck409 ] ; 8 uses
  %i.kx = mul nuw nsw i64 %index436, 6
  %i.ky = mul nuw i64 %index436, 6
  %i.kz = mul nuw i64 %index436, 6
  %i.la = mul nuw i64 %index436, 6
  %i.lb = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kx ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ky ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 6
  %i.le = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kz ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.la ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 18
  %i.li = load i16, ptr %i.lb, align 1, !alias.scope !1338
  %i.lj = load i16, ptr %i.ld, align 1, !alias.scope !1338
  %i.lk = load i16, ptr %i.lf, align 1, !alias.scope !1338
  %i.ll = load i16, ptr %i.lh, align 1, !alias.scope !1338
  %i.lm = insertelement <4 x i16> poison, i16 %i.li, i64 0
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lj, i64 1
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.lk, i64 2
  %i.lp = insertelement <4 x i16> %i.lo, i16 %i.ll, i64 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.le, i64 14
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 20
  %i.lu = load i16, ptr %i.lq, align 1, !alias.scope !1338
  %i.lv = load i16, ptr %i.lr, align 1, !alias.scope !1338
  %i.lw = load i16, ptr %i.ls, align 1, !alias.scope !1338
  %i.lx = load i16, ptr %i.lt, align 1, !alias.scope !1338
  %i.ly = insertelement <4 x i16> poison, i16 %i.lu, i64 0
  %i.lz = insertelement <4 x i16> %i.ly, i16 %i.lv, i64 1
  %i.ma = insertelement <4 x i16> %i.lz, i16 %i.lw, i64 2
  %i.mb = insertelement <4 x i16> %i.ma, i16 %i.lx, i64 3
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lc, i64 10
  %i.me = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lg, i64 22
  %i.mg = load i16, ptr %i.mc, align 1, !alias.scope !1338
  %i.mh = load i16, ptr %i.md, align 1, !alias.scope !1338
  %i.mi = load i16, ptr %i.me, align 1, !alias.scope !1338
  %i.mj = load i16, ptr %i.mf, align 1, !alias.scope !1338
  %i.mk = insertelement <4 x i16> poison, i16 %i.mg, i64 0
  %i.ml = insertelement <4 x i16> %i.mk, i16 %i.mh, i64 1
  %i.mm = insertelement <4 x i16> %i.ml, i16 %i.mi, i64 2
  %i.mn = insertelement <4 x i16> %i.mm, i16 %i.mj, i64 3
  %i.mo = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.lp)
  %i.mp = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.mb)
  %i.mq = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.mn)
  %i.mr = zext <4 x i16> %i.mo to <4 x i32>
  %i.ms = zext <4 x i16> %i.mp to <4 x i32>
  %i.mt = zext <4 x i16> %i.mq to <4 x i32>       ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index436
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index436
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index436
  %i.mx = sub nsw <4 x i32> %i.mr, %i.mt          ; 2 uses
  store <4 x i32> %i.mx, ptr %i.mv, align 4, !tbaa !94, !alias.scope !1339, !noalias !1340
  %i.my = ashr <4 x i32> %i.mx, splat (i32 1)
  %i.mz = add nsw <4 x i32> %i.my, %i.mt          ; 2 uses
  %i.na = sub nsw <4 x i32> %i.ms, %i.mz          ; 2 uses
  store <4 x i32> %i.na, ptr %i.mw, align 4, !tbaa !94, !alias.scope !1341, !noalias !1342
  %i.nb = ashr <4 x i32> %i.na, splat (i32 1)
  %i.nc = add nsw <4 x i32> %i.nb, %i.mz
  store <4 x i32> %i.nc, ptr %i.mu, align 4, !tbaa !94, !alias.scope !1343, !noalias !1338
  %index.next437 = add nuw i64 %index436, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next437, %i.aa
  br i1 %i.nd, label %.lr.ph125.i.i, label %vector.body435, !llvm.loop !1277

.lr.ph.i94.i.i:                                   ; preds = %vector.memcheck409, %.lr.ph.i94.i.i
  %.025.i.i.i = phi i64 [ %i.nx, %.lr.ph.i94.i.i ], [ 0, %vector.memcheck409 ] ; 5 uses
  %i.ne = mul nuw nsw i64 %.025.i.i.i, 6
  %i.nf = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ne ; 3 uses
  %.val23.i.i.i = load i16, ptr %i.nf, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %.val21.i.i.i = load i16, ptr %i.ng, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %.val.i95.i.i = load i16, ptr %i.nh, align 1
  %i.ni = call noundef i16 @llvm.bswap.i16(i16 %.val23.i.i.i)
  %i.nj = call noundef i16 @llvm.bswap.i16(i16 %.val21.i.i.i)
  %i.nk = call noundef i16 @llvm.bswap.i16(i16 %.val.i95.i.i)
  %i.nl = zext i16 %i.ni to i32
  %i.nm = zext i16 %i.nj to i32
  %i.nn = zext i16 %i.nk to i32                   ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.025.i.i.i
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.025.i.i.i
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.025.i.i.i
  %i.nr = sub nsw i32 %i.nl, %i.nn                ; 2 uses
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !94
  %i.ns = ashr i32 %i.nr, 1
  %i.nt = add nsw i32 %i.ns, %i.nn                ; 2 uses
  %i.nu = sub nsw i32 %i.nm, %i.nt                ; 2 uses
  store i32 %i.nu, ptr %i.nq, align 4, !tbaa !94
  %i.nv = ashr i32 %i.nu, 1
  %i.nw = add nsw i32 %i.nv, %i.nt
  store i32 %i.nw, ptr %i.no, align 4, !tbaa !94
  %i.nx = add nuw nsw i64 %.025.i.i.i, 1          ; 2 uses
  %exitcond.not.i96.i.i = icmp eq i64 %i.nx, %i.aa
  br i1 %exitcond.not.i96.i.i, label %.lr.ph125.i.i, label %.lr.ph.i94.i.i, !llvm.loop !1278

.lr.ph.i98.i.i.preheader:                         ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph.i98.i.i.preheader
  %i.ny = getelementptr i8, ptr %i.kr, i64 %i.ep  ; 3 uses
  %i.nz = getelementptr i8, ptr %i.ks, i64 %i.ep  ; 3 uses
  %i.oa = getelementptr i8, ptr %.pre.i, i64 %i.ep ; 3 uses
  %bound0474 = icmp ult ptr %i.kr, %i.nz
  %bound1475 = icmp ult ptr %i.ks, %i.ny
  %found.conflict476 = and i1 %bound0474, %bound1475
  %bound0477 = icmp ult ptr %i.kr, %i.oa
  %bound1478 = icmp ult ptr %.pre.i, %i.ny
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %found.conflict476, %found.conflict479
  %bound0481 = icmp ult ptr %i.kr, %scevgep469
  %bound1482 = icmp ult ptr %scevgep470, %i.ny
  %found.conflict483 = and i1 %bound0481, %bound1482
  %i.ob = or i1 %found.conflict483, %stride.check484
  %conflict.rdx485 = or i1 %conflict.rdx480, %i.ob
  %bound0486 = icmp ult ptr %i.ks, %i.oa
  %bound1487 = icmp ult ptr %.pre.i, %i.nz
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.ks, %scevgep469
  %bound1491 = icmp ult ptr %scevgep470, %i.nz
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %.pre.i, %scevgep469
  %bound1495 = icmp ult ptr %scevgep470, %i.oa
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  br i1 %conflict.rdx497, label %.lr.ph.i98.i.i, label %vector.body499

vector.body499:                                   ; preds = %vector.memcheck473, %vector.body499
  %index500 = phi i64 [ %index.next501, %vector.body499 ], [ 0, %vector.memcheck473 ] ; 8 uses
  %i.oc = mul nuw nsw i64 %index500, 6
  %i.od = mul nuw i64 %index500, 6
  %i.oe = mul nuw i64 %index500, 6
  %i.of = mul nuw i64 %index500, 6
  %i.og = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.oc ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.od ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 6
  %i.oj = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.oe ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  %i.ol = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.of ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 18
  %i.on = load i16, ptr %i.og, align 1, !alias.scope !1344
  %i.oo = load i16, ptr %i.oi, align 1, !alias.scope !1344
  %i.op = load i16, ptr %i.ok, align 1, !alias.scope !1344
  %i.oq = load i16, ptr %i.om, align 1, !alias.scope !1344
  %i.or = insertelement <4 x i16> poison, i16 %i.on, i64 0
  %i.os = insertelement <4 x i16> %i.or, i16 %i.oo, i64 1
  %i.ot = insertelement <4 x i16> %i.os, i16 %i.op, i64 2
  %i.ou = insertelement <4 x i16> %i.ot, i16 %i.oq, i64 3
  %i.ov = zext <4 x i16> %i.ou to <4 x i32>
  %i.ow = getelementptr inbounds nuw i8, ptr %i.og, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oj, i64 14
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %i.pa = load i16, ptr %i.ow, align 1, !alias.scope !1344
  %i.pb = load i16, ptr %i.ox, align 1, !alias.scope !1344
  %i.pc = load i16, ptr %i.oy, align 1, !alias.scope !1344
  %i.pd = load i16, ptr %i.oz, align 1, !alias.scope !1344
  %i.pe = insertelement <4 x i16> poison, i16 %i.pa, i64 0
  %i.pf = insertelement <4 x i16> %i.pe, i16 %i.pb, i64 1
  %i.pg = insertelement <4 x i16> %i.pf, i16 %i.pc, i64 2
  %i.ph = insertelement <4 x i16> %i.pg, i16 %i.pd, i64 3
  %i.pi = zext <4 x i16> %i.ph to <4 x i32>
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oh, i64 10
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ol, i64 22
  %i.pn = load i16, ptr %i.pj, align 1, !alias.scope !1344
  %i.po = load i16, ptr %i.pk, align 1, !alias.scope !1344
  %i.pp = load i16, ptr %i.pl, align 1, !alias.scope !1344
  %i.pq = load i16, ptr %i.pm, align 1, !alias.scope !1344
  %i.pr = insertelement <4 x i16> poison, i16 %i.pn, i64 0
  %i.ps = insertelement <4 x i16> %i.pr, i16 %i.po, i64 1
  %i.pt = insertelement <4 x i16> %i.ps, i16 %i.pp, i64 2
  %i.pu = insertelement <4 x i16> %i.pt, i16 %i.pq, i64 3
  %i.pv = zext <4 x i16> %i.pu to <4 x i32>       ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index500
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %index500
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index500
  %i.pz = sub nsw <4 x i32> %i.ov, %i.pv          ; 2 uses
  store <4 x i32> %i.pz, ptr %i.px, align 4, !tbaa !94, !alias.scope !1345, !noalias !1346
  %i.qa = ashr <4 x i32> %i.pz, splat (i32 1)
  %i.qb = add nsw <4 x i32> %i.qa, %i.pv          ; 2 uses
  %i.qc = sub nsw <4 x i32> %i.pi, %i.qb          ; 2 uses
  store <4 x i32> %i.qc, ptr %i.py, align 4, !tbaa !94, !alias.scope !1347, !noalias !1348
  %i.qd = ashr <4 x i32> %i.qc, splat (i32 1)
  %i.qe = add nsw <4 x i32> %i.qd, %i.qb
  store <4 x i32> %i.qe, ptr %i.pw, align 4, !tbaa !94, !alias.scope !1349, !noalias !1344
  %index.next501 = add nuw i64 %index500, 4       ; 2 uses
  %i.qf = icmp eq i64 %index.next501, %i.aa
  br i1 %i.qf, label %.lr.ph125.i.i, label %vector.body499, !llvm.loop !1284

.lr.ph.i98.i.i:                                   ; preds = %vector.memcheck473, %.lr.ph.i98.i.i
  %.022.i.i.i = phi i64 [ %i.qw, %.lr.ph.i98.i.i ], [ 0, %vector.memcheck473 ] ; 5 uses
  %i.qg = mul nuw nsw i64 %.022.i.i.i, 6
  %i.qh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.qg ; 3 uses
  %.val20.i.i.i = load i16, ptr %i.qh, align 1
  %i.qi = zext i16 %.val20.i.i.i to i32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %.val18.i.i.i = load i16, ptr %i.qj, align 1
  %i.qk = zext i16 %.val18.i.i.i to i32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %.val.i99.i.i = load i16, ptr %i.ql, align 1
  %i.qm = zext i16 %.val.i99.i.i to i32           ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.022.i.i.i
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.022.i.i.i
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.022.i.i.i
  %i.qq = sub nsw i32 %i.qi, %i.qm                ; 2 uses
  store i32 %i.qq, ptr %i.qo, align 4, !tbaa !94
  %i.qr = ashr i32 %i.qq, 1
  %i.qs = add nsw i32 %i.qr, %i.qm                ; 2 uses
  %i.qt = sub nsw i32 %i.qk, %i.qs                ; 2 uses
  store i32 %i.qt, ptr %i.qp, align 4, !tbaa !94
  %i.qu = ashr i32 %i.qt, 1
  %i.qv = add nsw i32 %i.qu, %i.qs
  store i32 %i.qv, ptr %i.qn, align 4, !tbaa !94
  %i.qw = add nuw nsw i64 %.022.i.i.i, 1          ; 2 uses
  %exitcond.not.i100.i.i = icmp eq i64 %i.qw, %i.aa
  br i1 %exitcond.not.i100.i.i, label %.lr.ph125.i.i, label %.lr.ph.i98.i.i, !llvm.loop !1285

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.qx = phi ptr [ %.pre70.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.qy = phi ptr [ %.pre69.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.qz = phi ptr [ %.pre68.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  %i.ra = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 14 uses
  br i1 %i.av, label %.lr.ph.i102.i.i.preheader, label %bb.h

.lr.ph.i102.i.i.preheader:                        ; preds = %._crit_edge.thread.i.i
  br i1 %.not.i97.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i102.i.i.preheader
  %i.rb = getelementptr i8, ptr %i.qz, i64 %i.cu  ; 4 uses
  %i.rc = getelementptr i8, ptr %i.qy, i64 %i.cu  ; 4 uses
  %i.rd = getelementptr i8, ptr %i.ra, i64 %i.cu  ; 4 uses
  %i.re = getelementptr i8, ptr %i.qx, i64 %i.cu  ; 4 uses
  %bound0 = icmp ult ptr %i.qz, %i.rc
  %bound1 = icmp ult ptr %i.qy, %i.rb
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %i.qz, %i.rd
  %bound1116 = icmp ult ptr %i.ra, %i.rb
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %i.qz, %i.re
  %bound1119 = icmp ult ptr %i.qx, %i.rb
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %bound0122 = icmp ult ptr %i.qz, %scevgep
  %bound1123 = icmp ult ptr %scevgep114, %i.rb
  %found.conflict124 = and i1 %bound0122, %bound1123
  %i.rf = or i1 %found.conflict124, %stride.check
  %conflict.rdx125 = or i1 %conflict.rdx121, %i.rf
  %bound0126 = icmp ult ptr %i.qy, %i.rd
  %bound1127 = icmp ult ptr %i.ra, %i.rc
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  %bound0130 = icmp ult ptr %i.qy, %i.re
  %bound1131 = icmp ult ptr %i.qx, %i.rc
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %i.qy, %scevgep
  %bound1135 = icmp ult ptr %scevgep114, %i.rc
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %i.ra, %i.re
  %bound1139 = icmp ult ptr %i.qx, %i.rd
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.ra, %scevgep
  %bound1143 = icmp ult ptr %scevgep114, %i.rd
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %i.qx, %scevgep
  %bound1147 = icmp ult ptr %scevgep114, %i.re
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %.lr.ph.i102.i.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.rg = shl nuw nsw i64 %index, 3
  %i.rh = shl i64 %index, 3
  %i.ri = shl i64 %index, 3
  %i.rj = shl i64 %index, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.rg ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.rh ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ri ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.rj ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load i16, ptr %i.rk, align 1, !alias.scope !1350
  %i.rs = load i16, ptr %i.rm, align 1, !alias.scope !1350
  %i.rt = load i16, ptr %i.ro, align 1, !alias.scope !1350
  %i.ru = load i16, ptr %i.rq, align 1, !alias.scope !1350
  %i.rv = insertelement <4 x i16> poison, i16 %i.rr, i64 0
  %i.rw = insertelement <4 x i16> %i.rv, i16 %i.rs, i64 1
  %i.rx = insertelement <4 x i16> %i.rw, i16 %i.rt, i64 2
  %i.ry = insertelement <4 x i16> %i.rx, i16 %i.ru, i64 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rk, i64 2
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rl, i64 10
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 18
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rp, i64 26
  %i.sd = load i16, ptr %i.rz, align 1, !alias.scope !1350
  %i.se = load i16, ptr %i.sa, align 1, !alias.scope !1350
  %i.sf = load i16, ptr %i.sb, align 1, !alias.scope !1350
  %i.sg = load i16, ptr %i.sc, align 1, !alias.scope !1350
  %i.sh = insertelement <4 x i16> poison, i16 %i.sd, i64 0
  %i.si = insertelement <4 x i16> %i.sh, i16 %i.se, i64 1
  %i.sj = insertelement <4 x i16> %i.si, i16 %i.sf, i64 2
  %i.sk = insertelement <4 x i16> %i.sj, i16 %i.sg, i64 3
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rn, i64 20
  %i.so = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  %i.sp = load i16, ptr %i.sl, align 1, !alias.scope !1350
  %i.sq = load i16, ptr %i.sm, align 1, !alias.scope !1350
  %i.sr = load i16, ptr %i.sn, align 1, !alias.scope !1350
  %i.ss = load i16, ptr %i.so, align 1, !alias.scope !1350
  %i.st = insertelement <4 x i16> poison, i16 %i.sp, i64 0
  %i.su = insertelement <4 x i16> %i.st, i16 %i.sq, i64 1
  %i.sv = insertelement <4 x i16> %i.su, i16 %i.sr, i64 2
  %i.sw = insertelement <4 x i16> %i.sv, i16 %i.ss, i64 3
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rk, i64 6
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rl, i64 14
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rn, i64 22
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rp, i64 30
  %i.tb = load i16, ptr %i.sx, align 1, !alias.scope !1350
  %i.tc = load i16, ptr %i.sy, align 1, !alias.scope !1350
  %i.td = load i16, ptr %i.sz, align 1, !alias.scope !1350
  %i.te = load i16, ptr %i.ta, align 1, !alias.scope !1350
  %i.tf = insertelement <4 x i16> poison, i16 %i.tb, i64 0
  %i.tg = insertelement <4 x i16> %i.tf, i16 %i.tc, i64 1
  %i.th = insertelement <4 x i16> %i.tg, i16 %i.td, i64 2
  %i.ti = insertelement <4 x i16> %i.th, i16 %i.te, i64 3
  %i.tj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ry)
  %i.tk = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.sk)
  %i.tl = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.sw)
  %i.tm = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ti)
  %i.tn = zext <4 x i16> %i.tj to <4 x i32>
  %i.to = zext <4 x i16> %i.tk to <4 x i32>
  %i.tp = zext <4 x i16> %i.tl to <4 x i32>       ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %index
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %index
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index
  %i.tt = sub nsw <4 x i32> %i.tn, %i.tp          ; 2 uses
  store <4 x i32> %i.tt, ptr %i.tr, align 4, !tbaa !94, !alias.scope !1351, !noalias !1352
  %i.tu = ashr <4 x i32> %i.tt, splat (i32 1)
  %i.tv = add nsw <4 x i32> %i.tu, %i.tp          ; 2 uses
  %i.tw = sub nsw <4 x i32> %i.to, %i.tv          ; 2 uses
  store <4 x i32> %i.tw, ptr %i.ts, align 4, !tbaa !94, !alias.scope !1353, !noalias !1354
  %i.tx = ashr <4 x i32> %i.tw, splat (i32 1)
  %i.ty = add nsw <4 x i32> %i.tx, %i.tv
  store <4 x i32> %i.ty, ptr %i.tq, align 4, !tbaa !94, !alias.scope !1355, !noalias !1356
  %i.tz = zext <4 x i16> %i.tm to <4 x i32>
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %index
  store <4 x i32> %i.tz, ptr %i.ua, align 4, !tbaa !94, !alias.scope !1357, !noalias !1350
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ub = icmp eq i64 %index.next, %i.aa
  br i1 %i.ub, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %vector.body, !llvm.loop !1292

.lr.ph.i102.i.i:                                  ; preds = %vector.memcheck, %.lr.ph.i102.i.i
  %.033.i.i.i = phi i64 [ %i.uz, %.lr.ph.i102.i.i ], [ 0, %vector.memcheck ] ; 6 uses
  %i.uc = shl nuw nsw i64 %.033.i.i.i, 3
  %i.ud = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.uc ; 4 uses
  %.val31.i.i.i = load i16, ptr %i.ud, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 2
  %.val29.i.i.i = load i16, ptr %i.ue, align 1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %.val27.i.i.i = load i16, ptr %i.uf, align 1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 6
  %.val.i103.i.i = load i16, ptr %i.ug, align 1
  %i.uh = call noundef i16 @llvm.bswap.i16(i16 %.val31.i.i.i)
  %i.ui = call noundef i16 @llvm.bswap.i16(i16 %.val29.i.i.i)
  %i.uj = call noundef i16 @llvm.bswap.i16(i16 %.val27.i.i.i)
  %i.uk = call noundef i16 @llvm.bswap.i16(i16 %.val.i103.i.i)
  %i.ul = zext i16 %i.uh to i32
  %i.um = zext i16 %i.ui to i32
  %i.un = zext i16 %i.uj to i32                   ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.033.i.i.i
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %.033.i.i.i
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %.033.i.i.i
  %i.ur = sub nsw i32 %i.ul, %i.un                ; 2 uses
  store i32 %i.ur, ptr %i.up, align 4, !tbaa !94
  %i.us = ashr i32 %i.ur, 1
  %i.ut = add nsw i32 %i.us, %i.un                ; 2 uses
  %i.uu = sub nsw i32 %i.um, %i.ut                ; 2 uses
  store i32 %i.uu, ptr %i.uq, align 4, !tbaa !94
  %i.uv = ashr i32 %i.uu, 1
  %i.uw = add nsw i32 %i.uv, %i.ut
  store i32 %i.uw, ptr %i.uo, align 4, !tbaa !94
  %i.ux = zext i16 %i.uk to i32
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %.033.i.i.i
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !94
  %i.uz = add nuw nsw i64 %.033.i.i.i, 1          ; 2 uses
  %exitcond.not.i104.i.i = icmp eq i64 %i.uz, %i.aa
  br i1 %exitcond.not.i104.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %.lr.ph.i102.i.i, !llvm.loop !1293

bb.h:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not.i97.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %.lr.ph.i106.i.i.preheader

.lr.ph.i106.i.i.preheader:                        ; preds = %bb.h
  br i1 %min.iters.check199, label %.lr.ph.i106.i.i.preheader529, label %vector.memcheck200

.lr.ph.i106.i.i.preheader529:                     ; preds = %vector.memcheck200, %.lr.ph.i106.i.i.preheader
  br label %.lr.ph.i106.i.i

vector.memcheck200:                               ; preds = %.lr.ph.i106.i.i.preheader
  %i.va = getelementptr i8, ptr %i.qz, i64 %i.db  ; 4 uses
  %i.vb = getelementptr i8, ptr %i.qy, i64 %i.db  ; 4 uses
  %i.vc = getelementptr i8, ptr %i.ra, i64 %i.db  ; 4 uses
  %i.vd = getelementptr i8, ptr %i.qx, i64 %i.db  ; 4 uses
  %bound0201 = icmp ult ptr %i.qz, %i.vb
  %bound1202 = icmp ult ptr %i.qy, %i.va
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0204 = icmp ult ptr %i.qz, %i.vc
  %bound1205 = icmp ult ptr %i.ra, %i.va
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %found.conflict203, %found.conflict206
  %bound0208 = icmp ult ptr %i.qz, %i.vd
  %bound1209 = icmp ult ptr %i.qx, %i.va
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %i.qz, %scevgep196
  %bound1213 = icmp ult ptr %scevgep197, %i.va
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.ve = or i1 %found.conflict214, %stride.check215
  %conflict.rdx216 = or i1 %conflict.rdx211, %i.ve
  %bound0217 = icmp ult ptr %i.qy, %i.vc
  %bound1218 = icmp ult ptr %i.ra, %i.vb
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.qy, %i.vd
  %bound1222 = icmp ult ptr %i.qx, %i.vb
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.qy, %scevgep196
  %bound1226 = icmp ult ptr %scevgep197, %i.vb
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.ra, %i.vd
  %bound1230 = icmp ult ptr %i.qx, %i.vc
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.ra, %scevgep196
  %bound1234 = icmp ult ptr %scevgep197, %i.vc
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %i.qx, %scevgep196
  %bound1238 = icmp ult ptr %scevgep197, %i.vd
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  br i1 %conflict.rdx240, label %.lr.ph.i106.i.i.preheader529, label %vector.body242

vector.body242:                                   ; preds = %vector.memcheck200, %vector.body242
  %index243 = phi i64 [ %index.next244, %vector.body242 ], [ 0, %vector.memcheck200 ] ; 9 uses
  %i.vf = shl nuw nsw i64 %index243, 3
  %i.vg = shl i64 %index243, 3
  %i.vh = shl i64 %index243, 3
  %i.vi = shl i64 %index243, 3
  %i.vj = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.vf ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.vg ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.vh ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.vi ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vq = load i16, ptr %i.vj, align 1, !alias.scope !1358
  %i.vr = load i16, ptr %i.vl, align 1, !alias.scope !1358
  %i.vs = load i16, ptr %i.vn, align 1, !alias.scope !1358
  %i.vt = load i16, ptr %i.vp, align 1, !alias.scope !1358
  %i.vu = insertelement <4 x i16> poison, i16 %i.vq, i64 0
  %i.vv = insertelement <4 x i16> %i.vu, i16 %i.vr, i64 1
  %i.vw = insertelement <4 x i16> %i.vv, i16 %i.vs, i64 2
  %i.vx = insertelement <4 x i16> %i.vw, i16 %i.vt, i64 3
  %i.vy = zext <4 x i16> %i.vx to <4 x i32>
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vk, i64 10
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vm, i64 18
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vo, i64 26
  %i.wd = load i16, ptr %i.vz, align 1, !alias.scope !1358
  %i.we = load i16, ptr %i.wa, align 1, !alias.scope !1358
  %i.wf = load i16, ptr %i.wb, align 1, !alias.scope !1358
  %i.wg = load i16, ptr %i.wc, align 1, !alias.scope !1358
  %i.wh = insertelement <4 x i16> poison, i16 %i.wd, i64 0
  %i.wi = insertelement <4 x i16> %i.wh, i16 %i.we, i64 1
  %i.wj = insertelement <4 x i16> %i.wi, i16 %i.wf, i64 2
  %i.wk = insertelement <4 x i16> %i.wj, i16 %i.wg, i64 3
  %i.wl = zext <4 x i16> %i.wk to <4 x i32>
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vk, i64 12
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vm, i64 20
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vo, i64 28
  %i.wq = load i16, ptr %i.wm, align 1, !alias.scope !1358
  %i.wr = load i16, ptr %i.wn, align 1, !alias.scope !1358
  %i.ws = load i16, ptr %i.wo, align 1, !alias.scope !1358
  %i.wt = load i16, ptr %i.wp, align 1, !alias.scope !1358
  %i.wu = insertelement <4 x i16> poison, i16 %i.wq, i64 0
  %i.wv = insertelement <4 x i16> %i.wu, i16 %i.wr, i64 1
  %i.ww = insertelement <4 x i16> %i.wv, i16 %i.ws, i64 2
  %i.wx = insertelement <4 x i16> %i.ww, i16 %i.wt, i64 3
  %i.wy = zext <4 x i16> %i.wx to <4 x i32>       ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vj, i64 6
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vk, i64 14
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vm, i64 22
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vo, i64 30
  %i.xd = load i16, ptr %i.wz, align 1, !alias.scope !1358
  %i.xe = load i16, ptr %i.xa, align 1, !alias.scope !1358
  %i.xf = load i16, ptr %i.xb, align 1, !alias.scope !1358
  %i.xg = load i16, ptr %i.xc, align 1, !alias.scope !1358
  %i.xh = insertelement <4 x i16> poison, i16 %i.xd, i64 0
  %i.xi = insertelement <4 x i16> %i.xh, i16 %i.xe, i64 1
  %i.xj = insertelement <4 x i16> %i.xi, i16 %i.xf, i64 2
  %i.xk = insertelement <4 x i16> %i.xj, i16 %i.xg, i64 3
  %i.xl = zext <4 x i16> %i.xk to <4 x i32>
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %index243
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %index243
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index243
  %i.xp = sub nsw <4 x i32> %i.vy, %i.wy          ; 2 uses
  store <4 x i32> %i.xp, ptr %i.xn, align 4, !tbaa !94, !alias.scope !1359, !noalias !1360
  %i.xq = ashr <4 x i32> %i.xp, splat (i32 1)
  %i.xr = add nsw <4 x i32> %i.xq, %i.wy          ; 2 uses
  %i.xs = sub nsw <4 x i32> %i.wl, %i.xr          ; 2 uses
  store <4 x i32> %i.xs, ptr %i.xo, align 4, !tbaa !94, !alias.scope !1361, !noalias !1362
  %i.xt = ashr <4 x i32> %i.xs, splat (i32 1)
  %i.xu = add nsw <4 x i32> %i.xt, %i.xr
  store <4 x i32> %i.xu, ptr %i.xm, align 4, !tbaa !94, !alias.scope !1363, !noalias !1364
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %index243
  store <4 x i32> %i.xl, ptr %i.xv, align 4, !tbaa !94, !alias.scope !1365, !noalias !1358
  %index.next244 = add nuw i64 %index243, 4       ; 2 uses
  %i.xw = icmp eq i64 %index.next244, %i.aa
  br i1 %i.xw, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %vector.body242, !llvm.loop !1300

.lr.ph.i106.i.i:                                  ; preds = %.lr.ph.i106.i.i.preheader529, %.lr.ph.i106.i.i
  %.029.i.i.i = phi i64 [ %i.yq, %.lr.ph.i106.i.i ], [ 0, %.lr.ph.i106.i.i.preheader529 ] ; 6 uses
  %i.xx = shl nuw nsw i64 %.029.i.i.i, 3
  %i.xy = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.xx ; 4 uses
  %.val27.i107.i.i = load i16, ptr %i.xy, align 1
  %i.xz = zext i16 %.val27.i107.i.i to i32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  %.val25.i.i.i = load i16, ptr %i.ya, align 1
  %i.yb = zext i16 %.val25.i.i.i to i32
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %.val23.i108.i.i = load i16, ptr %i.yc, align 1
  %i.yd = zext i16 %.val23.i108.i.i to i32        ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xy, i64 6
  %.val.i109.i.i = load i16, ptr %i.ye, align 1
  %i.yf = zext i16 %.val.i109.i.i to i32
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.029.i.i.i
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %.029.i.i.i
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %.029.i.i.i
  %i.yj = sub nsw i32 %i.xz, %i.yd                ; 2 uses
  store i32 %i.yj, ptr %i.yh, align 4, !tbaa !94
  %i.yk = ashr i32 %i.yj, 1
  %i.yl = add nsw i32 %i.yk, %i.yd                ; 2 uses
  %i.ym = sub nsw i32 %i.yb, %i.yl                ; 2 uses
  store i32 %i.ym, ptr %i.yi, align 4, !tbaa !94
  %i.yn = ashr i32 %i.ym, 1
  %i.yo = add nsw i32 %i.yn, %i.yl
  store i32 %i.yo, ptr %i.yg, align 4, !tbaa !94
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %.029.i.i.i
  store i32 %i.yf, ptr %i.yp, align 4, !tbaa !94
  %i.yq = add nuw nsw i64 %.029.i.i.i, 1          ; 2 uses
  %exitcond.not.i110.i.i = icmp eq i64 %i.yq, %i.aa
  br i1 %exitcond.not.i110.i.i, label %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %.lr.ph.i106.i.i, !llvm.loop !1301

_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i: ; preds = %vector.body242, %.lr.ph.i106.i.i, %vector.body, %.lr.ph.i102.i.i, %bb.h, %.lr.ph.i102.i.i.preheader
  br i1 %.not59.i, label %.loopexit.i.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %vector.body499, %.lr.ph.i98.i.i, %vector.body435, %.lr.ph.i94.i.i, %vector.body368, %.lr.ph.i90.i.i, %vector.body328, %.lr.ph.i86.i.i, %vector.body287, %.lr.ph.i82.i.i, %vector.body264, %.lr.ph.i.i.i, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, %.lr.ph.i98.i.i.preheader, %.lr.ph.i94.i.i.preheader, %bb.f, %.lr.ph.i86.i.i.preheader, %.lr.ph.i82.i.i.preheader, %.lr.ph.i.i.i.preheader
  %.not.i.i = icmp eq i64 %.078129.i.i, 0         ; 4 uses
  br i1 %i.eq, label %.epil.preheader555, label %.lr.ph125.i.i.new

._crit_edge126.i.i.unr-lcssa:                     ; preds = %bb.m
  br i1 %lcmp.mod557.not, label %._crit_edge126.i.i, label %.epil.preheader555

.epil.preheader555:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %.lr.ph125.i.i
  %.076124.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i ], [ %i.aad, %._crit_edge126.i.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod558)
  br i1 %.not.i.i, label %.critedge.i.i.epil, label %bb.i

bb.i:                                             ; preds = %.epil.preheader555
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !101 ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !94 ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !101
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 -4
  store i32 %i.yt, ptr %i.yw, align 4, !tbaa !94
  br label %._crit_edge126.i.i.epilog-lcssa

.critedge.i.i.epil:                               ; preds = %.epil.preheader555
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i.epil.init
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !101
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -4
  store i32 0, ptr %i.yz, align 4, !tbaa !94
  %.phi.trans.insert.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i.epil.init
  %.pre.i.i.epil = load ptr, ptr %.phi.trans.insert.i.i.epil, align 8, !tbaa !101
  br label %._crit_edge126.i.i.epilog-lcssa

._crit_edge126.i.i.epilog-lcssa:                  ; preds = %.critedge.i.i.epil, %bb.i
  %i.za = phi ptr [ %i.ys, %bb.i ], [ %.pre.i.i.epil, %.critedge.i.i.epil ]
  %i.zb = phi i32 [ %i.yt, %bb.i ], [ 0, %.critedge.i.i.epil ]
  %i.zc = getelementptr inbounds i8, ptr %i.za, i64 -4
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !94
  br label %._crit_edge126.i.i

._crit_edge126.i.i:                               ; preds = %._crit_edge126.i.i.unr-lcssa, %._crit_edge126.i.i.epilog-lcssa
  %i.zd = or i1 %.not.i97.i.i, %.not.i.i
  br i1 %i.zd, label %.loopexit.i.i, label %.lr.ph.i112.i.i

.lr.ph125.i.i.new:                                ; preds = %.lr.ph125.i.i, %bb.m
  %.076124.i.i = phi i64 [ %i.aad, %bb.m ], [ 0, %.lr.ph125.i.i ] ; 6 uses
  %niter560 = phi i64 [ %niter560.next.1, %bb.m ], [ 0, %.lr.ph125.i.i ]
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph125.i.i.new
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %i.zf = load ptr, ptr %i.ze, align 16, !tbaa !101 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !94 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.zi = load ptr, ptr %i.zh, align 16, !tbaa !101
  %i.zj = getelementptr inbounds i8, ptr %i.zi, i64 -4
  store i32 %i.zg, ptr %i.zj, align 4, !tbaa !94
  br label %bb.k

.critedge.i.i:                                    ; preds = %.lr.ph125.i.i.new
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.076124.i.i
  %i.zl = load ptr, ptr %i.zk, align 16, !tbaa !101
  %i.zm = getelementptr inbounds i8, ptr %i.zl, i64 -4
  store i32 0, ptr %i.zm, align 4, !tbaa !94
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.076124.i.i
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 16, !tbaa !101
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.i, %bb.j
  %i.zn = phi ptr [ %i.zf, %bb.j ], [ %.pre.i.i, %.critedge.i.i ]
  %i.zo = phi i32 [ %i.zg, %bb.j ], [ 0, %.critedge.i.i ]
  %i.zp = getelementptr inbounds i8, ptr %i.zn, i64 -4
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !94
  %i.zq = or disjoint i64 %.076124.i.i, 1         ; 4 uses
  br i1 %.not.i.i, label %.critedge.i.i.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.zq
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !101 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !94 ; 2 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.zq
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !101
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 -4
  store i32 %i.zt, ptr %i.zw, align 4, !tbaa !94
  br label %bb.m

.critedge.i.i.1:                                  ; preds = %bb.k
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.zq
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !101
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -4
  store i32 0, ptr %i.zz, align 4, !tbaa !94
  %.phi.trans.insert.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.zq
  %.pre.i.i.1 = load ptr, ptr %.phi.trans.insert.i.i.1, align 8, !tbaa !101
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.1, %bb.l
  %i.aaa = phi ptr [ %i.zs, %bb.l ], [ %.pre.i.i.1, %.critedge.i.i.1 ]
  %i.aab = phi i32 [ %i.zt, %bb.l ], [ 0, %.critedge.i.i.1 ]
  %i.aac = getelementptr inbounds i8, ptr %i.aaa, i64 -4
  store i32 %i.aab, ptr %i.aac, align 4, !tbaa !94
  %i.aad = add nuw nsw i64 %.076124.i.i, 2        ; 2 uses
  %niter560.next.1 = add i64 %niter560, 2         ; 2 uses
  %niter560.ncmp.1 = icmp eq i64 %niter560.next.1, %unroll_iter559
  br i1 %niter560.ncmp.1, label %._crit_edge126.i.i.unr-lcssa, label %.lr.ph125.i.i.new, !llvm.loop !1302

.lr.ph.i112.i.i:                                  ; preds = %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E10ProcessRowEPKiS7_S7_S7_m.exit.loopexit.i.i
  %.075127.i.i = phi i64 [ %i.agc, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E10ProcessRowEPKiS7_S7_S7_m.exit.loopexit.i.i ], [ 0, %._crit_edge126.i.i ] ; 4 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.075127.i.i
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !101 ; 2 uses
  %i.aag = getelementptr inbounds i8, ptr %i.aaf, i64 -4
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.075127.i.i
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !101 ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.aai, i64 -4
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.075127.i.i ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  %i.aal = load ptr, ptr %i.aak, align 16         ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !1321
  br label %bb.n

bb.n:                                             ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i, %.lr.ph.i112.i.i
  %.sink.i.i55.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %.lr.ph.i112.i.i ], [ %.sink.i.i54.i, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i ] ; 4 uses
  %.015.i113.i.i = phi i64 [ 0, %.lr.ph.i112.i.i ], [ %i.aga, %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i ] ; 6 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.015.i113.i.i ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.015.i113.i.i
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %.015.i113.i.i ; 3 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %.015.i113.i.i
  %i.aar = sub nsw i64 %i.aa, %.015.i113.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.aar, i64 8) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 12
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  %i.aau = load <4 x i32>, ptr %i.aao, align 4, !tbaa !94 ; 3 uses
  %i.aav = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !94 ; 2 uses
  %i.aaw = load <4 x i32>, ptr %i.aan, align 4, !tbaa !94
  %i.aax = load <4 x i32>, ptr %i.aap, align 4, !tbaa !94 ; 4 uses
  %i.aay = sub nsw <4 x i32> %i.aau, %i.aav       ; 2 uses
  %i.aaz = sub nsw <4 x i32> %i.aau, %i.aax
  %i.aba = sub nsw <4 x i32> %i.aax, %i.aav       ; 2 uses
  %i.abb = add <4 x i32> %i.aay, %i.aax
  %i.abc = xor <4 x i32> %i.aba, %i.aaz
  %i.abd = icmp slt <4 x i32> %i.abc, zeroinitializer
  %i.abe = select <4 x i1> %i.abd, <4 x i32> %i.aax, <4 x i32> %i.aau
  %i.abf = xor <4 x i32> %i.aba, %i.aay
  %i.abg = icmp slt <4 x i32> %i.abf, zeroinitializer
  %i.abh = select <4 x i1> %i.abg, <4 x i32> %i.abb, <4 x i32> %i.abe
  %i.abi = sub nsw <4 x i32> %i.aaw, %i.abh       ; 2 uses
  %i.abj = shl <4 x i32> %i.abi, splat (i32 1)    ; 2 uses
  %i.abk = ashr <4 x i32> %i.abi, splat (i32 31)  ; 2 uses
  %i.abl = xor <4 x i32> %i.abj, %i.abk
  store <4 x i32> %i.abl, ptr %i.a, align 64, !tbaa !94
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.abo = load <4 x i32>, ptr %i.aas, align 4, !tbaa !94 ; 3 uses
  %i.abp = load <4 x i32>, ptr %i.aat, align 4, !tbaa !94 ; 2 uses
  %i.abq = load <4 x i32>, ptr %i.abm, align 4, !tbaa !94
  %i.abr = load <4 x i32>, ptr %i.abn, align 4, !tbaa !94 ; 4 uses
  %i.abs = sub nsw <4 x i32> %i.abo, %i.abp       ; 2 uses
  %i.abt = sub nsw <4 x i32> %i.abo, %i.abr
  %i.abu = sub nsw <4 x i32> %i.abr, %i.abp       ; 2 uses
  %i.abv = add <4 x i32> %i.abr, %i.abs
  %i.abw = xor <4 x i32> %i.abu, %i.abt
  %i.abx = icmp slt <4 x i32> %i.abw, zeroinitializer
  %i.aby = select <4 x i1> %i.abx, <4 x i32> %i.abr, <4 x i32> %i.abo
  %i.abz = xor <4 x i32> %i.abu, %i.abs
  %i.aca = icmp slt <4 x i32> %i.abz, zeroinitializer
  %i.acb = select <4 x i1> %i.aca, <4 x i32> %i.abv, <4 x i32> %i.aby
  %i.acc = sub nsw <4 x i32> %i.abq, %i.acb       ; 2 uses
  %i.acd = shl <4 x i32> %i.acc, splat (i32 1)    ; 2 uses
  %i.ace = ashr <4 x i32> %i.acc, splat (i32 31)  ; 2 uses
  %i.acf = xor <4 x i32> %i.acd, %i.ace
  store <4 x i32> %i.acf, ptr %i.cn, align 16, !tbaa !94
  %i.acg = shufflevector <4 x i32> %i.acd, <4 x i32> %i.abj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ach = shufflevector <4 x i32> %i.ace, <4 x i32> %i.abk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aci = icmp eq <8 x i32> %i.acg, %i.ach       ; 8 uses
  %i.acj = extractelement <8 x i1> %i.aci, i64 4  ; 2 uses
  %i.ack = zext i1 %i.acj to i64
  %i.acl = extractelement <8 x i1> %i.aci, i64 5
  %narrow.1.i.i.i.i = select i1 %i.acj, i1 %i.acl, i1 false ; 2 uses
  %i.acm = zext i1 %narrow.1.i.i.i.i to i64
  %i.acn = add nuw nsw i64 %i.acm, %i.ack
  %i.aco = extractelement <8 x i1> %i.aci, i64 6
  %narrow.2.i.i.i.i = select i1 %narrow.1.i.i.i.i, i1 %i.aco, i1 false
  %i.acp = zext i1 %narrow.2.i.i.i.i to i64
  %i.acq = add nuw nsw i64 %i.acn, %i.acp         ; 2 uses
  %i.acr = icmp eq i64 %i.acq, 3
  %i.acs = extractelement <8 x i1> %i.aci, i64 7
  %narrow.3.i.i.i.i = select i1 %i.acr, i1 %i.acs, i1 false
  %i.act = zext i1 %narrow.3.i.i.i.i to i64
  %i.acu = add nuw nsw i64 %i.acq, %i.act         ; 2 uses
  %i.acv = icmp eq i64 %i.acu, 4
  %i.acw = extractelement <8 x i1> %i.aci, i64 0
  %narrow.4.i.i.i.i = select i1 %i.acv, i1 %i.acw, i1 false
  %i.acx = zext i1 %narrow.4.i.i.i.i to i64
  %i.acy = add nuw nsw i64 %i.acu, %i.acx         ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 5
  %i.ada = extractelement <8 x i1> %i.aci, i64 1
  %narrow.5.i.i.i.i = select i1 %i.acz, i1 %i.ada, i1 false
  %i.adb = zext i1 %narrow.5.i.i.i.i to i64
  %i.adc = add nuw nsw i64 %i.acy, %i.adb         ; 2 uses
  %i.add = icmp eq i64 %i.adc, 6
  %i.ade = extractelement <8 x i1> %i.aci, i64 2
  %narrow.6.i.i.i.i = select i1 %i.add, i1 %i.ade, i1 false
end_hunk_3
