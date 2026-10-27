Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DoClientKeyExchange:bb.a
  %i.ij = shl nuw i64 %i.ii, 56
  %i.ik = and i64 %.5.extract.shift449, %i.ij
  %.sroa.0.4.insert.mask326.masked454 = and i64 %.sroa.0.3433, -72057594037927936
  %.sroa.0.7.insert.shift349 = xor i64 %i.ik, %.sroa.0.4.insert.mask326.masked454
  %i.il = or disjoint i64 %i.ih, %.sroa.0.7.insert.shift349
  %.sroa.0.7.insert.insert351 = or disjoint i64 %i.il, %i.ht ; 2 uses
  %i.im = inttoptr i64 %.sroa.0.7.insert.insert351 to ptr ; 2 uses
  %.not182 = icmp eq i64 %.sroa.0.7.insert.insert351, 0
  br i1 %.not182, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bd, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 2, %bb.bd ] ; 4 uses
  %.0..0..0..0.6 = load volatile i8, ptr %i.e, align 1, !tbaa !52 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv
  %i.io = load i8, ptr %i.in, align 1, !tbaa !52
  %i.ip = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !137
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !52
  %i.iu = xor i8 %.0..0..0..0.6, -1
  %i.iv = and i8 %i.it, %i.iu
  %i.iw = and i8 %i.io, %.0..0..0..0.6
  %i.ix = or disjoint i8 %i.iv, %i.iw
  store i8 %i.ix, ptr %i.is, align 1, !tbaa !52
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.0..0..0..0.6.1 = load volatile i8, ptr %i.e, align 1, !tbaa !52 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv.next
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !52
  %i.ja = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !137
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %indvars.iv.next ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !52
  %i.jf = xor i8 %.0..0..0..0.6.1, -1
  %i.jg = and i8 %i.je, %i.jf
  %i.jh = and i8 %i.iz, %.0..0..0..0.6.1
  %i.ji = or disjoint i8 %i.jg, %i.jh
  store i8 %i.ji, ptr %i.jd, align 1, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 48
  br i1 %exitcond.not.1, label %.loopexit, label %.preheader, !llvm.loop !400

.loopexit:                                        ; preds = %.preheader, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.jj = add i32 %.sroa.39.2398, %.sroa.47.5400
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.jk = and i32 %.sroa.75.4434, 65535
  %i.jl = add i32 %i.jk, %.sroa.47.5400
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %.loopexit, %bb.bf
  %.sroa.47.8.ph = phi i32 [ %i.jl, %bb.bf ], [ %i.jj, %bb.be ], [ %i.gs, %.loopexit ]
  store i8 4, ptr %i.f, align 4, !tbaa !226
  %i.jm = call i32 @MakeMasterSecret(ptr noundef nonnull %0) #27 ; 2 uses
  %.not184 = icmp eq i32 %i.jm, 0
  br i1 %.not184, label %bb.bh, label %BuildCertHashes.exit

bb.bh:                                            ; preds = %bb.bg
  store i8 5, ptr %i.f, align 4, !tbaa !226
  store i32 %.sroa.47.8.ph, ptr %2, align 4, !tbaa !56
  store i8 13, ptr %i.h, align 2, !tbaa !145
  %i.jn = load i64, ptr %i.l, align 8             ; 2 uses
  %i.jo = and i64 %i.jn, 64
  %.not185 = icmp eq i64 %i.jo, 0
  br i1 %.not185, label %BuildCertHashes.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 16, !tbaa !131 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 144
  %i.js = and i64 %i.jn, 16384
  %.not.i203 = icmp eq i64 %i.js, 0
  br i1 %.not.i203, label %IsAtLeastTLSv1_2.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !49
  %i.jv = icmp eq i8 %i.ju, 3
  br i1 %i.jv, label %bb.bk, label %IsAtLeastTLSv1_2.exit.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !50
  %i.jy = icmp ugt i8 %i.jx, 2
  br i1 %i.jy, label %IsAtLeastTLSv1_2.exit.i, label %IsAtLeastTLSv1_2.exit.thread.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.bk
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 288
  %i.ka = call i32 @wc_Sha256GetHash(ptr noundef nonnull %i.jz, ptr noundef nonnull %i.jr) #27 ; 2 uses
  %.not20.i204 = icmp eq i32 %i.ka, 0
  br i1 %.not20.i204, label %bb.bl, label %BuildCertHashes.exit

