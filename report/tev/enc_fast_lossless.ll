Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZN4AVX212_GLOBAL__N_114detect_paletteILm4EEEbPKhmRNSt3__16vectorIjNS4_9allocatorIjEEEE:bb.a
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
  %i.ho = add i64 %.05911, 8                      ; 3 uses
  %i.hp = or disjoint i64 %i.ho, 7
  %i.hq = icmp ult i64 %i.hp, %1
  br i1 %i.hq, label %.lr.ph, label %.preheader1, !llvm.loop !367

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
  br i1 %exitcond.not.1, label %._crit_edge, label %.preheader, !llvm.loop !368

._crit_edge:                                      ; preds = %.preheader.prol.loopexit, %.preheader, %.preheader1
  %.2.lcssa = phi i1 [ %.058.lcssa, %.preheader1 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.il, %.preheader ]
  ret i1 %.2.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i16], align 64              ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %4 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !412, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !413, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !414, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 10 uses
  %i.t = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.u = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.v = trunc i64 %3 to i32
  %i.w = shl i64 %i.u, 32
  %i.x = ashr exact i64 %i.w, 32                  ; 4 uses
  %i.y = sub nsw i64 %.sroa.speculated33, %i.u
  %i.z = trunc i64 %i.y to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.v) ; 2 uses
  %i.aa = and i64 %.sroa.speculated28, 496        ; 24 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !68  ; 9 uses
  %i.ac = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !415, !nonnull !121, !align !176 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !416, !nonnull !121, !align !176 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !417, !nonnull !121
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !418, !nonnull !121
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !419, !nonnull !121, !align !176
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !420, !nonnull !121, !align !176
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %.not58.i = icmp eq i64 %i.ar, 0                ; 4 uses
  br i1 %i.ao, label %.preheader48.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.aw, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !179
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.ay, align 8, !tbaa !179
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader.i
  %i.az = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.ak ; 3 uses
  %i.ba = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %i.ak ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bb = icmp eq i64 %i.ar, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph56.i.new

.lr.ph56.i.new:                                   ; preds = %.lr.ph56.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.b

._crit_edge57.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge57.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge57.i.loopexit.unr-lcssa, %.lr.ph56.i
  %.055.i.epil.init = phi i64 [ 0, %.lr.ph56.i ], [ %i.bn, %._crit_edge57.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod356 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.055.i.epil.init ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.055.i.epil.init
  store ptr %i.bc, ptr %i.bd, align 16, !tbaa !180
  store ptr %i.az, ptr %i.bc, align 16, !tbaa !182
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !183
  br label %._crit_edge57.i

._crit_edge57.i:                                  ; preds = %.epil.preheader, %._crit_edge57.i.loopexit.unr-lcssa, %.preheader.i
  %i.bf = add nsw i64 %i.ac, 1
  call fastcc void @_ZN4AVX212_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.aa, i64 noundef %i.bf, i64 noundef %i.ab, ptr noundef readonly %i.au, i64 noundef %i.ar, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_9UpTo8BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph56.i.new
  %.055.i = phi i64 [ 0, %.lr.ph56.i.new ], [ %i.bn, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph56.i.new ], [ %niter.next.1, %bb.b ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.055.i ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.055.i
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !180
  store ptr %i.az, ptr %i.bg, align 16, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ba, ptr %i.bi, align 8, !tbaa !183
  %i.bj = or disjoint i64 %.055.i, 1              ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bj
  store ptr %i.bk, ptr %i.bl, align 16, !tbaa !180
  store ptr %i.az, ptr %i.bk, align 16, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.ba, ptr %i.bm, align 8, !tbaa !183
  %i.bn = add nuw nsw i64 %.055.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge57.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !369

.preheader48.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !179
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bp, align 8, !tbaa !179
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !179
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.br, align 8, !tbaa !179
  br i1 %.not58.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader48.i
  %xtraiter357 = and i64 %i.ar, 1
  %i.bs = icmp eq i64 %i.ar, 1
  br i1 %i.bs, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter360 = and i64 %i.ar, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03952.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aay, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod359 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod359)
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03952.i.epil.init ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03952.i.epil.init
  store ptr %i.bt, ptr %i.bu, align 16, !tbaa !180
  %i.bv = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %.03952.i.epil.init
  store ptr %i.bv, ptr %i.bt, align 16, !tbaa !182
  %i.bw = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %.03952.i.epil.init
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !183
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i: ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.by = mul nuw nsw i64 %i.ar, 1408             ; 3 uses
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #40 ; 3 uses
  %i.ca = getelementptr inbounds nuw [1408 x i8], ptr %i.bz, i64 %i.ar
  %i.cb = add nsw i64 %i.by, -1408
  %i.cc = urem i64 %i.cb, 1408
  %i.cd = sub nuw nsw i64 %i.by, %i.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bz, i8 0, i64 %i.cd, i1 false)
  %i.ce = ptrtoint ptr %i.ca to i64
  br label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader48.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %i.cf = phi i64 [ %i.ce, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader48.i ]
  %i.cg = phi ptr [ %i.bz, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader48.i ] ; 9 uses
  %.not104.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not104.i.i, label %.preheader.i.i, label %.lr.ph101.i.i

.lr.ph101.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not34.i.i.i = icmp ult i64 %i.m, 16           ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not.i84.i.i = icmp eq i64 %i.aa, 0
  %i.ck = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 5                ; 8 uses
  %i.cm = mul i64 %i.ab, %i.x                     ; 6 uses
  %i.cn = shl nuw nsw i64 %i.ck, 6
  %i.co = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.cp = shl nuw nsw i64 %i.co, 5                ; 3 uses
  %i.cq = mul i64 %i.ab, %i.x
  %i.cr = mul nuw nsw i64 %i.co, 48
  %i.cs = add nsw i64 %.sroa.speculated28, -16    ; 3 uses
  %i.ct = lshr i64 %i.cs, 4                       ; 2 uses
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 4 uses
  %8 = getelementptr i8, ptr %i.s, i64 %i.cq
  %i.cv = getelementptr i8, ptr %8, i64 %i.cr
  %i.cw = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  %i.cy = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.cz = getelementptr i8, ptr %i.cy, i64 2
  %i.da = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cl
  %i.dc = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.aa
  %i.de = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.df = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.cn
  %min.iters.check281 = icmp ult i64 %i.ar, 4
  %min.iters.check283 = icmp ult i64 %i.ar, 16
  %i.dh = and i64 %i.ar, 12
  %n.vec285 = and i64 %i.ar, -16                  ; 4 uses
  %cmp.n317 = icmp eq i64 %i.ar, %n.vec285
  %min.epilog.iters.check322 = icmp eq i64 %i.dh, 0
  %n.vec324 = and i64 %i.ar, -4                   ; 3 uses
  %cmp.n338 = icmp eq i64 %i.ar, %n.vec324
  %i.di = icmp eq i64 %i.ct, 0
  %unroll_iter366 = and i64 %i.cu, 2305843009213693950
  %i.dj = and i64 %i.cs, 16
  %lcmp.mod363.not.not = icmp eq i64 %i.dj, 0
  %lcmp.mod365 = trunc i64 %i.cu to i1
  %xtraiter370 = and i64 %i.cu, 3                 ; 3 uses
  %i.dk = icmp ult i64 %i.cs, 48
  %unroll_iter376 = and i64 %i.cu, 2305843009213693948
  %lcmp.mod373.not = icmp eq i64 %xtraiter370, 0
  %lcmp.mod375 = icmp ne i64 %xtraiter370, 0
  %xtraiter381 = and i64 %i.ar, 1
  %i.dl = icmp eq i64 %i.ar, 1
  %unroll_iter385 = and i64 %i.ar, -2
  %lcmp.mod383.not = icmp eq i64 %xtraiter381, 0
  %lcmp.mod384 = trunc i64 %i.ar to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i86.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i86.i.i, label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.p

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph101.i.i
  %.066100.i.i = phi i64 [ 0, %.lr.ph101.i.i ], [ %i.aak, %.loopexit.i.i ] ; 10 uses
  %i.dm = mul i64 %i.ab, %.066100.i.i
  %scevgep226 = getelementptr i8, ptr %i.cv, i64 %i.dm ; 3 uses
  %i.dn = mul i64 %i.ab, %.066100.i.i             ; 2 uses
  %scevgep214.a = getelementptr i8, ptr %i.cx, i64 %i.dn
  %scevgep216.a = getelementptr i8, ptr %i.cz, i64 %i.dn
  %i.do = mul i64 %i.ab, %.066100.i.i
  %scevgep170 = getelementptr i8, ptr %i.db, i64 %i.do ; 2 uses
  %i.dp = mul i64 %i.ab, %.066100.i.i
  %scevgep133 = getelementptr i8, ptr %i.dd, i64 %i.dp
  %i.dq = mul i64 %i.ab, %.066100.i.i             ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.de, i64 %i.dq
  %scevgep79 = getelementptr i8, ptr %i.dg, i64 %i.dq ; 4 uses
  %i.dr = add i64 %.066100.i.i, %i.x
  %i.ds = mul i64 %i.dr, %i.ab
  %i.dt = getelementptr i8, ptr %i.s, i64 %i.ds   ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not58.i, label %._crit_edge.thread.i.i, label %iter.check319

iter.check319:                                    ; preds = %bb.c
  %i.du = and i64 %.066100.i.i, 1                 ; 7 uses
  %i.dv = xor i64 %i.du, 1                        ; 6 uses
  br i1 %min.iters.check281, label %vec.epilog.scalar.ph320.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %iter.check319
  br i1 %min.iters.check283, label %vec.epilog.ph323, label %vector.body286

