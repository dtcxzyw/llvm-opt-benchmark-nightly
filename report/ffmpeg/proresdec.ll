Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/proresdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_slice_thread:bb.a
bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.g
  %.0143 = phi i32 [ 1, %bb.g ], [ 2, %bb.f ], [ 2, %bb.f ], [ 2, %bb.f ], [ 2, %bb.f ] ; 2 uses
  %.0135 = phi i32 [ 4, %bb.g ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ], [ 5, %bb.f ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !54
  %i.fo = shl i32 %i.fn, 4                        ; 2 uses
  %i.fp = mul i32 %i.fo, %.0142
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !53 ; 2 uses
  %i.fs = shl i32 %i.fr, 5
  %i.ft = add i32 %i.fp, %i.fs                    ; 4 uses
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !124
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !124
  %i.fz = mul i32 %i.fo, %.0141
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = shl i32 %i.fr, %.0135
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ga
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gd ; 3 uses
  br i1 %i.fa, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !47
  %i.gn = lshr i32 %i.gm, 4
  %.lobit = and i32 %i.gn, 1
  %.not151 = icmp eq i32 %i.gk, %.lobit
  br i1 %.not151, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.go = sext i32 %i.fc to i64
  %i.gp = getelementptr inbounds i8, ptr %i.fw, i64 %i.go
  %i.gq = sext i32 %i.fj to i64
  %i.gr = getelementptr inbounds i8, ptr %i.ge, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !60
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gi, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !60
  %i.gy = add nsw i32 %i.gx, %i.ft
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0139 = phi i32 [ %i.gy, %bb.j ], [ %i.ft, %bb.i ], [ %i.ft, %bb.h ]
  %.0138 = phi ptr [ %i.gp, %bb.j ], [ %i.fw, %bb.i ], [ %i.fw, %bb.h ]
  %.0137 = phi ptr [ %i.gr, %bb.j ], [ %i.ge, %bb.i ], [ %i.ge, %bb.h ]
  %.0136 = phi ptr [ %i.gv, %bb.j ], [ %i.gi, %bb.i ], [ %i.gi, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.gz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !55
  %i.hb = shl i32 %i.ha, 2                        ; 8 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %wide.trip.count.i = zext nneg i32 %i.hb to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.he = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.hf = shl i32 %i.he, 6
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.hg
  call void %i.hd(ptr noundef nonnull %i.hh) #9, !inline_history !115
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !116

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %i.hi = shl nuw nsw i32 %i.ac, 3                ; 3 uses
  %i.hj = add nuw nsw i32 %i.hi, 8                ; 9 uses
  %i.hk = load i64, ptr %i.ex, align 1, !tbaa !38
  %i.hl = call noundef i64 @llvm.bswap.i64(i64 %i.hk) ; 2 uses
  %i.hm = lshr i64 %i.hl, 32
  %i.hn = trunc nuw i64 %i.hm to i32              ; 4 uses
  %.not.i76.i = icmp ult i64 %i.hl, 281474976710656 ; 2 uses
  %i.ho = lshr i32 %i.hn, 16
  %spec.select.i77.i = select i1 %.not.i76.i, i32 %i.hn, i32 %i.ho ; 3 uses
  %spec.select12.i78.i = select i1 %.not.i76.i, i32 0, i32 16 ; 2 uses
  %.not11.i79.i = icmp samesign ult i32 %spec.select.i77.i, 256 ; 2 uses
  %i.hp = lshr i32 %spec.select.i77.i, 8
  %i.hq = or disjoint i32 %spec.select12.i78.i, 8
  %.110.i80.i = select i1 %.not11.i79.i, i32 %spec.select.i77.i, i32 %i.hp
  %.1.i81.i = select i1 %.not11.i79.i, i32 %spec.select12.i78.i, i32 %i.hq
  %i.hr = zext nneg i32 %.110.i80.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !38
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nuw nsw i32 %.1.i81.i, %i.hu        ; 2 uses
  %.not.i.i = icmp eq i32 %i.hv, 31
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.hw = shl nuw nsw i32 %i.hv, 1                ; 2 uses
  %i.hx = sub nsw i32 68, %i.hw                   ; 2 uses
  %i.hy = icmp ugt i32 %i.hx, 31
  br i1 %i.hy, label %decode_slice_luma.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hz = add nsw i32 %i.hw, -36
  %i.ia = lshr i32 %i.hn, %i.hz
  %i.ib = add i32 %i.ia, -32
  %i.ic = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.hx)
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i
  %i.id = lshr i32 %i.hn, 26
  %i.ie = and i32 %i.id, 31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1133.i.i = phi i32 [ %i.ie, %bb.n ], [ %i.ib, %bb.m ] ; 2 uses
  %.1128.i.i = phi i32 [ 6, %bb.n ], [ %i.ic, %bb.m ] ; 2 uses
  %i.if = lshr i32 %.1133.i.i, 1
  %i.ig = and i32 %.1133.i.i, 1
  %i.ih = sub nsw i32 0, %i.ig
  %i.ii = xor i32 %i.if, %i.ih                    ; 2 uses
  %i.ij = trunc i32 %i.ii to i16
  store i16 %i.ij, ptr %i.b, align 16, !tbaa !66
  %i.ik = icmp sgt i32 %i.hb, 1
  br i1 %i.ik, label %.lr.ph104.preheader.i, label %decode_dc_coeffs.exit.i

.lr.ph104.preheader.i:                            ; preds = %bb.o
  %.0142.i96.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  br label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %bb.u, %.lr.ph104.preheader.i
  %.0142.i102.i = phi ptr [ %.0142.i.i, %bb.u ], [ %.0142.i96.i, %.lr.ph104.preheader.i ] ; 2 uses
  %.2.i101.i = phi i32 [ %.162.i.i, %bb.u ], [ %.1128.i.i, %.lr.ph104.preheader.i ] ; 5 uses
  %.0129.i100.i = phi i32 [ %.1130.i.i, %bb.u ], [ 0, %.lr.ph104.preheader.i ]
  %.0131.i99.i = phi i32 [ %i.kp, %bb.u ], [ 1, %.lr.ph104.preheader.i ]
  %.2134.i98.i = phi i32 [ %.4136.i.i, %bb.u ], [ 5, %.lr.ph104.preheader.i ]
  %.0137.i97.i = phi i32 [ %i.kn, %bb.u ], [ %i.ii, %.lr.ph104.preheader.i ]
  %i.il = lshr i32 %.2.i101.i, 3
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.im
  %i.io = load i64, ptr %i.in, align 1, !tbaa !38
  %i.ip = call noundef i64 @llvm.bswap.i64(i64 %i.io)
  %i.iq = and i32 %.2.i101.i, 7
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl i64 %i.ip, %i.ir                    ; 2 uses
  %i.it = lshr i64 %i.is, 32
  %i.iu = trunc nuw i64 %i.it to i32              ; 4 uses
  %i.iv = call i32 @llvm.umin.i32(i32 %.2134.i98.i, i32 6)
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @dc_codebook, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !38
  %i.iz = zext i8 %i.iy to i32                    ; 3 uses
  %i.ja = and i32 %i.iz, 3                        ; 3 uses
  %i.jb = lshr i32 %i.iz, 5                       ; 4 uses
  %i.jc = lshr i32 %i.iz, 2
  %i.jd = and i32 %i.jc, 7                        ; 2 uses
  %.not.i70.i = icmp ult i64 %i.is, 281474976710656 ; 2 uses
  %i.je = lshr i32 %i.iu, 16
  %spec.select.i71.i = select i1 %.not.i70.i, i32 %i.iu, i32 %i.je ; 3 uses
  %spec.select12.i72.i = select i1 %.not.i70.i, i32 0, i32 16 ; 2 uses
  %.not11.i73.i = icmp samesign ult i32 %spec.select.i71.i, 256 ; 2 uses
  %i.jf = lshr i32 %spec.select.i71.i, 8
  %i.jg = or disjoint i32 %spec.select12.i72.i, 8
  %.110.i74.i = select i1 %.not11.i73.i, i32 %spec.select.i71.i, i32 %i.jf
  %.1.i75.i = select i1 %.not11.i73.i, i32 %spec.select12.i72.i, i32 %i.jg
  %i.jh = zext nneg i32 %.110.i74.i to i64
  %i.ji = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !38
  %i.jk = zext i8 %i.jj to i32
  %i.jl = add nuw nsw i32 %.1.i75.i, %i.jk        ; 3 uses
  %i.jm = sub nsw i32 31, %i.jl                   ; 4 uses
  %i.jn = icmp ugt i32 %i.jm, %i.ja
  br i1 %i.jn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph104.i
  %i.jo = sub nsw i32 %i.jd, %i.ja
  %i.jp = shl nsw i32 %i.jm, 1
  %i.jq = add nsw i32 %i.jp, %i.jo                ; 3 uses
  %i.jr = icmp ugt i32 %i.jq, 31
  br i1 %i.jr, label %decode_slice_luma.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.js = sub nuw nsw i32 32, %i.jq
  %i.jt = lshr i32 %i.iu, %i.js
  %.neg.i.i = shl nsw i32 -1, %i.jd
  %i.ju = add nuw nsw i32 %i.ja, 1
  %i.jv = shl nuw nsw i32 %i.ju, %i.jb
  %i.jw = add nsw i32 %i.jv, %.neg.i.i
  %i.jx = add i32 %i.jw, %i.jt
  %i.jy = add nuw nsw i32 %i.jq, %.2.i101.i
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph104.i
  %.not159.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not159.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jz = sub nsw i32 32, %i.jl                   ; 2 uses
  %i.ka = shl i32 %i.iu, %i.jz
  %i.kb = add nsw i32 %i.jz, %.2.i101.i
  %.161.i.i = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.kb)
  %i.kc = call i32 @llvm.fshl.i32(i32 %i.jm, i32 %i.ka, i32 %i.jb)
  %i.kd = add nuw nsw i32 %.161.i.i, %i.jb
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %reass.sub.i.i = add nuw nsw i32 %.2.i101.i, 32
  %i.ke = sub nsw i32 %reass.sub.i.i, %i.jl
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.sink.i = phi i32 [ %i.ke, %bb.t ], [ %i.kd, %bb.s ], [ %i.jy, %bb.q ]
  %.4136.i.i = phi i32 [ %i.jm, %bb.t ], [ %i.kc, %bb.s ], [ %i.jx, %bb.q ] ; 4 uses
  %.162.i.i = call i32 @llvm.umin.i32(i32 %i.hj, i32 %.sink.i) ; 2 uses
  %.not160.i.i = icmp eq i32 %.4136.i.i, 0
  %i.kf = and i32 %.4136.i.i, 1
  %i.kg = sub nsw i32 0, %i.kf
  %i.kh = xor i32 %.0129.i100.i, %i.kg
  %.1130.i.i = select i1 %.not160.i.i, i32 0, i32 %i.kh ; 3 uses
  %i.ki = add nsw i32 %.4136.i.i, 1
  %i.kj = ashr i32 %i.ki, 1
  %i.kk = xor i32 %.1130.i.i, %i.kj
  %i.kl = sub nsw i32 %i.kk, %.1130.i.i
  %sext.i.i = shl i32 %.0137.i97.i, 16
  %i.km = ashr exact i32 %sext.i.i, 16
  %i.kn = add nsw i32 %i.kl, %i.km                ; 2 uses
  %i.ko = trunc i32 %i.kn to i16
  store i16 %i.ko, ptr %.0142.i102.i, align 2, !tbaa !66
  %i.kp = add nuw nsw i32 %.0131.i99.i, 1         ; 2 uses
  %.0142.i.i = getelementptr inbounds nuw i8, ptr %.0142.i102.i, i64 128
  %exitcond120.not.i = icmp eq i32 %i.kp, %i.hb
  br i1 %exitcond120.not.i, label %decode_dc_coeffs.exit.i, label %.lr.ph104.i, !llvm.loop !0

