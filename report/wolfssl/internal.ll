Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ChachaAEADDecrypt:bb.a
.lr.ph.i120.10:                                   ; preds = %.lr.ph.i120.9
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 3 uses
  store i8 0, ptr %i.ka, align 1, !tbaa !52
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, 7
  %.not.i123.10 = icmp eq i64 %i.kf, 0
  br i1 %.not.i123.10, label %.lr.ph31.preheader.i131, label %.lr.ph.i120.11

.lr.ph.i120.11:                                   ; preds = %.lr.ph.i120.10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 0, ptr %i.kd, align 1, !tbaa !52
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = and i64 %i.kh, 7
  %.not.i123.11 = icmp eq i64 %i.ki, 0
  br i1 %.not.i123.11, label %._crit_edge.i132, label %ForceZero.exit135

.preheader.i127.thread267:                        ; preds = %bb.l, %.lr.ph.i120.preheader, %.lr.ph.i120.1, %.lr.ph.i120.2
  %.012.lcssa.i126160.ph = phi ptr [ %i.jf, %.lr.ph.i120.2 ], [ %i.jc, %.lr.ph.i120.1 ], [ %i.iz, %.lr.ph.i120.preheader ], [ %i.b, %bb.l ] ; 2 uses
  %.013.lcssa.i125159.ph = phi i64 [ 1, %.lr.ph.i120.2 ], [ 2, %.lr.ph.i120.1 ], [ 3, %.lr.ph.i120.preheader ], [ 4, %bb.l ]
  store i64 0, ptr %.012.lcssa.i126160.ph, align 8
  %scevgep.i134270 = getelementptr i8, ptr %.012.lcssa.i126160.ph, i64 8
  br label %.lr.ph31.preheader.i131

.preheader.i127:                                  ; preds = %.lr.ph.i120.3
  store i64 0, ptr %i.ji, align 8
  br label %._crit_edge.i132

.lr.ph31.preheader.i131:                          ; preds = %.lr.ph.i120.4, %.lr.ph.i120.5, %.lr.ph.i120.6, %.lr.ph.i120.7, %.lr.ph.i120.8, %.lr.ph.i120.9, %.lr.ph.i120.10, %.preheader.i127.thread267
  %.0.lcssa.i129261 = phi ptr [ %scevgep.i134270, %.preheader.i127.thread267 ], [ %i.jl, %.lr.ph.i120.4 ], [ %i.jo, %.lr.ph.i120.5 ], [ %i.jr, %.lr.ph.i120.6 ], [ %i.ju, %.lr.ph.i120.7 ], [ %i.jx, %.lr.ph.i120.8 ], [ %i.ka, %.lr.ph.i120.9 ], [ %i.kd, %.lr.ph.i120.10 ]
  %.114.lcssa.i128260 = phi i64 [ %.013.lcssa.i125159.ph, %.preheader.i127.thread267 ], [ 7, %.lr.ph.i120.4 ], [ 6, %.lr.ph.i120.5 ], [ 5, %.lr.ph.i120.6 ], [ 4, %.lr.ph.i120.7 ], [ 3, %.lr.ph.i120.8 ], [ 2, %.lr.ph.i120.9 ], [ 1, %.lr.ph.i120.10 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i129261, i8 0, i64 %.114.lcssa.i128260, i1 false), !tbaa !52
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %.lr.ph.i120.11, %.preheader.i127, %.lr.ph31.preheader.i131
  fence seq_cst
  br label %ForceZero.exit135

ForceZero.exit135:                                ; preds = %.lr.ph.i120.11, %._crit_edge.i132
  %i.kj = load i64, ptr %i.i, align 8
  %i.kk = and i64 %i.kj, 4398046511104
  %.not56 = icmp eq i64 %i.kk, 0
  br i1 %.not56, label %bb.o, label %bb.m

bb.m:                                             ; preds = %ForceZero.exit135
  %i.kl = call fastcc i32 @Poly1305TagOld(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef 13, ptr noundef %2, ptr noundef %i.d, i16 noundef zeroext %3, ptr noundef %i.c) ; 2 uses
  %.not59 = icmp eq i32 %i.kl, 0
  br i1 %.not59, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.o:                                             ; preds = %ForceZero.exit135
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !86
  %i.ko = call i32 @wc_Poly1305SetKey(ptr noundef %i.kn, ptr noundef nonnull %i.d, i32 noundef 32) #27 ; 2 uses
  %.not57 = icmp eq i32 %i.ko, 0
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.q:                                             ; preds = %bb.o
  %i.kp = load ptr, ptr %i.km, align 8, !tbaa !86
  %i.kq = call i32 @wc_Poly1305_MAC(ptr noundef %i.kp, ptr noundef nonnull %i.a, i32 noundef 13, ptr noundef %2, i32 noundef %i.h, ptr noundef nonnull %i.c, i32 noundef 16) #27 ; 2 uses
  %.not58 = icmp eq i32 %i.kq, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.s:                                             ; preds = %bb.q, %bb.m
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  %i.kr = zext i16 %narrow to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 %i.kr ; 2 uses
  %i.kt = load i16, ptr %i.e, align 8, !tbaa !254 ; 3 uses
  %.not.i136 = icmp eq i16 %i.kt, 0
  br i1 %.not.i136, label %ConstantCompare.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %wide.trip.count.i = zext i16 %i.kt to i64      ; 3 uses
  %min.iters.check316 = icmp ult i16 %i.kt, 8
  br i1 %min.iters.check316, label %.lr.ph.i137.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.preheader.i
  %n.vec318 = and i64 %wide.trip.count.i, 65528   ; 3 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next326, %vector.body319 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.lc, %vector.body319 ]
  %vec.phi321 = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.ld, %vector.body319 ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 %index320 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %wide.load322 = load <4 x i8>, ptr %i.ku, align 1, !tbaa !52
  %wide.load323 = load <4 x i8>, ptr %i.kv, align 1, !tbaa !52
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 %index320 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %wide.load324 = load <4 x i8>, ptr %i.kw, align 8, !tbaa !52
  %wide.load325 = load <4 x i8>, ptr %i.kx, align 4, !tbaa !52
  %i.ky = xor <4 x i8> %wide.load324, %wide.load322
  %i.kz = xor <4 x i8> %wide.load325, %wide.load323
  %i.la = zext <4 x i8> %i.ky to <4 x i32>
  %i.lb = zext <4 x i8> %i.kz to <4 x i32>
  %i.lc = or <4 x i32> %vec.phi, %i.la            ; 2 uses
  %i.ld = or <4 x i32> %vec.phi321, %i.lb         ; 2 uses
  %index.next326 = add nuw i64 %index320, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next326, %n.vec318
  br i1 %i.le, label %middle.block327, label %vector.body319, !llvm.loop !425

