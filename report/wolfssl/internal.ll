Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DoClientKeyExchange:bb.a

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
  %5 = or disjoint i16 %i.be, 1
  %i.bf = icmp ult i16 %5, %storemerge.in.sroa.speculated.i.i
  br i1 %i.bf, label %.lr.ph.i, label %InServerCertReqHashSigAlgo.exit.thread, !llvm.loop !401

InServerCertReqHashSigAlgo.exit.thread:           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.thread147

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.08.i = phi i16 [ %i.be, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.bg = zext i16 %.08.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = load i16, ptr %i.r, align 1
  %i.bk = icmp ne i16 %i.bi, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store i8 -1, ptr %i.f, align 4, !tbaa !52
  %i.bn = load i8, ptr %i.r, align 1, !tbaa !52   ; 3 uses
  %cond.i = icmp eq i8 %i.bn, 8
  br i1 %cond.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bq = add i8 %i.bp, -9
  %or.cond.i = icmp ult i8 %i.bq, 3
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 10, ptr %i.f, align 4, !tbaa !52
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bs = add i8 %i.br, -5                        ; 2 uses
  store i8 %i.bs, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.o:                                             ; preds = %bb.m
  store i8 8, ptr %i.f, align 4, !tbaa !52
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !52  ; 2 uses
  store i8 %i.bt, ptr %i.e, align 1, !tbaa !52
  br label %DecodeSigAlg.exit

bb.p:                                             ; preds = %bb.l
  store i8 %i.bn, ptr %i.e, align 1, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !52  ; 2 uses
  store i8 %i.bv, ptr %i.f, align 4, !tbaa !52
  br label %DecodeSigAlg.exit

DecodeSigAlg.exit:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.bw = phi i8 [ %i.bs, %bb.n ], [ %i.bt, %bb.o ], [ %i.bn, %bb.p ] ; 3 uses
  %i.bx = phi i8 [ 10, %bb.n ], [ 8, %bb.o ], [ %i.bv, %bb.p ] ; 4 uses
  %i.by = add i32 %i.g, 2                         ; 3 uses
  store i32 %i.by, ptr %i.h, align 4, !tbaa !403
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !171 ; 3 uses
  %.not111 = icmp eq i8 %i.ca, 0
  br i1 %.not111, label %bb.r, label %bb.q

bb.q:                                             ; preds = %DecodeSigAlg.exit
  switch i8 %i.bx, label %.thread147 [
    i8 1, label %bb.s
    i8 8, label %bb.s
  ]

bb.r:                                             ; preds = %DecodeSigAlg.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !179
  %.not112 = icmp ne i8 %i.cc, 0
  %.not113 = icmp eq i8 %i.bx, 3
  %or.cond168 = select i1 %.not112, i1 %.not113, i1 false
  br i1 %or.cond168, label %bb.s, label %.thread147

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %switch.tableidx = add i8 %i.bw, -4             ; 3 uses
  %i.cd = icmp ult i8 %switch.tableidx, 3
  br i1 %i.cd, label %switch.lookup, label %SetDigest.exit

switch.lookup:                                    ; preds = %bb.s
  %i.ce = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SendCertificateVerify.19, i64 %i.ce
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cf = shl nuw nsw i8 %switch.tableidx, 4
  %narrow = add nuw nsw i8 %i.cf, 32
  %switch.offset = zext nneg i8 %narrow to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = or i64 %i.ch, 1099511627776
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !131
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %switch.ext
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.cl, ptr %i.cm, align 16, !tbaa !159
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %switch.offset, ptr %i.cn, align 8, !tbaa !160
  br label %SetDigest.exit

bb.t:                                             ; preds = %bb.a, %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !171
  %.not108 = icmp eq i8 %i.cp, 0
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

bb.v:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !179
  %.not109 = icmp eq i8 %i.cr, 0
  br i1 %.not109, label %.thread147, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 3, ptr %i.f, align 4, !tbaa !241
  br label %SetDigest.exit

SetDigest.exit:                                   ; preds = %bb.s, %switch.lookup, %bb.u, %bb.w
  %i.cs = phi i8 [ %i.bw, %switch.lookup ], [ %i.bw, %bb.s ], [ 2, %bb.u ], [ 2, %bb.w ] ; 2 uses
  %i.ct = phi i8 [ %i.bx, %switch.lookup ], [ %i.bx, %bb.s ], [ 1, %bb.u ], [ 3, %bb.w ]
  %i.cu = phi i8 [ %i.ca, %switch.lookup ], [ %i.ca, %bb.s ], [ 1, %bb.u ], [ 0, %bb.w ]
  %i.cv = phi i32 [ %i.by, %switch.lookup ], [ %i.by, %bb.s ], [ %i.g, %bb.u ], [ %i.g, %bb.w ] ; 3 uses
  %reass.sub = sub i32 %i.cv, %i.g
  %i.cw = add i32 %reass.sub, 2
  %i.cx = icmp ugt i32 %i.cw, %3
  br i1 %i.cx, label %.thread147, label %bb.x

bb.x:                                             ; preds = %SetDigest.exit
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.val = load i8, ptr %i.cz, align 1, !tbaa !52
  %i.db = getelementptr i8, ptr %i.cz, i64 1
  %.val130 = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dc = zext i8 %.val to i16
  %i.dd = shl nuw i16 %i.dc, 8
  %i.de = zext i8 %.val130 to i16
  %i.df = or disjoint i16 %i.dd, %i.de            ; 3 uses
  store i16 %i.df, ptr %i.da, align 4, !tbaa !90
  %i.dg = add i32 %i.cv, 2                        ; 3 uses
  store i32 %i.dg, ptr %i.h, align 4, !tbaa !403
  %i.dh = sub i32 %i.dg, %i.g
  %i.di = zext i16 %i.df to i32                   ; 3 uses
  %i.dj = add i32 %i.dh, %i.di
  %i.dk = icmp ugt i32 %i.dj, %3
  %i.dl = icmp ugt i16 %i.df, 512
  %or.cond = or i1 %i.dl, %i.dk
  br i1 %or.cond, label %.thread147, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 2, ptr %i.d, align 4, !tbaa !226
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !232 ; 3 uses
  %.not116 = icmp eq ptr %i.dn, null
  %.not117 = icmp eq i8 %i.cu, 0
  %or.cond169 = or i1 %.not116, %.not117
  br i1 %or.cond169, label %RsaVerify.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = zext i32 %i.dg to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do ; 2 uses
  %i.dq = zext i8 %i.cs to i32                    ; 2 uses
  %i.dr = and i8 %i.ct, -3
  %or.cond.i131 = icmp eq i8 %i.dr, 8
  br i1 %or.cond.i131, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = add i8 %i.cs, -4
  %i.dt = icmp ult i8 %i.ds, 3
  br i1 %i.dt, label %switch.lookup.i, label %RsaVerify.exit.thread

switch.lookup.i:                                  ; preds = %bb.aa
  %switch.offset.i = add nuw nsw i32 %i.dq, 2
  %switch.offset28.i = add nsw i32 %i.dq, -3
  %i.du = call i32 @wc_RsaPSS_VerifyInline(ptr noundef %i.dp, i32 noundef %i.di, ptr noundef nonnull %4, i32 noundef %switch.offset.i, i32 noundef %switch.offset28.i, ptr noundef nonnull %i.dn) #27
  br label %RsaVerify.exit

bb.ab:                                            ; preds = %bb.z
  %i.dv = call i32 @wc_RsaSSL_VerifyInline(ptr noundef %i.dp, i32 noundef %i.di, ptr noundef nonnull %4, ptr noundef nonnull %i.dn) #27
  br label %RsaVerify.exit

RsaVerify.exit:                                   ; preds = %switch.lookup.i, %bb.ab
  %.118.i = phi i32 [ %i.dv, %bb.ab ], [ %i.du, %switch.lookup.i ] ; 4 uses
  %i.dw = icmp sgt i32 %.118.i, -1
  br i1 %i.dw, label %bb.ac, label %RsaVerify.exit.thread

bb.ac:                                            ; preds = %RsaVerify.exit
  %i.dx = load i8, ptr %i.f, align 4, !tbaa !241
  %i.dy = icmp eq i8 %i.dx, 1
  br i1 %i.dy, label %RsaVerify.exit.thread.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.118.i, ptr %i.dz, align 16, !tbaa !405
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !160
  br label %RsaVerify.exit.thread.sink.split

RsaVerify.exit.thread.sink.split:                 ; preds = %bb.ac, %bb.ad
  %.118.i.sink = phi i32 [ %i.eb, %bb.ad ], [ %.118.i, %bb.ac ]
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.118.i.sink, ptr %i.ec, align 8, !tbaa !406
  br label %RsaVerify.exit.thread

end_hunk_0
begin_hunk_1_@SendCertificate:bb.a
  %i.lc = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %i.dv, i32 noundef %.2181418, ptr noundef null, i32 noundef %i.la, i32 noundef 22, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ld = zext nneg i32 %i.la to i64              ; 2 uses
  %i.le = tail call ptr @wolfSSL_Malloc(i64 noundef %i.ld) #27 ; 4 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %.thread353, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lg = zext nneg i32 %spec.select249 to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.lg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr nonnull align 1 %i.lh, i64 %i.ld, i1 false)
  %i.li = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %i.dv, i32 noundef %.2181418, ptr noundef nonnull %i.le, i32 noundef %i.la, i32 noundef 22, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.le) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread
  %i.lj = phi i32 [ %i.lc, %.thread ], [ %i.li, %bb.bi ] ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, -1
  br i1 %i.lk, label %IsEncryptionOn.exit316.thread, label %.thread353

