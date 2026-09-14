Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DoClientKeyExchange:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.jr = add i32 %.sroa.39.2398, %.sroa.47.5400
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.js = and i32 %.sroa.75.4434, 65535
  %i.jt = add i32 %i.js, %.sroa.47.5400
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %.loopexit, %bb.bf
  %.sroa.47.8.ph = phi i32 [ %i.jt, %bb.bf ], [ %i.jr, %bb.be ], [ %i.gs, %.loopexit ]
  store i8 4, ptr %i.f, align 4, !tbaa !226
  %i.ju = call i32 @MakeMasterSecret(ptr noundef nonnull %0) #27 ; 2 uses
  %.not184 = icmp eq i32 %i.ju, 0
  br i1 %.not184, label %bb.bh, label %BuildCertHashes.exit

bb.bh:                                            ; preds = %bb.bg
  store i8 5, ptr %i.f, align 4, !tbaa !226
  store i32 %.sroa.47.8.ph, ptr %2, align 4, !tbaa !56
  store i8 13, ptr %i.h, align 2, !tbaa !145
  %i.jv = load i64, ptr %i.l, align 8             ; 2 uses
  %i.jw = and i64 %i.jv, 64
  %.not185 = icmp eq i64 %i.jw, 0
  br i1 %.not185, label %BuildCertHashes.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 16, !tbaa !131 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %i.ka = and i64 %i.jv, 16384
  %.not.i203 = icmp eq i64 %i.ka, 0
  br i1 %.not.i203, label %IsAtLeastTLSv1_2.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !49
  %i.kd = icmp eq i8 %i.kc, 3
  br i1 %i.kd, label %bb.bk, label %IsAtLeastTLSv1_2.exit.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !50
  %i.kg = icmp ugt i8 %i.kf, 2
  br i1 %i.kg, label %IsAtLeastTLSv1_2.exit.i, label %IsAtLeastTLSv1_2.exit.thread.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.bk
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 288
  %i.ki = call i32 @wc_Sha256GetHash(ptr noundef nonnull %i.kh, ptr noundef nonnull %i.jz) #27 ; 2 uses
  %.not20.i204 = icmp eq i32 %i.ki, 0
  br i1 %.not20.i204, label %bb.bl, label %BuildCertHashes.exit

bb.bl:                                            ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.kj = load ptr, ptr %i.jx, align 16, !tbaa !131
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 416
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jy, i64 176
  %i.km = call i32 @wc_Sha384GetHash(ptr noundef nonnull %i.kk, ptr noundef nonnull %i.kl) #27 ; 2 uses
  %.not21.i = icmp eq i32 %i.km, 0
  br i1 %.not21.i, label %bb.bm, label %BuildCertHashes.exit

bb.bm:                                            ; preds = %bb.bl
  %i.kn = load ptr, ptr %i.jx, align 16, !tbaa !131
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 640
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 224
  %i.kq = call i32 @wc_Sha512GetHash(ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kp) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.kq, 0
  br i1 %.not22.i, label %IsAtLeastTLSv1_2.exit.thread.i, label %BuildCertHashes.exit

IsAtLeastTLSv1_2.exit.thread.i:                   ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bi
  br label %BuildCertHashes.exit