middle.block327:                                  ; preds = %vector.body319
  %bin.rdx = or <4 x i32> %i.ld, %i.lc
  %i.lf = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n328 = icmp eq i64 %n.vec318, %wide.trip.count.i
  br i1 %cmp.n328, label %ConstantCompare.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block327
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec318, %middle.block327 ]
  %.010.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.lf, %middle.block327 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i137 ], [ %indvars.iv.i.ph, %.lr.ph.i137.preheader ] ; 3 uses
  %.010.i = phi i32 [ %i.lm, %.lr.ph.i137 ], [ %.010.i.ph, %.lr.ph.i137.preheader ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 %indvars.iv.i
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !52
  %i.li = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !52
  %i.lk = xor i8 %i.lj, %i.lh
  %i.ll = zext i8 %i.lk to i32
  %i.lm = or i32 %.010.i, %i.ll                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ConstantCompare.exit, label %.lr.ph.i137, !llvm.loop !426

ConstantCompare.exit:                             ; preds = %.lr.ph.i137, %middle.block327
  %.lcssa = phi i32 [ %i.lf, %middle.block327 ], [ %i.lm, %.lr.ph.i137 ]
  %.not60 = icmp eq i32 %.lcssa, 0
  br i1 %.not60, label %ConstantCompare.exit.thread, label %bb.t

bb.t:                                             ; preds = %ConstantCompare.exit
  %i.ln = load i64, ptr %i.i, align 8
  %i.lo = and i64 %i.ln, 131072
  %.not62 = icmp eq i64 %i.lo, 0
  br i1 %.not62, label %bb.u, label %ForceZero.exit

bb.u:                                             ; preds = %bb.t
  %i.lp = call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 20) ; 0 uses
  br label %ForceZero.exit