IsEncryptionOn.exit316.thread:                    ; preds = %bb.be, %IsEncryptionOn.exit316, %bb.bj
  %.4183 = phi i32 [ %i.lj, %bb.bj ], [ %.4188, %IsEncryptionOn.exit316 ], [ %.4188, %bb.be ]
  %i.ll = load i32, ptr %i.am, align 16, !tbaa !188
  %i.lm = add i32 %i.ll, %.4183
  store i32 %i.lm, ptr %i.am, align 16, !tbaa !188
  %i.ln = load i64, ptr %i.d, align 16
  %i.lo = and i64 %i.ln, 137438953472
  %.not247 = icmp eq i64 %i.lo, 0
  br i1 %.not247, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %IsEncryptionOn.exit316.thread
  %i.lp = tail call i32 @SendBuffered(ptr noundef nonnull %0)
  br label %bb.bl

bb.bl:                                            ; preds = %IsEncryptionOn.exit316.thread, %bb.bk
  %.2178 = phi i32 [ 0, %IsEncryptionOn.exit316.thread ], [ %i.lp, %bb.bk ] ; 3 uses
  %i.lq = icmp ne i32 %.5, 0
  %i.lr = icmp eq i32 %.2178, 0
  %i.ls = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %i.ls, label %bb.h, label %._crit_edge, !llvm.loop !473