vector.body286:                                   ; preds = %vector.main.loop.iter.check282, %vector.body286
  %index287 = phi i64 [ %index.next315, %vector.body286 ], [ 0, %vector.main.loop.iter.check282 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body286 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check282 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, <4 x i64> %vec.ind ; 2 uses
  %wide.gep288.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, <4 x i64> %step.add ; 2 uses
  %wide.gep289.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep290.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep291.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.du
  %wide.gep292.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep288.a, i64 %i.du
  %wide.gep293.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep289.a, i64 %i.du
  %wide.gep294.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep290.a, i64 %i.du
  %wide.gep295.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep291.a, i64 64 ; 2 uses
  %wide.gep296.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep292.a, i64 64 ; 2 uses
  %wide.gep297.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep293.a, i64 64 ; 2 uses
  %wide.gep298.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep294.a, i64 64 ; 2 uses
  %i.dw = ptrtoint <4 x ptr> %wide.gep295.a to <4 x i64>
  %i.dx = ptrtoint <4 x ptr> %wide.gep296.a to <4 x i64>
  %i.dy = ptrtoint <4 x ptr> %wide.gep297.a to <4 x i64>
  %i.dz = ptrtoint <4 x ptr> %wide.gep298.a to <4 x i64>
  %i.ea = lshr <4 x i64> %i.dw, splat (i64 1)
  %i.eb = lshr <4 x i64> %i.dx, splat (i64 1)
  %i.ec = lshr <4 x i64> %i.dy, splat (i64 1)
  %i.ed = lshr <4 x i64> %i.dz, splat (i64 1)
  %i.ee = and <4 x i64> %i.ea, splat (i64 31)
  %i.ef = and <4 x i64> %i.eb, splat (i64 31)
  %i.eg = and <4 x i64> %i.ec, splat (i64 31)
  %i.eh = and <4 x i64> %i.ed, splat (i64 31)
  %wide.gep299.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep295.a, <4 x i64> %i.ee
  %wide.gep300.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep296.a, <4 x i64> %i.ef
  %wide.gep301.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep297.a, <4 x i64> %i.eg
  %wide.gep302.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep298.a, <4 x i64> %i.eh
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index287 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  store <4 x ptr> %wide.gep299.a, ptr %i.ei, align 16, !tbaa !92
  store <4 x ptr> %wide.gep300.a, ptr %i.ej, align 16, !tbaa !92
  store <4 x ptr> %wide.gep301.a, ptr %i.ek, align 16, !tbaa !92
  store <4 x ptr> %wide.gep302.a, ptr %i.el, align 16, !tbaa !92
  %wide.gep303.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.dv
  %wide.gep304.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep288.a, i64 %i.dv
  %wide.gep305.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep289.a, i64 %i.dv
  %wide.gep306.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep290.a, i64 %i.dv
  %wide.gep307.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep303.a, i64 64 ; 2 uses
  %wide.gep308.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep304.a, i64 64 ; 2 uses
  %wide.gep309.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep305.a, i64 64 ; 2 uses
  %wide.gep310.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep306.a, i64 64 ; 2 uses
  %i.em = ptrtoint <4 x ptr> %wide.gep307.a to <4 x i64>
  %i.en = ptrtoint <4 x ptr> %wide.gep308.a to <4 x i64>
  %i.eo = ptrtoint <4 x ptr> %wide.gep309.a to <4 x i64>
  %i.ep = ptrtoint <4 x ptr> %wide.gep310.a to <4 x i64>
  %i.eq = lshr <4 x i64> %i.em, splat (i64 1)
  %i.er = lshr <4 x i64> %i.en, splat (i64 1)
  %i.es = lshr <4 x i64> %i.eo, splat (i64 1)
  %i.et = lshr <4 x i64> %i.ep, splat (i64 1)
  %i.eu = and <4 x i64> %i.eq, splat (i64 31)
  %i.ev = and <4 x i64> %i.er, splat (i64 31)
  %i.ew = and <4 x i64> %i.es, splat (i64 31)
  %i.ex = and <4 x i64> %i.et, splat (i64 31)
  %wide.gep311.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep307.a, <4 x i64> %i.eu
  %wide.gep312.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep308.a, <4 x i64> %i.ev
  %wide.gep313.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep309.a, <4 x i64> %i.ew
  %wide.gep314 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep310.a, <4 x i64> %i.ex
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index287 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96
  store <4 x ptr> %wide.gep311.a, ptr %i.ey, align 16, !tbaa !92
  store <4 x ptr> %wide.gep312.a, ptr %i.ez, align 16, !tbaa !92
  store <4 x ptr> %wide.gep313.a, ptr %i.fa, align 16, !tbaa !92
  store <4 x ptr> %wide.gep314, ptr %i.fb, align 16, !tbaa !92
  %index.next315 = add nuw i64 %index287, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fc = icmp eq i64 %index.next315, %n.vec285
  br i1 %i.fc, label %middle.block316, label %vector.body286, !llvm.loop !370

middle.block316:                                  ; preds = %vector.body286
  br i1 %cmp.n317, label %._crit_edge.i.i, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block316
  br i1 %min.epilog.iters.check322, label %vec.epilog.scalar.ph320.preheader, label %vec.epilog.ph323, !prof !119

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check321
  %vec.epilog.resume.val318 = phi i64 [ %n.vec285, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check282 ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val318, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph323
  %index326 = phi i64 [ %vec.epilog.resume.val318, %vec.epilog.ph323 ], [ %index.next335, %vec.epilog.vector.body325 ] ; 3 uses
  %vec.ind327 = phi <4 x i64> [ %induction, %vec.epilog.ph323 ], [ %vec.ind.next336, %vec.epilog.vector.body325 ] ; 2 uses
  %wide.gep328.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, <4 x i64> %vec.ind327 ; 2 uses
  %wide.gep329.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep328.a, i64 %i.du
  %wide.gep330.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep329.a, i64 64 ; 2 uses
  %i.fd = ptrtoint <4 x ptr> %wide.gep330.a to <4 x i64>
  %i.fe = lshr <4 x i64> %i.fd, splat (i64 1)
  %i.ff = and <4 x i64> %i.fe, splat (i64 31)
  %wide.gep331.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep330.a, <4 x i64> %i.ff
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index326
  store <4 x ptr> %wide.gep331.a, ptr %i.fg, align 16, !tbaa !92
  %wide.gep332.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep328.a, i64 %i.dv
  %wide.gep333.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep332.a, i64 64 ; 2 uses
  %i.fh = ptrtoint <4 x ptr> %wide.gep333.a to <4 x i64>
  %i.fi = lshr <4 x i64> %i.fh, splat (i64 1)
  %i.fj = and <4 x i64> %i.fi, splat (i64 31)
  %wide.gep334 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep333.a, <4 x i64> %i.fj
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index326
  store <4 x ptr> %wide.gep334, ptr %i.fk, align 16, !tbaa !92
  %index.next335 = add nuw i64 %index326, 4       ; 2 uses
  %vec.ind.next336 = add nuw nsw <4 x i64> %vec.ind327, splat (i64 4)
  %i.fl = icmp eq i64 %index.next335, %n.vec324
  br i1 %i.fl, label %vec.epilog.middle.block337, label %vec.epilog.vector.body325, !llvm.loop !371

vec.epilog.middle.block337:                       ; preds = %vec.epilog.vector.body325
  br i1 %cmp.n338, label %._crit_edge.i.i, label %vec.epilog.scalar.ph320.preheader

vec.epilog.scalar.ph320.preheader:                ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block337
  %.06594.i.i.ph = phi i64 [ 0, %iter.check319 ], [ %n.vec285, %vec.epilog.iter.check321 ], [ %n.vec324, %vec.epilog.middle.block337 ]
  br label %vec.epilog.scalar.ph320

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph320, %vec.epilog.middle.block337, %middle.block316
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !92 ; 31 uses
  switch i64 %i.ar, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre66.i = load ptr, ptr %i.ch, align 8, !tbaa !92
  %.pre67.i = load ptr, ptr %i.ci, align 16, !tbaa !92
  %.pre68.i = load ptr, ptr %i.cj, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

vec.epilog.scalar.ph320:                          ; preds = %vec.epilog.scalar.ph320.preheader, %vec.epilog.scalar.ph320
  %.06594.i.i = phi i64 [ %i.gb, %vec.epilog.scalar.ph320 ], [ %.06594.i.i.ph, %vec.epilog.scalar.ph320.preheader ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [1408 x i8], ptr %i.cg, i64 %.06594.i.i ; 2 uses
  %i.fn = getelementptr inbounds nuw [704 x i8], ptr %i.fm, i64 %i.du
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 64 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = and i64 %i.fq, 31
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06594.i.i
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !92
  %i.fu = getelementptr inbounds nuw [704 x i8], ptr %i.fm, i64 %i.dv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64 ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = lshr i64 %i.fw, 1
  %i.fy = and i64 %i.fx, 31
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.06594.i.i
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !92
  %i.gb = add nuw nsw i64 %.06594.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gb, %i.ar
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph320, !llvm.loop !372

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  br i1 %i.dk, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod373.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init372 = phi i64 [ 16, %.lr.ph.i.i.i.preheader ], [ %i.id, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.016.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.hz, %.preheader.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.gc = phi i64 [ %i.gg, %.lr.ph.i.i.i.epil ], [ %.epil.init372, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.016.i.i.i.epil = phi i64 [ %i.gc, %.lr.ph.i.i.i.epil ], [ %.016.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.016.i.i.i.epil
  %.val14.i.i.i.epil = load <16 x i8>, ptr %i.gd, align 1, !tbaa !85
  %i.ge = zext <16 x i8> %.val14.i.i.i.epil to <16 x i16>
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.016.i.i.i.epil
  store <16 x i16> %i.ge, ptr %i.gf, align 1, !tbaa !85
  %i.gg = add nuw nsw i64 %i.gc, 16
end_hunk_0
begin_hunk_1_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.mu = getelementptr i8, ptr %scevgep215, i64 %mul.result
  %i.mv = icmp ult ptr %i.mu, %scevgep215
  %scevgep217 = getelementptr i8, ptr %scevgep216.a, i64 %i.mt ; 2 uses
  %i.mw = getelementptr i8, ptr %scevgep217, i64 %mul.result
  %i.mx = icmp ult ptr %i.mw, %scevgep217
  %i.my = or i1 %i.mx, %mul.overflow
  %i.mz = or i1 %i.mv, %i.my
  br i1 %i.mz, label %.lr.ph37.i.i.i.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %iter.check265
  %i.na = shl nuw nsw i64 %.0.lcssa.i77.i.i, 1    ; 3 uses
  %scevgep219.a = getelementptr i8, ptr %i.mn, i64 %i.na ; 3 uses
  %scevgep220.a = getelementptr i8, ptr %i.mn, i64 %i.cp ; 3 uses
  %scevgep221.a = getelementptr i8, ptr %i.mo, i64 %i.na ; 3 uses
  %scevgep222.a = getelementptr i8, ptr %i.mo, i64 %i.cp ; 3 uses
  %scevgep223.a = getelementptr i8, ptr %.pre.i, i64 %i.na ; 3 uses
  %scevgep224.a = getelementptr i8, ptr %.pre.i, i64 %i.cp ; 3 uses
  %i.nb = mul nuw nsw i64 %.0.lcssa.i77.i.i, 3
  %scevgep225 = getelementptr i8, ptr %i.dt, i64 %i.nb ; 3 uses
  %bound0227 = icmp ult ptr %scevgep219.a, %scevgep222.a
  %bound1228 = icmp ult ptr %scevgep221.a, %scevgep220.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0230 = icmp ult ptr %scevgep219.a, %scevgep224.a
  %bound1231 = icmp ult ptr %scevgep223.a, %scevgep220.a
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %found.conflict229, %found.conflict232
  %bound0234 = icmp ult ptr %scevgep219.a, %scevgep226
  %bound1235 = icmp ult ptr %scevgep225, %scevgep220.a
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %scevgep221.a, %scevgep224.a
  %bound1239 = icmp ult ptr %scevgep223.a, %scevgep222.a
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %scevgep221.a, %scevgep226
  %bound1243 = icmp ult ptr %scevgep225, %scevgep222.a
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %scevgep223.a, %scevgep226
  %bound1247 = icmp ult ptr %scevgep225, %scevgep224.a
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  br i1 %conflict.rdx249, label %.lr.ph37.i.i.i.preheader, label %vector.main.loop.iter.check251

.lr.ph37.i.i.i.preheader:                         ; preds = %iter.check265, %vector.memcheck218
  br label %.lr.ph37.i.i.i

vector.main.loop.iter.check251:                   ; preds = %vector.memcheck218
  %min.iters.check252 = icmp eq i64 %i.aa, %.0.lcssa.i77.i.i
  br i1 %min.iters.check252, label %vec.epilog.vector.body271, label %vector.body255

vector.body255:                                   ; preds = %vector.main.loop.iter.check251, %vector.body255
  %index256 = phi i64 [ %index.next261, %vector.body255 ], [ 0, %vector.main.loop.iter.check251 ] ; 2 uses
  %i.nc = add nuw i64 %.0.lcssa.i77.i.i, %index256 ; 4 uses
  %i.nd = mul i64 %i.nc, 3
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.nd
  %wide.vec257 = load <48 x i8>, ptr %i.ne, align 1, !tbaa !85, !alias.scope !427 ; 3 uses
  %strided.vec258.a = shufflevector <48 x i8> %wide.vec257, <48 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>
  %strided.vec259.a = shufflevector <48 x i8> %wide.vec257, <48 x i8> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
  %strided.vec260 = shufflevector <48 x i8> %wide.vec257, <48 x i8> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47>
  %i.nf = zext <16 x i8> %strided.vec258.a to <16 x i16>
  %i.ng = zext <16 x i8> %strided.vec259.a to <16 x i16>
  %i.nh = zext <16 x i8> %strided.vec260 to <16 x i16> ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.nc
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.nc
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.nc
  %i.nl = sub nsw <16 x i16> %i.nf, %i.nh         ; 2 uses
  store <16 x i16> %i.nl, ptr %i.nj, align 2, !tbaa !104, !alias.scope !428, !noalias !429
  %i.nm = ashr <16 x i16> %i.nl, splat (i16 1)
  %i.nn = add nsw <16 x i16> %i.nm, %i.nh         ; 2 uses
  %i.no = sub nsw <16 x i16> %i.ng, %i.nn         ; 2 uses
  store <16 x i16> %i.no, ptr %i.nk, align 2, !tbaa !104, !alias.scope !430, !noalias !431
  %i.np = ashr <16 x i16> %i.no, splat (i16 1)
  %i.nq = add nsw <16 x i16> %i.np, %i.nn
  store <16 x i16> %i.nq, ptr %i.ni, align 2, !tbaa !104, !alias.scope !432, !noalias !427
  %index.next261 = add nuw i64 %index256, 16      ; 2 uses
  %i.nr = icmp eq i64 %index.next261, %i.mq
  br i1 %i.nr, label %.lr.ph96.i.i, label %vector.body255, !llvm.loop !393

vec.epilog.vector.body271:                        ; preds = %vector.main.loop.iter.check251, %vec.epilog.vector.body271
  %index272 = phi i64 [ %index.next277, %vec.epilog.vector.body271 ], [ 0, %vector.main.loop.iter.check251 ] ; 2 uses
  %i.ns = add nuw i64 %.0.lcssa.i77.i.i, %index272 ; 4 uses
  %i.nt = mul i64 %i.ns, 3
  %i.nu = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.nt
  %wide.vec273 = load <12 x i8>, ptr %i.nu, align 1, !tbaa !85, !alias.scope !427 ; 3 uses
  %strided.vec274.a = shufflevector <12 x i8> %wide.vec273, <12 x i8> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec275.a = shufflevector <12 x i8> %wide.vec273, <12 x i8> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec276 = shufflevector <12 x i8> %wide.vec273, <12 x i8> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.nv = zext <4 x i8> %strided.vec274.a to <4 x i16>
  %i.nw = zext <4 x i8> %strided.vec275.a to <4 x i16>
  %i.nx = zext <4 x i8> %strided.vec276 to <4 x i16> ; 2 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ns
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.ns
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.ns
  %i.ob = sub nsw <4 x i16> %i.nv, %i.nx          ; 2 uses
  store <4 x i16> %i.ob, ptr %i.nz, align 2, !tbaa !104, !alias.scope !428, !noalias !429
  %i.oc = ashr <4 x i16> %i.ob, splat (i16 1)
  %i.od = add nsw <4 x i16> %i.oc, %i.nx          ; 2 uses
  %i.oe = sub nsw <4 x i16> %i.nw, %i.od          ; 2 uses
  store <4 x i16> %i.oe, ptr %i.oa, align 2, !tbaa !104, !alias.scope !430, !noalias !431
  %i.of = ashr <4 x i16> %i.oe, splat (i16 1)
  %i.og = add nsw <4 x i16> %i.of, %i.od
  store <4 x i16> %i.og, ptr %i.ny, align 2, !tbaa !104, !alias.scope !432, !noalias !427
  %index.next277 = add nuw i64 %index272, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next277, %i.mq
  br i1 %i.oh, label %.lr.ph96.i.i, label %vec.epilog.vector.body271, !llvm.loop !394

.lr.ph.i74.i.i:                                   ; preds = %bb.f, %.lr.ph.i74.i.i
  %i.oi = phi i64 [ %i.pn, %.lr.ph.i74.i.i ], [ 16, %bb.f ] ; 4 uses
  %.035.i.i.i = phi i64 [ %i.oi, %.lr.ph.i74.i.i ], [ 0, %bb.f ] ; 4 uses
  %i.oj = mul nuw nsw i64 %.035.i.i.i, 3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.oj ; 3 uses
  %i.ol = load <16 x i8>, ptr %i.ok, align 1, !tbaa !85, !noalias !433
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.on = load <16 x i8>, ptr %i.om, align 1, !tbaa !85, !noalias !433
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.op = load <16 x i8>, ptr %i.oo, align 1, !tbaa !85, !noalias !433
  %i.oq = shufflevector <16 x i8> %i.ol, <16 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13> ; 3 uses
  %i.or = shufflevector <16 x i8> %i.on, <16 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13> ; 3 uses
  %i.os = shufflevector <16 x i8> %i.op, <16 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13> ; 3 uses
  %i.ot = shufflevector <16 x i8> %i.os, <16 x i8> %i.or, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ou = shufflevector <16 x i8> %i.ot, <16 x i8> %i.oq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ov = shufflevector <16 x i8> %i.oq, <16 x i8> %i.or, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ow = shufflevector <16 x i8> %i.ov, <16 x i8> %i.os, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ox = shufflevector <16 x i8> %i.or, <16 x i8> %i.oq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.oy = shufflevector <16 x i8> %i.ox, <16 x i8> %i.os, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oz = shufflevector <16 x i8> %i.oy, <16 x i8> poison, <16 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  %i.pa = shufflevector <16 x i8> %i.ou, <16 x i8> poison, <16 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %i.pb = zext <16 x i8> %i.ow to <16 x i16>
  %i.pc = zext <16 x i8> %i.oz to <16 x i16>
  %i.pd = zext <16 x i8> %i.pa to <16 x i16>      ; 2 uses
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.035.i.i.i
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %.035.i.i.i
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %.035.i.i.i
  %i.ph = sub nsw <16 x i16> %i.pb, %i.pd         ; 2 uses
  %i.pi = ashr <16 x i16> %i.ph, splat (i16 1)
  %i.pj = add nsw <16 x i16> %i.pi, %i.pd         ; 2 uses
  %i.pk = sub nsw <16 x i16> %i.pc, %i.pj         ; 2 uses
  %i.pl = ashr <16 x i16> %i.pk, splat (i16 1)
  %i.pm = add nsw <16 x i16> %i.pl, %i.pj
  store <16 x i16> %i.pm, ptr %i.pe, align 1, !tbaa !85
  store <16 x i16> %i.ph, ptr %i.pf, align 1, !tbaa !85
  store <16 x i16> %i.pk, ptr %i.pg, align 1, !tbaa !85
  %i.pn = add nuw nsw i64 %i.oi, 16
  %.not.i75.i.i.not = icmp samesign ult i64 %i.oi, %i.aa
  br i1 %.not.i75.i.i.not, label %.lr.ph.i74.i.i, label %.preheader.i76.i.i, !llvm.loop !6

.lr.ph37.i.i.i:                                   ; preds = %.lr.ph37.i.i.i.preheader, %.lr.ph37.i.i.i
  %.136.i.i.i = phi i64 [ %i.qh, %.lr.ph37.i.i.i ], [ %.0.lcssa.i77.i.i, %.lr.ph37.i.i.i.preheader ] ; 5 uses
  %i.po = mul i64 %.136.i.i.i, 3
  %i.pp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.po ; 3 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !85
  %i.pr = zext i8 %i.pq to i16
  %i.ps = getelementptr i8, ptr %i.pp, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !85
  %i.pu = zext i8 %i.pt to i16
  %i.pv = getelementptr i8, ptr %i.pp, i64 2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !85
  %i.px = zext i8 %i.pw to i16                    ; 2 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.136.i.i.i
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %.136.i.i.i
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %.136.i.i.i
  %i.qb = sub nsw i16 %i.pr, %i.px                ; 2 uses
  store i16 %i.qb, ptr %i.pz, align 2, !tbaa !104
  %i.qc = ashr i16 %i.qb, 1
  %i.qd = add nsw i16 %i.qc, %i.px                ; 2 uses
  %i.qe = sub nsw i16 %i.pu, %i.qd                ; 2 uses
  store i16 %i.qe, ptr %i.qa, align 2, !tbaa !104
  %i.qf = ashr i16 %i.qe, 1
  %i.qg = add nsw i16 %i.qf, %i.qd
  store i16 %i.qg, ptr %i.py, align 2, !tbaa !104
  %i.qh = add nuw i64 %.136.i.i.i, 1              ; 2 uses
  %exitcond.not.i78.i.i = icmp eq i64 %i.qh, %i.aa
  br i1 %exitcond.not.i78.i.i, label %.lr.ph96.i.i, label %.lr.ph37.i.i.i, !llvm.loop !397

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.qi = phi ptr [ %.pre68.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 6 uses
  %i.qj = phi ptr [ %.pre67.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 6 uses
  %i.qk = phi ptr [ %.pre66.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 6 uses
  %i.ql = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 6 uses
  br i1 %.not34.i.i.i, label %.preheader.i81.i.i, label %.lr.ph.i79.i.i

.preheader.i81.i.i:                               ; preds = %.lr.ph.i79.i.i, %._crit_edge.thread.i.i
  %.0.lcssa.i82.i.i = phi i64 [ 0, %._crit_edge.thread.i.i ], [ %i.sa, %.lr.ph.i79.i.i ] ; 8 uses
  %i.qm = icmp samesign ult i64 %.0.lcssa.i82.i.i, %i.aa
  br i1 %i.qm, label %iter.check, label %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i

iter.check:                                       ; preds = %.preheader.i81.i.i
  %i.qn = sub nuw nsw i64 %i.aa, %.0.lcssa.i82.i.i ; 2 uses
  %i.qo = shl nuw nsw i64 %.0.lcssa.i82.i.i, 1    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.qk, i64 %i.qo ; 4 uses
  %scevgep70 = getelementptr i8, ptr %i.qk, i64 %i.cl ; 4 uses
  %scevgep71 = getelementptr i8, ptr %i.qj, i64 %i.qo ; 4 uses
  %scevgep72 = getelementptr i8, ptr %i.qj, i64 %i.cl ; 4 uses
  %scevgep73 = getelementptr i8, ptr %i.ql, i64 %i.qo ; 4 uses
  %scevgep74 = getelementptr i8, ptr %i.ql, i64 %i.cl ; 4 uses
  %scevgep75 = getelementptr i8, ptr %i.qi, i64 %i.qo ; 4 uses
  %scevgep76 = getelementptr i8, ptr %i.qi, i64 %i.cl ; 4 uses
  %i.qp = shl nuw nsw i64 %.0.lcssa.i82.i.i, 2
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.qp ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  %bound080 = icmp ult ptr %scevgep, %scevgep74
  %bound181 = icmp ult ptr %scevgep73, %scevgep70
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  %bound083 = icmp ult ptr %scevgep, %scevgep76
  %bound184 = icmp ult ptr %scevgep75, %scevgep70
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx, %found.conflict85
  %bound087 = icmp ult ptr %scevgep, %scevgep79
  %bound188 = icmp ult ptr %scevgep78, %scevgep70
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx86, %found.conflict89
  %bound091 = icmp ult ptr %scevgep71, %scevgep74
  %bound192 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx90, %found.conflict93
  %bound095 = icmp ult ptr %scevgep71, %scevgep76
  %bound196 = icmp ult ptr %scevgep75, %scevgep72
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  %bound099 = icmp ult ptr %scevgep71, %scevgep79
  %bound1100 = icmp ult ptr %scevgep78, %scevgep72
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %scevgep73, %scevgep76
  %bound1104 = icmp ult ptr %scevgep75, %scevgep74
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep73, %scevgep79
  %bound1108 = icmp ult ptr %scevgep78, %scevgep74
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %scevgep75, %scevgep79
  %bound1112 = icmp ult ptr %scevgep78, %scevgep76
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br i1 %conflict.rdx114, label %.lr.ph47.i.i.i, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp eq i64 %i.aa, %.0.lcssa.i82.i.i
  br i1 %min.iters.check115, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.qq = add nuw i64 %.0.lcssa.i82.i.i, %index   ; 5 uses
  %i.qr = shl i64 %i.qq, 2
  %i.qs = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.qr
  %wide.vec = load <64 x i8>, ptr %i.qs, align 1, !tbaa !85, !alias.scope !434 ; 4 uses
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec116.a = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec117.a = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec118 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.qt = zext <16 x i8> %strided.vec to <16 x i16>
  %i.qu = zext <16 x i8> %strided.vec116.a to <16 x i16>
  %i.qv = zext <16 x i8> %strided.vec117.a to <16 x i16> ; 2 uses
  %i.qw = zext <16 x i8> %strided.vec118 to <16 x i16>
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %i.qq
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %i.qq
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.qq
  %i.ra = sub nsw <16 x i16> %i.qt, %i.qv         ; 2 uses
  store <16 x i16> %i.ra, ptr %i.qy, align 2, !tbaa !104, !alias.scope !435, !noalias !436
  %i.rb = ashr <16 x i16> %i.ra, splat (i16 1)
  %i.rc = add nsw <16 x i16> %i.rb, %i.qv         ; 2 uses
  %i.rd = sub nsw <16 x i16> %i.qu, %i.rc         ; 2 uses
  store <16 x i16> %i.rd, ptr %i.qz, align 2, !tbaa !104, !alias.scope !437, !noalias !438
  %i.re = ashr <16 x i16> %i.rd, splat (i16 1)
  %i.rf = add nsw <16 x i16> %i.re, %i.rc
  store <16 x i16> %i.rf, ptr %i.qx, align 2, !tbaa !104, !alias.scope !439, !noalias !440
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.qq
  store <16 x i16> %i.qw, ptr %i.rg, align 2, !tbaa !104, !alias.scope !441, !noalias !434
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rh = icmp eq i64 %index.next, %i.qn
  br i1 %i.rh, label %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %vector.body, !llvm.loop !404

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index120 = phi i64 [ %index.next126, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ri = add nuw i64 %.0.lcssa.i82.i.i, %index120 ; 5 uses
  %i.rj = shl i64 %i.ri, 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.rj
  %wide.vec121 = load <16 x i8>, ptr %i.rk, align 1, !tbaa !85, !alias.scope !434 ; 4 uses
  %strided.vec122.a = shufflevector <16 x i8> %wide.vec121, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec123.a = shufflevector <16 x i8> %wide.vec121, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec124.a = shufflevector <16 x i8> %wide.vec121, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec125 = shufflevector <16 x i8> %wide.vec121, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.rl = zext <4 x i8> %strided.vec122.a to <4 x i16>
  %i.rm = zext <4 x i8> %strided.vec123.a to <4 x i16>
  %i.rn = zext <4 x i8> %strided.vec124.a to <4 x i16> ; 2 uses
  %i.ro = zext <4 x i8> %strided.vec125 to <4 x i16>
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %i.ri
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %i.ri
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.ri
  %i.rs = sub nsw <4 x i16> %i.rl, %i.rn          ; 2 uses
  store <4 x i16> %i.rs, ptr %i.rq, align 2, !tbaa !104, !alias.scope !435, !noalias !436
  %i.rt = ashr <4 x i16> %i.rs, splat (i16 1)
  %i.ru = add nsw <4 x i16> %i.rt, %i.rn          ; 2 uses
  %i.rv = sub nsw <4 x i16> %i.rm, %i.ru          ; 2 uses
  store <4 x i16> %i.rv, ptr %i.rr, align 2, !tbaa !104, !alias.scope !437, !noalias !438
  %i.rw = ashr <4 x i16> %i.rv, splat (i16 1)
  %i.rx = add nsw <4 x i16> %i.rw, %i.ru
  store <4 x i16> %i.rx, ptr %i.rp, align 2, !tbaa !104, !alias.scope !439, !noalias !440
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.ri
  store <4 x i16> %i.ro, ptr %i.ry, align 2, !tbaa !104, !alias.scope !441, !noalias !434
  %index.next126 = add nuw i64 %index120, 4       ; 2 uses
  %i.rz = icmp eq i64 %index.next126, %i.qn
  br i1 %i.rz, label %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %vec.epilog.vector.body, !llvm.loop !405

.lr.ph.i79.i.i:                                   ; preds = %._crit_edge.thread.i.i, %.lr.ph.i79.i.i
  %i.sa = phi i64 [ %i.tg, %.lr.ph.i79.i.i ], [ 16, %._crit_edge.thread.i.i ] ; 4 uses
  %.045.i.i.i = phi i64 [ %i.sa, %.lr.ph.i79.i.i ], [ 0, %._crit_edge.thread.i.i ] ; 5 uses
  %i.sb = shl nuw nsw i64 %.045.i.i.i, 2
  %i.sc = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.sb ; 2 uses
  %.val42.i.i.i = load <8 x i32>, ptr %i.sc, align 1, !tbaa !85 ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 32
  %.val3943.i.i.i = load <8 x i32>, ptr %i.sd, align 1, !tbaa !85 ; 2 uses
  %i.se = and <8 x i32> %.val42.i.i.i, splat (i32 65535)
  %i.sf = and <8 x i32> %.val3943.i.i.i, splat (i32 65535)
  %i.sg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.se, <8 x i32> %i.sf)
  %i.sh = bitcast <16 x i16> %i.sg to <4 x i64>
  %i.si = shufflevector <4 x i64> %i.sh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.sj = lshr <8 x i32> %.val42.i.i.i, splat (i32 16)
  %i.sk = lshr <8 x i32> %.val3943.i.i.i, splat (i32 16)
  %i.sl = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.sj, <8 x i32> %i.sk)
  %i.sm = bitcast <16 x i16> %i.sl to <4 x i64>
  %i.sn = shufflevector <4 x i64> %i.sm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.so = bitcast <4 x i64> %i.si to <16 x i16>
  %i.sp = lshr <16 x i16> %i.so, splat (i16 8)
  %i.sq = bitcast <4 x i64> %i.sn to <16 x i16>
  %i.sr = lshr <16 x i16> %i.sq, splat (i16 8)
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %.045.i.i.i
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %.045.i.i.i
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %.045.i.i.i
  %i.sv = bitcast <4 x i64> %i.si to <16 x i16>
  %i.sw = and <16 x i16> %i.sv, splat (i16 255)
  %i.sx = bitcast <4 x i64> %i.sn to <16 x i16>
  %i.sy = and <16 x i16> %i.sx, splat (i16 255)   ; 2 uses
  %i.sz = sub nsw <16 x i16> %i.sw, %i.sy         ; 2 uses
  %i.ta = ashr <16 x i16> %i.sz, splat (i16 1)
  %i.tb = add nsw <16 x i16> %i.ta, %i.sy         ; 2 uses
  %i.tc = sub nsw <16 x i16> %i.sp, %i.tb         ; 2 uses
  %i.td = ashr <16 x i16> %i.tc, splat (i16 1)
  %i.te = add nsw <16 x i16> %i.td, %i.tb
  store <16 x i16> %i.te, ptr %i.ss, align 1, !tbaa !85
  store <16 x i16> %i.sz, ptr %i.st, align 1, !tbaa !85
  store <16 x i16> %i.tc, ptr %i.su, align 1, !tbaa !85
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %.045.i.i.i
  store <16 x i16> %i.sr, ptr %i.tf, align 1, !tbaa !85
  %i.tg = add nuw nsw i64 %i.sa, 16
  %.not.i80.i.i.not = icmp samesign ult i64 %i.sa, %i.aa
  br i1 %.not.i80.i.i.not, label %.lr.ph.i79.i.i, label %.preheader.i81.i.i, !llvm.loop !7

.lr.ph47.i.i.i:                                   ; preds = %iter.check, %.lr.ph47.i.i.i
  %.146.i.i.i = phi i64 [ %i.ue, %.lr.ph47.i.i.i ], [ %.0.lcssa.i82.i.i, %iter.check ] ; 6 uses
  %i.th = shl i64 %.146.i.i.i, 2
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.th ; 4 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !85
  %i.tk = zext i8 %i.tj to i16
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !85
  %i.tn = zext i8 %i.tm to i16
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !85
  %i.tq = zext i8 %i.tp to i16                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ti, i64 3
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !85
  %i.tt = zext i8 %i.ts to i16
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %.146.i.i.i
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.qk, i64 %.146.i.i.i
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %.146.i.i.i
  %i.tx = sub nsw i16 %i.tk, %i.tq                ; 2 uses
  store i16 %i.tx, ptr %i.tv, align 2, !tbaa !104
  %i.ty = ashr i16 %i.tx, 1
  %i.tz = add nsw i16 %i.ty, %i.tq                ; 2 uses
  %i.ua = sub nsw i16 %i.tn, %i.tz                ; 2 uses
  store i16 %i.ua, ptr %i.tw, align 2, !tbaa !104
  %i.ub = ashr i16 %i.ua, 1
  %i.uc = add nsw i16 %i.ub, %i.tz
  store i16 %i.uc, ptr %i.tu, align 2, !tbaa !104
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %.146.i.i.i
  store i16 %i.tt, ptr %i.ud, align 2, !tbaa !104
  %i.ue = add nuw i64 %.146.i.i.i, 1              ; 2 uses
  %exitcond.not.i83.i.i = icmp eq i64 %i.ue, %i.aa
  br i1 %exitcond.not.i83.i.i, label %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, label %.lr.ph47.i.i.i, !llvm.loop !406

_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i: ; preds = %vector.body, %vec.epilog.vector.body, %.lr.ph47.i.i.i, %.preheader.i81.i.i
  br i1 %.not58.i, label %.loopexit.i.i, label %.lr.ph96.i.i

.lr.ph96.i.i:                                     ; preds = %vector.body255, %vec.epilog.vector.body271, %.lr.ph37.i.i.i, %vec.epilog.vector.body205, %.lr.ph25.i.i.i.prol.loopexit, %.lr.ph25.i.i.i, %vec.epilog.vector.body157, %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block196, %middle.block148, %_ZN4AVX212_GLOBAL__N_19FillRowG8IsEEvPKhmPT_.exit.i.i, %.preheader.i76.i.i, %.preheader.i71.i.i, %.preheader.i.i.i
  %.not.i.i = icmp eq i64 %.066100.i.i, 0         ; 4 uses
  br i1 %i.dl, label %.epil.preheader380, label %.lr.ph96.i.i.new

._crit_edge97.i.i.unr-lcssa:                      ; preds = %bb.k
  br i1 %lcmp.mod383.not, label %._crit_edge97.i.i, label %.epil.preheader380

.epil.preheader380:                               ; preds = %._crit_edge97.i.i.unr-lcssa, %.lr.ph96.i.i
  %.06495.i.i.epil.init = phi i64 [ 0, %.lr.ph96.i.i ], [ %i.vr, %._crit_edge97.i.i.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod384)
  br i1 %.not.i.i, label %.critedge.i.i.epil, label %bb.g
end_hunk_1
begin_hunk_2_@_ZN4AVX212_GLOBAL__N_19UpTo8Bits15EncodeChunkSimdEPtmmPKhS4_RN12_GLOBAL__N_19BitWriterE:bb.a
  %i.ck = shl i64 %.sroa.0.0.vec.extract, %i.cj
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !87
  %i.cm = or i64 %i.cl, %i.ck                     ; 2 uses
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !87
  %i.cn = load ptr, ptr %5, align 8, !tbaa !71
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i64 %i.cm, ptr %i.cp, align 1
  %i.cq = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.0.vec.extract = extractelement <4 x i64> %i.cd, i64 0
  %i.cr = add i64 %.sroa.0140.0.vec.extract, %i.cq ; 4 uses
  store i64 %i.cr, ptr %i.cg, align 8, !tbaa !86
  %i.cs = icmp ugt i64 %i.cr, 63
  br i1 %i.cs, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre141 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ct = sub i64 64, %i.cq                       ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 63
  %i.cv = lshr i64 %.sroa.0.0.vec.extract, %i.ct
  %spec.select = select i1 %i.cu, i64 0, i64 %i.cv
  %i.cw = add i64 %i.cr, -64                      ; 2 uses
  store i64 %i.cw, ptr %i.cg, align 8, !tbaa !86
  %i.cx = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  store i64 %i.cy, ptr %i.ci, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.cz = phi i64 [ %i.cy, %bb.b ], [ %.pre141, %._crit_edge ]
  %i.da = phi i64 [ %spec.select, %bb.b ], [ %.pre, %._crit_edge ]
  %i.db = phi i64 [ %i.cw, %bb.b ], [ %i.cr, %._crit_edge ]
  %.sroa.0.8.vec.extract = extractelement <4 x i64> %i.cf, i64 1 ; 2 uses
  %i.dc = shl i64 %.sroa.0.8.vec.extract, %i.db
  %i.dd = or i64 %i.da, %i.dc                     ; 2 uses
  store i64 %i.dd, ptr %i.ch, align 8, !tbaa !87
  %i.de = load ptr, ptr %5, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cz
  store i64 %i.dd, ptr %i.df, align 1
  %i.dg = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.8.vec.extract = extractelement <4 x i64> %i.cd, i64 1
  %i.dh = add i64 %.sroa.0140.8.vec.extract, %i.dg ; 4 uses
  store i64 %i.dh, ptr %i.cg, align 8, !tbaa !86
  %i.di = icmp ugt i64 %i.dh, 63
  br i1 %i.di, label %bb.d, label %._crit_edge142

._crit_edge142:                                   ; preds = %bb.c
  %.pre143 = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre144 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dj = sub i64 64, %i.dg                       ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 63
  %i.dl = lshr i64 %.sroa.0.8.vec.extract, %i.dj
  %spec.select.1 = select i1 %i.dk, i64 0, i64 %i.dl
  %i.dm = add i64 %i.dh, -64                      ; 2 uses
  store i64 %i.dm, ptr %i.cg, align 8, !tbaa !86
  %i.dn = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  store i64 %i.do, ptr %i.ci, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge142, %bb.d
  %i.dp = phi i64 [ %i.do, %bb.d ], [ %.pre144, %._crit_edge142 ]
  %i.dq = phi i64 [ %spec.select.1, %bb.d ], [ %.pre143, %._crit_edge142 ]
  %i.dr = phi i64 [ %i.dm, %bb.d ], [ %i.dh, %._crit_edge142 ]
  %.sroa.0.16.vec.extract = extractelement <4 x i64> %i.cf, i64 2 ; 2 uses
  %i.ds = shl i64 %.sroa.0.16.vec.extract, %i.dr
  %i.dt = or i64 %i.dq, %i.ds                     ; 2 uses
  store i64 %i.dt, ptr %i.ch, align 8, !tbaa !87
  %i.du = load ptr, ptr %5, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dp
  store i64 %i.dt, ptr %i.dv, align 1
  %i.dw = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.16.vec.extract = extractelement <4 x i64> %i.cd, i64 2
  %i.dx = add i64 %.sroa.0140.16.vec.extract, %i.dw ; 4 uses
  store i64 %i.dx, ptr %i.cg, align 8, !tbaa !86
  %i.dy = icmp ugt i64 %i.dx, 63
  br i1 %i.dy, label %bb.f, label %._crit_edge145

._crit_edge145:                                   ; preds = %bb.e
  %.pre146 = load i64, ptr %i.ch, align 8, !tbaa !87
  %.pre147 = load i64, ptr %i.ci, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dz = sub i64 64, %i.dw                       ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 63
  %i.eb = lshr i64 %.sroa.0.16.vec.extract, %i.dz
  %spec.select.2 = select i1 %i.ea, i64 0, i64 %i.eb
  %i.ec = add i64 %i.dx, -64                      ; 2 uses
  store i64 %i.ec, ptr %i.cg, align 8, !tbaa !86
  %i.ed = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.ee = add i64 %i.ed, 8                        ; 2 uses
  store i64 %i.ee, ptr %i.ci, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge145, %bb.f
  %i.ef = phi i64 [ %i.ee, %bb.f ], [ %.pre147, %._crit_edge145 ]
  %i.eg = phi i64 [ %spec.select.2, %bb.f ], [ %.pre146, %._crit_edge145 ]
  %i.eh = phi i64 [ %i.ec, %bb.f ], [ %i.dx, %._crit_edge145 ]
  %.sroa.0.24.vec.extract = extractelement <4 x i64> %i.cf, i64 3 ; 2 uses
  %i.ei = shl i64 %.sroa.0.24.vec.extract, %i.eh
  %i.ej = or i64 %i.eg, %i.ei                     ; 2 uses
  store i64 %i.ej, ptr %i.ch, align 8, !tbaa !87
  %i.ek = load ptr, ptr %5, align 8, !tbaa !71
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ef
  store i64 %i.ej, ptr %i.el, align 1
  %i.em = load i64, ptr %i.cg, align 8, !tbaa !86 ; 2 uses
  %.sroa.0140.24.vec.extract = extractelement <4 x i64> %i.cd, i64 3
  %i.en = add i64 %.sroa.0140.24.vec.extract, %i.em ; 3 uses
  store i64 %i.en, ptr %i.cg, align 8, !tbaa !86
  %i.eo = icmp ugt i64 %i.en, 63
  %.pre148 = load i64, ptr %i.ci, align 8, !tbaa !74 ; 2 uses
  br i1 %i.eo, label %bb.h, label %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge

._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge: ; preds = %bb.g
  %.pre149 = load i64, ptr %i.ch, align 8
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

bb.h:                                             ; preds = %bb.g
  %i.ep = sub i64 64, %i.em                       ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 63
  %i.er = lshr i64 %.sroa.0.24.vec.extract, %i.ep
  %spec.select.3 = select i1 %i.eq, i64 0, i64 %i.er ; 2 uses
  store i64 %spec.select.3, ptr %i.ch, align 8, !tbaa !87
  %i.es = add i64 %i.en, -64
  store i64 %i.es, ptr %i.cg, align 8, !tbaa !86
  %i.et = add i64 %.pre148, 8                     ; 2 uses
  store i64 %i.et, ptr %i.ci, align 8, !tbaa !74
  br label %_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit

_ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit: ; preds = %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge, %bb.h
  %i.eu = phi i64 [ %spec.select.3, %bb.h ], [ %.pre149, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.ev = phi i64 [ %i.et, %bb.h ], [ %.pre148, %._ZN12_GLOBAL__N_19BitWriter13WriteMultipleEPKmS2_m.exit_crit_edge ]
  %i.ew = load ptr, ptr %5, align 8, !tbaa !71
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i64 %i.eu, ptr %i.ex, align 1
  %i.ey = load i64, ptr %i.cg, align 8, !tbaa !86 ; 3 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = and i64 %i.ey, -8
  %i.fb = and i64 %i.ey, 7
  store i64 %i.fb, ptr %i.cg, align 8, !tbaa !86
  %i.fc = load i64, ptr %i.ch, align 8, !tbaa !87
  %i.fd = lshr i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.ch, align 8, !tbaa !87
  %i.fe = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.ff = add i64 %i.fe, %i.ez
  store i64 %i.ff, ptr %i.ci, align 8, !tbaa !74
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.usub.sat.v16i16(<16 x i16>, <16 x i16>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32>, <8 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psllv.q.256(<4 x i64>, <4 x i64>) #26

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i16], align 64              ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %4 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector.100"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.101"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !606, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !607, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !608, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 11 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.w = trunc i64 %3 to i32
  %i.x = shl i64 %i.v, 32
  %i.y = ashr exact i64 %i.x, 32                  ; 5 uses
  %i.z = sub nsw i64 %.sroa.speculated33, %i.v
  %i.aa = trunc i64 %i.z to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.w) ; 2 uses
  %i.ab = and i64 %.sroa.speculated28, 496        ; 41 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !68  ; 13 uses
  %i.ad = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !609, !nonnull !121, !align !176 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !610, !nonnull !121, !align !176 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !611, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = zext nneg i8 %i.ak to i64               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !612, !nonnull !121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !613, !nonnull !121, !align !176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 26 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !614, !nonnull !121
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95, !range !108, !noundef !121
  %i.aw = trunc nuw i8 %i.av to i1                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !615, !nonnull !121, !align !176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %.not67.i = icmp eq i64 %i.as, 0                ; 4 uses
  br i1 %i.ap, label %.preheader53.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !179
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.bb, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !179
  br i1 %.not67.i, label %._crit_edge66.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.al ; 3 uses
  %i.bf = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.bg = icmp eq i64 %i.as, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph65.i.new

.lr.ph65.i.new:                                   ; preds = %.lr.ph65.i
  %unroll_iter = and i64 %i.as, -2
  br label %bb.b

._crit_edge66.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge66.i.loopexit.unr-lcssa, %.lr.ph65.i
  %.064.i.epil.init = phi i64 [ 0, %.lr.ph65.i ], [ %i.bs, %._crit_edge66.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod617 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod617)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.064.i.epil.init ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.064.i.epil.init
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bh, align 16, !tbaa !182
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !183
  br label %._crit_edge66.i

._crit_edge66.i:                                  ; preds = %.epil.preheader, %._crit_edge66.i.loopexit.unr-lcssa, %.preheader.i
  %i.bk = add nsw i64 %i.ad, 1
  call fastcc void @_ZN4AVX212_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i64 noundef %i.bk, i64 noundef %i.ac, ptr noundef readonly %i.az, i64 noundef %i.as, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph65.i.new
  %.064.i = phi i64 [ 0, %.lr.ph65.i.new ], [ %i.bs, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph65.i.new ], [ %niter.next.1, %bb.b ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.064.i ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.064.i
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bl, align 16, !tbaa !182
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !183
  %i.bo = or disjoint i64 %.064.i, 1              ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bo
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bp, align 16, !tbaa !182
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !183
  %i.bs = add nuw nsw i64 %.064.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge66.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !529

.preheader53.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !618
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !618
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bv, align 8, !tbaa !618
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bw, align 8, !tbaa !618
  br i1 %.not67.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader53.i
  %xtraiter618 = and i64 %i.as, 1
  %i.bx = icmp eq i64 %i.as, 1
  br i1 %i.bx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter621 = and i64 %i.as, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03961.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.arg, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod620 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod620)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03961.i.epil.init ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03961.i.epil.init
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !619
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.03961.i.epil.init
  store ptr %i.ca, ptr %i.by, align 16, !tbaa !621
  %i.cb = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.03961.i.epil.init
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !622
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

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i: ; preds = %.preheader53.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i
  %i.cl = phi i64 [ %i.ck, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader53.i ]
  %i.cm = phi ptr [ %i.ce, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader53.i ] ; 9 uses
  %.not155.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not155.i.i, label %.preheader.i.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not40.i.i.i = icmp ult i64 %i.m, 16           ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not.i126.i.i = icmp eq i64 %i.ab, 0
  %i.cq = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 5                ; 8 uses
  %i.cs = mul i64 %i.ac, %i.y                     ; 3 uses
  %i.ct = shl nuw nsw i64 %i.cq, 7
  %i.cu = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = add i64 %i.cs, %i.t                     ; 2 uses
  %i.cw = lshr i64 %.sroa.speculated28, 4         ; 3 uses
  %i.cx = shl nuw nsw i64 %i.cw, 5                ; 7 uses
  %i.cy = mul i64 %i.ac, %i.y                     ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cw, 6
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = mul nuw nsw i64 %i.cw, 96
  %i.dc = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 5                ; 3 uses
  %i.de = mul i64 %i.ac, %i.y
  %i.df = mul nuw nsw i64 %i.dc, 96
  %i.dg = add nsw i64 %.sroa.speculated28, -16    ; 3 uses
  %i.dh = lshr i64 %i.dg, 4
  %i.di = add nuw nsw i64 %i.dh, 1                ; 4 uses
  %8 = getelementptr i8, ptr %i.s, i64 %i.de
  %i.dj = getelementptr i8, ptr %8, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.s, i64 %i.cy
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.db
  %i.dm = getelementptr i8, ptr %i.s, i64 %i.da
  %i.dn = getelementptr i8, ptr %i.s, i64 %i.da
  %i.do = getelementptr i8, ptr %i.s, i64 %i.cu
  %i.dp = getelementptr i8, ptr %i.s, i64 %i.cs
  %i.dq = getelementptr i8, ptr %i.s, i64 %i.cu
  %min.iters.check533.a = icmp ult i64 %i.as, 4
  %min.iters.check535 = icmp ult i64 %i.as, 16
  %i.dr = and i64 %i.as, 12
  %n.vec537 = and i64 %i.as, -16                  ; 4 uses
  %cmp.n569 = icmp eq i64 %i.as, %n.vec537
  %min.epilog.iters.check574 = icmp eq i64 %i.dr, 0
  %n.vec576 = and i64 %i.as, -4                   ; 3 uses
  %cmp.n590 = icmp eq i64 %i.as, %n.vec576
  %xtraiter627 = and i64 %i.di, 3                 ; 3 uses
  %i.ds = icmp ult i64 %i.dg, 48
  %unroll_iter631 = and i64 %i.di, 2305843009213693948
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  %lcmp.mod630 = icmp ne i64 %xtraiter627, 0
  %xtraiter635 = and i64 %i.di, 3                 ; 3 uses
  %i.dt = icmp ult i64 %i.dg, 48
  %unroll_iter642 = and i64 %i.di, 2305843009213693948
  %lcmp.mod639.not = icmp eq i64 %xtraiter635, 0
  %lcmp.mod641 = icmp ne i64 %xtraiter635, 0
  %xtraiter648 = and i64 %i.as, 1
  %i.du = icmp eq i64 %i.as, 1
  %unroll_iter652 = and i64 %i.as, -2
  %lcmp.mod650.not = icmp eq i64 %xtraiter648, 0
  %lcmp.mod651 = trunc i64 %i.as to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i128.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i128.i.i, label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.x

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph152.i.i
  %.078151.i.i = phi i64 [ 0, %.lr.ph152.i.i ], [ %i.aqs, %.loopexit.i.i ] ; 13 uses
  %i.dv = mul i64 %i.ac, %.078151.i.i
  %scevgep478 = getelementptr i8, ptr %i.dj, i64 %i.dv ; 3 uses
  %i.dw = mul i64 %i.ac, %.078151.i.i
  %scevgep415 = getelementptr i8, ptr %i.dl, i64 %i.dw ; 3 uses
  %i.dx = mul i64 %i.ac, %.078151.i.i
  %scevgep363 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = mul i64 %i.ac, %.078151.i.i
  %scevgep313 = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  %i.dz = mul i64 %i.ac, %.078151.i.i
  %i.ea = add i64 %i.cv, %i.dz
  %i.eb = mul i64 %i.ac, %.078151.i.i
  %i.ec = add i64 %i.cv, %i.eb
  %i.ed = mul i64 %i.ac, %.078151.i.i
  %scevgep175 = getelementptr i8, ptr %i.do, i64 %i.ed ; 4 uses
  %i.ee = mul i64 %i.ac, %.078151.i.i             ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.dp, i64 %i.ee
  %scevgep115 = getelementptr i8, ptr %i.dq, i64 %i.ee ; 4 uses
  %i.ef = add i64 %.078151.i.i, %i.y
  %i.eg = mul i64 %i.ef, %i.ac
  %i.eh = getelementptr i8, ptr %i.s, i64 %i.eg   ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not67.i, label %._crit_edge.thread.i.i, label %iter.check571

iter.check571:                                    ; preds = %bb.c
  %i.ei = and i64 %.078151.i.i, 1                 ; 7 uses
  %i.ej = xor i64 %i.ei, 1                        ; 6 uses
  br i1 %min.iters.check533.a, label %vec.epilog.scalar.ph572.preheader, label %vector.main.loop.iter.check534

vector.main.loop.iter.check534:                   ; preds = %iter.check571
  br i1 %min.iters.check535, label %vec.epilog.ph575, label %vector.body538

vector.body538:                                   ; preds = %vector.main.loop.iter.check534, %vector.body538
  %index539 = phi i64 [ %index.next567, %vector.body538 ], [ 0, %vector.main.loop.iter.check534 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body538 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check534 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %vec.ind ; 2 uses
  %wide.gep540.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add ; 2 uses
  %wide.gep541.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep542.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep543.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.ei
  %wide.gep544.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep540.a, i64 %i.ei
  %wide.gep545.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep541.a, i64 %i.ei
  %wide.gep546.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep542.a, i64 %i.ei
  %wide.gep547.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep543.a, i64 64 ; 2 uses
  %wide.gep548.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep544.a, i64 64 ; 2 uses
  %wide.gep549.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep545.a, i64 64 ; 2 uses
  %wide.gep550.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep546.a, i64 64 ; 2 uses
  %i.ek = ptrtoint <4 x ptr> %wide.gep547.a to <4 x i64>
  %i.el = ptrtoint <4 x ptr> %wide.gep548.a to <4 x i64>
  %i.em = ptrtoint <4 x ptr> %wide.gep549.a to <4 x i64>
  %i.en = ptrtoint <4 x ptr> %wide.gep550.a to <4 x i64>
  %i.eo = lshr <4 x i64> %i.ek, splat (i64 1)
  %i.ep = lshr <4 x i64> %i.el, splat (i64 1)
  %i.eq = lshr <4 x i64> %i.em, splat (i64 1)
  %i.er = lshr <4 x i64> %i.en, splat (i64 1)
  %i.es = and <4 x i64> %i.eo, splat (i64 31)
  %i.et = and <4 x i64> %i.ep, splat (i64 31)
  %i.eu = and <4 x i64> %i.eq, splat (i64 31)
  %i.ev = and <4 x i64> %i.er, splat (i64 31)
  %wide.gep551.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep547.a, <4 x i64> %i.es
  %wide.gep552.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep548.a, <4 x i64> %i.et
  %wide.gep553.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep549.a, <4 x i64> %i.eu
  %wide.gep554.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep550.a, <4 x i64> %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index539 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  store <4 x ptr> %wide.gep551.a, ptr %i.ew, align 16, !tbaa !92
  store <4 x ptr> %wide.gep552.a, ptr %i.ex, align 16, !tbaa !92
  store <4 x ptr> %wide.gep553.a, ptr %i.ey, align 16, !tbaa !92
  store <4 x ptr> %wide.gep554.a, ptr %i.ez, align 16, !tbaa !92
  %wide.gep555.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.ej
  %wide.gep556.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep540.a, i64 %i.ej
  %wide.gep557.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep541.a, i64 %i.ej
  %wide.gep558.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep542.a, i64 %i.ej
  %wide.gep559.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep555.a, i64 64 ; 2 uses
  %wide.gep560.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep556.a, i64 64 ; 2 uses
  %wide.gep561.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep557.a, i64 64 ; 2 uses
  %wide.gep562.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep558.a, i64 64 ; 2 uses
  %i.fa = ptrtoint <4 x ptr> %wide.gep559.a to <4 x i64>
  %i.fb = ptrtoint <4 x ptr> %wide.gep560.a to <4 x i64>
  %i.fc = ptrtoint <4 x ptr> %wide.gep561.a to <4 x i64>
  %i.fd = ptrtoint <4 x ptr> %wide.gep562.a to <4 x i64>
  %i.fe = lshr <4 x i64> %i.fa, splat (i64 1)
  %i.ff = lshr <4 x i64> %i.fb, splat (i64 1)
  %i.fg = lshr <4 x i64> %i.fc, splat (i64 1)
  %i.fh = lshr <4 x i64> %i.fd, splat (i64 1)
  %i.fi = and <4 x i64> %i.fe, splat (i64 31)
  %i.fj = and <4 x i64> %i.ff, splat (i64 31)
  %i.fk = and <4 x i64> %i.fg, splat (i64 31)
  %i.fl = and <4 x i64> %i.fh, splat (i64 31)
  %wide.gep563.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep559.a, <4 x i64> %i.fi
  %wide.gep564.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep560.a, <4 x i64> %i.fj
  %wide.gep565 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep561.a, <4 x i64> %i.fk
  %wide.gep566 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep562.a, <4 x i64> %i.fl
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index539 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  store <4 x ptr> %wide.gep563.a, ptr %i.fm, align 16, !tbaa !92
  store <4 x ptr> %wide.gep564.a, ptr %i.fn, align 16, !tbaa !92
  store <4 x ptr> %wide.gep565, ptr %i.fo, align 16, !tbaa !92
  store <4 x ptr> %wide.gep566, ptr %i.fp, align 16, !tbaa !92
  %index.next567 = add nuw i64 %index539, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fq = icmp eq i64 %index.next567, %n.vec537
  br i1 %i.fq, label %middle.block568, label %vector.body538, !llvm.loop !530

middle.block568:                                  ; preds = %vector.body538
  br i1 %cmp.n569, label %._crit_edge.i.i, label %vec.epilog.iter.check573

vec.epilog.iter.check573:                         ; preds = %middle.block568
  br i1 %min.epilog.iters.check574, label %vec.epilog.scalar.ph572.preheader, label %vec.epilog.ph575, !prof !119

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check534, %vec.epilog.iter.check573
  %vec.epilog.resume.val570 = phi i64 [ %n.vec537, %vec.epilog.iter.check573 ], [ 0, %vector.main.loop.iter.check534 ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val570, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body577

vec.epilog.vector.body577:                        ; preds = %vec.epilog.vector.body577, %vec.epilog.ph575
  %index578 = phi i64 [ %vec.epilog.resume.val570, %vec.epilog.ph575 ], [ %index.next587, %vec.epilog.vector.body577 ] ; 3 uses
  %vec.ind579 = phi <4 x i64> [ %induction, %vec.epilog.ph575 ], [ %vec.ind.next588, %vec.epilog.vector.body577 ] ; 2 uses
  %wide.gep580.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %vec.ind579 ; 2 uses
  %wide.gep581.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep580.a, i64 %i.ei
  %wide.gep582.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep581.a, i64 64 ; 2 uses
  %i.fr = ptrtoint <4 x ptr> %wide.gep582.a to <4 x i64>
  %i.fs = lshr <4 x i64> %i.fr, splat (i64 1)
  %i.ft = and <4 x i64> %i.fs, splat (i64 31)
  %wide.gep583.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep582.a, <4 x i64> %i.ft
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index578
  store <4 x ptr> %wide.gep583.a, ptr %i.fu, align 16, !tbaa !92
  %wide.gep584.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep580.a, i64 %i.ej
  %wide.gep585 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep584.a, i64 64 ; 2 uses
  %i.fv = ptrtoint <4 x ptr> %wide.gep585 to <4 x i64>
  %i.fw = lshr <4 x i64> %i.fv, splat (i64 1)
  %i.fx = and <4 x i64> %i.fw, splat (i64 31)
  %wide.gep586 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep585, <4 x i64> %i.fx
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index578
  store <4 x ptr> %wide.gep586, ptr %i.fy, align 16, !tbaa !92
  %index.next587 = add nuw i64 %index578, 4       ; 2 uses
  %vec.ind.next588 = add nuw nsw <4 x i64> %vec.ind579, splat (i64 4)
  %i.fz = icmp eq i64 %index.next587, %n.vec576
  br i1 %i.fz, label %vec.epilog.middle.block589, label %vec.epilog.vector.body577, !llvm.loop !531

vec.epilog.middle.block589:                       ; preds = %vec.epilog.vector.body577
  br i1 %cmp.n590, label %._crit_edge.i.i, label %vec.epilog.scalar.ph572.preheader

vec.epilog.scalar.ph572.preheader:                ; preds = %iter.check571, %vec.epilog.iter.check573, %vec.epilog.middle.block589
  %.077145.i.i.ph = phi i64 [ 0, %iter.check571 ], [ %n.vec537, %vec.epilog.iter.check573 ], [ %n.vec576, %vec.epilog.middle.block589 ]
  br label %vec.epilog.scalar.ph572

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph572, %vec.epilog.middle.block589, %middle.block568
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !92 ; 54 uses
  %.pre.i249 = ptrtoaddr ptr %.pre.i to i64       ; 2 uses
  switch i64 %i.as, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre84.i = load ptr, ptr %i.cn, align 8, !tbaa !92
  %.pre85.i = load ptr, ptr %i.co, align 16, !tbaa !92
  %.pre86.i = load ptr, ptr %i.cp, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

vec.epilog.scalar.ph572:                          ; preds = %vec.epilog.scalar.ph572.preheader, %vec.epilog.scalar.ph572
  %.077145.i.i = phi i64 [ %i.gp, %vec.epilog.scalar.ph572 ], [ %.077145.i.i.ph, %vec.epilog.scalar.ph572.preheader ] ; 4 uses
  %i.ga = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, i64 %.077145.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw [704 x i8], ptr %i.ga, i64 %i.ei
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 64 ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = lshr i64 %i.gd, 1
  %i.gf = and i64 %i.ge, 31
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077145.i.i
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !92
  %i.gi = getelementptr inbounds nuw [704 x i8], ptr %i.ga, i64 %i.ej
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = lshr i64 %i.gk, 1
  %i.gm = and i64 %i.gl, 31
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077145.i.i
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !92
  %i.gp = add nuw nsw i64 %.077145.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gp, %i.as
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph572, !llvm.loop !532

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not40.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  br i1 %i.dt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod639.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init638 = phi i64 [ 16, %.lr.ph.i.i.i.preheader ], [ %i.iy, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.022.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.it, %.preheader.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod641)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.gq = phi i64 [ %i.gv, %.lr.ph.i.i.i.epil ], [ %.epil.init638, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.022.i.i.i.epil = phi i64 [ %i.gq, %.lr.ph.i.i.i.epil ], [ %.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter636 = phi i64 [ %epil.iter636.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.gr = shl nuw nsw i64 %.022.i.i.i.epil, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gr
end_hunk_2
begin_hunk_3_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %found.conflict481 = and i1 %bound0479, %bound1480
  %bound0482 = icmp ult ptr %scevgep471.a, %scevgep476
  %bound1483 = icmp ult ptr %scevgep475.a, %scevgep472.a
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %found.conflict481, %found.conflict484
  %bound0486 = icmp ult ptr %scevgep471.a, %scevgep478
  %bound1487 = icmp ult ptr %scevgep477, %scevgep472.a
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %scevgep473.a, %scevgep476
  %bound1491 = icmp ult ptr %scevgep475.a, %scevgep474.a
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %scevgep473.a, %scevgep478
  %bound1495 = icmp ult ptr %scevgep477, %scevgep474.a
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %scevgep475.a, %scevgep478
  %bound1499 = icmp ult ptr %scevgep477, %scevgep476
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  br i1 %conflict.rdx501, label %.lr.ph43.i.i.i, label %vector.main.loop.iter.check503

vector.main.loop.iter.check503:                   ; preds = %iter.check517
  %min.iters.check504 = icmp eq i64 %i.ab, %.0.lcssa.i110.i.i
  br i1 %min.iters.check504, label %vec.epilog.vector.body523, label %vector.body507

vector.body507:                                   ; preds = %vector.main.loop.iter.check503, %vector.body507
  %index508 = phi i64 [ %index.next513, %vector.body507 ], [ 0, %vector.main.loop.iter.check503 ] ; 2 uses
  %i.wv = add nuw i64 %.0.lcssa.i110.i.i, %index508 ; 4 uses
  %i.ww = mul i64 %i.wv, 6
  %i.wx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ww
  %wide.vec509 = load <48 x i16>, ptr %i.wx, align 1, !alias.scope !638 ; 3 uses
  %strided.vec510.a = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>
  %strided.vec511 = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
  %strided.vec512 = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47> ; 2 uses
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.wv
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %i.wv
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wv
  %i.xb = sub <16 x i16> %strided.vec510.a, %strided.vec512 ; 2 uses
  store <16 x i16> %i.xb, ptr %i.wz, align 2, !tbaa !104, !alias.scope !639, !noalias !640
  %i.xc = ashr <16 x i16> %i.xb, splat (i16 1)
  %i.xd = add <16 x i16> %i.xc, %strided.vec512   ; 2 uses
  %i.xe = sub <16 x i16> %strided.vec511, %i.xd   ; 2 uses
  store <16 x i16> %i.xe, ptr %i.xa, align 2, !tbaa !104, !alias.scope !641, !noalias !642
  %i.xf = ashr <16 x i16> %i.xe, splat (i16 1)
  %i.xg = add <16 x i16> %i.xf, %i.xd
  store <16 x i16> %i.xg, ptr %i.wy, align 2, !tbaa !104, !alias.scope !643, !noalias !638
  %index.next513 = add nuw i64 %index508, 16      ; 2 uses
  %i.xh = icmp eq i64 %index.next513, %i.ws
  br i1 %i.xh, label %.lr.ph147.i.i, label %vector.body507, !llvm.loop !572

vec.epilog.vector.body523:                        ; preds = %vector.main.loop.iter.check503, %vec.epilog.vector.body523
  %index524 = phi i64 [ %index.next529, %vec.epilog.vector.body523 ], [ 0, %vector.main.loop.iter.check503 ] ; 2 uses
  %i.xi = add nuw i64 %.0.lcssa.i110.i.i, %index524 ; 4 uses
  %i.xj = mul i64 %i.xi, 6
  %i.xk = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.xj
  %wide.vec525 = load <12 x i16>, ptr %i.xk, align 1, !alias.scope !638 ; 3 uses
  %strided.vec526.a = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec527 = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec528 = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11> ; 2 uses
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.xi
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %i.xi
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xi
  %i.xo = sub <4 x i16> %strided.vec526.a, %strided.vec528 ; 2 uses
  store <4 x i16> %i.xo, ptr %i.xm, align 2, !tbaa !104, !alias.scope !639, !noalias !640
  %i.xp = ashr <4 x i16> %i.xo, splat (i16 1)
  %i.xq = add <4 x i16> %i.xp, %strided.vec528    ; 2 uses
  %i.xr = sub <4 x i16> %strided.vec527, %i.xq    ; 2 uses
  store <4 x i16> %i.xr, ptr %i.xn, align 2, !tbaa !104, !alias.scope !641, !noalias !642
  %i.xs = ashr <4 x i16> %i.xr, splat (i16 1)
  %i.xt = add <4 x i16> %i.xs, %i.xq
  store <4 x i16> %i.xt, ptr %i.xl, align 2, !tbaa !104, !alias.scope !643, !noalias !638
  %index.next529 = add nuw i64 %index524, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next529, %i.ws
  br i1 %i.xu, label %.lr.ph147.i.i, label %vec.epilog.vector.body523, !llvm.loop !573

.lr.ph.i104.i.i:                                  ; preds = %bb.l, %.lr.ph.i104.i.i
  %i.xv = phi i64 [ %i.aac, %.lr.ph.i104.i.i ], [ 16, %bb.l ] ; 4 uses
  %.041.i.i.i = phi i64 [ %i.xv, %.lr.ph.i104.i.i ], [ 0, %bb.l ] ; 4 uses
  %i.xw = mul nuw nsw i64 %.041.i.i.i, 6
  %i.xx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.xw ; 3 uses
  %.val3436.i.i105.i.i = load <16 x i16>, ptr %i.xx, align 1, !tbaa !85, !noalias !644 ; 2 uses
  %i.xy = lshr <16 x i16> %.val3436.i.i105.i.i, splat (i16 8)
  %i.xz = and <16 x i16> %.val3436.i.i105.i.i, splat (i16 255)
  %i.ya = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.xz, <16 x i16> %i.xy)
  %i.yb = bitcast <32 x i8> %i.ya to <4 x i64>
  %i.yc = shufflevector <4 x i64> %i.yb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %.val3337.i.i106.i.i = load <16 x i16>, ptr %i.yd, align 1, !tbaa !85, !noalias !644 ; 2 uses
  %i.ye = lshr <16 x i16> %.val3337.i.i106.i.i, splat (i16 8)
  %i.yf = and <16 x i16> %.val3337.i.i106.i.i, splat (i16 255)
  %i.yg = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.yf, <16 x i16> %i.ye)
  %i.yh = bitcast <32 x i8> %i.yg to <4 x i64>
  %i.yi = shufflevector <4 x i64> %i.yh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %.val38.i.i107.i.i = load <16 x i16>, ptr %i.yj, align 1, !tbaa !85, !noalias !644 ; 2 uses
  %i.yk = lshr <16 x i16> %.val38.i.i107.i.i, splat (i16 8)
  %i.yl = and <16 x i16> %.val38.i.i107.i.i, splat (i16 255)
  %i.ym = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.yl, <16 x i16> %i.yk)
  %i.yn = bitcast <32 x i8> %i.ym to <4 x i64>
  %i.yo = shufflevector <4 x i64> %i.yn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yp = bitcast <4 x i64> %i.yc to <32 x i8>
  %i.yq = shufflevector <32 x i8> %i.yp, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yr = bitcast <4 x i64> %i.yi to <32 x i8>
  %i.ys = shufflevector <32 x i8> %i.yr, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yt = bitcast <4 x i64> %i.yo to <32 x i8>
  %i.yu = shufflevector <32 x i8> %i.yt, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yv = shufflevector <32 x i8> %i.yu, <32 x i8> %i.ys, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yw = shufflevector <32 x i8> %i.yq, <32 x i8> %i.ys, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yx = shufflevector <32 x i8> %i.yw, <32 x i8> %i.yu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.yy = shufflevector <32 x i8> %i.ys, <32 x i8> %i.yq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yz = shufflevector <32 x i8> %i.yy, <32 x i8> %i.yu, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58> ; 2 uses
  %i.za = shufflevector <32 x i8> %i.yq, <32 x i8> %i.yv, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53> ; 2 uses
  %i.zb = shufflevector <32 x i8> %i.yx, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zc = zext <16 x i8> %i.zb to <16 x i16>
  %i.zd = shufflevector <32 x i8> %i.yx, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ze = zext <16 x i8> %i.zd to <16 x i16>
  %i.zf = shl nuw <16 x i16> %i.ze, splat (i16 8)
  %i.zg = or disjoint <16 x i16> %i.zf, %i.zc
  %i.zh = shufflevector <32 x i8> %i.yz, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zi = zext <16 x i8> %i.zh to <16 x i16>
  %i.zj = shufflevector <32 x i8> %i.yz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zk = zext <16 x i8> %i.zj to <16 x i16>
  %i.zl = shl nuw <16 x i16> %i.zk, splat (i16 8)
  %i.zm = or disjoint <16 x i16> %i.zl, %i.zi
  %i.zn = shufflevector <32 x i8> %i.za, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zo = zext <16 x i8> %i.zn to <16 x i16>
  %i.zp = shufflevector <32 x i8> %i.za, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zq = zext <16 x i8> %i.zp to <16 x i16>
  %i.zr = shl nuw <16 x i16> %i.zq, splat (i16 8)
  %i.zs = or disjoint <16 x i16> %i.zr, %i.zo     ; 2 uses
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.041.i.i.i
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %.041.i.i.i
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %.041.i.i.i
  %i.zw = sub <16 x i16> %i.zg, %i.zs             ; 2 uses
  %i.zx = ashr <16 x i16> %i.zw, splat (i16 1)
  %i.zy = add <16 x i16> %i.zx, %i.zs             ; 2 uses
  %i.zz = sub <16 x i16> %i.zm, %i.zy             ; 2 uses
  %i.aaa = ashr <16 x i16> %i.zz, splat (i16 1)
  %i.aab = add <16 x i16> %i.aaa, %i.zy
  store <16 x i16> %i.aab, ptr %i.zt, align 1, !tbaa !85
  store <16 x i16> %i.zw, ptr %i.zu, align 1, !tbaa !85
  store <16 x i16> %i.zz, ptr %i.zv, align 1, !tbaa !85
  %i.aac = add nuw nsw i64 %i.xv, 16
  %.not.i108.i.i.not = icmp samesign ult i64 %i.xv, %i.ab
  br i1 %.not.i108.i.i.not, label %.lr.ph.i104.i.i, label %.preheader.i109.i.i, !llvm.loop !16

.lr.ph43.i.i.i:                                   ; preds = %iter.check517, %.lr.ph43.i.i.i
  %.142.i.i.i = phi i64 [ %i.aaq, %.lr.ph43.i.i.i ], [ %.0.lcssa.i110.i.i, %iter.check517 ] ; 5 uses
  %i.aad = mul i64 %.142.i.i.i, 6
  %i.aae = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.aad ; 3 uses
  %.val34.i.i.i = load i16, ptr %i.aae, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  %.val32.i.i.i = load i16, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %.val.i111.i.i = load i16, ptr %i.aag, align 1  ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.142.i.i.i
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %.142.i.i.i
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %.142.i.i.i
  %i.aak = sub i16 %.val34.i.i.i, %.val.i111.i.i  ; 2 uses
  store i16 %i.aak, ptr %i.aai, align 2, !tbaa !104
  %i.aal = ashr i16 %i.aak, 1
  %i.aam = add i16 %i.aal, %.val.i111.i.i         ; 2 uses
  %i.aan = sub i16 %.val32.i.i.i, %i.aam          ; 2 uses
  store i16 %i.aan, ptr %i.aaj, align 2, !tbaa !104
  %i.aao = ashr i16 %i.aan, 1
  %i.aap = add i16 %i.aao, %i.aam
  store i16 %i.aap, ptr %i.aah, align 2, !tbaa !104
  %i.aaq = add nuw i64 %.142.i.i.i, 1             ; 2 uses
  %exitcond.not.i112.i.i = icmp eq i64 %i.aaq, %i.ab
  br i1 %exitcond.not.i112.i.i, label %.lr.ph147.i.i, label %.lr.ph43.i.i.i, !llvm.loop !576

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.aar = phi ptr [ %.pre86.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aas = phi ptr [ %.pre85.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aat = phi ptr [ %.pre84.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aau = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not40.i.i.i, label %.preheader.i115.i.i, label %.lr.ph.i113.i.i

.preheader.i115.i.i:                              ; preds = %.lr.ph.i113.i.i, %bb.m
  %.0.lcssa.i116.i.i = phi i64 [ 0, %bb.m ], [ %i.acr, %.lr.ph.i113.i.i ] ; 8 uses
  %i.aav = icmp samesign ult i64 %.0.lcssa.i116.i.i, %i.ab
  br i1 %i.aav, label %iter.check, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i

iter.check:                                       ; preds = %.preheader.i115.i.i
  %i.aaw = sub nuw nsw i64 %i.ab, %.0.lcssa.i116.i.i ; 2 uses
  %i.aax = shl nuw nsw i64 %.0.lcssa.i116.i.i, 1  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.aat, i64 %i.aax ; 4 uses
  %scevgep106.a = getelementptr i8, ptr %i.aat, i64 %i.cr ; 4 uses
  %scevgep107.a = getelementptr i8, ptr %i.aas, i64 %i.aax ; 4 uses
  %scevgep108.a = getelementptr i8, ptr %i.aas, i64 %i.cr ; 4 uses
  %scevgep109.a = getelementptr i8, ptr %i.aau, i64 %i.aax ; 4 uses
  %scevgep110.a = getelementptr i8, ptr %i.aau, i64 %i.cr ; 4 uses
  %scevgep111.a = getelementptr i8, ptr %i.aar, i64 %i.aax ; 4 uses
  %scevgep112.a = getelementptr i8, ptr %i.aar, i64 %i.cr ; 4 uses
  %i.aay = shl nuw nsw i64 %.0.lcssa.i116.i.i, 3
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.aay ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep108.a
  %bound1 = icmp ult ptr %scevgep107.a, %scevgep106.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %scevgep, %scevgep110.a
  %bound1117 = icmp ult ptr %scevgep109.a, %scevgep106.a
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult ptr %scevgep, %scevgep112.a
  %bound1120 = icmp ult ptr %scevgep111.a, %scevgep106.a
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep, %scevgep115
  %bound1124 = icmp ult ptr %scevgep114, %scevgep106.a
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep107.a, %scevgep110.a
  %bound1128 = icmp ult ptr %scevgep109.a, %scevgep108.a
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep107.a, %scevgep112.a
  %bound1132 = icmp ult ptr %scevgep111.a, %scevgep108.a
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep107.a, %scevgep115
  %bound1136 = icmp ult ptr %scevgep114, %scevgep108.a
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep109.a, %scevgep112.a
  %bound1140 = icmp ult ptr %scevgep111.a, %scevgep110.a
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep109.a, %scevgep115
  %bound1144 = icmp ult ptr %scevgep114, %scevgep110.a
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %scevgep111.a, %scevgep115
  %bound1148 = icmp ult ptr %scevgep114, %scevgep112.a
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  br i1 %conflict.rdx150, label %.lr.ph61.i.i.i, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp eq i64 %i.ab, %.0.lcssa.i116.i.i
  br i1 %min.iters.check151, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.aaz = add nuw i64 %.0.lcssa.i116.i.i, %index ; 5 uses
  %i.aba = shl i64 %i.aaz, 3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.aba
  %wide.vec = load <64 x i16>, ptr %i.abb, align 1, !alias.scope !645 ; 4 uses
  %i.abc = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abd = shufflevector <64 x i16> %i.abc, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.abe = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abf = shufflevector <64 x i16> %i.abe, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.abg = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abh = shufflevector <64 x i16> %i.abg, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %i.abi = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abj = shufflevector <64 x i16> %i.abi, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.aaz
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.aaz
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aaz
  %i.abn = sub <16 x i16> %i.abd, %i.abh          ; 2 uses
  store <16 x i16> %i.abn, ptr %i.abl, align 2, !tbaa !104, !alias.scope !646, !noalias !647
  %i.abo = ashr <16 x i16> %i.abn, splat (i16 1)
  %i.abp = add <16 x i16> %i.abo, %i.abh          ; 2 uses
  %i.abq = sub <16 x i16> %i.abf, %i.abp          ; 2 uses
  store <16 x i16> %i.abq, ptr %i.abm, align 2, !tbaa !104, !alias.scope !648, !noalias !649
  %i.abr = ashr <16 x i16> %i.abq, splat (i16 1)
  %i.abs = add <16 x i16> %i.abr, %i.abp
  store <16 x i16> %i.abs, ptr %i.abk, align 2, !tbaa !104, !alias.scope !650, !noalias !651
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.aaz
  store <16 x i16> %i.abj, ptr %i.abt, align 2, !tbaa !104, !alias.scope !652, !noalias !645
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abu = icmp eq i64 %index.next, %i.aaw
  br i1 %i.abu, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vector.body, !llvm.loop !583

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index156 = phi i64 [ %index.next162, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.abv = add nuw i64 %.0.lcssa.i116.i.i, %index156 ; 5 uses
  %i.abw = shl i64 %i.abv, 3
  %i.abx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.abw
  %wide.vec157 = load <16 x i16>, ptr %i.abx, align 1, !alias.scope !645 ; 4 uses
  %i.aby = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.abz = shufflevector <16 x i16> %i.aby, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.aca = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acb = shufflevector <16 x i16> %i.aca, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.acc = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acd = shufflevector <16 x i16> %i.acc, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.ace = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acf = shufflevector <16 x i16> %i.ace, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.acg = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.abv
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.abv
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.abv
  %i.acj = sub <4 x i16> %i.abz, %i.acd           ; 2 uses
  store <4 x i16> %i.acj, ptr %i.ach, align 2, !tbaa !104, !alias.scope !646, !noalias !647
  %i.ack = ashr <4 x i16> %i.acj, splat (i16 1)
  %i.acl = add <4 x i16> %i.ack, %i.acd           ; 2 uses
  %i.acm = sub <4 x i16> %i.acb, %i.acl           ; 2 uses
  store <4 x i16> %i.acm, ptr %i.aci, align 2, !tbaa !104, !alias.scope !648, !noalias !649
  %i.acn = ashr <4 x i16> %i.acm, splat (i16 1)
  %i.aco = add <4 x i16> %i.acn, %i.acl
  store <4 x i16> %i.aco, ptr %i.acg, align 2, !tbaa !104, !alias.scope !650, !noalias !651
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.abv
  store <4 x i16> %i.acf, ptr %i.acp, align 2, !tbaa !104, !alias.scope !652, !noalias !645
  %index.next162 = add nuw i64 %index156, 4       ; 2 uses
  %i.acq = icmp eq i64 %index.next162, %i.aaw
  br i1 %i.acq, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vec.epilog.vector.body, !llvm.loop !584

.lr.ph.i113.i.i:                                  ; preds = %bb.m, %.lr.ph.i113.i.i
  %i.acr = phi i64 [ %i.afk, %.lr.ph.i113.i.i ], [ 16, %bb.m ] ; 4 uses
  %.059.i.i.i = phi i64 [ %i.acr, %.lr.ph.i113.i.i ], [ 0, %bb.m ] ; 5 uses
  %i.acs = shl nuw nsw i64 %.059.i.i.i, 3
  %i.act = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.acs ; 4 uses
  %i.acu = load <8 x i32>, ptr %i.act, align 1, !tbaa !85, !noalias !653 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  %i.acw = load <8 x i32>, ptr %i.acv, align 1, !tbaa !85, !noalias !653 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.act, i64 64
  %i.acy = load <8 x i32>, ptr %i.acx, align 1, !tbaa !85, !noalias !653 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 96
  %i.ada = load <8 x i32>, ptr %i.acz, align 1, !tbaa !85, !noalias !653 ; 2 uses
  %i.adb = and <8 x i32> %i.acu, splat (i32 65535)
  %i.adc = and <8 x i32> %i.acw, splat (i32 65535)
  %i.add = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adb, <8 x i32> %i.adc)
  %i.ade = and <8 x i32> %i.acy, splat (i32 65535)
  %i.adf = and <8 x i32> %i.ada, splat (i32 65535)
  %i.adg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ade, <8 x i32> %i.adf)
  %i.adh = lshr <8 x i32> %i.acu, splat (i32 16)
  %i.adi = lshr <8 x i32> %i.acw, splat (i32 16)
  %i.adj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adh, <8 x i32> %i.adi)
  %i.adk = lshr <8 x i32> %i.acy, splat (i32 16)
  %i.adl = lshr <8 x i32> %i.ada, splat (i32 16)
  %i.adm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adk, <8 x i32> %i.adl)
  %i.adn = bitcast <16 x i16> %i.add to <8 x i32>
  %i.ado = shufflevector <8 x i32> %i.adn, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.adp = and <8 x i32> %i.ado, splat (i32 65535)
  %i.adq = bitcast <16 x i16> %i.adg to <8 x i32>
  %i.adr = shufflevector <8 x i32> %i.adq, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ads = and <8 x i32> %i.adr, splat (i32 65535)
  %i.adt = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adp, <8 x i32> %i.ads)
  %i.adu = bitcast <16 x i16> %i.adt to <4 x i64>
  %i.adv = shufflevector <4 x i64> %i.adu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adw = bitcast <16 x i16> %i.adj to <8 x i32>
  %i.adx = shufflevector <8 x i32> %i.adw, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ady = and <8 x i32> %i.adx, splat (i32 65535)
  %i.adz = bitcast <16 x i16> %i.adm to <8 x i32>
  %i.aea = shufflevector <8 x i32> %i.adz, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.aeb = and <8 x i32> %i.aea, splat (i32 65535)
  %i.aec = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ady, <8 x i32> %i.aeb)
  %i.aed = bitcast <16 x i16> %i.aec to <4 x i64>
  %i.aee = shufflevector <4 x i64> %i.aed, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aef = lshr <8 x i32> %i.ado, splat (i32 16)
  %i.aeg = lshr <8 x i32> %i.adr, splat (i32 16)
  %i.aeh = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aef, <8 x i32> %i.aeg)
  %i.aei = bitcast <16 x i16> %i.aeh to <4 x i64>
  %i.aej = shufflevector <4 x i64> %i.aei, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aek = lshr <8 x i32> %i.adx, splat (i32 16)
  %i.ael = lshr <8 x i32> %i.aea, splat (i32 16)
  %i.aem = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aek, <8 x i32> %i.ael)
  %i.aen = bitcast <16 x i16> %i.aem to <4 x i64>
  %i.aeo = shufflevector <4 x i64> %i.aen, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aep = bitcast <4 x i64> %i.adv to <32 x i8>
  %i.aeq = shufflevector <32 x i8> %i.aep, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aer = bitcast <4 x i64> %i.aee to <32 x i8>
  %i.aes = shufflevector <32 x i8> %i.aer, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aet = bitcast <4 x i64> %i.aej to <32 x i8>
  %i.aeu = shufflevector <32 x i8> %i.aet, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aev = bitcast <4 x i64> %i.aeo to <32 x i8>
  %i.aew = shufflevector <32 x i8> %i.aev, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %.059.i.i.i
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %.059.i.i.i
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %.059.i.i.i
  %i.afa = bitcast <32 x i8> %i.aeq to <16 x i16>
  %i.afb = bitcast <32 x i8> %i.aeu to <16 x i16> ; 2 uses
  %i.afc = sub <16 x i16> %i.afa, %i.afb          ; 2 uses
  %i.afd = ashr <16 x i16> %i.afc, splat (i16 1)
  %i.afe = add <16 x i16> %i.afd, %i.afb          ; 2 uses
  %i.aff = bitcast <32 x i8> %i.aes to <16 x i16>
  %i.afg = sub <16 x i16> %i.aff, %i.afe          ; 2 uses
  %i.afh = ashr <16 x i16> %i.afg, splat (i16 1)
  %i.afi = add <16 x i16> %i.afh, %i.afe
  store <16 x i16> %i.afi, ptr %i.aex, align 1, !tbaa !85
  store <16 x i16> %i.afc, ptr %i.aey, align 1, !tbaa !85
  store <16 x i16> %i.afg, ptr %i.aez, align 1, !tbaa !85
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %.059.i.i.i
  store <32 x i8> %i.aew, ptr %i.afj, align 1, !tbaa !85
  %i.afk = add nuw nsw i64 %i.acr, 16
  %.not.i114.i.i.not = icmp samesign ult i64 %i.acr, %i.ab
  br i1 %.not.i114.i.i.not, label %.lr.ph.i113.i.i, label %.preheader.i115.i.i, !llvm.loop !17

.lr.ph61.i.i.i:                                   ; preds = %iter.check, %.lr.ph61.i.i.i
  %.160.i.i.i = phi i64 [ %i.age, %.lr.ph61.i.i.i ], [ %.0.lcssa.i116.i.i, %iter.check ] ; 6 uses
  %i.afl = shl i64 %.160.i.i.i, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.afl ; 4 uses
  %.val48.i.i.i = load i16, ptr %i.afm, align 1
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 2
  %.val46.i.i.i = load i16, ptr %i.afn, align 1
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %.val44.i.i.i = load i16, ptr %i.afo, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 6
end_hunk_3
begin_hunk_4_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13From9To13BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a

_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.aob = load ptr, ptr %i.ami, align 8, !tbaa !622
  %i.aoc = load ptr, ptr %i.amh, align 8, !tbaa !621 ; 5 uses
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !68
  %i.aoe = add i64 %i.aod, 1
  store i64 %i.aoe, ptr %i.aoc, align 8, !tbaa !68
  %i.aof = trunc i64 %i.anz to i32
  %i.aog = add i32 %i.aof, -8                     ; 3 uses
  %i.aoh = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true)
  %i.aoi = icmp ult i32 %i.aog, 16
  %i.aoj = sub nuw nsw i32 43, %i.aoh
  %i.aok = select i1 %i.aoi, i32 %i.aog, i32 %i.aoj
  %i.aol = zext i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %i.aol ; 2 uses
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !68
  %i.aoo = add i64 %i.aon, 1
  store i64 %i.aoo, ptr %i.aom, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %.lr.ph47.i.i.i.i.preheader, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

.lr.ph47.i.i.i.i.preheader:                       ; preds = %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i
  %.neg657 = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %xtraiter654 = and i64 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %.lr.ph47.i.i.i.i.prol.loopexit, label %.lr.ph47.i.i.i.i.prol

.lr.ph47.i.i.i.i.prol:                            ; preds = %.lr.ph47.i.i.i.i.preheader
  %i.aop = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.speculated.i.i.i.i
  %i.aoq = load i16, ptr %i.aop, align 2, !tbaa !104
  %i.aor = zext i16 %i.aoq to i32
  %i.aos = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aor, i1 false)
  %i.aot = sub nuw nsw i32 32, %i.aos
  %i.aou = zext nneg i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.aou ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !68
  %i.aox = add i64 %i.aow, 1
  store i64 %i.aox, ptr %i.aov, align 8, !tbaa !68
  %i.aoy = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  br label %.lr.ph47.i.i.i.i.prol.loopexit

.lr.ph47.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph47.i.i.i.i.prol, %.lr.ph47.i.i.i.i.preheader
  %.0.i1846.i.i.i.i.unr = phi i64 [ %.sroa.speculated.i.i.i.i, %.lr.ph47.i.i.i.i.preheader ], [ %i.aoy, %.lr.ph47.i.i.i.i.prol ]
  %i.aoz = icmp eq i64 %.sroa.speculated.i.i.i, %.neg657
  br i1 %i.aoz, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph47.i.i.i.i

.lr.ph47.i.i.i.i:                                 ; preds = %.lr.ph47.i.i.i.i.prol.loopexit, %.lr.ph47.i.i.i.i
  %.0.i1846.i.i.i.i = phi i64 [ %i.apt, %.lr.ph47.i.i.i.i ], [ %.0.i1846.i.i.i.i.unr, %.lr.ph47.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i1846.i.i.i.i
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !104
  %i.apc = zext i16 %i.apb to i32
  %i.apd = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apc, i1 false)
  %i.ape = sub nuw nsw i32 32, %i.apd
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.apf ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !68
  %i.api = add i64 %i.aph, 1
  store i64 %i.api, ptr %i.apg, align 8, !tbaa !68
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i1846.i.i.i.i
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !104
  %i.apm = zext i16 %i.apl to i32
  %i.apn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apm, i1 false)
  %i.apo = sub nuw nsw i32 32, %i.apn
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.app ; 2 uses
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !68
  %i.aps = add i64 %i.apr, 1
  store i64 %i.aps, ptr %i.apq, align 8, !tbaa !68
  %i.apt = add nuw nsw i64 %.0.i1846.i.i.i.i, 2   ; 2 uses
  %exitcond49.not.i.i.i.i.1 = icmp eq i64 %i.apt, %.sroa.speculated.i.i.i
  br i1 %exitcond49.not.i.i.i.i.1, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph47.i.i.i.i, !llvm.loop !600

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  %i.apu = load ptr, ptr %i.amh, align 8, !tbaa !621 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.0.i45.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.aqo, %bb.w ] ; 3 uses
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i45.i.i.i.i
  %i.apw = load i16, ptr %i.apv, align 4, !tbaa !104
  %i.apx = zext i16 %i.apw to i32
  %i.apy = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apx, i1 false)
  %i.apz = sub nuw nsw i32 32, %i.apy
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %i.aqa ; 2 uses
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !68
  %i.aqd = add i64 %i.aqc, 1
  store i64 %i.aqd, ptr %i.aqb, align 8, !tbaa !68
  %i.aqe = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i45.i.i.i.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 2
  %i.aqg = load i16, ptr %i.aqf, align 2, !tbaa !104
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aqh, i1 false)
  %i.aqj = sub nuw nsw i32 32, %i.aqi
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %i.aqk ; 2 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !68
  %i.aqn = add i64 %i.aqm, 1
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !68
  %i.aqo = add nuw nsw i64 %.0.i45.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.aqo, %.sroa.speculated.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %bb.w, !llvm.loop !600

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i: ; preds = %bb.w, %.lr.ph47.i.i.i.i.prol.loopexit, %.lr.ph47.i.i.i.i, %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i, %bb.v
  %.sink.i.i62.i = phi i64 [ 0, %.lr.ph47.i.i.i.i.prol.loopexit ], [ %i.anx, %bb.v ], [ 0, %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13From9To13BitsEE3RleEmPm.exit.i.i.i.i ], [ 0, %.lr.ph47.i.i.i.i ], [ %.sink.i.i63.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aqp = add nuw nsw i64 %.015.i.i.i, 16        ; 2 uses
  %i.aqq = icmp samesign ult i64 %i.aqp, %i.ab
  br i1 %i.aqq, label %bb.t, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, !llvm.loop !601

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i
  store i64 %.sink.i.i62.i, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.aqr = add nuw nsw i64 %.075149.i.i, 1        ; 2 uses
  %exitcond175.not.i.i = icmp eq i64 %i.aqr, %i.as
  br i1 %exitcond175.not.i.i, label %.loopexit.i.i, label %.lr.ph.i127.i.i, !llvm.loop !602

.loopexit.i.i:                                    ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, %._crit_edge148.i.i, %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.aqs = add i64 %.078151.i.i, 1
  %exitcond176.not.i.i = icmp eq i64 %.078151.i.i, %i.ad
  br i1 %exitcond176.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !603

bb.x:                                             ; preds = %.preheader.i.i
  %i.aqt = ptrtoint ptr %i.cm to i64
  %i.aqu = sub i64 %i.cl, %i.aqt
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.aqu) #39
  br label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.x, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03961.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.arg, %.lr.ph.i ] ; 6 uses
  %niter622 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter622.next.1, %.lr.ph.i ]
  %i.aqv = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03961.i ; 3 uses
  %i.aqw = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03961.i
  store ptr %i.aqv, ptr %i.aqw, align 16, !tbaa !619
  %i.aqx = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.03961.i
  store ptr %i.aqx, ptr %i.aqv, align 16, !tbaa !621
  %i.aqy = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.03961.i
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store ptr %i.aqy, ptr %i.aqz, align 8, !tbaa !622
  %i.ara = or disjoint i64 %.03961.i, 1           ; 4 uses
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ara ; 3 uses
  %i.arc = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ara
  store ptr %i.arb, ptr %i.arc, align 16, !tbaa !619
  %i.ard = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.ara
  store ptr %i.ard, ptr %i.arb, align 16, !tbaa !621
  %i.are = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.ara
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store ptr %i.are, ptr %i.arf, align 8, !tbaa !622
  %i.arg = add nuw nsw i64 %.03961.i, 2           ; 2 uses
  %niter622.next.1 = add nuw i64 %niter622, 2     ; 2 uses
  %niter622.ncmp.1 = icmp eq i64 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !604