ConstantCompare.exit.thread:                      ; preds = %bb.s, %ConstantCompare.exit
  %i.lq = load ptr, ptr %i.ei, align 8, !tbaa !85
  %i.lr = call i32 @wc_Chacha_Process(ptr noundef %i.lq, ptr noundef %1, ptr noundef %2, i32 noundef %i.h) #27
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i64.11, %.lr.ph.i69.11, %ForceZero.exit101, %._crit_edge.i81, %._crit_edge.i67, %ConstantCompare.exit.thread, %bb.t, %bb.u, %bb.a, %bb.r, %bb.p, %bb.n
  %.0 = phi i32 [ %i.ko, %bb.p ], [ %i.kq, %bb.r ], [ -305, %bb.u ], [ %i.ek, %._crit_edge.i67 ], [ %i.fy, %._crit_edge.i81 ], [ %i.kl, %bb.n ], [ -173, %bb.a ], [ %i.lr, %ConstantCompare.exit.thread ], [ -305, %bb.t ], [ %i.fy, %.lr.ph.i69.11 ], [ %i.hm, %ForceZero.exit101 ], [ %i.ek, %.lr.ph.i64.11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -305, 1) i32 @TimingPadVerify(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 12 uses
  %i.f = alloca [64 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.g = add i32 %4, -1                           ; 4 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52    ; 5 uses
  %i.k = zext i8 %i.j to i32
  %i.l = sub i32 %3, %4
  %i.m = add i32 %i.l, %i.k
  %i.n = lshr i32 %i.m, 31
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = add nsw i8 %i.o, -1                      ; 3 uses
  %i.q = icmp sgt i32 %4, 1
  br i1 %i.q, label %.lr.ph.preheader.i, label %MaskPadding.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.g, i32 255) ; 2 uses
  %i.s = zext i8 %i.j to i64                      ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.t = icmp eq i32 %i.g, 1
  br i1 %i.t, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.020.i = phi i8 [ %i.p, %.lr.ph.preheader.i.new ], [ %i.ag, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.u = icmp samesign ule i64 %indvars.iv.i, %i.s
  %i.v = sext i1 %i.u to i8
  store volatile i8 %i.v, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %i.w = sub nsw i64 %i.h, %indvars.iv.i
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52
  %i.z = xor i8 %i.y, %i.j
  %i.aa = and i8 %i.z, %.0..0..0..0..0..0..i
  %i.ab = or i8 %i.aa, %.020.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %6 = icmp samesign ule i64 %indvars.iv.next.i, %i.s
  %i.ac = sext i1 %6 to i8
  store volatile i8 %i.ac, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i.1 = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %7 = sub nsw i64 %i.h, %indvars.iv.next.i
  %gep = getelementptr inbounds i8, ptr %1, i64 %7
  %i.ad = load i8, ptr %gep, align 1, !tbaa !52
  %i.ae = xor i8 %i.ad, %i.j
  %i.af = and i8 %i.ae, %.0..0..0..0..0..0..i.1
  %i.ag = or i8 %i.af, %i.ab                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %MaskPadding.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !429

MaskPadding.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %MaskPadding.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %MaskPadding.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %MaskPadding.exit.loopexit.unr-lcssa ] ; 2 uses
  %.020.i.epil.init = phi i8 [ %i.p, %.lr.ph.preheader.i ], [ %i.ag, %MaskPadding.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = icmp samesign ule i64 %indvars.iv.i.epil.init, %i.s
  %i.ai = sext i1 %i.ah to i8
  store volatile i8 %i.ai, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i.epil = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %i.aj = sub nsw i64 %i.h, %indvars.iv.i.epil.init
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = xor i8 %i.al, %i.j
  %i.an = and i8 %i.am, %.0..0..0..0..0..0..i.epil
  %i.ao = or i8 %i.an, %.020.i.epil.init
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %MaskPadding.exit

MaskPadding.exit:                                 ; preds = %.lr.ph.i.epil.preheader, %MaskPadding.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i8 [ %i.p, %bb.a ], [ %i.ag, %MaskPadding.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !150
  %i.ar = add i32 %3, %2
  %i.as = xor i32 %i.ar, -1
  %i.at = add i32 %4, %i.as
  %i.au = call i32 %i.aq(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef %i.at, i32 noundef %2, i32 noundef %5, i32 noundef 1, i32 noundef 1) #27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !105 ; 8 uses
  %i.ax = zext i8 %i.aw to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ay = add nsw i32 %4, -256
  %i.az = sub i32 %i.ay, %i.ax                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = load i8, ptr %i.i, align 1, !tbaa !52
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.g, %i.bb
  store volatile i32 %i.bc, ptr %i.b, align 4, !tbaa !56
  %.0..0..0..0..0..0.13.i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.bd = sub nsw i32 %.0..0..0..0..0..0.13.i, %i.ax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.be = lshr i32 %i.az, 31
  %i.bf = add nsw i32 %i.be, -1
  store volatile i32 %i.bf, ptr %i.c, align 4, !tbaa !56
  %i.bg = lshr i32 %i.bd, 31
  %i.bh = add nsw i32 %i.bg, -1
  store volatile i32 %i.bh, ptr %i.d, align 4, !tbaa !56
  %.0..0..0..0..0..0.6.i = load volatile i32, ptr %i.c, align 4, !tbaa !56
  %i.bi = and i32 %.0..0..0..0..0..0.6.i, %i.az   ; 5 uses
  %.0..0..0..0..0..0..i25 = load volatile i32, ptr %i.d, align 4, !tbaa !56
  %i.bj = and i32 %.0..0..0..0..0..0..i25, %i.bd  ; 4 uses
  %i.bk = add nsw i32 %i.ax, -1                   ; 4 uses
  %i.bl = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 256) %i.ax)
  %i.bm = icmp samesign ult i32 %i.bl, 2          ; 2 uses
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %MaskPadding.exit
  %i.bn = sub i32 %i.ax, %i.bi
  %i.bo = add nsw i32 %i.bn, %i.bj
  %i.bp = and i32 %i.bo, %i.bk
  br label %bb.f

bb.c:                                             ; preds = %MaskPadding.exit
  switch i8 %i.aw, label %bb.f [
    i8 20, label %bb.d
    i8 48, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %reass.sub38 = sub i32 %i.bj, %i.bi
  %i.bq = add i32 %reass.sub38, 20
  %i.br = srem i32 %i.bq, 20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %reass.sub = sub i32 %i.bj, %i.bi
  %i.bs = add i32 %reass.sub, 48
  %i.bt = srem i32 %i.bs, 48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.091.i = phi i32 [ %i.bp, %bb.b ], [ %i.br, %bb.d ], [ %i.bt, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.bu = zext i8 %i.aw to i64                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bu, i1 false)
  %i.bv = icmp slt i32 %i.bi, %4
  br i1 %i.bv, label %.preheader104.lr.ph.i, label %._crit_edge.i

.preheader104.lr.ph.i:                            ; preds = %bb.f
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %MaskMac.exit, label %.preheader104.us.preheader.i

.preheader104.us.preheader.i:                     ; preds = %.preheader104.lr.ph.i
  %i.bw = sext i32 %4 to i64                      ; 2 uses
  %i.bx = sext i32 %i.bi to i64                   ; 2 uses
  %i.by = sub nsw i64 %i.bw, %i.bx
  br label %.preheader104.us.i

.preheader104.us.i:                               ; preds = %.critedge.us.i, %.preheader104.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us.i ], [ %i.by, %.preheader104.us.preheader.i ] ; 2 uses
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.critedge.us.i ], [ %i.bx, %.preheader104.us.preheader.i ] ; 3 uses
  %i.bz = trunc nsw i64 %indvars.iv122.i to i32
  %invariant.op.i = sub i32 %i.bz, %i.bj
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader104.us.i
  %indvars.iv.i27 = phi i64 [ 0, %.preheader104.us.i ], [ %indvars.iv.next.i28, %bb.h ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i27, %indvars.iv
  br i1 %exitcond.not, label %.critedge.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ca = add nsw i64 %indvars.iv.i27, %indvars.iv122.i ; 2 uses
  %indvars121.i = trunc i64 %indvars.iv.i27 to i32
  %.reass.i = add i32 %invariant.op.i, %indvars121.i
  %.0..0..0..0..0..0.14.us.i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.cb = trunc nsw i64 %i.ca to i32
  %i.cc = xor i32 %i.cb, -1
  %i.cd = add i32 %.0..0..0..0..0..0.14.us.i, %i.cc
  %i.ce = lshr i32 %i.cd, 31
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  %i.cg = add nsw i8 %i.cf, -1
  %i.ch = icmp sgt i32 %.reass.i, -1
  %i.ci = select i1 %i.ch, i8 %i.cg, i8 0
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = and i8 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i27 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = or i8 %i.cl, %i.cn
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !52
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, %i.bu
  br i1 %exitcond.not.i29, label %.critedge.us.i, label %bb.g, !llvm.loop !430

.critedge.us.i:                                   ; preds = %bb.h, %bb.g
  %indvars.iv.next123.i = add nsw i64 %indvars.iv122.i, %i.bu ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next123.i, %i.bw
  %indvars.iv.next = sub i64 %indvars.iv, %i.bu
  br i1 %i.cp, label %.preheader104.us.i, label %._crit_edge.i, !llvm.loop !431

._crit_edge.i:                                    ; preds = %.critedge.us.i, %bb.f
  br i1 %i.bm, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not115.i = icmp eq i8 %i.aw, 0
  br i1 %.not115.i, label %MaskMac.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %.preheader.i
  %xtraiter62 = and i64 %i.bu, 1
  %i.cq = icmp eq i8 %i.aw, 1
  br i1 %i.cq, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter66 = and i64 %i.bu, 254
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph.i26.preheader.new ], [ %indvars.iv.next132.i.1, %.lr.ph.i26 ] ; 4 uses
  %.087112.i = phi i8 [ 0, %.lr.ph.i26.preheader.new ], [ %i.dk, %.lr.ph.i26 ]
  %niter67 = phi i64 [ 0, %.lr.ph.i26.preheader.new ], [ %niter67.next.1, %.lr.ph.i26 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv131.i
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !52
  %i.ct = trunc i64 %indvars.iv131.i to i32
  %i.cu = add i32 %.091.i, %i.ct
  %i.cv = and i32 %i.cu, %i.bk
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !52
  %i.cz = xor i8 %i.cy, %i.cs
  %i.da = or i8 %i.cz, %.087112.i
  %indvars.iv.next132.i = or disjoint i64 %indvars.iv131.i, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next132.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dd = trunc i64 %indvars.iv.next132.i to i32
  %i.de = add i32 %.091.i, %i.dd
  %i.df = and i32 %i.de, %i.bk
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.a, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %i.dj = xor i8 %i.di, %i.dc
  %i.dk = or i8 %i.dj, %i.da                      ; 3 uses
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %MaskMac.exit.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !432

end_hunk_0
begin_hunk_1_@ProcessReplyEx:bb.a
  %i.fx = xor <4 x i8> %wide.load126, %wide.load124
  %i.fy = zext <4 x i8> %i.fw to <4 x i32>
  %i.fz = zext <4 x i8> %i.fx to <4 x i32>
  %i.ga = or <4 x i32> %vec.phi121, %i.fy         ; 2 uses
  %i.gb = or <4 x i32> %vec.phi122, %i.fz         ; 2 uses
  %index.next127 = add nuw i64 %index120, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.gc, label %middle.block128, label %vector.body119, !llvm.loop !436

middle.block128:                                  ; preds = %vector.body119
  %bin.rdx129 = or <4 x i32> %i.gb, %i.ga
  %i.gd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx129) ; 2 uses
  %cmp.n130 = icmp eq i64 %n.vec118, %i.fp
  br i1 %cmp.n130, label %ConstantCompare.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader135

