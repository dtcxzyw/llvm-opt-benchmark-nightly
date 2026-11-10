Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_jpeg_data_writer?download=true
inline.NumInlined: 1136
inline.NumDeleted: 563
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3jxl4jpeg9WriteJpegERKNS0_8JPEGDataERKNSt3__18functionIFmPKhmEEE:bb.a
  %i.ey = urem i64 %.pre-phi.i.i.i.i, 170
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %i.ey
  tail call void @_ZN3jxl4jpeg11OutputChunkC2Em(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 noundef %i.ed) #15
  %i.fa = load i64, ptr %i.s, align 8, !tbaa !69  ; 2 uses
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.s, align 8, !tbaa !69
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !68
  %i.fd = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.fe = add i64 %i.fc, %i.fa                    ; 2 uses
  %i.ff = udiv i64 %i.fe, 170
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !71
  %i.fi = urem i64 %i.fe, 170
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !13
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !50 ; 11 uses
  store i8 -1, ptr %i.fm, align 1, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  store i8 %i.dr, ptr %i.fn, align 1, !tbaa !73
  %i.fo = lshr i64 %i.ec, 8
  %i.fp = trunc i64 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !73
  %i.fr = trunc i64 %i.ec to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !73
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i8 8, ptr %i.ft, align 1, !tbaa !73
  %i.fu = load i32, ptr %i.ar, align 4, !tbaa !235
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !73
  %i.fy = load i32, ptr %i.ar, align 4, !tbaa !235
  %i.fz = trunc i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 6
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !73
  %i.gb = load i32, ptr %i.as, align 8, !tbaa !236
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 7
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !73
  %i.gf = load i32, ptr %i.as, align 8, !tbaa !236
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !73
  %i.gi = trunc i64 %i.ea to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 9
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !73
  %.not6769.i.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not6769.i.i.i, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i.i.i, %bb.v
  %.06071.i.i.i = phi i64 [ %i.hq, %bb.v ], [ 0, %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i.i.i ] ; 4 uses
  %.06170.i.i.i = phi i64 [ %i.ho, %bb.v ], [ 10, %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i.i.i ] ; 2 uses
  %i.gk = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.gk, i64 %.06071.i.i.i
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !81
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr i8, ptr %i.fm, i64 %.06170.i.i.i ; 3 uses
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !73
  %i.gp = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.gp, i64 %.06071.i.i.i ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !82
  %i.gt = shl i32 %i.gs, 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !83
  %i.gw = or i32 %i.gt, %i.gv
  %i.gx = trunc i32 %i.gw to i8
  %i.gy = getelementptr i8, ptr %i.go, i64 1
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !73
  %i.gz = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.ha = getelementptr inbounds nuw [48 x i8], ptr %i.gz, i64 %.06071.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !237
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !238
  %i.hf = load ptr, ptr %i.ad, align 8, !tbaa !239 ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = sdiv exact i64 %i.hi, 268
  %.not.i.i.i = icmp ugt i64 %i.hj, %i.hd
  br i1 %.not.i.i.i, label %bb.v, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread36.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.hk = getelementptr inbounds nuw [268 x i8], ptr %i.hf, i64 %i.hd
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 260
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !242
  %i.hn = trunc i32 %i.hm to i8
  %i.ho = add i64 %.06170.i.i.i, 3
  %i.hp = getelementptr i8, ptr %i.go, i64 2
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !73
  %i.hq = add nuw i64 %.06071.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hq, %i.ea
  br i1 %exitcond.not.i.i.i, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !159

bb.w:                                             ; preds = %bb.q
  %i.hr = load i32, ptr %i.al, align 8, !tbaa !243
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = load ptr, ptr %i.am, align 8, !tbaa !244
  %i.hu = load ptr, ptr %i.ak, align 8, !tbaa !245 ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = sdiv exact i64 %i.hx, 1104              ; 2 uses
  %i.hz = icmp ugt i64 %i.hy, %i.hs
  br i1 %i.hz, label %.lr.ph.i33.i.i, label %.thread.i.i.i

.lr.ph.i33.i.i:                                   ; preds = %bb.w, %bb.x
  %.097121.i.i.i = phi i64 [ %i.il, %bb.x ], [ %i.hs, %bb.w ] ; 2 uses
  %.098120.i.i.i = phi i64 [ %i.ih, %bb.x ], [ 2, %bb.w ]
  %i.ia = getelementptr inbounds nuw [1104 x i8], ptr %i.hu, i64 %.097121.i.i.i ; 3 uses
  %i.ib = load <16 x i32>, ptr %i.ia, align 4, !tbaa !85
  %i.ic = zext <16 x i32> %i.ib to <16 x i64>
  %.093.ptr.16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.id = load i32, ptr %.093.ptr.16.i.i.i, align 4, !tbaa !85
  %i.ie = zext i32 %i.id to i64
  %i.if = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.ic)
  %op.rdx = add nuw nsw i64 %i.if, %i.ie
  %op.rdx267 = add i64 %op.rdx, %.098120.i.i.i    ; 2 uses
  %i.ig = icmp eq i64 %op.rdx267, 2
  br i1 %i.ig, label %.thread.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i33.i.i
  %i.ih = add i64 %op.rdx267, 16                  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 1100
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !249, !range !62, !noundef !63
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = add nuw i64 %.097121.i.i.i, 1           ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %i.il, %i.hy
  %or.cond.i35.i.i = or i1 %exitcond.not.i34.i.i, %i.ik
  br i1 %or.cond.i35.i.i, label %.thread.i.i.i, label %.lr.ph.i33.i.i, !llvm.loop !160

.thread.i.i.i:                                    ; preds = %bb.x, %.lr.ph.i33.i.i, %bb.w
  %.3101.i.i.i = phi i64 [ 2, %bb.w ], [ 2, %.lr.ph.i33.i.i ], [ %i.ih, %bb.x ] ; 3 uses
  %i.im = add i64 %.3101.i.i.i, 2
  %i.in = load ptr, ptr %i.p, align 8, !tbaa !66  ; 3 uses
  %i.io = load ptr, ptr %i.q, align 8, !tbaa !67  ; 3 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ashr exact i64 %i.ir, 3
  %i.it = icmp eq ptr %i.in, %i.io
  %i.iu = mul i64 %i.is, 170
  %i.iv = add i64 %i.iu, -1
  %i.iw = select i1 %i.it, i64 0, i64 %i.iv
  %i.ix = load i64, ptr %i.r, align 8, !tbaa !68
  %i.iy = load i64, ptr %i.s, align 8, !tbaa !69
  %i.iz = add i64 %i.iy, %i.ix                    ; 2 uses
  %i.ja = icmp eq i64 %i.iw, %i.iz
  br i1 %i.ja, label %bb.y, label %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i26.i.i

bb.y:                                             ; preds = %.thread.i.i.i
  tail call void @_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #15
  %.pre.i.i28.i.i = load i64, ptr %i.s, align 8, !tbaa !69
  %.pre8.i.i29.i.i = load i64, ptr %i.r, align 8, !tbaa !68
  %.pre9.i.i30.i.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %.pre10.i.i31.i.i = load ptr, ptr %i.p, align 8, !tbaa !66
  %.pre12.i.i32.i.i = add i64 %.pre8.i.i29.i.i, %.pre.i.i28.i.i
  br label %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i26.i.i