bb.bl:                                            ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.kb = load ptr, ptr %i.jp, align 16, !tbaa !131
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 416
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 176
  %i.ke = call i32 @wc_Sha384GetHash(ptr noundef nonnull %i.kc, ptr noundef nonnull %i.kd) #27 ; 2 uses
  %.not21.i = icmp eq i32 %i.ke, 0
  br i1 %.not21.i, label %bb.bm, label %BuildCertHashes.exit

bb.bm:                                            ; preds = %bb.bl
  %i.kf = load ptr, ptr %i.jp, align 16, !tbaa !131
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 640
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jq, i64 224
  %i.ki = call i32 @wc_Sha512GetHash(ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.ki, 0
  br i1 %.not22.i, label %IsAtLeastTLSv1_2.exit.thread.i, label %BuildCertHashes.exit

IsAtLeastTLSv1_2.exit.thread.i:                   ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bi
  br label %BuildCertHashes.exit

BuildCertHashes.exit:                             ; preds = %bb.d, %bb.p, %bb.ba, %.thread392, %bb.an, %bb.am, %bb.al, %bb.ab, %bb.z, %bb.ad, %bb.ah, %bb.af, %.thread48.i, %bb.v, %bb.u, %bb.x, %bb.t, %bb.i, %IsAtLeastTLSv1_2.exit.thread.i, %bb.bm, %bb.bl, %IsAtLeastTLSv1_2.exit.i, %bb.bc, %bb.ar, %.thread360, %bb.h, %bb.f, %bb.bh, %bb.bg, %DhAgree.exit, %bb.ao, %bb.b
  %.11 = phi i32 [ -125, %bb.f ], [ -373, %bb.b ], [ -374, %.thread392 ], [ -345, %bb.d ], [ %i.eb, %bb.ao ], [ %.7, %DhAgree.exit ], [ -328, %bb.al ], [ %i.jm, %bb.bg ], [ -374, %bb.bc ], [ 0, %bb.bh ], [ -173, %bb.ar ], [ -318, %bb.p ], [ -374, %bb.i ], [ -353, %bb.x ], [ -374, %bb.h ], [ %.2141.ph, %.thread360 ], [ %i.ki, %bb.bm ], [ 0, %IsAtLeastTLSv1_2.exit.thread.i ], [ %i.ka, %IsAtLeastTLSv1_2.exit.i ], [ %i.ke, %bb.bl ], [ %i.bj, %bb.t ], [ %i.ch, %bb.ab ], [ -125, %bb.z ], [ %i.ch, %bb.ad ], [ -352, %bb.ah ], [ %i.cq, %bb.af ], [ -353, %.thread48.i ], [ -328, %bb.v ], [ -328, %bb.u ], [ %i.dr, %bb.an ], [ -328, %bb.am ], [ -342, %bb.ba ]
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !134 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !137 ; 4 uses
  %.not186 = icmp eq ptr %i.km, null
  br i1 %.not186, label %ForceZero.exit, label %bb.bn

bb.bn:                                            ; preds = %BuildCertHashes.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !136 ; 2 uses
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  fence seq_cst
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = and i64 %i.kq, 7
  %.not19.i = icmp eq i64 %i.kr, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bn
  %i.ks = icmp eq i32 %i.ko, 0
  br i1 %i.ks, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.bn
  %.013.lcssa.i = phi i64 [ %i.kp, %bb.bn ], [ %i.ky, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.km, %bb.bn ], [ %i.kx, %.lr.ph ] ; 3 uses
  %i.kt = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.kt, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.ku = and i64 %.013.lcssa.i, -8               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.ku, i1 false), !tbaa !80
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.ku
  %i.kv = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.kw = icmp eq i64 %i.ky, 0
  br i1 %i.kw, label %ForceZero.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i485 = phi i64 [ %i.ky, %.lr.ph.i ], [ %i.kp, %.lr.ph.i.preheader ]
  %.01221.i484 = phi ptr [ %i.kx, %.lr.ph.i ], [ %i.km, %.lr.ph.i.preheader ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.01221.i484, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i484, align 1, !tbaa !52
  %i.ky = add nsw i64 %.01320.i485, -1            ; 3 uses
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = and i64 %i.kz, 7
  %.not.i205 = icmp eq i64 %i.la, 0
  br i1 %.not.i205, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.kv, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %BuildCertHashes.exit
  %i.lb = load ptr, ptr %i.kj, align 8, !tbaa !134
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i32 0, ptr %i.lc, align 8, !tbaa !136
  call void @FreeKeyExchange(ptr noundef %0)
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -425, 1) i32 @DoCertificateVerify(ptr noundef initializes((1059, 1061), (1068, 1069)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  %4 = alloca [1 x %struct.DcvArgs], align 16     ; 17 uses
  %i.c = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1059 ; 6 uses
  store i8 2, ptr %i.e, align 1, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 9 uses
  store i8 0, ptr %i.f, align 4, !tbaa !241
  %i.g = load i32, ptr %2, align 4, !tbaa !56     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 6 uses
  store i32 %i.g, ptr %i.h, align 4, !tbaa !403
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.g, ptr %i.i, align 8, !tbaa !404
  store i8 1, ptr %i.d, align 4, !tbaa !226
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !49
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.n = load i8, ptr %i.m, align 1, !tbaa !50
  %i.o = icmp ugt i8 %i.n, 2
  br i1 %i.o, label %IsAtLeastTLSv1_2.exit, label %bb.t

IsAtLeastTLSv1_2.exit:                            ; preds = %bb.b
  %i.p = icmp ult i32 %3, 2
  br i1 %i.p, label %.thread147, label %bb.c

bb.c:                                             ; preds = %IsAtLeastTLSv1_2.exit
  %i.q = zext i32 %i.g to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 16, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !95  ; 3 uses
  %i.ab = icmp ugt i16 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i, label %HashSigAlgoCoverage.exit.i.thread.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.ac = zext i16 %i.aa to i64                   ; 2 uses
  %i.ad = add nsw i64 %i.ac, -2                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  %i.af = add nuw i64 %i.ae, 1                    ; 2 uses
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.af, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 3 uses
  %.0710.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.1.i.i.i.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52
  %cond.i.i.i.i = icmp eq i8 %i.ai, 8
  br i1 %cond.i.i.i.i, label %DecodeSigAlg.exit.thread.i.i.i, label %DecodeSigAlg.exit.i.i.i

DecodeSigAlg.exit.i.i.i:                          ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !52
  switch i8 %i.ak, label %.lr.ph.i.i.i.1 [
    i8 1, label %DecodeSigAlg.exit.thread.i.i.i
    i8 8, label %DecodeSigAlg.exit.thread.i.i.i
    i8 10, label %DecodeSigAlg.exit.thread.i.i.i
    i8 3, label %bb.f
  ]

DecodeSigAlg.exit.thread.i.i.i:                   ; preds = %DecodeSigAlg.exit.i.i.i, %DecodeSigAlg.exit.i.i.i, %DecodeSigAlg.exit.i.i.i, %.lr.ph.i.i.i
  %i.al = or i32 %.0710.i.i.i, 2
  br label %.lr.ph.i.i.i.1

bb.f:                                             ; preds = %DecodeSigAlg.exit.i.i.i
  %i.am = or i32 %.0710.i.i.i, 1
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %DecodeSigAlg.exit.thread.i.i.i, %DecodeSigAlg.exit.i.i.i
  %.1.i.i.i = phi i32 [ %.0710.i.i.i, %DecodeSigAlg.exit.i.i.i ], [ %i.al, %DecodeSigAlg.exit.thread.i.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !52
  %cond.i.i.i.i.1 = icmp eq i8 %i.ap, 8
  br i1 %cond.i.i.i.i.1, label %DecodeSigAlg.exit.thread.i.i.i.1, label %DecodeSigAlg.exit.i.i.i.1

DecodeSigAlg.exit.i.i.i.1:                        ; preds = %.lr.ph.i.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52
  switch i8 %i.ar, label %bb.h [
    i8 1, label %DecodeSigAlg.exit.thread.i.i.i.1
    i8 8, label %DecodeSigAlg.exit.thread.i.i.i.1
    i8 10, label %DecodeSigAlg.exit.thread.i.i.i.1
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %DecodeSigAlg.exit.i.i.i.1
  %i.as = or i32 %.1.i.i.i, 1
  br label %bb.h

DecodeSigAlg.exit.thread.i.i.i.1:                 ; preds = %DecodeSigAlg.exit.i.i.i.1, %DecodeSigAlg.exit.i.i.i.1, %DecodeSigAlg.exit.i.i.i.1, %.lr.ph.i.i.i.1
  %i.at = or i32 %.1.i.i.i, 2
  br label %bb.h

bb.h:                                             ; preds = %DecodeSigAlg.exit.thread.i.i.i.1, %bb.g, %DecodeSigAlg.exit.i.i.i.1
  %.1.i.i.i.1 = phi i32 [ %.1.i.i.i, %DecodeSigAlg.exit.i.i.i.1 ], [ %i.at, %DecodeSigAlg.exit.thread.i.i.i.1 ], [ %i.as, %bb.g ] ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %HashSigAlgoCoverage.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !2

HashSigAlgoCoverage.exit.i.i.unr-lcssa:           ; preds = %bb.h
  %i.au = and i64 %i.ad, 2
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.epil.preheader, label %HashSigAlgoCoverage.exit.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %HashSigAlgoCoverage.exit.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %HashSigAlgoCoverage.exit.i.i.unr-lcssa ]
  %.0710.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1.i.i.i.1, %HashSigAlgoCoverage.exit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod175 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !52
  %cond.i.i.i.i.epil = icmp eq i8 %i.aw, 8
  br i1 %cond.i.i.i.i.epil, label %DecodeSigAlg.exit.thread.i.i.i.epil, label %DecodeSigAlg.exit.i.i.i.epil

DecodeSigAlg.exit.i.i.i.epil:                     ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52
  switch i8 %i.ay, label %HashSigAlgoCoverage.exit.i.i [
    i8 1, label %DecodeSigAlg.exit.thread.i.i.i.epil
    i8 8, label %DecodeSigAlg.exit.thread.i.i.i.epil
    i8 10, label %DecodeSigAlg.exit.thread.i.i.i.epil
    i8 3, label %bb.i
  ]

bb.i:                                             ; preds = %DecodeSigAlg.exit.i.i.i.epil
  %i.az = or i32 %.0710.i.i.i.epil.init, 1
  br label %HashSigAlgoCoverage.exit.i.i

DecodeSigAlg.exit.thread.i.i.i.epil:              ; preds = %DecodeSigAlg.exit.i.i.i.epil, %DecodeSigAlg.exit.i.i.i.epil, %DecodeSigAlg.exit.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %i.ba = or i32 %.0710.i.i.i.epil.init, 2
  br label %HashSigAlgoCoverage.exit.i.i

HashSigAlgoCoverage.exit.i.i:                     ; preds = %DecodeSigAlg.exit.i.i.i.epil, %bb.i, %DecodeSigAlg.exit.thread.i.i.i.epil, %HashSigAlgoCoverage.exit.i.i.unr-lcssa
  %.1.i.i.i.lcssa = phi i32 [ %.1.i.i.i.1, %HashSigAlgoCoverage.exit.i.i.unr-lcssa ], [ %.0710.i.i.i.epil.init, %DecodeSigAlg.exit.i.i.i.epil ], [ %i.ba, %DecodeSigAlg.exit.thread.i.i.i.epil ], [ %i.az, %bb.i ]
  %.not27.i.i = icmp eq i32 %.1.i.i.i.lcssa, 3
  br i1 %.not27.i.i, label %bb.j, label %HashSigAlgoCoverage.exit.i.thread.i

HashSigAlgoCoverage.exit.i.thread.i:              ; preds = %HashSigAlgoCoverage.exit.i.i, %bb.e
  store <16 x i8> <i8 6, i8 3, i8 5, i8 3, i8 4, i8 3, i8 8, i8 6, i8 8, i8 11, i8 8, i8 5, i8 8, i8 10, i8 8, i8 4>, ptr %i.b, align 16, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <8 x i8> <i8 8, i8 9, i8 6, i8 1, i8 5, i8 1, i8 4, i8 1>, ptr %i.bb, align 16, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 3, ptr %i.bc, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 1, ptr %i.bd, align 1, !tbaa !52
  br label %.lr.ph.preheader.i

bb.j:                                             ; preds = %HashSigAlgoCoverage.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 2 %i.y, i64 %i.ac, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %HashSigAlgoCoverage.exit.i.thread.i
  %storemerge.in.sroa.speculated.i.i = phi i16 [ %i.aa, %bb.j ], [ 26, %HashSigAlgoCoverage.exit.i.thread.i ]
  br label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.be = add i16 %.08.i, 2                       ; 2 uses
  %i.bf = or disjoint i16 %i.be, 1
  %i.bg = icmp ult i16 %i.bf, %storemerge.in.sroa.speculated.i.i
  br i1 %i.bg, label %.lr.ph.i, label %InServerCertReqHashSigAlgo.exit.thread, !llvm.loop !401

InServerCertReqHashSigAlgo.exit.thread:           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread147

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.08.i = phi i16 [ %i.be, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bh = zext i16 %.08.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = load i16, ptr %i.r, align 1
  %i.bl = icmp ne i16 %i.bj, %i.bk
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store i8 -1, ptr %i.f, align 4, !tbaa !52
  %i.bo = load i8, ptr %i.r, align 1, !tbaa !52   ; 3 uses
  %cond.i = icmp eq i8 %i.bo, 8
  br i1 %cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !52
  %i.br = add i8 %i.bq, -9
  %or.cond.i = icmp ult i8 %i.br, 3
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 10, ptr %i.f, align 4, !tbaa !52
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !52
  %i.bt = add i8 %i.bs, -5                        ; 2 uses
  store i8 %i.bt, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.o:                                             ; preds = %bb.m
  store i8 8, ptr %i.f, align 4, !tbaa !52
  %i.bu = load i8, ptr %i.bp, align 1, !tbaa !52  ; 2 uses
  store i8 %i.bu, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.p:                                             ; preds = %bb.l
  store i8 %i.bo, ptr %i.e, align 1, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !52  ; 2 uses
  store i8 %i.bw, ptr %i.f, align 4, !tbaa !52
  br label %DecodeSigAlg.exit

DecodeSigAlg.exit:                                ; preds = %bb.n, %bb.o, %bb.p
  %5 = phi i8 [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bo, %bb.p ] ; 3 uses
  %6 = phi i8 [ 10, %bb.n ], [ 8, %bb.o ], [ %i.bw, %bb.p ] ; 4 uses
  %i.bx = add i32 %i.g, 2                         ; 3 uses
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !403
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !171 ; 3 uses
  %.not111 = icmp eq i8 %i.bz, 0
  br i1 %.not111, label %bb.r, label %bb.q

bb.q:                                             ; preds = %DecodeSigAlg.exit
  switch i8 %6, label %.thread147 [
    i8 1, label %bb.s
    i8 8, label %bb.s
  ]

bb.r:                                             ; preds = %DecodeSigAlg.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !179
  %.not112 = icmp ne i8 %i.cb, 0
  %.not113 = icmp eq i8 %6, 3
  %or.cond168 = select i1 %.not112, i1 %.not113, i1 false
  br i1 %or.cond168, label %bb.s, label %.thread147

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %switch.tableidx = add i8 %5, -4                ; 3 uses
  %i.cc = icmp ult i8 %switch.tableidx, 3
  br i1 %i.cc, label %switch.lookup, label %SetDigest.exit

switch.lookup:                                    ; preds = %bb.s
  %i.cd = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SendCertificateVerify.19, i64 %i.cd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ce = shl nuw nsw i8 %switch.tableidx, 4
  %narrow = add nuw nsw i8 %i.ce, 32
  %switch.offset = zext nneg i8 %narrow to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = or i64 %i.cg, 1099511627776
  store i64 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cj = load ptr, ptr %i.ci, align 16, !tbaa !131
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %switch.ext
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.ck, ptr %i.cl, align 16, !tbaa !159
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %switch.offset, ptr %i.cm, align 8, !tbaa !160
  br label %SetDigest.exit

bb.t:                                             ; preds = %bb.a, %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !171
  %.not108 = icmp eq i8 %i.co, 0
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

bb.v:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !179
  %.not109 = icmp eq i8 %i.cq, 0
  br i1 %.not109, label %.thread147, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 3, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

SetDigest.exit:                                   ; preds = %bb.s, %switch.lookup, %bb.u, %bb.w
  %i.cr = phi i8 [ %5, %switch.lookup ], [ %5, %bb.s ], [ 2, %bb.u ], [ 2, %bb.w ] ; 2 uses
  %i.cs = phi i8 [ %6, %switch.lookup ], [ %6, %bb.s ], [ 1, %bb.u ], [ 3, %bb.w ]
  %i.ct = phi i8 [ %i.bz, %switch.lookup ], [ %i.bz, %bb.s ], [ 1, %bb.u ], [ 0, %bb.w ]
  %i.cu = phi i32 [ %i.bx, %switch.lookup ], [ %i.bx, %bb.s ], [ %i.g, %bb.u ], [ %i.g, %bb.w ] ; 3 uses
  %reass.sub = sub i32 %i.cu, %i.g
  %i.cv = add i32 %reass.sub, 2
  %i.cw = icmp ugt i32 %i.cv, %3
  br i1 %i.cw, label %.thread147, label %bb.x

bb.x:                                             ; preds = %SetDigest.exit
  %i.cx = zext i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.val = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = getelementptr i8, ptr %i.cy, i64 1
  %.val130 = load i8, ptr %i.da, align 1, !tbaa !52
  %i.db = zext i8 %.val to i16
  %i.dc = shl nuw i16 %i.db, 8
  %i.dd = zext i8 %.val130 to i16
  %i.de = or disjoint i16 %i.dc, %i.dd            ; 3 uses
  store i16 %i.de, ptr %i.cz, align 4, !tbaa !90
  %i.df = add i32 %i.cu, 2                        ; 3 uses
  store i32 %i.df, ptr %i.h, align 4, !tbaa !403
  %i.dg = sub i32 %i.df, %i.g
  %i.dh = zext i16 %i.de to i32                   ; 3 uses
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = icmp ugt i32 %i.di, %3
  %i.dk = icmp ugt i16 %i.de, 512
  %or.cond = or i1 %i.dk, %i.dj
  br i1 %or.cond, label %.thread147, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 2, ptr %i.d, align 4, !tbaa !226
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !232 ; 3 uses
  %.not116 = icmp eq ptr %i.dm, null
  %.not117 = icmp eq i8 %i.ct, 0
  %or.cond169 = or i1 %.not116, %.not117
  br i1 %or.cond169, label %RsaVerify.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = zext i32 %i.df to i64
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn ; 2 uses
  %i.dp = zext i8 %i.cr to i32                    ; 2 uses
  %i.dq = and i8 %i.cs, -3
  %or.cond.i131 = icmp eq i8 %i.dq, 8
  br i1 %or.cond.i131, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = add i8 %i.cr, -4
  %i.ds = icmp ult i8 %i.dr, 3
  br i1 %i.ds, label %switch.lookup.i, label %RsaVerify.exit.thread

switch.lookup.i:                                  ; preds = %bb.aa
  %switch.offset.i = add nuw nsw i32 %i.dp, 2
  %switch.offset28.i = add nsw i32 %i.dp, -3
  %i.dt = call i32 @wc_RsaPSS_VerifyInline(ptr noundef %i.do, i32 noundef %i.dh, ptr noundef nonnull %4, i32 noundef %switch.offset.i, i32 noundef %switch.offset28.i, ptr noundef nonnull %i.dm) #27
  br label %RsaVerify.exit

bb.ab:                                            ; preds = %bb.z
  %i.du = call i32 @wc_RsaSSL_VerifyInline(ptr noundef %i.do, i32 noundef %i.dh, ptr noundef nonnull %4, ptr noundef nonnull %i.dm) #27
  br label %RsaVerify.exit

RsaVerify.exit:                                   ; preds = %switch.lookup.i, %bb.ab
  %.118.i = phi i32 [ %i.du, %bb.ab ], [ %i.dt, %switch.lookup.i ] ; 4 uses
  %i.dv = icmp sgt i32 %.118.i, -1
  br i1 %i.dv, label %bb.ac, label %RsaVerify.exit.thread

bb.ac:                                            ; preds = %RsaVerify.exit
  %i.dw = load i8, ptr %i.f, align 4, !tbaa !241
  %i.dx = icmp eq i8 %i.dw, 1
  br i1 %i.dx, label %RsaVerify.exit.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.118.i, ptr %i.dy, align 16, !tbaa !405
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !160
  br label %RsaVerify.exit.thread.sink.split

RsaVerify.exit.thread.sink.split:                 ; preds = %bb.ac, %bb.ad
  %.118.i.sink = phi i32 [ %i.ea, %bb.ad ], [ %.118.i, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.118.i.sink, ptr %i.eb, align 8, !tbaa !406
  br label %RsaVerify.exit.thread

RsaVerify.exit.thread:                            ; preds = %RsaVerify.exit.thread.sink.split, %bb.aa, %RsaVerify.exit, %bb.y
  %.0 = phi i32 [ 0, %bb.y ], [ %.118.i, %RsaVerify.exit ], [ -173, %bb.aa ], [ 0, %RsaVerify.exit.thread.sink.split ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !179
  %.not118 = icmp eq i8 %i.ed, 0
  br i1 %.not118, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %RsaVerify.exit.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !160 ; 2 uses
  %i.eg = add i32 %i.ef, -65
  %or.cond.i132 = icmp ult i32 %i.eg, -45
  br i1 %or.cond.i132, label %EccVerify.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ei = load ptr, ptr %i.eh, align 16, !tbaa !233
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !159
  %i.el = load i16, ptr %i.cz, align 4, !tbaa !407
  %i.em = zext i16 %i.el to i32
  %i.en = load i32, ptr %i.h, align 4, !tbaa !403
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 2 uses
  %i.er = call i32 @wc_ecc_verify_hash(ptr noundef %i.ep, i32 noundef %i.em, ptr noundef %i.ek, i32 noundef %i.ef, ptr noundef nonnull %i.eq, ptr noundef %i.ei) #27 ; 2 uses
  %.not.i = icmp eq i32 %i.er, 0
  br i1 %.not.i, label %bb.ag, label %EccVerify.exit

bb.ag:                                            ; preds = %bb.af
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !108
  %i.et = icmp eq i32 %i.es, 0
  %spec.select.i = select i1 %i.et, i32 -330, i32 0
  br label %EccVerify.exit

EccVerify.exit:                                   ; preds = %bb.ae, %bb.af, %bb.ag
  %.013.i = phi i32 [ -279, %bb.ae ], [ %spec.select.i, %bb.ag ], [ %i.er, %bb.af ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 16           ; 2 uses
  %i.ew = and i64 %i.ev, 1073741824
  %i.ex = icmp ne i64 %i.ew, 0
  %i.ey = icmp eq i32 %.013.i, 0
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  %i.fa = select i1 %i.ez, i64 562949953421312, i64 0
  %i.fb = and i64 %i.ev, -562949953421313
  %i.fc = or disjoint i64 %i.fa, %i.fb
end_hunk_0