.lr.ph.i.i.i.preheader135:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block128
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec118, %middle.block128 ]
  %.010.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.gd, %middle.block128 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader135, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader135 ] ; 3 uses
  %.010.i.i.i = phi i32 [ %i.gk, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader135 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !52
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.gi = xor i8 %i.gh, %i.gf
  %i.gj = zext i8 %i.gi to i32
  %i.gk = or i32 %.010.i.i.i, %i.gj               ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.fp
  br i1 %exitcond.not.i.i.i, label %ConstantCompare.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !437

ConstantCompare.exit.loopexit.i.i:                ; preds = %.lr.ph.i.i.i, %middle.block128
  %.lcssa = phi i32 [ %i.gd, %middle.block128 ], [ %i.gk, %.lr.ph.i.i.i ]
  %i.gl = or i32 %.lcssa, %i.fm
  br label %ConstantCompare.exit.i.i

ConstantCompare.exit.i.i:                         ; preds = %ConstantCompare.exit.loopexit.i.i, %bb.an
  %.0.lcssa.i.i.i = phi i32 [ %i.fm, %bb.an ], [ %i.gl, %ConstantCompare.exit.loopexit.i.i ]
  %.not.i372.i = icmp eq i32 %.0.lcssa.i.i.i, 0
  br i1 %.not.i372.i, label %bb.ao, label %VerifyMacEnc.exit.thread.i

VerifyMacEnc.exit.thread.i:                       ; preds = %ConstantCompare.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %DoProcessReplyEx.exit

bb.ao:                                            ; preds = %ConstantCompare.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.gm = load i16, ptr %i.q, align 4, !tbaa !194
  %i.gn = zext i16 %i.gm to i32
  store i32 %i.gn, ptr %i.ag, align 4, !tbaa !446
  br label %IsEncryptionOn.exit371.thread.i

IsEncryptionOn.exit371.thread.i:                  ; preds = %bb.ao, %bb.al, %bb.ak, %IsEncryptionOn.exit371.i, %bb.aj
  %.4.i = phi i32 [ %.3.i, %bb.ak ], [ 0, %bb.ao ], [ %.3.i, %bb.al ], [ %.3.i, %IsEncryptionOn.exit371.i ], [ %.3.i, %bb.aj ]
  store i8 5, ptr %i.n, align 4, !tbaa !146
  br label %bb.ap

bb.ap:                                            ; preds = %IsEncryptionOn.exit371.thread.i, %ShrinkInputBuffer.exit.i
  %.5.i = phi i32 [ %.4.i, %IsEncryptionOn.exit371.thread.i ], [ %.0240.i, %ShrinkInputBuffer.exit.i ] ; 4 uses
  %i.go = load i8, ptr %i.ab, align 4, !tbaa !51
  %.not.i374.i = icmp eq i8 %i.go, 0
  br i1 %.not.i374.i, label %IsEncryptionOn.exit378.thread.i, label %IsEncryptionOn.exit378.i

IsEncryptionOn.exit378.i:                         ; preds = %bb.ap
  %.in.i376.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !52
  %.not538.i = icmp eq i8 %.in.i376.i, 0
  br i1 %.not538.i, label %IsEncryptionOn.exit378.thread.i, label %bb.aq

bb.aq:                                            ; preds = %IsEncryptionOn.exit378.i
  %i.gp = load i8, ptr %i.aa, align 1, !tbaa !192
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.ar, label %IsEncryptionOn.exit378.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.gr = load i16, ptr %i.w, align 2             ; 2 uses
  %i.gs = and i16 %i.gr, 255
  %i.gt = icmp ne i16 %i.gs, 3
  %i.gu = icmp ult i16 %i.gr, 1024
  %.not541.i = or i1 %i.gu, %i.gt
  br i1 %.not541.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gv = load i8, ptr %i.p, align 1, !tbaa !256
  %i.gw = and i8 %i.gv, -2
  %switch.i = icmp eq i8 %i.gw, 20
  br i1 %switch.i, label %IsEncryptionOn.exit378.thread.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gx = load i16, ptr %i.q, align 4, !tbaa !194 ; 6 uses
  %i.gy = zext i16 %i.gx to i32                   ; 2 uses
  %i.gz = load i8, ptr %i.ae, align 1, !tbaa !105 ; 3 uses
  %i.ha = zext i8 %i.gz to i32                    ; 4 uses
  %i.hb = load i8, ptr %i.ah, align 1, !tbaa !183
  switch i8 %i.hb, label %bb.az [
    i8 1, label %bb.au
    i8 2, label %bb.ay
  ]

bb.au:                                            ; preds = %bb.at
  %i.hc = load i64, ptr %i.o, align 8             ; 2 uses
  %i.hd = and i64 %i.hc, 36028797018963968
  %.not28.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not28.i.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = icmp samesign ult i32 %i.gy, %i.ha
  br i1 %i.he, label %DoDecrypt.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hf = load i16, ptr %i.aj, align 2, !tbaa !264 ; 2 uses
  %i.hg = zext i8 %i.gz to i16
  %.lhs.trunc39.i.i.i = sub nuw i16 %i.gx, %i.hg
  %i.hh = urem i16 %.lhs.trunc39.i.i.i, %i.hf
  %.not30.i.i.i = icmp eq i16 %i.hh, 0
  br i1 %.not30.i.i.i, label %._crit_edge.i.i.i, label %DoDecrypt.exit.thread.i

bb.ax:                                            ; preds = %bb.au
  %i.hi = load i16, ptr %i.aj, align 2, !tbaa !264 ; 2 uses
  %i.hj = urem i16 %i.gx, %i.hi
  %.not29.i.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %DoDecrypt.exit.thread.i

._crit_edge.i.i.i:                                ; preds = %bb.ax, %bb.aw
  %.pre-phi.in.i.i.i = phi i16 [ %i.hf, %bb.aw ], [ %i.hi, %bb.ax ]
  %.pre-phi.i.i.i = zext i16 %.pre-phi.in.i.i.i to i32 ; 2 uses
  %i.hk = add nuw nsw i32 %i.ha, 1
  %spec.select.i.i.i = call i32 @llvm.umax.i32(i32 %i.hk, i32 %.pre-phi.i.i.i)
  %i.hl = and i64 %i.hc, 32768
  %.not31.i.i.i = icmp eq i64 %i.hl, 0
  %i.hm = select i1 %.not31.i.i.i, i32 0, i32 %.pre-phi.i.i.i
  %spec.select36.i.i.i = add nuw nsw i32 %spec.select.i.i.i, %i.hm
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.hn = load i16, ptr %i.ac, align 8, !tbaa !254
  %i.ho = zext i16 %i.hn to i32                   ; 2 uses
  %i.hp = load i64, ptr %i.o, align 8
  %i.hq = and i64 %i.hp, 65536
  %.not.i.i.i.i = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i.i, label %CipherHasExpIV.exit.i.i.i, label %CipherHasExpIV.exit.thread.i.i.i

CipherHasExpIV.exit.i.i.i:                        ; preds = %bb.ay
  %i.hr = load i8, ptr %i.ai, align 2, !tbaa !265
  %.fr.i.i.i = freeze i8 %i.hr
  %.not37.i.i.i = icmp eq i8 %.fr.i.i.i, 9
  %i.hs = add nuw nsw i32 %i.ho, 8
  br i1 %.not37.i.i.i, label %CipherHasExpIV.exit.thread.i.i.i, label %bb.az

CipherHasExpIV.exit.thread.i.i.i:                 ; preds = %CipherHasExpIV.exit.i.i.i, %bb.ay
  br label %bb.az

bb.az:                                            ; preds = %CipherHasExpIV.exit.thread.i.i.i, %CipherHasExpIV.exit.i.i.i, %._crit_edge.i.i.i, %bb.at
  %.1.i.i.i = phi i32 [ %i.hs, %CipherHasExpIV.exit.i.i.i ], [ %spec.select36.i.i.i, %._crit_edge.i.i.i ], [ %i.ha, %bb.at ], [ %i.ho, %CipherHasExpIV.exit.thread.i.i.i ]
  %i.ht = icmp samesign ugt i32 %.1.i.i.i, %i.gy
  br i1 %i.ht, label %DoDecrypt.exit.thread.i, label %SanityCheckCipherText.exit.i.i

SanityCheckCipherText.exit.i.i:                   ; preds = %bb.az
  %i.hu = load i64, ptr %i.o, align 8             ; 2 uses
  %i.hv = and i64 %i.hu, 65536
  %.not.i379.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i379.i, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %SanityCheckCipherText.exit.i.i
  %i.hw = and i64 %i.hu, 36028797018963968
  %.not65.i.i = icmp eq i64 %i.hw, 0
  %i.hx = load ptr, ptr %i.s, align 8, !tbaa !447
  %i.hy = load i32, ptr %i.r, align 4, !tbaa !448
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hz ; 4 uses
  br i1 %.not65.i.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = zext i8 %i.gz to i16
  %i.ic = sub i16 %i.gx, %i.ib
  %i.id = call fastcc i32 @DecryptTls(ptr noundef nonnull %0, ptr noundef %i.ia, ptr noundef %i.ia, i16 noundef zeroext %i.ic) ; 2 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bc, label %DoDecrypt.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.if = load i32, ptr %i.r, align 4, !tbaa !448
  %i.ig = load i16, ptr %i.q, align 4, !tbaa !194
  %i.ih = zext i16 %i.ig to i32
  %i.ii = xor i32 %i.ha, -1
  %i.ij = add i32 %i.if, %i.ii
  %i.ik = add i32 %i.ij, %i.ih                    ; 2 uses
  %i.il = load ptr, ptr %i.s, align 8, !tbaa !447 ; 2 uses
  %i.im = zext i32 %i.ik to i64                   ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !52  ; 2 uses
  %i.ip = zext i8 %i.io to i32                    ; 4 uses
  store i32 %i.ip, ptr %i.ad, align 8, !tbaa !445
  %.not71.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not71.i.i, label %._crit_edge.i381.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc
  %i.iq = xor i32 %i.ip, -1
  %i.ir = zext i8 %i.io to i64
  %2 = add nsw i64 %i.im, -1
  %invariant.umin.i.i = call i64 @llvm.umin.i64(i64 %2, i64 254)
  %3 = add nuw nsw i64 %invariant.umin.i.i, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 4 uses
  %.05869.i.i = phi i8 [ -1, %.lr.ph.i.i ], [ %i.iu, %bb.bd ]
  %.05968.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.jk, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.is = icmp samesign ule i64 %indvars.iv.i.i, %i.ir
  %i.it = sext i1 %i.is to i8
  store volatile i8 %i.it, ptr %i.d, align 1, !tbaa !52
  %.0..0..0..0..0..0..0..0.1.i.i = load volatile i8, ptr %i.d, align 1, !tbaa !52
  %i.iu = and i8 %.0..0..0..0..0..0..0..0.1.i.i, %.05869.i.i ; 2 uses
  %i.iv = sub nuw nsw i64 %i.im, %indvars.iv.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !52
  %i.iy = zext i8 %i.ix to i32                    ; 2 uses
  %i.iz = add nsw i32 %i.iy, %i.iq
  %i.ja = lshr i32 %i.iz, 31
  %i.jb = trunc nuw nsw i32 %i.ja to i8
  %i.jc = add nsw i8 %i.jb, -1
  %i.jd = xor i32 %i.iy, -1
  %i.je = add nsw i32 %i.jd, %i.ip
  %i.jf = lshr i32 %i.je, 31
  %i.jg = trunc nuw nsw i32 %i.jf to i8
  %i.jh = add nsw i8 %i.jg, -1
  %i.ji = or i8 %i.jc, %i.jh
  %i.jj = and i8 %i.ji, %i.iu
  %i.jk = or i8 %i.jj, %.05968.i.i                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i.i, %3
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i.i, label %bb.bd, !llvm.loop !438

._crit_edge.loopexit.i.i:                         ; preds = %bb.bd
  %i.jl = icmp eq i8 %i.jk, 0
  %i.jm = select i1 %i.jl, i32 0, i32 -312
  br label %._crit_edge.i381.i

._crit_edge.i381.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.bc
  %.059.lcssa.i.i = phi i32 [ 0, %bb.bc ], [ %i.jm, %._crit_edge.loopexit.i.i ]
  %i.jn = add nuw nsw i32 %i.ip, 1
  store i32 %i.jn, ptr %i.ad, align 8, !tbaa !445
  store i8 1, ptr %i.aa, align 1, !tbaa !192
  br label %DoDecrypt.exit.i

bb.be:                                            ; preds = %bb.ba
  %i.jo = call fastcc i32 @DecryptTls(ptr noundef nonnull %0, ptr noundef %i.ia, ptr noundef %i.ia, i16 noundef zeroext %i.gx)
  br label %DoDecrypt.exit.i

bb.bf:                                            ; preds = %SanityCheckCipherText.exit.i.i
  %i.jp = load ptr, ptr %i.s, align 8, !tbaa !447
  %i.jq = load i32, ptr %i.r, align 4, !tbaa !448
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr ; 2 uses
  %i.jt = call i32 @DecryptTls13(ptr noundef nonnull %0, ptr noundef %i.js, ptr noundef %i.js, i16 noundef zeroext %i.gx, ptr noundef nonnull %i.p, i16 noundef zeroext 5) #27
  br label %DoDecrypt.exit.i

DoDecrypt.exit.i:                                 ; preds = %bb.bf, %bb.be, %._crit_edge.i381.i, %bb.bb
  %.0.i380.i = phi i32 [ %i.id, %bb.bb ], [ %i.jo, %bb.be ], [ %i.jt, %bb.bf ], [ %.059.lcssa.i.i, %._crit_edge.i381.i ] ; 6 uses
  %i.ju = icmp sgt i32 %.0.i380.i, -1
  br i1 %i.ju, label %bb.bg, label %DoDecrypt.exit.thread.i

bb.bg:                                            ; preds = %DoDecrypt.exit.i
  %i.jv = load i64, ptr %i.o, align 8             ; 2 uses
  %i.jw = and i64 %i.jv, 32768
  %.not312.i = icmp eq i64 %i.jw, 0
  br i1 %.not312.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jx = load i8, ptr %i.ah, align 1, !tbaa !183
  %i.jy = icmp eq i8 %i.jx, 1
  br i1 %i.jy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jz = load i16, ptr %i.aj, align 2, !tbaa !264 ; 2 uses
  %i.ka = zext i16 %i.jz to i32
  %i.kb = load i32, ptr %i.r, align 4, !tbaa !174
  %i.kc = add i32 %i.kb, %i.ka
  store i32 %i.kc, ptr %i.r, align 4, !tbaa !174
  %i.kd = load i16, ptr %i.q, align 4, !tbaa !194
  %i.ke = sub i16 %i.kd, %i.jz
  store i16 %i.ke, ptr %i.q, align 4, !tbaa !194
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.kf = and i64 %i.jv, 65536
  %.not.i382.i = icmp eq i64 %i.kf, 0
  br i1 %.not.i382.i, label %bb.bk, label %IsEncryptionOn.exit378.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.kg = load i8, ptr %i.ah, align 1, !tbaa !183
  %i.kh = icmp eq i8 %i.kg, 2
  br i1 %i.kh, label %CipherHasExpIV.exit.i, label %IsEncryptionOn.exit378.thread.i

CipherHasExpIV.exit.i:                            ; preds = %bb.bk
  %i.ki = load i8, ptr %i.ai, align 2, !tbaa !265
  %.not542.i = icmp eq i8 %i.ki, 9
  br i1 %.not542.i, label %IsEncryptionOn.exit378.thread.i, label %bb.bl

bb.bl:                                            ; preds = %CipherHasExpIV.exit.i
  %i.kj = load i32, ptr %i.r, align 4, !tbaa !174
  %i.kk = add i32 %i.kj, 8
  store i32 %i.kk, ptr %i.r, align 4, !tbaa !174
  %i.kl = load i16, ptr %i.q, align 4, !tbaa !194
  %i.km = add i16 %i.kl, -8
  store i16 %i.km, ptr %i.q, align 4, !tbaa !194
  br label %IsEncryptionOn.exit378.thread.i

DoDecrypt.exit.thread.i:                          ; preds = %DoDecrypt.exit.i, %bb.az, %bb.ax, %bb.aw, %bb.av
  %.0.i380469.i = phi i32 [ %.0.i380.i, %DoDecrypt.exit.i ], [ -375, %bb.aw ], [ -375, %bb.ax ], [ -375, %bb.av ], [ -375, %bb.az ]
  %i.kn = call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 20) ; 0 uses
  br label %DoProcessReplyEx.exit