_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13From9To13BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit: ; preds = %._crit_edge66.i, %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13From9To13BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i
  %i.arh = load ptr, ptr %i.n, align 8, !tbaa !608, !nonnull !121, !align !176 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 40
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !107
  %i.ark = load ptr, ptr %i.arh, align 8, !tbaa !106
  call void %i.arj(ptr noundef %i.ark, ptr noundef %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16>, <16 x i16>) #26

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13Exactly14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i16], align 64              ; 8 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %4 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector.114"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.115"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !740, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !741, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !742, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 11 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.u, i64 0)
  %i.v = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.w = trunc i64 %3 to i32
  %i.x = shl i64 %i.v, 32
  %i.y = ashr exact i64 %i.x, 32                  ; 5 uses
  %i.z = sub nsw i64 %.sroa.speculated33, %i.v
  %i.aa = trunc i64 %i.z to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.w) ; 2 uses
  %i.ab = and i64 %.sroa.speculated28, 496        ; 41 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !68  ; 13 uses
  %i.ad = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !743, !nonnull !121, !align !176 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !744, !nonnull !121, !align !176 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !745, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = zext nneg i8 %i.ak to i64               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !746, !nonnull !121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !747, !nonnull !121, !align !176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 26 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !748, !nonnull !121
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95, !range !108, !noundef !121
  %i.aw = trunc nuw i8 %i.av to i1                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !749, !nonnull !121, !align !176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %.not66.i = icmp eq i64 %i.as, 0                ; 4 uses
  br i1 %i.ap, label %.preheader52.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !179
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.bb, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bd, align 8, !tbaa !179
  br i1 %.not66.i, label %._crit_edge65.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.al ; 3 uses
  %i.bf = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.bg = icmp eq i64 %i.as, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph64.i.new