_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i26.i.i: ; preds = %bb.y, %.thread.i.i.i
  %.pre-phi.i.i27.i.i = phi i64 [ %.pre12.i.i32.i.i, %bb.y ], [ %i.iz, %.thread.i.i.i ] ; 2 uses
  %i.jb = phi ptr [ %.pre10.i.i31.i.i, %bb.y ], [ %i.in, %.thread.i.i.i ]
  %i.jc = phi ptr [ %.pre9.i.i30.i.i, %bb.y ], [ %i.io, %.thread.i.i.i ] ; 2 uses
  %i.jd = udiv i64 %.pre-phi.i.i27.i.i, 170
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = icmp ne ptr %i.jb, %i.jc
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !71
  %i.jh = urem i64 %.pre-phi.i.i27.i.i, 170
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %i.jh
  tail call void @_ZN3jxl4jpeg11OutputChunkC2Em(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 noundef %i.im) #15
  %i.jj = load i64, ptr %i.s, align 8, !tbaa !69  ; 2 uses
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.s, align 8, !tbaa !69
  %i.jl = load i64, ptr %i.r, align 8, !tbaa !68
  %i.jm = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.jn = add i64 %i.jl, %i.jj                    ; 2 uses
  %i.jo = udiv i64 %i.jn, 170
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !71
  %i.jr = urem i64 %i.jn, 170
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !13
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !50 ; 9 uses
  store i8 -1, ptr %i.jv, align 1, !tbaa !73
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store i8 -60, ptr %i.jw, align 1, !tbaa !73
  %i.jx = lshr i64 %.3101.i.i.i, 8
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !73
  %i.ka = trunc i64 %.3101.i.i.i to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 3
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !73
  %scevgep = getelementptr i8, ptr %i.jv, i64 16
  %scevgep89 = getelementptr i8, ptr %i.jv, i64 17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i, %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i26.i.i
  %.087.i.i.i = phi i64 [ 4, %_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE3endB8nn180100Ev.exit.i.i26.i.i ], [ %.2.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.kc = load i32, ptr %i.al, align 8, !tbaa !243 ; 2 uses
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.al, align 8, !tbaa !243
  %i.ke = sext i32 %i.kc to i64                   ; 3 uses
  %i.kf = load ptr, ptr %i.am, align 8, !tbaa !244
  %i.kg = load ptr, ptr %i.ak, align 8, !tbaa !245 ; 3 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = sdiv exact i64 %i.kj, 1104
  %.not103.i.i.i = icmp ugt i64 %i.kk, %i.ke
  br i1 %.not103.i.i.i, label %bb.aa, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread36.i

bb.aa:                                            ; preds = %bb.z
  %i.kl = getelementptr inbounds nuw [1104 x i8], ptr %i.kg, i64 %i.ke ; 21 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1096 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !250 ; 2 uses
  %i.ko = load i32, ptr %i.kl, align 4, !tbaa !85
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !85 ; 2 uses
  %.not105.1.i.i.i = icmp ne i32 %i.kr, 0
  %spec.select.1.i.i.i = zext i1 %.not105.1.i.i.i to i64
  %i.ks = zext i32 %i.kr to i64                   ; 2 uses
  %i.kt = add nuw nsw i64 %i.ks, %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !85 ; 2 uses
  %.not105.2.i.i.i = icmp eq i32 %i.kv, 0
  %spec.select.2.i.i.i = select i1 %.not105.2.i.i.i, i64 %spec.select.1.i.i.i, i64 2
  %i.kw = zext i32 %i.kv to i64                   ; 2 uses
  %i.kx = add nuw nsw i64 %i.kt, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 12 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !85 ; 2 uses
  %.not105.3.i.i.i = icmp eq i32 %i.kz, 0
  %spec.select.3.i.i.i = select i1 %.not105.3.i.i.i, i64 %spec.select.2.i.i.i, i64 3
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = add nuw nsw i64 %i.kx, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 4 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !85 ; 2 uses
  %.not105.4.i.i.i = icmp eq i32 %i.ld, 0
  %spec.select.4.i.i.i = select i1 %.not105.4.i.i.i, i64 %spec.select.3.i.i.i, i64 4
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = add nuw nsw i64 %i.lb, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kl, i64 20 ; 4 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !85 ; 2 uses
  %.not105.5.i.i.i = icmp eq i32 %i.lh, 0
  %spec.select.5.i.i.i = select i1 %.not105.5.i.i.i, i64 %spec.select.4.i.i.i, i64 5
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = add nuw nsw i64 %i.lf, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kl, i64 24 ; 4 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !85 ; 2 uses
  %.not105.6.i.i.i = icmp eq i32 %i.ll, 0
  %spec.select.6.i.i.i = select i1 %.not105.6.i.i.i, i64 %spec.select.5.i.i.i, i64 6
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %i.ln = add nuw nsw i64 %i.lj, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kl, i64 28 ; 4 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !85 ; 2 uses
  %.not105.7.i.i.i = icmp eq i32 %i.lp, 0
  %spec.select.7.i.i.i = select i1 %.not105.7.i.i.i, i64 %spec.select.6.i.i.i, i64 7
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %i.lr = add nuw nsw i64 %i.ln, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kl, i64 32 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !85 ; 2 uses
  %.not105.8.i.i.i = icmp eq i32 %i.lt, 0
  %spec.select.8.i.i.i = select i1 %.not105.8.i.i.i, i64 %spec.select.7.i.i.i, i64 8
  %i.lu = zext i32 %i.lt to i64                   ; 2 uses
  %i.lv = add nuw nsw i64 %i.lr, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kl, i64 36 ; 4 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !85 ; 2 uses
  %.not105.9.i.i.i = icmp eq i32 %i.lx, 0
  %spec.select.9.i.i.i = select i1 %.not105.9.i.i.i, i64 %spec.select.8.i.i.i, i64 9
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = add nuw nsw i64 %i.lv, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kl, i64 40 ; 4 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !85 ; 2 uses
  %.not105.10.i.i.i = icmp eq i32 %i.mb, 0
  %spec.select.10.i.i.i = select i1 %.not105.10.i.i.i, i64 %spec.select.9.i.i.i, i64 10
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = add nuw nsw i64 %i.lz, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.kl, i64 44 ; 4 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !85 ; 2 uses
  %.not105.11.i.i.i = icmp eq i32 %i.mf, 0
  %spec.select.11.i.i.i = select i1 %.not105.11.i.i.i, i64 %spec.select.10.i.i.i, i64 11
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = add nuw nsw i64 %i.md, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kl, i64 48 ; 4 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !85 ; 2 uses
  %.not105.12.i.i.i = icmp eq i32 %i.mj, 0
  %spec.select.12.i.i.i = select i1 %.not105.12.i.i.i, i64 %spec.select.11.i.i.i, i64 12
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = add nuw nsw i64 %i.mh, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kl, i64 52 ; 4 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !85 ; 2 uses
  %.not105.13.i.i.i = icmp eq i32 %i.mn, 0
  %spec.select.13.i.i.i = select i1 %.not105.13.i.i.i, i64 %spec.select.12.i.i.i, i64 13
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  %i.mp = add nuw nsw i64 %i.ml, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kl, i64 56 ; 4 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !85 ; 2 uses
  %.not105.14.i.i.i = icmp eq i32 %i.mr, 0
  %spec.select.14.i.i.i = select i1 %.not105.14.i.i.i, i64 %spec.select.13.i.i.i, i64 14
  %i.ms = zext i32 %i.mr to i64                   ; 2 uses
  %i.mt = add nuw nsw i64 %i.mp, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kl, i64 60 ; 4 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !85 ; 2 uses
  %.not105.15.i.i.i = icmp eq i32 %i.mv, 0
  %spec.select.15.i.i.i = select i1 %.not105.15.i.i.i, i64 %spec.select.14.i.i.i, i64 15
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %i.mx = add nuw nsw i64 %i.mt, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 64 ; 4 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !85 ; 2 uses
  %.not105.16.i.i.i = icmp eq i32 %i.mz, 0
  %spec.select.16.i.i.i = select i1 %.not105.16.i.i.i, i64 %spec.select.15.i.i.i, i64 16 ; 16 uses
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = add nuw nsw i64 %i.mx, %i.na            ; 4 uses
  %i.nc = sext i32 %i.kn to i64                   ; 2 uses
  %i.nd = icmp eq i64 %i.nb, 0
  br i1 %i.nd, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ne = and i32 %i.kn, 16
  %.not104.i.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not104.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nf = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ng = getelementptr [770 x i8], ptr %i.nf, i64 %i.nc
  %i.nh = getelementptr i8, ptr %i.ng, i64 -12320
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ni = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.nj = getelementptr inbounds nuw [770 x i8], ptr %i.ni, i64 %i.nc
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.086.i.i.i = phi ptr [ %i.nh, %bb.ac ], [ %i.nj, %bb.ad ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(769) %.086.i.i.i, i8 127, i64 256, i1 false), !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.nk = load i32, ptr %i.kq, align 4, !tbaa !85 ; 6 uses
  %i.nl = icmp slt i32 %i.nk, 258
  br i1 %i.nl, label %.preheader54.i.i.i.i, label %_ZN3jxl4jpeg12_GLOBAL__N_121BuildHuffmanCodeTableERKNS0_15JPEGHuffmanCodeEPNS0_16HuffmanCodeTableE.exit.thread.i.i.i

.preheader54.i.i.i.i:                             ; preds = %bb.ae
  %.not58.i.i.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not58.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader54.i.i.i.i
  %i.nm = zext i32 %i.nk to i64                   ; 2 uses
  %min.iters.check257 = icmp ult i32 %i.nk, 8
  br i1 %min.iters.check257, label %.lr.ph.i.i.i.i.preheader268, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec259 = and i64 %i.nm, 4294967288           ; 5 uses
  %i.nn = trunc nuw i64 %n.vec259 to i32
  %i.no = sub i32 %i.nk, %i.nn
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next262, %vector.body260 ] ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index261 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store <4 x i32> splat (i32 1), ptr %i.np, align 16, !tbaa !85
  store <4 x i32> splat (i32 1), ptr %i.nq, align 16, !tbaa !85
  %index.next262 = add nuw i64 %index261, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next262, %n.vec259
  br i1 %i.nr, label %middle.block263, label %vector.body260, !llvm.loop !161

