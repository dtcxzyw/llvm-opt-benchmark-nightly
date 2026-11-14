Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@SendCertificate:bb.a
  %i.iq = load i8, ptr %i.ar, align 2, !tbaa !49
  %i.ir = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !259
  %i.is = load i16, ptr %i.ar, align 2            ; 3 uses
  %i.it = and i16 %i.is, 255
  %i.iu = icmp ne i16 %i.it, 3
  %i.iv = icmp ult i16 %i.is, 1024
  %.not15.i = or i1 %i.iv, %i.iu
  %i.iw = lshr i16 %i.is, 8
  %i.ix = trunc nuw i16 %i.iw to i8
  %.sink.i = select i1 %.not15.i, i8 %i.ix, i8 3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %.sink.i, ptr %i.iy, align 1, !tbaa !261
  %i.iz = load i64, ptr %i.d, align 16
  %i.ja = and i64 %i.iz, 131072
  %.not12.i = icmp eq i64 %i.ja, 0
  br i1 %.not12.i, label %bb.bb, label %HashRaw.exit307

bb.bb:                                            ; preds = %bb.ba
  %i.jb = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  %i.jc = lshr i32 %.2191394417, 8
  %i.jd = trunc i32 %i.jc to i8
  store i8 %i.jd, ptr %i.jb, align 1, !tbaa !52
  %i.je = trunc i32 %.2191394417 to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  br label %HashRaw.exit307

HashRaw.exit307:                                  ; preds = %bb.bb, %bb.ba, %bb.az
  br i1 %.not242, label %HashRaw.exit307.thread339, label %HashRaw.exit307.thread

HashRaw.exit307.thread:                           ; preds = %bb.ay, %IsEncryptionOn.exit293, %HashRaw.exit300, %bb.av, %bb.aw, %bb.au, %IsAtLeastTLSv1_2.exit.i303, %bb.ax, %HashRaw.exit307
  %.2186338 = phi i32 [ %.1185396416, %HashRaw.exit307 ], [ %i.hd, %IsEncryptionOn.exit293 ], [ %i.hd, %bb.ay ], [ %i.hd, %bb.ax ], [ %i.hd, %IsAtLeastTLSv1_2.exit.i303 ], [ %i.hd, %bb.au ], [ %i.hd, %bb.aw ], [ %i.hd, %bb.av ], [ %i.hd, %HashRaw.exit300 ] ; 3 uses
  %.3192337 = phi i32 [ %.2191394417, %HashRaw.exit307 ], [ %i.hf, %IsEncryptionOn.exit293 ], [ %i.hf, %bb.ay ], [ %i.hf, %bb.ax ], [ %i.hf, %IsAtLeastTLSv1_2.exit.i303 ], [ %i.hf, %bb.au ], [ %i.hf, %bb.aw ], [ %i.hf, %bb.av ], [ %i.hf, %HashRaw.exit300 ] ; 4 uses
  %.3200336 = phi i32 [ %.2199366, %HashRaw.exit307 ], [ %i.he, %IsEncryptionOn.exit293 ], [ %i.he, %bb.ay ], [ %i.he, %bb.ax ], [ %i.he, %IsAtLeastTLSv1_2.exit.i303 ], [ %i.he, %bb.au ], [ %i.he, %bb.aw ], [ %i.he, %bb.av ], [ %i.he, %HashRaw.exit300 ] ; 2 uses
  %i.jg = load i32, ptr %i.u, align 16, !tbaa !275 ; 3 uses
  %i.jh = icmp ult i32 %i.jg, %.0205
  br i1 %i.jh, label %bb.bc, label %HashRaw.exit307.thread339

bb.bc:                                            ; preds = %HashRaw.exit307.thread
  %i.ji = sub nuw i32 %.0205, %i.jg               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.jj = icmp uge i32 %i.ji, %.3192337
  %i.jk = sext i1 %i.jj to i32
  store volatile i32 %i.jk, ptr %i.b, align 4, !tbaa !56
  %.0..0..0..0..0..0..i308 = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.jl = xor i32 %.0..0..0..0..0..0..i308, -1
  %i.jm = and i32 %i.ji, %i.jl
  %.0..0..0..0..0..0.2.i309 = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.jn = and i32 %.0..0..0..0..0..0.2.i309, %.3192337
  %i.jo = or i32 %i.jn, %i.jm                     ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jp = zext nneg i32 %.2186338 to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.jp
  %i.jr = load ptr, ptr %i.bj, align 8, !tbaa !120
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !78
  %i.jt = zext i32 %i.jg to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jt
  %i.jv = zext i32 %i.jo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr align 1 %i.ju, i64 %i.jv, i1 false)
  %i.jw = add i32 %i.jo, %.2186338
  %i.jx = load i32, ptr %i.u, align 16, !tbaa !275
  %i.jy = add i32 %i.jx, %i.jo
  store i32 %i.jy, ptr %i.u, align 16, !tbaa !275
  %i.jz = sub i32 %.3200336, %i.jo
  %i.ka = sub i32 %.3192337, %i.jo
  br label %HashRaw.exit307.thread339