decode_dc_coeffs.exit.i:                          ; preds = %bb.u, %bb.o
  %.2.i.lcssa.i = phi i32 [ %.1128.i.i, %bb.o ], [ %.162.i.i, %bb.u ] ; 4 uses
  %.not.i64.i = icmp ult i32 %i.hb, 65536         ; 2 uses
  %i.kq = lshr i32 %i.hb, 16
  %spec.select.i65.i = select i1 %.not.i64.i, i32 %i.hb, i32 %i.kq ; 3 uses
  %spec.select12.i66.i = select i1 %.not.i64.i, i32 0, i32 16 ; 2 uses
  %.not11.i67.i = icmp samesign ult i32 %spec.select.i65.i, 256 ; 2 uses
  %i.kr = lshr i32 %spec.select.i65.i, 8
  %i.ks = or disjoint i32 %spec.select12.i66.i, 8
  %.110.i68.i = select i1 %.not11.i67.i, i32 %spec.select.i65.i, i32 %i.kr
  %.1.i69.i = select i1 %.not11.i67.i, i32 %spec.select12.i66.i, i32 %i.ks
  %i.kt = zext nneg i32 %.110.i68.i to i64
  %i.ku = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !38
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add nuw nsw i32 %.1.i69.i, %i.kw        ; 2 uses
  %i.ky = shl i32 64, %i.kx                       ; 2 uses
  %i.kz = add nsw i32 %i.hb, -1                   ; 2 uses
  %i.la = sub nsw i32 %i.hi, %.2.i.lcssa.i        ; 2 uses
  %i.lb = icmp slt i32 %i.la, 1
  br i1 %i.lb, label %decode_ac_coeffs.exit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %decode_dc_coeffs.exit.i
  %i.lc = lshr i32 %.2.i.lcssa.i, 3
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 1, !tbaa !38
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %i.lf)
  %i.lh = and i32 %.2.i.lcssa.i, 7
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl i64 %i.lg, %i.li
  %i.lk = lshr i64 %i.lj, 32
  %i.ll = trunc nuw i64 %i.lk to i32
  %i.lm = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 432
  br label %bb.v