._crit_edge:                                      ; preds = %bb.bl
  %.not225 = icmp eq i32 %.2178, -327
  br i1 %.not225, label %.thread353, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %.0176.lcssa400 = phi i32 [ %.2178, %._crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i8 0, ptr %i.lt, align 8, !tbaa !269
  store i32 0, ptr %i.u, align 16, !tbaa !275
  %i.lu = load i64, ptr %i.d, align 16
  %i.lv = and i64 %i.lu, 48
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %bb.bm, label %.thread353

bb.bm:                                            ; preds = %._crit_edge.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 1061
  store i8 5, ptr %i.lx, align 1, !tbaa !191
  br label %.thread353

.thread353:                                       ; preds = %bb.bf, %bb.bh, %bb.p, %bb.o, %IsEncryptionOn.exit255.thread, %bb.bj, %._crit_edge, %bb.bm, %._crit_edge.thread, %bb.c, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ -327, %._crit_edge ], [ -328, %bb.c ], [ %.0176.lcssa400, %._crit_edge.thread ], [ %.0176.lcssa400, %bb.bm ], [ -125, %bb.bh ], [ -132, %bb.bf ], [ -125, %bb.o ], [ -125, %bb.p ], [ %i.lj, %bb.bj ], [ -173, %IsEncryptionOn.exit255.thread ]
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
  %i.bd = and i64 %i.bc, 12884901888
  %or.cond = icmp eq i64 %i.bd, 0
  br i1 %or.cond, label %bb.l, label %CheckAvailableSize.exit.thread

bb.l:                                             ; preds = %GetServerCertReqHashSigAlgo.exit.thread100
  %i.be = add nuw nsw i32 %i.ba, 9                ; 5 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !56
  %i.bf = and i64 %i.bc, 131072
  %.not57 = icmp eq i64 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !51
  %.not.i66 = icmp eq i8 %i.bh, 0                 ; 2 uses
  br i1 %.not57, label %bb.m, label %IsEncryptionOn.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i66, label %IsEncryptionOn.exit.thread.thread127, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.m
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not = icmp eq i8 %.in.i, 0
  br i1 %.not, label %IsEncryptionOn.exit72, label %bb.n

bb.n:                                             ; preds = %IsEncryptionOn.exit
  %i.bi = add nuw nsw i32 %i.ba, 111              ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !56
  br label %IsEncryptionOn.exit72

IsEncryptionOn.exit.thread:                       ; preds = %bb.l
  br i1 %.not.i66, label %IsEncryptionOn.exit.thread.thread127, label %IsEncryptionOn.exit72

IsEncryptionOn.exit72:                            ; preds = %IsEncryptionOn.exit, %bb.n, %IsEncryptionOn.exit.thread
  %.pr125 = phi i32 [ %i.be, %IsEncryptionOn.exit.thread ], [ %i.be, %IsEncryptionOn.exit ], [ %i.bi, %bb.n ] ; 2 uses
  %.in.in.i69 = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i70 = load i8, ptr %.in.in.i69, align 1, !tbaa !52
  %.not102 = icmp eq i8 %.in.i70, 0
  br i1 %.not102, label %IsEncryptionOn.exit.thread.thread127, label %bb.o

bb.o:                                             ; preds = %IsEncryptionOn.exit72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !183
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !254
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !265
  %.not.i74 = icmp eq i8 %i.bq, 9
  %i.br = add nuw nsw i32 %i.bo, 8
  %spec.select.i = select i1 %.not.i74, i32 %i.bo, i32 %i.br
  br label %cipherExtraData.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !274
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !264
  %i.bx = zext i16 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !105
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.by, %i.cb
  br label %cipherExtraData.exit

cipherExtraData.exit:                             ; preds = %bb.p, %bb.q
  %.0.i73 = phi i32 [ %i.cc, %bb.q ], [ %spec.select.i, %bb.p ]
  %i.cd = add nuw nsw i32 %.pr125, %.0.i73        ; 2 uses
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !56
  br label %IsEncryptionOn.exit.thread.thread127