BuildCertHashes.exit:                             ; preds = %bb.d, %bb.p, %bb.ba, %.thread392, %bb.an, %bb.am, %bb.al, %bb.ab, %bb.z, %bb.ad, %bb.ah, %bb.af, %.thread48.i, %bb.v, %bb.u, %bb.x, %bb.t, %bb.i, %IsAtLeastTLSv1_2.exit.thread.i, %bb.bm, %bb.bl, %IsAtLeastTLSv1_2.exit.i, %bb.bc, %bb.ar, %.thread360, %bb.h, %bb.f, %bb.bh, %bb.bg, %DhAgree.exit, %bb.ao, %bb.b
  %.11 = phi i32 [ -125, %bb.f ], [ -373, %bb.b ], [ -374, %.thread392 ], [ -345, %bb.d ], [ %i.eb, %bb.ao ], [ %.7, %DhAgree.exit ], [ -328, %bb.al ], [ %i.ju, %bb.bg ], [ -374, %bb.bc ], [ 0, %bb.bh ], [ -173, %bb.ar ], [ -318, %bb.p ], [ -374, %bb.i ], [ -353, %bb.x ], [ -374, %bb.h ], [ %.2141.ph, %.thread360 ], [ %i.kq, %bb.bm ], [ 0, %IsAtLeastTLSv1_2.exit.thread.i ], [ %i.ki, %IsAtLeastTLSv1_2.exit.i ], [ %i.km, %bb.bl ], [ %i.bj, %bb.t ], [ %i.ch, %bb.ab ], [ -125, %bb.z ], [ %i.ch, %bb.ad ], [ -352, %bb.ah ], [ %i.cq, %bb.af ], [ -353, %.thread48.i ], [ -328, %bb.v ], [ -328, %bb.u ], [ %i.dr, %bb.an ], [ -328, %bb.am ], [ -342, %bb.ba ]
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !134 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !137 ; 4 uses
  %.not186 = icmp eq ptr %i.ku, null
  br i1 %.not186, label %ForceZero.exit, label %bb.bn

bb.bn:                                            ; preds = %BuildCertHashes.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !136 ; 2 uses
  %i.kx = zext i32 %i.kw to i64                   ; 2 uses
  fence seq_cst
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = and i64 %i.ky, 7
  %.not19.i = icmp eq i64 %i.kz, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bn
  %i.la = icmp eq i32 %i.kw, 0
  br i1 %i.la, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.bn
  %.013.lcssa.i = phi i64 [ %i.kx, %bb.bn ], [ %i.lg, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.ku, %bb.bn ], [ %i.lf, %.lr.ph ] ; 3 uses
  %i.lb = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.lb, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.lc = and i64 %.013.lcssa.i, -8               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.lc, i1 false), !tbaa !80
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.lc
  %i.ld = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.le = icmp eq i64 %i.lg, 0
  br i1 %i.le, label %ForceZero.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i485 = phi i64 [ %i.lg, %.lr.ph.i ], [ %i.kx, %.lr.ph.i.preheader ]
  %.01221.i484 = phi ptr [ %i.lf, %.lr.ph.i ], [ %i.ku, %.lr.ph.i.preheader ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01221.i484, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i484, align 1, !tbaa !52
  %i.lg = add nsw i64 %.01320.i485, -1            ; 3 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = and i64 %i.lh, 7
  %.not.i205 = icmp eq i64 %i.li, 0
  br i1 %.not.i205, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.ld, %.lr.ph25.preheader.i ] ; 2 uses
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
  %i.lj = load ptr, ptr %i.kr, align 8, !tbaa !134
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store i32 0, ptr %i.lk, align 8, !tbaa !136
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
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !95  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i, label %HashSigAlgoCoverage.exit.i.thread.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.ac = zext i16 %i.aa to i64                   ; 3 uses
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
  %storemerge.in.sroa.speculated.i.i = phi i64 [ %i.ac, %bb.j ], [ 26, %HashSigAlgoCoverage.exit.i.thread.i ]
  br label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %5 = or disjoint i64 %indvars.iv.next.i, 1
  %i.be = icmp samesign ult i64 %5, %storemerge.in.sroa.speculated.i.i
  br i1 %i.be, label %.lr.ph.i, label %InServerCertReqHashSigAlgo.exit.thread, !llvm.loop !401