bb.v:                                             ; preds = %bb.ak, %.lr.ph110.i
  %i.lo = phi i32 [ %i.la, %.lr.ph110.i ], [ %i.qe, %bb.ak ] ; 2 uses
  %.0159.i109.i = phi i32 [ %i.ll, %.lr.ph110.i ], [ %i.po, %bb.ak ]
  %.0161.i108.i = phi i32 [ %.2.i.lcssa.i, %.lr.ph110.i ], [ %i.pq, %bb.ak ] ; 5 uses
  %.0164.i107.i = phi i32 [ 2, %.lr.ph110.i ], [ %i.pl, %bb.ak ]
  %.0167.i106.i = phi i32 [ 4, %.lr.ph110.i ], [ %.2169.i.i, %bb.ak ]
  %.0170.i105.i = phi i32 [ %i.kz, %.lr.ph110.i ], [ %i.nn, %bb.ak ]
  %i.lp = icmp samesign ult i32 %i.lo, 32
  br i1 %i.lp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lq = sub nuw nsw i32 32, %i.lo
  %i.lr = lshr i32 %.0159.i109.i, %i.lq
  %.not.i56.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i56.i, label %decode_ac_coeffs.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ls = lshr i32 %.0161.i108.i, 3
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.lt
  %i.lv = load i64, ptr %i.lu, align 1, !tbaa !38
  %i.lw = call noundef i64 @llvm.bswap.i64(i64 %i.lv)
  %i.lx = and i32 %.0161.i108.i, 7
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = shl i64 %i.lw, %i.ly                    ; 2 uses
  %i.ma = lshr i64 %i.lz, 32
  %i.mb = trunc nuw i64 %i.ma to i32              ; 4 uses
  %i.mc = call i32 @llvm.umin.i32(i32 %.0167.i106.i, i32 15)
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr @run_to_cb, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !38
  %i.mg = zext i8 %i.mf to i32                    ; 3 uses
  %i.mh = and i32 %i.mg, 3                        ; 3 uses
  %i.mi = lshr i32 %i.mg, 5                       ; 4 uses
  %i.mj = lshr i32 %i.mg, 2
  %i.mk = and i32 %i.mj, 7                        ; 2 uses
  %.not.i58.i = icmp ult i64 %i.lz, 281474976710656 ; 2 uses
  %i.ml = lshr i32 %i.mb, 16
  %spec.select.i59.i = select i1 %.not.i58.i, i32 %i.mb, i32 %i.ml ; 3 uses
  %spec.select12.i60.i = select i1 %.not.i58.i, i32 0, i32 16 ; 2 uses
  %.not11.i61.i = icmp samesign ult i32 %spec.select.i59.i, 256 ; 2 uses
  %i.mm = lshr i32 %spec.select.i59.i, 8
  %i.mn = or disjoint i32 %spec.select12.i60.i, 8
  %.110.i62.i = select i1 %.not11.i61.i, i32 %spec.select.i59.i, i32 %i.mm
  %.1.i63.i = select i1 %.not11.i61.i, i32 %spec.select12.i60.i, i32 %i.mn
  %i.mo = zext nneg i32 %.110.i62.i to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !38
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add nuw nsw i32 %.1.i63.i, %i.mr        ; 3 uses
  %i.mt = sub nsw i32 31, %i.ms                   ; 4 uses
  %i.mu = icmp ugt i32 %i.mt, %i.mh
  br i1 %i.mu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.mv = sub nsw i32 %i.mk, %i.mh
  %i.mw = shl nsw i32 %i.mt, 1
  %i.mx = add nsw i32 %i.mw, %i.mv                ; 3 uses
  %i.my = icmp ugt i32 %i.mx, 31
  br i1 %i.my, label %decode_slice_luma.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mz = sub nuw nsw i32 32, %i.mx
  %i.na = lshr i32 %i.mb, %i.mz
  %.neg.i55.i = shl nsw i32 -1, %i.mk
  %i.nb = add nuw nsw i32 %i.mh, 1
  %i.nc = shl nuw nsw i32 %i.nb, %i.mi
  %i.nd = add nsw i32 %i.nc, %.neg.i55.i
  %i.ne = add i32 %i.nd, %i.na
  %i.nf = add nuw nsw i32 %i.mx, %.0161.i108.i
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %.not197.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not197.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ng = sub nsw i32 32, %i.ms                   ; 2 uses
  %i.nh = shl i32 %i.mb, %i.ng
  %i.ni = add nsw i32 %i.ng, %.0161.i108.i
  %..i51.i = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.ni)
  %i.nj = call i32 @llvm.fshl.i32(i32 %i.mt, i32 %i.nh, i32 %i.mi)
  %i.nk = add nuw nsw i32 %..i51.i, %i.mi
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %reass.sub.i54.i = add nuw nsw i32 %.0161.i108.i, 32
  %i.nl = sub nsw i32 %reass.sub.i54.i, %i.ms
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.z
  %.sink147.i = phi i32 [ %i.nl, %bb.ac ], [ %i.nk, %bb.ab ], [ %i.nf, %bb.z ]
  %.2169.i.i = phi i32 [ %i.mt, %bb.ac ], [ %i.nj, %bb.ab ], [ %i.ne, %bb.z ] ; 2 uses
  %.201.i.i = call i32 @llvm.umin.i32(i32 %i.hj, i32 %.sink147.i) ; 4 uses
  %i.nm = add i32 %.0170.i105.i, 1
  %i.nn = add i32 %i.nm, %.2169.i.i               ; 5 uses
  %.not198.i.i = icmp ult i32 %i.nn, %i.ky
  br i1 %.not198.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.nn, i32 noundef %i.ky) #9
  br label %decode_slice_luma.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.no = lshr i32 %.201.i.i, 3
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.np
  %i.nr = load i64, ptr %i.nq, align 1, !tbaa !38
  %i.ns = call noundef i64 @llvm.bswap.i64(i64 %i.nr)
  %i.nt = and i32 %.201.i.i, 7
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl i64 %i.ns, %i.nu                    ; 2 uses
  %i.nw = lshr i64 %i.nv, 32
  %i.nx = trunc nuw i64 %i.nw to i32              ; 5 uses
  %i.ny = call i32 @llvm.umin.i32(i32 %.0164.i107.i, i32 9)
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @lev_to_cb, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !38
  %i.oc = zext i8 %i.ob to i32                    ; 3 uses
  %i.od = and i32 %i.oc, 3                        ; 3 uses
  %i.oe = lshr i32 %i.oc, 5                       ; 5 uses
  %i.of = lshr i32 %i.oc, 2
  %i.og = and i32 %i.of, 7                        ; 2 uses
  %.not.i57.i = icmp ult i64 %i.nv, 281474976710656 ; 2 uses
  %i.oh = lshr i32 %i.nx, 16
  %spec.select.i.i = select i1 %.not.i57.i, i32 %i.nx, i32 %i.oh ; 3 uses
  %spec.select12.i.i = select i1 %.not.i57.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.oi = lshr i32 %spec.select.i.i, 8
  %i.oj = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.oi
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.oj
  %i.ok = zext nneg i32 %.110.i.i to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !38
  %i.on = zext i8 %i.om to i32
  %i.oo = add nuw nsw i32 %.1.i.i, %i.on          ; 2 uses
  %i.op = sub nsw i32 31, %i.oo                   ; 4 uses
  %i.oq = icmp ugt i32 %i.op, %i.od
  br i1 %i.oq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.or = sub nsw i32 %i.og, %i.od
  %i.os = shl nsw i32 %i.op, 1
  %i.ot = add nsw i32 %i.os, %i.or                ; 4 uses
  %i.ou = icmp ugt i32 %i.ot, 31
  br i1 %i.ou, label %decode_slice_luma.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ov = sub nuw nsw i32 32, %i.ot
  %i.ow = lshr i32 %i.nx, %i.ov
  %.neg200.i.i = shl nsw i32 -1, %i.og
  %i.ox = add nuw nsw i32 %i.od, 1
  %i.oy = shl nuw nsw i32 %i.ox, %i.oe
  %i.oz = add nsw i32 %i.oy, %.neg200.i.i
  %i.pa = add i32 %i.oz, %i.ow
  %i.pb = shl i32 %i.nx, %i.ot
  %i.pc = add nuw nsw i32 %i.ot, %.201.i.i
  %i.pd = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.pc)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %.not199.i.i = icmp eq i32 %i.oe, 0
  %i.pe = sub nsw i32 32, %i.oo                   ; 2 uses
  %i.pf = shl i32 %i.nx, %i.pe                    ; 3 uses
  %i.pg = add nuw nsw i32 %i.pe, %.201.i.i
  %.203.i.i = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.pg) ; 2 uses
  br i1 %.not199.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ph = call i32 @llvm.fshl.i32(i32 %i.op, i32 %i.pf, i32 %i.oe)
  %i.pi = shl i32 %i.pf, %i.oe
  %i.pj = add nuw nsw i32 %.203.i.i, %i.oe
  %i.pk = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.pj)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.2166.i.i = phi i32 [ %i.ph, %bb.aj ], [ %i.pa, %bb.ah ], [ %i.op, %bb.ai ]
  %.4.i52.i = phi i32 [ %i.pk, %bb.aj ], [ %i.pd, %bb.ah ], [ %.203.i.i, %bb.ai ]
  %.2.i53.i = phi i32 [ %i.pi, %bb.aj ], [ %i.pb, %bb.ah ], [ %i.pf, %bb.ai ] ; 2 uses
  %i.pl = add i32 %.2166.i.i, 1                   ; 2 uses
  %i.pm = lshr i32 %i.nn, %i.kx
  %i.pn = ashr i32 %.2.i53.i, 31                  ; 2 uses
  %i.po = shl i32 %.2.i53.i, 1
  %i.pp = add nuw nsw i32 %.4.i52.i, 1
  %i.pq = call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.pp) ; 2 uses
  %i.pr = xor i32 %i.pn, %i.pl
  %i.ps = sub i32 %i.pr, %i.pn
  %i.pt = trunc i32 %i.ps to i16
  %i.pu = and i32 %i.nn, %i.kz
  %i.pv = shl i32 %i.pu, 6
  %i.pw = load ptr, ptr %i.ln, align 8, !tbaa !42
  %i.px = sext i32 %i.pm to i64
  %i.py = getelementptr inbounds i8, ptr %i.pw, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !38
  %i.qa = zext i8 %i.pz to i32
  %i.qb = add i32 %i.pv, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.qc
  store i16 %i.pt, ptr %i.qd, align 2, !tbaa !66
  %i.qe = sub nsw i32 %i.hi, %i.pq                ; 2 uses
  %i.qf = icmp slt i32 %i.qe, 1
  br i1 %i.qf, label %decode_ac_coeffs.exit.i, label %bb.v