.lr.ph64.i.new:                                   ; preds = %.lr.ph64.i
  %unroll_iter = and i64 %i.as, -2
  br label %bb.b

._crit_edge65.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge65.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge65.i.loopexit.unr-lcssa, %.lr.ph64.i
  %.03863.i.epil.init = phi i64 [ 0, %.lr.ph64.i ], [ %i.bs, %._crit_edge65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod617 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod617)
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.03863.i.epil.init ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.03863.i.epil.init
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bh, align 16, !tbaa !182
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !183
  br label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %.epil.preheader, %._crit_edge65.i.loopexit.unr-lcssa, %.preheader.i
  %i.bk = add nsw i64 %i.ad, 1
  call fastcc void @_ZN4AVX212_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i64 noundef %i.bk, i64 noundef %i.ac, ptr noundef readonly %i.az, i64 noundef %i.as, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph64.i.new
  %.03863.i = phi i64 [ 0, %.lr.ph64.i.new ], [ %i.bs, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph64.i.new ], [ %niter.next.1, %bb.b ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.03863.i ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.03863.i
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bl, align 16, !tbaa !182
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !183
  %i.bo = or disjoint i64 %.03863.i, 1            ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bo
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !180
  store ptr %i.be, ptr %i.bp, align 16, !tbaa !182
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !183
  %i.bs = add nuw nsw i64 %.03863.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge65.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !663

.preheader52.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !752
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !752
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bv, align 8, !tbaa !752
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bw, align 8, !tbaa !752
  br i1 %.not66.i, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader52.i
  %xtraiter618 = and i64 %i.as, 1
  %i.bx = icmp eq i64 %i.as, 1
  br i1 %i.bx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter621 = and i64 %i.as, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.060.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.arg, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod620 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod620)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.060.i.epil.init ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.060.i.epil.init
  store ptr %i.by, ptr %i.bz, align 16, !tbaa !753
  %i.ca = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.060.i.epil.init
  store ptr %i.ca, ptr %i.by, align 16, !tbaa !755
  %i.cb = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.060.i.epil.init
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !756
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
  %i.cl = phi i64 [ %i.ck, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader52.i ]
  %i.cm = phi ptr [ %i.ce, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader52.i ] ; 9 uses
  %.not155.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not155.i.i, label %.preheader.i.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not40.i.i.i = icmp ult i64 %i.m, 16           ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not.i126.i.i = icmp eq i64 %i.ab, 0
  %i.cq = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 5                ; 8 uses
  %i.cs = mul i64 %i.ac, %i.y                     ; 3 uses
  %i.ct = shl nuw nsw i64 %i.cq, 7
  %i.cu = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = add i64 %i.cs, %i.t                     ; 2 uses
  %i.cw = lshr i64 %.sroa.speculated28, 4         ; 3 uses
  %i.cx = shl nuw nsw i64 %i.cw, 5                ; 7 uses
  %i.cy = mul i64 %i.ac, %i.y                     ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cw, 6
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = mul nuw nsw i64 %i.cw, 96
  %i.dc = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 5                ; 3 uses
  %i.de = mul i64 %i.ac, %i.y
  %i.df = mul nuw nsw i64 %i.dc, 96
  %i.dg = add nsw i64 %.sroa.speculated28, -16    ; 3 uses
  %i.dh = lshr i64 %i.dg, 4
  %i.di = add nuw nsw i64 %i.dh, 1                ; 4 uses
  %8 = getelementptr i8, ptr %i.s, i64 %i.de
  %i.dj = getelementptr i8, ptr %8, i64 %i.df
  %i.dk = getelementptr i8, ptr %i.s, i64 %i.cy
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.db
  %i.dm = getelementptr i8, ptr %i.s, i64 %i.da
  %i.dn = getelementptr i8, ptr %i.s, i64 %i.da
  %i.do = getelementptr i8, ptr %i.s, i64 %i.cu
  %i.dp = getelementptr i8, ptr %i.s, i64 %i.cs
  %i.dq = getelementptr i8, ptr %i.s, i64 %i.cu
  %min.iters.check533.a = icmp ult i64 %i.as, 4
  %min.iters.check535 = icmp ult i64 %i.as, 16
  %i.dr = and i64 %i.as, 12
  %n.vec537 = and i64 %i.as, -16                  ; 4 uses
  %cmp.n569 = icmp eq i64 %i.as, %n.vec537
  %min.epilog.iters.check574 = icmp eq i64 %i.dr, 0
  %n.vec576 = and i64 %i.as, -4                   ; 3 uses
  %cmp.n590 = icmp eq i64 %i.as, %n.vec576
  %xtraiter627 = and i64 %i.di, 3                 ; 3 uses
  %i.ds = icmp ult i64 %i.dg, 48
  %unroll_iter631 = and i64 %i.di, 2305843009213693948
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  %lcmp.mod630 = icmp ne i64 %xtraiter627, 0
  %xtraiter635 = and i64 %i.di, 3                 ; 3 uses
  %i.dt = icmp ult i64 %i.dg, 48
  %unroll_iter642 = and i64 %i.di, 2305843009213693948
  %lcmp.mod639.not = icmp eq i64 %xtraiter635, 0
  %lcmp.mod641 = icmp ne i64 %xtraiter635, 0
  %xtraiter648 = and i64 %i.as, 1
  %i.du = icmp eq i64 %i.as, 1
  %unroll_iter652 = and i64 %i.as, -2
  %lcmp.mod650.not = icmp eq i64 %xtraiter648, 0
  %lcmp.mod651 = trunc i64 %i.as to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i128.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i128.i.i, label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.x

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph152.i.i
  %.078151.i.i = phi i64 [ 0, %.lr.ph152.i.i ], [ %i.aqs, %.loopexit.i.i ] ; 13 uses
  %i.dv = mul i64 %i.ac, %.078151.i.i
  %scevgep478 = getelementptr i8, ptr %i.dj, i64 %i.dv ; 3 uses
  %i.dw = mul i64 %i.ac, %.078151.i.i
  %scevgep415 = getelementptr i8, ptr %i.dl, i64 %i.dw ; 3 uses
  %i.dx = mul i64 %i.ac, %.078151.i.i
  %scevgep363 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = mul i64 %i.ac, %.078151.i.i
  %scevgep313 = getelementptr i8, ptr %i.dn, i64 %i.dy ; 2 uses
  %i.dz = mul i64 %i.ac, %.078151.i.i
  %i.ea = add i64 %i.cv, %i.dz
  %i.eb = mul i64 %i.ac, %.078151.i.i
  %i.ec = add i64 %i.cv, %i.eb
  %i.ed = mul i64 %i.ac, %.078151.i.i
  %scevgep175 = getelementptr i8, ptr %i.do, i64 %i.ed ; 4 uses
  %i.ee = mul i64 %i.ac, %.078151.i.i             ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.dp, i64 %i.ee
  %scevgep115 = getelementptr i8, ptr %i.dq, i64 %i.ee ; 4 uses
  %i.ef = add i64 %.078151.i.i, %i.y
  %i.eg = mul i64 %i.ef, %i.ac
  %i.eh = getelementptr i8, ptr %i.s, i64 %i.eg   ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not66.i, label %._crit_edge.thread.i.i, label %iter.check571