InServerCertReqHashSigAlgo.exit.thread:           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread147

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = load i16, ptr %i.r, align 1
  %i.bi = icmp ne i16 %i.bg, %i.bh
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store i8 -1, ptr %i.f, align 4, !tbaa !52
  %i.bl = load i8, ptr %i.r, align 1, !tbaa !52   ; 3 uses
  %cond.i = icmp eq i8 %i.bl, 8
  br i1 %cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !52
  %i.bo = add i8 %i.bn, -9
  %or.cond.i = icmp ult i8 %i.bo, 3
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 10, ptr %i.f, align 4, !tbaa !52
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !52
  %i.bq = add i8 %i.bp, -5                        ; 2 uses
  store i8 %i.bq, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.o:                                             ; preds = %bb.m
  store i8 8, ptr %i.f, align 4, !tbaa !52
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !52  ; 2 uses
  store i8 %i.br, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.p:                                             ; preds = %bb.l
  store i8 %i.bl, ptr %i.e, align 1, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52  ; 2 uses
  store i8 %i.bt, ptr %i.f, align 4, !tbaa !52
  br label %DecodeSigAlg.exit

DecodeSigAlg.exit:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.bu = phi i8 [ %i.bq, %bb.n ], [ %i.br, %bb.o ], [ %i.bl, %bb.p ] ; 3 uses
  %i.bv = phi i8 [ 10, %bb.n ], [ 8, %bb.o ], [ %i.bt, %bb.p ] ; 4 uses
  %i.bw = add i32 %i.g, 2                         ; 3 uses
  store i32 %i.bw, ptr %i.h, align 4, !tbaa !403
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !171 ; 3 uses
  %.not111 = icmp eq i8 %i.by, 0
  br i1 %.not111, label %bb.r, label %bb.q

bb.q:                                             ; preds = %DecodeSigAlg.exit
  switch i8 %i.bv, label %.thread147 [
    i8 1, label %bb.s
    i8 8, label %bb.s
  ]

bb.r:                                             ; preds = %DecodeSigAlg.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !179
  %.not112 = icmp ne i8 %i.ca, 0
  %.not113 = icmp eq i8 %i.bv, 3
  %or.cond168 = select i1 %.not112, i1 %.not113, i1 false
  br i1 %or.cond168, label %bb.s, label %.thread147

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %switch.tableidx = add i8 %i.bu, -4             ; 3 uses
  %i.cb = icmp ult i8 %switch.tableidx, 3
  br i1 %i.cb, label %switch.lookup, label %SetDigest.exit

switch.lookup:                                    ; preds = %bb.s
  %i.cc = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SendCertificateVerify.19, i64 %i.cc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cd = shl nuw nsw i8 %switch.tableidx, 4
  %narrow = add nuw nsw i8 %i.cd, 32
  %switch.offset = zext nneg i8 %narrow to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = or i64 %i.cf, 1099511627776
  store i64 %i.cg, ptr %i.ce, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !131
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.cj, ptr %i.ck, align 16, !tbaa !159
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %switch.offset, ptr %i.cl, align 8, !tbaa !160
  br label %SetDigest.exit

bb.t:                                             ; preds = %bb.a, %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !171
  %.not108 = icmp eq i8 %i.cn, 0
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

bb.v:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !179
  %.not109 = icmp eq i8 %i.cp, 0
  br i1 %.not109, label %.thread147, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 3, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

SetDigest.exit:                                   ; preds = %bb.s, %switch.lookup, %bb.u, %bb.w
  %i.cq = phi i8 [ %i.bu, %switch.lookup ], [ %i.bu, %bb.s ], [ 2, %bb.u ], [ 2, %bb.w ] ; 2 uses
  %i.cr = phi i8 [ %i.bv, %switch.lookup ], [ %i.bv, %bb.s ], [ 1, %bb.u ], [ 3, %bb.w ]
  %i.cs = phi i8 [ %i.by, %switch.lookup ], [ %i.by, %bb.s ], [ 1, %bb.u ], [ 0, %bb.w ]
  %i.ct = phi i32 [ %i.bw, %switch.lookup ], [ %i.bw, %bb.s ], [ %i.g, %bb.u ], [ %i.g, %bb.w ] ; 3 uses
  %reass.sub = sub i32 %i.ct, %i.g
  %i.cu = add i32 %reass.sub, 2
  %i.cv = icmp ugt i32 %i.cu, %3
  br i1 %i.cv, label %.thread147, label %bb.x