IsEncryptionOn.exit.thread.thread127:             ; preds = %bb.m, %cipherExtraData.exit, %IsEncryptionOn.exit.thread, %IsEncryptionOn.exit72
  %i.ce = phi i32 [ %i.cd, %cipherExtraData.exit ], [ %i.be, %IsEncryptionOn.exit.thread ], [ %.pr125, %IsEncryptionOn.exit72 ], [ %i.be, %bb.m ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i8 1, ptr %i.cf, align 8, !tbaa !269
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 16, !tbaa !188 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !189 ; 3 uses
  %i.cm = add i32 %i.cl, %i.cj                    ; 3 uses
  %i.cn = sub i32 %i.ch, %i.cm
  %i.co = icmp ult i32 %i.cn, %i.ce
  br i1 %i.co, label %bb.r, label %CheckAvailableSize.exit

bb.r:                                             ; preds = %IsEncryptionOn.exit.thread.thread127
  %i.cp = xor i32 %i.cl, -1
  %.not.i.i = icmp ugt i32 %i.cj, %i.cp
  %i.cq = xor i32 %i.cm, -1
  %.not40.i.i = icmp ugt i32 %i.ce, %i.cq
  %or.cond.i = or i1 %.not.i.i, %.not40.i.i
  br i1 %or.cond.i, label %CheckAvailableSize.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = add i32 %i.cm, %i.ce                    ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = tail call ptr @wolfSSL_Malloc(i64 noundef %i.cs) #27 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %CheckAvailableSize.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.ci, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not42.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !143
  %i.cy = load i32, ptr %i.ck, align 4, !tbaa !189
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = zext i32 %i.cz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cx, i64 %i.da, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not43.i.i, label %CheckAvailableSize.exit.thread130, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.de, null
  br i1 %.not44.i.i, label %CheckAvailableSize.exit.thread130, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_1
begin_hunk_2_@SetCipherList_ex:bb.a
.lr.ph.i:                                         ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !280
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv179.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next180.i, %bb.s ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv179.i ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !52
  %i.aw = icmp eq i8 %i.av, %i.as
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.az = load i8, ptr %i.at, align 1, !tbaa !281
  %i.ba = icmp eq i8 %i.ay, %i.az
  br i1 %i.ba, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 2 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next180.i to i32 ; 2 uses
  %i.bb = icmp sgt i32 %.099.i, %indvars.i
  br i1 %i.bb, label %bb.q, label %._crit_edge.i, !llvm.loop !481

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.r
  %i.bc = trunc nuw nsw i64 %indvars.iv179.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s, %._crit_edge.loopexit.split.loop.exit.i, %bb.p
  %.078.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.bc, %._crit_edge.loopexit.split.loop.exit.i ], [ %indvars.i, %bb.s ]
  %.not116.i = icmp eq i32 %.078.lcssa.i, %.099.i
  br i1 %.not116.i, label %bb.t, label %.thread137.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.bd = icmp sgt i32 %.099.i, 298
  br i1 %i.bd, label %.thread152.i, label %bb.u

.thread152.i:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %ParseCipherList.exit

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !280
  %i.bg = sext i32 %.099.i to i64
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 %i.bg ; 2 uses
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !281
  %i.bk = add nuw nsw i32 %.099.i, 2              ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bh, i64 1
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !52
  %i.bm = icmp samesign ult i64 %indvars.iv.i, 3
  br i1 %i.bm, label %.thread137.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.250) #29
  %.not118.i = icmp eq ptr %i.bn, null
  br i1 %.not118.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = or i32 %.094.i, 1
  br label %.thread137.i

bb.x:                                             ; preds = %bb.v
  %i.bp = or i32 %.094.i, 2
  br label %.thread137.i

bb.y:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 27
  br i1 %exitcond.not.i, label %.thread137.i, label %bb.n, !llvm.loop !482