IsEncryptionOn.exit378.thread.i:                  ; preds = %bb.bl, %CipherHasExpIV.exit.i, %bb.bk, %bb.bj, %bb.as, %bb.aq, %IsEncryptionOn.exit378.i, %bb.ap
  %.6.i = phi i32 [ %.0.i380.i, %bb.bl ], [ %.0.i380.i, %CipherHasExpIV.exit.i ], [ %.5.i, %IsEncryptionOn.exit378.i ], [ %.5.i, %bb.as ], [ %.5.i, %bb.aq ], [ %.5.i, %bb.ap ], [ %.0.i380.i, %bb.bj ], [ %.0.i380.i, %bb.bk ]
  store i8 6, ptr %i.n, align 4, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %IsEncryptionOn.exit378.thread.i, %ShrinkInputBuffer.exit.i
  %.7.i = phi i32 [ %.6.i, %IsEncryptionOn.exit378.thread.i ], [ %.0240.i, %ShrinkInputBuffer.exit.i ] ; 6 uses
  %i.ko = load i8, ptr %i.ab, align 4, !tbaa !51
  %.not.i384.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i384.i, label %IsEncryptionOn.exit410.thread.i, label %IsEncryptionOn.exit388.i

IsEncryptionOn.exit388.i:                         ; preds = %bb.bm
  %.in.i386.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !52
  %.not543.i = icmp eq i8 %.in.i386.i, 0
  br i1 %.not543.i, label %IsEncryptionOn.exit410.thread.i, label %bb.bn