HashRaw.exit307.thread339:                        ; preds = %HashRaw.exit276, %bb.bc, %HashRaw.exit307.thread, %HashRaw.exit307
  %.4201 = phi i32 [ %i.jz, %bb.bc ], [ %.3200336, %HashRaw.exit307.thread ], [ %.2199366, %HashRaw.exit307 ], [ %i.gg, %HashRaw.exit276 ] ; 2 uses
  %.4193 = phi i32 [ %i.ka, %bb.bc ], [ %.3192337, %HashRaw.exit307.thread ], [ %.2191394417, %HashRaw.exit307 ], [ %i.gh, %HashRaw.exit276 ] ; 3 uses
  %.3187 = phi i32 [ %i.jw, %bb.bc ], [ %.2186338, %HashRaw.exit307.thread ], [ %.1185396416, %HashRaw.exit307 ], [ %i.gf, %HashRaw.exit276 ] ; 3 uses
  %i.kb = icmp ne i32 %.4193, 0
  %or.cond = select i1 %.not241, i1 %i.kb, i1 false
  br i1 %or.cond, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %HashRaw.exit307.thread339
  %i.kc = load i32, ptr %i.u, align 16, !tbaa !275 ; 2 uses
  %i.kd = sub i32 %i.aa, %i.kc                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ke = icmp uge i32 %i.kd, %.4193
  %i.kf = sext i1 %i.ke to i32
  store volatile i32 %i.kf, ptr %i.a, align 4, !tbaa !56
  %.0..0..0..0..0..0..i310 = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.kg = xor i32 %.0..0..0..0..0..0..i310, -1
  %i.kh = and i32 %i.kd, %i.kg
  %.0..0..0..0..0..0.2.i311 = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.ki = and i32 %.0..0..0..0..0..0.2.i311, %.4193
  %i.kj = or i32 %i.ki, %i.kh                     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kk = zext i32 %.3187 to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.kk
  %i.km = load ptr, ptr %i.bk, align 8, !tbaa !127
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !78
  %i.ko = zext i32 %i.kc to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %i.bm
  %i.kr = zext i32 %i.kj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.kq, i64 %i.kr, i1 false)
  %i.ks = add i32 %i.kj, %.3187
  %i.kt = load i32, ptr %i.u, align 16, !tbaa !275
  %i.ku = add i32 %i.kt, %i.kj
  store i32 %i.ku, ptr %i.u, align 16, !tbaa !275
  %i.kv = sub i32 %.4201, %i.kj
  br label %bb.be

bb.be:                                            ; preds = %HashRaw.exit307.thread339, %bb.bd
  %.5 = phi i32 [ %i.kv, %bb.bd ], [ %.4201, %HashRaw.exit307.thread339 ] ; 2 uses
  %.4188 = phi i32 [ %i.ks, %bb.bd ], [ %.3187, %HashRaw.exit307.thread339 ] ; 4 uses
  %i.kw = load i8, ptr %i.ae, align 4, !tbaa !51
  %.not.i312 = icmp eq i8 %i.kw, 0
  br i1 %.not.i312, label %IsEncryptionOn.exit316.thread, label %IsEncryptionOn.exit316

IsEncryptionOn.exit316:                           ; preds = %bb.be
  %.in.i314 = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not364 = icmp eq i8 %.in.i314, 0
  br i1 %.not364, label %IsEncryptionOn.exit316.thread, label %bb.bf

bb.bf:                                            ; preds = %IsEncryptionOn.exit316
  %i.kx = load i64, ptr %i.d, align 16
  %i.ky = and i64 %i.kx, 131072
  %.not244 = icmp eq i64 %i.ky, 0
  %spec.select249 = select i1 %.not244, i32 5, i32 13 ; 3 uses
  %i.kz = sub nsw i32 %.4188, %spec.select249     ; 4 uses
  %i.la = icmp slt i32 %i.kz, 0
  br i1 %i.la, label %.thread353, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not245 = icmp eq i32 %.4188, %spec.select249
  br i1 %.not245, label %.thread, label %bb.bh