iter.check571:                                    ; preds = %bb.c
  %i.ei = and i64 %.078151.i.i, 1                 ; 7 uses
  %i.ej = xor i64 %i.ei, 1                        ; 6 uses
  br i1 %min.iters.check533.a, label %vec.epilog.scalar.ph572.preheader, label %vector.main.loop.iter.check534

vector.main.loop.iter.check534:                   ; preds = %iter.check571
  br i1 %min.iters.check535, label %vec.epilog.ph575, label %vector.body538

vector.body538:                                   ; preds = %vector.main.loop.iter.check534, %vector.body538
  %index539 = phi i64 [ %index.next567, %vector.body538 ], [ 0, %vector.main.loop.iter.check534 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body538 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check534 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %vec.ind ; 2 uses
  %wide.gep540.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add ; 2 uses
  %wide.gep541.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep542.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep543.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.ei
  %wide.gep544.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep540.a, i64 %i.ei
  %wide.gep545.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep541.a, i64 %i.ei
  %wide.gep546.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep542.a, i64 %i.ei
  %wide.gep547.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep543.a, i64 64 ; 2 uses
  %wide.gep548.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep544.a, i64 64 ; 2 uses
  %wide.gep549.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep545.a, i64 64 ; 2 uses
  %wide.gep550.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep546.a, i64 64 ; 2 uses
  %i.ek = ptrtoint <4 x ptr> %wide.gep547.a to <4 x i64>
  %i.el = ptrtoint <4 x ptr> %wide.gep548.a to <4 x i64>
  %i.em = ptrtoint <4 x ptr> %wide.gep549.a to <4 x i64>
  %i.en = ptrtoint <4 x ptr> %wide.gep550.a to <4 x i64>
  %i.eo = lshr <4 x i64> %i.ek, splat (i64 1)
  %i.ep = lshr <4 x i64> %i.el, splat (i64 1)
  %i.eq = lshr <4 x i64> %i.em, splat (i64 1)
  %i.er = lshr <4 x i64> %i.en, splat (i64 1)
  %i.es = and <4 x i64> %i.eo, splat (i64 31)
  %i.et = and <4 x i64> %i.ep, splat (i64 31)
  %i.eu = and <4 x i64> %i.eq, splat (i64 31)
  %i.ev = and <4 x i64> %i.er, splat (i64 31)
  %wide.gep551.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep547.a, <4 x i64> %i.es
  %wide.gep552.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep548.a, <4 x i64> %i.et
  %wide.gep553.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep549.a, <4 x i64> %i.eu
  %wide.gep554.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep550.a, <4 x i64> %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index539 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  store <4 x ptr> %wide.gep551.a, ptr %i.ew, align 16, !tbaa !92
  store <4 x ptr> %wide.gep552.a, ptr %i.ex, align 16, !tbaa !92
  store <4 x ptr> %wide.gep553.a, ptr %i.ey, align 16, !tbaa !92
  store <4 x ptr> %wide.gep554.a, ptr %i.ez, align 16, !tbaa !92
  %wide.gep555.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep, i64 %i.ej
  %wide.gep556.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep540.a, i64 %i.ej
  %wide.gep557.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep541.a, i64 %i.ej
  %wide.gep558.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep542.a, i64 %i.ej
  %wide.gep559.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep555.a, i64 64 ; 2 uses
  %wide.gep560.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep556.a, i64 64 ; 2 uses
  %wide.gep561.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep557.a, i64 64 ; 2 uses
  %wide.gep562.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep558.a, i64 64 ; 2 uses
  %i.fa = ptrtoint <4 x ptr> %wide.gep559.a to <4 x i64>
  %i.fb = ptrtoint <4 x ptr> %wide.gep560.a to <4 x i64>
  %i.fc = ptrtoint <4 x ptr> %wide.gep561.a to <4 x i64>
  %i.fd = ptrtoint <4 x ptr> %wide.gep562.a to <4 x i64>
  %i.fe = lshr <4 x i64> %i.fa, splat (i64 1)
  %i.ff = lshr <4 x i64> %i.fb, splat (i64 1)
  %i.fg = lshr <4 x i64> %i.fc, splat (i64 1)
  %i.fh = lshr <4 x i64> %i.fd, splat (i64 1)
  %i.fi = and <4 x i64> %i.fe, splat (i64 31)
  %i.fj = and <4 x i64> %i.ff, splat (i64 31)
  %i.fk = and <4 x i64> %i.fg, splat (i64 31)
  %i.fl = and <4 x i64> %i.fh, splat (i64 31)
  %wide.gep563.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep559.a, <4 x i64> %i.fi
  %wide.gep564.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep560.a, <4 x i64> %i.fj
  %wide.gep565 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep561.a, <4 x i64> %i.fk
  %wide.gep566 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep562.a, <4 x i64> %i.fl
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index539 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  store <4 x ptr> %wide.gep563.a, ptr %i.fm, align 16, !tbaa !92
  store <4 x ptr> %wide.gep564.a, ptr %i.fn, align 16, !tbaa !92
  store <4 x ptr> %wide.gep565, ptr %i.fo, align 16, !tbaa !92
  store <4 x ptr> %wide.gep566, ptr %i.fp, align 16, !tbaa !92
  %index.next567 = add nuw i64 %index539, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fq = icmp eq i64 %index.next567, %n.vec537
  br i1 %i.fq, label %middle.block568, label %vector.body538, !llvm.loop !664

middle.block568:                                  ; preds = %vector.body538
  br i1 %cmp.n569, label %._crit_edge.i.i, label %vec.epilog.iter.check573

vec.epilog.iter.check573:                         ; preds = %middle.block568
  br i1 %min.epilog.iters.check574, label %vec.epilog.scalar.ph572.preheader, label %vec.epilog.ph575, !prof !119

vec.epilog.ph575:                                 ; preds = %vector.main.loop.iter.check534, %vec.epilog.iter.check573
  %vec.epilog.resume.val570 = phi i64 [ %n.vec537, %vec.epilog.iter.check573 ], [ 0, %vector.main.loop.iter.check534 ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val570, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body577

vec.epilog.vector.body577:                        ; preds = %vec.epilog.vector.body577, %vec.epilog.ph575
  %index578 = phi i64 [ %vec.epilog.resume.val570, %vec.epilog.ph575 ], [ %index.next587, %vec.epilog.vector.body577 ] ; 3 uses
  %vec.ind579 = phi <4 x i64> [ %induction, %vec.epilog.ph575 ], [ %vec.ind.next588, %vec.epilog.vector.body577 ] ; 2 uses
  %wide.gep580.a = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, <4 x i64> %vec.ind579 ; 2 uses
  %wide.gep581.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep580.a, i64 %i.ei
  %wide.gep582.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep581.a, i64 64 ; 2 uses
  %i.fr = ptrtoint <4 x ptr> %wide.gep582.a to <4 x i64>
  %i.fs = lshr <4 x i64> %i.fr, splat (i64 1)
  %i.ft = and <4 x i64> %i.fs, splat (i64 31)
  %wide.gep583.a = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep582.a, <4 x i64> %i.ft
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index578
  store <4 x ptr> %wide.gep583.a, ptr %i.fu, align 16, !tbaa !92
  %wide.gep584.a = getelementptr inbounds nuw [704 x i8], <4 x ptr> %wide.gep580.a, i64 %i.ej
  %wide.gep585 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep584.a, i64 64 ; 2 uses
  %i.fv = ptrtoint <4 x ptr> %wide.gep585 to <4 x i64>
  %i.fw = lshr <4 x i64> %i.fv, splat (i64 1)
  %i.fx = and <4 x i64> %i.fw, splat (i64 31)
  %wide.gep586 = getelementptr inbounds nuw [2 x i8], <4 x ptr> %wide.gep585, <4 x i64> %i.fx
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index578
  store <4 x ptr> %wide.gep586, ptr %i.fy, align 16, !tbaa !92
  %index.next587 = add nuw i64 %index578, 4       ; 2 uses
  %vec.ind.next588 = add nuw nsw <4 x i64> %vec.ind579, splat (i64 4)
  %i.fz = icmp eq i64 %index.next587, %n.vec576
  br i1 %i.fz, label %vec.epilog.middle.block589, label %vec.epilog.vector.body577, !llvm.loop !665

vec.epilog.middle.block589:                       ; preds = %vec.epilog.vector.body577
  br i1 %cmp.n590, label %._crit_edge.i.i, label %vec.epilog.scalar.ph572.preheader

vec.epilog.scalar.ph572.preheader:                ; preds = %iter.check571, %vec.epilog.iter.check573, %vec.epilog.middle.block589
  %.077145.i.i.ph = phi i64 [ 0, %iter.check571 ], [ %n.vec537, %vec.epilog.iter.check573 ], [ %n.vec576, %vec.epilog.middle.block589 ]
  br label %vec.epilog.scalar.ph572

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph572, %vec.epilog.middle.block589, %middle.block568
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !92 ; 54 uses
  %.pre.i249 = ptrtoaddr ptr %.pre.i to i64       ; 2 uses
  switch i64 %i.as, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre83.i = load ptr, ptr %i.cn, align 8, !tbaa !92
  %.pre84.i = load ptr, ptr %i.co, align 16, !tbaa !92
  %.pre85.i = load ptr, ptr %i.cp, align 8, !tbaa !92
  br label %._crit_edge.thread.i.i

vec.epilog.scalar.ph572:                          ; preds = %vec.epilog.scalar.ph572.preheader, %vec.epilog.scalar.ph572
  %.077145.i.i = phi i64 [ %i.gp, %vec.epilog.scalar.ph572 ], [ %.077145.i.i.ph, %vec.epilog.scalar.ph572.preheader ] ; 4 uses
  %i.ga = getelementptr inbounds nuw [1408 x i8], ptr %i.cm, i64 %.077145.i.i ; 2 uses
  %i.gb = getelementptr inbounds nuw [704 x i8], ptr %i.ga, i64 %i.ei
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 64 ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = lshr i64 %i.gd, 1
  %i.gf = and i64 %i.ge, 31
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077145.i.i
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !92
  %i.gi = getelementptr inbounds nuw [704 x i8], ptr %i.ga, i64 %i.ej
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = lshr i64 %i.gk, 1
  %i.gm = and i64 %i.gl, 31
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077145.i.i
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !92
  %i.gp = add nuw nsw i64 %.077145.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gp, %i.as
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph572, !llvm.loop !666

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not40.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  br i1 %i.dt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.preheader.i.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod639.not, label %.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init638 = phi i64 [ 16, %.lr.ph.i.i.i.preheader ], [ %i.iy, %.preheader.i.i.i.loopexit.unr-lcssa ]
  %.022.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.it, %.preheader.i.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod641)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.gq = phi i64 [ %i.gv, %.lr.ph.i.i.i.epil ], [ %.epil.init638, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.022.i.i.i.epil = phi i64 [ %i.gq, %.lr.ph.i.i.i.epil ], [ %.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter636 = phi i64 [ %epil.iter636.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.gr = shl nuw nsw i64 %.022.i.i.i.epil, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gr
end_hunk_4
begin_hunk_5_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13Exactly14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %found.conflict481 = and i1 %bound0479, %bound1480
  %bound0482 = icmp ult ptr %scevgep471.a, %scevgep476
  %bound1483 = icmp ult ptr %scevgep475.a, %scevgep472.a
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %found.conflict481, %found.conflict484
  %bound0486 = icmp ult ptr %scevgep471.a, %scevgep478
  %bound1487 = icmp ult ptr %scevgep477, %scevgep472.a
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %scevgep473.a, %scevgep476
  %bound1491 = icmp ult ptr %scevgep475.a, %scevgep474.a
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %scevgep473.a, %scevgep478
  %bound1495 = icmp ult ptr %scevgep477, %scevgep474.a
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %scevgep475.a, %scevgep478
  %bound1499 = icmp ult ptr %scevgep477, %scevgep476
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  br i1 %conflict.rdx501, label %.lr.ph43.i.i.i, label %vector.main.loop.iter.check503

vector.main.loop.iter.check503:                   ; preds = %iter.check517
  %min.iters.check504 = icmp eq i64 %i.ab, %.0.lcssa.i110.i.i
  br i1 %min.iters.check504, label %vec.epilog.vector.body523, label %vector.body507

vector.body507:                                   ; preds = %vector.main.loop.iter.check503, %vector.body507
  %index508 = phi i64 [ %index.next513, %vector.body507 ], [ 0, %vector.main.loop.iter.check503 ] ; 2 uses
  %i.wv = add nuw i64 %.0.lcssa.i110.i.i, %index508 ; 4 uses
  %i.ww = mul i64 %i.wv, 6
  %i.wx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ww
  %wide.vec509 = load <48 x i16>, ptr %i.wx, align 1, !alias.scope !772 ; 3 uses
  %strided.vec510.a = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>
  %strided.vec511 = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
  %strided.vec512 = shufflevector <48 x i16> %wide.vec509, <48 x i16> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47> ; 2 uses
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.wv
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %i.wv
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.wv
  %i.xb = sub <16 x i16> %strided.vec510.a, %strided.vec512 ; 2 uses
  store <16 x i16> %i.xb, ptr %i.wz, align 2, !tbaa !104, !alias.scope !773, !noalias !774
  %i.xc = ashr <16 x i16> %i.xb, splat (i16 1)
  %i.xd = add <16 x i16> %i.xc, %strided.vec512   ; 2 uses
  %i.xe = sub <16 x i16> %strided.vec511, %i.xd   ; 2 uses
  store <16 x i16> %i.xe, ptr %i.xa, align 2, !tbaa !104, !alias.scope !775, !noalias !776
  %i.xf = ashr <16 x i16> %i.xe, splat (i16 1)
  %i.xg = add <16 x i16> %i.xf, %i.xd
  store <16 x i16> %i.xg, ptr %i.wy, align 2, !tbaa !104, !alias.scope !777, !noalias !772
  %index.next513 = add nuw i64 %index508, 16      ; 2 uses
  %i.xh = icmp eq i64 %index.next513, %i.ws
  br i1 %i.xh, label %.lr.ph147.i.i, label %vector.body507, !llvm.loop !706

vec.epilog.vector.body523:                        ; preds = %vector.main.loop.iter.check503, %vec.epilog.vector.body523
  %index524 = phi i64 [ %index.next529, %vec.epilog.vector.body523 ], [ 0, %vector.main.loop.iter.check503 ] ; 2 uses
  %i.xi = add nuw i64 %.0.lcssa.i110.i.i, %index524 ; 4 uses
  %i.xj = mul i64 %i.xi, 6
  %i.xk = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.xj
  %wide.vec525 = load <12 x i16>, ptr %i.xk, align 1, !alias.scope !772 ; 3 uses
  %strided.vec526.a = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec527 = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec528 = shufflevector <12 x i16> %wide.vec525, <12 x i16> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11> ; 2 uses
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.xi
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %i.xi
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.xi
  %i.xo = sub <4 x i16> %strided.vec526.a, %strided.vec528 ; 2 uses
  store <4 x i16> %i.xo, ptr %i.xm, align 2, !tbaa !104, !alias.scope !773, !noalias !774
  %i.xp = ashr <4 x i16> %i.xo, splat (i16 1)
  %i.xq = add <4 x i16> %i.xp, %strided.vec528    ; 2 uses
  %i.xr = sub <4 x i16> %strided.vec527, %i.xq    ; 2 uses
  store <4 x i16> %i.xr, ptr %i.xn, align 2, !tbaa !104, !alias.scope !775, !noalias !776
  %i.xs = ashr <4 x i16> %i.xr, splat (i16 1)
  %i.xt = add <4 x i16> %i.xs, %i.xq
  store <4 x i16> %i.xt, ptr %i.xl, align 2, !tbaa !104, !alias.scope !777, !noalias !772
  %index.next529 = add nuw i64 %index524, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next529, %i.ws
  br i1 %i.xu, label %.lr.ph147.i.i, label %vec.epilog.vector.body523, !llvm.loop !707

.lr.ph.i104.i.i:                                  ; preds = %bb.l, %.lr.ph.i104.i.i
  %i.xv = phi i64 [ %i.aac, %.lr.ph.i104.i.i ], [ 16, %bb.l ] ; 4 uses
  %.041.i.i.i = phi i64 [ %i.xv, %.lr.ph.i104.i.i ], [ 0, %bb.l ] ; 4 uses
  %i.xw = mul nuw nsw i64 %.041.i.i.i, 6
  %i.xx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.xw ; 3 uses
  %.val3436.i.i105.i.i = load <16 x i16>, ptr %i.xx, align 1, !tbaa !85, !noalias !778 ; 2 uses
  %i.xy = lshr <16 x i16> %.val3436.i.i105.i.i, splat (i16 8)
  %i.xz = and <16 x i16> %.val3436.i.i105.i.i, splat (i16 255)
  %i.ya = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.xz, <16 x i16> %i.xy)
  %i.yb = bitcast <32 x i8> %i.ya to <4 x i64>
  %i.yc = shufflevector <4 x i64> %i.yb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %.val3337.i.i106.i.i = load <16 x i16>, ptr %i.yd, align 1, !tbaa !85, !noalias !778 ; 2 uses
  %i.ye = lshr <16 x i16> %.val3337.i.i106.i.i, splat (i16 8)
  %i.yf = and <16 x i16> %.val3337.i.i106.i.i, splat (i16 255)
  %i.yg = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.yf, <16 x i16> %i.ye)
  %i.yh = bitcast <32 x i8> %i.yg to <4 x i64>
  %i.yi = shufflevector <4 x i64> %i.yh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 64
  %.val38.i.i107.i.i = load <16 x i16>, ptr %i.yj, align 1, !tbaa !85, !noalias !778 ; 2 uses
  %i.yk = lshr <16 x i16> %.val38.i.i107.i.i, splat (i16 8)
  %i.yl = and <16 x i16> %.val38.i.i107.i.i, splat (i16 255)
  %i.ym = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.yl, <16 x i16> %i.yk)
  %i.yn = bitcast <32 x i8> %i.ym to <4 x i64>
  %i.yo = shufflevector <4 x i64> %i.yn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yp = bitcast <4 x i64> %i.yc to <32 x i8>
  %i.yq = shufflevector <32 x i8> %i.yp, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yr = bitcast <4 x i64> %i.yi to <32 x i8>
  %i.ys = shufflevector <32 x i8> %i.yr, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yt = bitcast <4 x i64> %i.yo to <32 x i8>
  %i.yu = shufflevector <32 x i8> %i.yt, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.yv = shufflevector <32 x i8> %i.yu, <32 x i8> %i.ys, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yw = shufflevector <32 x i8> %i.yq, <32 x i8> %i.ys, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yx = shufflevector <32 x i8> %i.yw, <32 x i8> %i.yu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.yy = shufflevector <32 x i8> %i.ys, <32 x i8> %i.yq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.yz = shufflevector <32 x i8> %i.yy, <32 x i8> %i.yu, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58> ; 2 uses
  %i.za = shufflevector <32 x i8> %i.yq, <32 x i8> %i.yv, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53> ; 2 uses
  %i.zb = shufflevector <32 x i8> %i.yx, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zc = zext <16 x i8> %i.zb to <16 x i16>
  %i.zd = shufflevector <32 x i8> %i.yx, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ze = zext <16 x i8> %i.zd to <16 x i16>
  %i.zf = shl nuw <16 x i16> %i.ze, splat (i16 8)
  %i.zg = or disjoint <16 x i16> %i.zf, %i.zc
  %i.zh = shufflevector <32 x i8> %i.yz, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zi = zext <16 x i8> %i.zh to <16 x i16>
  %i.zj = shufflevector <32 x i8> %i.yz, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zk = zext <16 x i8> %i.zj to <16 x i16>
  %i.zl = shl nuw <16 x i16> %i.zk, splat (i16 8)
  %i.zm = or disjoint <16 x i16> %i.zl, %i.zi
  %i.zn = shufflevector <32 x i8> %i.za, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zo = zext <16 x i8> %i.zn to <16 x i16>
  %i.zp = shufflevector <32 x i8> %i.za, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zq = zext <16 x i8> %i.zp to <16 x i16>
  %i.zr = shl nuw <16 x i16> %i.zq, splat (i16 8)
  %i.zs = or disjoint <16 x i16> %i.zr, %i.zo     ; 2 uses
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.041.i.i.i
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %.041.i.i.i
  %i.zv = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %.041.i.i.i
  %i.zw = sub <16 x i16> %i.zg, %i.zs             ; 2 uses
  %i.zx = ashr <16 x i16> %i.zw, splat (i16 1)
  %i.zy = add <16 x i16> %i.zx, %i.zs             ; 2 uses
  %i.zz = sub <16 x i16> %i.zm, %i.zy             ; 2 uses
  %i.aaa = ashr <16 x i16> %i.zz, splat (i16 1)
  %i.aab = add <16 x i16> %i.aaa, %i.zy
  store <16 x i16> %i.aab, ptr %i.zt, align 1, !tbaa !85
  store <16 x i16> %i.zw, ptr %i.zu, align 1, !tbaa !85
  store <16 x i16> %i.zz, ptr %i.zv, align 1, !tbaa !85
  %i.aac = add nuw nsw i64 %i.xv, 16
  %.not.i108.i.i.not = icmp samesign ult i64 %i.xv, %i.ab
  br i1 %.not.i108.i.i.not, label %.lr.ph.i104.i.i, label %.preheader.i109.i.i, !llvm.loop !16

.lr.ph43.i.i.i:                                   ; preds = %iter.check517, %.lr.ph43.i.i.i
  %.142.i.i.i = phi i64 [ %i.aaq, %.lr.ph43.i.i.i ], [ %.0.lcssa.i110.i.i, %iter.check517 ] ; 5 uses
  %i.aad = mul i64 %.142.i.i.i, 6
  %i.aae = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.aad ; 3 uses
  %.val34.i.i.i = load i16, ptr %i.aae, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  %.val32.i.i.i = load i16, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %.val.i111.i.i = load i16, ptr %i.aag, align 1  ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.142.i.i.i
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %.142.i.i.i
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %.142.i.i.i
  %i.aak = sub i16 %.val34.i.i.i, %.val.i111.i.i  ; 2 uses
  store i16 %i.aak, ptr %i.aai, align 2, !tbaa !104
  %i.aal = ashr i16 %i.aak, 1
  %i.aam = add i16 %i.aal, %.val.i111.i.i         ; 2 uses
  %i.aan = sub i16 %.val32.i.i.i, %i.aam          ; 2 uses
  store i16 %i.aan, ptr %i.aaj, align 2, !tbaa !104
  %i.aao = ashr i16 %i.aan, 1
  %i.aap = add i16 %i.aao, %i.aam
  store i16 %i.aap, ptr %i.aah, align 2, !tbaa !104
  %i.aaq = add nuw i64 %.142.i.i.i, 1             ; 2 uses
  %exitcond.not.i112.i.i = icmp eq i64 %i.aaq, %i.ab
  br i1 %exitcond.not.i112.i.i, label %.lr.ph147.i.i, label %.lr.ph43.i.i.i, !llvm.loop !710

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.aar = phi ptr [ %.pre85.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aas = phi ptr [ %.pre84.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aat = phi ptr [ %.pre83.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  %i.aau = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 12 uses
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not40.i.i.i, label %.preheader.i115.i.i, label %.lr.ph.i113.i.i

.preheader.i115.i.i:                              ; preds = %.lr.ph.i113.i.i, %bb.m
  %.0.lcssa.i116.i.i = phi i64 [ 0, %bb.m ], [ %i.acr, %.lr.ph.i113.i.i ] ; 8 uses
  %i.aav = icmp samesign ult i64 %.0.lcssa.i116.i.i, %i.ab
  br i1 %i.aav, label %iter.check, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i

iter.check:                                       ; preds = %.preheader.i115.i.i
  %i.aaw = sub nuw nsw i64 %i.ab, %.0.lcssa.i116.i.i ; 2 uses
  %i.aax = shl nuw nsw i64 %.0.lcssa.i116.i.i, 1  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.aat, i64 %i.aax ; 4 uses
  %scevgep106.a = getelementptr i8, ptr %i.aat, i64 %i.cr ; 4 uses
  %scevgep107.a = getelementptr i8, ptr %i.aas, i64 %i.aax ; 4 uses
  %scevgep108.a = getelementptr i8, ptr %i.aas, i64 %i.cr ; 4 uses
  %scevgep109.a = getelementptr i8, ptr %i.aau, i64 %i.aax ; 4 uses
  %scevgep110.a = getelementptr i8, ptr %i.aau, i64 %i.cr ; 4 uses
  %scevgep111.a = getelementptr i8, ptr %i.aar, i64 %i.aax ; 4 uses
  %scevgep112.a = getelementptr i8, ptr %i.aar, i64 %i.cr ; 4 uses
  %i.aay = shl nuw nsw i64 %.0.lcssa.i116.i.i, 3
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.aay ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep108.a
  %bound1 = icmp ult ptr %scevgep107.a, %scevgep106.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %scevgep, %scevgep110.a
  %bound1117 = icmp ult ptr %scevgep109.a, %scevgep106.a
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx = or i1 %found.conflict, %found.conflict118
  %bound0119 = icmp ult ptr %scevgep, %scevgep112.a
  %bound1120 = icmp ult ptr %scevgep111.a, %scevgep106.a
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep, %scevgep115
  %bound1124 = icmp ult ptr %scevgep114, %scevgep106.a
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep107.a, %scevgep110.a
  %bound1128 = icmp ult ptr %scevgep109.a, %scevgep108.a
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep107.a, %scevgep112.a
  %bound1132 = icmp ult ptr %scevgep111.a, %scevgep108.a
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep107.a, %scevgep115
  %bound1136 = icmp ult ptr %scevgep114, %scevgep108.a
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep109.a, %scevgep112.a
  %bound1140 = icmp ult ptr %scevgep111.a, %scevgep110.a
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep109.a, %scevgep115
  %bound1144 = icmp ult ptr %scevgep114, %scevgep110.a
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %scevgep111.a, %scevgep115
  %bound1148 = icmp ult ptr %scevgep114, %scevgep112.a
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  br i1 %conflict.rdx150, label %.lr.ph61.i.i.i, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp eq i64 %i.ab, %.0.lcssa.i116.i.i
  br i1 %min.iters.check151, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.aaz = add nuw i64 %.0.lcssa.i116.i.i, %index ; 5 uses
  %i.aba = shl i64 %i.aaz, 3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.aba
  %wide.vec = load <64 x i16>, ptr %i.abb, align 1, !alias.scope !779 ; 4 uses
  %i.abc = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abd = shufflevector <64 x i16> %i.abc, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.abe = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abf = shufflevector <64 x i16> %i.abe, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.abg = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abh = shufflevector <64 x i16> %i.abg, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %i.abi = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.abj = shufflevector <64 x i16> %i.abi, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.aaz
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.aaz
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aaz
  %i.abn = sub <16 x i16> %i.abd, %i.abh          ; 2 uses
  store <16 x i16> %i.abn, ptr %i.abl, align 2, !tbaa !104, !alias.scope !780, !noalias !781
  %i.abo = ashr <16 x i16> %i.abn, splat (i16 1)
  %i.abp = add <16 x i16> %i.abo, %i.abh          ; 2 uses
  %i.abq = sub <16 x i16> %i.abf, %i.abp          ; 2 uses
  store <16 x i16> %i.abq, ptr %i.abm, align 2, !tbaa !104, !alias.scope !782, !noalias !783
  %i.abr = ashr <16 x i16> %i.abq, splat (i16 1)
  %i.abs = add <16 x i16> %i.abr, %i.abp
  store <16 x i16> %i.abs, ptr %i.abk, align 2, !tbaa !104, !alias.scope !784, !noalias !785
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.aaz
  store <16 x i16> %i.abj, ptr %i.abt, align 2, !tbaa !104, !alias.scope !786, !noalias !779
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abu = icmp eq i64 %index.next, %i.aaw
  br i1 %i.abu, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vector.body, !llvm.loop !717

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index156 = phi i64 [ %index.next162, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.abv = add nuw i64 %.0.lcssa.i116.i.i, %index156 ; 5 uses
  %i.abw = shl i64 %i.abv, 3
  %i.abx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.abw
  %wide.vec157 = load <16 x i16>, ptr %i.abx, align 1, !alias.scope !779 ; 4 uses
  %i.aby = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.abz = shufflevector <16 x i16> %i.aby, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.aca = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acb = shufflevector <16 x i16> %i.aca, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.acc = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acd = shufflevector <16 x i16> %i.acc, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.ace = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec157)
  %i.acf = shufflevector <16 x i16> %i.ace, <16 x i16> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.acg = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.abv
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %i.abv
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.abv
  %i.acj = sub <4 x i16> %i.abz, %i.acd           ; 2 uses
  store <4 x i16> %i.acj, ptr %i.ach, align 2, !tbaa !104, !alias.scope !780, !noalias !781
  %i.ack = ashr <4 x i16> %i.acj, splat (i16 1)
  %i.acl = add <4 x i16> %i.ack, %i.acd           ; 2 uses
  %i.acm = sub <4 x i16> %i.acb, %i.acl           ; 2 uses
  store <4 x i16> %i.acm, ptr %i.aci, align 2, !tbaa !104, !alias.scope !782, !noalias !783
  %i.acn = ashr <4 x i16> %i.acm, splat (i16 1)
  %i.aco = add <4 x i16> %i.acn, %i.acl
  store <4 x i16> %i.aco, ptr %i.acg, align 2, !tbaa !104, !alias.scope !784, !noalias !785
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.abv
  store <4 x i16> %i.acf, ptr %i.acp, align 2, !tbaa !104, !alias.scope !786, !noalias !779
  %index.next162 = add nuw i64 %index156, 4       ; 2 uses
  %i.acq = icmp eq i64 %index.next162, %i.aaw
  br i1 %i.acq, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i, label %vec.epilog.vector.body, !llvm.loop !718

.lr.ph.i113.i.i:                                  ; preds = %bb.m, %.lr.ph.i113.i.i
  %i.acr = phi i64 [ %i.afk, %.lr.ph.i113.i.i ], [ 16, %bb.m ] ; 4 uses
  %.059.i.i.i = phi i64 [ %i.acr, %.lr.ph.i113.i.i ], [ 0, %bb.m ] ; 5 uses
  %i.acs = shl nuw nsw i64 %.059.i.i.i, 3
  %i.act = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.acs ; 4 uses
  %i.acu = load <8 x i32>, ptr %i.act, align 1, !tbaa !85, !noalias !787 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  %i.acw = load <8 x i32>, ptr %i.acv, align 1, !tbaa !85, !noalias !787 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.act, i64 64
  %i.acy = load <8 x i32>, ptr %i.acx, align 1, !tbaa !85, !noalias !787 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 96
  %i.ada = load <8 x i32>, ptr %i.acz, align 1, !tbaa !85, !noalias !787 ; 2 uses
  %i.adb = and <8 x i32> %i.acu, splat (i32 65535)
  %i.adc = and <8 x i32> %i.acw, splat (i32 65535)
  %i.add = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adb, <8 x i32> %i.adc)
  %i.ade = and <8 x i32> %i.acy, splat (i32 65535)
  %i.adf = and <8 x i32> %i.ada, splat (i32 65535)
  %i.adg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ade, <8 x i32> %i.adf)
  %i.adh = lshr <8 x i32> %i.acu, splat (i32 16)
  %i.adi = lshr <8 x i32> %i.acw, splat (i32 16)
  %i.adj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adh, <8 x i32> %i.adi)
  %i.adk = lshr <8 x i32> %i.acy, splat (i32 16)
  %i.adl = lshr <8 x i32> %i.ada, splat (i32 16)
  %i.adm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adk, <8 x i32> %i.adl)
  %i.adn = bitcast <16 x i16> %i.add to <8 x i32>
  %i.ado = shufflevector <8 x i32> %i.adn, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.adp = and <8 x i32> %i.ado, splat (i32 65535)
  %i.adq = bitcast <16 x i16> %i.adg to <8 x i32>
  %i.adr = shufflevector <8 x i32> %i.adq, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ads = and <8 x i32> %i.adr, splat (i32 65535)
  %i.adt = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adp, <8 x i32> %i.ads)
  %i.adu = bitcast <16 x i16> %i.adt to <4 x i64>
  %i.adv = shufflevector <4 x i64> %i.adu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adw = bitcast <16 x i16> %i.adj to <8 x i32>
  %i.adx = shufflevector <8 x i32> %i.adw, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ady = and <8 x i32> %i.adx, splat (i32 65535)
  %i.adz = bitcast <16 x i16> %i.adm to <8 x i32>
  %i.aea = shufflevector <8 x i32> %i.adz, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.aeb = and <8 x i32> %i.aea, splat (i32 65535)
  %i.aec = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ady, <8 x i32> %i.aeb)
  %i.aed = bitcast <16 x i16> %i.aec to <4 x i64>
  %i.aee = shufflevector <4 x i64> %i.aed, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aef = lshr <8 x i32> %i.ado, splat (i32 16)
  %i.aeg = lshr <8 x i32> %i.adr, splat (i32 16)
  %i.aeh = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aef, <8 x i32> %i.aeg)
  %i.aei = bitcast <16 x i16> %i.aeh to <4 x i64>
  %i.aej = shufflevector <4 x i64> %i.aei, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aek = lshr <8 x i32> %i.adx, splat (i32 16)
  %i.ael = lshr <8 x i32> %i.aea, splat (i32 16)
  %i.aem = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aek, <8 x i32> %i.ael)
  %i.aen = bitcast <16 x i16> %i.aem to <4 x i64>
  %i.aeo = shufflevector <4 x i64> %i.aen, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aep = bitcast <4 x i64> %i.adv to <32 x i8>
  %i.aeq = shufflevector <32 x i8> %i.aep, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aer = bitcast <4 x i64> %i.aee to <32 x i8>
  %i.aes = shufflevector <32 x i8> %i.aer, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aet = bitcast <4 x i64> %i.aej to <32 x i8>
  %i.aeu = shufflevector <32 x i8> %i.aet, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aev = bitcast <4 x i64> %i.aeo to <32 x i8>
  %i.aew = shufflevector <32 x i8> %i.aev, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %.059.i.i.i
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.aat, i64 %.059.i.i.i
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %.059.i.i.i
  %i.afa = bitcast <32 x i8> %i.aeq to <16 x i16>
  %i.afb = bitcast <32 x i8> %i.aeu to <16 x i16> ; 2 uses
  %i.afc = sub <16 x i16> %i.afa, %i.afb          ; 2 uses
  %i.afd = ashr <16 x i16> %i.afc, splat (i16 1)
  %i.afe = add <16 x i16> %i.afd, %i.afb          ; 2 uses
  %i.aff = bitcast <32 x i8> %i.aes to <16 x i16>
  %i.afg = sub <16 x i16> %i.aff, %i.afe          ; 2 uses
  %i.afh = ashr <16 x i16> %i.afg, splat (i16 1)
  %i.afi = add <16 x i16> %i.afh, %i.afe
  store <16 x i16> %i.afi, ptr %i.aex, align 1, !tbaa !85
  store <16 x i16> %i.afc, ptr %i.aey, align 1, !tbaa !85
  store <16 x i16> %i.afg, ptr %i.aez, align 1, !tbaa !85
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %.059.i.i.i
  store <32 x i8> %i.aew, ptr %i.afj, align 1, !tbaa !85
  %i.afk = add nuw nsw i64 %i.acr, 16
  %.not.i114.i.i.not = icmp samesign ult i64 %i.acr, %i.ab
  br i1 %.not.i114.i.i.not, label %.lr.ph.i113.i.i, label %.preheader.i115.i.i, !llvm.loop !17