bb.x:                                             ; preds = %SetDigest.exit
  %i.cw = zext i32 %i.ct to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.val = load i8, ptr %i.cx, align 1, !tbaa !52
  %i.cz = getelementptr i8, ptr %i.cx, i64 1
  %.val130 = load i8, ptr %i.cz, align 1, !tbaa !52
  %i.da = zext i8 %.val to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = zext i8 %.val130 to i16
  %i.dd = or disjoint i16 %i.db, %i.dc            ; 3 uses
  store i16 %i.dd, ptr %i.cy, align 4, !tbaa !90
  %i.de = add i32 %i.ct, 2                        ; 3 uses
  store i32 %i.de, ptr %i.h, align 4, !tbaa !403
  %i.df = sub i32 %i.de, %i.g
  %i.dg = zext i16 %i.dd to i32                   ; 3 uses
  %i.dh = add i32 %i.df, %i.dg
  %i.di = icmp ugt i32 %i.dh, %3
  %i.dj = icmp ugt i16 %i.dd, 512
  %or.cond = or i1 %i.dj, %i.di
  br i1 %or.cond, label %.thread147, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 2, ptr %i.d, align 4, !tbaa !226
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !232 ; 3 uses
  %.not116 = icmp eq ptr %i.dl, null
  %.not117 = icmp eq i8 %i.cs, 0
  %or.cond169 = or i1 %.not116, %.not117
  br i1 %or.cond169, label %RsaVerify.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = zext i32 %i.de to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm ; 2 uses
  %i.do = zext i8 %i.cq to i32                    ; 2 uses
  %i.dp = and i8 %i.cr, -3
  %or.cond.i131 = icmp eq i8 %i.dp, 8
  br i1 %or.cond.i131, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = add i8 %i.cq, -4
  %i.dr = icmp ult i8 %i.dq, 3
  br i1 %i.dr, label %switch.lookup.i, label %RsaVerify.exit.thread

switch.lookup.i:                                  ; preds = %bb.aa
  %switch.offset.i = add nuw nsw i32 %i.do, 2
  %switch.offset28.i = add nsw i32 %i.do, -3
  %i.ds = call i32 @wc_RsaPSS_VerifyInline(ptr noundef %i.dn, i32 noundef %i.dg, ptr noundef nonnull %4, i32 noundef %switch.offset.i, i32 noundef %switch.offset28.i, ptr noundef nonnull %i.dl) #27
  br label %RsaVerify.exit

bb.ab:                                            ; preds = %bb.z
  %i.dt = call i32 @wc_RsaSSL_VerifyInline(ptr noundef %i.dn, i32 noundef %i.dg, ptr noundef nonnull %4, ptr noundef nonnull %i.dl) #27
  br label %RsaVerify.exit

RsaVerify.exit:                                   ; preds = %switch.lookup.i, %bb.ab
  %.118.i = phi i32 [ %i.dt, %bb.ab ], [ %i.ds, %switch.lookup.i ] ; 4 uses
  %i.du = icmp sgt i32 %.118.i, -1
  br i1 %i.du, label %bb.ac, label %RsaVerify.exit.thread

bb.ac:                                            ; preds = %RsaVerify.exit
  %i.dv = load i8, ptr %i.f, align 4, !tbaa !241
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %RsaVerify.exit.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.118.i, ptr %i.dx, align 16, !tbaa !405
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !160
  br label %RsaVerify.exit.thread.sink.split

RsaVerify.exit.thread.sink.split:                 ; preds = %bb.ac, %bb.ad
  %.118.i.sink = phi i32 [ %i.dz, %bb.ad ], [ %.118.i, %bb.ac ]
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.118.i.sink, ptr %i.ea, align 8, !tbaa !406
  br label %RsaVerify.exit.thread

RsaVerify.exit.thread:                            ; preds = %RsaVerify.exit.thread.sink.split, %bb.aa, %RsaVerify.exit, %bb.y
  %.0 = phi i32 [ 0, %bb.y ], [ %.118.i, %RsaVerify.exit ], [ -173, %bb.aa ], [ 0, %RsaVerify.exit.thread.sink.split ]
end_hunk_0