decode_ac_coeffs.exit.i:                          ; preds = %bb.ak, %bb.w, %decode_dc_coeffs.exit.i
  %i.qg = load i32, ptr %i.gz, align 8, !tbaa !55
  %.not116.i = icmp eq i32 %i.qg, 0
  br i1 %.not116.i, label %.loopexit, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %decode_ac_coeffs.exit.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 4 uses
  %i.qi = sext i32 %.0142 to i64                  ; 4 uses
  %i.qj = shl nsw i32 %.0142, 2
  %i.qk = sext i32 %i.qj to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph115.i
  %.1114.i = phi i32 [ 0, %.lr.ph115.i ], [ %i.qx, %bb.al ]
  %.045113.i = phi ptr [ %i.b, %.lr.ph115.i ], [ %i.qv, %bb.al ] ; 5 uses
  %.047112.i = phi ptr [ %.0138, %.lr.ph115.i ], [ %i.qw, %bb.al ] ; 4 uses
  %i.ql = load ptr, ptr %i.qh, align 8, !tbaa !69
  call void %i.ql(ptr noundef %.047112.i, i64 noundef %i.qi, ptr noundef nonnull %.045113.i, ptr noundef nonnull %i.c) #9, !inline_history !115
  %i.qm = load ptr, ptr %i.qh, align 8, !tbaa !69
  %i.qn = getelementptr inbounds nuw i8, ptr %.047112.i, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.045113.i, i64 128
  call void %i.qm(ptr noundef nonnull %i.qn, i64 noundef %i.qi, ptr noundef nonnull %i.qo, ptr noundef nonnull %i.c) #9, !inline_history !115
  %i.qp = load ptr, ptr %i.qh, align 8, !tbaa !69
  %i.qq = getelementptr inbounds [2 x i8], ptr %.047112.i, i64 %i.qk ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.045113.i, i64 256
  call void %i.qp(ptr noundef %i.qq, i64 noundef %i.qi, ptr noundef nonnull %i.qr, ptr noundef nonnull %i.c) #9, !inline_history !115
  %i.qs = load ptr, ptr %i.qh, align 8, !tbaa !69
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %.045113.i, i64 384
  call void %i.qs(ptr noundef nonnull %i.qt, i64 noundef %i.qi, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.c) #9, !inline_history !115
  %i.qv = getelementptr inbounds nuw i8, ptr %.045113.i, i64 512
  %i.qw = getelementptr inbounds nuw i8, ptr %.047112.i, i64 32
  %i.qx = add nuw nsw i32 %.1114.i, 1             ; 2 uses
  %i.qy = load i32, ptr %i.gz, align 8, !tbaa !55
  %i.qz = icmp ult i32 %i.qx, %i.qy
  br i1 %i.qz, label %bb.al, label %.loopexit, !llvm.loop !117

decode_slice_luma.exit.thread:                    ; preds = %bb.p, %bb.y, %bb.ag, %bb.ae, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.as

.loopexit:                                        ; preds = %bb.al, %decode_ac_coeffs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !125
  %i.rc = and i32 %i.rb, 8192
  %.not152 = icmp eq i32 %i.rc, 0
  br i1 %.not152, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.loopexit
  %i.rd = zext i16 %i.ab to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.rd ; 2 uses
  %i.rf = call fastcc i32 @decode_slice_chroma(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef %.0137, i32 noundef %.0141, ptr noundef nonnull %i.re, i32 noundef %i.ag, ptr noundef %i.d, i32 noundef %.0143) ; 2 uses
  %i.rg = icmp slt i32 %i.rf, 0
  br i1 %i.rg, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rh = zext i16 %i.af to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rh
  %i.rj = call fastcc i32 @decode_slice_chroma(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef %.0136, i32 noundef %.0141, ptr noundef nonnull %i.ri, i32 noundef %.0140163210, ptr noundef %i.d, i32 noundef %.0143) ; 2 uses
  %i.rk = icmp slt i32 %i.rj, 0
  br i1 %i.rk, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.rl = getelementptr inbounds nuw i8, ptr %i.f, i64 444 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !41 ; 2 uses
  %.not153 = icmp eq i32 %i.rm, 0
  br i1 %.not153, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !124 ; 2 uses
  %i.rp = icmp ne ptr %i.ro, null
  %i.rq = icmp ne i32 %i.ai, %.pre-phi174209
  %or.cond5 = select i1 %i.rp, i1 %i.rq, i1 false
  br i1 %or.cond5, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rr = sext i32 %.0139 to i64
  %i.rs = getelementptr inbounds i8, ptr %i.ro, i64 %i.rr ; 2 uses
  %i.rt = zext i16 %i.ab to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.rt
  %i.rv = zext i16 %i.af to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rv
  %i.rx = zext nneg i32 %.0140163210 to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx
  %i.rz = load i32, ptr %i.gz, align 8, !tbaa !55 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.sa = shl i32 %i.rz, 2                        ; 2 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph.preheader.i156, label %decode_slice_alpha.exit

.lr.ph.preheader.i156:                            ; preds = %bb.aq
  %wide.trip.count.i157 = zext nneg i32 %i.sa to i64
  br label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.lr.ph.i158, %.lr.ph.preheader.i156
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.preheader.i156 ], [ %indvars.iv.next.i160, %.lr.ph.i158 ] ; 2 uses
  %i.sc = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.sd = trunc nuw nsw i64 %indvars.iv.i159 to i32
  %i.se = shl i32 %i.sd, 6
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.sf
  call void %i.sc(ptr noundef nonnull %i.sg) #9, !inline_history !118
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i157
  br i1 %exitcond.not.i161, label %decode_slice_alpha.exit.loopexit, label %.lr.ph.i158, !llvm.loop !119

decode_slice_alpha.exit.loopexit:                 ; preds = %.lr.ph.i158
  %.pre = load i32, ptr %i.rl, align 4, !tbaa !41
  br label %decode_slice_alpha.exit

