Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@deflate_compress_fastest:bb.a
  %.0.copyload.i123.a = load i64, ptr %i.gq, align 1 ; 2 uses
  %i.gr = xor i64 %.0.copyload.i123.a, %.0.copyload.i124.a
  %.not54.i109 = icmp eq i64 %.0.copyload.i124.a, %.0.copyload.i123.a
  br i1 %.not54.i109, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  %.0.copyload.i122.a = load i64, ptr %i.gs, align 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.161, i64 20
  %.0.copyload.i121 = load i64, ptr %i.gt, align 1 ; 2 uses
  %i.gu = xor i64 %.0.copyload.i121, %.0.copyload.i122.a
  %.not55.i110 = icmp eq i64 %.0.copyload.i122.a, %.0.copyload.i121
  br i1 %.not55.i110, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %.0.copyload.i120 = load i64, ptr %i.gv, align 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.161, i64 28
  %.0.copyload.i119 = load i64, ptr %i.gw, align 1 ; 2 uses
  %i.gx = xor i64 %.0.copyload.i119, %.0.copyload.i120
  %.not56.i111 = icmp eq i64 %.0.copyload.i120, %.0.copyload.i119
  br i1 %.not56.i111, label %.preheader291, label %bb.am

.preheader291:                                    ; preds = %bb.ai, %bb.ae
  %.1.i101.ph = phi i32 [ 36, %bb.ai ], [ 4, %bb.ae ]
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader291, %bb.ak
  %.1.i101 = phi i32 [ %i.gy, %bb.ak ], [ %.1.i101.ph, %.preheader291 ] ; 6 uses
  %i.gy = add i32 %.1.i101, 8                     ; 2 uses
  %.not57.i102 = icmp ugt i32 %i.gy, %.359
  br i1 %.not57.i102, label %.preheader196, label %bb.ak

.preheader196:                                    ; preds = %bb.aj
  %i.gz = icmp ult i32 %.1.i101, %.359
  br i1 %i.gz, label %.lr.ph.preheader, label %ht_matchfinder_longest_match.exit

.lr.ph.preheader:                                 ; preds = %.preheader196
  %i.ha = zext nneg i32 %.1.i101 to i64
  %i.hb = zext nneg i32 %.359 to i64
  br label %.lr.ph

bb.ak:                                            ; preds = %bb.aj
  %i.hc = zext i32 %.1.i101 to i64                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hc
  %.0.copyload.i128 = load i64, ptr %i.hd, align 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.161, i64 %i.hc
  %.0.copyload.i127 = load i64, ptr %i.he, align 1 ; 2 uses
  %.not58.i103 = icmp eq i64 %.0.copyload.i128, %.0.copyload.i127
  br i1 %.not58.i103, label %bb.aj, label %.loopexit197, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %indvars.iv = phi i64 [ %i.ha, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.al ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !36
  %i.hh = getelementptr inbounds nuw i8, ptr %.161, i64 %indvars.iv
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !36
  %i.hj = icmp eq i8 %i.hg, %i.hi
  br i1 %i.hj, label %bb.al, label %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit

bb.al:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hb
  br i1 %exitcond.not, label %ht_matchfinder_longest_match.exit, label %.lr.ph, !llvm.loop !3

.loopexit197:                                     ; preds = %bb.ak
  %i.hk = xor i64 %.0.copyload.i127, %.0.copyload.i128
  br label %bb.am

bb.am:                                            ; preds = %.loopexit197, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.3.i104 = phi i32 [ 4, %bb.af ], [ 12, %bb.ag ], [ 20, %bb.ah ], [ 28, %bb.ai ], [ %.1.i101, %.loopexit197 ]
  %.0.i105 = phi i64 [ %i.go, %bb.af ], [ %i.gr, %bb.ag ], [ %i.gu, %bb.ah ], [ %i.gx, %bb.ai ], [ %i.hk, %.loopexit197 ]
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i105, i1 true)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = lshr i32 %i.hm, 3
  %i.ho = add i32 %i.hn, %.3.i104
  br label %ht_matchfinder_longest_match.exit

ht_matchfinder_longest_match.exit.loopexit.split.loop.exit: ; preds = %.lr.ph
  %i.hp = trunc nuw i64 %indvars.iv to i32
  br label %ht_matchfinder_longest_match.exit