.lr.ph61.i.i.i:                                   ; preds = %iter.check, %.lr.ph61.i.i.i
  %.160.i.i.i = phi i64 [ %i.age, %.lr.ph61.i.i.i ], [ %.0.lcssa.i116.i.i, %iter.check ] ; 6 uses
  %i.afl = shl i64 %.160.i.i.i, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.afl ; 4 uses
  %.val48.i.i.i = load i16, ptr %i.afm, align 1
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 2
  %.val46.i.i.i = load i16, ptr %i.afn, align 1
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %.val44.i.i.i = load i16, ptr %i.afo, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 6
end_hunk_5
begin_hunk_6_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_13Exactly14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %i.anz = add i64 %i.any, %.sroa.speculated.i.i.i.i ; 2 uses
  %i.aoa = icmp ugt i64 %i.anz, 7
  br i1 %i.aoa, label %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.aob = load ptr, ptr %i.ami, align 8, !tbaa !756
  %i.aoc = load ptr, ptr %i.amh, align 8, !tbaa !755 ; 5 uses
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !68
  %i.aoe = add i64 %i.aod, 1
  store i64 %i.aoe, ptr %i.aoc, align 8, !tbaa !68
  %i.aof = trunc i64 %i.anz to i32
  %i.aog = add i32 %i.aof, -8                     ; 3 uses
  %i.aoh = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true)
  %i.aoi = icmp ult i32 %i.aog, 16
  %i.aoj = sub nuw nsw i32 43, %i.aoh
  %i.aok = select i1 %i.aoi, i32 %i.aog, i32 %i.aoj
  %i.aol = zext i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %i.aol ; 2 uses
  %i.aon = load i64, ptr %i.aom, align 8, !tbaa !68
  %i.aoo = add i64 %i.aon, 1
  store i64 %i.aoo, ptr %i.aom, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %.lr.ph47.i.i.i.i.preheader, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i

.lr.ph47.i.i.i.i.preheader:                       ; preds = %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i
  %.neg657 = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %xtraiter654 = and i64 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %.lr.ph47.i.i.i.i.prol.loopexit, label %.lr.ph47.i.i.i.i.prol

.lr.ph47.i.i.i.i.prol:                            ; preds = %.lr.ph47.i.i.i.i.preheader
  %i.aop = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.speculated.i.i.i.i
  %i.aoq = load i16, ptr %i.aop, align 2, !tbaa !104
  %i.aor = zext i16 %i.aoq to i32
  %i.aos = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aor, i1 false)
  %i.aot = sub nuw nsw i32 32, %i.aos
  %i.aou = zext nneg i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.aou ; 2 uses
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !68
  %i.aox = add i64 %i.aow, 1
  store i64 %i.aox, ptr %i.aov, align 8, !tbaa !68
  %i.aoy = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  br label %.lr.ph47.i.i.i.i.prol.loopexit

.lr.ph47.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph47.i.i.i.i.prol, %.lr.ph47.i.i.i.i.preheader
  %.0.i1846.i.i.i.i.unr = phi i64 [ %.sroa.speculated.i.i.i.i, %.lr.ph47.i.i.i.i.preheader ], [ %i.aoy, %.lr.ph47.i.i.i.i.prol ]
  %i.aoz = icmp eq i64 %.sroa.speculated.i.i.i, %.neg657
  br i1 %i.aoz, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph47.i.i.i.i