decode_slice_alpha.exit:                          ; preds = %decode_slice_alpha.exit.loopexit, %bb.aq
  %i.sh = phi i32 [ %.pre, %decode_slice_alpha.exit.loopexit ], [ %i.rm, %bb.aq ]
  %or.cond.i.i = icmp ult i32 %i.ax, 2147483135   ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.ry, ptr null
  %.013.i.i = select i1 %or.cond.i.i, i32 %i.ax, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !62
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i.i, ptr %i.si, align 4, !tbaa !67
  %i.sj = add nuw nsw i32 %.013.i.i, 8
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.sj, ptr %i.sk, align 8, !tbaa !63
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.sl, align 8, !tbaa !64
  %i.sm = icmp eq i32 %i.sh, 2
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !37
  %i.sp = shl nsw i32 %i.rz, 8
  %..i155 = select i1 %i.sm, i32 16, i32 8
  call void %i.so(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef %i.sp, i32 noundef %..i155) #9, !inline_history !118
  %i.sq = shl nsw i32 %i.rz, 4
  %i.sr = sext i32 %i.sq to i64                   ; 16 uses
  %i.ss = shl nsw i64 %i.sr, 1                    ; 16 uses
  %i.st = ashr i32 %.0142, 1
  %i.su = sext i32 %i.st to i64                   ; 15 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.rs, ptr nonnull align 16 %i.a, i64 %i.ss, i1 false)
  %i.sv = getelementptr inbounds [2 x i8], ptr %i.rs, i64 %i.su ; 2 uses
  %i.sw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.sv, ptr nonnull align 16 %i.sw, i64 %i.ss, i1 false)
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.sv, i64 %i.su ; 2 uses
  %i.sy = getelementptr inbounds [2 x i8], ptr %i.sw, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.sx, ptr nonnull align 16 %i.sy, i64 %i.ss, i1 false)
  %i.sz = getelementptr inbounds [2 x i8], ptr %i.sx, i64 %i.su ; 2 uses
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sy, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.sz, ptr nonnull align 16 %i.ta, i64 %i.ss, i1 false)
  %i.tb = getelementptr inbounds [2 x i8], ptr %i.sz, i64 %i.su ; 2 uses
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.tb, ptr nonnull align 16 %i.tc, i64 %i.ss, i1 false)
  %i.td = getelementptr inbounds [2 x i8], ptr %i.tb, i64 %i.su ; 2 uses
  %i.te = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.td, ptr nonnull align 2 %i.te, i64 %i.ss, i1 false)
  %i.tf = getelementptr inbounds [2 x i8], ptr %i.td, i64 %i.su ; 2 uses
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.te, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tf, ptr align 2 %i.tg, i64 %i.ss, i1 false)
  %i.th = getelementptr inbounds [2 x i8], ptr %i.tf, i64 %i.su ; 2 uses
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tg, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.th, ptr align 2 %i.ti, i64 %i.ss, i1 false)
  %i.tj = getelementptr inbounds [2 x i8], ptr %i.th, i64 %i.su ; 2 uses
  %i.tk = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tj, ptr align 2 %i.tk, i64 %i.ss, i1 false)
  %i.tl = getelementptr inbounds [2 x i8], ptr %i.tj, i64 %i.su ; 2 uses
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tl, ptr align 2 %i.tm, i64 %i.ss, i1 false)
  %i.tn = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.su ; 2 uses
  %i.to = getelementptr inbounds [2 x i8], ptr %i.tm, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tn, ptr align 2 %i.to, i64 %i.ss, i1 false)
  %i.tp = getelementptr inbounds [2 x i8], ptr %i.tn, i64 %i.su ; 2 uses
  %i.tq = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tp, ptr align 2 %i.tq, i64 %i.ss, i1 false)
  %i.tr = getelementptr inbounds [2 x i8], ptr %i.tp, i64 %i.su ; 2 uses
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.tq, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tr, ptr align 2 %i.ts, i64 %i.ss, i1 false)
  %i.tt = getelementptr inbounds [2 x i8], ptr %i.tr, i64 %i.su ; 2 uses
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.ts, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tt, ptr align 2 %i.tu, i64 %i.ss, i1 false)
  %i.tv = getelementptr inbounds [2 x i8], ptr %i.tt, i64 %i.su ; 2 uses
  %i.tw = getelementptr inbounds [2 x i8], ptr %i.tu, i64 %i.sr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tv, ptr align 2 %i.tw, i64 %i.ss, i1 false)
  %i.tx = getelementptr inbounds [2 x i8], ptr %i.tv, i64 %i.su
  %i.ty = getelementptr inbounds [2 x i8], ptr %i.tw, i64 %i.sr
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.tx, ptr align 2 %i.ty, i64 %i.ss, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ar

bb.ar:                                            ; preds = %decode_slice_alpha.exit, %bb.ap, %bb.ao
  store i32 0, ptr %i.n, align 8, !tbaa !57
  br label %bb.as