ht_matchfinder_longest_match.exit:                ; preds = %bb.al, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit, %.preheader196, %bb.am, %lz_extend.exit99, %bb.r, %bb.s, %lz_extend.exit
  %.068.i = phi i32 [ %i.ho, %bb.am ], [ %.047.i93, %lz_extend.exit99 ], [ %.047.i93, %bb.s ], [ %.047.i93, %bb.r ], [ %spec.select.i, %lz_extend.exit ], [ %.1.i101, %.preheader196 ], [ %i.hp, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit ], [ %.359, %bb.al ] ; 7 uses
  %.067.i = phi ptr [ %i.gi, %bb.am ], [ %i.dh, %lz_extend.exit99 ], [ %i.dh, %bb.s ], [ %i.dh, %bb.r ], [ %spec.select77.i, %lz_extend.exit ], [ %i.gi, %.preheader196 ], [ %i.gi, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit ], [ %i.gi, %bb.al ]
  %.not = icmp eq i32 %.068.i, 0
  br i1 %.not, label %ht_matchfinder_longest_match.exit.thread, label %bb.an

bb.an:                                            ; preds = %ht_matchfinder_longest_match.exit
  %i.hq = ptrtoint ptr %.067.i to i64
  %i.hr = sub i64 %i.ai, %i.hq                    ; 2 uses
  %i.hs = trunc i64 %i.hr to i32                  ; 2 uses
  %i.ht = zext i32 %.068.i to i64                 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !36
  %i.hw = zext i8 %i.hv to i64
  %i.hx = sub i32 256, %i.hs
  %i.hy = lshr i32 %i.hx, 29                      ; 2 uses
  %i.hz = add i32 %i.hs, -1
  %i.ia = lshr i32 %i.hz, %i.hy
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @deflate_offset_slot, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !36
  %i.ie = zext i8 %i.id to i32
  %i.if = shl nuw nsw i32 %i.hy, 1
  %i.ig = add nuw nsw i32 %i.if, %i.ie            ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.hw
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1028 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !16
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !16
  %i.il = zext nneg i32 %i.ig to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !16
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !16
  %i.ip = shl nuw i32 %.068.i, 23
  %i.iq = load i32, ptr %.0160.ptr, align 4, !tbaa !43
  %i.ir = or i32 %i.iq, %i.ip
  store i32 %i.ir, ptr %.0160.ptr, align 4, !tbaa !43
  %i.is = trunc i64 %i.hr to i16
  %i.it = getelementptr inbounds nuw i8, ptr %.0160.ptr, i64 4
  store i16 %i.is, ptr %i.it, align 4, !tbaa !47
  %i.iu = trunc nuw nsw i32 %i.ig to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %.0160.ptr, i64 6
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !48
  %.0160.add = add nuw nsw i64 %.0160.idx, 8      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0160.add
  store i32 0, ptr %.ptr, align 4, !tbaa !43
  %i.iw = add i32 %.068.i, -1                     ; 3 uses
  %i.ix = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.iy = add nuw i32 %.068.i, 4
  %i.iz = zext i32 %i.iy to i64
  %i.ja = sub i64 %i.v, %i.ix
  %i.jb = icmp slt i64 %i.ja, %i.iz
  br i1 %i.jb, label %ht_matchfinder_skip_bytes.exit, label %bb.ao, !prof !44

bb.ao:                                            ; preds = %bb.an
  %i.jc = ptrtoint ptr %.3169 to i64
  %i.jd = sub i64 %i.ix, %i.jc
  %i.je = trunc i64 %i.jd to i32                  ; 3 uses
  %i.jf = add i32 %i.je, -32769
  %i.jg = add i32 %i.jf, %i.iw
  %i.jh = icmp ult i32 %i.jg, -32768
  br i1 %i.jh, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.ao, %.preheader
  %.015.i115 = phi i64 [ %i.kg, %.preheader ], [ 131072, %bb.ao ]
  %.0.i116 = phi ptr [ %i.kf, %.preheader ], [ %i.c, %bb.ao ] ; 10 uses
  %i.ji = load <8 x i16>, ptr %.0.i116, align 16, !tbaa !36
  %i.jj = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ji, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jj, ptr %.0.i116, align 16, !tbaa !36
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i116, i64 16 ; 2 uses
  %i.jl = load <8 x i16>, ptr %i.jk, align 16, !tbaa !36
  %i.jm = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jm, ptr %i.jk, align 16, !tbaa !36
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i116, i64 32 ; 2 uses
  %i.jo = load <8 x i16>, ptr %i.jn, align 16, !tbaa !36
  %i.jp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jo, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jp, ptr %i.jn, align 16, !tbaa !36
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i116, i64 48 ; 2 uses
  %i.jr = load <8 x i16>, ptr %i.jq, align 16, !tbaa !36
  %i.js = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jr, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.js, ptr %i.jq, align 16, !tbaa !36
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i116, i64 64 ; 2 uses
  %i.ju = load <8 x i16>, ptr %i.jt, align 16, !tbaa !36
  %i.jv = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ju, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jv, ptr %i.jt, align 16, !tbaa !36
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i116, i64 80 ; 2 uses
  %i.jx = load <8 x i16>, ptr %i.jw, align 16, !tbaa !36
  %i.jy = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jy, ptr %i.jw, align 16, !tbaa !36
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i116, i64 96 ; 2 uses
  %i.ka = load <8 x i16>, ptr %i.jz, align 16, !tbaa !36
  %i.kb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ka, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kb, ptr %i.jz, align 16, !tbaa !36
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i116, i64 112 ; 2 uses
  %i.kd = load <8 x i16>, ptr %i.kc, align 16, !tbaa !36
  %i.ke = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ke, ptr %i.kc, align 16, !tbaa !36
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i116, i64 128
  %i.kg = add nsw i64 %.015.i115, -128            ; 2 uses
  %.not.i117.1 = icmp eq i64 %i.kg, 0
  br i1 %.not.i117.1, label %matchfinder_rebase_sse2.exit118, label %.preheader, !llvm.loop !1