bb.bn:                                            ; preds = %IsEncryptionOn.exit388.i
  %i.kp = load i8, ptr %i.aa, align 1, !tbaa !192
  switch i8 %i.kp, label %IsEncryptionOn.exit410.i [
    i8 0, label %bb.bo
    i8 1, label %IsEncryptionOn.exit401.thread711.i.thread
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.kq = load i16, ptr %i.w, align 2             ; 2 uses
  %i.kr = and i16 %i.kq, 255
  %i.ks = icmp ne i16 %i.kr, 3
  %i.kt = icmp ult i16 %i.kq, 1024
  %.not546.i = or i1 %i.kt, %i.ks
  br i1 %.not546.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ku = load i8, ptr %i.p, align 1, !tbaa !256
  %i.kv = and i8 %i.ku, -2
  %switch357.i = icmp eq i8 %i.kv, 20
  br i1 %switch357.i, label %IsEncryptionOn.exit410.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kw = load i64, ptr %i.o, align 8             ; 2 uses
  %i.kx = and i64 %i.kw, 36028797018963968
  %.not318.i = icmp eq i64 %i.kx, 0
  %.pre623.i = load i16, ptr %i.q, align 4, !tbaa !194 ; 4 uses
  br i1 %.not318.i, label %bb.br, label %IsEncryptionOn.exit401.thread711.i.thread68

IsEncryptionOn.exit401.thread711.i.thread68:      ; preds = %bb.bq
  %i.ky = zext i16 %.pre623.i to i32
  store i32 %i.ky, ptr %i.ag, align 4, !tbaa !446
  store i8 1, ptr %i.aa, align 1, !tbaa !192
  br label %IsEncryptionOn.exit401.thread711.i.thread

bb.br:                                            ; preds = %bb.bq
  %i.kz = load ptr, ptr %i.s, align 8, !tbaa !141
  %i.la = load i32, ptr %i.r, align 4, !tbaa !174
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lb ; 6 uses
  %i.ld = zext i16 %.pre623.i to i32              ; 4 uses
  %i.le = load i8, ptr %i.p, align 1, !tbaa !256
  %i.lf = zext i8 %i.le to i32                    ; 3 uses
  %i.lg = load i8, ptr %i.ae, align 1, !tbaa !105 ; 7 uses
  %i.lh = zext i8 %i.lg to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.li = load i8, ptr %i.ah, align 1, !tbaa !183 ; 2 uses
  switch i8 %i.li, label %bb.bv [
    i8 1, label %bb.bs
    i8 0, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.lj = add nsw i32 %i.ld, -1
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !52
  %i.ln = zext i8 %i.lm to i32                    ; 4 uses
  %i.lo = and i64 %i.kw, 16384
  %.not63.i.i = icmp eq i64 %i.lo, 0
  br i1 %.not63.i.i, label %PadCheck.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lp = call i32 @TimingPadVerify(ptr noundef nonnull %0, ptr noundef nonnull %i.lc, i32 noundef %i.ln, i32 noundef %i.lh, i32 noundef range(i32 0, 65536) %i.ld, i32 noundef range(i32 0, 256) %i.lf)
  %.not65.i389.i = icmp eq i32 %i.lp, 0
  br i1 %.not65.i389.i, label %thread-pre-split.i.i, label %VerifyMac.exit.thread.i

PadCheck.exit.i.i:                                ; preds = %bb.bs
  %i.lq = sub nsw i32 %i.ld, %i.lh                ; 2 uses
  %i.lr = add nsw i32 %i.lq, -1
  %i.ls = icmp uge i32 %i.lr, %i.ln               ; 2 uses
  %spec.select.i.i = select i1 %i.ls, i32 %i.ln, i32 0 ; 4 uses
  %i.lt = load ptr, ptr %i.af, align 16, !tbaa !150
  %i.lu = xor i32 %spec.select.i.i, -1
  %i.lv = add nsw i32 %i.lq, %i.lu
  %i.lw = call i32 %i.lt(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.lc, i32 noundef %i.lv, i32 noundef %spec.select.i.i, i32 noundef range(i32 0, 256) %i.lf, i32 noundef 1, i32 noundef 1) #27, !inline_history !439
  %i.lx = zext i16 %.pre623.i to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lx
  %i.lz = zext i8 %i.lg to i64                    ; 4 uses
  %i.ma = sub nsw i64 0, %i.lz
  %i.mb = getelementptr inbounds i8, ptr %i.ly, i64 %i.ma
  %i.mc = zext nneg i32 %spec.select.i.i to i64
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 %i.md
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 -1 ; 2 uses
  %.not.i.i390.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i390.i, label %ConstantCompare.exit.i394.i, label %.lr.ph.i.i391.i.preheader

.lr.ph.i.i391.i.preheader:                        ; preds = %PadCheck.exit.i.i
  %min.iters.check = icmp ult i8 %i.lg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i391.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i391.i.preheader
  %n.vec = and i64 %i.lz, 248                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.mo, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.mp, %vector.body ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
end_hunk_1