bb.as:                                            ; preds = %decode_slice_luma.exit.thread, %bb.an, %bb.am, %bb.ar, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.c ], [ %i.rf, %bb.am ], [ 0, %bb.ar ], [ -1094995529, %decode_slice_luma.exit.thread ], [ %i.rj, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_slice_chroma(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef range(i32 0, -2147483648) %5, ptr noundef nonnull %6, i32 noundef range(i32 1, 3) %7) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i16], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = shl i32 %i.e, %7                         ; 8 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = shl i32 %i.i, 6
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.k
  call void %i.h(ptr noundef nonnull %i.l) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %decode_ac_coeffs.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = shl i32 %5, 3                            ; 2 uses
  %or.cond.i = icmp ult i32 %i.m, 2147483135
  %i.n = icmp ne ptr %4, null
  %or.cond3.i = and i1 %i.n, %or.cond.i
  %.013.i = select i1 %or.cond3.i, i32 %i.m, i32 0 ; 3 uses
  %i.o = add nuw nsw i32 %.013.i, 8               ; 9 uses
  %i.p = load i64, ptr %4, align 1, !tbaa !38
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %i.p) ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32                ; 4 uses
  %.not.i74 = icmp ult i64 %i.q, 281474976710656  ; 2 uses
  %i.t = lshr i32 %i.s, 16
  %spec.select.i75 = select i1 %.not.i74, i32 %i.s, i32 %i.t ; 3 uses
  %spec.select12.i76 = select i1 %.not.i74, i32 0, i32 16 ; 2 uses
  %.not11.i77 = icmp samesign ult i32 %spec.select.i75, 256 ; 2 uses
  %i.u = lshr i32 %spec.select.i75, 8
  %i.v = or disjoint i32 %spec.select12.i76, 8
  %.110.i78 = select i1 %.not11.i77, i32 %spec.select.i75, i32 %i.u
  %.1.i79 = select i1 %.not11.i77, i32 %spec.select12.i76, i32 %i.v
  %i.w = zext nneg i32 %.110.i78 to i64
  %i.x = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %.1.i79, %i.z           ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 31
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 %i.aa, 1                ; 2 uses
  %i.ac = sub nsw i32 68, %i.ab                   ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 31
  br i1 %i.ad, label %decode_dc_coeffs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %i.ab, -36
  %i.af = lshr i32 %i.s, %i.ae
  %i.ag = add i32 %i.af, -32
  %i.ah = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ai = lshr i32 %i.s, 26
  %i.aj = and i32 %i.ai, 31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1133.i = phi i32 [ %i.aj, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  %.1128.i = phi i32 [ 6, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.ak = lshr i32 %.1133.i, 1
  %i.al = and i32 %.1133.i, 1
  %i.am = sub nsw i32 0, %i.al
  %i.an = xor i32 %i.ak, %i.am                    ; 2 uses
  %i.ao = trunc i32 %i.an to i16
  store i16 %i.ao, ptr %i.a, align 16, !tbaa !66
  %i.ap = icmp sgt i32 %i.f, 1
  br i1 %i.ap, label %.lr.ph102.preheader, label %decode_dc_coeffs.exit

.lr.ph102.preheader:                              ; preds = %bb.f
  %.0142.i94 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.l
  %.0142.i100 = phi ptr [ %.0142.i, %bb.l ], [ %.0142.i94, %.lr.ph102.preheader ] ; 2 uses
  %.2.i99 = phi i32 [ %.162.i, %bb.l ], [ %.1128.i, %.lr.ph102.preheader ] ; 5 uses
  %.0129.i98 = phi i32 [ %.1130.i, %bb.l ], [ 0, %.lr.ph102.preheader ]
  %.0131.i97 = phi i32 [ %i.cu, %bb.l ], [ 1, %.lr.ph102.preheader ]
  %.2134.i96 = phi i32 [ %.4136.i, %bb.l ], [ 5, %.lr.ph102.preheader ]
  %.0137.i95 = phi i32 [ %i.cs, %bb.l ], [ %i.an, %.lr.ph102.preheader ]
  %i.aq = lshr i32 %.2.i99, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 1, !tbaa !38
  %i.au = call noundef i64 @llvm.bswap.i64(i64 %i.at)
  %i.av = and i32 %.2.i99, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.au, %i.aw                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = trunc nuw i64 %i.ay to i32              ; 4 uses
  %i.ba = call i32 @llvm.umin.i32(i32 %.2134.i96, i32 6)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @dc_codebook, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !38
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = and i32 %i.be, 3                        ; 3 uses
  %i.bg = lshr i32 %i.be, 5                       ; 4 uses
  %i.bh = lshr i32 %i.be, 2
  %i.bi = and i32 %i.bh, 7                        ; 2 uses
  %.not.i68 = icmp ult i64 %i.ax, 281474976710656 ; 2 uses
  %i.bj = lshr i32 %i.az, 16
  %spec.select.i69 = select i1 %.not.i68, i32 %i.az, i32 %i.bj ; 3 uses
  %spec.select12.i70 = select i1 %.not.i68, i32 0, i32 16 ; 2 uses
  %.not11.i71 = icmp samesign ult i32 %spec.select.i69, 256 ; 2 uses
  %i.bk = lshr i32 %spec.select.i69, 8
  %i.bl = or disjoint i32 %spec.select12.i70, 8
  %.110.i72 = select i1 %.not11.i71, i32 %spec.select.i69, i32 %i.bk
  %.1.i73 = select i1 %.not11.i71, i32 %spec.select12.i70, i32 %i.bl
  %i.bm = zext nneg i32 %.110.i72 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !38
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %.1.i73, %i.bp          ; 3 uses
  %i.br = sub nsw i32 31, %i.bq                   ; 4 uses
  %i.bs = icmp ugt i32 %i.br, %i.bf
  br i1 %i.bs, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph102
  %i.bt = sub nsw i32 %i.bi, %i.bf
  %i.bu = shl nsw i32 %i.br, 1
  %i.bv = add nsw i32 %i.bu, %i.bt                ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 31
  br i1 %i.bw, label %decode_dc_coeffs.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = sub nuw nsw i32 32, %i.bv
  %i.by = lshr i32 %i.az, %i.bx
  %.neg.i = shl nsw i32 -1, %i.bi
  %i.bz = add nuw nsw i32 %i.bf, 1
  %i.ca = shl nuw nsw i32 %i.bz, %i.bg
  %i.cb = add nsw i32 %i.ca, %.neg.i
  %i.cc = add i32 %i.cb, %i.by
  %i.cd = add i32 %i.bv, %.2.i99
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph102
  %.not159.i = icmp eq i32 %i.bg, 0
  br i1 %.not159.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = sub nsw i32 32, %i.bq                   ; 2 uses
  %i.cf = shl i32 %i.az, %i.ce
  %i.cg = add i32 %i.ce, %.2.i99
  %.161.i = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.cg)
  %i.ch = call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.cf, i32 %i.bg)
  %i.ci = add nuw i32 %.161.i, %i.bg
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %reass.sub.i = add i32 %.2.i99, 32
  %i.cj = sub i32 %reass.sub.i, %i.bq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.sink = phi i32 [ %i.cj, %bb.k ], [ %i.ci, %bb.j ], [ %i.cd, %bb.h ]
  %.4136.i = phi i32 [ %i.br, %bb.k ], [ %i.ch, %bb.j ], [ %i.cc, %bb.h ] ; 4 uses
  %.162.i = call i32 @llvm.umin.i32(i32 %i.o, i32 %.sink) ; 2 uses
  %.not160.i = icmp eq i32 %.4136.i, 0
  %i.ck = and i32 %.4136.i, 1
  %i.cl = sub nsw i32 0, %i.ck
  %i.cm = xor i32 %.0129.i98, %i.cl
  %.1130.i = select i1 %.not160.i, i32 0, i32 %i.cm ; 3 uses
  %i.cn = add nsw i32 %.4136.i, 1
  %i.co = ashr i32 %i.cn, 1
  %i.cp = xor i32 %.1130.i, %i.co
  %i.cq = sub nsw i32 %i.cp, %.1130.i
  %sext.i = shl i32 %.0137.i95, 16
  %i.cr = ashr exact i32 %sext.i, 16
  %i.cs = add nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %.0142.i100, align 2, !tbaa !66
  %i.cu = add nuw nsw i32 %.0131.i97, 1           ; 2 uses
  %.0142.i = getelementptr inbounds nuw i8, ptr %.0142.i100, i64 128
  %exitcond122.not = icmp eq i32 %i.cu, %i.f
  br i1 %exitcond122.not, label %decode_dc_coeffs.exit, label %.lr.ph102, !llvm.loop !0

decode_dc_coeffs.exit:                            ; preds = %bb.l, %bb.f
  %.2.i.lcssa = phi i32 [ %.1128.i, %bb.f ], [ %.162.i, %bb.l ] ; 4 uses
  %.not.i62 = icmp ult i32 %i.f, 65536            ; 2 uses
  %i.cv = lshr i32 %i.f, 16
  %spec.select.i63 = select i1 %.not.i62, i32 %i.f, i32 %i.cv ; 3 uses
  %spec.select12.i64 = select i1 %.not.i62, i32 0, i32 16 ; 2 uses
  %.not11.i65 = icmp samesign ult i32 %spec.select.i63, 256 ; 2 uses
  %i.cw = lshr i32 %spec.select.i63, 8
  %i.cx = or disjoint i32 %spec.select12.i64, 8
  %.110.i66 = select i1 %.not11.i65, i32 %spec.select.i63, i32 %i.cw
  %.1.i67 = select i1 %.not11.i65, i32 %spec.select12.i64, i32 %i.cx
  %i.cy = zext nneg i32 %.110.i66 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !38
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %.1.i67, %i.db          ; 2 uses
  %i.dd = shl i32 64, %i.dc                       ; 2 uses
  %i.de = add nsw i32 %i.f, -1                    ; 2 uses
  %i.df = sub i32 %.013.i, %.2.i.lcssa            ; 2 uses
  %i.dg = icmp slt i32 %i.df, 1
  br i1 %i.dg, label %decode_ac_coeffs.exit, label %.lr.ph108