matchfinder_rebase_sse2.exit118:                  ; preds = %.preheader
  %i.kh = getelementptr inbounds nuw i8, ptr %.3169, i64 32768
  %i.ki = add i32 %i.je, -32768
  br label %bb.ap

bb.ap:                                            ; preds = %matchfinder_rebase_sse2.exit118, %bb.ao
  %.4170 = phi ptr [ %i.kh, %matchfinder_rebase_sse2.exit118 ], [ %.3169, %bb.ao ]
  %.031.i = phi i32 [ %i.ki, %matchfinder_rebase_sse2.exit118 ], [ %i.je, %bb.ao ] ; 3 uses
  %xtraiter = and i32 %i.iw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ap
  %i.kj = zext nneg i32 %i.cw to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kj ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %5 = load i16, ptr %i.kk, align 2, !tbaa !45
  store i16 %5, ptr %4, align 2, !tbaa !45
  %i.kl = trunc i32 %.031.i to i16
  store i16 %i.kl, ptr %i.kk, align 4, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  %.0.copyload.i77.prol = load i32, ptr %i.km, align 1
  %i.kn = mul i32 %.0.copyload.i77.prol, 506832829
  %i.ko = lshr i32 %i.kn, 17                      ; 2 uses
  %i.kp = add nsw i32 %.031.i, 1
  %i.kq = add i32 %.068.i, -2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ap
  %.lcssa.unr = phi i32 [ poison, %bb.ap ], [ %i.ko, %.prol.loopexit.unr-lcssa ]
  %.032.i.unr = phi ptr [ %i.cu, %bb.ap ], [ %i.km, %.prol.loopexit.unr-lcssa ]
  %.1.i.unr = phi i32 [ %.031.i, %bb.ap ], [ %i.kp, %.prol.loopexit.unr-lcssa ]
  %.030.i.unr = phi i32 [ %i.cw, %bb.ap ], [ %i.ko, %.prol.loopexit.unr-lcssa ]
  %.029.i.unr = phi i32 [ %i.iw, %bb.ap ], [ %i.kq, %.prol.loopexit.unr-lcssa ]
  %i.kr = icmp eq i32 %.068.i, 2
  br i1 %i.kr, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.032.i = phi ptr [ %i.lc, %.new ], [ %.032.i.unr, %.prol.loopexit ] ; 2 uses
  %.1.i = phi i32 [ %i.lf, %.new ], [ %.1.i.unr, %.prol.loopexit ] ; 3 uses
  %.030.i = phi i32 [ %i.le, %.new ], [ %.030.i.unr, %.prol.loopexit ]
  %.029.i = phi i32 [ %i.lg, %.new ], [ %.029.i.unr, %.prol.loopexit ]
  %i.ks = zext nneg i32 %.030.i to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %7 = load i16, ptr %i.kt, align 2, !tbaa !45
  store i16 %7, ptr %6, align 2, !tbaa !45
  %i.ku = trunc i32 %.1.i to i16
  store i16 %i.ku, ptr %i.kt, align 4, !tbaa !45
  %i.kv = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %.0.copyload.i77 = load i32, ptr %i.kv, align 1
  %i.kw = mul i32 %.0.copyload.i77, 506832829
  %i.kx = lshr i32 %i.kw, 17
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %9 = load i16, ptr %i.kz, align 2, !tbaa !45
  store i16 %9, ptr %8, align 2, !tbaa !45
  %i.la = trunc i32 %.1.i to i16
  %i.lb = add i16 %i.la, 1
  store i16 %i.lb, ptr %i.kz, align 4, !tbaa !45
  %i.lc = getelementptr inbounds nuw i8, ptr %.032.i, i64 2 ; 2 uses
  %.0.copyload.i77.1 = load i32, ptr %i.lc, align 1
  %i.ld = mul i32 %.0.copyload.i77.1, 506832829
  %i.le = lshr i32 %i.ld, 17                      ; 2 uses
  %i.lf = add nsw i32 %.1.i, 2
  %i.lg = add i32 %.029.i, -2                     ; 2 uses
  %.not.i74.1 = icmp eq i32 %i.lg, 0
  br i1 %.not.i74.1, label %.unr-lcssa, label %.new, !llvm.loop !118

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.le, %.new ] ; 2 uses
  %i.lh = zext nneg i32 %.lcssa to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lh
  tail call void @llvm.prefetch.p0(ptr nonnull %i.li, i32 1, i32 3, i32 1)
  br label %ht_matchfinder_skip_bytes.exit