.thread:                                          ; preds = %bb.bg
  %i.lb = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %i.du, i32 noundef %.2181418, ptr noundef null, i32 noundef %i.kz, i32 noundef 22, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.lc = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.ld = tail call ptr @wolfSSL_Malloc(i64 noundef %i.lc) #27 ; 4 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %.thread353, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lf = zext nneg i32 %spec.select249 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull align 1 %i.lg, i64 %i.lc, i1 false)
  %i.lh = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %i.du, i32 noundef %.2181418, ptr noundef nonnull %i.ld, i32 noundef %i.kz, i32 noundef 22, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.ld) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread
  %i.li = phi i32 [ %i.lb, %.thread ], [ %i.lh, %bb.bi ] ; 3 uses
  %i.lj = icmp sgt i32 %i.li, -1
  br i1 %i.lj, label %IsEncryptionOn.exit316.thread, label %.thread353

IsEncryptionOn.exit316.thread:                    ; preds = %bb.be, %IsEncryptionOn.exit316, %bb.bj
  %.4183 = phi i32 [ %i.li, %bb.bj ], [ %.4188, %IsEncryptionOn.exit316 ], [ %.4188, %bb.be ]
  %i.lk = load i32, ptr %i.am, align 16, !tbaa !188
  %i.ll = add i32 %i.lk, %.4183
  store i32 %i.ll, ptr %i.am, align 16, !tbaa !188
  %i.lm = load i64, ptr %i.d, align 16
  %i.ln = and i64 %i.lm, 137438953472
  %.not247 = icmp eq i64 %i.ln, 0
  br i1 %.not247, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %IsEncryptionOn.exit316.thread
  %i.lo = tail call i32 @SendBuffered(ptr noundef nonnull %0)
  br label %bb.bl

bb.bl:                                            ; preds = %IsEncryptionOn.exit316.thread, %bb.bk
  %.2178 = phi i32 [ 0, %IsEncryptionOn.exit316.thread ], [ %i.lo, %bb.bk ] ; 3 uses
  %i.lp = icmp ne i32 %.5, 0
  %i.lq = icmp eq i32 %.2178, 0
  %i.lr = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %i.lr, label %bb.h, label %._crit_edge, !llvm.loop !473