.lr.ph108:                                        ; preds = %decode_dc_coeffs.exit
  %i.dh = lshr i32 %.2.i.lcssa, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 1, !tbaa !38
  %i.dl = call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  %i.dm = and i32 %.2.i.lcssa, 7
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl i64 %i.dl, %i.dn
  %i.dp = lshr i64 %i.do, 32
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 432
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph108, %bb.ab
  %i.dt = phi i32 [ %i.df, %.lr.ph108 ], [ %i.ij, %bb.ab ] ; 2 uses
  %.0159.i107 = phi i32 [ %i.dq, %.lr.ph108 ], [ %i.ht, %bb.ab ]
  %.0161.i106 = phi i32 [ %.2.i.lcssa, %.lr.ph108 ], [ %i.hv, %bb.ab ] ; 5 uses
  %.0164.i105 = phi i32 [ 2, %.lr.ph108 ], [ %i.hq, %bb.ab ]
  %.0167.i104 = phi i32 [ 4, %.lr.ph108 ], [ %.2169.i, %bb.ab ]
  %.0170.i103 = phi i32 [ %i.de, %.lr.ph108 ], [ %i.fs, %bb.ab ]
  %i.du = icmp samesign ult i32 %i.dt, 32
  br i1 %i.du, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dv = sub nuw nsw i32 32, %i.dt
  %i.dw = lshr i32 %.0159.i107, %i.dv
  %.not.i54 = icmp eq i32 %i.dw, 0
  br i1 %.not.i54, label %decode_ac_coeffs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dx = lshr i32 %.0161.i106, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 1, !tbaa !38
  %i.eb = call noundef i64 @llvm.bswap.i64(i64 %i.ea)
  %i.ec = and i32 %.0161.i106, 7
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl i64 %i.eb, %i.ed                    ; 2 uses
  %i.ef = lshr i64 %i.ee, 32
  %i.eg = trunc nuw i64 %i.ef to i32              ; 4 uses
  %i.eh = call i32 @llvm.umin.i32(i32 %.0167.i104, i32 15)
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @run_to_cb, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !38
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = and i32 %i.el, 3                        ; 3 uses
  %i.en = lshr i32 %i.el, 5                       ; 4 uses
  %i.eo = lshr i32 %i.el, 2
  %i.ep = and i32 %i.eo, 7                        ; 2 uses
  %.not.i56 = icmp ult i64 %i.ee, 281474976710656 ; 2 uses
  %i.eq = lshr i32 %i.eg, 16
  %spec.select.i57 = select i1 %.not.i56, i32 %i.eg, i32 %i.eq ; 3 uses
  %spec.select12.i58 = select i1 %.not.i56, i32 0, i32 16 ; 2 uses
  %.not11.i59 = icmp samesign ult i32 %spec.select.i57, 256 ; 2 uses
  %i.er = lshr i32 %spec.select.i57, 8
  %i.es = or disjoint i32 %spec.select12.i58, 8
  %.110.i60 = select i1 %.not11.i59, i32 %spec.select.i57, i32 %i.er
  %.1.i61 = select i1 %.not11.i59, i32 %spec.select12.i58, i32 %i.es
  %i.et = zext nneg i32 %.110.i60 to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !38
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add nuw nsw i32 %.1.i61, %i.ew          ; 3 uses
  %i.ey = sub nsw i32 31, %i.ex                   ; 4 uses
  %i.ez = icmp ugt i32 %i.ey, %i.em
  br i1 %i.ez, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fa = sub nsw i32 %i.ep, %i.em
  %i.fb = shl nsw i32 %i.ey, 1
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 3 uses
  %i.fd = icmp ugt i32 %i.fc, 31
  br i1 %i.fd, label %decode_dc_coeffs.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fe = sub nuw nsw i32 32, %i.fc
  %i.ff = lshr i32 %i.eg, %i.fe
  %.neg.i53 = shl nsw i32 -1, %i.ep
  %i.fg = add nuw nsw i32 %i.em, 1
  %i.fh = shl nuw nsw i32 %i.fg, %i.en
  %i.fi = add nsw i32 %i.fh, %.neg.i53
  %i.fj = add i32 %i.fi, %i.ff
  %i.fk = add i32 %i.fc, %.0161.i106
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %.not197.i = icmp eq i32 %i.en, 0
  br i1 %.not197.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fl = sub nsw i32 32, %i.ex                   ; 2 uses
  %i.fm = shl i32 %i.eg, %i.fl
  %i.fn = add i32 %i.fl, %.0161.i106
  %..i49 = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.fn)
  %i.fo = call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.fm, i32 %i.en)
  %i.fp = add nuw i32 %..i49, %i.en
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %reass.sub.i52 = add i32 %.0161.i106, 32
  %i.fq = sub i32 %reass.sub.i52, %i.ex
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %.sink154 = phi i32 [ %i.fq, %bb.t ], [ %i.fp, %bb.s ], [ %i.fk, %bb.q ]
  %.2169.i = phi i32 [ %i.ey, %bb.t ], [ %i.fo, %bb.s ], [ %i.fj, %bb.q ] ; 2 uses
  %.201.i = call i32 @llvm.umin.i32(i32 %i.o, i32 %.sink154) ; 4 uses
  %i.fr = add i32 %.0170.i103, 1
  %i.fs = add i32 %i.fr, %.2169.i                 ; 5 uses
  %.not198.i = icmp ult i32 %i.fs, %i.dd
  br i1 %.not198.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.fs, i32 noundef %i.dd) #9
  br label %decode_dc_coeffs.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.ft = lshr i32 %.201.i, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 1, !tbaa !38
  %i.fx = call noundef i64 @llvm.bswap.i64(i64 %i.fw)
  %i.fy = and i32 %.201.i, 7
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl i64 %i.fx, %i.fz                    ; 2 uses
  %i.gb = lshr i64 %i.ga, 32
  %i.gc = trunc nuw i64 %i.gb to i32              ; 5 uses
  %i.gd = call i32 @llvm.umin.i32(i32 %.0164.i105, i32 9)
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @lev_to_cb, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !38
  %i.gh = zext i8 %i.gg to i32                    ; 3 uses
  %i.gi = and i32 %i.gh, 3                        ; 3 uses
  %i.gj = lshr i32 %i.gh, 5                       ; 5 uses
  %i.gk = lshr i32 %i.gh, 2
  %i.gl = and i32 %i.gk, 7                        ; 2 uses
  %.not.i55 = icmp ult i64 %i.ga, 281474976710656 ; 2 uses
  %i.gm = lshr i32 %i.gc, 16
  %spec.select.i = select i1 %.not.i55, i32 %i.gc, i32 %i.gm ; 3 uses
  %spec.select12.i = select i1 %.not.i55, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.gn = lshr i32 %spec.select.i, 8
  %i.go = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.gn
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.go
  %i.gp = zext nneg i32 %.110.i to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !38
  %i.gs = zext i8 %i.gr to i32
  %i.gt = add nuw nsw i32 %.1.i, %i.gs            ; 2 uses
  %i.gu = sub nsw i32 31, %i.gt                   ; 4 uses
  %i.gv = icmp ugt i32 %i.gu, %i.gi
  br i1 %i.gv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.gw = sub nsw i32 %i.gl, %i.gi
  %i.gx = shl nsw i32 %i.gu, 1
  %i.gy = add nsw i32 %i.gx, %i.gw                ; 4 uses
  %i.gz = icmp ugt i32 %i.gy, 31
  br i1 %i.gz, label %decode_dc_coeffs.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ha = sub nuw nsw i32 32, %i.gy
  %i.hb = lshr i32 %i.gc, %i.ha
  %.neg200.i = shl nsw i32 -1, %i.gl
  %i.hc = add nuw nsw i32 %i.gi, 1
  %i.hd = shl nuw nsw i32 %i.hc, %i.gj
  %i.he = add nsw i32 %i.hd, %.neg200.i
  %i.hf = add i32 %i.he, %i.hb
  %i.hg = shl i32 %i.gc, %i.gy
  %i.hh = add nuw i32 %i.gy, %.201.i
  %i.hi = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.hh)
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %.not199.i = icmp eq i32 %i.gj, 0
  %i.hj = sub nsw i32 32, %i.gt                   ; 2 uses
  %i.hk = shl i32 %i.gc, %i.hj                    ; 3 uses
  %i.hl = add i32 %i.hj, %.201.i
  %.203.i = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.hl) ; 2 uses
  br i1 %.not199.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hm = call i32 @llvm.fshl.i32(i32 %i.gu, i32 %i.hk, i32 %i.gj)
  %i.hn = shl i32 %i.hk, %i.gj
  %i.ho = add nuw i32 %.203.i, %i.gj
  %i.hp = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ho)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.2166.i = phi i32 [ %i.hm, %bb.aa ], [ %i.hf, %bb.y ], [ %i.gu, %bb.z ]
  %.4.i50 = phi i32 [ %i.hp, %bb.aa ], [ %i.hi, %bb.y ], [ %.203.i, %bb.z ]
  %.2.i51 = phi i32 [ %i.hn, %bb.aa ], [ %i.hg, %bb.y ], [ %i.hk, %bb.z ] ; 2 uses
  %i.hq = add i32 %.2166.i, 1                     ; 2 uses
  %i.hr = lshr i32 %i.fs, %i.dc
  %i.hs = ashr i32 %.2.i51, 31                    ; 2 uses
  %i.ht = shl i32 %.2.i51, 1
  %i.hu = add i32 %.4.i50, 1
  %i.hv = call i32 @llvm.umin.i32(i32 %i.o, i32 %i.hu) ; 2 uses
  %i.hw = xor i32 %i.hs, %i.hq
  %i.hx = sub i32 %i.hw, %i.hs
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = and i32 %i.fs, %i.de
  %i.ia = shl i32 %i.hz, 6
  %i.ib = load ptr, ptr %i.ds, align 8, !tbaa !42
  %i.ic = sext i32 %i.hr to i64
  %i.id = getelementptr inbounds i8, ptr %i.ib, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !38
  %i.if = zext i8 %i.ie to i32
  %i.ig = add i32 %i.ia, %i.if
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ih
  store i16 %i.hy, ptr %i.ii, align 2, !tbaa !66
  %i.ij = sub nsw i32 %.013.i, %i.hv              ; 2 uses
  %i.ik = icmp slt i32 %i.ij, 1
  br i1 %i.ik, label %decode_ac_coeffs.exit, label %bb.m