.lr.ph47.i.i.i.i:                                 ; preds = %.lr.ph47.i.i.i.i.prol.loopexit, %.lr.ph47.i.i.i.i
  %.0.i1846.i.i.i.i = phi i64 [ %i.apt, %.lr.ph47.i.i.i.i ], [ %.0.i1846.i.i.i.i.unr, %.lr.ph47.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i1846.i.i.i.i
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !104
  %i.apc = zext i16 %i.apb to i32
  %i.apd = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apc, i1 false)
  %i.ape = sub nuw nsw i32 32, %i.apd
  %i.apf = zext nneg i32 %i.ape to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.apf ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !68
  %i.api = add i64 %i.aph, 1
  store i64 %i.api, ptr %i.apg, align 8, !tbaa !68
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i1846.i.i.i.i
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 2
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !104
  %i.apm = zext i16 %i.apl to i32
  %i.apn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apm, i1 false)
  %i.apo = sub nuw nsw i32 32, %i.apn
  %i.app = zext nneg i32 %i.apo to i64
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.aoc, i64 %i.app ; 2 uses
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !68
  %i.aps = add i64 %i.apr, 1
  store i64 %i.aps, ptr %i.apq, align 8, !tbaa !68
  %i.apt = add nuw nsw i64 %.0.i1846.i.i.i.i, 2   ; 2 uses
  %exitcond49.not.i.i.i.i.1 = icmp eq i64 %i.apt, %.sroa.speculated.i.i.i
  br i1 %exitcond49.not.i.i.i.i.1, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %.lr.ph47.i.i.i.i, !llvm.loop !734

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  %i.apu = load ptr, ptr %i.amh, align 8, !tbaa !755 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.0.i45.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.aqo, %bb.w ] ; 3 uses
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i45.i.i.i.i
  %i.apw = load i16, ptr %i.apv, align 4, !tbaa !104
  %i.apx = zext i16 %i.apw to i32
  %i.apy = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.apx, i1 false)
  %i.apz = sub nuw nsw i32 32, %i.apy
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %i.aqa ; 2 uses
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !68
  %i.aqd = add i64 %i.aqc, 1
  store i64 %i.aqd, ptr %i.aqb, align 8, !tbaa !68
  %i.aqe = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.0.i45.i.i.i.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 2
  %i.aqg = load i16, ptr %i.aqf, align 2, !tbaa !104
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aqh, i1 false)
  %i.aqj = sub nuw nsw i32 32, %i.aqi
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.apu, i64 %i.aqk ; 2 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !68
  %i.aqn = add i64 %i.aqm, 1
  store i64 %i.aqn, ptr %i.aql, align 8, !tbaa !68
  %i.aqo = add nuw nsw i64 %.0.i45.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.aqo, %.sroa.speculated.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i, label %bb.w, !llvm.loop !734

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i: ; preds = %bb.w, %.lr.ph47.i.i.i.i.prol.loopexit, %.lr.ph47.i.i.i.i, %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i, %bb.v
  %.sink.i.i61.i = phi i64 [ 0, %.lr.ph47.i.i.i.i.prol.loopexit ], [ %i.anx, %bb.v ], [ 0, %_ZN4AVX212_GLOBAL__N_120ChunkSampleCollectorINS0_13Exactly14BitsEE3RleEmPm.exit.i.i.i.i ], [ 0, %.lr.ph47.i.i.i.i ], [ %.sink.i.i62.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aqp = add nuw nsw i64 %.015.i.i.i, 16        ; 2 uses
  %i.aqq = icmp samesign ult i64 %i.aqp, %i.ab
  br i1 %i.aqq, label %bb.t, label %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, !llvm.loop !735

_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i: ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E12ProcessChunkEPKsS7_S7_S7_m.exit.i.i.i
  store i64 %.sink.i.i61.i, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.aqr = add nuw nsw i64 %.075149.i.i, 1        ; 2 uses
  %exitcond175.not.i.i = icmp eq i64 %i.aqr, %i.as
  br i1 %exitcond175.not.i.i, label %.loopexit.i.i, label %.lr.ph.i127.i.i, !llvm.loop !736

.loopexit.i.i:                                    ; preds = %_ZN4AVX212_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES3_E10ProcessRowEPKsS7_S7_S7_m.exit.loopexit.i.i, %._crit_edge148.i.i, %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EsEEvPKhmPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.aqs = add i64 %.078151.i.i, 1
  %exitcond176.not.i.i = icmp eq i64 %.078151.i.i, %i.ad
  br i1 %exitcond176.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !737

bb.x:                                             ; preds = %.preheader.i.i
  %i.aqt = ptrtoint ptr %i.cm to i64
  %i.aqu = sub i64 %i.cl, %i.aqt
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.aqu) #39
  br label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.x, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.060.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.arg, %.lr.ph.i ] ; 6 uses
  %niter622 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter622.next.1, %.lr.ph.i ]
  %i.aqv = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.060.i ; 3 uses
  %i.aqw = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.060.i
  store ptr %i.aqv, ptr %i.aqw, align 16, !tbaa !753
  %i.aqx = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %.060.i
  store ptr %i.aqx, ptr %i.aqv, align 16, !tbaa !755
  %i.aqy = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %.060.i
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store ptr %i.aqy, ptr %i.aqz, align 8, !tbaa !756
  %i.ara = or disjoint i64 %.060.i, 1             ; 4 uses
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.ara ; 3 uses
  %i.arc = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ara
  store ptr %i.arb, ptr %i.arc, align 16, !tbaa !753
  %i.ard = getelementptr inbounds nuw [152 x i8], ptr %i.af, i64 %i.ara
  store ptr %i.ard, ptr %i.arb, align 16, !tbaa !755
  %i.are = getelementptr inbounds nuw [264 x i8], ptr %i.ah, i64 %i.ara
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store ptr %i.are, ptr %i.arf, align 8, !tbaa !756
  %i.arg = add nuw nsw i64 %.060.i, 2             ; 2 uses
  %niter622.next.1 = add nuw i64 %niter622, 2     ; 2 uses
  %niter622.ncmp.1 = icmp eq i64 %niter622.next.1, %unroll_iter621
  br i1 %niter622.ncmp.1, label %_ZNSt3__16vectorINS_5arrayINS1_IsLm352EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !738

_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_13Exactly14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit: ; preds = %._crit_edge65.i, %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_13Exactly14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i
  %i.arh = load ptr, ptr %i.n, align 8, !tbaa !742, !nonnull !121, !align !176 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 40
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !107
  %i.ark = load ptr, ptr %i.arh, align 8, !tbaa !106
  call void %i.arj(ptr noundef %i.ark, ptr noundef %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [16 x i32], align 64              ; 9 uses
  %i.b = alloca [4 x ptr], align 16               ; 17 uses
  %i.c = alloca [4 x ptr], align 16               ; 13 uses
  %4 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector"], align 16 ; 5 uses
  %5 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor"], align 16 ; 10 uses
  %6 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkSampleCollector.120"], align 16 ; 5 uses
  %7 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.121"], align 16 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = shl i64 %2, 8                            ; 2 uses
  %i.f = shl i64 %1, 8                            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !873, !nonnull !121, !align !176
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.e
  %.sroa.speculated33 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 256) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !874, !nonnull !121, !align !176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.sroa.speculated28 = tail call i64 @llvm.umin.i64(i64 %i.m, i64 256) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !875, !nonnull !121, !align !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.s = call noundef ptr %i.q(ptr noundef %i.r, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.sroa.speculated28, i64 noundef %.sroa.speculated33, ptr noundef nonnull %i.d) #36 ; 12 uses
  %i.t = sub i64 %.sroa.speculated33, %3
  %.sroa.speculated23 = call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.u = lshr i64 %.sroa.speculated23, 1          ; 2 uses
  %i.v = trunc i64 %3 to i32
  %i.w = shl i64 %i.u, 32
  %i.x = ashr exact i64 %i.w, 32                  ; 5 uses
  %i.y = sub nsw i64 %.sroa.speculated33, %i.u
  %i.z = trunc i64 %i.y to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.v) ; 2 uses
  %i.aa = and i64 %.sroa.speculated28, 496        ; 40 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !68  ; 13 uses
  %i.ac = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !876, !nonnull !121, !align !176 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !877, !nonnull !121, !align !176 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !878, !nonnull !121
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !879, !nonnull !121
  %i.an = load i8, ptr %i.am, align 1, !tbaa !95, !range !108, !noundef !121
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !880, !nonnull !121, !align !176
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !68 ; 26 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !881, !nonnull !121
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95, !range !108, !noundef !121
  %i.av = trunc nuw i8 %i.au to i1                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !882, !nonnull !121, !align !176
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %.not66.i = icmp eq i64 %i.ar, 0                ; 4 uses
  br i1 %i.ao, label %.preheader52.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !179
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ba, align 8, !tbaa !179
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !179
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.bc, align 8, !tbaa !179
  br i1 %.not66.i, label %._crit_edge65.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.ak ; 3 uses
  %i.be = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %i.ak ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.bf = icmp eq i64 %i.ar, 1
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph64.i.new

.lr.ph64.i.new:                                   ; preds = %.lr.ph64.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.b

._crit_edge65.i.loopexit.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge65.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge65.i.loopexit.unr-lcssa, %.lr.ph64.i
  %.063.i.epil.init = phi i64 [ 0, %.lr.ph64.i ], [ %i.br, %._crit_edge65.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod572 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod572)
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.063.i.epil.init ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.063.i.epil.init
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bg, align 16, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !183
  br label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %.epil.preheader, %._crit_edge65.i.loopexit.unr-lcssa, %.preheader.i
  %i.bj = add nsw i64 %i.ac, 1
  call fastcc void @_ZN4AVX212_GLOBAL__N_123ProcessImageAreaPaletteINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_9UpTo8BitsEEES4_EEEEvPKhmmmmmmPKsmPT_(ptr noundef readonly %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.aa, i64 noundef %i.bj, i64 noundef %i.ab, ptr noundef readonly %i.ay, i64 noundef %i.ar, ptr noundef %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZN4AVX212_GLOBAL__N_114CollectSamplesINS0_14MoreThan14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph64.i.new
  %.063.i = phi i64 [ 0, %.lr.ph64.i.new ], [ %i.br, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph64.i.new ], [ %niter.next.1, %bb.b ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.063.i ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.063.i
  store ptr %i.bk, ptr %i.bl, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bk, align 16, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.be, ptr %i.bm, align 8, !tbaa !183
  %i.bn = or disjoint i64 %.063.i, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bn
  store ptr %i.bo, ptr %i.bp, align 16, !tbaa !180
  store ptr %i.bd, ptr %i.bo, align 16, !tbaa !182
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.be, ptr %i.bq, align 8, !tbaa !183
  %i.br = add nuw nsw i64 %.063.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge65.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !797

.preheader52.i:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !885
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.bt, align 8, !tbaa !885
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !885
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 0, ptr %i.bv, align 8, !tbaa !885
  br i1 %.not66.i, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader52.i
  %xtraiter573 = and i64 %i.ar, 1
  %i.bw = icmp eq i64 %i.ar, 1
  br i1 %i.bw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter576 = and i64 %i.ar, -2
  br label %.lr.ph.i

_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod574.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod574.not, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, %.lr.ph.i.preheader
  %.03960.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.axf, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa ] ; 4 uses
  %lcmp.mod575 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod575)
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03960.i.epil.init ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03960.i.epil.init
  store ptr %i.bx, ptr %i.by, align 16, !tbaa !886
  %i.bz = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %.03960.i.epil.init
  store ptr %i.bz, ptr %i.bx, align 16, !tbaa !888
  %i.ca = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %.03960.i.epil.init
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !889
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
  %.sroa.0.0 = phi ptr [ %i.cd, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ null, %.preheader52.i ] ; 9 uses
  %.sroa.8.0 = phi i64 [ %i.cj, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i ], [ 0, %.preheader52.i ]
  %.not154.i.i = icmp eq i32 %.sroa.speculated, -1
  br i1 %.not154.i.i, label %.preheader.i.i, label %.lr.ph151.i.i

.lr.ph151.i.i:                                    ; preds = %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not39.i.i.i = icmp ult i64 %i.m, 16           ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.not.i125.i.i = icmp eq i64 %i.aa, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.co = lshr i64 %.sroa.speculated28, 4         ; 3 uses
  %i.cp = shl nuw nsw i64 %i.co, 6                ; 9 uses
  %i.cq = mul i64 %i.ab, %i.x                     ; 3 uses
  %i.cr = shl nuw nsw i64 %i.co, 7
  %i.cs = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = shl nuw nsw i64 %i.co, 5
  %i.cu = lshr i64 %.sroa.speculated28, 4         ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cu, 6                ; 9 uses
  %i.cw = mul i64 %i.ab, %i.x                     ; 3 uses
  %i.cx = shl nuw nsw i64 %i.cu, 5
  %i.cy = add i64 %i.cw, %i.cv                    ; 2 uses
  %i.cz = mul nuw nsw i64 %i.cu, 96
  %i.da = lshr i64 %.sroa.speculated28, 4         ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 6                ; 3 uses
  %i.dc = mul i64 %i.ab, %i.x
  %i.dd = mul nuw nsw i64 %i.da, 96
  %8 = getelementptr i8, ptr %i.s, i64 %i.dc
  %i.de = getelementptr i8, ptr %8, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.s, i64 %i.cw
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.cz
  %i.dh = getelementptr i8, ptr %i.s, i64 %i.cy
  %i.di = getelementptr i8, ptr %i.s, i64 %i.cy
  %i.dj = getelementptr i8, ptr %i.s, i64 %i.cw
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.cx
  %i.dl = getelementptr i8, ptr %i.s, i64 %i.cq
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.ct
  %i.dn = getelementptr i8, ptr %i.s, i64 %i.cs
  %i.do = getelementptr i8, ptr %i.s, i64 %i.cq
  %i.dp = getelementptr i8, ptr %i.s, i64 %i.cs
  %min.iters.check478 = icmp ult i64 %i.ar, 4
  %min.iters.check480 = icmp ult i64 %i.ar, 16
  %i.dq = and i64 %i.ar, 12
  %n.vec482 = and i64 %i.ar, -16                  ; 4 uses
  %cmp.n514 = icmp eq i64 %i.ar, %n.vec482
  %min.epilog.iters.check519 = icmp eq i64 %i.dq, 0
  %n.vec521 = and i64 %i.ar, -4                   ; 3 uses
  %cmp.n535 = icmp eq i64 %i.ar, %n.vec521
  %xtraiter588 = and i64 %i.ar, 1
  %i.dr = icmp eq i64 %i.ar, 1
  %unroll_iter591 = and i64 %i.ar, -2
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod590 = trunc i64 %i.ar to i1
  br label %bb.c

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEEC2Em.exit.i.i
  %.not.i.i128.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i128.i.i, label %_ZN4AVX212_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i, label %bb.x

bb.c:                                             ; preds = %.loopexit.i.i, %.lr.ph151.i.i
  %.078150.i.i = phi i64 [ 0, %.lr.ph151.i.i ], [ %i.awr, %.loopexit.i.i ] ; 13 uses
  %i.ds = mul i64 %i.ab, %.078150.i.i
  %scevgep439 = getelementptr i8, ptr %i.de, i64 %i.ds ; 3 uses
  %i.dt = mul i64 %i.ab, %.078150.i.i
  %scevgep393 = getelementptr i8, ptr %i.dg, i64 %i.dt ; 3 uses
  %i.du = mul i64 %i.ab, %.078150.i.i
  %scevgep339 = getelementptr i8, ptr %i.dh, i64 %i.du ; 2 uses
  %i.dv = mul i64 %i.ab, %.078150.i.i
  %scevgep287 = getelementptr i8, ptr %i.di, i64 %i.dv ; 2 uses
  %i.dw = mul i64 %i.ab, %.078150.i.i
  %scevgep247 = getelementptr i8, ptr %i.dk, i64 %i.dw
  %i.dx = mul i64 %i.ab, %.078150.i.i
  %scevgep219 = getelementptr i8, ptr %i.dm, i64 %i.dx
  %i.dy = mul i64 %i.ab, %.078150.i.i
  %scevgep160 = getelementptr i8, ptr %i.dn, i64 %i.dy ; 4 uses
  %i.dz = mul i64 %i.ab, %.078150.i.i             ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.do, i64 %i.dz
  %scevgep111 = getelementptr i8, ptr %i.dp, i64 %i.dz ; 4 uses
  %i.ea = add i64 %.078150.i.i, %i.x
  %i.eb = mul i64 %i.ea, %i.ab
  %i.ec = getelementptr i8, ptr %i.s, i64 %i.eb   ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  br i1 %.not66.i, label %._crit_edge.thread.i.i, label %iter.check516

iter.check516:                                    ; preds = %bb.c
  %i.ed = and i64 %.078150.i.i, 1                 ; 7 uses
  %i.ee = xor i64 %i.ed, 1                        ; 6 uses
  br i1 %min.iters.check478, label %vec.epilog.scalar.ph517.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %iter.check516
  br i1 %min.iters.check480, label %vec.epilog.ph520, label %vector.body483

vector.body483:                                   ; preds = %vector.main.loop.iter.check479, %vector.body483
  %index484 = phi i64 [ %index.next512, %vector.body483 ], [ 0, %vector.main.loop.iter.check479 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body483 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.main.loop.iter.check479 ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <4 x i64> %vec.ind ; 2 uses
  %wide.gep485.a = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <4 x i64> %step.add ; 2 uses
  %wide.gep486.a = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep487.a = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <4 x i64> %step.add.3 ; 2 uses
  %wide.gep488.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep, i64 %i.ed
  %wide.gep489.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep485.a, i64 %i.ed
  %wide.gep490.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep486.a, i64 %i.ed
  %wide.gep491.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep487.a, i64 %i.ed
  %wide.gep492.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep488.a, i64 128 ; 2 uses
  %wide.gep493.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep489.a, i64 128 ; 2 uses
  %wide.gep494.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep490.a, i64 128 ; 2 uses
  %wide.gep495.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep491.a, i64 128 ; 2 uses
  %i.ef = ptrtoint <4 x ptr> %wide.gep492.a to <4 x i64>
  %i.eg = ptrtoint <4 x ptr> %wide.gep493.a to <4 x i64>
  %i.eh = ptrtoint <4 x ptr> %wide.gep494.a to <4 x i64>
  %i.ei = ptrtoint <4 x ptr> %wide.gep495.a to <4 x i64>
  %i.ej = lshr <4 x i64> %i.ef, splat (i64 2)
  %i.ek = lshr <4 x i64> %i.eg, splat (i64 2)
  %i.el = lshr <4 x i64> %i.eh, splat (i64 2)
  %i.em = lshr <4 x i64> %i.ei, splat (i64 2)
  %i.en = and <4 x i64> %i.ej, splat (i64 15)
  %i.eo = and <4 x i64> %i.ek, splat (i64 15)
  %i.ep = and <4 x i64> %i.el, splat (i64 15)
  %i.eq = and <4 x i64> %i.em, splat (i64 15)
  %wide.gep496.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep492.a, <4 x i64> %i.en
  %wide.gep497.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep493.a, <4 x i64> %i.eo
  %wide.gep498.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep494.a, <4 x i64> %i.ep
  %wide.gep499.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep495.a, <4 x i64> %i.eq
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index484 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 96
  store <4 x ptr> %wide.gep496.a, ptr %i.er, align 16, !tbaa !101
  store <4 x ptr> %wide.gep497.a, ptr %i.es, align 16, !tbaa !101
  store <4 x ptr> %wide.gep498.a, ptr %i.et, align 16, !tbaa !101
  store <4 x ptr> %wide.gep499.a, ptr %i.eu, align 16, !tbaa !101
  %wide.gep500.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep, i64 %i.ee
  %wide.gep501.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep485.a, i64 %i.ee
  %wide.gep502.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep486.a, i64 %i.ee
  %wide.gep503.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep487.a, i64 %i.ee
  %wide.gep504.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep500.a, i64 128 ; 2 uses
  %wide.gep505.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep501.a, i64 128 ; 2 uses
  %wide.gep506.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep502.a, i64 128 ; 2 uses
  %wide.gep507.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep503.a, i64 128 ; 2 uses
  %i.ev = ptrtoint <4 x ptr> %wide.gep504.a to <4 x i64>
  %i.ew = ptrtoint <4 x ptr> %wide.gep505.a to <4 x i64>
  %i.ex = ptrtoint <4 x ptr> %wide.gep506.a to <4 x i64>
  %i.ey = ptrtoint <4 x ptr> %wide.gep507.a to <4 x i64>
  %i.ez = lshr <4 x i64> %i.ev, splat (i64 2)
  %i.fa = lshr <4 x i64> %i.ew, splat (i64 2)
  %i.fb = lshr <4 x i64> %i.ex, splat (i64 2)
  %i.fc = lshr <4 x i64> %i.ey, splat (i64 2)
  %i.fd = and <4 x i64> %i.ez, splat (i64 15)
  %i.fe = and <4 x i64> %i.fa, splat (i64 15)
  %i.ff = and <4 x i64> %i.fb, splat (i64 15)
  %i.fg = and <4 x i64> %i.fc, splat (i64 15)
  %wide.gep508.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep504.a, <4 x i64> %i.fd
  %wide.gep509.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep505.a, <4 x i64> %i.fe
  %wide.gep510.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep506.a, <4 x i64> %i.ff
  %wide.gep511 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep507.a, <4 x i64> %i.fg
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index484 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  store <4 x ptr> %wide.gep508.a, ptr %i.fh, align 16, !tbaa !101
  store <4 x ptr> %wide.gep509.a, ptr %i.fi, align 16, !tbaa !101
  store <4 x ptr> %wide.gep510.a, ptr %i.fj, align 16, !tbaa !101
  store <4 x ptr> %wide.gep511, ptr %i.fk, align 16, !tbaa !101
  %index.next512 = add nuw i64 %index484, 16      ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fl = icmp eq i64 %index.next512, %n.vec482
  br i1 %i.fl, label %middle.block513, label %vector.body483, !llvm.loop !798

middle.block513:                                  ; preds = %vector.body483
  br i1 %cmp.n514, label %._crit_edge.i.i, label %vec.epilog.iter.check518

vec.epilog.iter.check518:                         ; preds = %middle.block513
  br i1 %min.epilog.iters.check519, label %vec.epilog.scalar.ph517.preheader, label %vec.epilog.ph520, !prof !119

vec.epilog.ph520:                                 ; preds = %vector.main.loop.iter.check479, %vec.epilog.iter.check518
  %vec.epilog.resume.val515 = phi i64 [ %n.vec482, %vec.epilog.iter.check518 ], [ 0, %vector.main.loop.iter.check479 ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val515, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph520
  %index523 = phi i64 [ %vec.epilog.resume.val515, %vec.epilog.ph520 ], [ %index.next532, %vec.epilog.vector.body522 ] ; 3 uses
  %vec.ind524 = phi <4 x i64> [ %induction, %vec.epilog.ph520 ], [ %vec.ind.next533, %vec.epilog.vector.body522 ] ; 2 uses
  %wide.gep525.a = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, <4 x i64> %vec.ind524 ; 2 uses
  %wide.gep526.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep525.a, i64 %i.ed
  %wide.gep527.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep526.a, i64 128 ; 2 uses
  %i.fm = ptrtoint <4 x ptr> %wide.gep527.a to <4 x i64>
  %i.fn = lshr <4 x i64> %i.fm, splat (i64 2)
  %i.fo = and <4 x i64> %i.fn, splat (i64 15)
  %wide.gep528.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep527.a, <4 x i64> %i.fo
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index523
  store <4 x ptr> %wide.gep528.a, ptr %i.fp, align 16, !tbaa !101
  %wide.gep529.a = getelementptr inbounds nuw [1344 x i8], <4 x ptr> %wide.gep525.a, i64 %i.ee
  %wide.gep530.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep529.a, i64 128 ; 2 uses
  %i.fq = ptrtoint <4 x ptr> %wide.gep530.a to <4 x i64>
  %i.fr = lshr <4 x i64> %i.fq, splat (i64 2)
  %i.fs = and <4 x i64> %i.fr, splat (i64 15)
  %wide.gep531 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep530.a, <4 x i64> %i.fs
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index523
  store <4 x ptr> %wide.gep531, ptr %i.ft, align 16, !tbaa !101
  %index.next532 = add nuw i64 %index523, 4       ; 2 uses
  %vec.ind.next533 = add nuw nsw <4 x i64> %vec.ind524, splat (i64 4)
  %i.fu = icmp eq i64 %index.next532, %n.vec521
  br i1 %i.fu, label %vec.epilog.middle.block534, label %vec.epilog.vector.body522, !llvm.loop !799

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body522
  br i1 %cmp.n535, label %._crit_edge.i.i, label %vec.epilog.scalar.ph517.preheader

vec.epilog.scalar.ph517.preheader:                ; preds = %iter.check516, %vec.epilog.iter.check518, %vec.epilog.middle.block534
  %.077144.i.i.ph = phi i64 [ 0, %iter.check516 ], [ %n.vec482, %vec.epilog.iter.check518 ], [ %n.vec521, %vec.epilog.middle.block534 ]
  br label %vec.epilog.scalar.ph517

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph517, %vec.epilog.middle.block534, %middle.block513
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !101 ; 43 uses
  switch i64 %i.ar, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre82.i = load ptr, ptr %i.ck, align 8, !tbaa !101
  %.pre83.i = load ptr, ptr %i.cl, align 16, !tbaa !101
  %.pre84.i = load ptr, ptr %i.cm, align 8, !tbaa !101
  br label %._crit_edge.thread.i.i

vec.epilog.scalar.ph517:                          ; preds = %vec.epilog.scalar.ph517.preheader, %vec.epilog.scalar.ph517
  %.077144.i.i = phi i64 [ %i.gk, %vec.epilog.scalar.ph517 ], [ %.077144.i.i.ph, %vec.epilog.scalar.ph517.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, i64 %.077144.i.i ; 2 uses
  %i.fw = getelementptr inbounds nuw [1344 x i8], ptr %i.fv, i64 %i.ed
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 128 ; 2 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = and i64 %i.fz, 15
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077144.i.i
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !101
  %i.gd = getelementptr inbounds nuw [1344 x i8], ptr %i.fv, i64 %i.ee
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128 ; 2 uses
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = lshr i64 %i.gf, 2
  %i.gh = and i64 %i.gg, 15
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077144.i.i
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !101
  %i.gk = add nuw nsw i64 %.077144.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gk, %i.ar
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph517, !llvm.loop !800

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not39.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.e ], [ %i.hy, %.lr.ph.i.i.i ] ; 8 uses
  %i.gl = icmp samesign ult i64 %.0.lcssa.i.i.i, %i.aa
  br i1 %i.gl, label %iter.check, label %.lr.ph146.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.gm = sub nuw nsw i64 %i.aa, %.0.lcssa.i.i.i  ; 5 uses
  %i.gn = shl nuw nsw i64 %.0.lcssa.i.i.i, 2
  %scevgep216.a = getelementptr i8, ptr %.pre.i, i64 %i.gn
  %scevgep217.a = getelementptr i8, ptr %.pre.i, i64 %i.cp
  %i.go = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %scevgep218 = getelementptr i8, ptr %i.ec, i64 %i.go
  %bound0220 = icmp ult ptr %scevgep216.a, %scevgep219
  %bound1221 = icmp ult ptr %scevgep218, %scevgep217.a
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %.lr.ph24.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check225 = icmp samesign ult i64 %i.gm, 32
end_hunk_6
begin_hunk_7_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %bound0455 = icmp ult ptr %scevgep434.a, %scevgep439
  %bound1456 = icmp ult ptr %scevgep438, %scevgep435.a
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %scevgep436.a, %scevgep439
  %bound1460 = icmp ult ptr %scevgep438, %scevgep437.a
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  br i1 %conflict.rdx462, label %.lr.ph42.i.i.i, label %vector.body467

vector.body467:                                   ; preds = %.lr.ph42.i.i.i.preheader, %vector.body467
  %index468 = phi i64 [ %index.next473, %vector.body467 ], [ 0, %.lr.ph42.i.i.i.preheader ] ; 2 uses
  %i.yj = add nuw i64 %.0.lcssa.i109.i.i, %index468 ; 4 uses
  %i.yk = mul i64 %i.yj, 6
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.yk
  %wide.vec469 = load <24 x i16>, ptr %i.yl, align 1, !alias.scope !909 ; 3 uses
  %strided.vec470.a = shufflevector <24 x i16> %wide.vec469, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec471.a = shufflevector <24 x i16> %wide.vec469, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec472 = shufflevector <24 x i16> %wide.vec469, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ym = zext <8 x i16> %strided.vec470.a to <8 x i32>
  %i.yn = zext <8 x i16> %strided.vec471.a to <8 x i32>
  %i.yo = zext <8 x i16> %strided.vec472 to <8 x i32> ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.yj
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.yj
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.yj
  %i.ys = sub nsw <8 x i32> %i.ym, %i.yo          ; 2 uses
  store <8 x i32> %i.ys, ptr %i.yq, align 4, !tbaa !94, !alias.scope !910, !noalias !911
  %i.yt = ashr <8 x i32> %i.ys, splat (i32 1)
  %i.yu = add nsw <8 x i32> %i.yt, %i.yo          ; 2 uses
  %i.yv = sub nsw <8 x i32> %i.yn, %i.yu          ; 2 uses
  store <8 x i32> %i.yv, ptr %i.yr, align 4, !tbaa !94, !alias.scope !912, !noalias !913
  %i.yw = ashr <8 x i32> %i.yv, splat (i32 1)
  %i.yx = add nsw <8 x i32> %i.yw, %i.yu
  store <8 x i32> %i.yx, ptr %i.yp, align 4, !tbaa !94, !alias.scope !914, !noalias !909
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.yy = icmp eq i64 %index.next473, %i.yg
  br i1 %i.yy, label %.lr.ph146.i.i, label %vector.body467, !llvm.loop !842

.lr.ph.i103.i.i:                                  ; preds = %bb.l, %.lr.ph.i103.i.i
  %i.yz = phi i64 [ %i.acn, %.lr.ph.i103.i.i ], [ 16, %bb.l ] ; 4 uses
  %.040.i.i.i = phi i64 [ %i.yz, %.lr.ph.i103.i.i ], [ 0, %bb.l ] ; 4 uses
  %i.za = mul nuw nsw i64 %.040.i.i.i, 6
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.za ; 3 uses
  %.val3436.i.i104.i.i = load <16 x i16>, ptr %i.zb, align 1, !tbaa !85, !noalias !915 ; 2 uses
  %i.zc = lshr <16 x i16> %.val3436.i.i104.i.i, splat (i16 8)
  %i.zd = and <16 x i16> %.val3436.i.i104.i.i, splat (i16 255)
  %i.ze = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.zd, <16 x i16> %i.zc)
  %i.zf = bitcast <32 x i8> %i.ze to <4 x i64>
  %i.zg = shufflevector <4 x i64> %i.zf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  %.val3337.i.i105.i.i = load <16 x i16>, ptr %i.zh, align 1, !tbaa !85, !noalias !915 ; 2 uses
  %i.zi = lshr <16 x i16> %.val3337.i.i105.i.i, splat (i16 8)
  %i.zj = and <16 x i16> %.val3337.i.i105.i.i, splat (i16 255)
  %i.zk = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.zj, <16 x i16> %i.zi)
  %i.zl = bitcast <32 x i8> %i.zk to <4 x i64>
  %i.zm = shufflevector <4 x i64> %i.zl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zb, i64 64
  %.val38.i.i106.i.i = load <16 x i16>, ptr %i.zn, align 1, !tbaa !85, !noalias !915 ; 2 uses
  %i.zo = lshr <16 x i16> %.val38.i.i106.i.i, splat (i16 8)
  %i.zp = and <16 x i16> %.val38.i.i106.i.i, splat (i16 255)
  %i.zq = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.zp, <16 x i16> %i.zo)
  %i.zr = bitcast <32 x i8> %i.zq to <4 x i64>
  %i.zs = shufflevector <4 x i64> %i.zr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zt = bitcast <4 x i64> %i.zg to <32 x i8>
  %i.zu = shufflevector <32 x i8> %i.zt, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.zv = bitcast <4 x i64> %i.zm to <32 x i8>
  %i.zw = shufflevector <32 x i8> %i.zv, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.zx = bitcast <4 x i64> %i.zs to <32 x i8>
  %i.zy = shufflevector <32 x i8> %i.zx, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.zz = shufflevector <32 x i8> %i.zy, <32 x i8> %i.zw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aaa = shufflevector <32 x i8> %i.zu, <32 x i8> %i.zw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aab = shufflevector <32 x i8> %i.aaa, <32 x i8> %i.zy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.aac = shufflevector <32 x i8> %i.zw, <32 x i8> %i.zu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aad = shufflevector <32 x i8> %i.aac, <32 x i8> %i.zy, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58> ; 2 uses
  %i.aae = shufflevector <32 x i8> %i.zu, <32 x i8> %i.zz, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53> ; 2 uses
  %i.aaf = shufflevector <32 x i8> %i.aab, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aag = zext <16 x i8> %i.aaf to <16 x i16>
  %i.aah = shufflevector <32 x i8> %i.aab, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aai = zext <16 x i8> %i.aah to <16 x i16>
  %i.aaj = shl nuw <16 x i16> %i.aai, splat (i16 8)
  %i.aak = or disjoint <16 x i16> %i.aaj, %i.aag  ; 2 uses
  %i.aal = shufflevector <32 x i8> %i.aad, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aam = zext <16 x i8> %i.aal to <16 x i16>
  %i.aan = shufflevector <32 x i8> %i.aad, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aao = zext <16 x i8> %i.aan to <16 x i16>
  %i.aap = shl nuw <16 x i16> %i.aao, splat (i16 8)
  %i.aaq = or disjoint <16 x i16> %i.aap, %i.aam  ; 2 uses
  %i.aar = shufflevector <32 x i8> %i.aae, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aas = zext <16 x i8> %i.aar to <16 x i16>
  %i.aat = shufflevector <32 x i8> %i.aae, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aau = zext <16 x i8> %i.aat to <16 x i16>
  %i.aav = shl nuw <16 x i16> %i.aau, splat (i16 8)
  %i.aaw = or disjoint <16 x i16> %i.aav, %i.aas  ; 2 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.040.i.i.i ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.040.i.i.i ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.040.i.i.i ; 2 uses
  %i.aba = shufflevector <16 x i16> %i.aak, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.abb = bitcast <16 x i16> %i.aba to <4 x i64>
  %i.abc = shufflevector <16 x i16> %i.aak, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abd = bitcast <16 x i16> %i.abc to <4 x i64>
  %i.abe = shufflevector <16 x i16> %i.aba, <16 x i16> %i.abc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abf = shufflevector <4 x i64> %i.abb, <4 x i64> %i.abd, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.abg = shufflevector <16 x i16> %i.aaq, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.abh = bitcast <16 x i16> %i.abg to <4 x i64>
  %i.abi = shufflevector <16 x i16> %i.aaq, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abj = bitcast <16 x i16> %i.abi to <4 x i64>
  %i.abk = shufflevector <16 x i16> %i.abg, <16 x i16> %i.abi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abl = shufflevector <4 x i64> %i.abh, <4 x i64> %i.abj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.abm = shufflevector <16 x i16> %i.aaw, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.abn = bitcast <16 x i16> %i.abm to <4 x i64>
  %i.abo = shufflevector <16 x i16> %i.aaw, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abp = bitcast <16 x i16> %i.abo to <4 x i64>
  %i.abq = shufflevector <16 x i16> %i.abm, <16 x i16> %i.abo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abr = shufflevector <4 x i64> %i.abn, <4 x i64> %i.abp, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.abs = bitcast <16 x i16> %i.abe to <8 x i32>
  %i.abt = bitcast <16 x i16> %i.abq to <8 x i32> ; 2 uses
  %i.abu = sub nsw <8 x i32> %i.abs, %i.abt       ; 2 uses
  %i.abv = ashr <8 x i32> %i.abu, splat (i32 1)
  %i.abw = add nsw <8 x i32> %i.abv, %i.abt       ; 2 uses
  %i.abx = bitcast <16 x i16> %i.abk to <8 x i32>
  %i.aby = sub nsw <8 x i32> %i.abx, %i.abw       ; 2 uses
  %i.abz = ashr <8 x i32> %i.aby, splat (i32 1)
  %i.aca = add nsw <8 x i32> %i.abz, %i.abw
  %i.acb = bitcast <4 x i64> %i.abf to <8 x i32>
  %i.acc = bitcast <4 x i64> %i.abr to <8 x i32>  ; 2 uses
  %i.acd = sub nsw <8 x i32> %i.acb, %i.acc       ; 2 uses
  %i.ace = ashr <8 x i32> %i.acd, splat (i32 1)
  %i.acf = add nsw <8 x i32> %i.ace, %i.acc       ; 2 uses
  %i.acg = bitcast <4 x i64> %i.abl to <8 x i32>
  %i.ach = sub <8 x i32> %i.acg, %i.acf           ; 2 uses
  %i.aci = ashr <8 x i32> %i.ach, splat (i32 1)
  %i.acj = add <8 x i32> %i.aci, %i.acf
  store <8 x i32> %i.aca, ptr %i.aax, align 1, !tbaa !85
  store <8 x i32> %i.abu, ptr %i.aay, align 1, !tbaa !85
  store <8 x i32> %i.aby, ptr %i.aaz, align 1, !tbaa !85
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  store <8 x i32> %i.acj, ptr %i.ack, align 1, !tbaa !85
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aay, i64 32
  store <8 x i32> %i.acd, ptr %i.acl, align 1, !tbaa !85
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aaz, i64 32
  store <8 x i32> %i.ach, ptr %i.acm, align 1, !tbaa !85
  %i.acn = add nuw nsw i64 %i.yz, 16
  %.not.i107.i.i.not = icmp samesign ult i64 %i.yz, %i.aa
  br i1 %.not.i107.i.i.not, label %.lr.ph.i103.i.i, label %.preheader.i108.i.i, !llvm.loop !24