middle.block263:                                  ; preds = %vector.body260
  %cmp.n264 = icmp eq i64 %n.vec259, %i.nm
  br i1 %cmp.n264, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader268

.lr.ph.i.i.i.i.preheader268:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block263
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec259, %middle.block263 ]
  %.03760.i.i.i.i.ph = phi i32 [ %i.nk, %.lr.ph.i.i.i.i.preheader ], [ %i.no, %middle.block263 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader268, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader268 ] ; 2 uses
  %.03760.i.i.i.i = phi i32 [ %i.ns, %.lr.ph.i.i.i.i ], [ %.03760.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader268 ]
  %i.ns = add nsw i32 %.03760.i.i.i.i, -1         ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.i
  store i32 1, ptr %i.nt, align 4, !tbaa !85
  %.not.i.i.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !162

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %middle.block263
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %n.vec259, %middle.block263 ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.nu = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.preheader54.i.i.i.i
  %.142.lcssa.i.i.i.i = phi i32 [ 0, %.preheader54.i.i.i.i ], [ %i.nu, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.nv = load i32, ptr %i.ku, align 4, !tbaa !85 ; 6 uses
  %i.nw = add nsw i32 %i.nv, %.142.lcssa.i.i.i.i
  %i.nx = icmp slt i32 %i.nw, 258
  br i1 %i.nx, label %.preheader54.1.i.i.i.i, label %_ZN3jxl4jpeg12_GLOBAL__N_121BuildHuffmanCodeTableERKNS0_15JPEGHuffmanCodeEPNS0_16HuffmanCodeTableE.exit.thread.i.i.i

end_hunk_0
begin_hunk_1_@_ZN3jxl4jpeg9WriteJpegERKNS0_8JPEGDataERKNSt3__18functionIFmPKhmEEE:bb.a
  br i1 %.not58.15.i.i.i.i, label %._crit_edge.15.i.i.i.i, label %.lr.ph.15.i.i.i.i

.lr.ph.15.i.i.i.i:                                ; preds = %.preheader54.15.i.i.i.i
  %i.uy = sext i32 %.142.lcssa.14.i.i.i.i to i64  ; 3 uses
  %i.uz = zext i32 %i.uv to i64                   ; 2 uses
  %min.iters.check92 = icmp ult i32 %i.uv, 8
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.15.i.i.i.i
  %n.vec94 = and i64 %i.uz, 4294967288            ; 4 uses
  %i.va = add nsw i64 %n.vec94, %i.uy             ; 2 uses
  %i.vb = trunc nuw i64 %n.vec94 to i32
  %i.vc = sub i32 %i.uv, %i.vb
  %invariant.gep338 = getelementptr [4 x i8], ptr %i.b, i64 %i.uy
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next97, %vector.body95 ] ; 2 uses
  %gep339 = getelementptr [4 x i8], ptr %invariant.gep338, i64 %index96 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %gep339, i64 16
  store <4 x i32> splat (i32 16), ptr %gep339, align 4, !tbaa !85
  store <4 x i32> splat (i32 16), ptr %i.vd, align 4, !tbaa !85
  %index.next97 = add nuw i64 %index96, 8         ; 2 uses
  %i.ve = icmp eq i64 %index.next97, %n.vec94
  br i1 %i.ve, label %middle.block98, label %vector.body95, !llvm.loop !191

middle.block98:                                   ; preds = %vector.body95
  %cmp.n99 = icmp eq i64 %n.vec94, %i.uz
  br i1 %cmp.n99, label %._crit_edge.loopexit.15.i.i.i.i, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %.lr.ph.15.i.i.i.i, %middle.block98
  %indvars.iv.15.i.i.i.i.ph = phi i64 [ %i.uy, %.lr.ph.15.i.i.i.i ], [ %i.va, %middle.block98 ]
  %.03760.15.i.i.i.i.ph = phi i32 [ %i.uv, %.lr.ph.15.i.i.i.i ], [ %i.vc, %middle.block98 ]
  br label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %indvars.iv.15.i.i.i.i = phi i64 [ %indvars.iv.next.15.i.i.i.i, %scalar.ph91 ], [ %indvars.iv.15.i.i.i.i.ph, %scalar.ph91.preheader ] ; 2 uses
  %.03760.15.i.i.i.i = phi i32 [ %i.vf, %scalar.ph91 ], [ %.03760.15.i.i.i.i.ph, %scalar.ph91.preheader ]
  %i.vf = add nsw i32 %.03760.15.i.i.i.i, -1      ; 2 uses
  %indvars.iv.next.15.i.i.i.i = add nsw i64 %indvars.iv.15.i.i.i.i, 1 ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.15.i.i.i.i
  store i32 16, ptr %i.vg, align 4, !tbaa !85
  %.not.15.i.i.i.i = icmp eq i32 %i.vf, 0
  br i1 %.not.15.i.i.i.i, label %._crit_edge.loopexit.15.i.i.i.i, label %scalar.ph91, !llvm.loop !192

._crit_edge.loopexit.15.i.i.i.i:                  ; preds = %scalar.ph91, %middle.block98
  %indvars.iv.next.15.i.i.i.i.lcssa = phi i64 [ %i.va, %middle.block98 ], [ %indvars.iv.next.15.i.i.i.i, %scalar.ph91 ]
  %i.vh = trunc nsw i64 %indvars.iv.next.15.i.i.i.i.lcssa to i32
  br label %._crit_edge.15.i.i.i.i

._crit_edge.15.i.i.i.i:                           ; preds = %._crit_edge.loopexit.15.i.i.i.i, %.preheader54.15.i.i.i.i
  %.142.lcssa.15.i.i.i.i = phi i32 [ %.142.lcssa.14.i.i.i.i, %.preheader54.15.i.i.i.i ], [ %i.vh, %._crit_edge.loopexit.15.i.i.i.i ] ; 3 uses
  %.not75.i.i.i.i = icmp eq i32 %.142.lcssa.15.i.i.i.i, 0
  br i1 %.not75.i.i.i.i, label %.loopexit.i.i.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.15.i.i.i.i
  %i.vi = add nsw i32 %.142.lcssa.15.i.i.i.i, -1  ; 4 uses
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vj
  store i32 0, ptr %i.vk, align 4, !tbaa !85
  %i.vl = load i32, ptr %i.b, align 16, !tbaa !85 ; 3 uses
  %.not4569.i.i.i.i = icmp eq i32 %i.vl, 0
  br i1 %.not4569.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader53.i.i.i.i