decode_ac_coeffs.exit:                            ; preds = %bb.ab, %bb.n, %decode_dc_coeffs.exit, %._crit_edge
  %i.il = load i32, ptr %i.d, align 8, !tbaa !55
  %.not116 = icmp eq i32 %i.il, 0
  br i1 %.not116, label %decode_dc_coeffs.exit.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %decode_ac_coeffs.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.in = sext i32 %3 to i64                      ; 2 uses
  %i.io = shl nsw i32 %3, 2
  %i.ip = sext i32 %i.io to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ad
  %.1115 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ix, %bb.ad ]
  %.040114 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.iu, %bb.ad ]
  %.043113 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.iv, %bb.ad ]
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ac
  %.0112 = phi i32 [ 0, %.preheader ], [ %i.iw, %bb.ac ]
  %.141111 = phi ptr [ %.040114, %.preheader ], [ %i.iu, %bb.ac ] ; 3 uses
  %.144110 = phi ptr [ %.043113, %.preheader ], [ %i.iv, %bb.ac ] ; 3 uses
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !69
  call void %i.iq(ptr noundef %.144110, i64 noundef %i.in, ptr noundef %.141111, ptr noundef nonnull %6) #9
  %i.ir = load ptr, ptr %i.im, align 8, !tbaa !69
  %i.is = getelementptr inbounds [2 x i8], ptr %.144110, i64 %i.ip
  %i.it = getelementptr inbounds nuw i8, ptr %.141111, i64 128
  call void %i.ir(ptr noundef %i.is, i64 noundef %i.in, ptr noundef nonnull %i.it, ptr noundef nonnull %6) #9
  %i.iu = getelementptr inbounds nuw i8, ptr %.141111, i64 256 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.144110, i64 16 ; 2 uses
  %i.iw = add nuw nsw i32 %.0112, 1               ; 2 uses
  %exitcond123.not = icmp eq i32 %i.iw, %7
  br i1 %exitcond123.not, label %bb.ad, label %bb.ac, !llvm.loop !127

bb.ad:                                            ; preds = %bb.ac
  %i.ix = add nuw nsw i32 %.1115, 1               ; 2 uses
  %i.iy = load i32, ptr %i.d, align 8, !tbaa !55
  %i.iz = icmp ult i32 %i.ix, %i.iy
  br i1 %i.iz, label %.preheader, label %decode_dc_coeffs.exit.thread, !llvm.loop !128

decode_dc_coeffs.exit.thread:                     ; preds = %bb.g, %bb.p, %bb.x, %bb.ad, %decode_ac_coeffs.exit, %bb.v, %bb.c
  %.042 = phi i32 [ 0, %decode_ac_coeffs.exit ], [ -1094995529, %bb.v ], [ -1094995529, %bb.c ], [ -1094995529, %bb.p ], [ 0, %bb.ad ], [ -1094995529, %bb.x ], [ -1094995529, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.042
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !52}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!13 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"AVRational", !7, i64 0, !7, i64 4}
!17 = !{!"float", !6, i64 0}
!18 = !{!"p1 short", !10, i64 0}
!19 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!20 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!21 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!23 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !15, i64 72, !7, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !17, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !18, i64 288, !18, i64 296, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !19, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !17, i64 428, !17, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !20, i64 456, !14, i64 464, !14, i64 472, !17, i64 480, !17, i64 484, !7, i64 488, !7, i64 492, !15, i64 496, !15, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !21, i64 536, !10, i64 544, !22, i64 552, !22, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !23, i64 728, !15, i64 736, !7, i64 744, !7, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !24, i64 776, !7, i64 784, !7, i64 788, !14, i64 792, !7, i64 800, !7, i64 804, !14, i64 808, !10, i64 816, !14, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"BlockDSPContext", !10, i64 0, !10, i64 8, !6, i64 16}
!31 = !{!"ProresDSPContext", !7, i64 0, !6, i64 4, !10, i64 72, !10, i64 80}
!32 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!33 = !{!"", !30, i64 0, !31, i64 32, !32, i64 120, !10, i64 128, !7, i64 136, !6, i64 140, !6, i64 204, !10, i64 272, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !6, i64 300, !6, i64 364, !15, i64 432, !7, i64 440, !7, i64 444, !10, i64 448, !7, i64 456}
!34 = !{!33, !7, i64 456}
!35 = !{!33, !7, i64 136}
!36 = !{!28, !7, i64 652}
!37 = !{!33, !10, i64 448}
!38 = !{!6, !6, i64 0}
!39 = !{!33, !32, i64 120}
!40 = !{!33, !7, i64 440}
!41 = !{!33, !7, i64 444}
!42 = !{!33, !15, i64 432}
!43 = !{!"p2 omnipotent char", !26, i64 0}
!44 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!45 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!46 = !{!"AVFrame", !6, i64 0, !6, i64 64, !43, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !16, i64 124, !14, i64 136, !14, i64 144, !16, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !44, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !14, i64 304, !45, i64 312, !7, i64 320, !22, i64 328, !22, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !10, i64 376, !19, i64 384, !14, i64 408, !7, i64 416}
!47 = !{!46, !7, i64 276}
!48 = !{!28, !7, i64 136}
!49 = !{!33, !10, i64 272}
!50 = !{!"", !15, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!51 = !{!50, !15, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!50, !7, i64 8}
!54 = !{!50, !7, i64 12}
!55 = !{!50, !7, i64 16}
!56 = !{!50, !7, i64 20}
!57 = !{!50, !7, i64 24}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!7, !7, i64 0}
!61 = !{!"GetBitContext", !15, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!62 = !{!61, !15, i64 0}
!63 = !{!61, !7, i64 16}
!64 = !{!61, !7, i64 8}
!65 = !{!"short", !6, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!61, !7, i64 12}
!68 = !{!33, !10, i64 0}
!69 = !{!33, !10, i64 104}
!70 = !{!28, !7, i64 28}
!71 = !{!28, !7, i64 688}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !52}
end_hunk_0