.lr.ph42.i.i.i:                                   ; preds = %.lr.ph42.i.i.i.preheader, %.lr.ph42.i.i.i
  %.141.i.i.i = phi i64 [ %i.ade, %.lr.ph42.i.i.i ], [ %.0.lcssa.i109.i.i, %.lr.ph42.i.i.i.preheader ] ; 5 uses
  %i.aco = mul i64 %.141.i.i.i, 6
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.aco ; 3 uses
  %.val34.i.i.i = load i16, ptr %i.acp, align 1
  %i.acq = zext i16 %.val34.i.i.i to i32
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 2
  %.val32.i.i.i = load i16, ptr %i.acr, align 1
  %i.acs = zext i16 %.val32.i.i.i to i32
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %.val.i110.i.i = load i16, ptr %i.act, align 1
  %i.acu = zext i16 %.val.i110.i.i to i32         ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.141.i.i.i
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.141.i.i.i
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.141.i.i.i
  %i.acy = sub nsw i32 %i.acq, %i.acu             ; 2 uses
  store i32 %i.acy, ptr %i.acw, align 4, !tbaa !94
  %i.acz = ashr i32 %i.acy, 1
  %i.ada = add nsw i32 %i.acz, %i.acu             ; 2 uses
  %i.adb = sub nsw i32 %i.acs, %i.ada             ; 2 uses
  store i32 %i.adb, ptr %i.acx, align 4, !tbaa !94
  %i.adc = ashr i32 %i.adb, 1
  %i.add = add nsw i32 %i.adc, %i.ada
  store i32 %i.add, ptr %i.acv, align 4, !tbaa !94
  %i.ade = add nuw i64 %.141.i.i.i, 1             ; 2 uses
  %exitcond.not.i111.i.i = icmp eq i64 %i.ade, %i.aa
  br i1 %exitcond.not.i111.i.i, label %.lr.ph146.i.i, label %.lr.ph42.i.i.i, !llvm.loop !845

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge.i, %bb.c
  %i.adf = phi ptr [ %.pre84.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 10 uses
  %i.adg = phi ptr [ %.pre83.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 10 uses
  %i.adh = phi ptr [ %.pre82.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 10 uses
  %i.adi = phi ptr [ %.pre.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge.i ], [ null, %bb.c ] ; 10 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  br i1 %.not39.i.i.i, label %.preheader.i114.i.i, label %.lr.ph.i112.i.i

.preheader.i114.i.i:                              ; preds = %.lr.ph.i112.i.i, %bb.m
  %.0.lcssa.i115.i.i = phi i64 [ 0, %bb.m ], [ %i.aen, %.lr.ph.i112.i.i ] ; 6 uses
  %i.adj = icmp samesign ult i64 %.0.lcssa.i115.i.i, %i.aa
  br i1 %i.adj, label %.lr.ph61.i.i.i.preheader, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i

.lr.ph61.i.i.i.preheader:                         ; preds = %.preheader.i114.i.i
  %i.adk = sub nuw nsw i64 %i.aa, %.0.lcssa.i115.i.i
  %i.adl = shl nuw nsw i64 %.0.lcssa.i115.i.i, 2  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.adh, i64 %i.adl ; 4 uses
  %scevgep102 = getelementptr i8, ptr %i.adh, i64 %i.cp ; 4 uses
  %scevgep103 = getelementptr i8, ptr %i.adg, i64 %i.adl ; 4 uses
  %scevgep104 = getelementptr i8, ptr %i.adg, i64 %i.cp ; 4 uses
  %scevgep105 = getelementptr i8, ptr %i.adi, i64 %i.adl ; 4 uses
  %scevgep106 = getelementptr i8, ptr %i.adi, i64 %i.cp ; 4 uses
  %scevgep107 = getelementptr i8, ptr %i.adf, i64 %i.adl ; 4 uses
  %scevgep108 = getelementptr i8, ptr %i.adf, i64 %i.cp ; 4 uses
  %i.adm = shl nuw nsw i64 %.0.lcssa.i115.i.i, 3
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.adm ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %scevgep, %scevgep106
  %bound1113 = icmp ult ptr %scevgep105, %scevgep102
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %scevgep, %scevgep108
  %bound1116 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  %bound0119 = icmp ult ptr %scevgep, %scevgep111
  %bound1120 = icmp ult ptr %scevgep110, %scevgep102
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep103, %scevgep106
  %bound1124 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %scevgep103, %scevgep108
  %bound1128 = icmp ult ptr %scevgep107, %scevgep104
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep103, %scevgep111
  %bound1132 = icmp ult ptr %scevgep110, %scevgep104
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep105, %scevgep108
  %bound1136 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep105, %scevgep111
  %bound1140 = icmp ult ptr %scevgep110, %scevgep106
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep107, %scevgep111
  %bound1144 = icmp ult ptr %scevgep110, %scevgep108
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph61.i.i.i, label %vector.body

vector.body:                                      ; preds = %.lr.ph61.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph61.i.i.i.preheader ] ; 2 uses
  %i.adn = add nuw i64 %.0.lcssa.i115.i.i, %index ; 5 uses
  %i.ado = shl i64 %i.adn, 3
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ado
  %wide.vec = load <32 x i16>, ptr %i.adp, align 1, !alias.scope !916 ; 4 uses
  %i.adq = call <32 x i16> @llvm.bswap.v32i16(<32 x i16> %wide.vec)
  %i.adr = shufflevector <32 x i16> %i.adq, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ads = call <32 x i16> @llvm.bswap.v32i16(<32 x i16> %wide.vec)
  %i.adt = shufflevector <32 x i16> %i.ads, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.adu = call <32 x i16> @llvm.bswap.v32i16(<32 x i16> %wide.vec)
  %i.adv = shufflevector <32 x i16> %i.adu, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.adw = call <32 x i16> @llvm.bswap.v32i16(<32 x i16> %wide.vec)
  %i.adx = shufflevector <32 x i16> %i.adw, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ady = zext <8 x i16> %i.adr to <8 x i32>
  %i.adz = zext <8 x i16> %i.adt to <8 x i32>
  %i.aea = zext <8 x i16> %i.adv to <8 x i32>     ; 2 uses
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.adn
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.adn
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.adn
  %i.aee = sub nsw <8 x i32> %i.ady, %i.aea       ; 2 uses
  store <8 x i32> %i.aee, ptr %i.aec, align 4, !tbaa !94, !alias.scope !917, !noalias !918
  %i.aef = ashr <8 x i32> %i.aee, splat (i32 1)
  %i.aeg = add nsw <8 x i32> %i.aef, %i.aea       ; 2 uses
  %i.aeh = sub nsw <8 x i32> %i.adz, %i.aeg       ; 2 uses
  store <8 x i32> %i.aeh, ptr %i.aed, align 4, !tbaa !94, !alias.scope !919, !noalias !920
  %i.aei = ashr <8 x i32> %i.aeh, splat (i32 1)
  %i.aej = add nsw <8 x i32> %i.aei, %i.aeg
  store <8 x i32> %i.aej, ptr %i.aeb, align 4, !tbaa !94, !alias.scope !921, !noalias !922
  %i.aek = zext <8 x i16> %i.adx to <8 x i32>
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %i.adn
  store <8 x i32> %i.aek, ptr %i.ael, align 4, !tbaa !94, !alias.scope !923, !noalias !916
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aem = icmp eq i64 %index.next, %i.adk
  br i1 %i.aem, label %_ZN4AVX212_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i, label %vector.body, !llvm.loop !852

.lr.ph.i112.i.i:                                  ; preds = %bb.m, %.lr.ph.i112.i.i
  %i.aen = phi i64 [ %i.aiv, %.lr.ph.i112.i.i ], [ 16, %bb.m ] ; 4 uses
  %.059.i.i.i = phi i64 [ %i.aen, %.lr.ph.i112.i.i ], [ 0, %bb.m ] ; 5 uses
  %i.aeo = shl nuw nsw i64 %.059.i.i.i, 3
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.aeo ; 4 uses
  %i.aeq = load <8 x i32>, ptr %i.aep, align 1, !tbaa !85, !noalias !924 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %i.aes = load <8 x i32>, ptr %i.aer, align 1, !tbaa !85, !noalias !924 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aep, i64 64
  %i.aeu = load <8 x i32>, ptr %i.aet, align 1, !tbaa !85, !noalias !924 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  %i.aew = load <8 x i32>, ptr %i.aev, align 1, !tbaa !85, !noalias !924 ; 2 uses
  %i.aex = and <8 x i32> %i.aeq, splat (i32 65535)
  %i.aey = and <8 x i32> %i.aes, splat (i32 65535)
  %i.aez = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aex, <8 x i32> %i.aey)
  %i.afa = and <8 x i32> %i.aeu, splat (i32 65535)
  %i.afb = and <8 x i32> %i.aew, splat (i32 65535)
  %i.afc = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afa, <8 x i32> %i.afb)
  %i.afd = lshr <8 x i32> %i.aeq, splat (i32 16)
  %i.afe = lshr <8 x i32> %i.aes, splat (i32 16)
  %i.aff = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afd, <8 x i32> %i.afe)
  %i.afg = lshr <8 x i32> %i.aeu, splat (i32 16)
  %i.afh = lshr <8 x i32> %i.aew, splat (i32 16)
  %i.afi = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afg, <8 x i32> %i.afh)
  %i.afj = bitcast <16 x i16> %i.aez to <8 x i32>
  %i.afk = shufflevector <8 x i32> %i.afj, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.afl = and <8 x i32> %i.afk, splat (i32 65535)
  %i.afm = bitcast <16 x i16> %i.afc to <8 x i32>
  %i.afn = shufflevector <8 x i32> %i.afm, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.afo = and <8 x i32> %i.afn, splat (i32 65535)
  %i.afp = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afl, <8 x i32> %i.afo)
  %i.afq = bitcast <16 x i16> %i.afp to <4 x i64>
  %i.afr = shufflevector <4 x i64> %i.afq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.afs = bitcast <16 x i16> %i.aff to <8 x i32>
  %i.aft = shufflevector <8 x i32> %i.afs, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.afu = and <8 x i32> %i.aft, splat (i32 65535)
  %i.afv = bitcast <16 x i16> %i.afi to <8 x i32>
  %i.afw = shufflevector <8 x i32> %i.afv, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.afx = and <8 x i32> %i.afw, splat (i32 65535)
  %i.afy = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afu, <8 x i32> %i.afx)
  %i.afz = bitcast <16 x i16> %i.afy to <4 x i64>
  %i.aga = shufflevector <4 x i64> %i.afz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.agb = lshr <8 x i32> %i.afk, splat (i32 16)
  %i.agc = lshr <8 x i32> %i.afn, splat (i32 16)
  %i.agd = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.agb, <8 x i32> %i.agc)
  %i.age = bitcast <16 x i16> %i.agd to <4 x i64>
  %i.agf = shufflevector <4 x i64> %i.age, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.agg = lshr <8 x i32> %i.aft, splat (i32 16)
  %i.agh = lshr <8 x i32> %i.afw, splat (i32 16)
  %i.agi = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.agg, <8 x i32> %i.agh)
  %i.agj = bitcast <16 x i16> %i.agi to <4 x i64>
  %i.agk = shufflevector <4 x i64> %i.agj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.agl = bitcast <4 x i64> %i.afr to <32 x i8>
  %i.agm = shufflevector <32 x i8> %i.agl, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.agn = bitcast <4 x i64> %i.aga to <32 x i8>
  %i.ago = shufflevector <32 x i8> %i.agn, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.agp = bitcast <4 x i64> %i.agf to <32 x i8>
  %i.agq = shufflevector <32 x i8> %i.agp, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.agr = bitcast <4 x i64> %i.agk to <32 x i8>
  %i.ags = shufflevector <32 x i8> %i.agr, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %.059.i.i.i ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %.059.i.i.i ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %.059.i.i.i ; 2 uses
  %i.agw = bitcast <32 x i8> %i.agm to <16 x i16> ; 2 uses
  %i.agx = shufflevector <16 x i16> %i.agw, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.agy = bitcast <16 x i16> %i.agx to <4 x i64>
  %i.agz = shufflevector <16 x i16> %i.agw, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aha = bitcast <16 x i16> %i.agz to <4 x i64>
  %i.ahb = shufflevector <16 x i16> %i.agx, <16 x i16> %i.agz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahc = shufflevector <4 x i64> %i.agy, <4 x i64> %i.aha, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahd = bitcast <32 x i8> %i.ago to <16 x i16> ; 2 uses
  %i.ahe = shufflevector <16 x i16> %i.ahd, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ahf = bitcast <16 x i16> %i.ahe to <4 x i64>
  %i.ahg = shufflevector <16 x i16> %i.ahd, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ahh = bitcast <16 x i16> %i.ahg to <4 x i64>
  %i.ahi = shufflevector <16 x i16> %i.ahe, <16 x i16> %i.ahg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahj = shufflevector <4 x i64> %i.ahf, <4 x i64> %i.ahh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahk = bitcast <32 x i8> %i.agq to <16 x i16> ; 2 uses
  %i.ahl = shufflevector <16 x i16> %i.ahk, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ahm = bitcast <16 x i16> %i.ahl to <4 x i64>
  %i.ahn = shufflevector <16 x i16> %i.ahk, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aho = bitcast <16 x i16> %i.ahn to <4 x i64>
  %i.ahp = shufflevector <16 x i16> %i.ahl, <16 x i16> %i.ahn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ahq = shufflevector <4 x i64> %i.ahm, <4 x i64> %i.aho, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ahr = bitcast <16 x i16> %i.ahb to <8 x i32>
  %i.ahs = bitcast <16 x i16> %i.ahp to <8 x i32> ; 2 uses
  %i.aht = sub nsw <8 x i32> %i.ahr, %i.ahs       ; 2 uses
  %i.ahu = ashr <8 x i32> %i.aht, splat (i32 1)
  %i.ahv = add nsw <8 x i32> %i.ahu, %i.ahs       ; 2 uses
  %i.ahw = bitcast <16 x i16> %i.ahi to <8 x i32>
  %i.ahx = sub nsw <8 x i32> %i.ahw, %i.ahv       ; 2 uses
  %i.ahy = ashr <8 x i32> %i.ahx, splat (i32 1)
  %i.ahz = add nsw <8 x i32> %i.ahy, %i.ahv
  %i.aia = bitcast <4 x i64> %i.ahc to <8 x i32>
  %i.aib = bitcast <4 x i64> %i.ahq to <8 x i32>  ; 2 uses
  %i.aic = sub nsw <8 x i32> %i.aia, %i.aib       ; 2 uses
  %i.aid = ashr <8 x i32> %i.aic, splat (i32 1)
  %i.aie = add nsw <8 x i32> %i.aid, %i.aib       ; 2 uses
  %i.aif = bitcast <4 x i64> %i.ahj to <8 x i32>
  %i.aig = sub <8 x i32> %i.aif, %i.aie           ; 2 uses
  %i.aih = ashr <8 x i32> %i.aig, splat (i32 1)
  %i.aii = add <8 x i32> %i.aih, %i.aie
  store <8 x i32> %i.ahz, ptr %i.agt, align 1, !tbaa !85
  store <8 x i32> %i.aht, ptr %i.agu, align 1, !tbaa !85
  store <8 x i32> %i.ahx, ptr %i.agv, align 1, !tbaa !85
  %i.aij = getelementptr inbounds nuw i8, ptr %i.agt, i64 32
  store <8 x i32> %i.aii, ptr %i.aij, align 1, !tbaa !85
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  store <8 x i32> %i.aic, ptr %i.aik, align 1, !tbaa !85
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  store <8 x i32> %i.aig, ptr %i.ail, align 1, !tbaa !85
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %.059.i.i.i ; 2 uses
  %i.ain = bitcast <32 x i8> %i.ags to <16 x i16> ; 2 uses
  %i.aio = shufflevector <16 x i16> %i.ain, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.aip = bitcast <16 x i16> %i.aio to <4 x i64>
  %i.aiq = shufflevector <16 x i16> %i.ain, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.air = bitcast <16 x i16> %i.aiq to <4 x i64>
  %i.ais = shufflevector <16 x i16> %i.aio, <16 x i16> %i.aiq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ait = shufflevector <4 x i64> %i.aip, <4 x i64> %i.air, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.ais, ptr %i.aim, align 1, !tbaa !85
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aim, i64 32
  store <4 x i64> %i.ait, ptr %i.aiu, align 1, !tbaa !85
  %i.aiv = add nuw nsw i64 %i.aen, 16
end_hunk_7