ht_matchfinder_skip_bytes.exit:                   ; preds = %bb.an, %.unr-lcssa
  %.5 = phi ptr [ %.3169, %bb.an ], [ %.4170, %.unr-lcssa ]
  %.3165 = phi i32 [ %i.cw, %bb.an ], [ %.lcssa, %.unr-lcssa ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.161, i64 %i.ht
  br label %bb.aq

ht_matchfinder_longest_match.exit.thread:         ; preds = %bb.ac, %bb.ad, %bb.g, %ht_matchfinder_longest_match.exit
  %i.lk = load i8, ptr %.161, align 1, !tbaa !36
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !16
  %i.lo = add i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !16
  %i.lp = load i32, ptr %.0160.ptr, align 4, !tbaa !43
  %i.lq = add i32 %i.lp, 1
  store i32 %i.lq, ptr %.0160.ptr, align 4, !tbaa !43
  br label %bb.aq

bb.aq:                                            ; preds = %ht_matchfinder_longest_match.exit.thread, %ht_matchfinder_skip_bytes.exit
  %.2168.ph = phi ptr [ %.5, %ht_matchfinder_skip_bytes.exit ], [ %.3169, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.2164.ph = phi i32 [ %.3165, %ht_matchfinder_skip_bytes.exit ], [ %i.cw, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.1161.ph.idx = phi i64 [ %.0160.add, %ht_matchfinder_skip_bytes.exit ], [ %.0160.idx, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.464.ph = phi ptr [ %i.lj, %ht_matchfinder_skip_bytes.exit ], [ %i.cu, %ht_matchfinder_longest_match.exit.thread ] ; 3 uses
  %i.lr = icmp ult ptr %.464.ph, %.0.i
  %i.ls = icmp slt i64 %.1161.ph.idx, 202688
  %i.lt = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %i.lt, label %bb.c, label %.loopexit200, !llvm.loop !119

.loopexit200:                                     ; preds = %bb.aq, %.preheader199.prol.loopexit, %.preheader199.a
  %.3191 = phi i32 [ %.1, %.preheader199.prol.loopexit ], [ %.1, %.preheader199.a ], [ %.2, %bb.aq ]
  %.4189 = phi i32 [ 0, %.preheader199.prol.loopexit ], [ 0, %.preheader199.a ], [ %.359, %bb.aq ]
  %.464187 = phi ptr [ %i.bf, %.preheader199.a ], [ %.lcssa305.unr, %.preheader199.prol.loopexit ], [ %.464.ph, %bb.aq ] ; 3 uses
  %.2164184 = phi i32 [ %.1163, %.preheader199.prol.loopexit ], [ %.1163, %.preheader199.a ], [ %.2164.ph, %bb.aq ]
  %.2168182 = phi ptr [ %.1167, %.preheader199.prol.loopexit ], [ %.1167, %.preheader199.a ], [ %.2168.ph, %bb.aq ]
  %i.lu = ptrtoint ptr %.464187 to i64
  %i.lv = sub i64 %i.lu, %i.ae
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = icmp eq ptr %.464187, %i.u              ; 2 uses
  %i.ly = load i32, ptr %i.y, align 8, !tbaa !16
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.y, align 8, !tbaa !16
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.w, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.x, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.060, i32 noundef %i.lw, ptr noundef nonnull readonly %.ptr192, i1 noundef zeroext %i.lx)
  br i1 %i.lx, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %.loopexit200
  %i.ma = load i8, ptr %i.ad, align 8, !tbaa !52, !range !53, !noundef !54
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %.critedge, label %matchfinder_init_sse2.exit, !llvm.loop !120

.critedge:                                        ; preds = %.loopexit200, %bb.ar
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_greedy(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i = phi i64 [ 196608, %bb.a ], [ %i.u, %bb.b ]
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.t, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i, align 16, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256
  %i.u = add nsw i64 %.011.i.i, -256              ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.3, label %hc_matchfinder_init.exit.preheader, label %bb.b, !llvm.loop !0

hc_matchfinder_init.exit.preheader:               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.c, i32 258)
  %i.w = ptrtoint ptr %i.v to i64                 ; 4 uses
  %.ptr106 = getelementptr inbounds nuw i8, ptr %0, i64 268224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 71616 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 202688 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 240
end_hunk_0