._crit_edge:                                      ; preds = %bb.bl
  %.not225 = icmp eq i32 %.2178, -327
  br i1 %.not225, label %.thread353, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.0176.lcssa400 = phi i32 [ %.2178, %._crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i8 0, ptr %i.ls, align 8, !tbaa !269
  store i32 0, ptr %i.u, align 16, !tbaa !275
  %i.lt = load i64, ptr %i.d, align 16
  %i.lu = and i64 %i.lt, 48
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %bb.bm, label %.thread353

bb.bm:                                            ; preds = %._crit_edge.thread
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1061
  store i8 5, ptr %i.lw, align 1, !tbaa !191
  br label %.thread353

.thread353:                                       ; preds = %bb.bf, %bb.bh, %bb.p, %bb.o, %IsEncryptionOn.exit255.thread, %bb.bj, %._crit_edge, %bb.bm, %._crit_edge.thread, %bb.c, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ -327, %._crit_edge ], [ -328, %bb.c ], [ %.0176.lcssa400, %._crit_edge.thread ], [ %.0176.lcssa400, %bb.bm ], [ -125, %bb.bh ], [ -132, %bb.bf ], [ -125, %bb.o ], [ -125, %bb.p ], [ %i.li, %bb.bj ], [ -173, %IsEncryptionOn.exit255.thread ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -173, 16385) i32 @wolfssl_local_GetMaxPlaintextSize(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %spec.select = select i1 %i.a, i32 -173, i32 16384
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define i32 @SendCertificateRequest(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.d = load i8, ptr %i.c, align 1, !tbaa !236
  switch i8 %i.d, label %bb.c [
    i8 -64, label %bb.b
    i8 -52, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.f = load i8, ptr %i.e, align 2, !tbaa !230
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %GetServerCertReqCertTypes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %GetServerCertReqCertTypes.exit

GetServerCertReqCertTypes.exit:                   ; preds = %bb.b, %bb.c
  %.sink13.i = phi i8 [ 1, %bb.c ], [ 64, %bb.b ]
  %.sink.i = phi i8 [ 64, %bb.c ], [ 1, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 4 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !49
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.d, label %GetServerCertReqHashSigAlgo.exit.thread100

bb.d:                                             ; preds = %GetServerCertReqCertTypes.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.l = load i8, ptr %i.k, align 1, !tbaa !50
  %i.m = icmp ugt i8 %i.l, 2
  br i1 %i.m, label %IsAtLeastTLSv1_2.exit, label %GetServerCertReqHashSigAlgo.exit.thread100

IsAtLeastTLSv1_2.exit:                            ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %IsAtLeastTLSv1_2.exit
  %i.p = load ptr, ptr %0, align 16, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %IsAtLeastTLSv1_2.exit
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.o, %IsAtLeastTLSv1_2.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 304 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95   ; 3 uses
  %i.w = icmp ugt i16 %i.v, 1
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %HashSigAlgoCoverage.exit.i.thread

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.x = zext i16 %i.v to i64                     ; 2 uses
  %i.y = add nsw i64 %i.x, -2                     ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %i.aa = add nuw i64 %i.z, 1                     ; 2 uses
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 3 uses
  %.0710.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !52
  %cond.i.i.i = icmp eq i8 %i.ad, 8
  br i1 %cond.i.i.i, label %DecodeSigAlg.exit.thread.i.i, label %DecodeSigAlg.exit.i.i

DecodeSigAlg.exit.i.i:                            ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  switch i8 %i.af, label %.lr.ph.i.i.1 [
    i8 1, label %DecodeSigAlg.exit.thread.i.i
    i8 8, label %DecodeSigAlg.exit.thread.i.i
    i8 10, label %DecodeSigAlg.exit.thread.i.i
    i8 3, label %bb.g
  ]

DecodeSigAlg.exit.thread.i.i:                     ; preds = %DecodeSigAlg.exit.i.i, %DecodeSigAlg.exit.i.i, %DecodeSigAlg.exit.i.i, %.lr.ph.i.i
  %i.ag = or i32 %.0710.i.i, 2
  br label %.lr.ph.i.i.1

bb.g:                                             ; preds = %DecodeSigAlg.exit.i.i
  %i.ah = or i32 %.0710.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.g, %DecodeSigAlg.exit.thread.i.i, %DecodeSigAlg.exit.i.i
  %.1.i.i = phi i32 [ %.0710.i.i, %DecodeSigAlg.exit.i.i ], [ %i.ag, %DecodeSigAlg.exit.thread.i.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !52
  %cond.i.i.i.1 = icmp eq i8 %i.ak, 8
  br i1 %cond.i.i.i.1, label %DecodeSigAlg.exit.thread.i.i.1, label %DecodeSigAlg.exit.i.i.1

DecodeSigAlg.exit.i.i.1:                          ; preds = %.lr.ph.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  switch i8 %i.am, label %bb.i [
    i8 1, label %DecodeSigAlg.exit.thread.i.i.1
    i8 8, label %DecodeSigAlg.exit.thread.i.i.1
    i8 10, label %DecodeSigAlg.exit.thread.i.i.1
    i8 3, label %bb.h
  ]

bb.h:                                             ; preds = %DecodeSigAlg.exit.i.i.1
  %i.an = or i32 %.1.i.i, 1
  br label %bb.i

DecodeSigAlg.exit.thread.i.i.1:                   ; preds = %DecodeSigAlg.exit.i.i.1, %DecodeSigAlg.exit.i.i.1, %DecodeSigAlg.exit.i.i.1, %.lr.ph.i.i.1
  %i.ao = or i32 %.1.i.i, 2
  br label %bb.i

bb.i:                                             ; preds = %DecodeSigAlg.exit.thread.i.i.1, %bb.h, %DecodeSigAlg.exit.i.i.1
  %.1.i.i.1 = phi i32 [ %.1.i.i, %DecodeSigAlg.exit.i.i.1 ], [ %i.ao, %DecodeSigAlg.exit.thread.i.i.1 ], [ %i.an, %bb.h ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %HashSigAlgoCoverage.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

HashSigAlgoCoverage.exit.i.unr-lcssa:             ; preds = %bb.i
  %i.ap = and i64 %i.y, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %HashSigAlgoCoverage.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %HashSigAlgoCoverage.exit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %HashSigAlgoCoverage.exit.i.unr-lcssa ]
  %.0710.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %HashSigAlgoCoverage.exit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod135 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52
  %cond.i.i.i.epil = icmp eq i8 %i.ar, 8
  br i1 %cond.i.i.i.epil, label %DecodeSigAlg.exit.thread.i.i.epil, label %DecodeSigAlg.exit.i.i.epil

DecodeSigAlg.exit.i.i.epil:                       ; preds = %.lr.ph.i.i.epil.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  switch i8 %i.at, label %HashSigAlgoCoverage.exit.i [
    i8 1, label %DecodeSigAlg.exit.thread.i.i.epil
    i8 8, label %DecodeSigAlg.exit.thread.i.i.epil
    i8 10, label %DecodeSigAlg.exit.thread.i.i.epil
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %DecodeSigAlg.exit.i.i.epil
  %i.au = or i32 %.0710.i.i.epil.init, 1
  br label %HashSigAlgoCoverage.exit.i

DecodeSigAlg.exit.thread.i.i.epil:                ; preds = %DecodeSigAlg.exit.i.i.epil, %DecodeSigAlg.exit.i.i.epil, %DecodeSigAlg.exit.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.av = or i32 %.0710.i.i.epil.init, 2
  br label %HashSigAlgoCoverage.exit.i

HashSigAlgoCoverage.exit.i:                       ; preds = %DecodeSigAlg.exit.i.i.epil, %bb.j, %DecodeSigAlg.exit.thread.i.i.epil, %HashSigAlgoCoverage.exit.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %HashSigAlgoCoverage.exit.i.unr-lcssa ], [ %.0710.i.i.epil.init, %DecodeSigAlg.exit.i.i.epil ], [ %i.av, %DecodeSigAlg.exit.thread.i.i.epil ], [ %i.au, %bb.j ]
  %.not27.i = icmp eq i32 %.1.i.i.lcssa, 3
  br i1 %.not27.i, label %bb.k, label %HashSigAlgoCoverage.exit.i.thread

HashSigAlgoCoverage.exit.i.thread:                ; preds = %bb.f, %HashSigAlgoCoverage.exit.i
  store <16 x i8> <i8 6, i8 3, i8 5, i8 3, i8 4, i8 3, i8 8, i8 6, i8 8, i8 11, i8 8, i8 5, i8 8, i8 10, i8 8, i8 4>, ptr %i.b, align 16, !tbaa !52
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <8 x i8> <i8 8, i8 9, i8 6, i8 1, i8 5, i8 1, i8 4, i8 1>, ptr %.16..16..16..sroa_idx, align 16, !tbaa !52
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 3, ptr %.24..24..24..sroa_idx, align 8, !tbaa !52
  %.25..25..25..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 1, ptr %.25..25..25..sroa_idx, align 1, !tbaa !52
  br label %IsAtLeastTLSv1_2.exit65

bb.k:                                             ; preds = %HashSigAlgoCoverage.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 2 %i.t, i64 %i.x, i1 false)
  br label %IsAtLeastTLSv1_2.exit65

IsAtLeastTLSv1_2.exit65:                          ; preds = %bb.k, %HashSigAlgoCoverage.exit.i.thread
  %.08197 = phi i16 [ %i.v, %bb.k ], [ 26, %HashSigAlgoCoverage.exit.i.thread ] ; 2 uses
  %i.aw = zext i16 %.08197 to i32                 ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, 7
  %i.ay = add nuw nsw i32 %i.aw, 14
  br label %GetServerCertReqHashSigAlgo.exit.thread100

GetServerCertReqHashSigAlgo.exit.thread100:       ; preds = %GetServerCertReqCertTypes.exit, %bb.d, %IsAtLeastTLSv1_2.exit65
  %.08198 = phi i16 [ %.08197, %IsAtLeastTLSv1_2.exit65 ], [ 0, %bb.d ], [ 0, %GetServerCertReqCertTypes.exit ] ; 3 uses
  %i.az = phi i32 [ %i.ay, %IsAtLeastTLSv1_2.exit65 ], [ 14, %bb.d ], [ 14, %GetServerCertReqCertTypes.exit ]
  %i.ba = phi i32 [ %i.ax, %IsAtLeastTLSv1_2.exit65 ], [ 5, %bb.d ], [ 5, %GetServerCertReqCertTypes.exit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@SendData:bb.a
  %i.dp = load i16, ptr %i.bu, align 2, !tbaa !264
  %i.dq = zext i16 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, %i.do
  %i.ds = load i8, ptr %i.bv, align 1, !tbaa !105
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dr, %i.dt
  br label %wolfssl_local_GetRecordSize.exit.thread201

wolfssl_local_GetRecordSize.exit.thread201:       ; preds = %bb.aa, %bb.ab
  %.0.i.i = phi i32 [ %i.du, %bb.ab ], [ %spec.select.i.i, %bb.aa ]
  %i.dv = add nuw nsw i32 %i.dg, %.0.i.i
  %i.dw = load i64, ptr %i.bx, align 16
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = lshr i32 %i.dx, 14
  %i.dz = and i32 %i.dy, 8
  %spec.select.i = add nuw nsw i32 %i.dv, %i.dz
  br label %wolfssl_local_GetRecordSize.exit.thread

bb.ac:                                            ; preds = %bb.y
  %i.ea = load i8, ptr %i.br, align 1, !tbaa !183
  %i.eb = icmp eq i8 %i.ea, 2
  %i.ec = icmp sgt i32 %i.de, %i.da
  %or.cond.i128 = and i1 %i.ec, %i.eb
  br i1 %or.cond.i128, label %bb.ad, label %wolfssl_local_GetRecordSize.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ed = sub nsw i32 %i.de, %i.da
  store i32 %i.ed, ptr %i.bs, align 4, !tbaa !276
  br label %wolfssl_local_GetRecordSize.exit.thread

wolfssl_local_GetRecordSize.exit:                 ; preds = %bb.x
  %i.ee = add nsw i32 %i.dd, %i.da                ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %.thread153.sink.split, label %wolfssl_local_GetRecordSize.exit.thread

wolfssl_local_GetRecordSize.exit.thread:          ; preds = %wolfssl_local_GetRecordSize.exit.thread201, %bb.ac, %bb.ad, %wolfssl_local_GetRecordSize.exit
  %.023.i147 = phi i32 [ %i.ee, %wolfssl_local_GetRecordSize.exit ], [ %i.de, %bb.ad ], [ %i.de, %bb.ac ], [ %spec.select.i, %wolfssl_local_GetRecordSize.exit.thread201 ] ; 5 uses
  %i.eg = load i32, ptr %i.by, align 8, !tbaa !144
  %i.eh = load i32, ptr %i.as, align 16, !tbaa !188 ; 3 uses
  %i.ei = load i32, ptr %i.bz, align 4, !tbaa !189 ; 3 uses
  %i.ej = add i32 %i.ei, %i.eh                    ; 3 uses
  %i.ek = sub i32 %i.eg, %i.ej
  %i.el = icmp ult i32 %i.ek, %.023.i147
  br i1 %i.el, label %bb.ae, label %wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge

wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge: ; preds = %wolfssl_local_GetRecordSize.exit.thread
  %.pre = load ptr, ptr %i.ca, align 8, !tbaa !143
  br label %CheckAvailableSize.exit

bb.ae:                                            ; preds = %wolfssl_local_GetRecordSize.exit.thread
  %i.em = xor i32 %i.ei, -1
  %.not.i.i130 = icmp ugt i32 %i.eh, %i.em
  %i.en = xor i32 %i.ej, -1
  %.not40.i.i = icmp ugt i32 %.023.i147, %i.en
  %or.cond.i131 = or i1 %.not.i.i130, %.not40.i.i
  br i1 %or.cond.i131, label %.thread153.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = add i32 %i.ej, %.023.i147               ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = tail call ptr @wolfSSL_Malloc(i64 noundef %i.ep) #27 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.thread153.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load i32, ptr %i.as, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.es, 0
  br i1 %.not42.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = load ptr, ptr %i.ca, align 8, !tbaa !143
  %i.eu = load i32, ptr %i.bz, align 4, !tbaa !189
  %i.ev = add i32 %i.eu, %i.es
  %i.ew = zext i32 %i.ev to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr align 1 %i.et, i64 %i.ew, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ex = load i8, ptr %i.cb, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not43.i.i, label %GrowOutputBuffer.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load ptr, ptr %i.ca, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.ey, null
  br i1 %.not44.i.i, label %GrowOutputBuffer.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = load i8, ptr %i.cc, align 1, !tbaa !177
  %i.fa = zext i8 %i.ez to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.fc) #27
  br label %GrowOutputBuffer.exit.i

GrowOutputBuffer.exit.i:                          ; preds = %bb.ak, %bb.aj, %bb.ai
  store i8 1, ptr %i.cb, align 4, !tbaa !176
  store i8 0, ptr %i.cc, align 1, !tbaa !177
  store ptr %i.eq, ptr %i.ca, align 8, !tbaa !143
  store i32 %i.eo, ptr %i.by, align 8, !tbaa !144
  %.pre181 = load i32, ptr %i.bz, align 4, !tbaa !189
  %.pre182 = load i32, ptr %i.as, align 16, !tbaa !188
  br label %CheckAvailableSize.exit

CheckAvailableSize.exit:                          ; preds = %wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge, %GrowOutputBuffer.exit.i
  %i.fd = phi i32 [ %i.eh, %wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge ], [ %.pre182, %GrowOutputBuffer.exit.i ]
  %i.fe = phi i32 [ %i.ei, %wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge ], [ %.pre181, %GrowOutputBuffer.exit.i ]
  %i.ff = phi ptr [ %.pre, %wolfssl_local_GetRecordSize.exit.thread.CheckAvailableSize.exit_crit_edge ], [ %i.eq, %GrowOutputBuffer.exit.i ]
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = zext i32 %i.fd to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.bx, align 16
  %i.fl = and i64 %i.fk, 65536
  %.not119 = icmp eq i64 %i.fl, 0
  br i1 %.not119, label %bb.al, label %bb.am

bb.al:                                            ; preds = %CheckAvailableSize.exit
  %i.fm = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %i.fj, i32 noundef %.023.i147, ptr noundef %i.ce, i32 noundef %i.da, i32 noundef 23, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %bb.an

bb.am:                                            ; preds = %CheckAvailableSize.exit
  %i.fn = tail call i32 @BuildTls13Message(ptr noundef nonnull %0, ptr noundef %i.fj, i32 noundef %.023.i147, ptr noundef %i.ce, i32 noundef %i.da, i32 noundef 23, i32 noundef 0, i32 noundef 0, i32 noundef 1) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.094 = phi i32 [ %i.fn, %bb.am ], [ %i.fm, %bb.al ] ; 2 uses
  %i.fo = icmp slt i32 %.094, 0
  br i1 %i.fo, label %.thread153, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = load i32, ptr %i.as, align 16, !tbaa !188
  %i.fq = add i32 %i.fp, %.094
  store i32 %i.fq, ptr %i.as, align 16, !tbaa !188
  %i.fr = tail call i32 @SendBuffered(ptr noundef nonnull %0) ; 4 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.fr, ptr %i.b, align 8, !tbaa !228
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 500
  store i32 %i.da, ptr %i.ft, align 4, !tbaa !476
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %.196, ptr %i.fu, align 16, !tbaa !475
  %i.fv = icmp eq i32 %i.fr, -308
  br i1 %i.fv, label %bb.aq, label %.thread153

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i64, ptr %i.bx, align 16
  %i.fx = and i64 %i.fw, 786432
  %or.cond125 = icmp eq i64 %i.fx, 0
  br i1 %or.cond125, label %.thread153, label %.thread153.sink.split

bb.ar:                                            ; preds = %bb.ao
  store i32 0, ptr %i.b, align 8, !tbaa !228
  %i.fy = add i32 %i.da, %.196                    ; 2 uses
  %i.fz = load i64, ptr %i.bx, align 16
  %i.ga = and i64 %i.fz, 17179869184
  %.not120 = icmp eq i64 %i.ga, 0
  br i1 %.not120, label %bb.s, label %.thread153

.thread153.sink.split:                            ; preds = %bb.af, %bb.ae, %wolfssl_local_GetRecordSize.exit, %bb.v, %CheckTLS13AEADSendLimit.exit, %bb.t, %bb.aq, %RetrySendAlert.exit, %bb.q, %bb.o, %bb.p
  %.sink = phi i32 [ -397, %bb.o ], [ %i.au, %bb.p ], [ -397, %bb.aq ], [ %i.bm, %RetrySendAlert.exit ], [ -173, %bb.q ], [ -173, %wolfssl_local_GetRecordSize.exit ], [ -173, %bb.v ], [ -192, %bb.t ], [ %i.cr, %CheckTLS13AEADSendLimit.exit ], [ -125, %bb.af ], [ -125, %bb.ae ]
  %.4.ph = phi i32 [ 0, %bb.o ], [ %i.au, %bb.p ], [ 0, %bb.aq ], [ -1, %RetrySendAlert.exit ], [ -173, %bb.q ], [ -173, %wolfssl_local_GetRecordSize.exit ], [ -1, %bb.v ], [ -1, %bb.t ], [ -1, %CheckTLS13AEADSendLimit.exit ], [ -125, %bb.af ], [ -125, %bb.ae ]
  store i32 %.sink, ptr %i.b, align 8, !tbaa !228
  br label %.thread153

.thread153:                                       ; preds = %bb.an, %bb.ar, %CheckTLS13AEADSendLimit.exit.thread, %.thread153.sink.split, %bb.aq, %bb.ap, %bb.c, %bb.a, %ssl_in_handshake.exit.thread136
  %.4 = phi i32 [ -1, %bb.a ], [ %i.fr, %bb.ap ], [ -308, %bb.aq ], [ -1, %bb.c ], [ %i.ar, %ssl_in_handshake.exit.thread136 ], [ %.4.ph, %.thread153.sink.split ], [ -320, %bb.an ], [ %i.fy, %bb.ar ], [ %i.bq, %CheckTLS13AEADSendLimit.exit.thread ]
  ret i32 %.4
}

declare i32 @wolfSSL_negotiate(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -387, 1) i32 @RetrySendAlert(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !195  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.f = load i32, ptr %i.e, align 16, !tbaa !196
  store i32 0, ptr %i.e, align 16, !tbaa !196
  store i32 0, ptr %i.b, align 4, !tbaa !195
  %i.g = tail call fastcc i32 @SendAlert_ex(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ -173, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -173, 16385) i32 @wolfSSL_GetMaxFragSize(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %. = select i1 %i.a, i32 -173, i32 16384
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define i32 @wolfssl_local_GetRecordSize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 739 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !183
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.f = load i32, ptr %i.e, align 4, !tbaa !276  ; 2 uses
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, %1
  br label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %1, i32 noundef 23, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = add nsw i32 %1, 5
  %i.k = load i8, ptr %i.b, align 1, !tbaa !183
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.n = load i16, ptr %i.m, align 2, !tbaa !254
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.q = load i8, ptr %i.p, align 2, !tbaa !265
  %.not.i = icmp eq i8 %i.q, 9
  %i.r = add nuw nsw i32 %i.o, 8
  %spec.select.i = select i1 %.not.i, i32 %i.o, i32 %i.r
  br label %cipherExtraData.exit

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.t = load i16, ptr %i.s, align 2, !tbaa !274
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.w = load i16, ptr %i.v, align 2, !tbaa !264
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !105
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.y, %i.ab
  br label %cipherExtraData.exit

cipherExtraData.exit:                             ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ac, %bb.i ], [ %spec.select.i, %bb.h ]
  %i.ad = add nsw i32 %i.j, %.0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 14
  %i.ai = and i32 %i.ah, 8
  %spec.select = add nsw i32 %i.ad, %i.ai
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.b, align 1, !tbaa !183
  %i.ak = icmp eq i8 %i.aj, 2
  %i.al = icmp sgt i32 %i.h, %1
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = sub nsw i32 %i.h, %1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 %i.am, ptr %i.an, align 4, !tbaa !276
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, 131072
  %.not28 = icmp eq i64 %i.aq, 0
  %spec.select31.v = select i1 %.not28, i32 5, i32 13
  %spec.select31 = add nsw i32 %spec.select31.v, %1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %cipherExtraData.exit, %bb.j, %bb.k, %bb.a, %bb.e
  %.023 = phi i32 [ -173, %bb.a ], [ %i.g, %bb.e ], [ %i.h, %bb.j ], [ %spec.select31, %bb.l ], [ %i.h, %bb.k ], [ %spec.select, %cipherExtraData.exit ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define i32 @ReceiveData(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 6 uses
  %i.b = icmp ugt i64 %2, 2147483647
  br i1 %i.b, label %ShrinkInputBuffer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  switch i32 %i.c, label %ShrinkInputBuffer.exit [
    i32 -323, label %.thread
    i32 2, label %.thread
    i32 -327, label %bb.c
    i32 0, label %bb.c
  ]

.thread:                                          ; preds = %bb.b, %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.b, %.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1063
  %i.e = load i8, ptr %i.d, align 1, !tbaa !227
  %.not.i = icmp eq i8 %i.e, 16
  br i1 %.not.i, label %bb.d, label %ssl_in_handshake.exit.thread68

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 3
  switch i32 %i.j, label %ssl_in_handshake.exit.thread [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = and i16 %i.l, 255
  %i.n = icmp ne i16 %i.m, 3                      ; 2 uses
  %i.o = icmp ult i16 %i.l, 1024
  %.not30.i = or i1 %i.o, %i.n
  br i1 %.not30.i, label %bb.f, label %ssl_in_handshake.exit

bb.f:                                             ; preds = %bb.e
  %i.p = icmp ult i16 %i.l, 768
  %or.cond.i.not = or i1 %i.p, %i.n
  br i1 %or.cond.i.not, label %ssl_in_handshake.exit.thread, label %IsAtLeastTLSv1_2.exit.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1067
  %i.r = load i8, ptr %i.q, align 1, !tbaa !262
  %i.s = icmp ult i8 %i.r, 16
  br i1 %i.s, label %ssl_in_handshake.exit.thread68, label %ssl_in_handshake.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.u = load i16, ptr %i.t, align 2              ; 3 uses
  %i.v = and i16 %i.u, 255
  %i.w = icmp ne i16 %i.v, 3                      ; 2 uses
  %i.x = icmp ult i16 %i.u, 1024
  %.not27.i = or i1 %i.x, %i.w
  br i1 %.not27.i, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1066
  %i.z = load i8, ptr %i.y, align 2, !tbaa !263
  %i.aa = icmp ult i8 %i.z, 9
  br i1 %i.aa, label %ssl_in_handshake.exit.thread68, label %ssl_in_handshake.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i16 %i.u, 768
  %or.cond31.i.not = or i1 %i.ab, %i.w
  br i1 %or.cond31.i.not, label %ssl_in_handshake.exit.thread, label %IsAtLeastTLSv1_2.exit20.i

IsAtLeastTLSv1_2.exit20.i:                        ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1066
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !263
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %ssl_in_handshake.exit.thread68, label %ssl_in_handshake.exit.thread

ssl_in_handshake.exit:                            ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1067
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !262
  %i.ah = icmp ult i8 %i.ag, 15
  br i1 %i.ah, label %ssl_in_handshake.exit.thread68, label %ssl_in_handshake.exit.thread

ssl_in_handshake.exit.thread68:                   ; preds = %IsAtLeastTLSv1_2.exit20.i, %.split, %IsAtLeastTLSv1_2.exit.i, %bb.c, %ssl_in_handshake.exit
  %i.ai = tail call i32 @wolfSSL_negotiate(ptr noundef nonnull %0) #27 ; 2 uses
  %.not57 = icmp eq i32 %i.ai, 1
  br i1 %.not57, label %ssl_in_handshake.exit.thread, label %ShrinkInputBuffer.exit

end_hunk_1