.thread137.i:                                     ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %._crit_edge.i
  %.3106.ph.i = phi i32 [ %.0103.i, %._crit_edge.i ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.x ], [ %.0103.i, %bb.y ] ; 2 uses
  %.3102.ph.i = phi i32 [ %.099.i, %._crit_edge.i ], [ %i.bk, %bb.u ], [ %i.bk, %bb.w ], [ %i.bk, %bb.x ], [ %.099.i, %bb.y ] ; 2 uses
  %.498.ph.i = phi i32 [ %.094.i, %._crit_edge.i ], [ 3, %bb.u ], [ %i.bo, %bb.w ], [ %i.bp, %bb.x ], [ %.094.i, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not119.i = icmp eq ptr %.287.i, null
  br i1 %.not119.i, label %.loopexit.i, label %bb.k, !llvm.loop !483

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread137.i, %bb.z
  %.498149.i = phi i32 [ %.094.i, %bb.z ], [ %.498.ph.i, %.thread137.i ] ; 2 uses
  %.3102147.i = phi i32 [ %.099.i, %bb.z ], [ %.3102.ph.i, %.thread137.i ]
  %.3106145.i = phi i32 [ %.0103.i, %bb.z ], [ %.3106.ph.i, %.thread137.i ]
  %.not120.i = icmp eq i32 %.3106145.i, 0
  br i1 %.not120.i, label %ParseCipherList.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i
  %i.bq = trunc i32 %.3102147.i to i16
  store i16 %i.bq, ptr %2, align 2, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bt = and i32 %.498149.i, 1
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %AddSuiteHashSigAlgo.exit32.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store <4 x i8> <i8 6, i8 3, i8 5, i8 3>, ptr %i.br, align 2, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 308
  store i8 4, ptr %i.bu, align 2, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 309
  store i8 3, ptr %i.bv, align 1, !tbaa !52
  br label %AddSuiteHashSigAlgo.exit32.i.i

AddSuiteHashSigAlgo.exit32.i.i:                   ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi i16 [ 0, %bb.aa ], [ 6, %bb.ab ]  ; 3 uses
  %i.bw = and i32 %.498149.i, 2
  %.not23.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not23.i.i, label %InitSuitesHashSigAlgo.exit.i, label %bb.ac

bb.ac:                                            ; preds = %AddSuiteHashSigAlgo.exit32.i.i
  %i.bx = zext nneg i16 %.0.i.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bx ; 2 uses
  store <16 x i8> <i8 8, i8 6, i8 8, i8 11, i8 8, i8 5, i8 8, i8 10, i8 8, i8 4, i8 8, i8 9, i8 6, i8 1, i8 5, i8 1>, ptr %i.by, align 1, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i8> <i8 4, i8 1, i8 3, i8 1>, ptr %i.bz, align 1, !tbaa !52
  %storemerge.i61.i.i = add nuw nsw i16 %.0.i.i, 20
  br label %InitSuitesHashSigAlgo.exit.i

InitSuitesHashSigAlgo.exit.i:                     ; preds = %bb.ac, %AddSuiteHashSigAlgo.exit32.i.i
  %.2.i.i = phi i16 [ %.0.i.i, %AddSuiteHashSigAlgo.exit32.i.i ], [ %storemerge.i61.i.i, %bb.ac ]
  store i16 %.2.i.i, ptr %i.bs, align 2, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 2
  %i.cc = or i8 %i.cb, 1
  store i8 %i.cc, ptr %i.ca, align 2
  br label %ParseCipherList.exit

ParseCipherList.exit:                             ; preds = %InitSuitesHashSigAlgo.exit.i, %.loopexit.i, %.thread152.i, %bb.j, %bb.e, %bb.c
  %.014 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.j ], [ 0, %.thread152.i ], [ 1, %InitSuitesHashSigAlgo.exit.i ], [ 0, %.loopexit.i ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @SetCipherList(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call i32 @SetCipherList_ex(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -501, 1) i32 @PickHashSigAlgo(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.b = load i16, ptr %i.a, align 2              ; 6 uses
  %i.c = and i16 %i.b, 255                        ; 2 uses
  %i.d = icmp eq i16 %i.c, 3                      ; 2 uses
  %i.e = icmp ugt i16 %i.b, 1023
  %i.f = and i1 %i.e, %i.d                        ; 4 uses
  %i.g = trunc i16 %i.b to i8                     ; 8 uses
  %. = select i1 %i.f, i64 600, i64 742
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load i8, ptr %i.h, align 2, !tbaa !52  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1058 ; 3 uses
  store i8 %.sink, ptr %i.i, align 2, !tbaa !239
  %i.j = icmp eq i8 %.sink, 0
  br i1 %i.j, label %bb.b, label %MinHashAlgo.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.l = load i8, ptr %i.k, align 2, !tbaa !485
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1057
  store i8 %i.l, ptr %i.m, align 1, !tbaa !240
  br label %.loopexit

MinHashAlgo.exit:                                 ; preds = %bb.a
  %i.n = icmp ugt i16 %i.b, 767
  %or.cond.i = and i1 %i.n, %i.d
  %.0.i = select i1 %or.cond.i, i8 4, i8 2        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1057 ; 3 uses
  store i8 %.0.i, ptr %i.o, align 1, !tbaa !240
  switch i32 %2, label %.lr.ph [
    i32 0, label %.loopexit
    i32 1, label %.loopexit.fold.split
  ]

.lr.ph:                                           ; preds = %MinHashAlgo.exit
  %not..not8.not10.i = xor i1 %i.f, true
  %.not48 = icmp eq i32 %3, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.s = icmp ult i16 %i.b, 768
  %i.t = icmp eq i16 %i.c, 3
  %i.u = icmp ugt i16 %i.b, 1023
  %.not86.not104 = and i1 %i.u, %i.t
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %SupportedHashSigAlgo.exit.thread
  %i.v = phi i8 [ %i.g, %.lr.ph ], [ %i.bn, %SupportedHashSigAlgo.exit.thread ] ; 13 uses
  %i.w = phi i8 [ %.0.i, %.lr.ph ], [ %i.bo, %SupportedHashSigAlgo.exit.thread ] ; 13 uses
  %i.x = phi i8 [ %.sink, %.lr.ph ], [ %i.bp, %SupportedHashSigAlgo.exit.thread ] ; 14 uses
  %.04389 = phi i32 [ -501, %.lr.ph ], [ %.2.ph, %SupportedHashSigAlgo.exit.thread ] ; 12 uses
  %.04488 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %SupportedHashSigAlgo.exit.thread ] ; 2 uses
  %i.y = zext i32 %.04488 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52   ; 2 uses
  %cond.i = icmp eq i8 %i.aa, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52  ; 4 uses
  br i1 %cond.i, label %bb.d, label %DecodeSigAlg.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = add i8 %i.ac, -9
  %or.cond.i54 = icmp ult i8 %i.ad, 3             ; 2 uses
  %i.ae = add nsw i8 %i.ac, -5
  %spec.select = select i1 %or.cond.i54, i8 %i.ae, i8 %i.ac
  %spec.select78 = select i1 %or.cond.i54, i8 10, i8 8
  br label %DecodeSigAlg.exit

DecodeSigAlg.exit:                                ; preds = %bb.c, %bb.d
  %.069 = phi i8 [ %spec.select, %bb.d ], [ %i.aa, %bb.c ] ; 8 uses
  %.068 = phi i8 [ %spec.select78, %bb.d ], [ %i.ac, %bb.c ] ; 5 uses
  %i.af = icmp ult i8 %.069, %.0.i
  br i1 %i.af, label %SupportedHashSigAlgo.exit.thread, label %bb.e

bb.e:                                             ; preds = %DecodeSigAlg.exit
  %i.ag = icmp eq i8 %i.x, 1
  br i1 %i.ag, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq i8 %.068, 8                     ; 2 uses
  %brmerge.i = or i1 %i.f, %i.ah
  br i1 %brmerge.i, label %MatchSigAlgo.exit, label %.split

.split:                                           ; preds = %bb.f, %bb.e
  %i.ai = icmp eq i8 %.068, %i.x
  br i1 %i.ai, label %bb.g, label %SupportedHashSigAlgo.exit.thread

MatchSigAlgo.exit:                                ; preds = %bb.f
  %.mux.i = or i1 %i.ah, %not..not8.not10.i
  br i1 %.mux.i, label %bb.g, label %SupportedHashSigAlgo.exit.thread

bb.g:                                             ; preds = %.split, %MatchSigAlgo.exit
  br i1 %.not48, label %SupportedHashSigAlgo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !91  ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 16, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %SupportedHashSigAlgo.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %i.am, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !95 ; 3 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %SupportedHashSigAlgo.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 304
  %.not22.i = icmp eq i16 %i.aq, 1
  br i1 %.not22.i, label %SupportedHashSigAlgo.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = zext i16 %i.aq to i64
  br label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %4 = or disjoint i64 %indvars.iv.next.i, 1
  %i.au = icmp samesign ult i64 %4, %i.at
  br i1 %i.au, label %.lr.ph.i, label %SupportedHashSigAlgo.exit.thread, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = load i16, ptr %i.z, align 1
  %i.ay = icmp ne i16 %i.aw, %i.ax
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %SupportedHashSigAlgo.exit, label %bb.j

SupportedHashSigAlgo.exit:                        ; preds = %.lr.ph.i, %bb.g
  %i.bb = icmp eq i8 %.068, 3
  %brmerge.not = and i1 %i.f, %i.bb
  br i1 %brmerge.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %SupportedHashSigAlgo.exit
  %switch.tableidx = add i8 %.069, -2             ; 3 uses
  %i.bc = icmp ult i8 %switch.tableidx, 5
  %switch.shifted = lshr i8 29, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond106 = select i1 %i.bc, i1 %switch.lobit, i1 false
  br i1 %or.cond106, label %switch.lookup, label %SupportedHashSigAlgo.exit.thread

switch.lookup:                                    ; preds = %bb.k
  %i.bd = load i32, ptr %i.r, align 4, !tbaa !486
  %i.be = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.PickHashSigAlgo, i64 %i.be
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bf = and i32 %i.bd, -4
  %.not53 = icmp eq i32 %i.bf, %switch.ext
  br i1 %.not53, label %bb.q, label %SupportedHashSigAlgo.exit.thread

bb.l:                                             ; preds = %SupportedHashSigAlgo.exit
  %.off = add i8 %.069, -2
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %bb.m, label %SupportedHashSigAlgo.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = icmp eq i32 %.04389, 0
  %i.bh = icmp ugt i8 %.069, %i.w
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %SupportedHashSigAlgo.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp ne i8 %i.v, 3
  %brmerge = or i1 %i.bi, %i.s                    ; 2 uses
  %brmerge102 = or i1 %brmerge, %.not86.not104
  %.mux.mux = select i1 %brmerge, i8 %i.v, i8 %i.g
  br i1 %brmerge102, label %IsAtLeastTLSv1_2.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.q, align 8
  %i.bk = and i64 %i.bj, 48
  %i.bl = icmp eq i64 %i.bk, 16
  br i1 %i.bl, label %bb.p, label %IsAtLeastTLSv1_2.exit.thread

bb.p:                                             ; preds = %bb.o
  switch i8 %.069, label %SupportedHashSigAlgo.exit.thread [
    i8 6, label %IsAtLeastTLSv1_2.exit.thread
    i8 5, label %IsAtLeastTLSv1_2.exit.thread
    i8 4, label %IsAtLeastTLSv1_2.exit.thread
    i8 2, label %IsAtLeastTLSv1_2.exit.thread
  ]

IsAtLeastTLSv1_2.exit.thread:                     ; preds = %bb.n, %bb.p, %bb.p, %bb.p, %bb.p, %bb.o
  %i.bm = phi i8 [ %i.g, %bb.o ], [ %.mux.mux, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.p ], [ %i.g, %bb.p ], [ %i.g, %bb.p ]
  store i8 %.069, ptr %i.o, align 1, !tbaa !240
  store i8 %.068, ptr %i.i, align 2, !tbaa !239
  br label %SupportedHashSigAlgo.exit.thread

bb.q:                                             ; preds = %switch.lookup
  store i8 %.069, ptr %i.o, align 1, !tbaa !240
  store i8 3, ptr %i.i, align 2, !tbaa !239
  br label %.loopexit

SupportedHashSigAlgo.exit.thread:                 ; preds = %bb.j, %bb.k, %bb.m, %.split, %.preheader.i, %bb.i, %.thread.i, %DecodeSigAlg.exit, %switch.lookup, %MatchSigAlgo.exit, %bb.p, %bb.l, %IsAtLeastTLSv1_2.exit.thread
  %i.bn = phi i8 [ %i.v, %.preheader.i ], [ %i.g, %bb.p ], [ %i.bm, %IsAtLeastTLSv1_2.exit.thread ], [ %i.v, %bb.m ], [ %i.v, %bb.l ], [ %i.v, %MatchSigAlgo.exit ], [ %i.v, %switch.lookup ], [ %i.v, %DecodeSigAlg.exit ], [ %i.v, %.thread.i ], [ %i.v, %bb.k ], [ %i.v, %bb.i ], [ %i.v, %.split ], [ %i.v, %bb.j ]
  %i.bo = phi i8 [ %i.w, %.preheader.i ], [ %i.w, %bb.p ], [ %.069, %IsAtLeastTLSv1_2.exit.thread ], [ %i.w, %bb.m ], [ %i.w, %bb.l ], [ %i.w, %MatchSigAlgo.exit ], [ %i.w, %switch.lookup ], [ %i.w, %DecodeSigAlg.exit ], [ %i.w, %.thread.i ], [ %i.w, %bb.k ], [ %i.w, %bb.i ], [ %i.w, %.split ], [ %i.w, %bb.j ]
  %i.bp = phi i8 [ %i.x, %.preheader.i ], [ %i.x, %bb.p ], [ %.068, %IsAtLeastTLSv1_2.exit.thread ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ %i.x, %MatchSigAlgo.exit ], [ %i.x, %switch.lookup ], [ %i.x, %DecodeSigAlg.exit ], [ %i.x, %.thread.i ], [ %i.x, %bb.k ], [ %i.x, %bb.i ], [ %i.x, %.split ], [ %i.x, %bb.j ]
  %.2.ph = phi i32 [ %.04389, %.preheader.i ], [ %.04389, %bb.p ], [ 0, %IsAtLeastTLSv1_2.exit.thread ], [ 0, %bb.m ], [ %.04389, %bb.l ], [ %.04389, %MatchSigAlgo.exit ], [ %.04389, %switch.lookup ], [ %.04389, %DecodeSigAlg.exit ], [ %.04389, %.thread.i ], [ %.04389, %bb.k ], [ %.04389, %bb.i ], [ %.04389, %.split ], [ %.04389, %bb.j ] ; 2 uses
  %i.bq = add i32 %.04488, 2                      ; 2 uses
  %5 = or disjoint i32 %i.bq, 1
  %i.br = icmp ult i32 %5, %2
  br i1 %i.br, label %bb.c, label %.loopexit, !llvm.loop !484

.loopexit.fold.split:                             ; preds = %MinHashAlgo.exit
  br label %.loopexit

.loopexit:                                        ; preds = %SupportedHashSigAlgo.exit.thread, %MinHashAlgo.exit, %.loopexit.fold.split, %bb.q, %bb.b
  %.045 = phi i32 [ 0, %bb.b ], [ %2, %MinHashAlgo.exit ], [ 0, %bb.q ], [ -501, %.loopexit.fold.split ], [ %.2.ph, %SupportedHashSigAlgo.exit.thread ]
  ret i32 %.045
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @SupportedHashSigAlgo(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 16, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !95   ; 3 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  %.not22 = icmp eq i16 %i.k, 1
  br i1 %.not22, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.n = zext i16 %i.k to i64
  br label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %2 = or disjoint i64 %indvars.iv.next, 1
  %i.o = icmp samesign ult i64 %2, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.q = load i16, ptr %i.p, align 1
  %i.r = load i16, ptr %1, align 1
  %i.s = icmp ne i16 %i.q, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %.preheader, %bb.c, %.thread, %bb.a
  %.014 = phi i32 [ 0, %.thread ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %.preheader ], [ 1, %.lr.ph ], [ 0, %bb.d ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define i32 @DecodePrivateKey(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !121 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %DecodePrivateKey_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %DecodePrivateKey_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.i = icmp ult i8 %i.c, 2
  br i1 %or.cond.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store i32 10, ptr %i.f, align 8, !tbaa !56
  %i.k = load ptr, ptr %i.g, align 16, !tbaa !129
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %DecodePrivateKey_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @wolfSSL_Malloc(i64 noundef 8368) #27 ; 3 uses
  store ptr %i.l, ptr %i.g, align 16, !tbaa !129
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %DecodePrivateKey_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.q = load i32, ptr %i.p, align 4, !tbaa !133
  %i.r = tail call i32 @wc_InitRsaKey_ex(ptr noundef nonnull %i.l, ptr noundef %i.o, i32 noundef %i.q) #27 ; 3 uses
  %.not29.i.i = icmp eq i32 %i.r, 0
  br i1 %.not29.i.i, label %AllocKey.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.g, align 16, !tbaa !129 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %DecodePrivateKey_ex.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @wc_FreeRsaKey(ptr noundef nonnull %i.s) #27 ; 0 uses
  %.pr.i.i.i = load ptr, ptr %i.g, align 16, !tbaa !129 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not13.i.i.i, label %bb.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h
  tail call void @wolfSSL_Free(ptr noundef nonnull %.pr.i.i.i) #27
  br label %bb.i

bb.i:                                             ; preds = %.thread.i.i.i, %bb.h
  store ptr null, ptr %i.g, align 16, !tbaa !129
  br label %DecodePrivateKey_ex.exit

AllocKey.exit.i:                                  ; preds = %bb.f
  store i32 0, ptr %i.a, align 4, !tbaa !56
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.v = load ptr, ptr %i.g, align 16, !tbaa !129
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79
  %i.y = call i32 @wc_RsaPrivateKeyDecode(ptr noundef %i.u, ptr noundef nonnull %i.a, ptr noundef %i.v, i32 noundef %i.x) #27 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %AllocKey.exit.i
  %i.aa = load ptr, ptr %i.g, align 16, !tbaa !129
  %i.ab = call i32 @wc_RsaEncryptSize(ptr noundef %i.aa) #27 ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %DecodePrivateKey_ex.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1078
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !125
  %i.af = sext i16 %i.ae to i32
  %i.ag = icmp slt i32 %i.ab, %i.af
  br i1 %i.ag, label %DecodePrivateKey_ex.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ab, ptr %1, align 4, !tbaa !56
  br label %DecodePrivateKey_ex.exit

bb.m:                                             ; preds = %bb.c, %AllocKey.exit.i
  %.0.i = phi i32 [ %i.y, %AllocKey.exit.i ], [ -173, %bb.c ]
  %i.ah = load ptr, ptr %i.g, align 16, !tbaa !129 ; 5 uses
  %.not.i56.i = icmp eq ptr %i.ah, null
  br i1 %.not.i56.i, label %FreeKey.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !56
  switch i32 %i.ai, label %.thread.i.i [
    i32 10, label %bb.o
    i32 37, label %bb.p
    i32 15, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.aj = call i32 @wc_FreeRsaKey(ptr noundef nonnull %i.ah) #27 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ak = call i32 @wc_ecc_free(ptr noundef nonnull %i.ah) #27 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.al = call i32 @wc_FreeDhKey(ptr noundef nonnull %i.ah) #27 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.pr.i.i = load ptr, ptr %i.g, align 16, !tbaa !129 ; 2 uses
  %.not13.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not13.i.i, label %bb.s, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.r, %bb.n
  %i.am = phi ptr [ %.pr.i.i, %bb.r ], [ %i.ah, %bb.n ]
  call void @wolfSSL_Free(ptr noundef nonnull %i.am) #27
  br label %bb.s

bb.s:                                             ; preds = %.thread.i.i, %bb.r
  store ptr null, ptr %i.g, align 16, !tbaa !129
  br label %FreeKey.exit.i

FreeKey.exit.i:                                   ; preds = %bb.s, %bb.m
  switch i8 %i.c, label %DecodePrivateKey_ex.exit [
    i8 3, label %bb.t
    i8 0, label %bb.t
  ]

bb.t:                                             ; preds = %FreeKey.exit.i, %FreeKey.exit.i
  store i32 37, ptr %i.f, align 8, !tbaa !56
  %i.an = call ptr @wolfSSL_Malloc(i64 noundef 4208) #27 ; 3 uses
  store ptr %i.an, ptr %i.g, align 16, !tbaa !129
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %DecodePrivateKey_ex.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !132
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !133
  %i.at = call i32 @wc_ecc_init_ex(ptr noundef nonnull %i.an, ptr noundef %i.aq, i32 noundef %i.as) #27 ; 3 uses
  %.not29.i60.i = icmp eq i32 %i.at, 0
  br i1 %.not29.i60.i, label %AllocKey.exit65.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = load ptr, ptr %i.g, align 16, !tbaa !129 ; 2 uses
  %.not.i.i61.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i61.i, label %DecodePrivateKey_ex.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = call i32 @wc_ecc_free(ptr noundef nonnull %i.au) #27 ; 0 uses
  %.pr.i.i62.i = load ptr, ptr %i.g, align 16, !tbaa !129 ; 2 uses
  %.not13.i.i63.i = icmp eq ptr %.pr.i.i62.i, null
  br i1 %.not13.i.i63.i, label %bb.x, label %.thread.i.i64.i

.thread.i.i64.i:                                  ; preds = %bb.w
  call void @wolfSSL_Free(ptr noundef nonnull %.pr.i.i62.i) #27
  br label %bb.x

bb.x:                                             ; preds = %.thread.i.i64.i, %bb.w
  store ptr null, ptr %i.g, align 16, !tbaa !129
  br label %DecodePrivateKey_ex.exit

AllocKey.exit65.i:                                ; preds = %bb.u
  store i32 0, ptr %i.a, align 4, !tbaa !56
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.ax = load ptr, ptr %i.g, align 16, !tbaa !129
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !79
  %i.ba = call i32 @wc_EccPrivateKeyDecode(ptr noundef %i.aw, ptr noundef nonnull %i.a, ptr noundef %i.ax, i32 noundef %i.az) #27 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.y, label %DecodePrivateKey_ex.exit

bb.y:                                             ; preds = %AllocKey.exit65.i
  %i.bc = load ptr, ptr %i.g, align 16, !tbaa !129
  %i.bd = call i32 @wc_ecc_size(ptr noundef %i.bc) #27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !126
  %i.bg = sext i16 %i.bf to i32
end_hunk_2