.preheader53.i.i.i.i:                             ; preds = %bb.af, %._crit_edge66.i.i.i.i
  %i.vm = phi i32 [ %i.vz, %._crit_edge66.i.i.i.i ], [ %i.vl, %bb.af ] ; 3 uses
  %.03472.i.i.i.i = phi i32 [ %i.wb, %._crit_edge66.i.i.i.i ], [ %i.vl, %bb.af ] ; 2 uses
  %.03571.i.i.i.i = phi i32 [ %i.wa, %._crit_edge66.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %.470.i.i.i.i = phi i32 [ %.5.lcssa.i.i.i.i, %._crit_edge66.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.vn = icmp eq i32 %i.vm, %.03472.i.i.i.i
  br i1 %i.vn, label %.lr.ph65.preheader.i.i.i.i, label %._crit_edge66.i.i.i.i

.lr.ph65.preheader.i.i.i.i:                       ; preds = %.preheader53.i.i.i.i
  %i.vo = sext i32 %.470.i.i.i.i to i64
  br label %.lr.ph65.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge66.i.i.i.i, %bb.af
  %i.vp = icmp sgt i32 %.142.lcssa.15.i.i.i.i, 1
  br i1 %i.vp, label %.lr.ph74.i.i.i.i, label %.loopexit.i.i.i

.lr.ph74.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.kl, i64 68 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 256 ; 3 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.vi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.vs = icmp eq i32 %i.vi, 1
  br i1 %i.vs, label %.epil.preheader, label %.lr.ph74.i.i.i.i.new

.lr.ph74.i.i.i.i.new:                             ; preds = %.lr.ph74.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.ag

.lr.ph65.i.i.i.i:                                 ; preds = %.lr.ph65.i.i.i.i, %.lr.ph65.preheader.i.i.i.i
  %indvars.iv82.i.i.i.i = phi i64 [ %i.vo, %.lr.ph65.preheader.i.i.i.i ], [ %indvars.iv.next83.i.i.i.i, %.lr.ph65.i.i.i.i ] ; 2 uses
  %.13664.i.i.i.i = phi i32 [ %.03571.i.i.i.i, %.lr.ph65.preheader.i.i.i.i ], [ %i.vu, %.lr.ph65.i.i.i.i ] ; 2 uses
  %indvars.iv.next83.i.i.i.i = add nsw i64 %indvars.iv82.i.i.i.i, 1 ; 3 uses
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv82.i.i.i.i
  store i32 %.13664.i.i.i.i, ptr %i.vt, align 4, !tbaa !85
  %i.vu = add nsw i32 %.13664.i.i.i.i, 1          ; 2 uses
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next83.i.i.i.i
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !85 ; 2 uses
  %i.vx = icmp eq i32 %i.vw, %i.vm
  br i1 %i.vx, label %.lr.ph65.i.i.i.i, label %._crit_edge66.loopexit.i.i.i.i, !llvm.loop !193

._crit_edge66.loopexit.i.i.i.i:                   ; preds = %.lr.ph65.i.i.i.i
  %i.vy = trunc nsw i64 %indvars.iv.next83.i.i.i.i to i32
  br label %._crit_edge66.i.i.i.i

._crit_edge66.i.i.i.i:                            ; preds = %._crit_edge66.loopexit.i.i.i.i, %.preheader53.i.i.i.i
  %i.vz = phi i32 [ %i.vw, %._crit_edge66.loopexit.i.i.i.i ], [ %i.vm, %.preheader53.i.i.i.i ] ; 2 uses
  %.5.lcssa.i.i.i.i = phi i32 [ %i.vy, %._crit_edge66.loopexit.i.i.i.i ], [ %.470.i.i.i.i, %.preheader53.i.i.i.i ]
  %.136.lcssa.i.i.i.i = phi i32 [ %i.vu, %._crit_edge66.loopexit.i.i.i.i ], [ %.03571.i.i.i.i, %.preheader53.i.i.i.i ]
  %i.wa = shl i32 %.136.lcssa.i.i.i.i, 1
  %i.wb = add i32 %.03472.i.i.i.i, 1
  %.not45.i.i.i.i = icmp eq i32 %i.vz, 0
  br i1 %.not45.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader53.i.i.i.i, !llvm.loop !194

bb.ag:                                            ; preds = %bb.ag, %.lr.ph74.i.i.i.i.new
  %indvars.iv85.i.i.i.i = phi i64 [ 0, %.lr.ph74.i.i.i.i.new ], [ %indvars.iv.next86.i.i.i.i.1, %bb.ag ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph74.i.i.i.i.new ], [ %niter.next.1, %bb.ag ]
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv85.i.i.i.i
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !85
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv85.i.i.i.i
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !85
  %i.wg = trunc i32 %i.wf to i8
  %i.wh = sext i32 %i.wd to i64                   ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %.086.i.i.i, i64 %i.wh
  store i8 %i.wg, ptr %i.wi, align 1, !tbaa !73
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv85.i.i.i.i
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !85
  %i.wl = trunc i32 %i.wk to i16
  %i.wm = getelementptr inbounds [2 x i8], ptr %i.vr, i64 %i.wh
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !89
  %indvars.iv.next86.i.i.i.i = or disjoint i64 %indvars.iv85.i.i.i.i, 1 ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv.next86.i.i.i.i
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !85
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next86.i.i.i.i
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !85
  %i.wr = trunc i32 %i.wq to i8
  %i.ws = sext i32 %i.wo to i64                   ; 2 uses
  %i.wt = getelementptr inbounds i8, ptr %.086.i.i.i, i64 %i.ws
  store i8 %i.wr, ptr %i.wt, align 1, !tbaa !73
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next86.i.i.i.i
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !85
  %i.ww = trunc i32 %i.wv to i16
  %i.wx = getelementptr inbounds [2 x i8], ptr %i.vr, i64 %i.ws
  store i16 %i.ww, ptr %i.wx, align 2, !tbaa !89
  %indvars.iv.next86.i.i.i.i.1 = add nuw nsw i64 %indvars.iv85.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !195

_ZN3jxl4jpeg12_GLOBAL__N_121BuildHuffmanCodeTableERKNS0_15JPEGHuffmanCodeEPNS0_16HuffmanCodeTableE.exit.thread.i.i.i: ; preds = %._crit_edge.14.i.i.i.i, %._crit_edge.13.i.i.i.i, %._crit_edge.12.i.i.i.i, %._crit_edge.11.i.i.i.i, %._crit_edge.10.i.i.i.i, %._crit_edge.9.i.i.i.i, %._crit_edge.8.i.i.i.i, %._crit_edge.7.i.i.i.i, %._crit_edge.6.i.i.i.i, %._crit_edge.5.i.i.i.i, %._crit_edge.4.i.i.i.i, %._crit_edge.3.i.i.i.i, %._crit_edge.2.i.i.i.i, %._crit_edge.1.i.i.i.i, %._crit_edge.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread36.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph74.i.i.i.i
  %indvars.iv85.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph74.i.i.i.i ], [ %indvars.iv.next86.i.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod292 = trunc i32 %i.vi to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %indvars.iv85.i.i.i.i.epil.init
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !85
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv85.i.i.i.i.epil.init
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !85
  %i.xc = trunc i32 %i.xb to i8
  %i.xd = sext i32 %i.wz to i64                   ; 2 uses
  %i.xe = getelementptr inbounds i8, ptr %.086.i.i.i, i64 %i.xd
  store i8 %i.xc, ptr %i.xe, align 1, !tbaa !73
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv85.i.i.i.i.epil.init
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !85
  %i.xh = trunc i32 %i.xg to i16
  %i.xi = getelementptr inbounds [2 x i8], ptr %i.vr, i64 %i.xd
  store i16 %i.xh, ptr %i.xi, align 2, !tbaa !89
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i, %._crit_edge.15.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.xj = getelementptr inbounds nuw i8, ptr %.086.i.i.i, i64 768
  store i8 1, ptr %i.xj, align 2, !tbaa !91
  %i.xk = load i32, ptr %i.km, align 4, !tbaa !250
  %i.xl = trunc i32 %i.xk to i8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.087.i.i.i ; 32 uses
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !73
  %i.xn = icmp eq i64 %spec.select.16.i.i.i, 1
  %i.xo = load i32, ptr %i.kq, align 4, !tbaa !85
  %i.xp = trunc i32 %i.xo to i8                   ; 2 uses
  br i1 %i.xn, label %.thread172.i.i.i, label %bb.ah

.lr.ph134.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.kl, i64 68 ; 3 uses
  %min.iters.check = icmp ult i64 %i.nb, 25
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph134.i.i.i
  %i.xr = getelementptr i8, ptr %scevgep89, i64 %.087.i.i.i
  %i.xs = getelementptr i8, ptr %scevgep, i64 %.087.i.i.i
  %i.xt = getelementptr i8, ptr %i.xs, i64 %i.na
  %i.xu = getelementptr i8, ptr %i.xt, i64 %i.mw
  %i.xv = getelementptr i8, ptr %i.xu, i64 %i.ms
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.mo
  %i.xx = getelementptr i8, ptr %i.xw, i64 %i.mk
  %i.xy = getelementptr i8, ptr %i.xx, i64 %i.mg
  %i.xz = getelementptr i8, ptr %i.xy, i64 %i.mc
  %i.ya = getelementptr i8, ptr %i.xz, i64 %i.ly
  %i.yb = getelementptr i8, ptr %i.ya, i64 %i.lu
  %i.yc = getelementptr i8, ptr %i.yb, i64 %i.lq
  %i.yd = getelementptr i8, ptr %i.yc, i64 %i.lm
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.li
  %i.yf = getelementptr i8, ptr %i.ye, i64 %i.le
  %i.yg = getelementptr i8, ptr %i.yf, i64 %i.la
  %i.yh = getelementptr i8, ptr %i.yg, i64 %i.kw
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.ks
  %i.yj = getelementptr i8, ptr %i.yi, i64 %i.kp
  %i.yk = mul nsw i64 %i.ke, 1104
  %i.yl = shl nuw nsw i64 %i.nb, 2
  %i.ym = getelementptr i8, ptr %i.kg, i64 %i.yk
  %i.yn = getelementptr i8, ptr %i.ym, i64 %i.yl
  %i.yo = getelementptr i8, ptr %i.yn, i64 64
  %bound0 = icmp ult ptr %i.xr, %i.yo
  %bound1 = icmp ult ptr %i.xq, %i.yj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.adq, -8                     ; 4 uses
  %i.yp = add i64 %.188.15.i.i.i, %n.vec          ; 2 uses
  %i.yq = getelementptr i8, ptr %i.jv, i64 %.188.15.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %index ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %wide.load = load <4 x i32>, ptr %i.yr, align 4, !tbaa !85, !alias.scope !251
  %wide.load89 = load <4 x i32>, ptr %i.ys, align 4, !tbaa !85, !alias.scope !251
  %i.yt = trunc <4 x i32> %wide.load to <4 x i8>
  %i.yu = trunc <4 x i32> %wide.load89 to <4 x i8>
  %i.yv = getelementptr i8, ptr %i.yq, i64 %index ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store <4 x i8> %i.yt, ptr %i.yv, align 1, !tbaa !73, !alias.scope !252, !noalias !251
  store <4 x i8> %i.yu, ptr %i.yw, align 1, !tbaa !73, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yx = icmp eq i64 %index.next, %n.vec
  br i1 %i.yx, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph134.i.i.i, %middle.block
  %.0133.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph134.i.i.i ], [ %n.vec, %middle.block ]
  %.2132.i.i.i.ph = phi i64 [ %.188.15.i.i.i, %vector.memcheck ], [ %.188.15.i.i.i, %.lr.ph134.i.i.i ], [ %i.yp, %middle.block ]
  br label %scalar.ph

.thread172.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %i.yy = add i8 %i.xp, -1
  %i.yz = getelementptr i8, ptr %i.xm, i64 1
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !73
  %i.za = load i32, ptr %i.ku, align 4, !tbaa !85
  br label %.thread174.i.i.i

bb.ah:                                            ; preds = %.loopexit.i.i.i
  %i.zb = getelementptr i8, ptr %i.xm, i64 1
  store i8 %i.xp, ptr %i.zb, align 1, !tbaa !73
  %i.zc = icmp eq i64 %spec.select.16.i.i.i, 2
  %i.zd = load i32, ptr %i.ku, align 4, !tbaa !85 ; 2 uses
  br i1 %i.zc, label %.thread171.i.i.i, label %bb.ai

.thread171.i.i.i:                                 ; preds = %bb.ah
  %i.ze = add i32 %i.zd, -1
  br label %.thread174.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.zf = trunc i32 %i.zd to i8
  %i.zg = getelementptr i8, ptr %i.xm, i64 2
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !73
  %i.zh = icmp eq i64 %spec.select.16.i.i.i, 3
  %i.zi = load i32, ptr %i.ky, align 4, !tbaa !85 ; 2 uses
  br i1 %i.zh, label %.thread173.i.i.i, label %bb.aj

.thread173.i.i.i:                                 ; preds = %bb.ai
  %i.zj = add i32 %i.zi, -1
  br label %.thread177.i.i.i

.thread174.i.i.i:                                 ; preds = %.thread171.i.i.i, %.thread172.i.i.i
  %.sink215.i.i.i = phi i32 [ %i.ze, %.thread171.i.i.i ], [ %i.za, %.thread172.i.i.i ]
  %i.zk = trunc i32 %.sink215.i.i.i to i8
  %i.zl = getelementptr i8, ptr %i.xm, i64 2
  store i8 %i.zk, ptr %i.zl, align 1, !tbaa !73
  %i.zm = load i32, ptr %i.ky, align 4, !tbaa !85
  br label %.thread177.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.zn = trunc i32 %i.zi to i8
  %i.zo = getelementptr i8, ptr %i.xm, i64 3
  store i8 %i.zn, ptr %i.zo, align 1, !tbaa !73
  %i.zp = icmp eq i64 %spec.select.16.i.i.i, 4
  %i.zq = load i32, ptr %i.lc, align 4, !tbaa !85 ; 2 uses
  br i1 %i.zp, label %.thread175.i.i.i, label %bb.ak

.thread175.i.i.i:                                 ; preds = %bb.aj
  %i.zr = add i32 %i.zq, -1
  br label %.thread180.i.i.i

.thread177.i.i.i:                                 ; preds = %.thread174.i.i.i, %.thread173.i.i.i
  %.sink218.i.i.i = phi i32 [ %i.zj, %.thread173.i.i.i ], [ %i.zm, %.thread174.i.i.i ]
  %i.zs = trunc i32 %.sink218.i.i.i to i8
  %i.zt = getelementptr i8, ptr %i.xm, i64 3
  store i8 %i.zs, ptr %i.zt, align 1, !tbaa !73
  %i.zu = load i32, ptr %i.lc, align 4, !tbaa !85
  br label %.thread180.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.zv = trunc i32 %i.zq to i8
  %i.zw = getelementptr i8, ptr %i.xm, i64 4
  store i8 %i.zv, ptr %i.zw, align 1, !tbaa !73
  %i.zx = icmp eq i64 %spec.select.16.i.i.i, 5
  %i.zy = load i32, ptr %i.lg, align 4, !tbaa !85 ; 2 uses
  br i1 %i.zx, label %.thread178.i.i.i, label %bb.al

.thread178.i.i.i:                                 ; preds = %bb.ak
  %i.zz = add i32 %i.zy, -1
  br label %.thread183.i.i.i

.thread180.i.i.i:                                 ; preds = %.thread177.i.i.i, %.thread175.i.i.i
  %.sink221.i.i.i = phi i32 [ %i.zr, %.thread175.i.i.i ], [ %i.zu, %.thread177.i.i.i ]
  %i.aaa = trunc i32 %.sink221.i.i.i to i8
  %i.aab = getelementptr i8, ptr %i.xm, i64 4
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !73
  %i.aac = load i32, ptr %i.lg, align 4, !tbaa !85
  br label %.thread183.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.aad = trunc i32 %i.zy to i8
  %i.aae = getelementptr i8, ptr %i.xm, i64 5
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !73
  %i.aaf = icmp eq i64 %spec.select.16.i.i.i, 6
  %i.aag = load i32, ptr %i.lk, align 4, !tbaa !85 ; 2 uses
  br i1 %i.aaf, label %.thread181.i.i.i, label %bb.am

.thread181.i.i.i:                                 ; preds = %bb.al
  %i.aah = add i32 %i.aag, -1
  br label %.thread186.i.i.i

.thread183.i.i.i:                                 ; preds = %.thread180.i.i.i, %.thread178.i.i.i
  %.sink224.i.i.i = phi i32 [ %i.zz, %.thread178.i.i.i ], [ %i.aac, %.thread180.i.i.i ]
  %i.aai = trunc i32 %.sink224.i.i.i to i8
  %i.aaj = getelementptr i8, ptr %i.xm, i64 5
  store i8 %i.aai, ptr %i.aaj, align 1, !tbaa !73
  %i.aak = load i32, ptr %i.lk, align 4, !tbaa !85
  br label %.thread186.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.aal = trunc i32 %i.aag to i8
  %i.aam = getelementptr i8, ptr %i.xm, i64 6
  store i8 %i.aal, ptr %i.aam, align 1, !tbaa !73
  %i.aan = icmp eq i64 %spec.select.16.i.i.i, 7
  %i.aao = load i32, ptr %i.lo, align 4, !tbaa !85 ; 2 uses
  br i1 %i.aan, label %.thread184.i.i.i, label %bb.an

.thread184.i.i.i:                                 ; preds = %bb.am
  %i.aap = add i32 %i.aao, -1
  br label %.thread189.i.i.i

.thread186.i.i.i:                                 ; preds = %.thread183.i.i.i, %.thread181.i.i.i
  %.sink227.i.i.i = phi i32 [ %i.aah, %.thread181.i.i.i ], [ %i.aak, %.thread183.i.i.i ]
  %i.aaq = trunc i32 %.sink227.i.i.i to i8
  %i.aar = getelementptr i8, ptr %i.xm, i64 6
  store i8 %i.aaq, ptr %i.aar, align 1, !tbaa !73
  %i.aas = load i32, ptr %i.lo, align 4, !tbaa !85
  br label %.thread189.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.aat = trunc i32 %i.aao to i8
  %i.aau = getelementptr i8, ptr %i.xm, i64 7
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !73
  %i.aav = icmp eq i64 %spec.select.16.i.i.i, 8
  %i.aaw = load i32, ptr %i.ls, align 4, !tbaa !85 ; 2 uses
  br i1 %i.aav, label %.thread187.i.i.i, label %bb.ao

.thread187.i.i.i:                                 ; preds = %bb.an
  %i.aax = add i32 %i.aaw, -1
  br label %.thread192.i.i.i

.thread189.i.i.i:                                 ; preds = %.thread186.i.i.i, %.thread184.i.i.i
  %.sink230.i.i.i = phi i32 [ %i.aap, %.thread184.i.i.i ], [ %i.aas, %.thread186.i.i.i ]
  %i.aay = trunc i32 %.sink230.i.i.i to i8
  %i.aaz = getelementptr i8, ptr %i.xm, i64 7
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !73
  %i.aba = load i32, ptr %i.ls, align 4, !tbaa !85
  br label %.thread192.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.abb = trunc i32 %i.aaw to i8
  %i.abc = getelementptr i8, ptr %i.xm, i64 8
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !73
  %i.abd = icmp eq i64 %spec.select.16.i.i.i, 9
  %i.abe = load i32, ptr %i.lw, align 4, !tbaa !85 ; 2 uses
  br i1 %i.abd, label %.thread190.i.i.i, label %bb.ap

.thread190.i.i.i:                                 ; preds = %bb.ao
  %i.abf = add i32 %i.abe, -1
  br label %.thread195.i.i.i

.thread192.i.i.i:                                 ; preds = %.thread189.i.i.i, %.thread187.i.i.i
  %.sink233.i.i.i = phi i32 [ %i.aax, %.thread187.i.i.i ], [ %i.aba, %.thread189.i.i.i ]
  %i.abg = trunc i32 %.sink233.i.i.i to i8
  %i.abh = getelementptr i8, ptr %i.xm, i64 8
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !73
  %i.abi = load i32, ptr %i.lw, align 4, !tbaa !85
  br label %.thread195.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.abj = trunc i32 %i.abe to i8
  %i.abk = getelementptr i8, ptr %i.xm, i64 9
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !73
  %i.abl = icmp eq i64 %spec.select.16.i.i.i, 10
  %i.abm = load i32, ptr %i.ma, align 4, !tbaa !85 ; 2 uses
  br i1 %i.abl, label %.thread193.i.i.i, label %bb.aq

.thread193.i.i.i:                                 ; preds = %bb.ap
  %i.abn = add i32 %i.abm, -1
  br label %.thread198.i.i.i

.thread195.i.i.i:                                 ; preds = %.thread192.i.i.i, %.thread190.i.i.i
  %.sink236.i.i.i = phi i32 [ %i.abf, %.thread190.i.i.i ], [ %i.abi, %.thread192.i.i.i ]
  %i.abo = trunc i32 %.sink236.i.i.i to i8
  %i.abp = getelementptr i8, ptr %i.xm, i64 9
  store i8 %i.abo, ptr %i.abp, align 1, !tbaa !73
  %i.abq = load i32, ptr %i.ma, align 4, !tbaa !85
  br label %.thread198.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.abr = trunc i32 %i.abm to i8
  %i.abs = getelementptr i8, ptr %i.xm, i64 10
  store i8 %i.abr, ptr %i.abs, align 1, !tbaa !73
  %i.abt = icmp eq i64 %spec.select.16.i.i.i, 11
  %i.abu = load i32, ptr %i.me, align 4, !tbaa !85 ; 2 uses
  br i1 %i.abt, label %.thread196.i.i.i, label %bb.ar

.thread196.i.i.i:                                 ; preds = %bb.aq
  %i.abv = add i32 %i.abu, -1
  br label %.thread201.i.i.i

.thread198.i.i.i:                                 ; preds = %.thread195.i.i.i, %.thread193.i.i.i
  %.sink239.i.i.i = phi i32 [ %i.abn, %.thread193.i.i.i ], [ %i.abq, %.thread195.i.i.i ]
  %i.abw = trunc i32 %.sink239.i.i.i to i8
  %i.abx = getelementptr i8, ptr %i.xm, i64 10
  store i8 %i.abw, ptr %i.abx, align 1, !tbaa !73
  %i.aby = load i32, ptr %i.me, align 4, !tbaa !85
  br label %.thread201.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.abz = trunc i32 %i.abu to i8
  %i.aca = getelementptr i8, ptr %i.xm, i64 11
  store i8 %i.abz, ptr %i.aca, align 1, !tbaa !73
  %i.acb = icmp eq i64 %spec.select.16.i.i.i, 12
  %i.acc = load i32, ptr %i.mi, align 4, !tbaa !85 ; 2 uses
  br i1 %i.acb, label %.thread199.i.i.i, label %bb.as

.thread199.i.i.i:                                 ; preds = %bb.ar
  %i.acd = add i32 %i.acc, -1
  br label %.thread204.i.i.i

.thread201.i.i.i:                                 ; preds = %.thread198.i.i.i, %.thread196.i.i.i
  %.sink242.i.i.i = phi i32 [ %i.abv, %.thread196.i.i.i ], [ %i.aby, %.thread198.i.i.i ]
  %i.ace = trunc i32 %.sink242.i.i.i to i8
  %i.acf = getelementptr i8, ptr %i.xm, i64 11
  store i8 %i.ace, ptr %i.acf, align 1, !tbaa !73
  %i.acg = load i32, ptr %i.mi, align 4, !tbaa !85
  br label %.thread204.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ach = trunc i32 %i.acc to i8
  %i.aci = getelementptr i8, ptr %i.xm, i64 12
  store i8 %i.ach, ptr %i.aci, align 1, !tbaa !73
  %i.acj = icmp eq i64 %spec.select.16.i.i.i, 13
  %i.ack = load i32, ptr %i.mm, align 4, !tbaa !85 ; 2 uses
  br i1 %i.acj, label %.thread202.i.i.i, label %bb.at

.thread202.i.i.i:                                 ; preds = %bb.as
  %i.acl = add i32 %i.ack, -1
  br label %.thread207.i.i.i

.thread204.i.i.i:                                 ; preds = %.thread201.i.i.i, %.thread199.i.i.i
  %.sink245.i.i.i = phi i32 [ %i.acd, %.thread199.i.i.i ], [ %i.acg, %.thread201.i.i.i ]
  %i.acm = trunc i32 %.sink245.i.i.i to i8
  %i.acn = getelementptr i8, ptr %i.xm, i64 12
  store i8 %i.acm, ptr %i.acn, align 1, !tbaa !73
  %i.aco = load i32, ptr %i.mm, align 4, !tbaa !85
  br label %.thread207.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.acp = trunc i32 %i.ack to i8
  %i.acq = getelementptr i8, ptr %i.xm, i64 13
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !73
  %i.acr = icmp eq i64 %spec.select.16.i.i.i, 14
  %i.acs = load i32, ptr %i.mq, align 4, !tbaa !85 ; 2 uses
  br i1 %i.acr, label %.thread205.i.i.i, label %bb.au

.thread205.i.i.i:                                 ; preds = %bb.at
  %i.act = add i32 %i.acs, -1
  br label %.thread210.i.i.i

.thread207.i.i.i:                                 ; preds = %.thread204.i.i.i, %.thread202.i.i.i
  %.sink248.i.i.i = phi i32 [ %i.acl, %.thread202.i.i.i ], [ %i.aco, %.thread204.i.i.i ]
  %i.acu = trunc i32 %.sink248.i.i.i to i8
  %i.acv = getelementptr i8, ptr %i.xm, i64 13
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !73
  %i.acw = load i32, ptr %i.mq, align 4, !tbaa !85
  br label %.thread210.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.acx = trunc i32 %i.acs to i8
  %i.acy = getelementptr i8, ptr %i.xm, i64 14
  store i8 %i.acx, ptr %i.acy, align 1, !tbaa !73
  %i.acz = icmp eq i64 %spec.select.16.i.i.i, 15
  %i.ada = load i32, ptr %i.mu, align 4, !tbaa !85 ; 2 uses
  br i1 %i.acz, label %.thread208.i.i.i, label %bb.av

.thread208.i.i.i:                                 ; preds = %bb.au
  %i.adb = add i32 %i.ada, -1
  br label %.sink.split.i.i.i

.thread210.i.i.i:                                 ; preds = %.thread207.i.i.i, %.thread205.i.i.i
  %.sink251.i.i.i = phi i32 [ %i.act, %.thread205.i.i.i ], [ %i.acw, %.thread207.i.i.i ]
  %i.adc = trunc i32 %.sink251.i.i.i to i8
  %i.add = getelementptr i8, ptr %i.xm, i64 14
  store i8 %i.adc, ptr %i.add, align 1, !tbaa !73
  %i.ade = load i32, ptr %i.mu, align 4, !tbaa !85
  br label %.sink.split.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.adf = trunc i32 %i.ada to i8
  %i.adg = getelementptr i8, ptr %i.xm, i64 15
  store i8 %i.adf, ptr %i.adg, align 1, !tbaa !73
  %i.adh = icmp eq i64 %spec.select.16.i.i.i, 16
  br i1 %i.adh, label %bb.ax, label %bb.aw

.sink.split.i.i.i:                                ; preds = %.thread210.i.i.i, %.thread208.i.i.i
  %.sink254.i.i.i = phi i32 [ %i.ade, %.thread210.i.i.i ], [ %i.adb, %.thread208.i.i.i ]
  %i.adi = trunc i32 %.sink254.i.i.i to i8
  %i.adj = getelementptr i8, ptr %i.xm, i64 15
  store i8 %i.adi, ptr %i.adj, align 1, !tbaa !73
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split.i.i.i, %bb.av
  %i.adk = load i32, ptr %i.my, align 4, !tbaa !85
  br label %.preheader.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.adl = load i32, ptr %i.my, align 4, !tbaa !85
  %i.adm = add i32 %i.adl, -1
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ax, %bb.aw
  %i.adn = phi i32 [ %i.adm, %bb.ax ], [ %i.adk, %bb.aw ]
  %i.ado = trunc i32 %i.adn to i8
  %i.adp = getelementptr i8, ptr %i.xm, i64 16
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !73
  %.188.15.i.i.i = add i64 %.087.i.i.i, 17        ; 5 uses
  %i.adq = add nsw i64 %i.nb, -1                  ; 4 uses
  %.not136.i.i.i = icmp eq i64 %i.adq, 0
  br i1 %.not136.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph134.i.i.i

._crit_edge.i.i.i:                                ; preds = %scalar.ph, %middle.block, %.preheader.i.i.i
  %.2.lcssa.i.i.i = phi i64 [ %.188.15.i.i.i, %.preheader.i.i.i ], [ %i.yp, %middle.block ], [ %i.adx, %scalar.ph ]
  %i.adr = getelementptr inbounds nuw i8, ptr %i.kl, i64 1100
  %i.ads = load i8, ptr %i.adr, align 4, !tbaa !249, !range !62, !noundef !63
  %i.adt = trunc nuw i8 %i.ads to i1
  br i1 %i.adt, label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.i, label %bb.z

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0133.i.i.i = phi i64 [ %i.adz, %scalar.ph ], [ %.0133.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2132.i.i.i = phi i64 [ %i.adx, %scalar.ph ], [ %.2132.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.0133.i.i.i
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !85
  %i.adw = trunc i32 %i.adv to i8
  %i.adx = add i64 %.2132.i.i.i, 1                ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.2132.i.i.i
  store i8 %i.adw, ptr %i.ady, align 1, !tbaa !73
  %i.adz = add nuw i64 %.0133.i.i.i, 1            ; 2 uses
  %i.aea = icmp ult i64 %i.adz, %i.adq
  br i1 %i.aea, label %scalar.ph, label %._crit_edge.i.i.i, !llvm.loop !200

bb.ay:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.aeb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14, !noalias !253 ; 4 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aee = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #14, !noalias !253 ; 5 uses
  store ptr %i.aee, ptr %i.aeb, align 8, !tbaa !50, !noalias !253
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 2 ; 2 uses
  store ptr %i.aef, ptr %i.aed, align 8, !tbaa !65, !noalias !253
  store i8 -1, ptr %i.aee, align 1, !noalias !253
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 %i.dr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !253
  store ptr %i.aef, ptr %i.aec, align 8, !tbaa !51, !noalias !253
  %i.aeg = load ptr, ptr %i.p, align 8, !tbaa !66 ; 3 uses
  %i.aeh = load ptr, ptr %i.q, align 8, !tbaa !67 ; 3 uses
  %i.aei = ptrtoint ptr %i.aeg to i64
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = sub i64 %i.aei, %i.aej
  %i.ael = ashr exact i64 %i.aek, 3
  %i.aem = icmp eq ptr %i.aeg, %i.aeh
  %i.aen = mul i64 %i.ael, 170
  %i.aeo = add i64 %i.aen, -1
  %i.aep = select i1 %i.aem, i64 0, i64 %i.aeo
  %i.aeq = load i64, ptr %i.r, align 8, !tbaa !68
  %i.aer = load i64, ptr %i.s, align 8, !tbaa !69
  %i.aes = add i64 %i.aer, %i.aeq                 ; 2 uses
  %i.aet = icmp eq i64 %i.aep, %i.aes
  br i1 %i.aet, label %bb.az, label %_ZN3jxl4jpeg12_GLOBAL__N_113EncodeRestartEhPNS0_18SerializationStateE.exit.i.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #15
  %.pre.i1.i.i.i = load i64, ptr %i.s, align 8, !tbaa !69
  %.pre3.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !68
  %.pre4.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %.pre5.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66
  %.pre6.i.i.i.i = add i64 %.pre3.i.i.i.i, %.pre.i1.i.i.i
  br label %_ZN3jxl4jpeg12_GLOBAL__N_113EncodeRestartEhPNS0_18SerializationStateE.exit.i.i

_ZN3jxl4jpeg12_GLOBAL__N_113EncodeRestartEhPNS0_18SerializationStateE.exit.i.i: ; preds = %bb.az, %bb.ay
  %.pre-phi.i.i36.i.i = phi i64 [ %.pre6.i.i.i.i, %bb.az ], [ %i.aes, %bb.ay ] ; 2 uses
  %i.aeu = phi ptr [ %.pre5.i.i.i.i, %bb.az ], [ %i.aeg, %bb.ay ]
  %i.aev = phi ptr [ %.pre4.i.i.i.i, %bb.az ], [ %i.aeh, %bb.ay ] ; 2 uses
  %i.aew = udiv i64 %.pre-phi.i.i36.i.i, 170
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %i.aew
  %i.aey = icmp ne ptr %i.aeu, %i.aev
  tail call void @llvm.assume(i1 %i.aey)
  %i.aez = load ptr, ptr %i.aex, align 8, !tbaa !71
  %i.afa = urem i64 %.pre-phi.i.i36.i.i, 170
  %i.afb = getelementptr inbounds nuw [24 x i8], ptr %i.aez, i64 %i.afa ; 3 uses
  store ptr %i.aee, ptr %i.afb, align 8
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  store i64 2, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  store ptr %i.aeb, ptr %i.afc, align 8, !tbaa !72
  br label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.sink.split.i

bb.ba:                                            ; preds = %bb.q
  %i.afd = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14, !noalias !254 ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.afg = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #14, !noalias !254 ; 4 uses
  store ptr %i.afg, ptr %i.afd, align 8, !tbaa !50, !noalias !254
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 2 ; 2 uses
  store ptr %i.afh, ptr %i.aff, align 8, !tbaa !65, !noalias !254
  store i16 -9729, ptr %i.afg, align 1, !noalias !254
  store ptr %i.afh, ptr %i.afe, align 8, !tbaa !51, !noalias !254
  %i.afi = load ptr, ptr %i.p, align 8, !tbaa !66 ; 3 uses
  %i.afj = load ptr, ptr %i.q, align 8, !tbaa !67 ; 3 uses
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = ashr exact i64 %i.afm, 3
  %i.afo = icmp eq ptr %i.afi, %i.afj
  %i.afp = mul i64 %i.afn, 170
  %i.afq = add i64 %i.afp, -1
  %i.afr = select i1 %i.afo, i64 0, i64 %i.afq
  %i.afs = load i64, ptr %i.r, align 8, !tbaa !68
  %i.aft = load i64, ptr %i.s, align 8, !tbaa !69
  %i.afu = add i64 %i.aft, %i.afs                 ; 2 uses
  %i.afv = icmp eq i64 %i.afr, %i.afu
  br i1 %i.afv, label %bb.bb, label %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #15
  %.pre.i3.i.i.i = load i64, ptr %i.s, align 8, !tbaa !69
  %.pre3.i.i42.i.i = load i64, ptr %i.r, align 8, !tbaa !68
  %.pre4.i.i43.i.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %.pre5.i.i44.i.i = load ptr, ptr %i.p, align 8, !tbaa !66
  %.pre6.i.i45.i.i = add i64 %.pre3.i.i42.i.i, %.pre.i3.i.i.i
  br label %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i

_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i:         ; preds = %bb.bb, %bb.ba
  %.pre-phi.i.i37.i.i = phi i64 [ %.pre6.i.i45.i.i, %bb.bb ], [ %i.afu, %bb.ba ] ; 2 uses
  %i.afw = phi ptr [ %.pre5.i.i44.i.i, %bb.bb ], [ %i.afi, %bb.ba ]
  %i.afx = phi ptr [ %.pre4.i.i43.i.i, %bb.bb ], [ %i.afj, %bb.ba ] ; 2 uses
  %i.afy = udiv i64 %.pre-phi.i.i37.i.i, 170
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.afx, i64 %i.afy
  %i.aga = icmp ne ptr %i.afw, %i.afx
  tail call void @llvm.assume(i1 %i.aga)
  %i.agb = load ptr, ptr %i.afz, align 8, !tbaa !71
  %i.agc = urem i64 %.pre-phi.i.i37.i.i, 170
  %i.agd = getelementptr inbounds nuw [24 x i8], ptr %i.agb, i64 %i.agc ; 3 uses
  store ptr %i.afg, ptr %i.agd, align 8
  %.sroa.4.0..sroa_idx.i38.i.i = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i38.i.i, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  store ptr %i.afd, ptr %i.age, align 8, !tbaa !72
  %i.agf = load i64, ptr %i.s, align 8, !tbaa !69
  %i.agg = add i64 %i.agf, 1                      ; 2 uses
  store i64 %i.agg, ptr %i.s, align 8, !tbaa !69
  %i.agh = load ptr, ptr %i.p, align 8, !tbaa !66 ; 3 uses
  %i.agi = load ptr, ptr %i.q, align 8, !tbaa !67 ; 3 uses
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = ptrtoint ptr %i.agi to i64
  %i.agl = sub i64 %i.agj, %i.agk
  %i.agm = ashr exact i64 %i.agl, 3
  %i.agn = icmp eq ptr %i.agh, %i.agi
  %i.ago = mul i64 %i.agm, 170
  %i.agp = add i64 %i.ago, -1
  %i.agq = select i1 %i.agn, i64 0, i64 %i.agp
  %i.agr = load i64, ptr %i.r, align 8, !tbaa !68
  %i.ags = add i64 %i.agr, %i.agg                 ; 2 uses
  %i.agt = icmp eq i64 %i.agq, %i.ags
  br i1 %i.agt, label %bb.bc, label %_ZN3jxl4jpeg12_GLOBAL__N_19EncodeEOIERKNS0_8JPEGDataEPNS0_18SerializationStateE.exit.i.i

bb.bc:                                            ; preds = %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i
  tail call void @_ZNSt3__15dequeIN3jxl4jpeg11OutputChunkENS_9allocatorIS3_EEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #15
  %.pre.i7.i.i.i = load i64, ptr %i.s, align 8, !tbaa !69
  %.pre8.i8.i.i.i = load i64, ptr %i.r, align 8, !tbaa !68
  %.pre9.i.i39.i.i = load ptr, ptr %i.q, align 8, !tbaa !67
  %.pre10.i.i40.i.i = load ptr, ptr %i.p, align 8, !tbaa !66
  %.pre12.i.i41.i.i = add i64 %.pre8.i8.i.i.i, %.pre.i7.i.i.i
  br label %_ZN3jxl4jpeg12_GLOBAL__N_19EncodeEOIERKNS0_8JPEGDataEPNS0_18SerializationStateE.exit.i.i

_ZN3jxl4jpeg12_GLOBAL__N_19EncodeEOIERKNS0_8JPEGDataEPNS0_18SerializationStateE.exit.i.i: ; preds = %bb.bc, %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i
  %.pre-phi.i6.i.i.i = phi i64 [ %.pre12.i.i41.i.i, %bb.bc ], [ %i.ags, %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i ] ; 2 uses
  %i.agu = phi ptr [ %.pre10.i.i40.i.i, %bb.bc ], [ %i.agh, %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i ]
  %i.agv = phi ptr [ %.pre9.i.i39.i.i, %bb.bc ], [ %i.agi, %_ZN3jxl4jpeg11OutputChunkD2Ev.exit.i.i.i ] ; 2 uses
  %i.agw = udiv i64 %.pre-phi.i6.i.i.i, 170
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.agw
  %i.agy = icmp ne ptr %i.agu, %i.agv
  tail call void @llvm.assume(i1 %i.agy)
  %i.agz = load ptr, ptr %i.agx, align 8, !tbaa !71
  %i.aha = urem i64 %.pre-phi.i6.i.i.i, 170
  %i.ahb = getelementptr inbounds nuw [24 x i8], ptr %i.agz, i64 %i.aha ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahd = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.ahe = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  store i64 %i.ahh, ptr %i.ahc, align 8, !tbaa !92
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  store ptr null, ptr %i.ahi, align 8, !tbaa !72
  store ptr %i.ahe, ptr %i.ahb, align 8, !tbaa !93
  br label %_ZN3jxl4jpeg12_GLOBAL__N_116SerializeSectionEhPNS0_18SerializationStateERKNS0_8JPEGDataE.exit.thread.sink.split.i

bb.bd:                                            ; preds = %bb.q
  %i.ahj = load i32, ptr %i.ag, align 4, !tbaa !94
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.ahm = getelementptr inbounds nuw [120 x i8], ptr %i.ahl, i64 %i.ahk ; 4 uses
  %i.ahn = load i8, ptr %i.ah, align 1, !tbaa !74, !range !62, !noundef !63
  %i.aho = trunc nuw i8 %i.ahn to i1
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahq = load i32, ptr %i.ahp, align 8
  %i.ahr = icmp eq i32 %i.ahq, 0                  ; 2 uses
  br i1 %i.aho, label %bb.be, label %.critedge.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ahs = load i32, ptr %i.ahm, align 8
  %i.aht = icmp eq i32 %i.ahs, 0
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 12
  %i.ahv = load i32, ptr %i.ahu, align 4
  %i.ahw = icmp eq i32 %i.ahv, 0
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !106
end_hunk_1
