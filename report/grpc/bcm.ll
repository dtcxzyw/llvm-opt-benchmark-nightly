Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@aes_nohw_ctr32_encrypt_blocks:bb.a
  %i.hd = shl nuw <4 x i32> %i.hc, splat (i32 4)
  %i.he = bitcast <4 x i32> %i.hd to <2 x i64>
  %i.hf = xor <2 x i64> %i.fr, %i.he
  store <2 x i64> %i.hf, ptr %.phi.trans.insert.i, align 16, !tbaa !13
  %i.hg = xor <2 x i64> %i.hb, %i.gl
  store <2 x i64> %i.hg, ptr %.phi.trans.insert16.i, align 16, !tbaa !13
  %i.hh = bitcast <2 x i64> %i.fi to <4 x i32>
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 4)
  %i.hj = bitcast <4 x i32> %i.hi to <2 x i64>
  %i.hk = xor <2 x i64> %i.gc, %i.hj
  %i.hl = and <2 x i64> %i.hk, splat (i64 1085102592571150095) ; 2 uses
  %i.hm = bitcast <2 x i64> %i.hl to <4 x i32>
  %i.hn = shl nuw <4 x i32> %i.hm, splat (i32 4)
  %i.ho = bitcast <4 x i32> %i.hn to <2 x i64>
  %i.hp = xor <2 x i64> %i.fi, %i.ho
  store <2 x i64> %i.hp, ptr %.phi.trans.insert10.i, align 16, !tbaa !13
  %i.hq = xor <2 x i64> %i.hl, %i.gc
  store <2 x i64> %i.hq, ptr %.phi.trans.insert18.i, align 16, !tbaa !13
  %i.hr = bitcast <2 x i64> %i.fs to <4 x i32>
  %i.hs = lshr <4 x i32> %i.hr, splat (i32 4)
  %i.ht = bitcast <4 x i32> %i.hs to <2 x i64>
  %i.hu = xor <2 x i64> %i.gm, %i.ht
  %i.hv = and <2 x i64> %i.hu, splat (i64 1085102592571150095) ; 2 uses
  %i.hw = bitcast <2 x i64> %i.hv to <4 x i32>
  %i.hx = shl nuw <4 x i32> %i.hw, splat (i32 4)
  %i.hy = bitcast <4 x i32> %i.hx to <2 x i64>
  %i.hz = xor <2 x i64> %i.fs, %i.hy
  store <2 x i64> %i.hz, ptr %.phi.trans.insert12.i, align 16, !tbaa !13
  %i.ia = xor <2 x i64> %i.hv, %i.gm
  store <2 x i64> %i.ia, ptr %.phi.trans.insert20.i, align 16, !tbaa !13
  %i.ib = load i32, ptr %i.d, align 4, !tbaa !11
  %i.ic = zext i32 %i.ib to i64
  call fastcc void @_ZL22aes_nohw_encrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %5, i64 noundef %i.ic, ptr noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0.i, ptr noundef nonnull readonly align 16 dereferenceable(128) %6, i64 128, i1 false), !tbaa.struct !21
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load <2 x i64>, ptr %.sroa.0.i, align 16, !tbaa !13 ; 2 uses
  %i.id = bitcast <2 x i64> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i to <4 x i32>
  %i.ie = lshr <4 x i32> %i.id, splat (i32 1)
  %i.if = bitcast <4 x i32> %i.ie to <2 x i64>
  %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i = load <2 x i64>, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.ig = xor <2 x i64> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i, %i.if
  %i.ih = and <2 x i64> %i.ig, splat (i64 6148914691236517205) ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ih to <4 x i32>
  %i.ij = shl nuw <4 x i32> %i.ii, splat (i32 1)
  %i.ik = bitcast <4 x i32> %i.ij to <2 x i64>
  %i.il = xor <2 x i64> %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, %i.ik ; 2 uses
  %i.im = xor <2 x i64> %i.ih, %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i ; 2 uses
  %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..i = load <2 x i64>, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.in = bitcast <2 x i64> %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..i to <4 x i32>
  %i.io = lshr <4 x i32> %i.in, splat (i32 1)
  %i.ip = bitcast <4 x i32> %i.io to <2 x i64>
  %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..i = load <2 x i64>, ptr %.sroa.0.i.48.i.48.i.48..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.iq = xor <2 x i64> %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..i, %i.ip
  %i.ir = and <2 x i64> %i.iq, splat (i64 6148914691236517205) ; 2 uses
  %i.is = bitcast <2 x i64> %i.ir to <4 x i32>
  %i.it = shl nuw <4 x i32> %i.is, splat (i32 1)
  %i.iu = bitcast <4 x i32> %i.it to <2 x i64>
  %i.iv = xor <2 x i64> %.sroa.0.i.32..sroa.0.i.32..sroa.0.i.32..sroa.0.32..sroa.0.32..i, %i.iu ; 2 uses
  %i.iw = xor <2 x i64> %i.ir, %.sroa.0.i.48..sroa.0.i.48..sroa.0.i.48..sroa.0.48..sroa.0.48..i ; 2 uses
  %.sroa.0.i.64..sroa.0.i.64..sroa.0.i.64..sroa.0.64..sroa.0.64..i = load <2 x i64>, ptr %.sroa.0.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.ix = bitcast <2 x i64> %.sroa.0.i.64..sroa.0.i.64..sroa.0.i.64..sroa.0.64..sroa.0.64..i to <4 x i32>
  %i.iy = lshr <4 x i32> %i.ix, splat (i32 1)
  %i.iz = bitcast <4 x i32> %i.iy to <2 x i64>
  %.sroa.0.i.80..sroa.0.i.80..sroa.0.i.80..sroa.0.80..sroa.0.80..i = load <2 x i64>, ptr %.sroa.0.i.80.i.80.i.80..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.ja = xor <2 x i64> %.sroa.0.i.80..sroa.0.i.80..sroa.0.i.80..sroa.0.80..sroa.0.80..i, %i.iz
  %i.jb = and <2 x i64> %i.ja, splat (i64 6148914691236517205) ; 2 uses
  %i.jc = bitcast <2 x i64> %i.jb to <4 x i32>
  %i.jd = shl nuw <4 x i32> %i.jc, splat (i32 1)
  %i.je = bitcast <4 x i32> %i.jd to <2 x i64>
  %i.jf = xor <2 x i64> %.sroa.0.i.64..sroa.0.i.64..sroa.0.i.64..sroa.0.64..sroa.0.64..i, %i.je ; 2 uses
  %i.jg = xor <2 x i64> %i.jb, %.sroa.0.i.80..sroa.0.i.80..sroa.0.i.80..sroa.0.80..sroa.0.80..i ; 2 uses
  %.sroa.0.i.96..sroa.0.i.96..sroa.0.i.96..sroa.0.96..sroa.0.96..i = load <2 x i64>, ptr %.sroa.0.i.96.i.96.i.96..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.jh = bitcast <2 x i64> %.sroa.0.i.96..sroa.0.i.96..sroa.0.i.96..sroa.0.96..sroa.0.96..i to <4 x i32>
  %i.ji = lshr <4 x i32> %i.jh, splat (i32 1)
  %i.jj = bitcast <4 x i32> %i.ji to <2 x i64>
  %.sroa.0.i.112..sroa.0.i.112..sroa.0.i.112..sroa.0.112..sroa.0.112..i = load <2 x i64>, ptr %.sroa.0.i.112.i.112.i.112..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.jk = xor <2 x i64> %.sroa.0.i.112..sroa.0.i.112..sroa.0.i.112..sroa.0.112..sroa.0.112..i, %i.jj
  %i.jl = and <2 x i64> %i.jk, splat (i64 6148914691236517205) ; 2 uses
  %i.jm = bitcast <2 x i64> %i.jl to <4 x i32>
  %i.jn = shl nuw <4 x i32> %i.jm, splat (i32 1)
  %i.jo = bitcast <4 x i32> %i.jn to <2 x i64>
  %i.jp = xor <2 x i64> %.sroa.0.i.96..sroa.0.i.96..sroa.0.i.96..sroa.0.96..sroa.0.96..i, %i.jo ; 2 uses
  %i.jq = xor <2 x i64> %i.jl, %.sroa.0.i.112..sroa.0.i.112..sroa.0.i.112..sroa.0.112..sroa.0.112..i ; 2 uses
  %i.jr = bitcast <2 x i64> %i.il to <4 x i32>
  %i.js = lshr <4 x i32> %i.jr, splat (i32 2)
  %i.jt = bitcast <4 x i32> %i.js to <2 x i64>
  %i.ju = xor <2 x i64> %i.iv, %i.jt
  %i.jv = and <2 x i64> %i.ju, splat (i64 3689348814741910323) ; 2 uses
  %i.jw = bitcast <2 x i64> %i.jv to <4 x i32>
  %i.jx = shl nuw <4 x i32> %i.jw, splat (i32 2)
  %i.jy = bitcast <4 x i32> %i.jx to <2 x i64>
  %i.jz = xor <2 x i64> %i.il, %i.jy              ; 2 uses
  %i.ka = xor <2 x i64> %i.jv, %i.iv              ; 2 uses
  %i.kb = bitcast <2 x i64> %i.im to <4 x i32>
  %i.kc = lshr <4 x i32> %i.kb, splat (i32 2)
  %i.kd = bitcast <4 x i32> %i.kc to <2 x i64>
  %i.ke = xor <2 x i64> %i.iw, %i.kd
  %i.kf = and <2 x i64> %i.ke, splat (i64 3689348814741910323) ; 2 uses
  %i.kg = bitcast <2 x i64> %i.kf to <4 x i32>
  %i.kh = shl nuw <4 x i32> %i.kg, splat (i32 2)
  %i.ki = bitcast <4 x i32> %i.kh to <2 x i64>
  %i.kj = xor <2 x i64> %i.im, %i.ki              ; 2 uses
  %i.kk = xor <2 x i64> %i.kf, %i.iw              ; 2 uses
  %i.kl = bitcast <2 x i64> %i.jf to <4 x i32>
  %i.km = lshr <4 x i32> %i.kl, splat (i32 2)
  %i.kn = bitcast <4 x i32> %i.km to <2 x i64>
  %i.ko = xor <2 x i64> %i.jp, %i.kn
  %i.kp = and <2 x i64> %i.ko, splat (i64 3689348814741910323) ; 2 uses
  %i.kq = bitcast <2 x i64> %i.kp to <4 x i32>
  %i.kr = shl nuw <4 x i32> %i.kq, splat (i32 2)
  %i.ks = bitcast <4 x i32> %i.kr to <2 x i64>
  %i.kt = xor <2 x i64> %i.jf, %i.ks              ; 2 uses
  %i.ku = xor <2 x i64> %i.kp, %i.jp              ; 2 uses
  %i.kv = bitcast <2 x i64> %i.jg to <4 x i32>
  %i.kw = lshr <4 x i32> %i.kv, splat (i32 2)
  %i.kx = bitcast <4 x i32> %i.kw to <2 x i64>
  %i.ky = xor <2 x i64> %i.jq, %i.kx
  %i.kz = and <2 x i64> %i.ky, splat (i64 3689348814741910323) ; 2 uses
  %i.la = bitcast <2 x i64> %i.kz to <4 x i32>
  %i.lb = shl nuw <4 x i32> %i.la, splat (i32 2)
  %i.lc = bitcast <4 x i32> %i.lb to <2 x i64>
  %i.ld = xor <2 x i64> %i.jg, %i.lc              ; 2 uses
  %i.le = xor <2 x i64> %i.kz, %i.jq              ; 2 uses
  %i.lf = bitcast <2 x i64> %i.jz to <4 x i32>
  %i.lg = lshr <4 x i32> %i.lf, splat (i32 4)
  %i.lh = bitcast <4 x i32> %i.lg to <2 x i64>
  %i.li = xor <2 x i64> %i.kt, %i.lh
  %i.lj = and <2 x i64> %i.li, splat (i64 1085102592571150095) ; 2 uses
  %i.lk = bitcast <2 x i64> %i.lj to <4 x i32>
  %i.ll = shl nuw <4 x i32> %i.lk, splat (i32 4)
  %i.lm = bitcast <4 x i32> %i.ll to <2 x i64>
  %i.ln = xor <2 x i64> %i.jz, %i.lm
  store <2 x i64> %i.ln, ptr %.sroa.0.i, align 16, !tbaa !13
  %i.lo = xor <2 x i64> %i.lj, %i.kt
  store <2 x i64> %i.lo, ptr %.sroa.0.i.64.i.64.i.64..sroa_idx76, align 16, !tbaa !13
  %i.lp = bitcast <2 x i64> %i.kj to <4 x i32>
  %i.lq = lshr <4 x i32> %i.lp, splat (i32 4)
  %i.lr = bitcast <4 x i32> %i.lq to <2 x i64>
  %i.ls = xor <2 x i64> %i.ld, %i.lr
  %i.lt = and <2 x i64> %i.ls, splat (i64 1085102592571150095) ; 2 uses
  %i.lu = bitcast <2 x i64> %i.lt to <4 x i32>
  %i.lv = shl nuw <4 x i32> %i.lu, splat (i32 4)
  %i.lw = bitcast <4 x i32> %i.lv to <2 x i64>
  %i.lx = xor <2 x i64> %i.kj, %i.lw
  store <2 x i64> %i.lx, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx73, align 16, !tbaa !13
  %i.ly = xor <2 x i64> %i.lt, %i.ld
  store <2 x i64> %i.ly, ptr %.sroa.0.i.80.i.80.i.80..sroa_idx77, align 16, !tbaa !13
  %i.lz = bitcast <2 x i64> %i.ka to <4 x i32>
  %i.ma = lshr <4 x i32> %i.lz, splat (i32 4)
  %i.mb = bitcast <4 x i32> %i.ma to <2 x i64>
  %i.mc = xor <2 x i64> %i.ku, %i.mb
  %i.md = and <2 x i64> %i.mc, splat (i64 1085102592571150095) ; 2 uses
  %i.me = bitcast <2 x i64> %i.md to <4 x i32>
  %i.mf = shl nuw <4 x i32> %i.me, splat (i32 4)
  %i.mg = bitcast <4 x i32> %i.mf to <2 x i64>
  %i.mh = xor <2 x i64> %i.ka, %i.mg
  store <2 x i64> %i.mh, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx74, align 16, !tbaa !13
  %i.mi = xor <2 x i64> %i.md, %i.ku
  store <2 x i64> %i.mi, ptr %.sroa.0.i.96.i.96.i.96..sroa_idx78, align 16, !tbaa !13
  %i.mj = bitcast <2 x i64> %i.kk to <4 x i32>
  %i.mk = lshr <4 x i32> %i.mj, splat (i32 4)
  %i.ml = bitcast <4 x i32> %i.mk to <2 x i64>
  %i.mm = xor <2 x i64> %i.le, %i.ml
  %i.mn = and <2 x i64> %i.mm, splat (i64 1085102592571150095) ; 2 uses
  %i.mo = bitcast <2 x i64> %i.mn to <4 x i32>
  %i.mp = shl nuw <4 x i32> %i.mo, splat (i32 4)
  %i.mq = bitcast <4 x i32> %i.mp to <2 x i64>
  %i.mr = xor <2 x i64> %i.kk, %i.mq
  store <2 x i64> %i.mr, ptr %.sroa.0.i.48.i.48.i.48..sroa_idx75, align 16, !tbaa !13
  %i.ms = xor <2 x i64> %i.mn, %i.le
  store <2 x i64> %i.ms, ptr %.sroa.0.i.112.i.112.i.112..sroa_idx79, align 16, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %.sroa.0.i, i64 %i.dg, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %xtraiter = and i64 %i.df, 1
  %i.mt = icmp eq i64 %.038, 1
  br i1 %i.mt, label %.epil.preheader, label %._crit_edge.loopexit.i.new

._crit_edge.loopexit.i.new:                       ; preds = %._crit_edge.loopexit.i
  %unroll_iter = and i64 %i.df, 14
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %._crit_edge.loopexit.i
  %.03057.epil.init = phi i64 [ 0, %._crit_edge.loopexit.i ], [ %i.nm, %.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.mu = shl nuw nsw i64 %.03057.epil.init, 4    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.036, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.034, i64 %i.mu
  %i.mx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mu
  %.0.copyload2.i.epil = load <2 x i64>, ptr %i.mw, align 1
  %.0.copyload.i43.epil = load <2 x i64>, ptr %i.mx, align 16
  %i.my = xor <2 x i64> %.0.copyload.i43.epil, %.0.copyload2.i.epil
  store <2 x i64> %i.my, ptr %i.mv, align 1
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.mz = sub nuw i64 %.038, %i.df                ; 2 uses
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.d, %._crit_edge.loopexit.i.new
  %.03057 = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %i.nm, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %niter.next.1, %bb.d ]
  %i.nb = shl nuw nsw i64 %.03057, 4              ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.036, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %.034, i64 %i.nb
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nb
  %.0.copyload2.i = load <2 x i64>, ptr %i.nd, align 1
  %.0.copyload.i43 = load <2 x i64>, ptr %i.ne, align 16
  %i.nf = xor <2 x i64> %.0.copyload.i43, %.0.copyload2.i
  store <2 x i64> %i.nf, ptr %i.nc, align 1
  %i.ng = shl i64 %.03057, 4
  %i.nh = or disjoint i64 %i.ng, 16               ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.036, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %.034, i64 %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nh
  %.0.copyload2.i.1 = load <2 x i64>, ptr %i.nj, align 1
  %.0.copyload.i43.1 = load <2 x i64>, ptr %i.nk, align 16
  %i.nl = xor <2 x i64> %.0.copyload.i43.1, %.0.copyload2.i.1
  store <2 x i64> %i.nl, ptr %i.ni, align 1
  %i.nm = add nuw nsw i64 %.03057, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !22

bb.e:                                             ; preds = %bb.c
  %i.nn = getelementptr inbounds nuw i8, ptr %.034, i64 128
  %i.no = getelementptr inbounds nuw i8, ptr %.036, i64 128
  %i.np = add i32 %.032, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %._crit_edge.loopexit.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22aes_nohw_encrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = load <2 x i64>, ptr %2, align 16, !tbaa !13
  %i.b = load <2 x i64>, ptr %0, align 16, !tbaa !13
  %i.c = xor <2 x i64> %i.b, %i.a                 ; 3 uses
  store <2 x i64> %i.c, ptr %2, align 16, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i64>, ptr %i.f, align 16, !tbaa !13
  %i.h = xor <2 x i64> %i.g, %i.e                 ; 3 uses
  store <2 x i64> %i.h, ptr %i.d, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.j = load <2 x i64>, ptr %i.i, align 16, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 16, !tbaa !13
  %i.m = xor <2 x i64> %i.l, %i.j                 ; 3 uses
  store <2 x i64> %i.m, ptr %i.i, align 16, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.o = load <2 x i64>, ptr %i.n, align 16, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <2 x i64>, ptr %i.p, align 16, !tbaa !13
  %i.r = xor <2 x i64> %i.q, %i.o                 ; 3 uses
  store <2 x i64> %i.r, ptr %i.n, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load <2 x i64>, ptr %i.u, align 16, !tbaa !13
  %i.w = xor <2 x i64> %i.v, %i.t                 ; 3 uses
  store <2 x i64> %i.w, ptr %i.s, align 16, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %i.y = load <2 x i64>, ptr %i.x, align 16, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !13
  %i.ab = xor <2 x i64> %i.aa, %i.y               ; 3 uses
  store <2 x i64> %i.ab, ptr %i.x, align 16, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 16, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !13
  %i.ag = xor <2 x i64> %i.af, %i.ad              ; 3 uses
  store <2 x i64> %i.ag, ptr %i.ac, align 16, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 16, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x i64>, ptr %i.aj, align 16, !tbaa !13
  %i.al = xor <2 x i64> %i.ak, %i.ai              ; 2 uses
  %i.am = icmp samesign ugt i64 %1, 1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.an = phi <2 x i64> [ %i.c, %bb.a ], [ %i.aba, %.lr.ph ] ; 5 uses
  %i.ao = phi <2 x i64> [ %i.h, %bb.a ], [ %i.abd, %.lr.ph ] ; 2 uses
  %i.ap = phi <2 x i64> [ %i.m, %bb.a ], [ %i.abg, %.lr.ph ] ; 3 uses
  %i.aq = phi <2 x i64> [ %i.r, %bb.a ], [ %i.abj, %.lr.ph ]
  %i.ar = phi <2 x i64> [ %i.w, %bb.a ], [ %i.abm, %.lr.ph ] ; 3 uses
  %i.as = phi <2 x i64> [ %i.ab, %bb.a ], [ %i.abp, %.lr.ph ]
  %i.at = phi <2 x i64> [ %i.ag, %bb.a ], [ %i.abs, %.lr.ph ] ; 2 uses
  %i.au = phi <2 x i64> [ %i.al, %bb.a ], [ %i.abv, %.lr.ph ] ; 5 uses
  %i.av = xor <2 x i64> %i.ap, %i.ar              ; 3 uses
  %i.aw = xor <2 x i64> %i.ao, %i.au              ; 4 uses
  %i.ax = xor <2 x i64> %i.ar, %i.au              ; 3 uses
  %i.ay = xor <2 x i64> %i.ap, %i.au              ; 4 uses
  %i.az = xor <2 x i64> %i.as, %i.at              ; 3 uses
  %i.ba = xor <2 x i64> %i.an, %i.az              ; 5 uses
  %i.bb = xor <2 x i64> %i.ba, %i.ar              ; 2 uses
  %i.bc = xor <2 x i64> %i.aw, %i.av              ; 3 uses
  %i.bd = xor <2 x i64> %i.ba, %i.au              ; 2 uses
  %i.be = xor <2 x i64> %i.ba, %i.ao              ; 3 uses
  %i.bf = xor <2 x i64> %i.be, %i.ay              ; 2 uses
  %i.bg = xor <2 x i64> %i.bc, %i.aq              ; 2 uses
  %i.bh = xor <2 x i64> %i.bg, %i.ap              ; 4 uses
  %i.bi = xor <2 x i64> %i.bg, %i.at              ; 2 uses
  %i.bj = xor <2 x i64> %i.bh, %i.an              ; 2 uses
  %i.bk = xor <2 x i64> %i.bh, %i.az              ; 4 uses
  %i.bl = xor <2 x i64> %i.bi, %i.ax              ; 5 uses
  %i.bm = xor <2 x i64> %i.bl, %i.an              ; 2 uses
  %i.bn = xor <2 x i64> %i.bl, %i.bk              ; 2 uses
  %i.bo = xor <2 x i64> %i.bl, %i.az              ; 4 uses
  %i.bp = and <2 x i64> %i.bh, %i.bc              ; 2 uses
  %i.bq = and <2 x i64> %i.bj, %i.bf
  %i.br = and <2 x i64> %i.bb, %i.an
  %i.bs = and <2 x i64> %i.bo, %i.aw              ; 2 uses
  %i.bt = and <2 x i64> %i.be, %i.ba
  %i.bu = and <2 x i64> %i.bm, %i.bd
  %i.bv = and <2 x i64> %i.bl, %i.ax              ; 2 uses
  %i.bw = and <2 x i64> %i.bn, %i.av
  %i.bx = xor <2 x i64> %i.bw, %i.bv              ; 2 uses
  %i.by = and <2 x i64> %i.bk, %i.ay
  %i.bz = xor <2 x i64> %i.bv, %i.by              ; 2 uses
  %i.ca = xor <2 x i64> %i.bi, %i.bq
  %i.cb = xor <2 x i64> %i.ca, %i.bp
  %i.cc = xor <2 x i64> %i.cb, %i.bx              ; 2 uses
  %i.cd = xor <2 x i64> %i.br, %i.ay
  %i.ce = xor <2 x i64> %i.cd, %i.bp
  %i.cf = xor <2 x i64> %i.ce, %i.bk
  %i.cg = xor <2 x i64> %i.cf, %i.bz              ; 3 uses
  %i.ch = xor <2 x i64> %i.bt, %i.aw
  %i.ci = xor <2 x i64> %i.ch, %i.bs
  %i.cj = xor <2 x i64> %i.ci, %i.bx              ; 2 uses
  %i.ck = xor <2 x i64> %i.cj, %i.bo              ; 2 uses
  %i.cl = xor <2 x i64> %i.bu, %i.au
  %i.cm = xor <2 x i64> %i.cl, %i.bs
  %i.cn = xor <2 x i64> %i.cm, %i.bz              ; 2 uses
  %i.co = xor <2 x i64> %i.cn, %i.bo              ; 3 uses
  %i.cp = xor <2 x i64> %i.cc, %i.cg              ; 2 uses
  %i.cq = and <2 x i64> %i.ck, %i.cc              ; 3 uses
  %i.cr = xor <2 x i64> %i.cq, %i.co              ; 2 uses
  %i.cs = and <2 x i64> %i.cr, %i.cp
  %i.ct = xor <2 x i64> %i.cs, %i.cg              ; 5 uses
  %i.cu = xor <2 x i64> %i.cn, %i.cj
  %i.cv = xor <2 x i64> %i.cq, %i.cg
  %i.cw = and <2 x i64> %i.cv, %i.cu              ; 2 uses
  %i.cx = xor <2 x i64> %i.cw, %i.co              ; 4 uses
  %i.cy = xor <2 x i64> %i.cw, %i.cq
  %i.cz = and <2 x i64> %i.cy, %i.co              ; 2 uses
  %i.da = xor <2 x i64> %i.cz, %i.ck              ; 3 uses
  %i.db = xor <2 x i64> %i.da, %i.cx              ; 3 uses
  %i.dc = xor <2 x i64> %i.cz, %i.cr
  %i.dd = and <2 x i64> %i.dc, %i.ct
  %i.de = xor <2 x i64> %i.dd, %i.cp              ; 4 uses
  %i.df = xor <2 x i64> %i.de, %i.db              ; 3 uses
  %i.dg = xor <2 x i64> %i.cx, %i.ct              ; 3 uses
  %i.dh = xor <2 x i64> %i.de, %i.ct              ; 2 uses
  %i.di = xor <2 x i64> %i.df, %i.dg              ; 2 uses
  %i.dj = and <2 x i64> %i.da, %i.bh
  %i.dk = and <2 x i64> %i.db, %i.bj
  %i.dl = and <2 x i64> %i.cx, %i.an              ; 2 uses
  %i.dm = and <2 x i64> %i.dh, %i.bo              ; 2 uses
  %i.dn = and <2 x i64> %i.de, %i.ba              ; 2 uses
  %i.do = and <2 x i64> %i.ct, %i.bm              ; 2 uses
  %i.dp = and <2 x i64> %i.dg, %i.bl
  %i.dq = and <2 x i64> %i.di, %i.bn              ; 2 uses
  %i.dr = and <2 x i64> %i.df, %i.bk
  %i.ds = and <2 x i64> %i.da, %i.bc
  %i.dt = and <2 x i64> %i.db, %i.bf              ; 2 uses
  %i.du = and <2 x i64> %i.cx, %i.bb
  %i.dv = and <2 x i64> %i.dh, %i.aw              ; 2 uses
  %i.dw = and <2 x i64> %i.de, %i.be
  %i.dx = and <2 x i64> %i.ct, %i.bd
  %i.dy = and <2 x i64> %i.dg, %i.ax
  %i.dz = and <2 x i64> %i.di, %i.av              ; 2 uses
  %i.ea = and <2 x i64> %i.df, %i.ay
  %i.eb = xor <2 x i64> %i.dz, %i.dy              ; 2 uses
  %i.ec = xor <2 x i64> %i.dt, %i.du
  %i.ed = xor <2 x i64> %i.dw, %i.do              ; 2 uses
  %i.ee = xor <2 x i64> %i.dt, %i.ds
  %i.ef = xor <2 x i64> %i.dv, %i.dl
  %i.eg = xor <2 x i64> %i.do, %i.dl
  %i.eh = xor <2 x i64> %i.dq, %i.dr
  %i.ei = xor <2 x i64> %i.dm, %i.dj              ; 2 uses
  %i.ej = xor <2 x i64> %i.ef, %i.ei              ; 2 uses
  %i.ek = xor <2 x i64> %i.eb, %i.dn              ; 2 uses
end_hunk_0
begin_hunk_1_@aes_nohw_cbc_encrypt:bb.a
  %i.jb = lshr <4 x i32> %i.ja, splat (i32 4)
  %i.jc = bitcast <4 x i32> %i.jb to <2 x i64>
  %i.jd = xor <2 x i64> %i.io, %i.jc
  %i.je = and <2 x i64> %i.jd, splat (i64 1085102592571150095) ; 2 uses
  %i.jf = bitcast <2 x i64> %i.je to <4 x i32>
  %i.jg = shl nuw <4 x i32> %i.jf, splat (i32 4)
  %i.jh = bitcast <4 x i32> %i.jg to <2 x i64>
  %i.ji = xor <2 x i64> %i.hu, %i.jh
  store <2 x i64> %i.ji, ptr %8, align 16, !tbaa !13
  %i.jj = xor <2 x i64> %i.je, %i.io
  store <2 x i64> %i.jj, ptr %.phi.trans.insert14.i62, align 16, !tbaa !13
  %i.jk = bitcast <2 x i64> %i.ie to <4 x i32>
  %i.jl = lshr <4 x i32> %i.jk, splat (i32 4)
  %i.jm = bitcast <4 x i32> %i.jl to <2 x i64>
  %i.jn = xor <2 x i64> %i.iy, %i.jm
  %i.jo = and <2 x i64> %i.jn, splat (i64 1085102592571150095) ; 2 uses
  %i.jp = bitcast <2 x i64> %i.jo to <4 x i32>
  %i.jq = shl nuw <4 x i32> %i.jp, splat (i32 4)
  %i.jr = bitcast <4 x i32> %i.jq to <2 x i64>
  %i.js = xor <2 x i64> %i.ie, %i.jr
  store <2 x i64> %i.js, ptr %.phi.trans.insert.i56, align 16, !tbaa !13
  %i.jt = xor <2 x i64> %i.jo, %i.iy
  store <2 x i64> %i.jt, ptr %.phi.trans.insert16.i64, align 16, !tbaa !13
  %i.ju = bitcast <2 x i64> %i.hv to <4 x i32>
  %i.jv = lshr <4 x i32> %i.ju, splat (i32 4)
  %i.jw = bitcast <4 x i32> %i.jv to <2 x i64>
  %i.jx = xor <2 x i64> %i.ip, %i.jw
  %i.jy = and <2 x i64> %i.jx, splat (i64 1085102592571150095) ; 2 uses
  %i.jz = bitcast <2 x i64> %i.jy to <4 x i32>
  %i.ka = shl nuw <4 x i32> %i.jz, splat (i32 4)
  %i.kb = bitcast <4 x i32> %i.ka to <2 x i64>
  %i.kc = xor <2 x i64> %i.hv, %i.kb
  store <2 x i64> %i.kc, ptr %.phi.trans.insert10.i58, align 16, !tbaa !13
  %i.kd = xor <2 x i64> %i.jy, %i.ip
  store <2 x i64> %i.kd, ptr %.phi.trans.insert18.i66, align 16, !tbaa !13
  %i.ke = bitcast <2 x i64> %i.if to <4 x i32>
  %i.kf = lshr <4 x i32> %i.ke, splat (i32 4)
  %i.kg = bitcast <4 x i32> %i.kf to <2 x i64>
  %i.kh = xor <2 x i64> %i.iz, %i.kg
  %i.ki = and <2 x i64> %i.kh, splat (i64 1085102592571150095) ; 2 uses
  %i.kj = bitcast <2 x i64> %i.ki to <4 x i32>
  %i.kk = shl nuw <4 x i32> %i.kj, splat (i32 4)
  %i.kl = bitcast <4 x i32> %i.kk to <2 x i64>
  %i.km = xor <2 x i64> %i.if, %i.kl
  store <2 x i64> %i.km, ptr %.phi.trans.insert12.i60, align 16, !tbaa !13
  %i.kn = xor <2 x i64> %i.ki, %i.iz
  store <2 x i64> %i.kn, ptr %.phi.trans.insert20.i68, align 16, !tbaa !13
  %i.ko = load i32, ptr %i.d, align 4, !tbaa !11
  %i.kp = zext i32 %i.ko to i64
  call fastcc void @_ZL22aes_nohw_decrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %6, i64 noundef %i.kp, ptr noundef %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i71)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0.i71, ptr noundef nonnull readonly align 16 dereferenceable(128) %8, i64 128, i1 false), !tbaa.struct !21
  %.sroa.0.i71.0..sroa.0.i71.0..sroa.0.i71.0..sroa.0.0..sroa.0.0..i72 = load <2 x i64>, ptr %.sroa.0.i71, align 16, !tbaa !13 ; 2 uses
  %i.kq = bitcast <2 x i64> %.sroa.0.i71.0..sroa.0.i71.0..sroa.0.i71.0..sroa.0.0..sroa.0.0..i72 to <4 x i32>
  %i.kr = lshr <4 x i32> %i.kq, splat (i32 1)
  %i.ks = bitcast <4 x i32> %i.kr to <2 x i64>
  %.sroa.0.i71.16..sroa.0.i71.16..sroa.0.i71.16..sroa.0.16..sroa.0.16..i74 = load <2 x i64>, ptr %.sroa.0.i71.16.i71.16.i71.16..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.kt = xor <2 x i64> %.sroa.0.i71.16..sroa.0.i71.16..sroa.0.i71.16..sroa.0.16..sroa.0.16..i74, %i.ks
  %i.ku = and <2 x i64> %i.kt, splat (i64 6148914691236517205) ; 2 uses
  %i.kv = bitcast <2 x i64> %i.ku to <4 x i32>
  %i.kw = shl nuw <4 x i32> %i.kv, splat (i32 1)
  %i.kx = bitcast <4 x i32> %i.kw to <2 x i64>
  %i.ky = xor <2 x i64> %.sroa.0.i71.0..sroa.0.i71.0..sroa.0.i71.0..sroa.0.0..sroa.0.0..i72, %i.kx ; 2 uses
  %i.kz = xor <2 x i64> %i.ku, %.sroa.0.i71.16..sroa.0.i71.16..sroa.0.i71.16..sroa.0.16..sroa.0.16..i74 ; 2 uses
  %.sroa.0.i71.32..sroa.0.i71.32..sroa.0.i71.32..sroa.0.32..sroa.0.32..i76 = load <2 x i64>, ptr %.sroa.0.i71.32.i71.32.i71.32..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.la = bitcast <2 x i64> %.sroa.0.i71.32..sroa.0.i71.32..sroa.0.i71.32..sroa.0.32..sroa.0.32..i76 to <4 x i32>
  %i.lb = lshr <4 x i32> %i.la, splat (i32 1)
  %i.lc = bitcast <4 x i32> %i.lb to <2 x i64>
  %.sroa.0.i71.48..sroa.0.i71.48..sroa.0.i71.48..sroa.0.48..sroa.0.48..i78 = load <2 x i64>, ptr %.sroa.0.i71.48.i71.48.i71.48..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.ld = xor <2 x i64> %.sroa.0.i71.48..sroa.0.i71.48..sroa.0.i71.48..sroa.0.48..sroa.0.48..i78, %i.lc
  %i.le = and <2 x i64> %i.ld, splat (i64 6148914691236517205) ; 2 uses
  %i.lf = bitcast <2 x i64> %i.le to <4 x i32>
  %i.lg = shl nuw <4 x i32> %i.lf, splat (i32 1)
  %i.lh = bitcast <4 x i32> %i.lg to <2 x i64>
  %i.li = xor <2 x i64> %.sroa.0.i71.32..sroa.0.i71.32..sroa.0.i71.32..sroa.0.32..sroa.0.32..i76, %i.lh ; 2 uses
  %i.lj = xor <2 x i64> %i.le, %.sroa.0.i71.48..sroa.0.i71.48..sroa.0.i71.48..sroa.0.48..sroa.0.48..i78 ; 2 uses
  %.sroa.0.i71.64..sroa.0.i71.64..sroa.0.i71.64..sroa.0.64..sroa.0.64..i80 = load <2 x i64>, ptr %.sroa.0.i71.64.i71.64.i71.64..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.lk = bitcast <2 x i64> %.sroa.0.i71.64..sroa.0.i71.64..sroa.0.i71.64..sroa.0.64..sroa.0.64..i80 to <4 x i32>
  %i.ll = lshr <4 x i32> %i.lk, splat (i32 1)
  %i.lm = bitcast <4 x i32> %i.ll to <2 x i64>
  %.sroa.0.i71.80..sroa.0.i71.80..sroa.0.i71.80..sroa.0.80..sroa.0.80..i82 = load <2 x i64>, ptr %.sroa.0.i71.80.i71.80.i71.80..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.ln = xor <2 x i64> %.sroa.0.i71.80..sroa.0.i71.80..sroa.0.i71.80..sroa.0.80..sroa.0.80..i82, %i.lm
  %i.lo = and <2 x i64> %i.ln, splat (i64 6148914691236517205) ; 2 uses
  %i.lp = bitcast <2 x i64> %i.lo to <4 x i32>
  %i.lq = shl nuw <4 x i32> %i.lp, splat (i32 1)
  %i.lr = bitcast <4 x i32> %i.lq to <2 x i64>
  %i.ls = xor <2 x i64> %.sroa.0.i71.64..sroa.0.i71.64..sroa.0.i71.64..sroa.0.64..sroa.0.64..i80, %i.lr ; 2 uses
  %i.lt = xor <2 x i64> %i.lo, %.sroa.0.i71.80..sroa.0.i71.80..sroa.0.i71.80..sroa.0.80..sroa.0.80..i82 ; 2 uses
  %.sroa.0.i71.96..sroa.0.i71.96..sroa.0.i71.96..sroa.0.96..sroa.0.96..i84 = load <2 x i64>, ptr %.sroa.0.i71.96.i71.96.i71.96..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.lu = bitcast <2 x i64> %.sroa.0.i71.96..sroa.0.i71.96..sroa.0.i71.96..sroa.0.96..sroa.0.96..i84 to <4 x i32>
  %i.lv = lshr <4 x i32> %i.lu, splat (i32 1)
  %i.lw = bitcast <4 x i32> %i.lv to <2 x i64>
  %.sroa.0.i71.112..sroa.0.i71.112..sroa.0.i71.112..sroa.0.112..sroa.0.112..i86 = load <2 x i64>, ptr %.sroa.0.i71.112.i71.112.i71.112..sroa_idx, align 16, !tbaa !13 ; 2 uses
  %i.lx = xor <2 x i64> %.sroa.0.i71.112..sroa.0.i71.112..sroa.0.i71.112..sroa.0.112..sroa.0.112..i86, %i.lw
  %i.ly = and <2 x i64> %i.lx, splat (i64 6148914691236517205) ; 2 uses
  %i.lz = bitcast <2 x i64> %i.ly to <4 x i32>
  %i.ma = shl nuw <4 x i32> %i.lz, splat (i32 1)
  %i.mb = bitcast <4 x i32> %i.ma to <2 x i64>
  %i.mc = xor <2 x i64> %.sroa.0.i71.96..sroa.0.i71.96..sroa.0.i71.96..sroa.0.96..sroa.0.96..i84, %i.mb ; 2 uses
  %i.md = xor <2 x i64> %i.ly, %.sroa.0.i71.112..sroa.0.i71.112..sroa.0.i71.112..sroa.0.112..sroa.0.112..i86 ; 2 uses
  %i.me = bitcast <2 x i64> %i.ky to <4 x i32>
  %i.mf = lshr <4 x i32> %i.me, splat (i32 2)
  %i.mg = bitcast <4 x i32> %i.mf to <2 x i64>
  %i.mh = xor <2 x i64> %i.li, %i.mg
  %i.mi = and <2 x i64> %i.mh, splat (i64 3689348814741910323) ; 2 uses
  %i.mj = bitcast <2 x i64> %i.mi to <4 x i32>
  %i.mk = shl nuw <4 x i32> %i.mj, splat (i32 2)
  %i.ml = bitcast <4 x i32> %i.mk to <2 x i64>
  %i.mm = xor <2 x i64> %i.ky, %i.ml              ; 2 uses
  %i.mn = xor <2 x i64> %i.mi, %i.li              ; 2 uses
  %i.mo = bitcast <2 x i64> %i.kz to <4 x i32>
  %i.mp = lshr <4 x i32> %i.mo, splat (i32 2)
  %i.mq = bitcast <4 x i32> %i.mp to <2 x i64>
  %i.mr = xor <2 x i64> %i.lj, %i.mq
  %i.ms = and <2 x i64> %i.mr, splat (i64 3689348814741910323) ; 2 uses
  %i.mt = bitcast <2 x i64> %i.ms to <4 x i32>
  %i.mu = shl nuw <4 x i32> %i.mt, splat (i32 2)
  %i.mv = bitcast <4 x i32> %i.mu to <2 x i64>
  %i.mw = xor <2 x i64> %i.kz, %i.mv              ; 2 uses
  %i.mx = xor <2 x i64> %i.ms, %i.lj              ; 2 uses
  %i.my = bitcast <2 x i64> %i.ls to <4 x i32>
  %i.mz = lshr <4 x i32> %i.my, splat (i32 2)
  %i.na = bitcast <4 x i32> %i.mz to <2 x i64>
  %i.nb = xor <2 x i64> %i.mc, %i.na
  %i.nc = and <2 x i64> %i.nb, splat (i64 3689348814741910323) ; 2 uses
  %i.nd = bitcast <2 x i64> %i.nc to <4 x i32>
  %i.ne = shl nuw <4 x i32> %i.nd, splat (i32 2)
  %i.nf = bitcast <4 x i32> %i.ne to <2 x i64>
  %i.ng = xor <2 x i64> %i.ls, %i.nf              ; 2 uses
  %i.nh = xor <2 x i64> %i.nc, %i.mc              ; 2 uses
  %i.ni = bitcast <2 x i64> %i.lt to <4 x i32>
  %i.nj = lshr <4 x i32> %i.ni, splat (i32 2)
  %i.nk = bitcast <4 x i32> %i.nj to <2 x i64>
  %i.nl = xor <2 x i64> %i.md, %i.nk
  %i.nm = and <2 x i64> %i.nl, splat (i64 3689348814741910323) ; 2 uses
  %i.nn = bitcast <2 x i64> %i.nm to <4 x i32>
  %i.no = shl nuw <4 x i32> %i.nn, splat (i32 2)
  %i.np = bitcast <4 x i32> %i.no to <2 x i64>
  %i.nq = xor <2 x i64> %i.lt, %i.np              ; 2 uses
  %i.nr = xor <2 x i64> %i.nm, %i.md              ; 2 uses
  %i.ns = bitcast <2 x i64> %i.mm to <4 x i32>
  %i.nt = lshr <4 x i32> %i.ns, splat (i32 4)
  %i.nu = bitcast <4 x i32> %i.nt to <2 x i64>
  %i.nv = xor <2 x i64> %i.ng, %i.nu
  %i.nw = and <2 x i64> %i.nv, splat (i64 1085102592571150095) ; 2 uses
  %i.nx = bitcast <2 x i64> %i.nw to <4 x i32>
  %i.ny = shl nuw <4 x i32> %i.nx, splat (i32 4)
  %i.nz = bitcast <4 x i32> %i.ny to <2 x i64>
  %i.oa = xor <2 x i64> %i.mm, %i.nz
  store <2 x i64> %i.oa, ptr %.sroa.0.i71, align 16, !tbaa !13
  %i.ob = xor <2 x i64> %i.nw, %i.ng
  store <2 x i64> %i.ob, ptr %.sroa.0.i71.64.i71.64.i71.64..sroa_idx146, align 16, !tbaa !13
  %i.oc = bitcast <2 x i64> %i.mw to <4 x i32>
  %i.od = lshr <4 x i32> %i.oc, splat (i32 4)
  %i.oe = bitcast <4 x i32> %i.od to <2 x i64>
  %i.of = xor <2 x i64> %i.nq, %i.oe
  %i.og = and <2 x i64> %i.of, splat (i64 1085102592571150095) ; 2 uses
  %i.oh = bitcast <2 x i64> %i.og to <4 x i32>
  %i.oi = shl nuw <4 x i32> %i.oh, splat (i32 4)
  %i.oj = bitcast <4 x i32> %i.oi to <2 x i64>
  %i.ok = xor <2 x i64> %i.mw, %i.oj
  store <2 x i64> %i.ok, ptr %.sroa.0.i71.16.i71.16.i71.16..sroa_idx143, align 16, !tbaa !13
  %i.ol = xor <2 x i64> %i.og, %i.nq
  store <2 x i64> %i.ol, ptr %.sroa.0.i71.80.i71.80.i71.80..sroa_idx147, align 16, !tbaa !13
  %i.om = bitcast <2 x i64> %i.mn to <4 x i32>
  %i.on = lshr <4 x i32> %i.om, splat (i32 4)
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>
  %i.op = xor <2 x i64> %i.nh, %i.oo
  %i.oq = and <2 x i64> %i.op, splat (i64 1085102592571150095) ; 2 uses
  %i.or = bitcast <2 x i64> %i.oq to <4 x i32>
  %i.os = shl nuw <4 x i32> %i.or, splat (i32 4)
  %i.ot = bitcast <4 x i32> %i.os to <2 x i64>
  %i.ou = xor <2 x i64> %i.mn, %i.ot
  store <2 x i64> %i.ou, ptr %.sroa.0.i71.32.i71.32.i71.32..sroa_idx144, align 16, !tbaa !13
  %i.ov = xor <2 x i64> %i.oq, %i.nh
  store <2 x i64> %i.ov, ptr %.sroa.0.i71.96.i71.96.i71.96..sroa_idx148, align 16, !tbaa !13
  %i.ow = bitcast <2 x i64> %i.mx to <4 x i32>
  %i.ox = lshr <4 x i32> %i.ow, splat (i32 4)
  %i.oy = bitcast <4 x i32> %i.ox to <2 x i64>
  %i.oz = xor <2 x i64> %i.nr, %i.oy
  %i.pa = and <2 x i64> %i.oz, splat (i64 1085102592571150095) ; 2 uses
  %i.pb = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pc = shl nuw <4 x i32> %i.pb, splat (i32 4)
  %i.pd = bitcast <4 x i32> %i.pc to <2 x i64>
  %i.pe = xor <2 x i64> %i.mx, %i.pd
  store <2 x i64> %i.pe, ptr %.sroa.0.i71.48.i71.48.i71.48..sroa_idx145, align 16, !tbaa !13
  %i.pf = xor <2 x i64> %i.pa, %i.nr
  store <2 x i64> %i.pf, ptr %.sroa.0.i71.112.i71.112.i71.112..sroa_idx149, align 16, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.145, ptr nonnull align 16 %.sroa.0.i71, i64 %i.ft, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i71)
  %.0.copyload2.i88 = load <2 x i64>, ptr %.145, align 1
  %i.pg = xor <2 x i64> %.sroa.0.1, %.0.copyload2.i88
  store <2 x i64> %i.pg, ptr %.145, align 1
  %i.ph = icmp ugt i64 %.1, 1
  br i1 %i.ph, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit
  %i.pi = getelementptr i8, ptr %i.a, i64 %i.ft
  %i.pj = getelementptr i8, ptr %i.pi, i64 -16
  %.sroa.0.0.copyload115 = load <2 x i64>, ptr %i.pj, align 16 ; 2 uses
  %i.pk = sub nuw nsw i64 %.1, %i.fs              ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 0
  %i.pm = getelementptr inbounds nuw i8, ptr %.143, i64 128
  %i.pn = getelementptr inbounds nuw i8, ptr %.145, i64 128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.pl, label %.loopexit, label %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit

.lr.ph:                                           ; preds = %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit
  %i.po = getelementptr inbounds nuw i8, ptr %.145, i64 16 ; 2 uses
  %.0.copyload2.i90 = load <2 x i64>, ptr %i.po, align 1
  %.0.copyload.i91 = load <2 x i64>, ptr %i.a, align 16
  %i.pp = xor <2 x i64> %.0.copyload.i91, %.0.copyload2.i90
  store <2 x i64> %i.pp, ptr %i.po, align 1
  %exitcond111.not = icmp eq i64 %.1, 2
  br i1 %exitcond111.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.pq = getelementptr inbounds nuw i8, ptr %.145, i64 32 ; 2 uses
  %.0.copyload2.i90.1 = load <2 x i64>, ptr %i.pq, align 1
  %.0.copyload.i91.1 = load <2 x i64>, ptr %i.ci, align 16
  %i.pr = xor <2 x i64> %.0.copyload.i91.1, %.0.copyload2.i90.1
  store <2 x i64> %i.pr, ptr %i.pq, align 1
  %exitcond111.not.1 = icmp eq i64 %.1, 3
  br i1 %exitcond111.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ps = getelementptr inbounds nuw i8, ptr %.145, i64 48 ; 2 uses
  %.0.copyload2.i90.2 = load <2 x i64>, ptr %i.ps, align 1
  %.0.copyload.i91.2 = load <2 x i64>, ptr %i.cj, align 16
  %i.pt = xor <2 x i64> %.0.copyload.i91.2, %.0.copyload2.i90.2
  store <2 x i64> %i.pt, ptr %i.ps, align 1
  %exitcond111.not.2 = icmp eq i64 %.1, 4
  br i1 %exitcond111.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.pu = getelementptr inbounds nuw i8, ptr %.145, i64 64 ; 2 uses
  %.0.copyload2.i90.3 = load <2 x i64>, ptr %i.pu, align 1
  %.0.copyload.i91.3 = load <2 x i64>, ptr %i.ck, align 16
  %i.pv = xor <2 x i64> %.0.copyload.i91.3, %.0.copyload2.i90.3
  store <2 x i64> %i.pv, ptr %i.pu, align 1
  %exitcond111.not.3 = icmp eq i64 %.1, 5
  br i1 %exitcond111.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.pw = getelementptr inbounds nuw i8, ptr %.145, i64 80 ; 2 uses
  %.0.copyload2.i90.4 = load <2 x i64>, ptr %i.pw, align 1
  %.0.copyload.i91.4 = load <2 x i64>, ptr %i.cl, align 16
  %i.px = xor <2 x i64> %.0.copyload.i91.4, %.0.copyload2.i90.4
  store <2 x i64> %i.px, ptr %i.pw, align 1
  %exitcond111.not.4 = icmp eq i64 %.1, 6
  br i1 %exitcond111.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.py = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %.0.copyload2.i90.5 = load <2 x i64>, ptr %i.py, align 1
  %.0.copyload.i91.5 = load <2 x i64>, ptr %i.cm, align 16
  %i.pz = xor <2 x i64> %.0.copyload.i91.5, %.0.copyload2.i90.5
  store <2 x i64> %i.pz, ptr %i.py, align 1
  %exitcond111.not.5 = icmp eq i64 %.1, 7
  br i1 %exitcond111.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.qa = getelementptr inbounds nuw i8, ptr %.145, i64 112 ; 2 uses
  %.0.copyload2.i90.6 = load <2 x i64>, ptr %i.qa, align 1
  %.0.copyload.i91.6 = load <2 x i64>, ptr %i.cn, align 16
  %i.qb = xor <2 x i64> %.0.copyload.i91.6, %.0.copyload2.i90.6
  store <2 x i64> %i.qb, ptr %i.qa, align 1
  br label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge
  %storemerge = phi <2 x i64> [ %.sroa.0.0.copyload115, %._crit_edge ], [ %i.fo, %.lr.ph.i ]
  store <2 x i64> %storemerge, ptr %4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %.preheader51

.preheader51:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.preheader51, %.lr.ph
  %.055 = phi ptr [ %.04553, %.lr.ph ], [ %4, %.preheader51 ] ; 2 uses
  %.04354 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader51 ] ; 3 uses
  %.04553 = phi ptr [ %i.j, %.lr.ph ], [ %1, %.preheader51 ] ; 8 uses
  %.04752 = phi i64 [ %i.h, %.lr.ph ], [ %2, %.preheader51 ]
  %.0.copyload.i.i = load i64, ptr %.04354, align 1
  %.0.copyload.i7.i = load i64, ptr %.055, align 1
  %i.c = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.c, ptr %.04553, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04553, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.04354, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.g = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.g, ptr %i.d, align 1
  tail call void %5(ptr noundef nonnull %.04553, ptr noundef nonnull %.04553, ptr noundef %3) #36
  %i.h = add i64 %.04752, -16                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04354, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04553, i64 16 ; 2 uses
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader51, %._crit_edge
  %.0.lcssa77 = phi ptr [ %.04553, %._crit_edge ], [ %4, %.preheader51 ] ; 15 uses
  %.043.lcssa76 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader51 ] ; 8 uses
  %.045.lcssa75 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader51 ] ; 18 uses
  %.047.lcssa74 = phi i64 [ %i.h, %._crit_edge ], [ %2, %.preheader51 ] ; 14 uses
  %.045.lcssa7582 = ptrtoaddr ptr %.045.lcssa75 to i64 ; 3 uses
  %.0.lcssa7784 = ptrtoaddr ptr %.0.lcssa77 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74, 4
  br i1 %min.iters.check, label %.preheader50.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa7683 = ptrtoaddr ptr %.043.lcssa76 to i64
  %i.l = sub i64 %.043.lcssa7683, %.045.lcssa7582
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %.0.lcssa7784, %.045.lcssa7582
  %diff.check85 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check85
  br i1 %conflict.rdx, label %.preheader50.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %.047.lcssa74, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !13
  %wide.load87 = load <16 x i8>, ptr %i.o, align 1, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load88 = load <16 x i8>, ptr %i.p, align 1, !tbaa !13
  %wide.load89 = load <16 x i8>, ptr %i.q, align 1, !tbaa !13
  %i.r = xor <16 x i8> %wide.load88, %wide.load
  %i.s = xor <16 x i8> %wide.load89, %wide.load87
  %i.t = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !tbaa !13
  store <16 x i8> %i.s, ptr %i.u, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec90 = and i64 %.047.lcssa74, 12            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index91
  %wide.load92 = load <4 x i8>, ptr %i.v, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index91
  %wide.load93 = load <4 x i8>, ptr %i.w, align 1, !tbaa !13
  %i.x = xor <4 x i8> %wide.load93, %wide.load92
  %i.y = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index91
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !13
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %.047.lcssa74, %n.vec90
  br i1 %cmp.n95, label %iter.check112, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.04159.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec90, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.prol.loopexit, label %.preheader50.prol

.preheader50.prol:                                ; preds = %.preheader50.preheader, %.preheader50.prol
  %.04159.prol = phi i64 [ %i.ag, %.preheader50.prol ], [ %.04159.ph, %.preheader50.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.prol ], [ 0, %.preheader50.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %.04159.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.04159.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.04159.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !13
  %i.ag = add nuw nsw i64 %.04159.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.prol.loopexit, label %.preheader50.prol, !llvm.loop !31

end_hunk_1
begin_hunk_2_@BN_lebin2bn:bb.a
  br i1 %.not16.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.r = tail call ptr @OPENSSL_calloc(i64 noundef %i.j, i64 noundef 8) #36 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !186  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = sext i32 %i.u to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = load ptr, ptr %.019, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.y, i64 %i.x, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.l, %bb.k
  %i.z = load ptr, ptr %.019, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.z) #36
  store ptr %i.r, ptr %.019, align 8, !tbaa !185
  %i.aa = trunc nuw i64 %i.j to i32               ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !197
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.m:                                             ; preds = %bb.g, %bb.i, %bb.j
  %i.ab = icmp eq ptr %.0, null
  br i1 %i.ab, label %BN_free.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !198 ; 2 uses
  %i.ae = and i32 %i.ad, 2
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %.0, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.ag) #36
  %.pre.i = load i32, ptr %i.ac, align 4, !tbaa !198
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ah = phi i32 [ %.pre.i, %bb.o ], [ %i.ad, %bb.n ]
  %i.ai = and i32 %i.ah, 1
  %.not.i24 = icmp eq i32 %i.ai, 0
  br i1 %.not.i24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @OPENSSL_free(ptr noundef nonnull %.0) #36
  br label %BN_free.exit

bb.r:                                             ; preds = %bb.p
  store ptr null, ptr %.0, align 8, !tbaa !185
  br label %BN_free.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %._ZL14OPENSSL_memcpyPvPKvm.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre-phi = phi i32 [ %.pre27, %._ZL14OPENSSL_memcpyPvPKvm.exit_crit_edge ], [ %i.aa, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ]
  %i.aj = phi ptr [ %.pre, %._ZL14OPENSSL_memcpyPvPKvm.exit_crit_edge ], [ %i.r, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i32 %.pre-phi, ptr %i.ak, align 8, !tbaa !186
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.i
  store i64 0, ptr %i.al, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr readonly align 1 %0, i64 %1, i1 false)
  br label %BN_free.exit

BN_free.exit:                                     ; preds = %bb.b, %bb.r, %bb.q, %bb.m, %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.d
  %.1 = phi ptr [ null, %bb.r ], [ %.019, %bb.d ], [ %.019, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ null, %bb.m ], [ null, %bb.q ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_le2bn(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @BN_lebin2bn(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @bn_assert_fits_in_bytes(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
.loopexit:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_words_to_big_endian(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %3, 3                            ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.a) ; 14 uses
  %.not19 = icmp eq i64 %spec.select, 0
  br i1 %.not19, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1         ; 8 uses
  %min.iters.check = icmp ult i64 %spec.select, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.c = sub i64 %1, %spec.select
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  %scevgep20 = getelementptr i8, ptr %2, i64 %spec.select
  %bound0 = icmp ult ptr %scevgep, %scevgep20
  %bound1 = icmp ult ptr %2, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %spec.select, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %spec.select, 24
  %n.vec = and i64 %spec.select, -32              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !13, !alias.scope !238
  %wide.load22 = load <16 x i8>, ptr %i.f, align 1, !tbaa !13, !alias.scope !238
  %i.g = xor i64 %index, -1
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -15
  %i.j = getelementptr i8, ptr %i.h, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse23 = shufflevector <16 x i8> %wide.load22, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.i, align 1, !tbaa !13, !alias.scope !241, !noalias !238
  store <16 x i8> %reverse23, ptr %i.j, align 1, !tbaa !13, !alias.scope !241, !noalias !238
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %spec.select, -8             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %index25
  %wide.load26 = load <8 x i8>, ptr %i.l, align 1, !tbaa !13, !alias.scope !238
  %i.m = xor i64 %index25, -1
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -7
  %reverse27 = shufflevector <8 x i8> %wide.load26, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse27, ptr %i.o, align 1, !tbaa !13, !alias.scope !241, !noalias !238
  %index.next28 = add nuw i64 %index25, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next28, %n.vec24
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %spec.select, %n.vec24
  br i1 %cmp.n29, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec24, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.prol = phi i64 [ %i.u, %vec.epilog.scalar.ph.prol ], [ %.018.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.018.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = xor i64 %.018.prol, -1
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  store i8 %i.r, ptr %i.t, align 1, !tbaa !13
  %i.u = add nuw i64 %.018.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !245

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.unr = phi i64 [ %.018.ph, %vec.epilog.scalar.ph.preheader ], [ %i.u, %vec.epilog.scalar.ph.prol ]
  %i.v = sub i64 %.018.ph, %spec.select
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.not = icmp ugt i64 %1, %i.a
  br i1 %.not, label %bb.b, label %_ZL14OPENSSL_memsetPvim.exit

bb.b:                                             ; preds = %._crit_edge
  %i.x = sub nuw i64 %1, %spec.select
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.x, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %._crit_edge, %bb.b
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.018.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = xor i64 %.018, -1
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = sub i64 -2, %.018
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = sub i64 -3, %.018
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ak
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = sub i64 -4, %.018
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.ap
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !13
  %i.ar = add nuw i64 %.018, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 536870912) i64 @BN_bn2bin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !185    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.b, %.lr.ph.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05.i.i.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bn_minimal_width.exit.thread7.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05.i.i.i, -1
  %i.k = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.k, label %bb.b, label %BN_num_bytes.exit, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.l = icmp eq i32 %i.b, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !185   ; 2 uses
  br i1 %i.l, label %BN_num_bytes.exit, label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.b, %bn_minimal_width.exit.i.i
  %i.m = phi ptr [ %.pre, %bn_minimal_width.exit.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0.lcssa.i9.i.i = phi i32 [ %i.b, %bn_minimal_width.exit.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.n = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.o = shl nsw i32 %i.n, 6
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !94   ; 3 uses
  %i.s = icmp ne i64 %i.r, 0
  %i.t = lshr i64 %i.r, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0               ; 2 uses
  %i.u = select i1 %.not.i.i.i, i32 0, i32 32
  %i.v = zext i1 %i.s to i32
  %i.w = select i1 %.not.i.i.i, i64 %i.r, i64 %i.t ; 2 uses
  %i.x = lshr i64 %i.w, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.x, 0             ; 2 uses
  %i.y = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.z = select i1 %.not52.i.i.i, i64 %i.w, i64 %i.x ; 2 uses
  %i.aa = lshr i64 %i.z, 8                        ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.aa, 0            ; 2 uses
  %i.ab = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ac = select i1 %.not53.i.i.i, i64 %i.z, i64 %i.aa ; 2 uses
  %i.ad = lshr i64 %i.ac, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ad, 0            ; 2 uses
  %i.ae = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.af = select i1 %.not54.i.i.i, i64 %i.ac, i64 %i.ad ; 2 uses
  %i.ag = lshr i64 %i.af, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ag, 0            ; 2 uses
  %i.ah = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.ai = select i1 %.not55.i.i.i, i64 %i.af, i64 %i.ag
  %i.aj = icmp samesign ugt i64 %i.ai, 1
  %.neg.i.i.i = zext i1 %i.aj to i32
  %i.ak = or disjoint i32 %i.o, 7
  %i.al = add nuw nsw i32 %i.ak, %i.v
  %i.am = or disjoint i32 %i.al, %i.u
  %i.an = or disjoint i32 %i.am, %i.y
  %i.ao = add i32 %i.an, %i.ab
  %i.ap = add i32 %i.ao, %i.ae
  %i.aq = add i32 %i.ap, %i.ah
  %i.ar = add i32 %i.aq, %.neg.i.i.i
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %i.au = phi ptr [ %i.m, %bn_minimal_width.exit.thread7.i.i ], [ %.pre, %bn_minimal_width.exit.i.i ], [ %i.d, %bb.c ] ; 9 uses
  %.0.i.i = phi i64 [ %i.at, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ] ; 6 uses
  %i.av = sext i32 %i.b to i64
  %i.aw = shl nsw i64 %i.av, 3                    ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %i.aw) ; 14 uses
  %.not19.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not19.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %BN_num_bytes.exit
  %i.ax = getelementptr i8, ptr %1, i64 %.0.i.i   ; 8 uses
  %min.iters.check = icmp samesign ult i64 %spec.select.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = sub nsw i64 %.0.i.i, %spec.select.i
  %scevgep = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep9 = getelementptr i8, ptr %i.au, i64 %spec.select.i
  %bound0 = icmp ult ptr %scevgep, %scevgep9
  %bound1 = icmp ult ptr %i.au, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp samesign ult i64 %spec.select.i, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i, 24
  %n.vec = and i64 %spec.select.i, 2147483616     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !tbaa !13, !alias.scope !247
  %wide.load11 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !13, !alias.scope !247
  %i.bc = xor i64 %index, -1
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -15
  %i.bf = getelementptr i8, ptr %i.bd, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse12 = shufflevector <16 x i8> %wide.load11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.be, align 1, !tbaa !13, !alias.scope !250, !noalias !247
  store <16 x i8> %reverse12, ptr %i.bf, align 1, !tbaa !13, !alias.scope !250, !noalias !247
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i, 2147483640   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %index14
  %wide.load15 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !13, !alias.scope !247
  %i.bi = xor i64 %index14, -1
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -7
  %reverse16 = shufflevector <8 x i8> %wide.load15, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse16, ptr %i.bk, align 1, !tbaa !13, !alias.scope !250, !noalias !247
  %index.next17 = add nuw i64 %index14, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %spec.select.i, %n.vec13
  br i1 %cmp.n18, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.prol = phi i64 [ %i.bq, %vec.epilog.scalar.ph.prol ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %.018.i.prol
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = xor i64 %.018.i.prol, -1
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !13
  %i.bq = add nuw nsw i64 %.018.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !254

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.unr = phi i64 [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bq, %vec.epilog.scalar.ph.prol ]
  %i.br = sub nsw i64 %.018.i.ph, %spec.select.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %BN_num_bytes.exit
  %.not.i = icmp ugt i64 %.0.i.i, %i.aw
  br i1 %.not.i, label %bb.d, label %bn_words_to_big_endian.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.bt = sub nuw nsw i64 %.0.i.i, %spec.select.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.bt, i1 false)
  br label %bn_words_to_big_endian.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %i.cn, %vec.epilog.scalar.ph ], [ %.018.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.018.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = xor i64 %.018.i, -1
  %i.bx = getelementptr i8, ptr %i.ax, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 %.018.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = sub i64 -2, %.018.i
  %i.cc = getelementptr i8, ptr %i.ax, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %.018.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = sub i64 -3, %.018.i
  %i.ch = getelementptr i8, ptr %i.ax, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 %.018.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = sub i64 -4, %.018.i
  %i.cm = getelementptr i8, ptr %i.ax, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !13
  %i.cn = add nuw nsw i64 %.018.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !255

bn_words_to_big_endian.exit:                      ; preds = %._crit_edge.i, %bb.d
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @BN_bn2le_padded(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !185    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3                      ; 3 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZL13fits_in_bytesPKmmm.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, -8                       ; 3 uses
  %i.h = add i64 %1, %n.vec
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !tbaa !13
  %wide.load23 = load <4 x i8>, ptr %i.k, align 1, !tbaa !13
  %i.l = zext <4 x i8> %wide.load to <4 x i32>
  %i.m = zext <4 x i8> %wide.load23 to <4 x i32>
  %i.n = or <4 x i32> %vec.phi, %i.l              ; 2 uses
  %i.o = or <4 x i32> %vec.phi22, %i.m            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.o, %i.n
  %i.q = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZL13fits_in_bytesPKmmm.exit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.h, %middle.block ]
  %.0910.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.011.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.0910.i = phi i32 [ %i.u, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader24 ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.011.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %.0910.i, %i.t                    ; 2 uses
  %i.v = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.e
  br i1 %exitcond.not.i, label %_ZL13fits_in_bytesPKmmm.exit, label %.lr.ph.i, !llvm.loop !257

_ZL13fits_in_bytesPKmmm.exit:                     ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.q, %middle.block ], [ %i.u, %.lr.ph.i ]
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %_ZL13fits_in_bytesPKmmm.exit.thread, label %_ZL14OPENSSL_memsetPvim.exit

_ZL13fits_in_bytesPKmmm.exit.thread:              ; preds = %bb.a, %_ZL13fits_in_bytesPKmmm.exit
  %i.w = shl nsw i32 %i.c, 3
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.x) ; 4 uses
  %i.y = icmp eq i64 %spec.select, 0
  br i1 %i.y, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.b

bb.b:                                             ; preds = %_ZL13fits_in_bytesPKmmm.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %i.a, i64 %spec.select, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %_ZL13fits_in_bytesPKmmm.exit.thread, %bb.b
  %.not20 = icmp ugt i64 %1, %i.x
  br i1 %.not20, label %bb.c, label %_ZL14OPENSSL_memsetPvim.exit

bb.c:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.z = sub nuw i64 %1, %spec.select
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.z, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.c, %_ZL14OPENSSL_memcpyPvPKvm.exit, %_ZL13fits_in_bytesPKmmm.exit
  %.015 = phi i32 [ 0, %_ZL13fits_in_bytesPKmmm.exit ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 1, %bb.c ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @BN_bn2bin_padded(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !185    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 3                      ; 5 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %.lr.ph.i.preheader, label %_ZL13fits_in_bytesPKmmm.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, -8                       ; 3 uses
  %i.h = add i64 %1, %n.vec
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !tbaa !13
  %wide.load14 = load <4 x i8>, ptr %i.k, align 1, !tbaa !13
  %i.l = zext <4 x i8> %wide.load to <4 x i32>
  %i.m = zext <4 x i8> %wide.load14 to <4 x i32>
  %i.n = or <4 x i32> %vec.phi, %i.l              ; 2 uses
  %i.o = or <4 x i32> %vec.phi13, %i.m            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.o, %i.n
  %i.q = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZL13fits_in_bytesPKmmm.exit, label %.lr.ph.i.preheader36

.lr.ph.i.preheader36:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.h, %middle.block ]
  %.0910.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader36, %.lr.ph.i
  %.011.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader36 ] ; 2 uses
  %.0910.i = phi i32 [ %i.u, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader36 ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.011.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %.0910.i, %i.t                    ; 2 uses
  %i.v = add nuw i64 %.011.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.e
  br i1 %exitcond.not.i, label %_ZL13fits_in_bytesPKmmm.exit, label %.lr.ph.i, !llvm.loop !259

_ZL13fits_in_bytesPKmmm.exit:                     ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i32 [ %i.q, %middle.block ], [ %i.u, %.lr.ph.i ]
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %_ZL13fits_in_bytesPKmmm.exit.thread, label %bn_words_to_big_endian.exit

_ZL13fits_in_bytesPKmmm.exit.thread:              ; preds = %bb.a, %_ZL13fits_in_bytesPKmmm.exit
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.e) ; 14 uses
  %.not19.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not19.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZL13fits_in_bytesPKmmm.exit.thread
  %i.w = getelementptr i8, ptr %0, i64 %1         ; 8 uses
  %min.iters.check17 = icmp ult i64 %spec.select.i, 8
  br i1 %min.iters.check17, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = sub i64 %1, %spec.select.i
  %scevgep = getelementptr i8, ptr %0, i64 %i.x
  %scevgep15 = getelementptr i8, ptr %i.a, i64 %spec.select.i
  %bound0 = icmp ult ptr %scevgep, %scevgep15
  %bound1 = icmp ult ptr %i.a, %i.w
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %spec.select.i, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph19

vector.ph19:                                      ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %spec.select.i, 24
  %n.vec20 = and i64 %spec.select.i, -32          ; 4 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph19
  %index22 = phi i64 [ 0, %vector.ph19 ], [ %index.next26, %vector.body21 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load23 = load <16 x i8>, ptr %i.z, align 1, !tbaa !13, !alias.scope !260
  %wide.load24 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !13, !alias.scope !260
  %i.ab = xor i64 %index22, -1
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr i8, ptr %i.ac, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load23, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse25 = shufflevector <16 x i8> %wide.load24, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ad, align 1, !tbaa !13, !alias.scope !263, !noalias !260
  store <16 x i8> %reverse25, ptr %i.ae, align 1, !tbaa !13, !alias.scope !263, !noalias !260
  %index.next26 = add nuw i64 %index22, 32        ; 2 uses
  %i.af = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.af, label %middle.block27, label %vector.body21, !llvm.loop !265

middle.block27:                                   ; preds = %vector.body21
  %cmp.n28 = icmp eq i64 %spec.select.i, %n.vec20
  br i1 %cmp.n28, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block27
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec20, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %spec.select.i, -8           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %index30
  %wide.load31 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !13, !alias.scope !260
  %i.ah = xor i64 %index30, -1
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -7
  %reverse32 = shufflevector <8 x i8> %wide.load31, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse32, ptr %i.aj, align 1, !tbaa !13, !alias.scope !263, !noalias !260
  %index.next33 = add nuw i64 %index30, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %spec.select.i, %n.vec29
  br i1 %cmp.n34, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec20, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.prol = phi i64 [ %i.ap, %vec.epilog.scalar.ph.prol ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.018.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = xor i64 %.018.i.prol, -1
  %i.ao = getelementptr i8, ptr %i.w, i64 %i.an
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !13
  %i.ap = add nuw i64 %.018.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !267

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.unr = phi i64 [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ap, %vec.epilog.scalar.ph.prol ]
  %i.aq = sub i64 %.018.i.ph, %spec.select.i
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block27, %vec.epilog.middle.block, %_ZL13fits_in_bytesPKmmm.exit.thread
  %.not.i = icmp ugt i64 %1, %i.e
  br i1 %.not.i, label %bb.b, label %bn_words_to_big_endian.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.as = sub nuw i64 %1, %spec.select.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.as, i1 false)
  br label %bn_words_to_big_endian.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %i.bm, %vec.epilog.scalar.ph ], [ %.018.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.018.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = xor i64 %.018.i, -1
  %i.aw = getelementptr i8, ptr %i.w, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %.018.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = sub i64 -2, %.018.i
  %i.bb = getelementptr i8, ptr %i.w, i64 %i.ba
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.018.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = sub i64 -3, %.018.i
  %i.bg = getelementptr i8, ptr %i.w, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.018.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = sub i64 -4, %.018.i
  %i.bl = getelementptr i8, ptr %i.w, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !13
  %i.bm = add nuw i64 %.018.i, 4                  ; 2 uses
  %exitcond.not.i8.3 = icmp eq i64 %i.bm, %spec.select.i
  br i1 %exitcond.not.i8.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !268

bn_words_to_big_endian.exit:                      ; preds = %bb.b, %._crit_edge.i, %_ZL13fits_in_bytesPKmmm.exit
  %.0 = phi i32 [ 0, %_ZL13fits_in_bytesPKmmm.exit ], [ 1, %._crit_edge.i ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @BN_get_word(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bn_minimal_width.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi i32 [ %i.b, %.lr.ph.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bn_minimal_width.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05.i, -1
  %i.k = icmp sgt i32 %.05.i, 1
  br i1 %i.k, label %bb.b, label %bn_minimal_width.exit.thread, !llvm.loop !192

bn_minimal_width.exit:                            ; preds = %bb.b, %bb.a
  %.0.lcssa.i = phi i32 [ %i.b, %bb.a ], [ %.05.i, %bb.b ]
  switch i32 %.0.lcssa.i, label %bb.e [
    i32 0, label %bn_minimal_width.exit.thread
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bn_minimal_width.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !185
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  br label %bn_minimal_width.exit.thread

bb.e:                                             ; preds = %bn_minimal_width.exit
  br label %bn_minimal_width.exit.thread

bn_minimal_width.exit.thread:                     ; preds = %bb.c, %bn_minimal_width.exit, %bb.e, %bb.d
  %.0 = phi i64 [ -1, %bb.e ], [ %i.m, %bb.d ], [ 0, %bn_minimal_width.exit ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @BN_get_u64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bn_minimal_width.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi i32 [ %i.b, %.lr.ph.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bn_minimal_width.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05.i, -1
  %i.k = icmp sgt i32 %.05.i, 1
  br i1 %i.k, label %bb.b, label %.sink.split, !llvm.loop !192

bn_minimal_width.exit:                            ; preds = %bb.b, %bb.a
  %.0.lcssa.i = phi i32 [ %i.b, %bb.a ], [ %.05.i, %bb.b ]
  switch i32 %.0.lcssa.i, label %bb.e [
    i32 0, label %.sink.split
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bn_minimal_width.exit
  %i.l = load ptr, ptr %0, align 8, !tbaa !185
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bn_minimal_width.exit, %bb.d
  %.sink = phi i64 [ %i.m, %bb.d ], [ 0, %bn_minimal_width.exit ], [ 0, %bb.c ]
  store i64 %.sink, ptr %1, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bn_minimal_width.exit
  %.0 = phi i32 [ 0, %bn_minimal_width.exit ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @BN_cmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %i.b, true
  %. = zext i1 %not. to i32
  %spec.select = select i1 %i.a, i32 %., i32 -1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !182  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !182
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not17 = icmp eq i32 %i.d, 0
  %.20 = select i1 %.not17, i32 1, i32 -1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !185    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !186  ; 3 uses
  %i.j = sext i32 %i.i to i64                     ; 7 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !185    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !186  ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 7 uses
  %i.o = icmp ult i32 %i.i, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.n) ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.q = trunc i64 %i.ao to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %.043.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.q, %._crit_edge.loopexit.i.i ] ; 3 uses
  br i1 %i.o, label %.preheader.i.i.preheader, label %bb.f

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.r = sub nsw i64 %i.n, %i.j                   ; 3 uses
  %min.iters.check38 = icmp ult i64 %i.r, 4
  br i1 %min.iters.check38, label %.preheader.i.i.preheader54, label %vector.ph39

vector.ph39:                                      ; preds = %.preheader.i.i.preheader
  %n.vec40 = and i64 %i.r, -4                     ; 3 uses
  %i.s = add nsw i64 %n.vec40, %i.j
  %invariant.gep70 = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next47, %vector.body41 ] ; 2 uses
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph39 ], [ %i.u, %vector.body41 ]
  %vec.phi44 = phi <2 x i64> [ zeroinitializer, %vector.ph39 ], [ %i.v, %vector.body41 ]
  %gep71 = getelementptr [8 x i8], ptr %invariant.gep70, i64 %index42 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep71, i64 16
  %wide.load45 = load <2 x i64>, ptr %gep71, align 8, !tbaa !94
  %wide.load46 = load <2 x i64>, ptr %i.t, align 8, !tbaa !94
  %i.u = or <2 x i64> %wide.load45, %vec.phi43    ; 2 uses
end_hunk_2
begin_hunk_3_@bn_mul_words:bb.a
  %i.bm = lshr i128 %i.bk, 64
  %i.bn = trunc nuw i128 %i.bm to i64             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.14362, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.163, i64 16
  %i.bq = add i64 %.14561, -2                     ; 2 uses
  %.not49.1 = icmp eq i64 %i.bq, 0
  br i1 %.not49.1, label %.loopexit, label %.lr.ph64.new, !llvm.loop !300

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph64.new, %.preheader, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.au, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bn, %.lr.ph64.new ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_rshift(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.12, i32 noundef 116) #36
  br label %bn_set_minimal_width.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !197
  %.not.i = icmp ugt i32 %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %.bn_wexpand.exit_crit_edge

.bn_wexpand.exit_crit_edge:                       ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !185
  br label %bn_wexpand.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i32 %i.c, 8388607
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_set_minimal_width.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !198
  %i.j = and i32 %i.i, 2
  %.not16.i = icmp eq i32 %i.j, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_set_minimal_width.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @OPENSSL_calloc(i64 noundef %i.d, i64 noundef 8) #36 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bn_set_minimal_width.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = load ptr, ptr %0, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %i.r, i64 %i.q, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.s) #36
  store ptr %i.k, ptr %0, align 8, !tbaa !185
  store i32 %i.c, ptr %i.e, align 4, !tbaa !197
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.pre19 = sext i32 %.pre18 to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %.bn_wexpand.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre-phi = phi i64 [ %i.d, %.bn_wexpand.exit_crit_edge ], [ %.pre19, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 8 uses
  %i.t = phi i32 [ %i.c, %.bn_wexpand.exit_crit_edge ], [ %.pre18, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.u = phi ptr [ %.pre, %.bn_wexpand.exit_crit_edge ], [ %i.k, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 10 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !185    ; 12 uses
  %i.w = and i32 %2, 63                           ; 3 uses
  %i.x = lshr i32 %2, 6                           ; 3 uses
  %i.y = zext nneg i32 %i.x to i64                ; 15 uses
  %.not.i13 = icmp ugt i32 %i.t, %i.x
  br i1 %.not.i13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bn_wexpand.exit
  %i.z = icmp eq i32 %i.t, 0
  br i1 %i.z, label %bn_rshift_words.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.aa, i1 false)
  br label %bn_rshift_words.exit

bb.m:                                             ; preds = %bn_wexpand.exit
  %i.ab = icmp eq i32 %i.w, 0
  br i1 %i.ab, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.ac = add nsw i64 %.pre-phi, -1               ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, %i.y
  %i.ae = zext nneg i32 %i.w to i64               ; 5 uses
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = sub nuw nsw i32 64, %i.w
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = xor i64 %i.y, -1
  %i.ai = add nsw i64 %.pre-phi, %i.ah            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aj = shl nsw i64 %.pre-phi, 3                ; 2 uses
  %i.ak = add nsw i64 %i.aj, -8
  %i.al = shl nuw nsw i64 %i.y, 3                 ; 2 uses
  %i.am = sub nsw i64 %i.ak, %i.al
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.am
  %scevgep33 = getelementptr i8, ptr %i.v, i64 %i.al
  %scevgep34 = getelementptr i8, ptr %i.v, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.y
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat36 = shufflevector <2 x i64> %broadcast.splatinsert35, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = add nuw i64 %index, %i.y                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !94, !alias.scope !305
  %wide.load37 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !94, !alias.scope !305
  %i.ar = lshr <2 x i64> %wide.load, %broadcast.splat36
  %i.as = lshr <2 x i64> %wide.load37, %broadcast.splat36
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %wide.load38 = load <2 x i64>, ptr %i.au, align 8, !tbaa !94, !alias.scope !305
  %wide.load39 = load <2 x i64>, ptr %i.av, align 8, !tbaa !94, !alias.scope !305
  %i.aw = shl <2 x i64> %wide.load38, %broadcast.splat
  %i.ax = shl <2 x i64> %wide.load39, %broadcast.splat
  %i.ay = or <2 x i64> %i.aw, %i.ar
  %i.az = or <2 x i64> %i.ax, %i.as
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !94, !alias.scope !308, !noalias !305
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !94, !alias.scope !308, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.039.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i ], [ %i.an, %middle.block ] ; 6 uses
  %i.bd = add nsw i64 %.pre-phi, -2
  %i.be = sub nsw i64 %.039.i.ph, %.pre-phi
  %i.bf = and i64 %i.be, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.039.i.ph
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bi = lshr i64 %i.bh, %i.ae
  %i.bj = add nuw nsw i64 %.039.i.ph, 1           ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !94
  %i.bm = shl i64 %i.bl, %i.ag
  %i.bn = or i64 %i.bm, %i.bi
  %i.bo = sub nuw nsw i64 %.039.i.ph, %i.y
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bo
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !94
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.039.i.unr = phi i64 [ %.039.i.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %i.bd, %.039.i.ph
  br i1 %i.bq, label %._crit_edge.i, label %scalar.ph

bb.n:                                             ; preds = %bb.m
  %i.br = sub nuw nsw i64 %.pre-phi, %i.y
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %i.bt, i64 %i.bs, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !94
  %i.bw = lshr i64 %i.bv, %i.ae
  %i.bx = sub nuw nsw i64 %i.ac, %i.y
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bx
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !94
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.039.i = phi i64 [ %i.cm, %scalar.ph ], [ %.039.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.039.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !94
  %i.cb = lshr i64 %i.ca, %i.ae
  %i.cc = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !94
  %i.cf = shl i64 %i.ce, %i.ag
  %i.cg = or i64 %i.cf, %i.cb
  %i.ch = sub nuw i64 %.039.i, %i.y
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ch
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !94
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cc
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !94
  %i.cl = lshr i64 %i.ck, %i.ae
  %i.cm = add nuw i64 %.039.i, 2                  ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !94
  %i.cp = shl i64 %i.co, %i.ag
  %i.cq = or i64 %i.cp, %i.cl
  %i.cr = sub nuw i64 %i.cc, %i.y
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cr
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !94
  %exitcond.not.i.1 = icmp eq i64 %i.cm, %i.ac
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !311

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %._crit_edge.i, %bb.n
  %i.ct = icmp eq i32 %i.x, 0
  br i1 %i.ct, label %bn_rshift_words.exit, label %bb.o

bb.o:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i
  %i.cu = shl nuw nsw i64 %i.y, 3
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre-phi
  %i.cw = sub nsw i64 0, %i.y
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cx, i8 0, i64 %i.cu, i1 false)
  br label %bn_rshift_words.exit

bn_rshift_words.exit:                             ; preds = %bb.k, %bb.l, %_ZL15OPENSSL_memmovePvPKvm.exit.i, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !182
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !182
  %i.db = load i32, ptr %i.b, align 8, !tbaa !186 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !186
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bn_rshift_words.exit
  %i.de = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.db, %.lr.ph.i.i ], [ %i.dk, %bb.q ] ; 4 uses
  %i.df = zext nneg i32 %.05.i.i to i64
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !94
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.p
  store i32 %.05.i.i, ptr %i.dc, align 8, !tbaa !186
  br label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bb.p
  %i.dk = add nsw i32 %.05.i.i, -1
  %i.dl = icmp sgt i32 %.05.i.i, 1
  br i1 %i.dl, label %bb.p, label %bn_minimal_width.exit.thread.i, !llvm.loop !192

bn_minimal_width.exit.thread.i:                   ; preds = %bb.q
  store i32 0, ptr %i.dc, align 8, !tbaa !186
  br label %bb.r

bn_minimal_width.exit.i:                          ; preds = %bn_rshift_words.exit
  %i.dm = icmp eq i32 %i.db, 0
  br i1 %i.dm, label %bb.r, label %bn_set_minimal_width.exit

bb.r:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.da, align 8, !tbaa !182
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bb.h, %bb.g, %bb.e, %bb.r, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread5.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.r ], [ 1, %bn_minimal_width.exit.thread5.i ], [ 1, %bn_minimal_width.exit.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_nnmod(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %BN_usub.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %BN_usub.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @bn_usub_consttime(ptr noundef nonnull %0, ptr noundef readonly %2, ptr noundef nonnull readonly %0)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %BN_usub.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ %i.n, %bb.f ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bn_minimal_width.exit.thread5.i.i

bn_minimal_width.exit.thread5.i.i:                ; preds = %bb.e
  store i32 %.05.i.i.i, ptr %i.e, align 8, !tbaa !186
  br label %BN_usub.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.05.i.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.o, label %bb.e, label %bn_minimal_width.exit.thread.i.i, !llvm.loop !192

bn_minimal_width.exit.thread.i.i:                 ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !186
  br label %bb.g

bn_minimal_width.exit.i.i:                        ; preds = %bb.d
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.g, label %BN_usub.exit

bb.g:                                             ; preds = %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread.i.i
  store i32 0, ptr %i.b, align 8, !tbaa !182
  br label %BN_usub.exit

BN_usub.exit:                                     ; preds = %bb.g, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread5.i.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bn_minimal_width.exit.thread5.i.i ], [ 1, %bn_minimal_width.exit.i.i ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define hidden i64 @bn_reduce_once(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %4, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %4, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.lr.ph.i11, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %4, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !94
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !94
  %i.d = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94
  %i.p = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
end_hunk_3
begin_hunk_4_@BN_mod_exp_mont:bb.a
  br i1 %i.dy, label %middle.block290, label %vector.body283, !llvm.loop !368

middle.block290:                                  ; preds = %vector.body283
  %bin.rdx291 = or <2 x i64> %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx291) ; 2 uses
  %cmp.n292 = icmp eq i64 %i.dq, %n.vec282
  br i1 %cmp.n292, label %BN_abs_is_word.exit, label %.lr.ph.i.preheader296

.lr.ph.i.preheader296:                            ; preds = %.lr.ph.i.preheader, %middle.block290
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.dr, %middle.block290 ]
  %.01113.i.ph = phi i64 [ %i.dp, %.lr.ph.i.preheader ], [ %i.dz, %middle.block290 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader296, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader296 ] ; 2 uses
  %.01113.i = phi i64 [ %i.ec, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader296 ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !94
  %i.ec = or i64 %i.eb, %.01113.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %BN_abs_is_word.exit, label %.lr.ph.i, !llvm.loop !369

BN_abs_is_word.exit:                              ; preds = %.lr.ph.i, %middle.block290, %BN_num_bits.exit.thread.thread
  %.012.in.in.i = phi i64 [ %i.dp, %BN_num_bits.exit.thread.thread ], [ %i.dz, %middle.block290 ], [ %i.ec, %.lr.ph.i ]
  %.012.in.i.not = icmp eq i64 %.012.in.in.i, 0
  br i1 %.012.in.i.not, label %bb.k, label %BN_abs_is_word.exit.thread

bb.k:                                             ; preds = %BN_abs_is_word.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ed, align 8, !tbaa !182
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ee, align 8, !tbaa !186
  br label %bb.aw

BN_abs_is_word.exit.thread:                       ; preds = %BN_abs_is_word.exit
  %i.ef = tail call i32 @BN_one(ptr noundef %0)
  br label %bb.aw

bb.l:                                             ; preds = %BN_num_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !291
  %.not.i.i139 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i139, label %bb.m, label %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !292
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !293 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !294
  %i.ep = icmp eq i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.n, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.m
  %.pre.i.i.i = load ptr, ptr %i.ei, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i64 %i.em, 0
  %i.eq = mul i64 %i.em, 3
  %i.er = lshr i64 %i.eq, 1
  %i.es = select i1 %.not.i.i.i, i64 32, i64 %i.er ; 4 uses
  %i.et = icmp ule i64 %i.es, %i.em
  %i.eu = icmp samesign ugt i64 %i.es, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ev = load ptr, ptr %i.ei, align 8, !tbaa !290
  %i.ew = shl nuw i64 %i.es, 3
  %i.ex = tail call ptr @OPENSSL_realloc(ptr noundef %i.ev, i64 noundef %i.ew) #36 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.ex, ptr %i.ei, align 8, !tbaa !290
  store i64 %i.es, ptr %i.en, align 8, !tbaa !294
  %.pre26.i.i.i = load i64, ptr %i.el, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i:           ; preds = %bb.p, %._crit_edge.i.i.i
  %i.ez = phi i64 [ %i.em, %._crit_edge.i.i.i ], [ %.pre26.i.i.i, %bb.p ]
  %i.fa = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ex, %bb.p ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  store i64 %i.ek, ptr %i.fb, align 8, !tbaa !94
  %i.fc = load i64, ptr %i.el, align 8, !tbaa !293
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %i.el, align 8, !tbaa !293
  br label %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.eg, align 8, !tbaa !291
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 1, ptr %i.fe, align 1, !tbaa !295
  br label %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit

_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit:       ; preds = %bb.l, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i, %bb.q
  %i.ff = tail call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 11 uses
  %i.fg = tail call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 5 uses
  store ptr %i.fg, ptr %i.a, align 16, !tbaa !352
  %i.fh = icmp eq ptr %i.ff, null
  %i.fi = icmp eq ptr %i.fg, null
  %or.cond = or i1 %i.fh, %i.fi
  br i1 %or.cond, label %bb.au, label %bb.r

bb.r:                                             ; preds = %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr null, ptr %6, align 8, !tbaa !370
  %i.fj = icmp eq ptr %5, null
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = tail call ptr @BN_MONT_CTX_new_consttime(ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @_ZNSt15__uniq_ptr_implI14bn_mont_ctx_stN4bssl8internal7DeleterEE5resetEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.fk) #36
  %i.fl = load ptr, ptr %6, align 8, !tbaa !373   ; 2 uses
  %.not.i = icmp eq ptr %i.fl, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0106 = phi ptr [ %5, %bb.r ], [ %i.fl, %bb.s ] ; 8 uses
  %i.fm = icmp ugt i32 %i.dn, 671
  br i1 %i.fm, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = icmp samesign ugt i32 %i.dn, 239
  br i1 %i.fn, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = icmp samesign ugt i32 %i.dn, 79
  br i1 %i.fo, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = icmp samesign ugt i32 %i.dn, 23
  %..i = select i1 %i.fp, i32 3, i32 1
  br label %_ZL32BN_window_bits_for_exponent_sizem.exit

_ZL32BN_window_bits_for_exponent_sizem.exit:      ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i140 = phi i32 [ 4, %bb.v ], [ 6, %bb.t ], [ 5, %bb.u ], [ %..i, %bb.w ] ; 6 uses
  %i.fq = call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef nonnull %i.fg, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %.0106, ptr noundef nonnull readonly %.0106, ptr noundef nonnull %4)
  %.not119 = icmp eq i32 %i.fq, 0
  br i1 %.not119, label %.critedge, label %bb.x

bb.x:                                             ; preds = %_ZL32BN_window_bits_for_exponent_sizem.exit
  %i.fr = icmp samesign ugt i32 %.0.i140, 1       ; 2 uses
  br i1 %i.fr, label %bb.y, label %.critedge134

bb.y:                                             ; preds = %bb.x
  %i.fs = call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fg, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  %.not120 = icmp eq i32 %i.fu, 0
  br i1 %.not120, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.z
  %i.fv = add nsw i32 %.0.i140, -1
  br label %.lr.ph

bb.aa:                                            ; preds = %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fw = trunc nuw i64 %indvars.iv.next to i32
  %.0103.highbits = lshr i32 %i.fw, %i.fv
  %.not122.not = icmp eq i32 %.0103.highbits, 0
  br i1 %.not122.not, label %.lr.ph, label %.critedge134, !llvm.loop !374

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.fx = call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !352
  %i.fz = icmp eq ptr %i.fx, null
  br i1 %i.fz, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.ga = getelementptr i8, ptr %i.fy, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !352
  %i.gc = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %i.fx, ptr noundef %i.gb, ptr noundef nonnull %i.fs, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  %.not121 = icmp eq i32 %i.gc, 0
  br i1 %.not121, label %.critedge, label %bb.aa

.critedge134:                                     ; preds = %bb.aa, %bb.x
  %i.gd = add nsw i32 %i.dn, -1
  %i.ge = icmp samesign ugt i32 %.0.i140, 2
  %i.gf = icmp samesign ugt i32 %.0.i140, 3
  %i.gg = icmp samesign ugt i32 %.0.i140, 4
  %i.gh = icmp samesign ugt i32 %.0.i140, 5
  br label %.outer

.outer:                                           ; preds = %bb.as, %.critedge134
  %.not124 = phi i1 [ true, %bb.as ], [ false, %.critedge134 ] ; 2 uses
  %.099.ph = phi i32 [ %i.jx, %bb.as ], [ %i.gd, %.critedge134 ]
  br label %bb.ac

bb.ac:                                            ; preds = %.outer, %bb.ag
  %.099 = phi i32 [ %i.gx, %bb.ag ], [ %.099.ph, %.outer ] ; 11 uses
  %i.gi = icmp slt i32 %.099, 0
  br i1 %i.gi, label %BN_is_bit_set.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = load i32, ptr %i.bx, align 8, !tbaa !186
  %i.gk = sext i32 %i.gj to i64                   ; 6 uses
  %i.gl = zext nneg i32 %.099 to i64              ; 7 uses
  %i.gm = lshr i64 %i.gl, 6                       ; 2 uses
  %.not.i.i141 = icmp ult i64 %i.gm, %i.gk
  br i1 %.not.i.i141, label %BN_is_bit_set.exit, label %BN_is_bit_set.exit.thread

BN_is_bit_set.exit:                               ; preds = %bb.ad
  %i.gn = load ptr, ptr %2, align 8, !tbaa !185   ; 6 uses
  %i.go = and i64 %i.gl, 63
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !94
  %i.gr = shl nuw i64 1, %i.go
  %i.gs = and i64 %i.gq, %i.gr
  %.not123 = icmp eq i64 %i.gs, 0
  br i1 %.not123, label %BN_is_bit_set.exit.thread, label %.preheader169

.preheader169:                                    ; preds = %BN_is_bit_set.exit
  %i.gt = icmp ne i32 %.099, 0
  %i.gu = and i1 %i.fr, %i.gt
  br i1 %i.gu, label %.lr.ph187, label %._crit_edge

BN_is_bit_set.exit.thread:                        ; preds = %bb.ad, %bb.ac, %BN_is_bit_set.exit
  br i1 %.not124, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %BN_is_bit_set.exit.thread
  %i.gv = call i32 @BN_mod_mul_montgomery(ptr noundef %i.ff, ptr noundef %i.ff, ptr noundef %i.ff, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  %.not125 = icmp eq i32 %i.gv, 0
  br i1 %.not125, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae, %BN_is_bit_set.exit.thread
  %i.gw = icmp eq i32 %.099, 0
  br i1 %i.gw, label %.thread161, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = add nsw i32 %.099, -1
  br label %bb.ac, !llvm.loop !375

._crit_edge.loopexit:                             ; preds = %bb.an, %BN_is_bit_set.exit145.4, %bb.ao, %.thread.3, %.thread.2, %.thread.1, %.thread
  %.lcssa307 = phi i32 [ %i.hg, %.thread ], [ %i.hv, %.thread.1 ], [ %i.ik, %.thread.2 ], [ %i.iz, %.thread.3 ], [ %i.jn, %bb.ao ], [ %i.iz, %bb.an ], [ %i.iz, %BN_is_bit_set.exit145.4 ]
  %.lcssa306 = phi i32 [ %i.hh, %.thread ], [ %i.hw, %.thread.1 ], [ %i.il, %.thread.2 ], [ %i.ja, %.thread.3 ], [ 5, %bb.ao ], [ %i.ja, %bb.an ], [ %i.ja, %BN_is_bit_set.exit145.4 ]
  %i.gy = ashr i32 %.lcssa307, 1
  %i.gz = sext i32 %i.gy to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader169
  %.097.lcssa = phi i64 [ 0, %.preheader169 ], [ %i.gz, %._crit_edge.loopexit ] ; 2 uses
  %.096.lcssa = phi i32 [ 0, %.preheader169 ], [ %.lcssa306, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not124, label %.preheader, label %.critedge136

.lr.ph187:                                        ; preds = %.preheader169
  %7 = add nsw i64 %i.gl, -1                      ; 2 uses
  %8 = lshr i64 %7, 6                             ; 2 uses
  %.not.i.i143 = icmp ult i64 %8, %i.gk
  br i1 %.not.i.i143, label %BN_is_bit_set.exit145, label %.thread

BN_is_bit_set.exit145:                            ; preds = %.lr.ph187
  %i.ha = and i64 %7, 63
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !94
  %i.hd = shl nuw i64 1, %i.ha
  %i.he = and i64 %i.hc, %i.hd
  %.fr = freeze i64 %i.he
  %i.hf = icmp eq i64 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.hf, i32 1, i32 3
  %spec.select336 = select i1 %i.hf, i32 0, i32 1
  br label %.thread

.thread:                                          ; preds = %BN_is_bit_set.exit145, %.lr.ph187
  %i.hg = phi i32 [ %spec.select, %BN_is_bit_set.exit145 ], [ 1, %.lr.ph187 ] ; 4 uses
  %i.hh = phi i32 [ %spec.select336, %BN_is_bit_set.exit145 ], [ 0, %.lr.ph187 ] ; 4 uses
  %i.hi = icmp ugt i32 %.099, 1
  %i.hj = and i1 %i.ge, %i.hi
  br i1 %i.hj, label %bb.ah, label %._crit_edge.loopexit

bb.ah:                                            ; preds = %.thread
  %i.hk = add nsw i64 %i.gl, -2                   ; 2 uses
  %i.hl = lshr i64 %i.hk, 6                       ; 2 uses
  %.not.i.i143.1 = icmp ult i64 %i.hl, %i.gk
  br i1 %.not.i.i143.1, label %BN_is_bit_set.exit145.1, label %.thread.1

BN_is_bit_set.exit145.1:                          ; preds = %bb.ah
  %i.hm = and i64 %i.hk, 63
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hl
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !94
  %i.hp = shl nuw i64 1, %i.hm
  %i.hq = and i64 %i.ho, %i.hp
  %.fr.1 = freeze i64 %i.hq
  %i.hr = icmp eq i64 %.fr.1, 0
  br i1 %i.hr, label %.thread.1, label %bb.ai

bb.ai:                                            ; preds = %BN_is_bit_set.exit145.1
  %i.hs = sub nuw nsw i32 2, %i.hh
  %i.ht = shl nuw nsw i32 %i.hg, %i.hs
  %i.hu = or disjoint i32 %i.ht, 1
  br label %.thread.1

.thread.1:                                        ; preds = %bb.ai, %BN_is_bit_set.exit145.1, %bb.ah
  %i.hv = phi i32 [ %i.hu, %bb.ai ], [ %i.hg, %bb.ah ], [ %i.hg, %BN_is_bit_set.exit145.1 ] ; 4 uses
  %i.hw = phi i32 [ 2, %bb.ai ], [ %i.hh, %bb.ah ], [ %i.hh, %BN_is_bit_set.exit145.1 ] ; 4 uses
  %i.hx = icmp ugt i32 %.099, 2
  %i.hy = and i1 %i.gf, %i.hx
  br i1 %i.hy, label %bb.aj, label %._crit_edge.loopexit

bb.aj:                                            ; preds = %.thread.1
  %i.hz = add nsw i64 %i.gl, -3                   ; 2 uses
  %i.ia = lshr i64 %i.hz, 6                       ; 2 uses
  %.not.i.i143.2 = icmp ult i64 %i.ia, %i.gk
  br i1 %.not.i.i143.2, label %BN_is_bit_set.exit145.2, label %.thread.2

BN_is_bit_set.exit145.2:                          ; preds = %bb.aj
  %i.ib = and i64 %i.hz, 63
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ia
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !94
  %i.ie = shl nuw i64 1, %i.ib
  %i.if = and i64 %i.id, %i.ie
  %.fr.2 = freeze i64 %i.if
  %i.ig = icmp eq i64 %.fr.2, 0
  br i1 %i.ig, label %.thread.2, label %bb.ak

bb.ak:                                            ; preds = %BN_is_bit_set.exit145.2
  %i.ih = sub nsw i32 3, %i.hw
  %i.ii = shl i32 %i.hv, %i.ih
  %i.ij = or i32 %i.ii, 1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.ak, %BN_is_bit_set.exit145.2, %bb.aj
  %i.ik = phi i32 [ %i.ij, %bb.ak ], [ %i.hv, %bb.aj ], [ %i.hv, %BN_is_bit_set.exit145.2 ] ; 4 uses
  %i.il = phi i32 [ 3, %bb.ak ], [ %i.hw, %bb.aj ], [ %i.hw, %BN_is_bit_set.exit145.2 ] ; 4 uses
  %i.im = icmp ugt i32 %.099, 3
  %i.in = and i1 %i.gg, %i.im
  br i1 %i.in, label %bb.al, label %._crit_edge.loopexit

bb.al:                                            ; preds = %.thread.2
  %i.io = add nsw i64 %i.gl, -4                   ; 2 uses
  %i.ip = lshr i64 %i.io, 6                       ; 2 uses
  %.not.i.i143.3 = icmp ult i64 %i.ip, %i.gk
  br i1 %.not.i.i143.3, label %BN_is_bit_set.exit145.3, label %.thread.3

BN_is_bit_set.exit145.3:                          ; preds = %bb.al
  %i.iq = and i64 %i.io, 63
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ip
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !94
  %i.it = shl nuw i64 1, %i.iq
  %i.iu = and i64 %i.is, %i.it
  %.fr.3 = freeze i64 %i.iu
  %i.iv = icmp eq i64 %.fr.3, 0
  br i1 %i.iv, label %.thread.3, label %bb.am

bb.am:                                            ; preds = %BN_is_bit_set.exit145.3
  %i.iw = sub nsw i32 4, %i.il
  %i.ix = shl i32 %i.ik, %i.iw
  %i.iy = or i32 %i.ix, 1
  br label %.thread.3

.thread.3:                                        ; preds = %bb.am, %BN_is_bit_set.exit145.3, %bb.al
  %i.iz = phi i32 [ %i.iy, %bb.am ], [ %i.ik, %bb.al ], [ %i.ik, %BN_is_bit_set.exit145.3 ] ; 4 uses
  %i.ja = phi i32 [ 4, %bb.am ], [ %i.il, %bb.al ], [ %i.il, %BN_is_bit_set.exit145.3 ] ; 4 uses
  %i.jb = icmp ugt i32 %.099, 4
  %i.jc = and i1 %i.gh, %i.jb
  br i1 %i.jc, label %bb.an, label %._crit_edge.loopexit

bb.an:                                            ; preds = %.thread.3
  %i.jd = add nsw i64 %i.gl, -5                   ; 2 uses
  %i.je = lshr i64 %i.jd, 6                       ; 2 uses
  %.not.i.i143.4 = icmp ult i64 %i.je, %i.gk
  br i1 %.not.i.i143.4, label %BN_is_bit_set.exit145.4, label %._crit_edge.loopexit

BN_is_bit_set.exit145.4:                          ; preds = %bb.an
  %i.jf = and i64 %i.jd, 63
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.je
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !94
  %i.ji = shl nuw i64 1, %i.jf
  %i.jj = and i64 %i.jh, %i.ji
  %.fr.4 = freeze i64 %i.jj
  %i.jk = icmp eq i64 %.fr.4, 0
  br i1 %i.jk, label %._crit_edge.loopexit, label %bb.ao

bb.ao:                                            ; preds = %BN_is_bit_set.exit145.4
  %i.jl = sub nsw i32 5, %i.ja
  %i.jm = shl i32 %i.iz, %i.jl
  %i.jn = or i32 %i.jm, 1
  br label %._crit_edge.loopexit

bb.ap:                                            ; preds = %.preheader
  %i.jo = add nuw i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %.096.lcssa
  br i1 %exitcond.not, label %bb.aq, label %.preheader, !llvm.loop !376

.preheader:                                       ; preds = %._crit_edge, %bb.ap
  %.0189 = phi i32 [ %i.jo, %bb.ap ], [ 0, %._crit_edge ] ; 2 uses
  %i.jp = call i32 @BN_mod_mul_montgomery(ptr noundef %i.ff, ptr noundef %i.ff, ptr noundef %i.ff, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  %.not128 = icmp eq i32 %i.jp, 0
  br i1 %.not128, label %.critedge, label %bb.ap

.critedge136:                                     ; preds = %._crit_edge
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.097.lcssa
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !352
  %i.js = call ptr @BN_copy(ptr noundef %i.ff, ptr noundef %i.jr)
  %.not130 = icmp eq ptr %i.js, null
  br i1 %.not130, label %.critedge, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.097.lcssa
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !352
  %i.jv = call i32 @BN_mod_mul_montgomery(ptr noundef %i.ff, ptr noundef %i.ff, ptr noundef %i.ju, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  %.not129 = icmp eq i32 %i.jv, 0
  br i1 %.not129, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge136
  %i.jw = icmp eq i32 %.099, %.096.lcssa
  br i1 %i.jw, label %.thread161, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.neg = xor i32 %.096.lcssa, -1
  %i.jx = add nsw i32 %.099, %.neg
  br label %.outer

.thread161:                                       ; preds = %bb.ar, %bb.af
  %i.jy = call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef %i.ff, ptr noundef nonnull %.0106, ptr noundef nonnull %4)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ab, %.critedge136, %bb.aq, %bb.ae, %.preheader, %_ZL32BN_window_bits_for_exponent_sizem.exit, %.thread161, %bb.z, %bb.y
  %.9.ph = phi i32 [ 0, %bb.y ], [ 0, %.preheader ], [ 0, %bb.z ], [ %i.jy, %.thread161 ], [ 0, %bb.ae ], [ 0, %_ZL32BN_window_bits_for_exponent_sizem.exit ], [ 0, %.critedge136 ], [ 0, %bb.aq ], [ 0, %bb.ab ], [ 0, %.lr.ph ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !373    ; 2 uses
  %.not.i146 = icmp eq ptr %.pr, null
  br i1 %.not.i146, label %_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %.critedge
  call void @BN_MONT_CTX_free(ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.s, %.critedge, %bb.at
  %.9167 = phi i32 [ %.9.ph, %bb.at ], [ %.9.ph, %.critedge ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.au

bb.au:                                            ; preds = %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit, %_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit
  %.10 = phi i32 [ %.9167, %_ZNSt10unique_ptrI14bn_mont_ctx_stN4bssl8internal7DeleterEED2Ev.exit ], [ 0, %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit ]
  %i.jz = load i8, ptr %i.eg, align 8, !tbaa !291
  %.not.i.i147 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i147, label %bb.av, label %_ZN4bssl11BN_CTXScopeD2Ev.exit

bb.av:                                            ; preds = %bb.au
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !293
  %i.kd = add i64 %i.kc, -1                       ; 2 uses
  store i64 %i.kd, ptr %i.kb, align 8, !tbaa !293
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !290
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kd
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !94
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !292
  br label %_ZN4bssl11BN_CTXScopeD2Ev.exit

_ZN4bssl11BN_CTXScopeD2Ev.exit:                   ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.k, %BN_abs_is_word.exit.thread, %_ZN4bssl11BN_CTXScopeD2Ev.exit, %bb.g, %bb.c, %BN_is_odd.exit.thread
  %.12 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %BN_is_odd.exit.thread ], [ 1, %bb.k ], [ %i.ef, %BN_abs_is_word.exit.thread ], [ %.10, %_ZN4bssl11BN_CTXScopeD2Ev.exit ]
  ret i32 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_MONT_CTX_new_consttime(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 64) #36 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %BN_MONT_CTX_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = tail call fastcc noundef i32 @_ZL24bn_mont_ctx_set_N_and_n0P14bn_mont_ctx_stPK9bignum_st(ptr noundef nonnull %i.a, ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %BN_MONT_CTX_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @bn_mont_ctx_set_RR_consttime(ptr noundef nonnull %i.a, ptr noundef %1)
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %BN_MONT_CTX_new.exit.thread, label %bb.d

BN_MONT_CTX_new.exit.thread:                      ; preds = %bb.a, %bb.c, %bb.b
  tail call void @BN_MONT_CTX_free(ptr noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %BN_MONT_CTX_new.exit.thread
  %.0 = phi ptr [ null, %BN_MONT_CTX_new.exit.thread ], [ %i.a, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_to_montgomery(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !182
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.8, i32 noundef 322) #36
  br label %_ZL30bn_mod_mul_montgomery_fallbackP9bignum_stPKS_S2_PK14bn_mont_ctx_stP10bignum_ctx.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !291
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %BN_CTX_start.exit.i

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !292
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !293  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !294
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %i.k, 0
  %i.o = mul i64 %i.k, 3
  %i.p = lshr i64 %i.o, 1
  %i.q = select i1 %.not.i.i.i, i64 32, i64 %i.p  ; 4 uses
  %i.r = icmp ule i64 %i.q, %i.k
  %i.s = icmp samesign ugt i64 %i.q, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !290
  %i.u = shl nuw i64 %i.q, 3
  %i.v = tail call ptr @OPENSSL_realloc(ptr noundef %i.t, i64 noundef %i.u) #36 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.g, align 8, !tbaa !290
  store i64 %i.q, ptr %i.l, align 8, !tbaa !294
  %.pre26.i.i.i = load i64, ptr %i.j, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i:           ; preds = %bb.h, %._crit_edge.i.i.i
  %i.x = phi i64 [ %i.k, %._crit_edge.i.i.i ], [ %.pre26.i.i.i, %bb.h ]
  %i.y = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.v, %bb.h ]
end_hunk_4
begin_hunk_5_@bn_rshift_secret_shift:bb.a
BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.z = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bn_wexpand.exit.thread, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %1)
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bn_wexpand.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !186 ; 5 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !197
  %.not.i28 = icmp ugt i32 %i.ad, %i.ag
  br i1 %.not.i28, label %bb.i, label %bn_wexpand.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i32 %i.ad, 8388607
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 2
  %.not16.i = icmp eq i32 %i.ak, 0
  br i1 %.not16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.al = tail call ptr @OPENSSL_calloc(i64 noundef %i.ae, i64 noundef 8) #36 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bn_wexpand.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !186 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = sext i32 %i.ao to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr readonly align 1 %i.as, i64 %i.ar, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.o, %bb.n
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.at) #36
  store ptr %i.al, ptr %i.z, align 8, !tbaa !185
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !197
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !186
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.h
  %i.au = phi i32 [ %.pre, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.av = shl nsw i32 %i.au, 6
  %.not2737 = icmp eq i32 %i.au, 0
  br i1 %.not2737, label %bn_wexpand.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bn_wexpand.exit
  %.pre39 = load ptr, ptr %i.z, align 8, !tbaa !185
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !185
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bn_select_words.exit
  %i.aw = phi i32 [ %i.ej, %bn_select_words.exit ], [ %i.au, %.lr.ph.preheader ] ; 3 uses
  %i.ax = phi ptr [ %i.eh, %bn_select_words.exit ], [ %.pre40, %.lr.ph.preheader ] ; 12 uses
  %i.ay = phi ptr [ %i.ei, %bn_select_words.exit ], [ %.pre39, %.lr.ph.preheader ] ; 10 uses
  %.02438 = phi i32 [ %i.ga, %bn_select_words.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.az = lshr i32 %2, %.02438
  %i.ba = and i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = shl nuw i32 1, %.02438                  ; 2 uses
  %i.be = sext i32 %i.aw to i64                   ; 8 uses
  %i.bf = and i32 %i.bd, 63                       ; 2 uses
  %i.bg = lshr i32 %i.bd, 6                       ; 3 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 16 uses
  %.not.i29 = icmp ugt i32 %i.aw, %i.bg
  br i1 %.not.i29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bi = icmp eq i32 %i.aw, 0
  br i1 %i.bi, label %bn_rshift_words.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = shl nuw nsw i64 %i.be, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.bj, i1 false)
  br label %bn_rshift_words.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bk = icmp ugt i32 %.02438, 5
  br i1 %i.bk, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bl = add nsw i64 %i.be, -1                   ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bh
  %i.bn = zext nneg i32 %i.bf to i64              ; 5 uses
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bo = sub nuw nsw i32 64, %i.bf
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = xor i64 %i.bh, -1
  %i.br = add nsw i64 %i.bq, %i.be                ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.br, 4
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i
  %scevgep61 = getelementptr i8, ptr %i.ay, i64 -8
  %i.bs = shl nsw i64 %i.be, 3                    ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bu = sub nsw i64 %i.bs, %i.bt
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.bu
  %scevgep63 = getelementptr i8, ptr %i.ax, i64 %i.bt
  %scevgep64 = getelementptr i8, ptr %i.ax, i64 %i.bs
  %bound065 = icmp ult ptr %i.ay, %scevgep64
  %bound166 = icmp ult ptr %scevgep63, %scevgep62
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck60
  %n.vec71 = and i64 %i.br, -4                    ; 3 uses
  %i.bv = or disjoint i64 %n.vec71, %i.bh
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph70
  %index77 = phi i64 [ 0, %vector.ph70 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bw = or disjoint i64 %index77, %i.bh         ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !94, !alias.scope !551
  %wide.load79 = load <2 x i64>, ptr %i.by, align 8, !tbaa !94, !alias.scope !551
  %i.bz = lshr <2 x i64> %wide.load78, %broadcast.splat75
  %i.ca = lshr <2 x i64> %wide.load79, %broadcast.splat75
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bw ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %wide.load80 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !94, !alias.scope !551
  %wide.load81 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !94, !alias.scope !551
  %i.ce = shl <2 x i64> %wide.load80, %broadcast.splat73
  %i.cf = shl <2 x i64> %wide.load81, %broadcast.splat73
  %i.cg = or <2 x i64> %i.ce, %i.bz
  %i.ch = or <2 x i64> %i.cf, %i.ca
  %i.ci = sub nuw i64 %i.bw, %i.bh
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x i64> %i.cg, ptr %i.cj, align 8, !tbaa !94, !alias.scope !554, !noalias !551
  store <2 x i64> %i.ch, ptr %i.ck, align 8, !tbaa !94, !alias.scope !554, !noalias !551
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next82, %n.vec71
  br i1 %i.cl, label %middle.block83, label %vector.body76, !llvm.loop !556

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.br, %n.vec71
  br i1 %cmp.n84, label %._crit_edge.i, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck60, %.lr.ph.i, %middle.block83
  %.039.i.ph = phi i64 [ %i.bh, %vector.memcheck60 ], [ %i.bh, %.lr.ph.i ], [ %i.bv, %middle.block83 ] ; 6 uses
  %i.cm = add nsw i64 %i.be, -2
  %i.cn = sub nsw i64 %.039.i.ph, %i.be
  %i.co = and i64 %i.cn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph68.prol, label %scalar.ph68.prol.loopexit

scalar.ph68.prol:                                 ; preds = %scalar.ph68.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.039.i.ph
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !94
  %i.cr = lshr i64 %i.cq, %i.bn
  %i.cs = add nuw nsw i64 %.039.i.ph, 1           ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !94
  %i.cv = shl i64 %i.cu, %i.bp
  %i.cw = or i64 %i.cv, %i.cr
  %i.cx = sub nuw nsw i64 %.039.i.ph, %i.bh
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cx
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !94
  br label %scalar.ph68.prol.loopexit

scalar.ph68.prol.loopexit:                        ; preds = %scalar.ph68.prol, %scalar.ph68.preheader
  %.039.i.unr = phi i64 [ %.039.i.ph, %scalar.ph68.preheader ], [ %i.cs, %scalar.ph68.prol ]
  %i.cz = icmp eq i64 %i.cm, %.039.i.ph
  br i1 %i.cz, label %._crit_edge.i, label %scalar.ph68

bb.s:                                             ; preds = %bb.r
  %i.da = sub nuw nsw i64 %i.be, %i.bh
  %i.db = shl nsw i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ay, ptr readonly align 1 %i.dc, i64 %i.db, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

._crit_edge.i:                                    ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68, %middle.block83, %.preheader.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bl
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !94
  %i.df = lshr i64 %i.de, %i.bn
  %i.dg = sub nuw nsw i64 %i.bl, %i.bh
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dg
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !94
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

scalar.ph68:                                      ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68
  %.039.i = phi i64 [ %i.dv, %scalar.ph68 ], [ %.039.i.unr, %scalar.ph68.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.039.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !94
  %i.dk = lshr i64 %i.dj, %i.bn
  %i.dl = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !94
  %i.do = shl i64 %i.dn, %i.bp
  %i.dp = or i64 %i.do, %i.dk
  %i.dq = sub nuw i64 %.039.i, %i.bh
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dq
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !94
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dl
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !94
  %i.du = lshr i64 %i.dt, %i.bn
  %i.dv = add nuw i64 %.039.i, 2                  ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !94
  %i.dy = shl i64 %i.dx, %i.bp
  %i.dz = or i64 %i.dy, %i.du
  %i.ea = sub nuw i64 %i.dl, %i.bh
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ea
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !94
  %exitcond.not.i.1 = icmp eq i64 %i.dv, %i.bl
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph68, !llvm.loop !557

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %._crit_edge.i, %bb.s
  %i.ec = icmp eq i32 %i.bg, 0
  br i1 %i.ec, label %bn_rshift_words.exit, label %bb.t

bb.t:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i
  %i.ed = shl nuw nsw i64 %i.bh, 3
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.be
  %i.ef = sub nsw i64 0, %i.bh
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eg, i8 0, i64 %i.ed, i1 false)
  br label %bn_rshift_words.exit

bn_rshift_words.exit:                             ; preds = %bb.p, %bb.q, %_ZL15OPENSSL_memmovePvPKvm.exit.i, %bb.t
  %i.eh = load ptr, ptr %0, align 8, !tbaa !185   ; 7 uses
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !185 ; 7 uses
  %i.ej = load i32, ptr %i.ac, align 8, !tbaa !186 ; 5 uses
  %i.ek = sext i32 %i.ej to i64                   ; 5 uses
  %.not.i30 = icmp eq i32 %i.ej, 0
  br i1 %.not.i30, label %bn_select_words.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bn_rshift_words.exit
  %i.el = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bc) #38, !srcloc !156 ; 5 uses
  %i.em = xor i64 %i.el, -1                       ; 4 uses
  %min.iters.check = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i31
  %i.en = shl nsw i64 %i.ek, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eh, i64 %i.en
  %scevgep54 = getelementptr i8, ptr %i.ei, i64 %i.en
  %bound0 = icmp ult ptr %i.eh, %scevgep54
  %bound1 = icmp ult ptr %i.ei, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat56 = shufflevector <2 x i64> %broadcast.splatinsert55, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !94, !alias.scope !558
  %wide.load57 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !94, !alias.scope !558
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !94, !alias.scope !561, !noalias !558
  %wide.load59 = load <2 x i64>, ptr %i.er, align 8, !tbaa !94, !alias.scope !561, !noalias !558
  %i.es = and <2 x i64> %wide.load, %broadcast.splat
  %i.et = and <2 x i64> %wide.load57, %broadcast.splat
  %i.eu = and <2 x i64> %wide.load58, %broadcast.splat56
  %i.ev = and <2 x i64> %wide.load59, %broadcast.splat56
  %i.ew = or disjoint <2 x i64> %i.eu, %i.es
  %i.ex = or disjoint <2 x i64> %i.ev, %i.et
  store <2 x i64> %i.ew, ptr %i.eq, align 8, !tbaa !94, !alias.scope !561, !noalias !558
  store <2 x i64> %i.ex, ptr %i.er, align 8, !tbaa !94, !alias.scope !561, !noalias !558
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ek
  br i1 %cmp.n, label %bn_select_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i31, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i31 ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ez = and i32 %i.ej, 1
  %lcmp.mod87.not = icmp eq i32 %i.ez, 0
  br i1 %lcmp.mod87.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.09.i.ph
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !94
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.09.i.ph ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !94
  %i.fe = and i64 %i.fb, %i.el
  %i.ff = and i64 %i.fd, %i.em
  %i.fg = or disjoint i64 %i.ff, %i.fe
  store i64 %i.fg, ptr %i.fc, align 8, !tbaa !94
  %i.fh = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.fh, %scalar.ph.prol ]
  %i.fi = add nsw i64 %i.ek, -1
  %i.fj = icmp eq i64 %.09.i.ph, %i.fi
  br i1 %i.fj, label %bn_select_words.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.fz, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.09.i
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !94
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.09.i ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !94
  %i.fo = and i64 %i.fl, %i.el
  %i.fp = and i64 %i.fn, %i.em
  %i.fq = or disjoint i64 %i.fp, %i.fo
  store i64 %i.fq, ptr %i.fm, align 8, !tbaa !94
  %i.fr = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !94
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fr ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !94
  %i.fw = and i64 %i.ft, %i.el
  %i.fx = and i64 %i.fv, %i.em
  %i.fy = or disjoint i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.fu, align 8, !tbaa !94
  %i.fz = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i32.1 = icmp eq i64 %i.fz, %i.ek
  br i1 %exitcond.not.i32.1, label %bn_select_words.exit, label %scalar.ph, !llvm.loop !564

bn_select_words.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bn_rshift_words.exit
  %i.ga = add i32 %.02438, 1                      ; 2 uses
  %i.gb = lshr i32 %i.av, %i.ga
  %.not27 = icmp eq i32 %i.gb, 0
  br i1 %.not27, label %bn_wexpand.exit.thread, label %.lr.ph, !llvm.loop !565

bn_wexpand.exit.thread:                           ; preds = %bn_select_words.exit, %bn_wexpand.exit, %bb.m, %bb.l, %bb.j, %BN_CTX_start.exit, %bb.g
  %.0 = phi i32 [ 0, %BN_CTX_start.exit ], [ 0, %bb.g ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bn_wexpand.exit ], [ 1, %bn_select_words.exit ]
  %i.gc = load i8, ptr %i.a, align 8, !tbaa !291
  %.not.i34 = icmp eq i8 %i.gc, 0
  br i1 %.not.i34, label %bb.u, label %BN_CTX_end.exit

bb.u:                                             ; preds = %bn_wexpand.exit.thread
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !293
  %i.gg = add i64 %i.gf, -1                       ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !293
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !290
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !292
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bn_wexpand.exit.thread, %bb.u
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL19maybe_rshift1_wordsPmmS_m(ptr nofree noundef captures(none) %0, i64 noundef range(i64 -1, 1) %1, ptr nofree noundef captures(none) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = add nsw i64 %3, -1                       ; 6 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.lr.ph.i8, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %3, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.c = shl nsw i64 %3, 3                        ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.d, i64 -8
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.c
  %bound0 = icmp ult ptr %2, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader38, label %vector.ph
end_hunk_5
begin_hunk_6_@bn_rand_range_words:bb.a
  %.04452.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04452.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !94 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04452.i.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !94 ; 3 uses
  %i.bz = icmp eq i64 %i.bw, %i.by
  %.neg.i.i.i.i.i.i = sext i1 %i.bz to i64
  %i.ca = xor i64 %i.by, %i.bw
  %i.cb = sub i64 %i.bw, %i.by
  %i.cc = xor i64 %i.cb, %i.bw
  %i.cd = or i64 %i.cc, %i.ca
  %i.ce = xor i64 %i.cd, %i.bw
  %.neg.i.i.i.i.i = ashr i64 %i.ce, 63
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156
  %i.cg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.ch = and i64 %i.cg, %.04353.i.i.i
  %i.ci = xor i64 %i.cg, -1
  %i.cj = and i64 %i.cf, %i.ci
  %i.ck = or disjoint i64 %i.ch, %i.cj            ; 2 uses
  %i.cl = add nuw i64 %.04452.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cl, %.02732.i
  br i1 %exitcond.not.i.i.i, label %bn_in_range_words.exit, label %.lr.ph.i.i.i, !llvm.loop !188

bn_in_range_words.exit:                           ; preds = %.lr.ph.i.i.i
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = lshr i32 %i.cm, 31
  %i.co = sub i64 %i.bq, %1
  %i.cp = xor i64 %i.co, %i.bq
  %i.cq = xor i64 %i.bq, %1
  %i.cr = or i64 %i.cp, %i.cq
  %i.cs = xor i64 %i.cr, %i.bq
  %.neg.i.i17.i.i = ashr i64 %i.cs, 63
  %i.ct = trunc nsw i64 %.neg.i.i17.i.i to i32
  %i.cu = xor i32 %i.ct, -1
  %spec.select = select i1 %.013.lcssa.i.i, i32 %i.cu, i32 -1
  %i.cv = and i32 %i.cn, %spec.select
  %i.cw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cv) #38, !srcloc !367
  %.not15 = icmp eq i32 %i.cw, 0
  br i1 %.not15, label %_ZL14OPENSSL_memsetPvim.exit.split, label %.loopexit, !llvm.loop !705

.loopexit:                                        ; preds = %bn_in_range_words.exit, %._crit_edge.loopexit.i.i.i.us, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread, %.split.us
  %.1 = phi i32 [ 0, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread ], [ 0, %.split.us ], [ 1, %._crit_edge.loopexit.i.i.i.us ], [ 1, %bn_in_range_words.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %3 = alloca %"struct.(anonymous namespace)::rand_thread_state", align 8 ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @CRYPTO_get_fork_generation() #36 ; 4 uses
  %i.h = tail call i32 @rand_fork_unsafe_buffering_enabled() #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.i = icmp ne i64 %i.g, 0
  %i.j = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @CRYPTO_sysrand(ptr noundef nonnull %i.a, i64 noundef 32) #36
  %i.l = load <16 x i8>, ptr %i.a, align 16, !tbaa !13
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre100 = load i8, ptr %.phi.trans.insert99, align 16, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi i8 [ 0, %bb.c ], [ %.pre100, %bb.d ]
  %i.n = phi <16 x i8> [ zeroinitializer, %bb.c ], [ %i.l, %bb.d ]
  %i.o = load <16 x i8>, ptr %2, align 1, !tbaa !13
  %i.p = xor <16 x i8> %i.n, %i.o
  store <16 x i8> %i.p, ptr %i.a, align 16, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = load <4 x i8>, ptr %i.s, align 1, !tbaa !13
  %i.w = load <4 x i8>, ptr %i.t, align 1
  %i.x = load <16 x i8>, ptr %i.q, align 1, !tbaa !13
  %i.y = load <8 x i8>, ptr %i.u, align 8, !tbaa !13
  %i.z = shufflevector <4 x i8> %i.v, <4 x i8> %i.w, <16 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = insertelement <16 x i8> %i.z, i8 %i.m, i64 0
  %i.ab = shufflevector <8 x i8> %i.y, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ad = xor <16 x i8> %i.ac, %i.x
  store <16 x i8> %i.ad, ptr %i.r, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ae = call ptr @CRYPTO_get_thread_local(i32 noundef 1) #36 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ag = call ptr @OPENSSL_zalloc(i64 noundef 312) #36 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = call i32 @CRYPTO_set_thread_local(i32 noundef 1, ptr noundef nonnull %i.ag, ptr noundef nonnull @_ZL22rand_thread_state_freePv) #36
  %.not56 = icmp eq i32 %i.ai, 0
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.046 = phi ptr [ %3, %bb.h ], [ %i.ag, %bb.g ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 300
  store i32 0, ptr %i.aj, align 4, !tbaa !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.b, i64 noundef 48) #36
  %i.ak = call i32 @CTR_DRBG_init(ptr noundef nonnull %.046, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 0)
  %.not57 = icmp eq i32 %i.ak, 0
  br i1 %.not57, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @abort() #37
  unreachable

.thread:                                          ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 296
  store i32 0, ptr %i.al, align 8, !tbaa !711
  %i.am = getelementptr inbounds nuw i8, ptr %.046, i64 288
  store i64 %i.g, ptr %i.am, align 8, !tbaa !712
  %i.an = getelementptr inbounds nuw i8, ptr %.046, i64 304
  store i32 %i.h, ptr %i.an, align 8, !tbaa !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.ao = getelementptr inbounds nuw i8, ptr %.046, i64 296
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  %.pre102 = load i32, ptr %.phi.trans.insert101, align 8, !tbaa !711
  %i.ap = icmp ugt i32 %.pre102, 4095
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 296 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ar = phi ptr [ %i.ao, %.thread ], [ %i.aq, %bb.k ] ; 3 uses
  %.1109 = phi ptr [ %.046, %.thread ], [ %i.ae, %bb.k ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1109, i64 288
  %i.at = load i64, ptr %i.as, align 8, !tbaa !712
  %.not58 = icmp eq i64 %i.at, %i.g
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.1109, i64 304
  %i.av = load i32, ptr %i.au, align 8, !tbaa !713
  %.not59 = icmp eq i32 %i.av, %i.h
  br i1 %.not59, label %.peel.begin, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.aw = phi ptr [ %i.ar, %bb.m ], [ %i.ar, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %.1110 = phi ptr [ %.1109, %bb.m ], [ %.1109, %bb.l ], [ %i.ae, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.d, i64 noundef 48) #36
  %i.ax = call i32 @CTR_DRBG_reseed(ptr noundef nonnull %.1110, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 0)
  %.not60 = icmp eq i32 %i.ax, 0
  br i1 %.not60, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.aw, align 8, !tbaa !711
  %i.ay = getelementptr inbounds nuw i8, ptr %.1110, i64 288
  store i64 %i.g, ptr %i.ay, align 8, !tbaa !712
  %i.az = getelementptr inbounds nuw i8, ptr %.1110, i64 304
  store i32 %i.h, ptr %i.az, align 8, !tbaa !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.m, %bb.p
  %i.ba = phi ptr [ %i.ar, %bb.m ], [ %i.aw, %bb.p ] ; 4 uses
  %.1108 = phi ptr [ %.1109, %bb.m ], [ %.1110, %bb.p ] ; 4 uses
  %spec.store.select.peel = call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.bb = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %0, i64 noundef %spec.store.select.peel, ptr noundef nonnull %i.a, i64 noundef 32)
  %.not63.peel = icmp eq i32 %i.bb, 0
  br i1 %.not63.peel, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.peel.begin
  %i.bc = sub nuw i64 %1, %spec.store.select.peel ; 2 uses
  %i.bd = load i32, ptr %i.ba, align 8, !tbaa !711
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !711
  %.not61.peel = icmp eq i64 %i.bc, 0
  br i1 %.not61.peel, label %.loopexit69, label %.peel.next

.peel.next:                                       ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %spec.store.select.peel
  br label %bb.r

bb.r:                                             ; preds = %.peel.next, %bb.s
  %.04966 = phi i64 [ %i.bc, %.peel.next ], [ %i.bi, %bb.s ] ; 2 uses
  %.05065 = phi ptr [ %i.bf, %.peel.next ], [ %i.bh, %bb.s ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.04966, i64 65536) ; 3 uses
  %i.bg = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %.05065, i64 noundef %spec.store.select, ptr noundef nonnull %i.a, i64 noundef 0)
  %.not63 = icmp eq i32 %i.bg, 0
  br i1 %.not63, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.peel.begin
  call void @abort() #37
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %.05065, i64 %spec.store.select
  %i.bi = sub nuw i64 %.04966, %spec.store.select ; 2 uses
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !711
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !711
  %.not61 = icmp eq i64 %i.bi, 0
  br i1 %.not61, label %.loopexit69, label %bb.r, !llvm.loop !714

.loopexit69:                                      ; preds = %bb.s, %bb.q
  %i.bl = icmp eq ptr %.1108, %3
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit69
  call void @OPENSSL_cleanse(ptr noundef nonnull %.1108, i64 noundef 288) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_pseudo_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 2) i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef readonly %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_rshift_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 63                           ; 3 uses
  %i.b = lshr i32 %2, 6                           ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 16 uses
  %.not = icmp ugt i64 %3, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.e, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 0
  br i1 %i.f, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.g = add i64 %3, -1                           ; 4 uses
  %i.h = icmp ugt i64 %i.g, %i.c
  %i.i = zext nneg i32 %i.a to i64                ; 5 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = sub nuw nsw i32 64, %i.a
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %i.l = xor i64 %i.c, -1
  %i.m = add i64 %3, %i.l                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = add i64 %i.n, -8
  %i.p = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %scevgep = getelementptr i8, ptr %0, i64 %i.q
  %scevgep44 = getelementptr i8, ptr %1, i64 %i.p
  %scevgep45 = getelementptr i8, ptr %1, i64 %i.n
  %bound0 = icmp ult ptr %0, %scevgep45
  %bound1 = icmp ult ptr %scevgep44, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, -4                       ; 3 uses
  %i.r = add i64 %n.vec, %i.c
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = add nuw i64 %index, %i.c                 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !94, !alias.scope !715
  %wide.load48 = load <2 x i64>, ptr %i.u, align 8, !tbaa !94, !alias.scope !715
  %i.v = lshr <2 x i64> %wide.load, %broadcast.splat47
  %i.w = lshr <2 x i64> %wide.load48, %broadcast.splat47
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %wide.load49 = load <2 x i64>, ptr %i.y, align 8, !tbaa !94, !alias.scope !715
  %wide.load50 = load <2 x i64>, ptr %i.z, align 8, !tbaa !94, !alias.scope !715
  %i.aa = shl <2 x i64> %wide.load49, %broadcast.splat
  %i.ab = shl <2 x i64> %wide.load50, %broadcast.splat
  %i.ac = or <2 x i64> %i.aa, %i.v
  %i.ad = or <2 x i64> %i.ab, %i.w
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x i64> %i.ac, ptr %i.ae, align 8, !tbaa !94, !alias.scope !718, !noalias !715
  store <2 x i64> %i.ad, ptr %i.af, align 8, !tbaa !94, !alias.scope !718, !noalias !715
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.039.ph = phi i64 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph ], [ %i.r, %middle.block ] ; 6 uses
  %i.ah = add i64 %3, -2
  %i.ai = sub i64 %.039.ph, %3
  %i.aj = and i64 %i.ai, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039.ph
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.am = lshr i64 %i.al, %i.i
  %i.an = add nuw i64 %.039.ph, 1                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !94
  %i.aq = shl i64 %i.ap, %i.k
  %i.ar = or i64 %i.aq, %i.am
  %i.as = sub nuw i64 %.039.ph, %i.c
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !94
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.039.unr = phi i64 [ %.039.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.au = icmp eq i64 %i.ah, %.039.ph
  br i1 %i.au, label %._crit_edge, label %scalar.ph

bb.e:                                             ; preds = %bb.d
  %i.av = sub nuw i64 %3, %i.c
  %i.aw = shl i64 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %i.ay, i64 %i.aw, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !94
  %i.bb = lshr i64 %i.ba, %i.i
  %i.bc = sub nuw i64 %i.g, %i.c
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !94
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.039 = phi i64 [ %i.br, %scalar.ph ], [ %.039.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !94
  %i.bg = lshr i64 %i.bf, %i.i
  %i.bh = add nuw i64 %.039, 1                    ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !94
  %i.bk = shl i64 %i.bj, %i.k
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = sub nuw i64 %.039, %i.c
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bm
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !94
  %i.bq = lshr i64 %i.bp, %i.i
  %i.br = add nuw i64 %.039, 2                    ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !94
  %i.bu = shl i64 %i.bt, %i.k
  %i.bv = or i64 %i.bu, %i.bq
  %i.bw = sub nuw i64 %i.bh, %i.c
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !94
  %exitcond.not.1 = icmp eq i64 %i.br, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !721

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.f, %bb.e, %._crit_edge
  %i.by = icmp eq i32 %i.b, 0
  br i1 %i.by, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.g

bb.g:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit
  %i.bz = shl nuw nsw i64 %i.c, 3
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.cb = sub nsw i64 0, %i.c
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cc, i8 0, i64 %i.bz, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.g, %_ZL15OPENSSL_memmovePvPKvm.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_rshift1_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 6 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 7
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl i64 %2, 3                            ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.d, i64 -8
  %scevgep17 = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %scevgep17
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !94, !alias.scope !722
  %wide.load18 = load <2 x i64>, ptr %i.f, align 8, !tbaa !94, !alias.scope !722
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %wide.load19 = load <2 x i64>, ptr %i.h, align 8, !tbaa !94, !alias.scope !722
  %wide.load20 = load <2 x i64>, ptr %i.i, align 8, !tbaa !94, !alias.scope !722
  %i.j = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load19, <2 x i64> %wide.load, <2 x i64> splat (i64 63))
  %i.k = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load20, <2 x i64> %wide.load18, <2 x i64> splat (i64 63))
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 8, !tbaa !94, !alias.scope !725, !noalias !722
  store <2 x i64> %i.k, ptr %i.m, align 8, !tbaa !94, !alias.scope !725, !noalias !722
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.o = add i64 %2, 3
  %i.p = add i64 %2, -2
  %i.q = sub i64 %i.p, %.015.ph
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader21, %.lr.ph.prol
  %.015.prol = phi i64 [ %i.t, %.lr.ph.prol ], [ %.015.ph, %.lr.ph.preheader21 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader21 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.prol
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94
  %i.t = add nuw i64 %.015.prol, 1                ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.s, i64 63)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.prol
  store i64 %i.w, ptr %i.x, align 8, !tbaa !94
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !728

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader21
  %.015.unr = phi i64 [ %.015.ph, %.lr.ph.preheader21 ], [ %i.t, %.lr.ph.prol ]
  %i.y = icmp ult i64 %i.q, 3
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !94
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi i64 [ %i.ba, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !94
  %i.af = add nuw i64 %.015, 1                    ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !94
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ae, i64 63)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !94
  %i.am = add nuw i64 %.015, 2                    ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !94
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.al, i64 63)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.at = add nuw i64 %.015, 3                    ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !94
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.as, i64 63)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !94
  %i.ba = add nuw i64 %.015, 4                    ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !94
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.az, i64 63)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !94
  %exitcond.not.3 = icmp eq i64 %i.ba, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !729

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @BN_clear_bit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bn_set_minimal_width.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 6                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %.lr.ph.i.i, label %bn_set_minimal_width.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = and i32 %1, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f
  %i.h = xor i64 %i.g, -1
  %i.i = load ptr, ptr %0, align 8, !tbaa !185    ; 2 uses
  %i.j = zext nneg i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
end_hunk_6
begin_hunk_7_@EVP_AEAD_CTX_new:bb.a
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 124, ptr noundef nonnull @.str.14, i32 noundef 69) #36
  br label %EVP_AEAD_CTX_free.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 8, !tbaa !756
  %i.e = zext i8 %i.d to i64
  %.not.i.i = icmp eq i64 %2, %i.e
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.14, i32 noundef 82) #36
  br label %EVP_AEAD_CTX_free.exit

bb.f:                                             ; preds = %bb.d
  store ptr %0, ptr %i.a, align 8, !tbaa !762
  %i.f = tail call noundef i32 %i.c(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2, i64 noundef %3) #36, !inline_history !765
  %.not24.i.i = icmp eq i32 %i.f, 0
  br i1 %.not24.i.i, label %EVP_AEAD_CTX_free.exit, label %EVP_AEAD_CTX_init.exit

EVP_AEAD_CTX_free.exit:                           ; preds = %bb.f, %bb.e, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !762
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #36
  br label %EVP_AEAD_CTX_init.exit

EVP_AEAD_CTX_init.exit:                           ; preds = %bb.f, %bb.a, %EVP_AEAD_CTX_free.exit
  %.0 = phi ptr [ null, %bb.a ], [ null, %EVP_AEAD_CTX_free.exit ], [ %i.a, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_AEAD_CTX_init(ptr noundef initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !761  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 124, ptr noundef nonnull @.str.14, i32 noundef 69) #36
  br label %EVP_AEAD_CTX_init_with_direction.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !756
  %i.d = zext i8 %i.c to i64
  %.not.i = icmp eq i64 %3, %i.d
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.14, i32 noundef 82) #36
  br label %EVP_AEAD_CTX_init_with_direction.exit.sink.split

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !762
  %i.e = tail call noundef i32 %i.b(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i64 noundef %4) #36, !inline_history !766 ; 2 uses
  %.not24.i = icmp eq i32 %i.e, 0
  br i1 %.not24.i, label %EVP_AEAD_CTX_init_with_direction.exit.sink.split, label %EVP_AEAD_CTX_init_with_direction.exit

EVP_AEAD_CTX_init_with_direction.exit.sink.split: ; preds = %bb.d, %bb.e, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !762
  br label %EVP_AEAD_CTX_init_with_direction.exit

EVP_AEAD_CTX_init_with_direction.exit:            ; preds = %EVP_AEAD_CTX_init_with_direction.exit.sink.split, %bb.e
  %.0 = phi i32 [ %i.e, %bb.e ], [ 0, %EVP_AEAD_CTX_init_with_direction.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @EVP_AEAD_CTX_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %EVP_AEAD_CTX_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !767
  tail call void %i.e(ptr noundef nonnull %0) #36, !inline_history !768
  store ptr null, ptr %0, align 8, !tbaa !762
  br label %EVP_AEAD_CTX_cleanup.exit

EVP_AEAD_CTX_cleanup.exit:                        ; preds = %bb.b, %bb.c
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %EVP_AEAD_CTX_cleanup.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @EVP_AEAD_CTX_cleanup(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !767
  tail call void %i.d(ptr noundef nonnull %0) #36
  store ptr null, ptr %0, align 8, !tbaa !762
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_AEAD_CTX_init_with_direction(ptr noundef initializes((0, 8)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !756
  %i.b = zext i8 %i.a to i64
  %.not = icmp eq i64 %3, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.14, i32 noundef 82) #36
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !762
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !761  ; 2 uses
  %.not23 = icmp eq ptr %i.d, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i64 noundef %4) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !769
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ %i.h, %bb.e ]  ; 2 uses
  %.not24 = icmp eq i32 %.0, 0
  br i1 %.not24, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !762
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.020 = phi i32 [ %.0, %bb.f ], [ 0, %.sink.split ]
  ret i32 %.020
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_AEAD_CTX_seal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 2, !tbaa !759
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %7, -1
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.14, i32 noundef 127) #36
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %3, %7
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.14, i32 noundef 132) #36
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %6 to i64                   ; 2 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.k = add i64 %7, %i.i
  %i.l = icmp ugt i64 %i.k, %i.j
  %i.m = add i64 %3, %i.j
  %i.n = icmp ugt i64 %i.m, %i.i
  %narrow.i.not.i.not32 = and i1 %i.n, %i.l
  %i.o = icmp ne ptr %6, %1
  %narrow.i.not = and i1 %i.o, %narrow.i.not.i.not32
  br i1 %narrow.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 137) #36
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !770
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %i.s = sub nuw i64 %3, %7
  %i.t = call noundef i32 %i.q(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.r, ptr noundef nonnull %i.a, i64 noundef %i.s, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef null, i64 noundef 0, ptr noundef %8, i64 noundef %9) #36
  %.not29 = icmp eq i32 %i.t, 0
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !94
  %i.v = add i64 %i.u, %7
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %3, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.j, %bb.i, %bb.h
  %storemerge = phi i64 [ %i.v, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !94
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_AEAD_CTX_seal_scatter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i64 noundef %12) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %7 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = add i64 %8, %i.a                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.b
  %i.e = add i64 %8, %i.b                         ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.a
  %narrow.i.not.i.not42 = and i1 %i.d, %i.f
  %i.g = icmp ne ptr %7, %1
  %narrow.i.not = and i1 %i.g, %narrow.i.not.i.not42
  br i1 %narrow.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.i = icmp ule i64 %i.e, %i.h
  %i.j = add i64 %4, %i.h                         ; 2 uses
  %i.k = icmp ule i64 %i.j, %i.b
  %narrow.i37.not = or i1 %i.k, %i.i
  br i1 %narrow.i37.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ule i64 %i.c, %i.h
  %i.m = icmp ule i64 %i.j, %i.a
  %narrow.i38.not = or i1 %i.m, %i.l
  br i1 %narrow.i38.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 168) #36
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !771
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ne i64 %10, 0
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str.14, i32 noundef 173) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !770
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11, i64 noundef %12) #36
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.v = icmp eq i64 %8, 0
  br i1 %i.v, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %8, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.h, %bb.i
  %i.w = icmp eq i64 %4, 0
  br i1 %i.w, label %_ZL14OPENSSL_memsetPvim.exit39, label %bb.j

bb.j:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %4, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit39

_ZL14OPENSSL_memsetPvim.exit39:                   ; preds = %_ZL14OPENSSL_memsetPvim.exit, %bb.j
  store i64 0, ptr %3, align 8, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZL14OPENSSL_memsetPvim.exit39
  %.0 = phi i32 [ 0, %_ZL14OPENSSL_memsetPvim.exit39 ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_AEAD_CTX_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %6 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = add i64 %7, %i.a
  %i.d = icmp ugt i64 %i.c, %i.b
  %i.e = add i64 %3, %i.b
  %i.f = icmp ugt i64 %i.e, %i.a
  %narrow.i.not.i.not51 = and i1 %i.f, %i.d
  %i.g = icmp ne ptr %6, %1                       ; 2 uses
  %narrow.i.not = and i1 %i.g, %narrow.i.not.i.not51
  br i1 %narrow.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 198) #36
  br label %EVP_AEAD_CTX_open_gather.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !762    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !772  ; 2 uses
  %.not42 = icmp eq ptr %i.j, null
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) #36
  %.not44 = icmp eq i32 %i.k, 0
  br i1 %.not44, label %EVP_AEAD_CTX_open_gather.exit.thread, label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = load i8, ptr %i.l, align 8, !tbaa !773
  %i.n = zext i8 %i.m to i64                      ; 4 uses
  %i.o = icmp ult i64 %7, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.14, i32 noundef 215) #36
  br label %EVP_AEAD_CTX_open_gather.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = sub nuw i64 %7, %i.n                     ; 7 uses
  %i.q = icmp ult i64 %3, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.14, i32 noundef 221) #36
  br label %EVP_AEAD_CTX_open_gather.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 %i.p
  %i.s = add i64 %i.p, %i.a
  %i.t = icmp ugt i64 %i.s, %i.b
  %i.u = add i64 %i.p, %i.b
  %i.v = icmp ugt i64 %i.u, %i.a
  %narrow.i.not.i.not23.i = and i1 %i.t, %i.v
  %narrow.i.not.i45 = and i1 %i.g, %narrow.i.not.i.not23.i
  br i1 %narrow.i.not.i45, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 245) #36
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !774  ; 2 uses
  %.not19.i = icmp eq ptr %i.x, null
  br i1 %.not19.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.14, i32 noundef 250) #36
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %i.p, ptr noundef %i.r, i64 noundef %i.n, ptr noundef %8, i64 noundef %9) #36, !inline_history !775
  %.not20.i = icmp eq i32 %i.y, 0
  br i1 %.not20.i, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.z = icmp eq i64 %7, %i.n
  br i1 %i.z, label %EVP_AEAD_CTX_open_gather.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.p, i1 false)
  br label %EVP_AEAD_CTX_open_gather.exit.thread

EVP_AEAD_CTX_open_gather.exit.thread:             ; preds = %bb.o, %bb.n, %bb.d, %bb.h, %bb.f, %bb.b
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %EVP_AEAD_CTX_open_gather.exit.thread
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %3, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %EVP_AEAD_CTX_open_gather.exit.thread, %bb.m
  %.sink = phi i64 [ %i.p, %bb.m ], [ 0, %EVP_AEAD_CTX_open_gather.exit.thread ], [ 0, %bb.p ]
  %.0.ph = phi i32 [ 1, %bb.m ], [ 0, %EVP_AEAD_CTX_open_gather.exit.thread ], [ 0, %bb.p ]
  store i64 %.sink, ptr %2, align 8, !tbaa !94
end_hunk_7
begin_hunk_8_@EVP_DecryptUpdate:bb.a
  %.62 = zext i1 %i.p to i32
  store i32 %., ptr %2, align 4, !tbaa !18
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.q = icmp slt i32 %4, 1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !18
  %i.r = icmp eq i32 %4, 0
  %i.s = zext i1 %i.r to i32
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !792
  %i.v = and i32 %i.u, 2048
  %.not56 = icmp eq i32 %i.v, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !799
  %.not57 = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not57, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = zext i32 %i.e to i64                     ; 2 uses
  %i.aa = icmp eq i32 %i.e, 0
  br i1 %i.aa, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.l, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  br label %bb.n

bb.n:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.k
  %.049 = phi ptr [ %i.ac, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %1, %bb.k ] ; 2 uses
  %i.ad = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %.049, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !798
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %_ZL14OPENSSL_memcpyPvPKvm.exit63, label %bb.q

_ZL14OPENSSL_memcpyPvPKvm.exit63:                 ; preds = %bb.p
  %i.ag = load i32, ptr %2, align 4, !tbaa !18
  %i.ah = sub i32 %i.ag, %i.e
  store i32 %i.ah, ptr %2, align 4, !tbaa !18
  store i32 1, ptr %i.x, align 4, !tbaa !799
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load i32, ptr %2, align 4, !tbaa !18
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %.049, i64 %i.ak
  %i.am = zext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr readonly align 1 %i.al, i64 %i.am, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.x, align 4, !tbaa !799
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZL14OPENSSL_memcpyPvPKvm.exit63
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load i32, ptr %2, align 4, !tbaa !18
  %i.ao = add i32 %i.an, %i.e
  store i32 %i.ao, ptr %2, align 4, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.r, %bb.s, %bb.n, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.62, %bb.f ], [ %i.s, %bb.h ], [ %i.w, %bb.j ], [ 0, %bb.n ], [ 1, %bb.s ], [ 1, %bb.r ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_DecryptFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  store i32 0, ptr %2, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !785
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.15, i32 noundef 428) #36
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !778    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !787
  %i.h = and i32 %i.g, 1024
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !801
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0) #36 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.k, ptr %2, align 4, !tbaa !18
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !800  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !792
  %i.q = and i32 %i.p, 2048
  %.not47 = icmp eq i32 %i.q, 0
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !798
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.15, i32 noundef 445) #36
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %i.t = icmp ugt i32 %i.n, 1
  br i1 %i.t, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !798
  %.not48 = icmp eq i32 %i.v, 0
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !799
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str.15, i32 noundef 454) #36
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.z = add i32 %i.n, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13  ; 3 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = icmp eq i8 %i.ac, 0
  %i.af = icmp slt i32 %i.n, %i.ad
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.n, label %.preheader

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 463) #36
  br label %bb.r

bb.o:                                             ; preds = %.preheader
  %i.ag = add nuw nsw i32 %.04052, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not, label %bb.q, label %.preheader, !llvm.loop !802

.preheader:                                       ; preds = %bb.m, %bb.o
  %.053 = phi i32 [ %i.ah, %bb.o ], [ %i.n, %bb.m ]
  %.04052 = phi i32 [ %i.ag, %bb.o ], [ 0, %bb.m ]
  %i.ah = add i32 %.053, -1                       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %.not50 = icmp eq i8 %i.ak, %i.ac
  br i1 %.not50, label %bb.o, label %bb.p

bb.p:                                             ; preds = %.preheader
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 469) #36
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i32 %i.n, %i.ad             ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.q
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.b, %i.a
  %i.ao = add i64 %i.an, -113
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check62 = icmp ult i32 %i.al, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !13
  %wide.load63 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !tbaa !13
  store <16 x i8> %wide.load63, ptr %i.at, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %index65
  %wide.load66 = load <4 x i8>, ptr %i.av, align 1, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %index65
  store <4 x i8> %wide.load66, ptr %i.aw, align 1, !tbaa !13
  %index.next67 = add nuw i64 %index65, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next67, %n.vec64
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !804

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %n.vec64, %wide.trip.count
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !805

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond56.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !806

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  store i32 %i.al, ptr %2, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.g, %bb.e, %._crit_edge, %bb.d, %bb.p, %bb.n, %bb.l, %bb.h, %bb.b
  %.041 = phi i32 [ 0, %bb.b ], [ 0, %bb.p ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.i ]
  ret i32 %.041
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_Cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !778
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !801
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #36
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !789
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_DecryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !789
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @EVP_CIPHER_CTX_cipher(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !778
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @EVP_CIPHER_CTX_nid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !778
  %i.b = load i32, ptr %i.a, align 8, !tbaa !807
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @EVP_CIPHER_CTX_encrypting(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !789
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @EVP_CIPHER_CTX_block_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
end_hunk_8
begin_hunk_9_@_ZL35EVP_aead_aes_256_gcm_randnonce_initv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_128_gcm_tls12() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL31EVP_aead_aes_128_gcm_tls12_once, ptr noundef nonnull @_ZL31EVP_aead_aes_128_gcm_tls12_initv) #36
  ret ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL31EVP_aead_aes_128_gcm_tls12_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 16), i8 0, i64 56, i1 false)
  store <4 x i8> <i8 16, i8 12, i8 16, i8 16>, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 4), align 4, !tbaa !771
  store ptr @_ZL23aead_aes_gcm_tls12_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_gcm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL31aead_aes_gcm_tls12_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_gcm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls12_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_256_gcm_tls12() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL31EVP_aead_aes_256_gcm_tls12_once, ptr noundef nonnull @_ZL31EVP_aead_aes_256_gcm_tls12_initv) #36
  ret ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL31EVP_aead_aes_256_gcm_tls12_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 16), i8 0, i64 56, i1 false)
  store <4 x i8> <i8 32, i8 12, i8 16, i8 16>, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 4), align 4, !tbaa !771
  store ptr @_ZL23aead_aes_gcm_tls12_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_gcm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL31aead_aes_gcm_tls12_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_gcm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls12_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_128_gcm_tls13() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL31EVP_aead_aes_128_gcm_tls13_once, ptr noundef nonnull @_ZL31EVP_aead_aes_128_gcm_tls13_initv) #36
  ret ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL31EVP_aead_aes_128_gcm_tls13_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 16), i8 0, i64 56, i1 false)
  store <4 x i8> <i8 16, i8 12, i8 16, i8 16>, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 4), align 4, !tbaa !771
  store ptr @_ZL23aead_aes_gcm_tls13_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_gcm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL31aead_aes_gcm_tls13_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_gcm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_128_gcm_tls13_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_256_gcm_tls13() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL31EVP_aead_aes_256_gcm_tls13_once, ptr noundef nonnull @_ZL31EVP_aead_aes_256_gcm_tls13_initv) #36
  ret ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL31EVP_aead_aes_256_gcm_tls13_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 16), i8 0, i64 56, i1 false)
  store <4 x i8> <i8 32, i8 12, i8 16, i8 16>, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 4), align 4, !tbaa !771
  store ptr @_ZL23aead_aes_gcm_tls13_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_gcm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL31aead_aes_gcm_tls13_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_gcm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL34EVP_aead_aes_256_gcm_tls13_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @EVP_has_aes_hardware() local_unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_128_ccm_bluetooth() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL35EVP_aead_aes_128_ccm_bluetooth_once, ptr noundef nonnull @_ZL35EVP_aead_aes_128_ccm_bluetooth_initv) #36
  ret ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL35EVP_aead_aes_128_ccm_bluetooth_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, i8 0, i64 72, i1 false)
  store <4 x i8> <i8 16, i8 13, i8 4, i8 4>, ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, align 8, !tbaa !13
  store ptr @_ZL27aead_aes_ccm_bluetooth_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_ccm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL25aead_aes_ccm_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_ccm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL38EVP_aead_aes_128_ccm_bluetooth_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_128_ccm_bluetooth_8() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL37EVP_aead_aes_128_ccm_bluetooth_8_once, ptr noundef nonnull @_ZL37EVP_aead_aes_128_ccm_bluetooth_8_initv) #36
  ret ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL37EVP_aead_aes_128_ccm_bluetooth_8_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, i8 0, i64 72, i1 false)
  store <4 x i8> <i8 16, i8 13, i8 8, i8 8>, ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, align 8, !tbaa !13
  store ptr @_ZL29aead_aes_ccm_bluetooth_8_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_ccm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL25aead_aes_ccm_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_ccm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL40EVP_aead_aes_128_ccm_bluetooth_8_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @EVP_aead_aes_128_ccm_matter() local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL32EVP_aead_aes_128_ccm_matter_once, ptr noundef nonnull @_ZL32EVP_aead_aes_128_ccm_matter_initv) #36
  ret ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL32EVP_aead_aes_128_ccm_matter_initv() #16 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) @_ZL35EVP_aead_aes_128_ccm_matter_storage, i8 0, i64 72, i1 false)
  store <4 x i8> <i8 16, i8 13, i8 16, i8 16>, ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage, align 8, !tbaa !13
  store ptr @_ZL24aead_aes_ccm_matter_initP15evp_aead_ctx_stPKhmm, ptr getelementptr inbounds nuw (i8, ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage, i64 8), align 8, !tbaa !761
  store ptr @_ZL20aead_aes_ccm_cleanupP15evp_aead_ctx_st, ptr getelementptr inbounds nuw (i8, ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage, i64 24), align 8, !tbaa !767
  store ptr @_ZL25aead_aes_ccm_seal_scatterPK15evp_aead_ctx_stPhS2_PmmPKhmS5_mS5_mS5_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage, i64 40), align 8, !tbaa !770
  store ptr @_ZL24aead_aes_ccm_open_gatherPK15evp_aead_ctx_stPhPKhmS4_mS4_mS4_m, ptr getelementptr inbounds nuw (i8, ptr @_ZL35EVP_aead_aes_128_ccm_matter_storage, i64 48), align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @AES_CMAC(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.cmac_ctx_st, align 8        ; 22 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %.sroa.gep15 = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  switch i64 %2, label %bb.q [
    i64 16, label %bb.b
    i64 32, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL20EVP_aes_128_cbc_once, ptr noundef nonnull @_ZL20EVP_aes_128_cbc_initv) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL20EVP_aes_256_cbc_once, ptr noundef nonnull @_ZL20EVP_aes_256_cbc_initv) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ @_ZL23EVP_aes_128_cbc_storage, %bb.b ], [ @_ZL23EVP_aes_256_cbc_storage, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  %i.b = call i32 @CMAC_Init(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %.0, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr %5, align 8, !tbaa !778    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !800
  %i.f = zext i32 %i.e to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !809  ; 3 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %spec.select.i = call i64 @llvm.umin.i64(i64 %4, i64 %i.j) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.l = icmp eq i64 %spec.select.i, 0
  br i1 %i.l, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %3, i64 %spec.select.i, i1 false)
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !809
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.g, %bb.f
  %i.n = phi i32 [ %i.h, %bb.f ], [ %.pre.i, %bb.g ]
  %i.o = sub nuw i64 %4, %spec.select.i           ; 2 uses
  %i.p = trunc i64 %spec.select.i to i32
  %i.q = add i32 %i.n, %i.p                       ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !809
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !801
  %i.v = call noundef i32 %i.u(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f) #36, !inline_history !811
  %.not48.i = icmp eq i32 %i.v, 0
  br i1 %.not48.i, label %CMAC_Update.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.041.i = phi ptr [ %3, %bb.e ], [ %i.s, %bb.h ] ; 2 uses
  %.039.i = phi i64 [ %4, %bb.e ], [ %i.o, %bb.h ] ; 3 uses
  %i.w = icmp ugt i64 %.039.i, %i.f
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.14056.i = phi i64 [ %i.ac, %bb.j ], [ %.039.i, %bb.i ]
  %.14255.i = phi ptr [ %i.ab, %bb.j ], [ %.041.i, %bb.i ] ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !778
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !801
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef %.14255.i, i64 noundef %i.f) #36, !inline_history !811
  %.not49.i = icmp eq i32 %i.aa, 0
  br i1 %.not49.i, label %CMAC_Update.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.14255.i, i64 %i.f ; 2 uses
  %i.ac = sub nuw i64 %.14056.i, %i.f             ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, %i.f
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !812

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  %.142.lcssa.i = phi ptr [ %.041.i, %bb.i ], [ %i.ab, %bb.j ]
  %.140.lcssa.i = phi i64 [ %.039.i, %bb.i ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ae = icmp eq i64 %.140.lcssa.i, 0
  br i1 %i.ae, label %_ZL14OPENSSL_memcpyPvPKvm.exit50.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr readonly align 1 %.142.lcssa.i, i64 %.140.lcssa.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit50.i

_ZL14OPENSSL_memcpyPvPKvm.exit50.i:               ; preds = %bb.k, %._crit_edge.i
  %i.ag = trunc nuw i64 %.140.lcssa.i to i32      ; 2 uses
  store i32 %i.ag, ptr %i.g, align 8, !tbaa !809
  %.pre = load ptr, ptr %5, align 8, !tbaa !778
  br label %bb.l

CMAC_Update.exit.thread:                          ; preds = %.lr.ph.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.thread19

bb.l:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit50.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.ah = phi i32 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit50.i ], [ %i.q, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %_ZL14OPENSSL_memcpyPvPKvm.exit50.i ], [ %i.c, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !800 ; 6 uses
  %i.al = zext i32 %i.ak to i64                   ; 8 uses
  %i.am = icmp eq ptr %0, null
  br i1 %i.am, label %.thread19.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i11 = icmp eq i32 %i.ah, %i.ak
  br i1 %.not.i11, label %_ZL14OPENSSL_memsetPvim.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 -128, ptr %i.ap, align 1, !tbaa !13
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !809 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  %i.as = icmp eq i32 %i.ak, %i.ar
  br i1 %i.as, label %_ZL14OPENSSL_memsetPvim.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = zext i32 %i.ar to i64
  %i.au = sub nsw i64 %i.al, %i.at
  %i.av = zext i32 %i.aq to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.au, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit.i

_ZL14OPENSSL_memsetPvim.exit.i:                   ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.phi = phi ptr [ %.sroa.gep, %bb.m ], [ %.sroa.gep15, %bb.n ], [ %.sroa.gep15, %bb.o ] ; 3 uses
  %.not40.i = icmp eq i32 %i.ak, 0
  br i1 %.not40.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i32 %i.ak, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.al, 28
  %n.vec = and i64 %i.al, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 8, !tbaa !13
  %wide.load37 = load <16 x i8>, ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load38 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !13
  %wide.load39 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !13
  %i.be = xor <16 x i8> %wide.load38, %wide.load
  %i.bf = xor <16 x i8> %wide.load39, %wide.load37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <16 x i8> %i.be, ptr %i.bg, align 1, !tbaa !13
  store <16 x i8> %i.bf, ptr %i.bh, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !813

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.al, 4294967292            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.bj, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 %index41
  %wide.load43 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !13
  %i.bl = xor <4 x i8> %wide.load43, %wide.load42
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %index41
  store <4 x i8> %i.bl, ptr %i.bm, align 1, !tbaa !13
  %index.next44 = add nuw i64 %index41, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !814

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %n.vec40, %i.al
  br i1 %cmp.n45, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.phi, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.al
  br i1 %exitcond.not.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !815

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZL14OPENSSL_memsetPvim.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !801
  %i.bw = call noundef i32 %i.bv(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %0, i64 noundef %i.al) #36, !inline_history !816
  %i.bx = icmp ne i32 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  br label %.thread19

.thread19:                                        ; preds = %bb.d, %CMAC_Update.exit.thread, %.loopexit
  %.ph = phi i32 [ 0, %bb.d ], [ 0, %CMAC_Update.exit.thread ], [ %i.by, %.loopexit ] ; 2 uses
  %.pr = load ptr, ptr %5, align 8, !tbaa !778    ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit, label %.thread19.thread

.thread19.thread:                                 ; preds = %bb.l, %.thread19
  %i.bz = phi i32 [ %.ph, %.thread19 ], [ 1, %bb.l ] ; 2 uses
  %i.ca = phi ptr [ %.pr, %.thread19 ], [ %i.ai, %bb.l ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !781 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.cc, null
  br i1 %.not7.i.i, label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit, label %bb.p

bb.p:                                             ; preds = %.thread19.thread
  call void %i.cc(ptr noundef nonnull %5) #36, !inline_history !817
  br label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit

_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit:         ; preds = %.thread19, %.thread19.thread, %bb.p
  %i.cd = phi i32 [ %.ph, %.thread19 ], [ %i.bz, %.thread19.thread ], [ %i.bz, %bb.p ]
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !783
  call void @OPENSSL_free(ptr noundef %i.cf) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %.sroa.gep, i64 noundef 16) #36
  call void @OPENSSL_cleanse(ptr noundef nonnull %.sroa.gep15, i64 noundef 16) #36
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.cg, i64 noundef 16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit
  %.09 = phi i32 [ %i.cd, %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit ], [ 0, %bb.a ]
  ret i32 %.09
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CMAC_Init(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !800  ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  switch i32 %i.c, label %bb.j [
    i32 16, label %bb.b
    i32 8, label %bb.b
  ]

end_hunk_9
begin_hunk_10_@CMAC_Init:bb.a
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13    ; 2 uses
  %i.z = call i8 @llvm.fshl.i8(i8 %i.u, i8 %i.y, i8 1) ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !13  ; 2 uses
  %i.ad = call i8 @llvm.fshl.i8(i8 %i.y, i8 %i.ac, i8 1) ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13  ; 2 uses
  %i.ah = call i8 @llvm.fshl.i8(i8 %i.ac, i8 %i.ag, i8 1) ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !13  ; 2 uses
  %i.al = call i8 @llvm.fshl.i8(i8 %i.ag, i8 %i.ak, i8 1) ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %i.al, ptr %i.am, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13  ; 3 uses
  %i.ap = call i8 @llvm.fshl.i8(i8 %i.ak, i8 %i.ao, i8 1) ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !13  ; 2 uses
  %i.at = call i8 @llvm.fshl.i8(i8 %i.ao, i8 %i.as, i8 1) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.at, ptr %i.au, align 1, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13  ; 2 uses
  %i.ax = call i8 @llvm.fshl.i8(i8 %i.as, i8 %i.aw, i8 1) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !13  ; 2 uses
  %i.bb = call i8 @llvm.fshl.i8(i8 %i.aw, i8 %i.ba, i8 1) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13  ; 2 uses
  %i.bf = call i8 @llvm.fshl.i8(i8 %i.ba, i8 %i.be, i8 1) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %i.bf, ptr %i.bg, align 2, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !13  ; 2 uses
  %i.bj = call i8 @llvm.fshl.i8(i8 %i.be, i8 %i.bi, i8 1) ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 163
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13  ; 2 uses
  %i.bn = call i8 @llvm.fshl.i8(i8 %i.bi, i8 %i.bm, i8 1) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.bn, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !13  ; 2 uses
  %i.br = call i8 @llvm.fshl.i8(i8 %i.bm, i8 %i.bq, i8 1) ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13  ; 2 uses
  %i.bv = call i8 @llvm.fshl.i8(i8 %i.bq, i8 %i.bu, i8 1) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 %i.bv, ptr %i.bw, align 2, !tbaa !13
  %i.bx = shl i8 %i.bu, 1
  %isneg.i = icmp slt i8 %i.p, 0
  %i.by = select i1 %isneg.i, i8 -121, i8 0
  %i.bz = xor i8 %i.bx, %i.by                     ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.cc, ptr %i.cb, align 8, !tbaa !13
  %i.cd = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !13
  %i.cf = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !13
  %i.ch = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !13
  %i.cj = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !13
  %i.cl = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !13
  %i.cn = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.at, i8 1)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !13
  %i.cp = call i8 @llvm.fshl.i8(i8 %i.at, i8 %i.ax, i8 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !13
  %i.cr = call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.bb, i8 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !13
  %i.ct = call i8 @llvm.fshl.i8(i8 %i.bb, i8 %i.bf, i8 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !13
  %i.cv = call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bj, i8 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.cv, ptr %i.cw, align 2, !tbaa !13
  %i.cx = call i8 @llvm.fshl.i8(i8 %i.bj, i8 %i.bn, i8 1)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !13
  %i.cz = call i8 @llvm.fshl.i8(i8 %i.bn, i8 %i.br, i8 1)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.cz, ptr %i.da, align 4, !tbaa !13
  %i.db = call i8 @llvm.fshl.i8(i8 %i.br, i8 %i.bv, i8 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %i.dd = call i8 @llvm.fshl.i8(i8 %i.bv, i8 %i.bz, i8 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = shl i8 %i.ao, 1                         ; 2 uses
  %isneg.i24 = icmp slt i8 %i.p, 0
  %i.df = select i1 %isneg.i24, i8 27, i8 0
  %i.dg = xor i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dj = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.dj, ptr %i.di, align 8, !tbaa !13
  %i.dk = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !13
  %i.dm = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !13
  %i.do = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !13
  %i.dq = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.dq, ptr %i.dr, align 4, !tbaa !13
  %i.ds = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !13
  %i.du = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.de, i8 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink33 = phi i64 [ 174, %bb.h ], [ 182, %bb.g ]
  %.sink31 = phi i8 [ %i.du, %bb.h ], [ %i.dd, %bb.g ]
  %.sink30 = phi i8 [ %i.dg, %bb.h ], [ %i.bz, %bb.g ]
  %.sink = phi i8 [ 27, %bb.h ], [ -121, %bb.g ]
  %.sink27 = phi i64 [ 175, %bb.h ], [ 183, %bb.g ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink33
  store i8 %.sink31, ptr %i.dv, align 1, !tbaa !13
  %i.dw = shl i8 %.sink30, 1
  %isneg.i25 = icmp slt i8 %i.s, 0
  %i.dx = select i1 %isneg.i25, i8 %.sink, i8 0
  %i.dy = xor i8 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink27
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ea, align 8, !tbaa !809
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CMAC_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !778    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !800
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !809  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.e, %i.h
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = icmp eq i64 %spec.select, 0
  br i1 %i.k, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %1, i64 %spec.select, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !809
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = sub nuw i64 %2, %spec.select             ; 2 uses
  %i.o = trunc i64 %spec.select to i32
  %i.p = add i32 %i.m, %i.o
  store i32 %i.p, ptr %i.f, align 8, !tbaa !809
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !801
  %i.u = call noundef i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e) #36, !inline_history !818
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.041 = phi ptr [ %1, %bb.a ], [ %i.r, %bb.d ]  ; 2 uses
  %.039 = phi i64 [ %2, %bb.a ], [ %i.n, %bb.d ]  ; 3 uses
  %i.v = icmp ugt i64 %.039, %i.e
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.14056 = phi i64 [ %i.ab, %bb.f ], [ %.039, %bb.e ]
  %.14255 = phi ptr [ %i.aa, %bb.f ], [ %.041, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !778
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !801
  %i.z = call noundef i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %.14255, i64 noundef %i.e) #36, !inline_history !818
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.14255, i64 %i.e ; 2 uses
  %i.ab = sub nuw i64 %.14056, %i.e               ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !812

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.142.lcssa = phi ptr [ %.041, %bb.e ], [ %i.aa, %bb.f ]
  %.140.lcssa = phi i64 [ %.039, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ad = icmp eq i64 %.140.lcssa, 0
  br i1 %i.ad, label %_ZL14OPENSSL_memcpyPvPKvm.exit50, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %.142.lcssa, i64 %.140.lcssa, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit50

_ZL14OPENSSL_memcpyPvPKvm.exit50:                 ; preds = %._crit_edge, %bb.g
  %i.af = trunc nuw i64 %.140.lcssa to i32
  store i32 %i.af, ptr %i.f, align 8, !tbaa !809
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %_ZL14OPENSSL_memcpyPvPKvm.exit, %_ZL14OPENSSL_memcpyPvPKvm.exit50
  %.2 = phi i32 [ 0, %bb.d ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit50 ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @CMAC_Final(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !778    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !800  ; 6 uses
  %i.f = zext i32 %i.e to i64                     ; 11 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !94
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !809  ; 2 uses
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 -128, ptr %i.l, align 1, !tbaa !13
  %i.m = load i32, ptr %i.h, align 8, !tbaa !809  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.e, %i.n
  br i1 %i.o, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = sub nsw i64 %i.f, %i.p
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.q, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.u = phi i64 [ 152, %bb.b ], [ 168, %bb.c ], [ 168, %bb.d ] ; 2 uses
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = add i64 %i.u, %i.a
  %i.y = sub i64 %i.x, %i.b
  %diff.check = icmp ugt i64 %i.y, -32
  %i.z = sub i64 %i.b, %i.a
  %i.aa = add i64 %i.z, -185
  %diff.check45 = icmp ult i64 %i.aa, 31
  %conflict.rdx = or i1 %diff.check, %diff.check45
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.f, 28
  %n.vec = and i64 %i.f, 4294967264               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !13
  %wide.load47 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load48 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !13
  %wide.load49 = load <16 x i8>, ptr %i.af, align 1, !tbaa !13
  %i.ag = xor <16 x i8> %wide.load48, %wide.load
  %i.ah = xor <16 x i8> %wide.load49, %wide.load47
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %i.ag, ptr %i.ai, align 1, !tbaa !13
  store <16 x i8> %i.ah, ptr %i.aj, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.f, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 %index51
  %wide.load52 = load <4 x i8>, ptr %i.al, align 1, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %index51
  %wide.load53 = load <4 x i8>, ptr %i.am, align 1, !tbaa !13
  %i.an = xor <4 x i8> %wide.load53, %wide.load52
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %index51
  store <4 x i8> %i.an, ptr %i.ao, align 1, !tbaa !13
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next54, %n.vec50
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec50, %i.f
  br i1 %cmp.n55, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec50, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.prol
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.au, ptr %i.av, align 1, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !821

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.ph, %i.f
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
end_hunk_10
begin_hunk_11_@dh_compute_key_padded_no_self_test:bb.a
  %i.aq = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.ar = select i1 %.not54.i.i.i.i, i64 %i.ao, i64 %i.ap ; 2 uses
  %i.as = lshr i64 %i.ar, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.as, 0          ; 2 uses
  %i.at = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.au = select i1 %.not55.i.i.i.i, i64 %i.ar, i64 %i.as
  %i.av = icmp samesign ugt i64 %i.au, 1
  %.neg.i.i.i.i = zext i1 %i.av to i32
  %i.aw = or disjoint i32 %i.aa, 7
  %i.ax = add nuw nsw i32 %i.aw, %i.ah
  %i.ay = or disjoint i32 %i.ax, %i.ag
  %i.az = or disjoint i32 %i.ay, %i.ak
  %i.ba = add i32 %i.az, %i.an
  %i.bb = add i32 %i.ba, %i.aq
  %i.bc = add i32 %i.bb, %i.at
  %i.bd = add i32 %i.bc, %.neg.i.i.i.i
  %i.be = lshr i32 %i.bd, 3
  br label %DH_size.exit

DH_size.exit:                                     ; preds = %bb.e, %bn_minimal_width.exit.i.i.i, %bn_minimal_width.exit.thread7.i.i.i
  %.0.i.i.i = phi i32 [ %i.be, %bn_minimal_width.exit.thread7.i.i.i ], [ 0, %bn_minimal_width.exit.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bf = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.a) ; 4 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %BN_bn2bin_padded.exit, label %bb.f

bb.f:                                             ; preds = %DH_size.exit
  %i.bg = tail call fastcc noundef i32 @_ZL14dh_compute_keyP5dh_stP9bignum_stPKS1_P10bignum_ctx(ptr noundef nonnull %2, ptr noundef %i.bf, ptr noundef %1, ptr noundef %i.a)
  %.not19 = icmp eq i32 %i.bg, 0
  br i1 %.not19, label %BN_bn2bin_padded.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = zext nneg i32 %.0.i.i.i to i64          ; 10 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !185 ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !186
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3                    ; 5 uses
  %i.bn = icmp ugt i64 %i.bm, %i.bh
  br i1 %i.bn, label %.lr.ph.i.i.preheader, label %_ZL13fits_in_bytesPKmmm.exit.thread.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bo = sub nuw nsw i64 %i.bm, %i.bh            ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.bp = add nsw i64 %n.vec, %i.bh
  %invariant.gep = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !13
  %wide.load40 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !13
  %i.br = zext <4 x i8> %wide.load to <4 x i32>
  %i.bs = zext <4 x i8> %wide.load40 to <4 x i32>
  %i.bt = or <4 x i32> %vec.phi, %i.br            ; 2 uses
  %i.bu = or <4 x i32> %vec.phi39, %i.bs          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !846

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZL13fits_in_bytesPKmmm.exit.i, label %.lr.ph.i.i.preheader62

.lr.ph.i.i.preheader62:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.011.i.i.ph = phi i64 [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0910.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader62, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader62 ] ; 2 uses
  %.0910.i.i = phi i32 [ %i.ca, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader62 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.011.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i32
  %i.ca = or i32 %.0910.i.i, %i.bz                ; 2 uses
  %i.cb = add nuw i64 %.011.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %i.bm
  br i1 %exitcond.not.i.i, label %_ZL13fits_in_bytesPKmmm.exit.i, label %.lr.ph.i.i, !llvm.loop !847

_ZL13fits_in_bytesPKmmm.exit.i:                   ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.bw, %middle.block ], [ %i.ca, %.lr.ph.i.i ]
  %.not.i24 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i24, label %_ZL13fits_in_bytesPKmmm.exit.thread.i, label %BN_bn2bin_padded.exit

_ZL13fits_in_bytesPKmmm.exit.thread.i:            ; preds = %_ZL13fits_in_bytesPKmmm.exit.i, %bb.g
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bm) ; 14 uses
  %.not19.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not19.i.i, label %._crit_edge.i.i22, label %iter.check

iter.check:                                       ; preds = %_ZL13fits_in_bytesPKmmm.exit.thread.i
  %i.cc = getelementptr i8, ptr %0, i64 %i.bh     ; 8 uses
  %min.iters.check43 = icmp samesign ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check43, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cd = sub nsw i64 %i.bh, %spec.select.i.i
  %scevgep = getelementptr i8, ptr %0, i64 %i.cd
  %scevgep41 = getelementptr i8, ptr %i.bi, i64 %spec.select.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep41
  %bound1 = icmp ult ptr %i.bi, %i.cc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check44 = icmp samesign ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph45

vector.ph45:                                      ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %spec.select.i.i, 24
  %n.vec46 = and i64 %spec.select.i.i, 536870880  ; 4 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load49 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !13, !alias.scope !848
  %wide.load50 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !13, !alias.scope !848
  %i.ch = xor i64 %index48, -1
  %i.ci = getelementptr i8, ptr %i.cc, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -15
  %i.ck = getelementptr i8, ptr %i.ci, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load49, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse51 = shufflevector <16 x i8> %wide.load50, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.cj, align 1, !tbaa !13, !alias.scope !851, !noalias !848
  store <16 x i8> %reverse51, ptr %i.ck, align 1, !tbaa !13, !alias.scope !851, !noalias !848
  %index.next52 = add nuw i64 %index48, 32        ; 2 uses
  %i.cl = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.cl, label %middle.block53, label %vector.body47, !llvm.loop !853

middle.block53:                                   ; preds = %vector.body47
  %cmp.n54 = icmp eq i64 %spec.select.i.i, %n.vec46
  br i1 %cmp.n54, label %._crit_edge.i.i22, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block53
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec46, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %spec.select.i.i, 536870904  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index56
  %wide.load57 = load <8 x i8>, ptr %i.cm, align 1, !tbaa !13, !alias.scope !848
  %i.cn = xor i64 %index56, -1
  %i.co = getelementptr i8, ptr %i.cc, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -7
  %reverse58 = shufflevector <8 x i8> %wide.load57, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse58, ptr %i.cp, align 1, !tbaa !13, !alias.scope !851, !noalias !848
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !854

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %spec.select.i.i, %n.vec55
  br i1 %cmp.n60, label %._crit_edge.i.i22, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec46, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.i.prol = phi i64 [ %i.cv, %vec.epilog.scalar.ph.prol ], [ %.018.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.018.i.i.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = xor i64 %.018.i.i.prol, -1
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !13
  %i.cv = add nuw nsw i64 %.018.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !855

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.i.unr = phi i64 [ %.018.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cv, %vec.epilog.scalar.ph.prol ]
  %i.cw = sub nsw i64 %.018.i.i.ph, %spec.select.i.i
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge.i.i22, label %vec.epilog.scalar.ph

._crit_edge.i.i22:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block53, %vec.epilog.middle.block, %_ZL13fits_in_bytesPKmmm.exit.thread.i
  %.not.i.i23 = icmp ult i64 %i.bm, %i.bh
  br i1 %.not.i.i23, label %bb.h, label %BN_bn2bin_padded.exit

bb.h:                                             ; preds = %._crit_edge.i.i22
  %i.cy = sub nuw nsw i64 %i.bh, %spec.select.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.cy, i1 false)
  br label %BN_bn2bin_padded.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.018.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.018.i.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = xor i64 %.018.i.i, -1
  %i.dc = getelementptr i8, ptr %i.cc, i64 %i.db
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.018.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = sub i64 -2, %.018.i.i
  %i.dh = getelementptr i8, ptr %i.cc, i64 %i.dg
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.018.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = sub i64 -3, %.018.i.i
  %i.dm = getelementptr i8, ptr %i.cc, i64 %i.dl
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.018.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = sub i64 -4, %.018.i.i
  %i.dr = getelementptr i8, ptr %i.cc, i64 %i.dq
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !13
  %i.ds = add nuw nsw i64 %.018.i.i, 4            ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %i.ds, %spec.select.i.i
  br i1 %exitcond.not.i8.i.3, label %._crit_edge.i.i22, label %vec.epilog.scalar.ph, !llvm.loop !856

BN_bn2bin_padded.exit:                            ; preds = %bb.h, %._crit_edge.i.i22, %_ZL13fits_in_bytesPKmmm.exit.i, %bb.f, %DH_size.exit
  %.0 = phi i32 [ -1, %DH_size.exit ], [ -1, %bb.f ], [ -1, %_ZL13fits_in_bytesPKmmm.exit.i ], [ %.0.i.i.i, %._crit_edge.i.i22 ], [ %.0.i.i.i, %bb.h ]
  %i.dt = load i8, ptr %i.b, align 8, !tbaa !291
  %.not.i25 = icmp eq i8 %i.dt, 0
  br i1 %.not.i25, label %bb.i, label %BN_CTX_free.exit

bb.i:                                             ; preds = %BN_bn2bin_padded.exit
  %i.du = load i64, ptr %i.d, align 8, !tbaa !293
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.d, align 8, !tbaa !293
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !94
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !292
  br label %BN_CTX_free.exit

BN_CTX_free.exit:                                 ; preds = %BN_bn2bin_padded.exit, %bb.i
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !286
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.ea, ptr noundef nonnull @_Z24sk_BIGNUM_call_free_funcPFvPvES_, ptr noundef nonnull @BN_free) #36
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !290
  tail call void @OPENSSL_free(ptr noundef %.val.i) #36
  tail call void @OPENSSL_free(ptr noundef nonnull %i.a) #36
  br label %BN_CTX_new.exit.thread

BN_CTX_new.exit.thread:                           ; preds = %bb.a, %BN_CTX_free.exit
  %.016 = phi i32 [ %.0, %BN_CTX_free.exit ], [ -1, %bb.a ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 536870912) i32 @DH_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !823    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bn_minimal_width.exit.thread7.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i32 [ %i.at, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14dh_compute_keyP5dh_stP9bignum_stPKS1_P10bignum_ctx(ptr noundef %0, ptr nofree noundef nonnull captures(address_is_null) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.bignum_st, align 8          ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @dh_check_params_fast(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !844
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 5, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.17, i32 noundef 260) #36
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.g = call i32 @DH_check_pub_key(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.b)
  %i.h = icmp eq i32 %i.g, 0
  %i.i = load i32, ptr %i.b, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 5, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.17, i32 noundef 266) #36
  br label %BN_CTX_end.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !291
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.g, label %BN_CTX_start.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !292
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !293  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !294
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.h, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.h:                                             ; preds = %bb.g
end_hunk_11
begin_hunk_12_@ec_bignum_to_felem:bb.a
  %i.ah = select i1 %.not54.i.i.i, i64 %i.ae, i64 %i.af ; 2 uses
  %i.ai = lshr i64 %i.ah, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ai, 0            ; 2 uses
  %i.aj = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.ak = select i1 %.not55.i.i.i, i64 %i.ah, i64 %i.ai
  %i.al = icmp samesign ugt i64 %i.ak, 1
  %.neg.i.i.i = zext i1 %i.al to i32
  %i.am = or disjoint i32 %i.q, 7
  %i.an = add nuw nsw i32 %i.am, %i.x
  %i.ao = or disjoint i32 %i.an, %i.w
  %i.ap = or disjoint i32 %i.ao, %i.aa
  %i.aq = add i32 %i.ap, %i.ad
  %i.ar = add i32 %i.aq, %i.ag
  %i.as = add i32 %i.ar, %i.aj
  %i.at = add i32 %i.as, %.neg.i.i.i
  %i.au = lshr i32 %i.at, 3
  %i.av = zext nneg i32 %i.au to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i64 [ %i.av, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ] ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !182
  %.not12 = icmp eq i32 %i.ax, 0
  br i1 %.not12, label %bb.d, label %BN_bn2bin_padded.exit

bb.d:                                             ; preds = %BN_num_bytes.exit
  %i.ay = tail call i32 @BN_cmp(ptr noundef nonnull %2, ptr noundef nonnull %i.b)
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %BN_bn2bin_padded.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %2, align 8, !tbaa !185   ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !186
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3                    ; 5 uses
  %i.bf = icmp ult i64 %.0.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %_ZL13fits_in_bytesPKmmm.exit.thread.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.bg = sub nuw nsw i64 %i.be, %.0.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.bg, -8                      ; 3 uses
  %i.bh = add nsw i64 %.0.i.i, %n.vec
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.0.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !tbaa !13
  %wide.load20 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !13
  %i.bl = zext <4 x i8> %wide.load to <4 x i32>
  %i.bm = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.bn = or <4 x i32> %vec.phi, %i.bl            ; 2 uses
  %i.bo = or <4 x i32> %vec.phi19, %i.bm          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !943

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZL13fits_in_bytesPKmmm.exit.i, label %.lr.ph.i.i.preheader42

.lr.ph.i.i.preheader42:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.011.i.i.ph = phi i64 [ %.0.i.i, %.lr.ph.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0910.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader42, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader42 ] ; 2 uses
  %.0910.i.i = phi i32 [ %i.bu, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader42 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.011.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or i32 %.0910.i.i, %i.bt                ; 2 uses
  %i.bv = add nuw i64 %.011.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bv, %i.be
  br i1 %exitcond.not.i.i, label %_ZL13fits_in_bytesPKmmm.exit.i, label %.lr.ph.i.i, !llvm.loop !944

_ZL13fits_in_bytesPKmmm.exit.i:                   ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.bq, %middle.block ], [ %i.bu, %.lr.ph.i.i ]
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZL13fits_in_bytesPKmmm.exit.thread.i, label %BN_bn2bin_padded.exit

_ZL13fits_in_bytesPKmmm.exit.thread.i:            ; preds = %_ZL13fits_in_bytesPKmmm.exit.i, %bb.e
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %i.be) ; 14 uses
  %.not19.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZL13fits_in_bytesPKmmm.exit.thread.i
  %i.bw = getelementptr i8, ptr %i.a, i64 %.0.i.i ; 8 uses
  %min.iters.check23 = icmp samesign ult i64 %spec.select.i.i, 8
  br i1 %min.iters.check23, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bx = sub nsw i64 %.0.i.i, %spec.select.i.i
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bx
  %scevgep21 = getelementptr i8, ptr %i.ba, i64 %spec.select.i.i
  %bound0 = icmp ult ptr %scevgep, %scevgep21
  %bound1 = icmp ult ptr %i.ba, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp samesign ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph25

vector.ph25:                                      ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %spec.select.i.i, 24
  %n.vec26 = and i64 %spec.select.i.i, 2147483616 ; 4 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next32, %vector.body27 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index28 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load29 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !13, !alias.scope !945
  %wide.load30 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !13, !alias.scope !945
  %i.cb = xor i64 %index28, -1
  %i.cc = getelementptr i8, ptr %i.bw, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -15
  %i.ce = getelementptr i8, ptr %i.cc, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load29, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse31 = shufflevector <16 x i8> %wide.load30, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.cd, align 1, !tbaa !13, !alias.scope !948, !noalias !945
  store <16 x i8> %reverse31, ptr %i.ce, align 1, !tbaa !13, !alias.scope !948, !noalias !945
  %index.next32 = add nuw i64 %index28, 32        ; 2 uses
  %i.cf = icmp eq i64 %index.next32, %n.vec26
  br i1 %i.cf, label %middle.block33, label %vector.body27, !llvm.loop !950

middle.block33:                                   ; preds = %vector.body27
  %cmp.n34 = icmp eq i64 %spec.select.i.i, %n.vec26
  br i1 %cmp.n34, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block33
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec26, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %spec.select.i.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index36
  %wide.load37 = load <8 x i8>, ptr %i.cg, align 1, !tbaa !13, !alias.scope !945
  %i.ch = xor i64 %index36, -1
  %i.ci = getelementptr i8, ptr %i.bw, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -7
  %reverse38 = shufflevector <8 x i8> %wide.load37, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse38, ptr %i.cj, align 1, !tbaa !13, !alias.scope !948, !noalias !945
  %index.next39 = add nuw i64 %index36, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next39, %n.vec35
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !951

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %spec.select.i.i, %n.vec35
  br i1 %cmp.n40, label %._crit_edge.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec26, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.i.prol = phi i64 [ %i.cp, %vec.epilog.scalar.ph.prol ], [ %.018.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.018.i.i.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = xor i64 %.018.i.i.prol, -1
  %i.co = getelementptr i8, ptr %i.bw, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !13
  %i.cp = add nuw nsw i64 %.018.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !952

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.i.unr = phi i64 [ %.018.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cp, %vec.epilog.scalar.ph.prol ]
  %i.cq = sub nsw i64 %.018.i.i.ph, %spec.select.i.i
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block33, %vec.epilog.middle.block, %_ZL13fits_in_bytesPKmmm.exit.thread.i
  %.not.i.i = icmp ugt i64 %.0.i.i, %i.be
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.cs = sub nuw nsw i64 %.0.i.i, %spec.select.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cs, i1 false)
  br label %bb.g

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i.i = phi i64 [ %i.dm, %vec.epilog.scalar.ph ], [ %.018.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.018.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = xor i64 %.018.i.i, -1
  %i.cw = getelementptr i8, ptr %i.bw, i64 %i.cv
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.018.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = sub i64 -2, %.018.i.i
  %i.db = getelementptr i8, ptr %i.bw, i64 %i.da
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.018.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = sub i64 -3, %.018.i.i
  %i.dg = getelementptr i8, ptr %i.bw, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.018.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = sub i64 -4, %.018.i.i
  %i.dl = getelementptr i8, ptr %i.bw, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !13
  %i.dm = add nuw nsw i64 %.018.i.i, 4            ; 2 uses
  %exitcond.not.i8.i.3 = icmp eq i64 %i.dm, %spec.select.i.i
  br i1 %exitcond.not.i8.i.3, label %._crit_edge.i.i, label %vec.epilog.scalar.ph, !llvm.loop !953

BN_bn2bin_padded.exit:                            ; preds = %_ZL13fits_in_bytesPKmmm.exit.i, %bb.d, %BN_num_bytes.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.27, i32 noundef 37) #36
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i, %bb.f
  %i.dn = load ptr, ptr %0, align 8, !tbaa !903
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !954
  %i.dq = call noundef i32 %i.dp(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %.0.i.i) #36, !inline_history !955
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %BN_bn2bin_padded.exit
  %.0 = phi i32 [ 0, %BN_bn2bin_padded.exit ], [ %i.dq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ec_set_to_safe_point(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 216)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.b = load i32, ptr %i.a, align 4, !tbaa !908
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 4 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(72) %i.g, i64 72, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_POINT_set_affine_coordinates(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @EC_POINT_set_affine_coordinates_GFp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr poison)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_POINT_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !913
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.a, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !913
  %i.d = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.c, ptr poison)
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !913
  %i.f = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.e, ptr poison)
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.20, i32 noundef 621) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !903
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !956
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_POINT_dbl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !913
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.a, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !913
  %i.d = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.c, ptr poison)
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.20, i32 noundef 632) #36
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !903
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !957
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void %i.g(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_POINT_invert(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !913
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.a, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.20, i32 noundef 642) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @ec_felem_neg(ptr noundef readonly %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @ec_GFp_simple_invert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @ec_felem_neg(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ec_point_mul_no_self_test(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.EC_SCALAR, align 8          ; 5 uses
  %7 = alloca %struct.EC_SCALAR, align 8          ; 5 uses
  %8 = alloca %struct.EC_JACOBIAN, align 8        ; 7 uses
  %i.a = icmp eq ptr %2, null                     ; 3 uses
  %i.b = icmp eq ptr %4, null                     ; 3 uses
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null                     ; 2 uses
  %.not.not = xor i1 %i.c, %i.b
  %or.cond48.not = or i1 %.not.not, %or.cond
  br i1 %or.cond48.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.20, i32 noundef 674) #36
end_hunk_12
begin_hunk_13_@EC_KEY_priv2oct:bb.a
bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @ec_scalar_to_bytes(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %BN_num_bytes.exit, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %.0.i.i, %bb.i ], [ 0, %bb.h ], [ %.0.i.i, %BN_num_bytes.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ec_scalar_to_bytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bn_minimal_width.exit.thread7.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i64 [ %i.au, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ] ; 6 uses
  %i.av = sext i32 %i.c to i64
  %i.aw = shl nsw i64 %i.av, 3                    ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %i.aw) ; 14 uses
  %.not19.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not19.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %BN_num_bytes.exit
  %i.ax = getelementptr i8, ptr %1, i64 %.0.i.i   ; 8 uses
  %min.iters.check = icmp samesign ult i64 %spec.select.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = sub nsw i64 %.0.i.i, %spec.select.i
  %scevgep = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep10 = getelementptr i8, ptr %3, i64 %spec.select.i
  %bound0 = icmp ult ptr %scevgep, %scevgep10
  %bound1 = icmp ult ptr %3, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp samesign ult i64 %spec.select.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i, 24
  %n.vec = and i64 %spec.select.i, 2147483616     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !tbaa !13, !alias.scope !1038
  %wide.load12 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !13, !alias.scope !1038
  %i.bc = xor i64 %index, -1
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -15
  %i.bf = getelementptr i8, ptr %i.bd, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse13 = shufflevector <16 x i8> %wide.load12, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.be, align 1, !tbaa !13, !alias.scope !1041, !noalias !1038
  store <16 x i8> %reverse13, ptr %i.bf, align 1, !tbaa !13, !alias.scope !1041, !noalias !1038
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1043

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %spec.select.i, 2147483640   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %index15
  %wide.load16 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !13, !alias.scope !1038
  %i.bi = xor i64 %index15, -1
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -7
  %reverse17 = shufflevector <8 x i8> %wide.load16, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse17, ptr %i.bk, align 1, !tbaa !13, !alias.scope !1041, !noalias !1038
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1044

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i, %n.vec14
  br i1 %cmp.n19, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.prol = phi i64 [ %i.bq, %vec.epilog.scalar.ph.prol ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i.prol
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = xor i64 %.018.i.prol, -1
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !13
  %i.bq = add nuw nsw i64 %.018.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1045

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.unr = phi i64 [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bq, %vec.epilog.scalar.ph.prol ]
  %i.br = sub nsw i64 %.018.i.ph, %spec.select.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %BN_num_bytes.exit
  %.not.i = icmp ugt i64 %.0.i.i, %i.aw
  br i1 %.not.i, label %bb.d, label %bn_words_to_big_endian.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.bt = sub nuw nsw i64 %.0.i.i, %spec.select.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.bt, i1 false)
  br label %bn_words_to_big_endian.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %i.cn, %vec.epilog.scalar.ph ], [ %.018.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = xor i64 %.018.i, -1
  %i.bx = getelementptr i8, ptr %i.ax, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = sub i64 -2, %.018.i
  %i.cc = getelementptr i8, ptr %i.ax, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = sub i64 -3, %.018.i
  %i.ch = getelementptr i8, ptr %i.ax, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = sub i64 -4, %.018.i
  %i.cm = getelementptr i8, ptr %i.ax, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !13
  %i.cn = add nuw nsw i64 %.018.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1046

bn_words_to_big_endian.exit:                      ; preds = %._crit_edge.i, %bb.d
  store i64 %.0.i.i, ptr %2, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i64 0, 536870912) i64 @EC_KEY_priv2buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 {
bb.a:
  store ptr null, ptr %1, align 8, !tbaa !1035
  %i.a = tail call i64 @EC_KEY_priv2oct(ptr noundef %0, ptr noundef null, i64 noundef 0) ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef %i.a) #36 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @EC_KEY_priv2oct(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.a) ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %1, align 8, !tbaa !1035
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_generate_key(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !1001   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.25, i32 noundef 422) #36
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186  ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ %i.n, %bb.f ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %EC_GROUP_order_bits.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.05.i.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.o, label %bb.e, label %EC_GROUP_order_bits.exit.thread, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.d
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %EC_GROUP_order_bits.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !185
  br label %EC_GROUP_order_bits.exit

EC_GROUP_order_bits.exit:                         ; preds = %bb.e, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.q = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.h, %bb.e ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.e ]
  %i.r = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.s = shl nsw i32 %i.r, 6
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94   ; 3 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = lshr i64 %i.v, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0               ; 2 uses
  %i.y = select i1 %.not.i.i.i, i32 0, i32 32
  %i.z = zext i1 %i.w to i32
  %i.aa = select i1 %.not.i.i.i, i64 %i.v, i64 %i.x ; 2 uses
  %i.ab = lshr i64 %i.aa, 16                      ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.ad = select i1 %.not52.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ag = select i1 %.not53.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.aj = select i1 %.not54.i.i.i, i64 %i.ag, i64 %i.ah ; 2 uses
  %i.ak = lshr i64 %i.aj, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ak, 0            ; 2 uses
  %i.al = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.am = select i1 %.not55.i.i.i, i64 %i.aj, i64 %i.ak
  %i.an = icmp samesign ugt i64 %i.am, 1
  %.neg.i.i.i = zext i1 %i.an to i32
  %i.ao = or disjoint i32 %i.s, %i.z
  %i.ap = or disjoint i32 %i.ao, %i.y
  %i.aq = or disjoint i32 %i.ap, %i.ac
  %i.ar = or disjoint i32 %i.aq, %i.af
  %i.as = or disjoint i32 %i.ar, %i.ai
  %i.at = or disjoint i32 %i.as, %i.al
  %i.au = add i32 %i.at, %.neg.i.i.i
  %i.av = icmp slt i32 %i.au, 160
  br i1 %i.av, label %EC_GROUP_order_bits.exit.thread, label %bb.g

EC_GROUP_order_bits.exit.thread:                  ; preds = %bb.f, %bn_minimal_width.exit.i.i, %EC_GROUP_order_bits.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str.25, i32 noundef 428) #36
  br label %bb.q

bb.g:                                             ; preds = %EC_GROUP_order_bits.exit
  %i.aw = tail call ptr @OPENSSL_zalloc(i64 noundef 96) #36 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  br i1 %i.ax, label %_ZL21ec_wrapped_scalar_newPK11ec_group_st.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1005
  %i.az = load i32, ptr %i.e, align 8, !tbaa !1008 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !1009
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !1010
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 2, ptr %i.bc, align 4, !tbaa !1011
  br label %_ZL21ec_wrapped_scalar_newPK11ec_group_st.exit

_ZL21ec_wrapped_scalar_newPK11ec_group_st.exit:   ; preds = %bb.g, %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1001  ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL21ec_wrapped_scalar_newPK11ec_group_st.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.20, i32 noundef 407) #36
  br label %EC_POINT_free.exit

bb.j:                                             ; preds = %_ZL21ec_wrapped_scalar_newPK11ec_group_st.exit
  %i.bf = tail call ptr @OPENSSL_malloc(i64 noundef 224) #36 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %EC_POINT_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !893
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.l, label %EC_POINT_new.exit

bb.l:                                             ; preds = %bb.k
end_hunk_13
begin_hunk_14_@ec_GFp_mont_felem_to_bytes:bb.a
  tail call void @abort() #37
  unreachable

_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit: ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i
  %i.k = shl nuw nsw i64 %i.e, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @ec_GFp_simple_felem_to_bytes(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @ec_GFp_simple_felem_to_bytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bn_minimal_width.exit.thread7.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i64 [ %i.au, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ] ; 6 uses
  %i.av = sext i32 %i.c to i64
  %i.aw = shl nsw i64 %i.av, 3                    ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 %i.aw) ; 14 uses
  %.not19.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not19.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %BN_num_bytes.exit
  %i.ax = getelementptr i8, ptr %1, i64 %.0.i.i   ; 8 uses
  %min.iters.check = icmp samesign ult i64 %spec.select.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = sub nsw i64 %.0.i.i, %spec.select.i
  %scevgep = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep10 = getelementptr i8, ptr %3, i64 %spec.select.i
  %bound0 = icmp ult ptr %scevgep, %scevgep10
  %bound1 = icmp ult ptr %3, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp samesign ult i64 %spec.select.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %spec.select.i, 24
  %n.vec = and i64 %spec.select.i, 2147483616     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !tbaa !13, !alias.scope !1047
  %wide.load12 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !13, !alias.scope !1047
  %i.bc = xor i64 %index, -1
  %i.bd = getelementptr i8, ptr %i.ax, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -15
  %i.bf = getelementptr i8, ptr %i.bd, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse13 = shufflevector <16 x i8> %wide.load12, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.be, align 1, !tbaa !13, !alias.scope !1050, !noalias !1047
  store <16 x i8> %reverse13, ptr %i.bf, align 1, !tbaa !13, !alias.scope !1050, !noalias !1047
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1052

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %spec.select.i, 2147483640   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %index15
  %wide.load16 = load <8 x i8>, ptr %i.bh, align 1, !tbaa !13, !alias.scope !1047
  %i.bi = xor i64 %index15, -1
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -7
  %reverse17 = shufflevector <8 x i8> %wide.load16, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse17, ptr %i.bk, align 1, !tbaa !13, !alias.scope !1050, !noalias !1047
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1053

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i, %n.vec14
  br i1 %cmp.n19, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.018.i.prol = phi i64 [ %i.bq, %vec.epilog.scalar.ph.prol ], [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i.prol
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = xor i64 %.018.i.prol, -1
  %i.bp = getelementptr i8, ptr %i.ax, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !13
  %i.bq = add nuw nsw i64 %.018.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1054

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.018.i.unr = phi i64 [ %.018.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bq, %vec.epilog.scalar.ph.prol ]
  %i.br = sub nsw i64 %.018.i.ph, %spec.select.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %BN_num_bytes.exit
  %.not.i = icmp ugt i64 %.0.i.i, %i.aw
  br i1 %.not.i, label %bb.d, label %bn_words_to_big_endian.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.bt = sub nuw nsw i64 %.0.i.i, %spec.select.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.bt, i1 false)
  br label %bn_words_to_big_endian.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.018.i = phi i64 [ %i.cn, %vec.epilog.scalar.ph ], [ %.018.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = xor i64 %.018.i, -1
  %i.bx = getelementptr i8, ptr %i.ax, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = sub i64 -2, %.018.i
  %i.cc = getelementptr i8, ptr %i.ax, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = sub i64 -3, %.018.i
  %i.ch = getelementptr i8, ptr %i.ax, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %.018.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = sub i64 -4, %.018.i
  %i.cm = getelementptr i8, ptr %i.ax, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !13
  %i.cn = add nuw nsw i64 %.018.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %spec.select.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1055

bn_words_to_big_endian.exit:                      ; preds = %._crit_edge.i, %bb.d
  store i64 %.0.i.i, ptr %2, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ec_GFp_mont_felem_from_bytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 {
bb.a:
  %i.a = tail call i32 @ec_GFp_simple_felem_from_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !907
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !380
  tail call void @bn_mod_mul_montgomery_small(ptr noundef %1, ptr noundef readonly %1, ptr noundef %i.f, i64 noundef %i.e, ptr noundef nonnull readonly %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ec_GFp_simple_felem_from_bytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bn_minimal_width.exit.thread7.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit, !llvm.loop !192

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.c, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i64 [ %i.au, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ]
  %.not = icmp eq i64 %3, %.0.i.i
  br i1 %.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %BN_num_bytes.exit
  %i.av = sext i32 %i.c to i64                    ; 5 uses
  %i.aw = shl nsw i64 %i.av, 3
  %.not.i = icmp ugt i64 %3, %i.aw
  br i1 %.not.i, label %bb.e, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.d
  %i.ax = icmp samesign ugt i64 %3, 7
  br i1 %i.ax, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader28.i
  %i.ay = add i64 %3, -8                          ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02231.i.prol = phi i64 [ %i.bb, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %.02330.i.prol = phi ptr [ %i.be, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.02429.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %i.av, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = add i64 %.02231.i.prol, -8              ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %.0.copyload.i.i.prol = load i64, ptr %i.bc, align 1
  %i.bd = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.prol)
  store i64 %i.bd, ptr %.02330.i.prol, align 8, !tbaa !94
  %i.be = getelementptr inbounds nuw i8, ptr %.02330.i.prol, i64 8 ; 3 uses
  %i.bf = add nsw i64 %.02429.i.prol, -1          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1056

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.02231.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %.02330.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.02429.i.unr = phi i64 [ %i.av, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %.lcssa41.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %.lcssa40.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %.lcssa39.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = icmp ult i64 %i.ay, 24
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #37
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02231.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.02231.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.02330.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.02330.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02429.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %.02429.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bh = getelementptr i8, ptr %2, i64 %.02231.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.bi, align 1
  %i.bj = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.bj, ptr %.02330.i, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %.02330.i, i64 8
end_hunk_14
begin_hunk_15_@BORINGSSL_keccak_absorb:bb.a
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.2.lcssa, 28
  %n.vec113 = and i64 %.2.lcssa, -32              ; 4 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %index115 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load116 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !13, !alias.scope !1236
  %wide.load117 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !13, !alias.scope !1236
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %index115 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load118 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  %wide.load119 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  %i.cd = xor <16 x i8> %wide.load118, %wide.load116
  %i.ce = xor <16 x i8> %wide.load119, %wide.load117
  store <16 x i8> %i.cd, ptr %i.cb, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  store <16 x i8> %i.ce, ptr %i.cc, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  %index.next120 = add nuw i64 %index115, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.cf, label %middle.block121, label %vector.body114, !llvm.loop !1241

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %.2.lcssa, %n.vec113
  br i1 %cmp.n122, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block121
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec113, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %.2.lcssa, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %index124
  %wide.load125 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !13, !alias.scope !1236
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 %index124 ; 2 uses
  %wide.load126 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  %i.ci = xor <4 x i8> %wide.load126, %wide.load125
  store <4 x i8> %i.ci, ptr %i.ch, align 1, !tbaa !13, !alias.scope !1239, !noalias !1236
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %.2.lcssa, %n.vec123
  br i1 %cmp.n128, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck103, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck103 ], [ %n.vec113, %vec.epilog.iter.check ], [ %n.vec123, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter137 = and i64 %.2.lcssa, 3             ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %.073.prol = phi i64 [ %i.cp, %.lr.ph74.prol ], [ %.073.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %.073.prol
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.073.prol ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = xor i8 %i.cn, %i.cl
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !13
  %i.cp = add nuw i64 %.073.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter137
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !1243

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %.073.unr = phi i64 [ %.073.ph, %.lr.ph74.preheader ], [ %i.cp, %.lr.ph74.prol ]
  %i.cq = sub i64 %.073.ph, %.2.lcssa
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %.073 = phi i64 [ %i.dp, %.lr.ph74 ], [ %.073.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %.073
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.073 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = xor i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !13
  %i.cx = add nuw i64 %.073, 1                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cx ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = xor i8 %i.db, %i.cz
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !13
  %i.dd = add nuw i64 %.073, 2                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dd ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = xor i8 %i.dh, %i.df
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !13
  %i.dj = add nuw i64 %.073, 3                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.254.lcssa, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dj ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = xor i8 %i.dn, %i.dl
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !13
  %i.dp = add nuw i64 %.073, 4                    ; 2 uses
  %exitcond83.not.3 = icmp eq i64 %i.dp, %.2.lcssa
  br i1 %exitcond83.not.3, label %.loopexit, label %.lr.ph74, !llvm.loop !1244

.loopexit:                                        ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block121, %vec.epilog.middle.block, %.preheader, %.thread
  %storemerge = phi i64 [ %i.aj, %.thread ], [ 0, %.preheader ], [ %.2.lcssa, %middle.block121 ], [ %.2.lcssa, %vec.epilog.middle.block ], [ %.2.lcssa, %.lr.ph74 ], [ %.2.lcssa, %.lr.ph74.prol.loopexit ]
  store i64 %storemerge, ptr %i.h, align 8, !tbaa !1226
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @BORINGSSL_keccak_squeeze(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1224
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !1220   ; 2 uses
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %switch.shiftamt = shl nuw nsw i32 %i.d, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = xor i8 %i.j, %switch.masked
  store i8 %i.k, ptr %i.i, align 1, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1225
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = xor i8 %i.p, -128
  store i8 %i.q, ptr %i.o, align 1, !tbaa !13
  tail call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.f)
  store i32 1, ptr %i.a, align 4, !tbaa !1224
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.pre = load i64, ptr %i.s, align 8, !tbaa !1245
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.u = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %_ZL14OPENSSL_memcpyPvPKvm.exit ] ; 2 uses
  %.02429 = phi i64 [ %2, %.lr.ph ], [ %i.ae, %_ZL14OPENSSL_memcpyPvPKvm.exit ] ; 2 uses
  %.02528 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %_ZL14OPENSSL_memcpyPvPKvm.exit ] ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !1225 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.r)
  store i64 0, ptr %i.s, align 8, !tbaa !1245
  %.pre30 = load i64, ptr %i.t, align 8, !tbaa !1225
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ 0, %bb.f ], [ %i.u, %bb.e ]    ; 4 uses
  %i.y = phi i64 [ %.pre30, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.z = sub i64 %i.y, %i.x
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.02429, i64 %i.z) ; 4 uses
  %i.aa = icmp eq i64 %i.y, %i.x
  br i1 %i.aa, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528, ptr nonnull readonly align 1 %i.ab, i64 %spec.select, i1 false)
  %.pre31 = load i64, ptr %i.s, align 8, !tbaa !1245
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.g, %bb.h
  %i.ac = phi i64 [ %i.x, %bb.g ], [ %.pre31, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.02528, i64 %spec.select
  %i.ae = sub nuw i64 %.02429, %spec.select       ; 2 uses
  %i.af = add i64 %i.ac, %spec.select             ; 2 uses
  store i64 %i.af, ptr %i.s, align 8, !tbaa !1245
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !1246

._crit_edge:                                      ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @BORINGSSL_keccak_init(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.f
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %.0.neg.i = phi i64 [ 72, %bb.b ], [ 136, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.a, i8 0, i64 224, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !1220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !1224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.0.neg.i, ptr %i.c, align 8, !tbaa !1225
  tail call void @abort() #37
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  %.0.neg.i.ph = phi i64 [ 136, %bb.c ], [ 168, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.d, i8 0, i64 224, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !1220
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.0.neg.i.ph, ptr %i.f, align 8, !tbaa !1225
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL8keccak_fPm(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i64, ptr %0, align 8, !tbaa !94
  %.pre176 = load i64, ptr %i.b, align 8, !tbaa !94
  %.pre177 = load i64, ptr %i.h, align 8, !tbaa !94
  %.pre178 = load i64, ptr %i.m, align 8, !tbaa !94
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre179 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !94
  %.phi.trans.insert180 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre181 = load i64, ptr %.phi.trans.insert180, align 8, !tbaa !94
  %.phi.trans.insert182 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre183 = load i64, ptr %.phi.trans.insert182, align 8, !tbaa !94
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre185 = load i64, ptr %.phi.trans.insert184, align 8, !tbaa !94
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre187 = load i64, ptr %.phi.trans.insert186, align 8, !tbaa !94
  %.phi.trans.insert188 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre189 = load i64, ptr %.phi.trans.insert188, align 8, !tbaa !94
  %.phi.trans.insert190 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre191 = load i64, ptr %.phi.trans.insert190, align 8, !tbaa !94
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.pre193 = load i64, ptr %.phi.trans.insert192, align 8, !tbaa !94
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre195 = load i64, ptr %.phi.trans.insert194, align 8, !tbaa !94
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre197 = load i64, ptr %.phi.trans.insert196, align 8, !tbaa !94
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre199 = load i64, ptr %.phi.trans.insert198, align 8, !tbaa !94
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre201 = load i64, ptr %.phi.trans.insert200, align 8, !tbaa !94
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre203 = load i64, ptr %.phi.trans.insert202, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.e, align 8, !tbaa !94
  %.promoted204 = load i64, ptr %i.a, align 8, !tbaa !94
  %.promoted206 = load i64, ptr %i.p, align 8, !tbaa !94
  %.promoted208 = load i64, ptr %i.l, align 8, !tbaa !94
  %.promoted210 = load i64, ptr %i.q, align 8, !tbaa !94
  %.promoted212 = load i64, ptr %i.d, align 8, !tbaa !94
  %.promoted214 = load i64, ptr %i.r, align 8, !tbaa !94
  %.promoted216 = load i64, ptr %i.g, align 8, !tbaa !94
  %.promoted220 = load i64, ptr %i.k, align 8, !tbaa !94
  %.promoted222 = load i64, ptr %i.c, align 8, !tbaa !94
  %.promoted224 = load i64, ptr %i.i, align 8, !tbaa !94
  %.promoted226 = load i64, ptr %i.o, align 8, !tbaa !94
  %.promoted228 = load i64, ptr %i.n, align 8, !tbaa !94
  %.promoted230 = load i64, ptr %i.j, align 8, !tbaa !94
  %.promoted232 = load i64, ptr %i.f, align 8, !tbaa !94
  br label %.preheader.preheader

bb.b:                                             ; preds = %.preheader.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.ev, ptr %i.e, align 8, !tbaa !94
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !94
  store i64 %i.ey, ptr %i.p, align 8, !tbaa !94
  store i64 %i.em, ptr %i.l, align 8, !tbaa !94
  store i64 %i.fb, ptr %i.q, align 8, !tbaa !94
  store i64 %i.ep, ptr %i.d, align 8, !tbaa !94
  store i64 %i.fe, ptr %i.r, align 8, !tbaa !94
  store i64 %i.es, ptr %i.g, align 8, !tbaa !94
  store i64 %i.he, ptr %0, align 8, !tbaa !94
  store i64 %i.ft, ptr %i.k, align 8, !tbaa !94
  store i64 %i.gi, ptr %i.c, align 8, !tbaa !94
  store i64 %i.gx, ptr %i.i, align 8, !tbaa !94
  store i64 %i.fh, ptr %i.o, align 8, !tbaa !94
  store i64 %i.fw, ptr %i.n, align 8, !tbaa !94
  store i64 %i.gl, ptr %i.j, align 8, !tbaa !94
  store i64 %i.ha, ptr %i.f, align 8, !tbaa !94
  store i64 %i.gf, ptr %i.x, align 8, !tbaa !94
  store i64 %i.gc, ptr %i.w, align 8, !tbaa !94
  store i64 %i.gr, ptr %i.v, align 8, !tbaa !94
  store i64 %i.go, ptr %i.m, align 8, !tbaa !94
  store i64 %i.gu, ptr %i.u, align 8, !tbaa !94
  store i64 %i.fk, ptr %i.b, align 8, !tbaa !94
  store i64 %i.fn, ptr %i.t, align 8, !tbaa !94
  store i64 %i.fq, ptr %i.s, align 8, !tbaa !94
  store i64 %i.fz, ptr %i.h, align 8, !tbaa !94
  ret void

.preheader.preheader:                             ; preds = %bb.a, %.preheader.preheader
  %i.y = phi i64 [ %.promoted232, %bb.a ], [ %i.ha, %.preheader.preheader ]
  %i.z = phi i64 [ %.promoted230, %bb.a ], [ %i.gl, %.preheader.preheader ]
  %i.aa = phi i64 [ %.promoted228, %bb.a ], [ %i.fw, %.preheader.preheader ]
  %i.ab = phi i64 [ %.promoted226, %bb.a ], [ %i.fh, %.preheader.preheader ]
  %i.ac = phi i64 [ %.promoted224, %bb.a ], [ %i.gx, %.preheader.preheader ]
  %i.ad = phi i64 [ %.promoted222, %bb.a ], [ %i.gi, %.preheader.preheader ]
  %i.ae = phi i64 [ %.promoted220, %bb.a ], [ %i.ft, %.preheader.preheader ]
  %i.af = phi i64 [ %.promoted216, %bb.a ], [ %i.es, %.preheader.preheader ] ; 2 uses
  %i.ag = phi i64 [ %.promoted214, %bb.a ], [ %i.fe, %.preheader.preheader ] ; 2 uses
  %i.ah = phi i64 [ %.promoted212, %bb.a ], [ %i.ep, %.preheader.preheader ] ; 2 uses
  %i.ai = phi i64 [ %.promoted210, %bb.a ], [ %i.fb, %.preheader.preheader ] ; 2 uses
  %i.aj = phi i64 [ %.promoted208, %bb.a ], [ %i.em, %.preheader.preheader ] ; 2 uses
  %i.ak = phi i64 [ %.promoted206, %bb.a ], [ %i.ey, %.preheader.preheader ] ; 2 uses
  %i.al = phi i64 [ %.promoted204, %bb.a ], [ %i.ej, %.preheader.preheader ] ; 2 uses
  %i.am = phi i64 [ %.promoted, %bb.a ], [ %i.ev, %.preheader.preheader ] ; 2 uses
  %i.an = phi i64 [ %.pre203, %bb.a ], [ %i.ha, %.preheader.preheader ]
  %i.ao = phi i64 [ %.pre201, %bb.a ], [ %i.gl, %.preheader.preheader ]
  %i.ap = phi i64 [ %.pre199, %bb.a ], [ %i.fw, %.preheader.preheader ]
  %i.aq = phi i64 [ %.pre197, %bb.a ], [ %i.fh, %.preheader.preheader ]
  %i.ar = phi i64 [ %.pre195, %bb.a ], [ %i.gx, %.preheader.preheader ]
  %i.as = phi i64 [ %.pre193, %bb.a ], [ %i.gi, %.preheader.preheader ]
  %i.at = phi i64 [ %.pre191, %bb.a ], [ %i.ft, %.preheader.preheader ]
  %i.au = phi i64 [ %.pre189, %bb.a ], [ %i.gu, %.preheader.preheader ] ; 2 uses
  %i.av = phi i64 [ %.pre187, %bb.a ], [ %i.gf, %.preheader.preheader ] ; 2 uses
  %i.aw = phi i64 [ %.pre185, %bb.a ], [ %i.fq, %.preheader.preheader ] ; 2 uses
  %i.ax = phi i64 [ %.pre183, %bb.a ], [ %i.gr, %.preheader.preheader ] ; 2 uses
  %i.ay = phi i64 [ %.pre181, %bb.a ], [ %i.gc, %.preheader.preheader ] ; 2 uses
  %i.az = phi i64 [ %.pre179, %bb.a ], [ %i.fn, %.preheader.preheader ] ; 2 uses
  %i.ba = phi i64 [ %.pre178, %bb.a ], [ %i.go, %.preheader.preheader ] ; 2 uses
  %i.bb = phi i64 [ %.pre177, %bb.a ], [ %i.fz, %.preheader.preheader ] ; 2 uses
  %i.bc = phi i64 [ %.pre176, %bb.a ], [ %i.fk, %.preheader.preheader ] ; 2 uses
  %i.bd = phi i64 [ %.pre, %bb.a ], [ %i.he, %.preheader.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader.preheader ] ; 2 uses
  %i.be = xor i64 %i.am, %i.bd
  %i.bf = xor i64 %i.be, %i.bc
  %i.bg = xor i64 %i.bf, %i.bb
  %i.bh = xor i64 %i.bg, %i.ba                    ; 3 uses
  %i.bi = xor i64 %i.ak, %i.al
  %i.bj = xor i64 %i.bi, %i.az
  %i.bk = xor i64 %i.bj, %i.ay
  %i.bl = xor i64 %i.bk, %i.ax                    ; 3 uses
  %i.bm = xor i64 %i.ai, %i.aj
  %i.bn = xor i64 %i.bm, %i.aw
  %i.bo = xor i64 %i.bn, %i.av
end_hunk_15
begin_hunk_16_@BN_BLINDING_free:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !1323   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %BN_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 2 uses
  %i.f = and i32 %i.e, 2
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.h) #36
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i32 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ]
  %i.j = and i32 %i.i, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #36
  br label %BN_free.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.b, align 8, !tbaa !185
  br label %BN_free.exit

BN_free.exit:                                     ; preds = %bb.b, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1325 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %BN_free.exit6, label %bb.h

bb.h:                                             ; preds = %BN_free.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !198  ; 2 uses
  %i.p = and i32 %i.o, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.r) #36
  %.pre.i5 = load i32, ptr %i.n, align 4, !tbaa !198
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi i32 [ %.pre.i5, %bb.i ], [ %i.o, %bb.h ]
  %i.t = and i32 %i.s, 1
  %.not.i4 = icmp eq i32 %i.t, 0
  br i1 %.not.i4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @OPENSSL_free(ptr noundef nonnull %i.l) #36
  br label %BN_free.exit6

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.l, align 8, !tbaa !185
  br label %BN_free.exit6

BN_free.exit6:                                    ; preds = %BN_free.exit, %bb.k, %bb.l
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #36
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %BN_free.exit6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @BN_BLINDING_invalidate(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31, ptr %i.a, align 8, !tbaa !1326
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @BN_BLINDING_convert(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1326
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !1326
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = load ptr, ptr %1, align 8, !tbaa !1323
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = tail call i32 @BN_rand_range_ex(ptr noundef %i.f, i64 noundef 1, ptr noundef nonnull readonly %i.g)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1325
  %i.k = load ptr, ptr %1, align 8, !tbaa !1323
  %i.l = tail call i32 @BN_from_montgomery(ptr noundef %i.j, ptr noundef %i.k, ptr noundef nonnull readonly %3, ptr noundef %4)
  %.not20.i.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !1325 ; 2 uses
  %i.n = call i32 @BN_mod_inverse_blinded(ptr noundef %i.m, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef nonnull readonly %3, ptr noundef %4)
  %.not21.i.i = icmp eq i32 %i.n, 0
  br i1 %.not21.i.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8, !tbaa !1323   ; 2 uses
  %i.p = tail call i32 @BN_mod_exp_mont(ptr noundef %i.o, ptr noundef %i.o, ptr noundef readonly %2, ptr noundef nonnull readonly %i.g, ptr noundef %4, ptr noundef nonnull readonly %3)
  %.not22.i.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !1323   ; 2 uses
  %i.r = tail call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef %i.q, ptr noundef readonly %i.q, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %3, ptr noundef %4)
  %.not23.i.i = icmp eq i32 %i.r, 0
  br i1 %.not23.i.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.69, i32 noundef 142) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store i32 31, ptr %i.b, align 8, !tbaa !1326
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !1323   ; 3 uses
  %i.t = tail call i32 @BN_mod_mul_montgomery(ptr noundef %i.s, ptr noundef %i.s, ptr noundef %i.s, ptr noundef readonly %3, ptr noundef %4)
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1325 ; 3 uses
  %i.w = tail call i32 @BN_mod_mul_montgomery(ptr noundef %i.v, ptr noundef %i.v, ptr noundef %i.v, ptr noundef readonly %3, ptr noundef %4)
  %.not17.i = icmp eq i32 %i.w, 0
  br i1 %.not17.i, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12, label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12: ; preds = %bb.g, %bb.h
  store i32 31, ptr %i.b, align 8, !tbaa !1326
  br label %bb.i

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store i32 0, ptr %i.b, align 8, !tbaa !1326
  br label %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread

_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread: ; preds = %bb.h, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !1323
  %i.y = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.x, ptr noundef %3, ptr noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread
  %.0 = phi i32 [ 0, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread16 ], [ %i.y, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread ], [ 0, %_ZL18bn_blinding_updateP14bn_blinding_stPK9bignum_stPK14bn_mont_ctx_stP10bignum_ctx.exit.thread12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @BN_BLINDING_invert(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1325
  %i.c = tail call i32 @BN_mod_mul_montgomery(ptr noundef %0, ptr noundef %0, ptr noundef %i.b, ptr noundef %2, ptr noundef %3)
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %1, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str.35, i32 noundef 36) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %1, -11
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 118, ptr noundef nonnull @.str.35, i32 noundef 41) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1, !tbaa !13
  %i.e = add i64 %1, -3
  %i.f = sub nuw i64 %i.e, %3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 -1, i64 %i.f, i1 false)
  %i.h = xor i64 %3, -1
  %i.i = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !13
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.l = sub i64 0, %3
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.e, %_ZL14OPENSSL_memsetPvim.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %_ZL14OPENSSL_memsetPvim.exit ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_check_PKCS1_type_1(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %4, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.35, i32 noundef 59) #36
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !13
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not29 = icmp eq i8 %i.d, 1
  br i1 %.not29, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not35 = icmp eq i64 %4, 2
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.35, i32 noundef 65) #36
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.032 = phi i64 [ %i.g, %bb.g ], [ 2, %.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.032
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  switch i8 %i.f, label %bb.f [
    i8 0, label %._crit_edge
    i8 -1, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.35, i32 noundef 77) #36
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %4
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !1327

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = icmp eq i64 %.032, %4
  br i1 %i.h, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.g, %.preheader, %._crit_edge
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 131, ptr noundef nonnull @.str.35, i32 noundef 83) #36
  br label %bb.n

bb.h:                                             ; preds = %._crit_edge
  %i.i = icmp ult i64 %.032, 10
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.35, i32 noundef 88) #36
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.j = add i64 %.032, 1                         ; 3 uses
  %i.k = sub i64 %4, %i.j                         ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str.35, i32 noundef 96) #36
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.m = icmp eq i64 %4, %i.j
  br i1 %i.m, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 1 %i.n, i64 %i.k, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.l, %bb.m
  store i64 %i.k, ptr %1, align 8, !tbaa !94
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %._crit_edge.thread, %bb.i, %bb.k, %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @RSA_padding_add_none(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %3, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.35, i32 noundef 108) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %3, %1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 116, ptr noundef nonnull @.str.35, i32 noundef 113) #36
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @PKCS1_MGF1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.env_md_ctx_st, align 8      ; 20 uses
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !857
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not49 = icmp eq i64 %1, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02452 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.e ] ; 5 uses
  %.02751 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.e ] ; 3 uses
  %.03050 = phi i64 [ %1, %.lr.ph ], [ %i.av, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.k = lshr i32 %.02452, 24
  %i.l = trunc nuw i32 %i.k to i8
  store i8 %i.l, ptr %i.a, align 1, !tbaa !13
  %i.m = lshr i32 %.02452, 16
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.f, align 1, !tbaa !13
  %i.o = lshr i32 %.02452, 8
  %i.p = trunc i32 %i.o to i8
  store i8 %i.p, ptr %i.g, align 1, !tbaa !13
  %i.q = trunc i32 %.02452 to i8
  store i8 %i.q, ptr %i.h, align 1, !tbaa !13
  %i.r = load ptr, ptr %5, align 8, !tbaa !865    ; 2 uses
  %.not.i = icmp eq ptr %i.r, %4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %i.i, align 4, !tbaa !859
  %i.t = zext i32 %i.s to i64
  %i.u = call ptr @OPENSSL_malloc(i64 noundef %i.t) #36 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.loopexit.sink.split, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.w) #36
  store ptr %i.u, ptr %i.j, align 8, !tbaa !860
  store ptr %4, ptr %5, align 8, !tbaa !865
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.b
  %i.x = phi ptr [ %4, %.thread.i ], [ %i.r, %bb.b ]
end_hunk_16
begin_hunk_17_@RSA_padding_add_PKCS1_PSS_mgf1:bb.a
  %i.p = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %BN_is_zero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.t, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.s, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !94
  %i.s = or i64 %i.r, %.078.i.i                   ; 2 uses
  %i.t = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.i
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !1344

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.s, %scalar.ph ]
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %BN_is_zero.exit.thread, label %bb.b

BN_is_zero.exit.thread:                           ; preds = %bb.a, %BN_is_zero.exit
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.35, i32 noundef 288) #36
  br label %bb.y

bb.b:                                             ; preds = %BN_is_zero.exit
  %i.u = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %i.u, label %.lr.ph.i.i78, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

.lr.ph.i.i78:                                     ; preds = %bb.b
  %i.v = zext nneg i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i78
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.v, %.lr.ph.i.i78 ] ; 4 uses
  %i.w = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %bn_minimal_width.exit.thread7.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aa = icmp sgt i64 %indvars.iv, 1
  br i1 %i.aa, label %bb.c, label %BN_num_bits.exit, !llvm.loop !192

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bb.b
  %i.ab = sext i32 %i.h to i64
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %.0.lcssa.i9.i = phi i64 [ %i.ab, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %indvars.iv, %bb.c ]
  %i.ac = getelementptr [8 x i8], ptr %i.j, i64 %.0.lcssa.i9.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !94 ; 3 uses
  %.not93 = icmp eq i64 %i.ae, 0
  %i.af = lshr i64 %i.ae, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  %i.ag = select i1 %.not.i.i, i64 %i.ae, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.ag, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not52.i.i, i64 %i.ag, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ai, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not53.i.i, i64 %i.ai, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.ak, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.al, 0              ; 2 uses
  %i.am = select i1 %.not54.i.i, i32 0, i32 4
  %i.an = select i1 %.not54.i.i, i64 %i.ak, i64 %i.al ; 2 uses
  %i.ao = lshr i64 %i.an, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ao, 0              ; 2 uses
  %i.ap = select i1 %.not55.i.i, i32 0, i32 2
  %i.aq = select i1 %.not55.i.i, i64 %i.an, i64 %i.ao
  %i.ar = icmp samesign ugt i64 %i.aq, 1
  %.neg.i.i = zext i1 %i.ar to i32
  %i.as = sext i1 %.not93 to i32
  %i.at = add nsw i32 %i.am, %i.as
  %i.au = add nsw i32 %i.at, %i.ap
  %i.av = add nsw i32 %i.au, %.neg.i.i
  %i.aw = and i32 %i.av, 7
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.d, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.aw, %bn_minimal_width.exit.thread7.i ], [ 7, %bb.d ] ; 2 uses
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.thread7.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %BN_num_bits.exit
  %i.ax = zext nneg i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.f ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ay = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv97
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !94
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.f, label %bn_minimal_width.exit.thread7.i.i.i.loopexit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, -1
  %i.bc = icmp sgt i64 %indvars.iv97, 1
  br i1 %i.bc, label %bb.e, label %RSA_size.exit, !llvm.loop !192

bn_minimal_width.exit.thread7.i.i.i.loopexit:     ; preds = %bb.e
  %i.bd = trunc nuw nsw i64 %indvars.iv97 to i32
  br label %bn_minimal_width.exit.thread7.i.i.i

bn_minimal_width.exit.thread7.i.i.i:              ; preds = %BN_num_bits.exit, %bn_minimal_width.exit.thread7.i.i.i.loopexit
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.bd, %bn_minimal_width.exit.thread7.i.i.i.loopexit ], [ %i.h, %BN_num_bits.exit ]
  %i.be = add nsw i32 %.0.lcssa.i9.i.i.i, -1      ; 2 uses
  %i.bf = shl nsw i32 %i.be, 6
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !94 ; 3 uses
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = lshr i64 %i.bi, 32                      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bk, 0            ; 2 uses
  %i.bl = select i1 %.not.i.i.i.i, i32 0, i32 32
  %i.bm = zext i1 %i.bj to i32
  %i.bn = select i1 %.not.i.i.i.i, i64 %i.bi, i64 %i.bk ; 2 uses
  %i.bo = lshr i64 %i.bn, 16                      ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.bo, 0          ; 2 uses
  %i.bp = select i1 %.not52.i.i.i.i, i32 0, i32 16
  %i.bq = select i1 %.not52.i.i.i.i, i64 %i.bn, i64 %i.bo ; 2 uses
  %i.br = lshr i64 %i.bq, 8                       ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.br, 0          ; 2 uses
  %i.bs = select i1 %.not53.i.i.i.i, i32 0, i32 8
  %i.bt = select i1 %.not53.i.i.i.i, i64 %i.bq, i64 %i.br ; 2 uses
  %i.bu = lshr i64 %i.bt, 4                       ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.bu, 0          ; 2 uses
  %i.bv = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.bw = select i1 %.not54.i.i.i.i, i64 %i.bt, i64 %i.bu ; 2 uses
  %i.bx = lshr i64 %i.bw, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.bx, 0          ; 2 uses
  %i.by = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.bz = select i1 %.not55.i.i.i.i, i64 %i.bw, i64 %i.bx
  %i.ca = icmp samesign ugt i64 %i.bz, 1
  %.neg.i.i.i.i = zext i1 %i.ca to i32
  %i.cb = or disjoint i32 %i.bf, 7
  %i.cc = add nuw nsw i32 %i.cb, %i.bm
  %i.cd = or disjoint i32 %i.cc, %i.bl
  %i.ce = or disjoint i32 %i.cd, %i.bp
  %i.cf = add i32 %i.ce, %i.bs
  %i.cg = add i32 %i.cf, %i.bv
  %i.ch = add i32 %i.cg, %i.by
  %i.ci = add i32 %i.ch, %.neg.i.i.i.i
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = zext nneg i32 %i.cj to i64
  br label %RSA_size.exit

RSA_size.exit:                                    ; preds = %bb.f, %bn_minimal_width.exit.thread7.i.i.i
  %.0.i.i.i = phi i64 [ %i.ck, %bn_minimal_width.exit.thread7.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.cl = icmp eq i32 %.0.i, 0                    ; 2 uses
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RSA_size.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %1, align 1, !tbaa !13
  %i.cn = add nsw i64 %.0.i.i.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %RSA_size.exit
  %.066 = phi ptr [ %i.cm, %bb.g ], [ %1, %RSA_size.exit ] ; 7 uses
  %.064 = phi i64 [ %i.cn, %bb.g ], [ %.0.i.i.i, %RSA_size.exit ] ; 6 uses
  %i.co = add nuw nsw i64 %i.d, 2
  %i.cp = icmp ult i64 %.064, %i.co
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.35, i32 noundef 301) #36
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  switch i32 %5, label %bb.l [
    i32 -1, label %bb.o
    i32 -2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub nsw i64 %.064, %i.d
  %i.cq = add nsw i64 %reass.sub, -2
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cr = icmp slt i32 %5, 0
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str.35, i32 noundef 315) #36
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.cs = zext nneg i32 %5 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.n
  %.061 = phi i64 [ %i.cs, %bb.n ], [ %i.cq, %bb.k ], [ %i.d, %bb.j ] ; 17 uses
  %i.ct = sub nuw nsw i64 %.064, %i.d             ; 2 uses
  %i.cu = add nsw i64 %i.ct, -2
  %i.cv = icmp ult i64 %i.cu, %.061
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.35, i32 noundef 322) #36
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %.not73 = icmp eq i64 %.061, 0                  ; 2 uses
  br i1 %.not73, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = tail call ptr @OPENSSL_malloc(i64 noundef %.061) #36 ; 3 uses
  %.not74 = icmp eq ptr %i.cw, null
  br i1 %.not74, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef nonnull %i.cw, i64 noundef %.061, ptr noundef nonnull @_ZZ14BCM_rand_bytesE19kZeroAdditionalData) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.063 = phi ptr [ %i.cw, %bb.s ], [ null, %bb.q ] ; 13 uses
  %i.cy = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.066, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !859
  %i.dd = zext i32 %i.dc to i64
  %i.de = tail call ptr @OPENSSL_malloc(i64 noundef %i.dd) #36 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %EVP_MD_CTX_cleanup.exit83, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  tail call void @OPENSSL_free(ptr noundef null) #36
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !860
  store ptr %3, ptr %6, align 8, !tbaa !865
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !866
  call void %i.di(ptr noundef nonnull %6) #36, !inline_history !867
  %i.dj = load ptr, ptr %6, align 8, !tbaa !865
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !868
  call void %i.dl(ptr noundef nonnull %6, ptr noundef nonnull @_ZL10kPSSZeroes, i64 noundef 8) #36, !inline_history !869
  %i.dm = load ptr, ptr %6, align 8, !tbaa !865
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !868
  call void %i.do(ptr noundef nonnull %6, ptr noundef %2, i64 noundef %i.d) #36, !inline_history !869
  %i.dp = load ptr, ptr %6, align 8, !tbaa !865
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !868
  call void %i.dr(ptr noundef nonnull %6, ptr noundef %.063, i64 noundef %.061) #36, !inline_history !869
  %i.ds = load ptr, ptr %6, align 8, !tbaa !865
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !870
  call void %i.du(ptr noundef nonnull %6, ptr noundef %i.cz) #36, !inline_history !871
  %.pre.i80 = load ptr, ptr %6, align 8, !tbaa !865
  %i.dv = load ptr, ptr %i.dg, align 8, !tbaa !860
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre.i80, i64 44
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !859
  %i.dy = zext i32 %i.dx to i64
  call void @OPENSSL_cleanse(ptr noundef %i.dv, i64 noundef %i.dy) #36
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.dz) #36
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !872 ; 2 uses
  %.not.i81 = icmp eq ptr %i.eb, null
  br i1 %.not.i81, label %EVP_MD_CTX_cleanup.exit, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !873
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !875
  call void %i.ec(ptr noundef %i.ee) #36, !inline_history !876
  br label %EVP_MD_CTX_cleanup.exit

EVP_MD_CTX_cleanup.exit:                          ; preds = %.thread.i, %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.ef = call i32 @PKCS1_MGF1(ptr noundef %.066, i64 noundef %i.cy, ptr noundef %i.cz, i64 noundef %i.d, ptr noundef nonnull %spec.select)
  %.not76 = icmp eq i32 %i.ef, 0
  br i1 %.not76, label %bb.y, label %bb.v

bb.v:                                             ; preds = %EVP_MD_CTX_cleanup.exit
  %i.eg = add nsw i64 %.061, %i.d
  %i.eh = sub nsw i64 %.064, %i.eg
  %i.ei = getelementptr i8, ptr %.066, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -2     ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = xor i8 %i.ek, 1
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !13
  br i1 %.not73, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.v
  %i.em = getelementptr i8, ptr %i.ei, i64 -1     ; 7 uses
  %min.iters.check112 = icmp ult i64 %.061, 4
  br i1 %min.iters.check112, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.en = xor i64 %i.d, -1
  %i.eo = getelementptr i8, ptr %.066, i64 %.064
  %scevgep = getelementptr i8, ptr %i.eo, i64 %i.en
  %scevgep110 = getelementptr i8, ptr %.063, i64 %.061
  %bound0 = icmp ult ptr %i.em, %scevgep110
  %bound1 = icmp ult ptr %.063, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check113 = icmp ult i64 %.061, 32
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %.061, 28
  %n.vec115 = and i64 %.061, -32                  ; 5 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 %n.vec115
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body116 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %index117 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.063, i64 %index117 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load118 = load <16 x i8>, ptr %i.er, align 1, !tbaa !13, !alias.scope !1345
  %wide.load119 = load <16 x i8>, ptr %i.es, align 1, !tbaa !13, !alias.scope !1345
  %i.et = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load120 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  %wide.load121 = load <16 x i8>, ptr %i.et, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  %i.eu = xor <16 x i8> %wide.load120, %wide.load118
  %i.ev = xor <16 x i8> %wide.load121, %wide.load119
  store <16 x i8> %i.eu, ptr %next.gep, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  store <16 x i8> %i.ev, ptr %i.et, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  %index.next122 = add nuw i64 %index117, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.ew, label %middle.block123, label %vector.body116, !llvm.loop !1350

middle.block123:                                  ; preds = %vector.body116
  %cmp.n124 = icmp eq i64 %.061, %n.vec115
  br i1 %cmp.n124, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block123
  %min.epilog.iters.check = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec115, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %.061, -4                   ; 4 uses
  %i.ex = getelementptr i8, ptr %i.em, i64 %n.vec126
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next131, %vec.epilog.vector.body ] ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.em, i64 %index127 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.063, i64 %index127
  %wide.load129 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !13, !alias.scope !1345
  %wide.load130 = load <4 x i8>, ptr %next.gep128, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  %i.ez = xor <4 x i8> %wide.load130, %wide.load129
  store <4 x i8> %i.ez, ptr %next.gep128, align 1, !tbaa !13, !alias.scope !1348, !noalias !1345
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1351

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n132 = icmp eq i64 %.061, %n.vec126
  br i1 %cmp.n132, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.092.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec115, %vec.epilog.iter.check ], [ %n.vec126, %vec.epilog.middle.block ] ; 3 uses
  %.06291.ph = phi ptr [ %i.em, %iter.check ], [ %i.em, %vector.memcheck ], [ %i.eq, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %.061, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.092.prol = phi i64 [ %i.fg, %vec.epilog.scalar.ph.prol ], [ %.092.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.06291.prol = phi ptr [ %i.fd, %vec.epilog.scalar.ph.prol ], [ %.06291.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.063, i64 %.092.prol
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.06291.prol, i64 1 ; 2 uses
  %i.fe = load i8, ptr %.06291.prol, align 1, !tbaa !13
  %i.ff = xor i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %.06291.prol, align 1, !tbaa !13
  %i.fg = add nuw i64 %.092.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1352

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.092.unr = phi i64 [ %.092.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fg, %vec.epilog.scalar.ph.prol ]
  %.06291.unr = phi ptr [ %.06291.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fd, %vec.epilog.scalar.ph.prol ]
  %i.fh = sub i64 %.092.ph, %.061
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.092 = phi i64 [ %i.gg, %vec.epilog.scalar.ph ], [ %.092.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.06291 = phi ptr [ %i.gd, %vec.epilog.scalar.ph ], [ %.06291.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
end_hunk_17
begin_hunk_18_@BCM_slhdsa_sha2_128s_prehash_verify:bb.a
  %.not.i.i = icmp eq i64 %1, 7856
  br i1 %.not.i.i, label %bb.h, label %BCM_slhdsa_sha2_128s_verify_internal.exit

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.s = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.t = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %0, i64 noundef 16) #36 ; 0 uses
  %i.u = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %2, i64 noundef 16) #36 ; 0 uses
  %i.v = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.n, i64 noundef 16) #36 ; 0 uses
  %i.w = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.f, i64 noundef 2) #36 ; 0 uses
  %i.x = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.g, i64 noundef %i.k) #36 ; 0 uses
  %i.y = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %3, i64 noundef %4) #36 ; 0 uses
  %i.z = call i32 @SHA256_Final(ptr noundef nonnull %i.r, ptr noundef nonnull %8) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.aa = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  %.val.i.i = load i64, ptr %i.ab, align 1
  %i.ac = call noundef i64 @llvm.bswap.i64(i64 %.val.i.i)
  %i.ad = lshr i64 %i.ac, 8
  %i.ae = and i64 %i.ad, 18014398509481983        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.0.copyload.i.i.i = load i16, ptr %i.af, align 4
  %i.ag = and i16 %.0.copyload.i.i.i, -255
  %i.ah = call i16 @llvm.bswap.i16(i16 %i.ag)     ; 3 uses
  %i.ai = zext nneg i16 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ak = call noundef i64 @llvm.bswap.i64(i64 %i.ae)
  store i64 %i.ak, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 3, ptr %i.am, align 1, !tbaa !13
  %i.an = lshr i16 %i.ah, 8
  %i.ao = trunc nuw nsw i16 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !13
  %i.aq = trunc i16 %i.ah to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @slhdsa_fors_pk_from_sig(ptr noundef nonnull %i.e, ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.d)
  %i.as = call i32 @slhdsa_ht_verify(ptr noundef nonnull %i.p, ptr noundef nonnull %i.e, i64 noundef %i.ae, i32 noundef %i.ai, ptr noundef nonnull %i.n, ptr noundef nonnull %2)
  %.not24.i.i = icmp eq i32 %i.as, 0
  %..i.i = select i1 %.not24.i.i, i32 2, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %BCM_slhdsa_sha2_128s_verify_internal.exit

BCM_slhdsa_sha2_128s_verify_internal.exit:        ; preds = %bb.g, %bb.h
  %.1.i.i = phi i32 [ %..i.i, %bb.h ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread

_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread: ; preds = %bb.d, %bb.b, %BCM_slhdsa_sha2_128s_verify_internal.exit
  %.0 = phi i32 [ %.1.i.i, %BCM_slhdsa_sha2_128s_verify_internal.exit ], [ 2, %bb.b ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread
  %.1 = phi i32 [ %.0, %_ZL26slhdsa_get_context_and_oidPhPmmPKhmim.exit.thread ], [ 2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_prfmsg(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 13 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = load <16 x i8>, ptr %i.a, align 16, !tbaa !13
  %i.d = xor <16 x i8> %i.c, splat (i8 54)
  store <16 x i8> %i.d, ptr %i.a, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 54, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.f = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 64) #36 ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %3, i64 noundef 2) #36 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %4, i64 noundef %5) #36 ; 0 uses
  %i.k = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %6, i64 noundef %7) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.l = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #36 ; 0 uses
  %i.m = load <16 x i8>, ptr %i.a, align 16, !tbaa !13
  %i.n = xor <16 x i8> %i.m, splat (i8 106)
  store <16 x i8> %i.n, ptr %i.a, align 16, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 92, i64 48, i1 false)
  %i.o = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.p = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 64) #36 ; 0 uses
  %i.q = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef 32) #36 ; 0 uses
  %i.r = call i32 @SHA256_Final(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #7

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_hmsg(ptr nofree noundef writeonly captures(none) initializes((0, 30)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [68 x i8], align 16               ; 7 uses
  %9 = alloca %struct.sha256_state_st, align 4    ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.e = call i32 @SHA256_Init(ptr noundef nonnull %9) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %1, i64 noundef 16) #36 ; 0 uses
  %i.g = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %2, i64 noundef 16) #36 ; 0 uses
  %i.h = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef nonnull %4, i64 noundef 2) #36 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %5, i64 noundef %6) #36 ; 0 uses
  %i.k = call i32 @SHA256_Update(ptr noundef nonnull %9, ptr noundef %7, i64 noundef %8) #36 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = call i32 @SHA256_Final(ptr noundef nonnull %i.l, ptr noundef nonnull %9) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.n = call ptr @SHA256(ptr noundef nonnull %i.a, i64 noundef 68, ptr noundef nonnull %i.b) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %0, ptr noundef nonnull readonly align 16 dereferenceable(30) %i.b, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_thash_tl(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = call i32 @SHA256_Init(ptr noundef nonnull %4) #36 ; 0 uses
  %i.c = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  %i.d = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.e = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %3, i64 noundef 22) #36 ; 0 uses
  %i.f = call i32 @SHA256_Update(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 560) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_tls1_prf(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.thread52, label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  %i.b = tail call ptr @EVP_md5_sha1() #36
  %i.c = icmp eq ptr %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.d = lshr i64 %4, 1                           ; 2 uses
  %i.e = sub nuw i64 %4, %i.d                     ; 2 uses
  %i.f = tail call ptr @EVP_md5() #36
  %i.g = tail call fastcc noundef i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr noundef %1, i64 noundef %2, ptr noundef %i.f, ptr noundef %3, i64 noundef %i.e, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread52, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL13EVP_sha1_once, ptr noundef nonnull @_ZL13EVP_sha1_initv) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit, %.thread
  %.143 = phi i64 [ %i.e, %.thread ], [ %4, %_ZL14OPENSSL_memsetPvim.exit ]
  %.141 = phi ptr [ %i.h, %.thread ], [ %3, %_ZL14OPENSSL_memsetPvim.exit ]
  %.139 = phi ptr [ @_ZL16EVP_sha1_storage, %.thread ], [ %0, %_ZL14OPENSSL_memsetPvim.exit ]
  %i.i = tail call fastcc noundef i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr noundef %1, i64 noundef %2, ptr noundef %.139, ptr noundef %.141, i64 noundef %.143, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10)
  br label %.thread52

.thread52:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.1
}

declare ptr @EVP_md5_sha1() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL11tls1_P_hashPhmPK9env_md_stPKhmPKcmS4_mS4_m(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %11 = alloca %struct.hmac_ctx_st, align 8       ; 23 uses
  %12 = alloca %struct.hmac_ctx_st, align 8       ; 21 uses
  %13 = alloca %struct.hmac_ctx_st, align 8       ; 22 uses
  %i.d = alloca [64 x i8], align 16               ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !857
  %i.h = zext i32 %i.g to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, i8 0, i64 104, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %12, i8 0, i64 104, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %13, i8 0, i64 104, i1 false)
  %i.i = call i32 @HMAC_Init_ex(ptr noundef nonnull %13, ptr noundef %3, i64 noundef %4, ptr noundef %2, ptr poison)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %HMAC_CTX_copy_ex.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.l = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k)
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %HMAC_CTX_copy_ex.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.o = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n)
  %.not8.i = icmp eq i32 %i.o, 0
  br i1 %.not8.i, label %HMAC_CTX_copy_ex.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 35 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.p, ptr noundef nonnull readonly %i.q)
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %HMAC_CTX_copy_ex.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %13, align 8, !tbaa !1211
  store ptr %i.s, ptr %11, align 8, !tbaa !1211
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !868
  call void %i.v(ptr noundef nonnull %i.p, ptr noundef %5, i64 noundef %6) #36, !inline_history !1206
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !868
  call void %i.y(ptr noundef nonnull %i.p, ptr noundef %7, i64 noundef %8) #36, !inline_history !1206
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !868
  call void %i.ab(ptr noundef nonnull %i.p, ptr noundef %9, i64 noundef %10) #36, !inline_history !1206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !870
  call void %i.ae(ptr noundef nonnull %i.p, ptr noundef nonnull %i.c) #36, !inline_history !1207
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !865 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !857
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !860
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !859
  %i.al = zext i32 %i.ak to i64
  call void @OPENSSL_cleanse(ptr noundef %i.ai, i64 noundef %i.al) #36
  %i.am = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.p, ptr noundef nonnull %i.m)
  %.not.i49 = icmp eq i32 %i.am, 0
  br i1 %.not.i49, label %HMAC_Final.exit.thread, label %HMAC_Final.exit

HMAC_Final.exit.thread:                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %HMAC_CTX_copy_ex.exit.thread

HMAC_Final.exit:                                  ; preds = %bb.e
  %i.an = zext i32 %i.ag to i64
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !868
  call void %i.aq(ptr noundef nonnull %i.p, ptr noundef nonnull %i.c, i64 noundef %i.an) #36, !inline_history !1208
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !870
  call void %i.at(ptr noundef nonnull %i.p, ptr noundef nonnull %i.d) #36, !inline_history !1207
  %.pre.i11.i = load ptr, ptr %i.p, align 8, !tbaa !865 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i11.i, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !857
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !860
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i11.i, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !859
  %i.az = zext i32 %i.ay to i64
  call void @OPENSSL_cleanse(ptr noundef %i.aw, i64 noundef %i.az) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.ba = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k)
  %.not.i50114 = icmp eq i32 %i.ba, 0
  br i1 %.not.i50114, label %.thread, label %.lr.ph118

.lr.ph118:                                        ; preds = %HMAC_Final.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph118, %bb.p
  %.038117 = phi ptr [ %0, %.lr.ph118 ], [ %i.dk, %bb.p ] ; 4 uses
  %.040116 = phi i64 [ %1, %.lr.ph118 ], [ %i.dl, %bb.p ] ; 3 uses
  %.085115 = phi i32 [ %i.av, %.lr.ph118 ], [ %i.el, %bb.p ]
  %i.bf = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n)
  %.not8.i51 = icmp eq i32 %i.bf, 0
  br i1 %.not8.i51, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.p, ptr noundef nonnull readonly %i.q)
  %.not9.i52 = icmp eq i32 %i.bg, 0
  br i1 %.not9.i52, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %13, align 8, !tbaa !1211
  store ptr %i.bh, ptr %11, align 8, !tbaa !1211
  %i.bi = zext i32 %.085115 to i64
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !868
  call void %i.bl(ptr noundef nonnull %i.p, ptr noundef nonnull %i.d, i64 noundef %i.bi) #36, !inline_history !1206
  %i.bm = icmp ugt i64 %.040116, %i.h
  br i1 %i.bm, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bn = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.bb, ptr noundef nonnull readonly %i.j)
  %.not.i55 = icmp eq i32 %i.bn, 0
  br i1 %.not.i55, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.bc, ptr noundef nonnull readonly %i.m)
  %.not8.i56 = icmp eq i32 %i.bo, 0
  br i1 %.not8.i56, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.bd, ptr noundef nonnull readonly %i.p)
  %.not9.i57 = icmp eq i32 %i.bp, 0
  br i1 %.not9.i57, label %.thread, label %HMAC_CTX_copy_ex.exit59

HMAC_CTX_copy_ex.exit59:                          ; preds = %bb.k
  %i.bq = load ptr, ptr %11, align 8, !tbaa !1211
  store ptr %i.bq, ptr %12, align 8, !tbaa !1211
  br label %bb.l

bb.l:                                             ; preds = %HMAC_CTX_copy_ex.exit59, %bb.h
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !868
  call void %i.bt(ptr noundef nonnull %i.p, ptr noundef %5, i64 noundef %6) #36, !inline_history !1206
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !868
  call void %i.bw(ptr noundef nonnull %i.p, ptr noundef %7, i64 noundef %8) #36, !inline_history !1206
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !868
  call void %i.bz(ptr noundef nonnull %i.p, ptr noundef %9, i64 noundef %10) #36, !inline_history !1206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !870
  call void %i.cc(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b) #36, !inline_history !1207
  %.pre.i.i60 = load ptr, ptr %i.p, align 8, !tbaa !865 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.i.i60, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !857
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !860
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i.i60, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !859
  %i.ci = zext i32 %i.ch to i64
  call void @OPENSSL_cleanse(ptr noundef %i.cf, i64 noundef %i.ci) #36
  %i.cj = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.p, ptr noundef nonnull %i.m)
  %.not.i61 = icmp eq i32 %i.cj, 0
  br i1 %.not.i61, label %HMAC_Final.exit65.thread, label %bb.m

HMAC_Final.exit65.thread:                         ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ck = zext i32 %i.ce to i64
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !868
  call void %i.cn(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b, i64 noundef %i.ck) #36, !inline_history !1208
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !865
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !870
  call void %i.cq(ptr noundef nonnull %i.p, ptr noundef nonnull %i.e) #36, !inline_history !1207
  %.pre.i11.i62 = load ptr, ptr %i.p, align 8, !tbaa !865 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre.i11.i62, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !857 ; 2 uses
  %i.ct = load ptr, ptr %i.ah, align 8, !tbaa !860
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i11.i62, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !859
  %i.cw = zext i32 %i.cv to i64
  call void @OPENSSL_cleanse(ptr noundef %i.ct, i64 noundef %i.cw) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.cx = zext i32 %i.cs to i64
  %spec.select = call i64 @llvm.umin.i64(i64 %.040116, i64 %i.cx) ; 10 uses
  %.not124 = icmp eq i32 %i.cs, 0
  br i1 %.not124, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp samesign ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp samesign ult i64 %spec.select, 32
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i64 %spec.select, 28
  %n.vec = and i64 %spec.select, 4294967264       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load = load <16 x i8>, ptr %i.cz, align 16, !tbaa !13
  %wide.load135 = load <16 x i8>, ptr %i.da, align 16, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.038117, i64 %index ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load136 = load <16 x i8>, ptr %i.db, align 1, !tbaa !13
  %wide.load137 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !13
  %i.dd = xor <16 x i8> %wide.load136, %wide.load
  %i.de = xor <16 x i8> %wide.load137, %wide.load135
  store <16 x i8> %i.dd, ptr %i.db, align 1, !tbaa !13
  store <16 x i8> %i.de, ptr %i.dc, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1441

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %spec.select, 4294967292    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 %index139
  %wide.load140 = load <4 x i8>, ptr %i.dg, align 4, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.038117, i64 %index139 ; 2 uses
  %wide.load141 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !13
  %i.di = xor <4 x i8> %wide.load141, %wide.load140
  store <4 x i8> %i.di, ptr %i.dh, align 1, !tbaa !13
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next142, %n.vec138
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1442

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %spec.select, %n.vec138
  br i1 %cmp.n143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.034113.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec138, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %.038117, i64 %spec.select
  %i.dl = sub nuw i64 %.040116, %spec.select      ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.034113 = phi i64 [ %i.ds, %.lr.ph ], [ %.034113.ph, %.lr.ph.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %.034113
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.038117, i64 %.034113 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !13
  %i.ds = add nuw nsw i64 %.034113, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1443

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.dt = load ptr, ptr %i.bd, align 8, !tbaa !865
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !870
  call void %i.dv(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a) #36, !inline_history !1207
  %.pre.i.i66 = load ptr, ptr %i.bd, align 8, !tbaa !865 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre.i.i66, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !857
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !860
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre.i.i66, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !859
  %i.eb = zext i32 %i.ea to i64
  call void @OPENSSL_cleanse(ptr noundef %i.dy, i64 noundef %i.eb) #36
  %i.ec = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bc)
  %.not.i67 = icmp eq i32 %i.ec, 0
  br i1 %.not.i67, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.p, %bb.f, %bb.g, %HMAC_Final.exit, %HMAC_Final.exit65.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %HMAC_CTX_copy_ex.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ed = zext i32 %i.dx to i64
  %i.ee = load ptr, ptr %i.bd, align 8, !tbaa !865
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !868
  call void %i.eg(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, i64 noundef %i.ed) #36, !inline_history !1208
  %i.eh = load ptr, ptr %i.bd, align 8, !tbaa !865
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !870
  call void %i.ej(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.d) #36, !inline_history !1207
  %.pre.i11.i68 = load ptr, ptr %i.bd, align 8, !tbaa !865 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre.i11.i68, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !857
  %i.em = load ptr, ptr %i.be, align 8, !tbaa !860
  %i.en = getelementptr inbounds nuw i8, ptr %.pre.i11.i68, i64 44
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !859
  %i.ep = zext i32 %i.eo to i64
  call void @OPENSSL_cleanse(ptr noundef %i.em, i64 noundef %i.ep) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.eq = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %i.k)
  %.not.i50 = icmp eq i32 %i.eq, 0
  br i1 %.not.i50, label %.thread, label %bb.f

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %HMAC_CTX_copy_ex.exit.thread

HMAC_CTX_copy_ex.exit.thread:                     ; preds = %bb.b, %bb.c, %bb.d, %.thread, %HMAC_Final.exit.thread, %bb.a, %bb.q
  %.036 = phi i32 [ 1, %bb.q ], [ 0, %.thread ], [ 0, %HMAC_Final.exit.thread ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 64) #36
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.et) #36
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !872 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i, label %EVP_MD_CTX_cleanup.exit.i, label %bb.r

bb.r:                                             ; preds = %HMAC_CTX_copy_ex.exit.thread
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !873
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !875
  call void %i.ew(ptr noundef %i.ey) #36, !inline_history !1210
  br label %EVP_MD_CTX_cleanup.exit.i

EVP_MD_CTX_cleanup.exit.i:                        ; preds = %bb.r, %HMAC_CTX_copy_ex.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, i8 0, i64 32, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.fb) #36
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !872 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.fd, null
  br i1 %.not.i4.i, label %EVP_MD_CTX_cleanup.exit5.i, label %bb.s

bb.s:                                             ; preds = %EVP_MD_CTX_cleanup.exit.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !873
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !875
  call void %i.fe(ptr noundef %i.fg) #36, !inline_history !1210
  br label %EVP_MD_CTX_cleanup.exit5.i

EVP_MD_CTX_cleanup.exit5.i:                       ; preds = %bb.s, %EVP_MD_CTX_cleanup.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i8 0, i64 32, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.fi) #36
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !872 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.fk, null
  br i1 %.not.i6.i, label %HMAC_CTX_cleanup.exit, label %bb.t

bb.t:                                             ; preds = %EVP_MD_CTX_cleanup.exit5.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !873
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !875
  call void %i.fl(ptr noundef %i.fn) #36, !inline_history !1210
  br label %HMAC_CTX_cleanup.exit

HMAC_CTX_cleanup.exit:                            ; preds = %EVP_MD_CTX_cleanup.exit5.i, %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, i8 0, i64 32, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %11, i64 noundef 104) #36
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.fr) #36
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !872 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i72, label %EVP_MD_CTX_cleanup.exit.i73, label %bb.u

bb.u:                                             ; preds = %HMAC_CTX_cleanup.exit
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !873
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !875
  call void %i.fu(ptr noundef %i.fw) #36, !inline_history !1210
  br label %EVP_MD_CTX_cleanup.exit.i73

EVP_MD_CTX_cleanup.exit.i73:                      ; preds = %bb.u, %HMAC_CTX_cleanup.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i8 0, i64 32, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.fz) #36
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !872 ; 2 uses
  %.not.i4.i74 = icmp eq ptr %i.gb, null
  br i1 %.not.i4.i74, label %EVP_MD_CTX_cleanup.exit5.i75, label %bb.v

bb.v:                                             ; preds = %EVP_MD_CTX_cleanup.exit.i73
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !873
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !875
  call void %i.gc(ptr noundef %i.ge) #36, !inline_history !1210
  br label %EVP_MD_CTX_cleanup.exit5.i75

EVP_MD_CTX_cleanup.exit5.i75:                     ; preds = %bb.v, %EVP_MD_CTX_cleanup.exit.i73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i8 0, i64 32, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.gg) #36
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !872 ; 2 uses
  %.not.i6.i76 = icmp eq ptr %i.gi, null
  br i1 %.not.i6.i76, label %HMAC_CTX_cleanup.exit77, label %bb.w

bb.w:                                             ; preds = %EVP_MD_CTX_cleanup.exit5.i75
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !873
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !875
  call void %i.gj(ptr noundef %i.gl) #36, !inline_history !1210
  br label %HMAC_CTX_cleanup.exit77

HMAC_CTX_cleanup.exit77:                          ; preds = %EVP_MD_CTX_cleanup.exit5.i75, %bb.w
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i8 0, i64 32, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %12, i64 noundef 104) #36
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !860
  call void @OPENSSL_free(ptr noundef %i.gp) #36
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !872 ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i78, label %EVP_MD_CTX_cleanup.exit.i79, label %bb.x

bb.x:                                             ; preds = %HMAC_CTX_cleanup.exit77
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !873
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !875
  call void %i.gs(ptr noundef %i.gu) #36, !inline_history !1210
  br label %EVP_MD_CTX_cleanup.exit.i79

EVP_MD_CTX_cleanup.exit.i79:                      ; preds = %bb.x, %HMAC_CTX_cleanup.exit77
end_hunk_18
begin_hunk_19_@_ZL32ec_GFp_nistp224_point_mul_publicPK11ec_group_stP11EC_JACOBIANPK9EC_SCALARPKS2_S6_:bb.a
  %i.ei = select i1 %isnotneg.not.i67, i64 0, i64 %i.dw
  %i.ej = select i1 %isnotneg.not.i67, i64 0, i64 %i.dp
  %i.ek = select i1 %isnotneg.not.i67, i64 1099511627775, i64 -1
  %i.el = and i64 %i.ek, %i.dv
  %.neg.i68 = ashr i64 %i.eh, 63
  %i.em = add i64 %.neg.i68, %i.dt                ; 3 uses
  %i.en = lshr i64 %i.em, 7
  %i.eo = and i64 %i.en, 72057594037927936
  %i.ep = add nsw i64 %i.eo, %i.em
  %.neg43.i69 = ashr i64 %i.em, 63
  %i.eq = add i64 %.neg43.i69, %i.el              ; 3 uses
  %i.er = ashr i64 %i.eq, 56
  %i.es = add nsw i64 %i.er, %i.ej                ; 3 uses
  %i.et = ashr i64 %i.es, 56
  %i.eu = add nsw i64 %i.et, %i.ei                ; 2 uses
  %i.ev = shl i64 %i.eq, 56
  %i.ew = or i64 %i.ep, %i.ev
  store i64 %i.ew, ptr %i.dk, align 8, !tbaa !94
  %i.ex = lshr i64 %i.eq, 8
  %i.ey = and i64 %i.ex, 281474976710655
  %i.ez = shl i64 %i.es, 48
  %i.fa = or disjoint i64 %i.ez, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !94
  %i.fc = lshr i64 %i.es, 16
  %i.fd = and i64 %i.fc, 1099511627775
  %i.fe = shl i64 %i.eu, 40
  %i.ff = or disjoint i64 %i.fe, %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !94
  %i.fh = lshr i64 %i.eu, 24
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void

bb.c:                                             ; preds = %bb.a, %bb.n
  %.0101 = phi i32 [ 1, %bb.a ], [ %.2, %bb.n ]   ; 2 uses
  %.057100 = phi i64 [ 220, %bb.a ], [ %.pre-phi, %bb.n ] ; 19 uses
  %.not = icmp eq i32 %.0101, 0                   ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ZL17p224_point_doublePmS_S_PKmS1_S1_(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.fj = icmp samesign ult i64 %.057100, 28
  br i1 %i.fj, label %_ZL12p224_get_bitPK9EC_SCALARm.exit83, label %bb.f

_ZL12p224_get_bitPK9EC_SCALARm.exit83:            ; preds = %bb.e
  %i.fk = add nuw nsw i64 %.057100, 4
  %i.fl = load i64, ptr %i.f, align 8, !tbaa !94
  %i.fm = lshr i64 %i.fl, %i.fk
  %i.fn = add nuw nsw i64 %.057100, 12
  %i.fo = load i64, ptr %i.g, align 8, !tbaa !94
  %i.fp = lshr i64 %i.fo, %i.fn
  %i.fq = add nuw nsw i64 %.057100, 20
  %i.fr = load i64, ptr %i.h, align 8, !tbaa !94
  %i.fs = lshr i64 %i.fr, %i.fq
  %i.ft = add nuw nsw i64 %.057100, 28
  %i.fu = load i64, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.fv = lshr i64 %i.fu, %i.ft
  %i.fw = and i64 %i.fv, 1
  %i.fx = trunc i64 %i.fm to i1
  %.idx = select i1 %i.fx, i64 768, i64 0
  %i.fy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_p224_pre_comp, i64 1536), i64 %.idx
  %i.fz = trunc i64 %i.fp to i1
  %.idx58 = select i1 %i.fz, i64 384, i64 0
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx58
  %i.gb = trunc i64 %i.fs to i1
  %.idx59 = select i1 %i.gb, i64 192, i64 0
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx59
  %i.gd = getelementptr inbounds nuw [96 x i8], ptr %i.gc, i64 %i.fw ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  call fastcc void @_ZL14p224_point_addPmS_S_PKmS1_S1_iS1_S1_S1_(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull %i.gd, ptr noundef nonnull %i.ge, ptr noundef nonnull %i.gf)
  %i.gg = add nuw nsw i64 %.057100, 168           ; 2 uses
  %i.gh = lshr i64 %i.gg, 6
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !94
  %i.gk = and i64 %i.gg, 63
  %i.gl = lshr i64 %i.gj, %i.gk
  %i.gm = add nuw nsw i64 %.057100, 112           ; 2 uses
  %i.gn = lshr i64 %i.gm, 6
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !94
  %i.gq = and i64 %i.gm, 63
  %i.gr = lshr i64 %i.gp, %i.gq
  %i.gs = add nuw nsw i64 %.057100, 56            ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !94
  %i.gw = and i64 %i.gs, 63
  %i.gx = lshr i64 %i.gv, %i.gw
  %i.gy = lshr i64 %i.fu, %.057100
  %i.gz = and i64 %i.gy, 1
  %i.ha = trunc i64 %i.gl to i1
  %.idx60 = select i1 %i.ha, i64 768, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZL15g_p224_pre_comp, i64 %.idx60
  %i.hc = trunc i64 %i.gr to i1
  %.idx61 = select i1 %i.hc, i64 384, i64 0
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx61
  %i.he = trunc i64 %i.gx to i1
  %.idx62 = select i1 %i.he, i64 192, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx62
  %i.hg = getelementptr inbounds nuw [96 x i8], ptr %i.hf, i64 %i.gz ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  call fastcc void @_ZL14p224_point_addPmS_S_PKmS1_S1_iS1_S1_S1_(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hi)
  br label %bb.f

bb.f:                                             ; preds = %_ZL12p224_get_bitPK9EC_SCALARm.exit83, %bb.e
  %.lhs.trunc = trunc nuw i64 %.057100 to i8
  %i.hj = urem i8 %.lhs.trunc, 5
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = add nsw i64 %.057100, -1
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.hl = icmp eq i64 %.057100, 220
  br i1 %i.hl, label %_ZL12p224_get_bitPK9EC_SCALARm.exit93, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hm = add nuw nsw i64 %.057100, 4             ; 2 uses
  %i.hn = lshr i64 %i.hm, 6
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !94
  %i.hq = and i64 %i.hm, 63
  %i.hr = lshr i64 %i.hp, %i.hq
  %i.hs = shl i64 %i.hr, 5
  %i.ht = and i64 %i.hs, 32
  br label %_ZL12p224_get_bitPK9EC_SCALARm.exit93

_ZL12p224_get_bitPK9EC_SCALARm.exit93:            ; preds = %bb.g, %bb.h
  %.0.i84 = phi i64 [ %i.ht, %bb.h ], [ 0, %bb.g ]
  %i.hu = add nuw nsw i64 %.057100, 3             ; 2 uses
  %i.hv = lshr i64 %i.hu, 6
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !94
  %i.hy = and i64 %i.hu, 63
  %i.hz = lshr i64 %i.hx, %i.hy
  %i.ia = shl i64 %i.hz, 4
  %i.ib = and i64 %i.ia, 16
  %i.ic = or disjoint i64 %i.ib, %.0.i84
  %i.id = add nuw nsw i64 %.057100, 2             ; 2 uses
  %i.ie = lshr i64 %i.id, 6
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !94
  %i.ih = and i64 %i.id, 63
  %i.ii = lshr i64 %i.ig, %i.ih
  %i.ij = shl i64 %i.ii, 3
  %i.ik = and i64 %i.ij, 8
  %i.il = or disjoint i64 %i.ic, %i.ik
  %i.im = add nuw nsw i64 %.057100, 1             ; 2 uses
  %i.in = lshr i64 %i.im, 6
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !94
  %i.iq = and i64 %i.im, 63
  %i.ir = lshr i64 %i.ip, %i.iq
  %i.is = shl i64 %i.ir, 2
  %i.it = and i64 %i.is, 4
  %i.iu = or disjoint i64 %i.il, %i.it
  %i.iv = lshr i64 %.057100, 6
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !94
  %i.iy = and i64 %.057100, 63
  %i.iz = lshr i64 %i.ix, %i.iy
  %i.ja = shl i64 %i.iz, 1
  %i.jb = and i64 %i.ja, 2
  %i.jc = or disjoint i64 %i.iu, %i.jb            ; 2 uses
  %i.jd = add nsw i64 %.057100, -1                ; 5 uses
  %i.je = icmp ugt i64 %i.jd, 223
  br i1 %i.je, label %_ZL12p224_get_bitPK9EC_SCALARm.exit95, label %bb.i

bb.i:                                             ; preds = %_ZL12p224_get_bitPK9EC_SCALARm.exit93
  %i.jf = lshr i64 %i.jd, 6
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !94
  %i.ji = and i64 %i.jd, 63
  %i.jj = lshr i64 %i.jh, %i.ji
  %i.jk = and i64 %i.jj, 1
  %i.jl = or disjoint i64 %i.jk, %i.jc
  br label %_ZL12p224_get_bitPK9EC_SCALARm.exit95

_ZL12p224_get_bitPK9EC_SCALARm.exit95:            ; preds = %_ZL12p224_get_bitPK9EC_SCALARm.exit93, %bb.i
  %.0.i94 = phi i64 [ %i.jl, %bb.i ], [ %i.jc, %_ZL12p224_get_bitPK9EC_SCALARm.exit93 ] ; 3 uses
  %i.jm = lshr i64 %.0.i94, 5                     ; 2 uses
  %i.jn = add nsw i64 %i.jm, -1
  %i.jo = sub nsw i64 0, %i.jm                    ; 2 uses
  %i.jp = sub nuw nsw i64 63, %.0.i94
  %i.jq = and i64 %i.jp, %i.jo
  %i.jr = and i64 %i.jn, %.0.i94
  %i.js = or i64 %i.jr, %i.jq                     ; 2 uses
  %i.jt = lshr i64 %i.js, 1
  %i.ju = sub nuw nsw i64 %i.js, %i.jt
  %i.jv = and i64 %i.jo, 1
  %i.jw = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.jw, i64 96, i1 false)
  %.not63 = icmp eq i64 %i.jv, 0
  br i1 %.not63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL12p224_get_bitPK9EC_SCALARm.exit95
  %i.jx = load i64, ptr %i.i, align 16, !tbaa !94
  %i.jy = zext i64 %i.jx to i128
  %i.jz = load i64, ptr %i.j, align 8, !tbaa !94
  %i.ka = zext i64 %i.jz to i128
  %i.kb = load i64, ptr %i.k, align 16, !tbaa !94
  %i.kc = zext i64 %i.kb to i128
  %i.kd = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ke = zext i64 %i.kd to i128
  %i.kf = sub nuw nsw i128 170141183460469229388950806354771050240, %i.kc ; 2 uses
  %i.kg = lshr i128 %i.kf, 56
  %reass.sub.i = sub nuw nsw i128 %i.kg, %i.ke
  %i.kh = add nuw nsw i128 %reass.sub.i, 18446744073709551360 ; 2 uses
  %i.ki = and i128 %i.kf, 72057594037927935
  %i.kj = lshr i128 %i.kh, 56                     ; 2 uses
  %i.kk = and i128 %i.kh, 72057594037927935
  %i.kl = shl nuw nsw i128 %i.kj, 40
  %i.km = and i128 %i.kl, 72056494526300160
  %i.kn = add nuw nsw i128 %i.kj, %i.jy
  %i.ko = sub nuw nsw i128 -170141183460469231713240559642174521088, %i.kn ; 2 uses
  %i.kp = lshr i128 %i.ko, 56
  %reass.sub = sub nsw i128 %i.km, %i.ka
  %i.kq = add nsw i128 %reass.sub, 170141183460469229388914496082775375616
  %i.kr = add nuw i128 %i.kq, %i.kp               ; 2 uses
  %i.ks = trunc i128 %i.ko to i64
  %i.kt = and i64 %i.ks, 72057594037927935
  store i64 %i.kt, ptr %i.i, align 16, !tbaa !94
  %i.ku = lshr i128 %i.kr, 56
  %i.kv = add nuw nsw i128 %i.ku, %i.ki           ; 2 uses
  %i.kw = trunc i128 %i.kr to i64
  %i.kx = and i64 %i.kw, 72057594037927935
  store i64 %i.kx, ptr %i.j, align 8, !tbaa !94
  %i.ky = lshr i128 %i.kv, 56
  %i.kz = add nuw nsw i128 %i.ky, %i.kk
  %i.la = trunc i128 %i.kv to i64
  %i.lb = and i64 %i.la, 72057594037927935
  store i64 %i.lb, ptr %i.k, align 16, !tbaa !94
  %i.lc = trunc nuw nsw i128 %i.kz to i64
  store i64 %i.lc, ptr %i.l, align 8, !tbaa !94
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL12p224_get_bitPK9EC_SCALARm.exit95
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL14p224_point_addPmS_S_PKmS1_S1_iS1_S1_S1_(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.jd, %bb.l ], [ %i.jd, %bb.m ] ; 2 uses
  %.2 = phi i32 [ %.0101, %._crit_edge ], [ 0, %bb.l ], [ 0, %bb.m ]
  %i.ld = icmp ult i64 %.pre-phi, 221
  br i1 %i.ld, label %bb.c, label %bb.b, !llvm.loop !1571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL25ec_GFp_nistp224_felem_mulPK11ec_group_stP8EC_FELEMPKS2_S5_(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.b = and i64 %i.a, 72057594037927935
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.a, i64 8)
  %i.f = and i64 %i.e, 72057594037927935
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.d, i64 16)
  %i.j = and i64 %i.i, 72057594037927935
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  %i.m = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.h, i64 24)
  %i.n = and i64 %i.m, 72057594037927935
  %i.o = load i64, ptr %3, align 8, !tbaa !94     ; 2 uses
  %i.p = and i64 %i.o, 72057594037927935
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.o, i64 8)
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94   ; 2 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.r, i64 16)
  %i.x = and i64 %i.w, 72057594037927935
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.v, i64 24)
  %i.ab = and i64 %i.aa, 72057594037927935
  %i.ac = zext nneg i64 %i.b to i128              ; 4 uses
  %i.ad = zext nneg i64 %i.p to i128              ; 4 uses
  %i.ae = mul nuw nsw i128 %i.ad, %i.ac
  %i.af = zext nneg i64 %i.t to i128              ; 4 uses
  %i.ag = mul nuw nsw i128 %i.af, %i.ac
  %i.ah = zext nneg i64 %i.f to i128              ; 4 uses
  %i.ai = mul nuw nsw i128 %i.ad, %i.ah
  %i.aj = zext nneg i64 %i.x to i128              ; 4 uses
  %i.ak = mul nuw nsw i128 %i.aj, %i.ac
  %i.al = mul nuw nsw i128 %i.af, %i.ah
  %i.am = zext nneg i64 %i.j to i128              ; 4 uses
  %i.an = mul nuw nsw i128 %i.ad, %i.am
  %i.ao = zext nneg i64 %i.ab to i128             ; 4 uses
  %i.ap = mul nuw nsw i128 %i.ao, %i.ac
  %i.aq = mul nuw nsw i128 %i.aj, %i.ah
  %i.ar = mul nuw nsw i128 %i.af, %i.am
  %i.as = zext nneg i64 %i.n to i128              ; 4 uses
  %i.at = mul nuw nsw i128 %i.as, %i.ad
  %i.au = mul nuw nsw i128 %i.ao, %i.ah
  %i.av = mul nuw nsw i128 %i.aj, %i.am
  %i.aw = mul nuw nsw i128 %i.af, %i.as
  %i.ax = mul nuw nsw i128 %i.ao, %i.am
  %i.ay = mul nuw nsw i128 %i.aj, %i.as
  %i.az = add nuw nsw i128 %i.ax, %i.ay           ; 3 uses
  %i.ba = mul nuw nsw i128 %i.ao, %i.as           ; 3 uses
  %i.bb = lshr i128 %i.ba, 16
  %i.bc = add nuw nsw i128 %i.av, %i.aw
  %i.bd = add nuw nsw i128 %i.bc, %i.au
  %i.be = add nuw nsw i128 %i.bd, %i.bb           ; 3 uses
  %i.bf = shl i128 %i.ba, 40
  %i.bg = and i128 %i.bf, 72056494526300160
  %i.bh = lshr i128 %i.az, 16
  %i.bi = shl i128 %i.az, 40
  %i.bj = and i128 %i.bi, 72056494526300160
  %i.bk = lshr i128 %i.be, 16
  %i.bl = add nuw i128 %i.an, 170141183460469229370504062281061498880
  %i.bm = add nuw i128 %i.bl, %i.al
  %i.bn = add nuw i128 %i.bm, %i.ak
  %i.bo = sub nuw i128 %i.bn, %i.ba
  %i.bp = add nuw i128 %i.bo, %i.bj
  %i.bq = add nuw i128 %i.bp, %i.bk               ; 2 uses
  %i.br = shl i128 %i.be, 40
  %i.bs = and i128 %i.br, 72056494526300160
  %i.bt = lshr i128 %i.bq, 56
  %i.bu = add nuw nsw i128 %i.ar, %i.at
  %i.bv = add nuw nsw i128 %i.bu, %i.aq
  %i.bw = add nuw nsw i128 %i.bv, %i.ap
  %i.bx = add nuw nsw i128 %i.bw, %i.bg
  %i.by = add nuw nsw i128 %i.bx, %i.bh
  %i.bz = add nuw nsw i128 %i.by, %i.bt           ; 3 uses
  %i.ca = and i128 %i.bq, 72057594037927935
  %i.cb = lshr i128 %i.bz, 56                     ; 2 uses
  %i.cc = and i128 %i.bz, 72057594037927935
  %i.cd = lshr i128 %i.bz, 72
  %i.ce = add nuw nsw i128 %i.cd, %i.ca
  %i.cf = shl nuw nsw i128 %i.cb, 40
  %i.cg = and i128 %i.cf, 72056494526300160
  %.neg18 = add nuw nsw i128 %i.ae, -170141183460469231731687303715884072960
  %i.ch = add nuw nsw i128 %i.be, %i.cb
  %i.ci = sub nuw i128 %.neg18, %i.ch             ; 2 uses
  %i.cj = lshr i128 %i.ci, 56
  %i.ck = add nuw i128 %i.ai, 170141183460469229370468033484042534912
  %i.cl = add nuw i128 %i.ck, %i.ag
  %i.cm = sub nuw i128 %i.cl, %i.az
  %i.cn = add nuw i128 %i.cm, %i.bs
  %i.co = add nuw i128 %i.cn, %i.cg
  %i.cp = add nuw i128 %i.co, %i.cj               ; 2 uses
  %i.cq = trunc i128 %i.ci to i64
  %i.cr = and i64 %i.cq, 72057594037927935        ; 2 uses
  %i.cs = lshr i128 %i.cp, 56
  %i.ct = add nuw nsw i128 %i.ce, %i.cs           ; 2 uses
  %i.cu = trunc i128 %i.cp to i64                 ; 2 uses
  %i.cv = and i64 %i.cu, 72057594037927935        ; 2 uses
  %i.cw = lshr i128 %i.ct, 56
  %i.cx = add nuw nsw i128 %i.cw, %i.cc
  %i.cy = trunc i128 %i.ct to i64                 ; 2 uses
  %i.cz = and i64 %i.cy, 72057594037927935
  %i.da = trunc nuw nsw i128 %i.cx to i64         ; 3 uses
  %i.db = lshr i64 %i.da, 56                      ; 2 uses
  %i.dc = sub nsw i64 %i.cr, %i.db
  %i.dd = shl nuw nsw i64 %i.db, 40
  %i.de = add nuw nsw i64 %i.dd, %i.cv
  %i.df = and i64 %i.da, 72057594037927935
  %i.dg = or i64 %i.cv, 1099511627775
  %i.dh = and i64 %i.dg, %i.cy
  %i.di = and i64 %i.dh, %i.da
  %i.dj = add nuw nsw i64 %i.di, 1
  %i.dk = and i64 %i.cu, 1099511627775
  %i.dl = add nsw i64 %i.cr, -1
  %i.dm = add nsw i64 %i.dl, %i.dk
  %i.dn = ashr i64 %i.dm, 63
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = and i64 %i.do, 72057594037927935        ; 2 uses
  %i.dq = add nsw i64 %i.dp, -1
  %isnotneg.not.i = icmp eq i64 %i.dp, 0          ; 3 uses
  %i.dr = select i1 %isnotneg.not.i, i64 0, i64 %i.df
  %i.ds = select i1 %isnotneg.not.i, i64 0, i64 %i.cz
  %i.dt = select i1 %isnotneg.not.i, i64 1099511627775, i64 144115188075855871
  %i.du = and i64 %i.dt, %i.de
  %.neg.i = ashr i64 %i.dq, 63
  %i.dv = add nsw i64 %.neg.i, %i.dc              ; 3 uses
  %i.dw = lshr i64 %i.dv, 7
  %i.dx = and i64 %i.dw, 72057594037927936
  %i.dy = add nsw i64 %i.dx, %i.dv
end_hunk_19
begin_hunk_20_@_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh:bb.a
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.w, ptr noundef %i.a)
  store i8 8, ptr %i.p, align 16, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8320
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.x, ptr noundef %i.a)
  store i8 9, ptr %i.p, align 16, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9344
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.y, ptr noundef %i.a)
  store i8 10, ptr %i.p, align 16, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10368
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.z, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 36960 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5120) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(5120) %i.n, i64 5120, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 37984
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 39008
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40032
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 41056
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 42080 ; 5 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE(ptr noundef nonnull %i.af, ptr noundef nonnull %i.m, ptr noundef nonnull %i.aa)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 43104
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 44128
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 45152
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 46176
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 47200
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ak)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi6EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr noundef nonnull %i.af, ptr noundef nonnull %i.af, ptr noundef nonnull %i.o)
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 11392
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi6EEEvPNS0_6vectorIXT_EEES4_PKS3_(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.an = call i32 @CBB_init_fixed(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 1952) #36 ; 0 uses
  %i.ao = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi6EEEiP6cbb_stPKNS0_10public_keyIXT_EEE(ptr noundef nonnull %5, ptr noundef nonnull %i.d)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, i8 0, i64 224, i1 false)
  store i32 3, ptr %3, align 8, !tbaa !1220
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !1224
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 136, ptr %i.as, align 8, !tbaa !1225
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef 1952)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.ap, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.d) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS1_11private_keyIXT_EXT0_EEEPKhE9values_stNS1_11DeleterFreeIS9_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS1_11private_keyIXT_EXT0_EEEPKhE9values_stNS1_11DeleterFreeIS9_EEED2Ev.exit: ; preds = %bb.a, %bb.d
  %.133 = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.133
}

declare i32 @CBB_init_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi6ELi5EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 13 uses
  %i.a = alloca [168 x i8], align 16              ; 4 uses
  %i.b = load <16 x i8>, ptr %1, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 41
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv20 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next21, %bb.c ] ; 3 uses
  %i.m = trunc i64 %indvars.iv20 to i8
  %i.n = getelementptr inbounds nuw [5120 x i8], ptr %0, i64 %indvars.iv20
  br label %BORINGSSL_keccak_absorb.exit

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 6
  br i1 %exitcond23.not, label %bb.b, label %.preheader, !llvm.loop !1585

BORINGSSL_keccak_absorb.exit:                     ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i8
  %i.p = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.o, ptr %i.k, align 8, !tbaa !13
  store i8 %i.m, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre26 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre27, %bb.k ]
  %.pre.i25 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01115.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.2.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader36

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !1220   ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !13
  %i.y = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i.pre = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader36

.preheader36:                                     ; preds = %switch.lookup, %bb.d
  %.ph = phi i64 [ %.pre26, %bb.d ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph37 = phi i64 [ %.pre.i25, %bb.d ], [ %.pre.i.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader36, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre28 = phi i64 [ %.pre27, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader36 ]
  %i.ad = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader36 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph37, %.preheader36 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader36 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader36 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre27 = phi i64 [ %.pre30.i, %bb.h ], [ %.pre28, %bb.g ] ; 2 uses
  %i.ag = phi i64 [ %.pre30.i, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ah = sub i64 %i.ag, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre31.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.ak = phi i64 [ %i.ag, %bb.i ], [ %.pre31.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %i.ak, %spec.select.i           ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !1245
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !1246

bb.k:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bd, label %bb.d, label %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, !llvm.loop !1586

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.m
  %.014.i = phi i64 [ %i.bb, %bb.m ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.113.i = phi i32 [ %.2.i, %bb.m ], [ %.01115.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.i ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = and i8 %i.as, 127
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, 8380417
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.ay = add nsw i32 %.113.i, 1
  %i.az = sext i32 %.113.i to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.ay, %bb.l ], [ %.113.i, %BORINGSSL_keccak_squeeze.exit ] ; 3 uses
  %i.bb = add nuw nsw i64 %.014.i, 3
  %i.bc = icmp samesign ult i64 %.014.i, 165
  %i.bd = icmp slt i32 %.2.i, 256                 ; 2 uses
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !1587

_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1588
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE(ptr nofree noundef captures(none) initializes((0, 6144)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  %3 = alloca %"struct.mldsa::(anonymous namespace)::scalar", align 4 ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6144) %0, i8 0, i64 6144, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [5120 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.f = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  br label %bb.c

bb.b:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4
  ret void

bb.c:                                             ; preds = %bb.c, %.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw i64 %i.l, %i.i                   ; 2 uses
  %i.n = mul i64 %i.m, 4236238847
  %i.o = and i64 %i.n, 4294967295
  %i.p = mul nuw nsw i64 %i.o, 8380417
  %i.q = add i64 %i.p, %i.m
  %i.r = lshr i64 %i.q, 32                        ; 3 uses
  %i.s = add nsw i64 %i.r, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.s, 63
  %i.t = add nuw nsw i64 %i.r, 4286586879
  %i.u = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.v = and i64 %i.r, %i.u
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.t, %i.w
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, label %bb.c, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i15, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit ], [ 0, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i14 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i14
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = add i32 %i.ae, %i.ac                    ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = add nsw i64 %i.ag, -8380417
  %.neg.i.i.i.i = ashr i64 %i.ah, 63
  %i.ai = add i32 %i.af, -8380417
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.al = and i64 %i.ak, %i.ag
  %i.am = xor i64 %i.ak, -1
  %i.an = and i64 %i.aj, %i.am
  %i.ao = or disjoint i64 %i.an, %i.al
  %i.ap = trunc nuw i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ab, align 4, !tbaa !18
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, 256
  br i1 %exitcond.not.i16, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, !llvm.loop !1256

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw i64 %i.aw, %i.at                ; 2 uses
  %i.ay = mul i64 %i.ax, 4236238847
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = mul nuw nsw i64 %i.az, 8380417
  %i.bb = add i64 %i.ba, %i.ax
  %i.bc = lshr i64 %i.bb, 32                      ; 3 uses
  %i.bd = add nsw i64 %i.bc, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.bd, 63
  %i.be = add nuw nsw i64 %i.bc, 4286586879
  %i.bf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !156 ; 2 uses
  %i.bg = and i64 %i.bc, %i.bf
  %i.bh = xor i64 %i.bf, -1
  %i.bi = and i64 %i.be, %i.bh
  %i.bj = or disjoint i64 %i.bi, %i.bg
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.1
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.d, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i14.1 = phi i64 [ %indvars.iv.next.i15.1, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1 ], [ 0, %bb.d ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i14.1 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i14.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = add nsw i64 %i.br, -8380417
  %.neg.i.i.i.i.1 = ashr i64 %i.bs, 63
  %i.bt = add i32 %i.bq, -8380417
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.1) #38, !srcloc !156 ; 2 uses
  %i.bw = and i64 %i.bv, %i.br
  %i.bx = xor i64 %i.bv, -1
  %i.by = and i64 %i.bu, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bw
  %i.ca = trunc nuw i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bm, align 4, !tbaa !18
  %indvars.iv.next.i15.1 = add nuw nsw i64 %indvars.iv.i14.1, 1 ; 2 uses
  %exitcond.not.i16.1 = icmp eq i64 %indvars.iv.next.i15.1, 256
  br i1 %exitcond.not.i16.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, !llvm.loop !1256

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.e ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.2
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul nuw i64 %i.ch, %i.ce                ; 2 uses
  %i.cj = mul i64 %i.ci, 4236238847
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = mul nuw nsw i64 %i.ck, 8380417
  %i.cm = add i64 %i.cl, %i.ci
  %i.cn = lshr i64 %i.cm, 32                      ; 3 uses
  %i.co = add nsw i64 %i.cn, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.co, 63
  %i.cp = add nuw nsw i64 %i.cn, 4286586879
end_hunk_20
begin_hunk_21_@_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_:bb.a

bb.au:                                            ; preds = %bb.ba, %bb.k
  %indvars.iv.i.i209 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i210.1, %bb.ba ] ; 4 uses
  %.117.i.i = phi i32 [ 0, %bb.k ], [ %.2.i.i.1, %bb.ba ] ; 4 uses
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.i209
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !18
  %.not.i.i = icmp eq i32 %i.atn, 0
  br i1 %.not.i.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ato = icmp slt i32 %.117.i.i, 55
  br i1 %i.ato, label %bb.aw, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.av, %bb.ay, %bb.m, %bb.p, %bb.t, %bb.w, %bb.aa, %bb.ad, %bb.ah, %bb.ak, %bb.ao, %bb.ar
  call void @abort() #37
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.atp = trunc i64 %indvars.iv.i.i209 to i8
  %i.atq = add nsw i32 %.117.i.i, 1
  %i.atr = sext i32 %.117.i.i to i64
  %i.ats = getelementptr inbounds i8, ptr %i.aqj, i64 %i.atr
  store i8 %i.atp, ptr %i.ats, align 1, !tbaa !13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.2.i.i = phi i32 [ %i.atq, %bb.aw ], [ %.117.i.i, %bb.au ] ; 4 uses
  %indvars.iv.next.i.i210 = or disjoint i64 %indvars.iv.i.i209, 1 ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i210
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !18
  %.not.i.i.1 = icmp eq i32 %i.atu, 0
  br i1 %.not.i.i.1, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.atv = icmp slt i32 %.2.i.i, 55
  br i1 %i.atv, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.atw = trunc i64 %indvars.iv.next.i.i210 to i8
  %i.atx = add nsw i32 %.2.i.i, 1
  %i.aty = sext i32 %.2.i.i to i64
  %i.atz = getelementptr inbounds i8, ptr %i.aqj, i64 %i.aty
  store i8 %i.atw, ptr %i.atz, align 1, !tbaa !13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.2.i.i.1 = phi i32 [ %i.atx, %bb.az ], [ %.2.i.i, %bb.ax ] ; 3 uses
  %indvars.iv.next.i.i210.1 = add nuw nsw i64 %indvars.iv.i.i209, 2 ; 2 uses
  %exitcond.not.i.i211.1 = icmp eq i64 %indvars.iv.next.i.i210.1, 256
  br i1 %exitcond.not.i.i211.1, label %.preheader.1.i.i, label %bb.au, !llvm.loop !1626

bb.bb:                                            ; preds = %bb.at
  %i.aua = trunc i32 %.2.5.i.i.1 to i8
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aqj, i64 60
  store i8 %i.aua, ptr %i.aub, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.auc = call i64 @CBB_len(ptr noundef nonnull %12) #36
  %i.aud = icmp eq i64 %i.auc, 3309
  br i1 %i.aud, label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @abort() #37
  unreachable

bb.bd:                                            ; preds = %_ZN5mldsa12_GLOBAL__N_117vector_max_signedILi6EEEjPKNS0_6vectorIXT_EEE.exit, %_ZN5mldsa12_GLOBAL__N_117vector_count_onesILi6EEEmPKNS0_6vectorIXT_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.aue = add i16 %.0, 5
  br label %vector.ph506, !llvm.loop !1627

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split: ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split, %bb.h, %bb.bb
  %.134 = phi i32 [ 0, %bb.h ], [ 1, %bb.bb ], [ 0, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread
  %.4227 = phi i32 [ %.134, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  ret i32 %.4227
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_129scalar_sample_in_ball_vartimeEPNS0_6scalarEPKhii(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 48, 65) %2, i32 noundef range(i32 49, 61) %3) unnamed_addr #5 {
.preheader.lr.ph:
  %4 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 11 uses
  %i.a = alloca [136 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !1220
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !1224
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  store i64 136, ptr %i.d, align 8, !tbaa !1225
  %i.e = zext nneg i32 %2 to i64
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef 136)
  %.0.copyload.i = load i64, ptr %i.a, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.f = sub nuw nsw i32 256, %3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.023 = phi i64 [ %i.g, %.preheader.lr.ph ], [ %i.be, %bb.j ] ; 3 uses
  %.01722 = phi i32 [ 8, %.preheader.lr.ph ], [ %i.ai, %bb.j ]
  %.01821 = phi i64 [ %.0.copyload.i, %.preheader.lr.ph ], [ %i.bd, %bb.j ] ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.a:                                             ; preds = %.preheader, %BORINGSSL_keccak_squeeze.exit
  %.1 = phi i32 [ %i.ai, %BORINGSSL_keccak_squeeze.exit ], [ %.01722, %.preheader ] ; 2 uses
  %i.j = icmp eq i32 %.1, 136
  br i1 %i.j, label %bb.b, label %BORINGSSL_keccak_squeeze.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 4, !tbaa !1224
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %4, align 8, !tbaa !1220   ; 2 uses
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %switch.shiftamt = shl nuw nsw i32 %i.m, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.o = load i64, ptr %i.h, align 8, !tbaa !1226
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = xor i8 %i.q, %switch.masked
  store i8 %i.r, ptr %i.p, align 1, !tbaa !13
  %i.s = load i64, ptr %i.d, align 8, !tbaa !1225
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = xor i8 %i.v, -128
  store i8 %i.w, ptr %i.u, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.b)
  store i32 1, ptr %i.c, align 4, !tbaa !1224
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.b
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !1245
  %.pre = load i64, ptr %i.d, align 8, !tbaa !1225
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.e
  %i.x = phi i64 [ %.pre, %bb.e ], [ %i.aa, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.y = phi i64 [ %.pre.i, %bb.e ], [ %i.ah, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %.02429.i = phi i64 [ 136, %bb.e ], [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %.02528.i = phi ptr [ %i.a, %bb.e ], [ %i.af, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.b)
  store i64 0, ptr %i.i, align 8, !tbaa !1245
  %.pre30.i = load i64, ptr %i.d, align 8, !tbaa !1225
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i64 [ %.pre30.i, %bb.g ], [ %i.x, %bb.f ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.g ], [ %i.y, %bb.f ] ; 4 uses
  %i.ab = sub i64 %i.aa, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ab) ; 4 uses
  %i.ac = icmp eq i64 %i.aa, %.pre31.i
  br i1 %i.ac, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.ad, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.i, %bb.h
  %i.ae = phi i64 [ %i.aa, %bb.h ], [ %.pre31.i, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.ag = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.ah = add i64 %i.ae, %spec.select.i           ; 2 uses
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !1245
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %BORINGSSL_keccak_squeeze.exit, label %bb.f, !llvm.loop !1246

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.a
  %.2 = phi i32 [ %.1, %bb.a ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.ai = add nsw i32 %.2, 1                      ; 2 uses
  %i.aj = sext i32 %.2 to i64
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not = icmp samesign ult i64 %.023, %i.am
  br i1 %.not, label %bb.a, label %bb.j, !llvm.loop !1628

bb.j:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.023
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !18
  %.018.tr = trunc i64 %.01821 to i32
  %i.aq = shl i32 %.018.tr, 1
  %i.ar = and i32 %i.aq, 2                        ; 2 uses
  %i.as = sub nuw nsw i32 8380418, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = add nsw i64 %i.at, -8380418
  %.neg.i.i.i.i = ashr i64 %i.au, 63
  %i.av = sub nsw i32 1, %i.ar
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.ay = and i64 %i.ax, %i.at
  %i.az = xor i64 %i.ax, -1
  %i.ba = and i64 %i.az, %i.aw
  %i.bb = or disjoint i64 %i.ay, %i.ba
  %i.bc = trunc nuw i64 %i.bb to i32
  store i32 %i.bc, ptr %i.an, align 4, !tbaa !18
  %i.bd = lshr i64 %.01821, 1
  %i.be = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, 256
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1629
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_118vector_mult_scalarILi6EEEvPNS0_6vectorIXT_EEEPKS3_PKNS0_6scalarE(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.c                   ; 2 uses
  %i.h = mul i64 %i.g, 4236238847
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 8380417
  %i.k = add i64 %i.j, %i.g
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = add nsw i64 %i.l, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.m, 63
  %i.n = add nuw nsw i64 %i.l, 4286586879
  %i.o = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.p = and i64 %i.l, %i.o
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.1
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.z                 ; 2 uses
  %i.ae = mul i64 %i.ad, 4236238847
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw nsw i64 %i.af, 8380417
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 3 uses
  %i.aj = add nsw i64 %i.ai, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.aj, 63
  %i.ak = add nuw nsw i64 %i.ai, 4286586879
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !156 ; 2 uses
  %i.am = and i64 %i.ai, %i.al
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = or disjoint i64 %i.ao, %i.am
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.1
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw                ; 2 uses
  %i.bb = mul i64 %i.ba, 4236238847
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = mul nuw nsw i64 %i.bc, 8380417
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32                      ; 3 uses
  %i.bg = add nsw i64 %i.bf, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.bg, 63
  %i.bh = add nuw nsw i64 %i.bf, 4286586879
  %i.bi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !156 ; 2 uses
  %i.bj = and i64 %i.bf, %i.bi
  %i.bk = xor i64 %i.bi, -1
  %i.bl = and i64 %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.bl, %i.bj
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !18
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.3
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.3
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bt                ; 2 uses
  %i.by = mul i64 %i.bx, 4236238847
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = mul nuw nsw i64 %i.bz, 8380417
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = lshr i64 %i.cb, 32                      ; 3 uses
  %i.cd = add nsw i64 %i.cc, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.cd, 63
  %i.ce = add nuw nsw i64 %i.cc, 4286586879
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !156 ; 2 uses
  %i.cg = and i64 %i.cc, %i.cf
  %i.ch = xor i64 %i.cf, -1
  %i.ci = and i64 %i.ce, %i.ch
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.3
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw i64 %i.ct, %i.cq                ; 2 uses
  %i.cv = mul i64 %i.cu, 4236238847
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = mul nuw nsw i64 %i.cw, 8380417
  %i.cy = add i64 %i.cx, %i.cu
  %i.cz = lshr i64 %i.cy, 32                      ; 3 uses
  %i.da = add nsw i64 %i.cz, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.da, 63
  %i.db = add nuw nsw i64 %i.cz, 4286586879
end_hunk_21
begin_hunk_22_@_ZN5mlkem12_GLOBAL__N_145mlkem_generate_key_external_seed_no_self_testILi3EEEvPhPNS0_11private_keyIXT_EEEPKh:bb.a
  %i.jx = select <8 x i1> %i.jv, <8 x i16> %i.jr, <8 x i16> zeroinitializer
  %i.jy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.js, <8 x i16> zeroinitializer)
  %i.jz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jt, <8 x i16> zeroinitializer)
  %i.ka = or <8 x i16> %i.jw, %i.jy
  %i.kb = or <8 x i16> %i.jx, %i.jz
  store <8 x i16> %i.ka, ptr %i.jm, align 2, !tbaa !639
  store <8 x i16> %i.kb, ptr %i.jn, align 2, !tbaa !639
  %index.next113 = add nuw i64 %index108, 16      ; 2 uses
  %i.kc = icmp eq i64 %index.next113, 256
  br i1 %i.kc, label %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.1.i27, label %vector.body107, !llvm.loop !1666

_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.1.i27: ; preds = %vector.body107
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.1.i27
  %index117 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_.exit.1.i27 ], [ %index.next122, %vector.body116 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %index117 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %wide.load118 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !639
  %wide.load119 = load <8 x i16>, ptr %i.kf, align 2, !tbaa !639
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index117 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %wide.load120 = load <8 x i16>, ptr %i.kg, align 2, !tbaa !639
  %wide.load121 = load <8 x i16>, ptr %i.kh, align 2, !tbaa !639
  %i.ki = add <8 x i16> %wide.load120, %wide.load118 ; 2 uses
  %i.kj = add <8 x i16> %wide.load121, %wide.load119 ; 2 uses
  %i.kk = add <8 x i16> %i.ki, splat (i16 -3329)  ; 2 uses
  %i.kl = add <8 x i16> %i.kj, splat (i16 -3329)  ; 2 uses
  %i.km = icmp slt <8 x i16> %i.kk, zeroinitializer
  %i.kn = icmp slt <8 x i16> %i.kl, zeroinitializer
  %i.ko = select <8 x i1> %i.km, <8 x i16> %i.ki, <8 x i16> zeroinitializer
  %i.kp = select <8 x i1> %i.kn, <8 x i16> %i.kj, <8 x i16> zeroinitializer
  %i.kq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kk, <8 x i16> zeroinitializer)
  %i.kr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kl, <8 x i16> zeroinitializer)
  %i.ks = or <8 x i16> %i.ko, %i.kq
  %i.kt = or <8 x i16> %i.kp, %i.kr
  store <8 x i16> %i.ks, ptr %i.ke, align 2, !tbaa !639
  store <8 x i16> %i.kt, ptr %i.kf, align 2, !tbaa !639
  %index.next122 = add nuw i64 %index117, 16      ; 2 uses
  %i.ku = icmp eq i64 %index.next122, 256
  br i1 %i.ku, label %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit, label %vector.body116, !llvm.loop !1667

_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit: ; preds = %vector.body116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.kv = call i32 @CBB_init_fixed(ptr noundef nonnull %7, ptr noundef %0, i64 noundef 1184) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.kw = call i32 @CBB_add_space(ptr noundef nonnull %7, ptr noundef nonnull %i.a, i64 noundef 1152) #36
  %.not.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread, label %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread: ; preds = %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.b

_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit: ; preds = %_ZN5mlkem12_GLOBAL__N_110vector_addILi3EEEvPNS0_6vectorIXT_EEEPKS3_.exit
  %i.kx = load ptr, ptr %i.a, align 8, !tbaa !1035
  call fastcc void @_ZN5mlkem12_GLOBAL__N_113vector_encodeILi3EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef %i.kx, ptr noundef nonnull %1, i32 noundef 12)
  %i.ky = call i32 @CBB_add_bytes(ptr noundef nonnull %7, ptr noundef nonnull %i.k, i64 noundef 32) #36
  %.not4.i.not = icmp eq i32 %i.ky, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %.not4.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit.thread, %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit
  call void @abort() #37
  unreachable

bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_124mlkem_marshal_public_keyILi3EEE12bcm_status_tP6cbb_stPKNS0_10public_keyIXT_EEE.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 1568
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %3, i8 0, i64 232, i1 false)
  store i64 136, ptr %i.la, align 8, !tbaa !1225
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef 1184)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.kz, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 7744
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.lb, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.lc, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi3EEEvPNS0_6matrixIXT_EEEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 12 uses
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 21 uses
  %i.b = load <16 x i8>, ptr %1, align 1          ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 41 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.2
  %indvars.iv22 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next23, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.2 ] ; 3 uses
  %i.m = trunc i64 %indvars.iv22 to i8            ; 3 uses
  %i.n = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %indvars.iv22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  store i8 0, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  br label %bb.c

bb.b:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.2
  ret void

bb.c:                                             ; preds = %bb.i, %.preheader
  %.pre28 = phi i64 [ 168, %.preheader ], [ %.pre29, %bb.i ]
  %.pre.i1127 = phi i64 [ 0, %.preheader ], [ %i.al, %bb.i ]
  %.01821.i = phi i32 [ 0, %.preheader ], [ %.3.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.o = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %.preheader38

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %2, align 8, !tbaa !1220   ; 2 uses
  %i.r = icmp ult i32 %i.q, 4
  br i1 %i.r, label %switch.lookup, label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.o, %bb.d
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %switch.shiftamt = shl nuw nsw i32 %i.q, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.s = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = xor i8 %i.u, %switch.masked
  store i8 %i.v, ptr %i.t, align 1, !tbaa !13
  %i.w = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.x = getelementptr i8, ptr %i.d, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -1       ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = xor i8 %i.z, -128
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i11.pre = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader38

.preheader38:                                     ; preds = %switch.lookup, %bb.c
  %.ph = phi i64 [ %.pre28, %bb.c ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph39 = phi i64 [ %.pre.i1127, %bb.c ], [ %.pre.i11.pre, %switch.lookup ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader38, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre30 = phi i64 [ %.pre29, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ]
  %i.ab = phi i64 [ %i.ae, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ] ; 2 uses
  %i.ac = phi i64 [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph39, %.preheader38 ] ; 2 uses
  %.02429.i = phi i64 [ %i.ak, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader38 ] ; 2 uses
  %.02528.i = phi ptr [ %i.aj, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader38 ] ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre29 = phi i64 [ %.pre30.i, %bb.f ], [ %.pre30, %bb.e ] ; 2 uses
  %i.ae = phi i64 [ %.pre30.i, %bb.f ], [ %i.ab, %bb.e ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.e ] ; 4 uses
  %i.af = sub i64 %i.ae, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.af) ; 4 uses
  %i.ag = icmp eq i64 %i.ae, %.pre31.i
  br i1 %i.ag, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.ah, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.h, %bb.g
  %i.ai = phi i64 [ %i.ae, %bb.g ], [ %.pre31.i, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.ak = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.al = add i64 %i.ai, %spec.select.i           ; 3 uses
  store i64 %i.al, ptr %i.h, align 8, !tbaa !1245
  %.not.i12 = icmp eq i64 %i.ak, 0
  br i1 %.not.i12, label %BORINGSSL_keccak_squeeze.exit, label %bb.e, !llvm.loop !1246

bb.i:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bo, label %bb.c, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, !llvm.loop !1668

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.m
  %.020.i = phi i64 [ %i.bm, %bb.m ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.119.i = phi i32 [ %.3.i, %bb.m ], [ %.01821.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = and i32 %i.as, 3840
  %i.au = or disjoint i32 %i.at, %i.ao            ; 2 uses
  %i.av = lshr i32 %i.ar, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 4
  %i.ba = or disjoint i32 %i.az, %i.av            ; 2 uses
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  %i.bc = icmp samesign ult i32 %i.au, 3329
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.bd = trunc nuw nsw i32 %i.au to i16
  %i.be = add nsw i32 %.119.i, 1
  %i.bf = sext i32 %.119.i to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.bf
  store i16 %i.bd, ptr %i.bg, align 2, !tbaa !639
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.be, %bb.j ], [ %.119.i, %BORINGSSL_keccak_squeeze.exit ] ; 4 uses
  %i.bh = icmp samesign ult i32 %i.ba, 3329
  %i.bi = icmp slt i32 %.2.i, 256
  %or.cond.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %.2.i, 1
  %i.bk = sext i32 %.2.i to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.bk
  store i16 %i.bb, ptr %i.bl, align 2, !tbaa !639
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3.i = phi i32 [ %i.bj, %bb.l ], [ %.2.i, %bb.k ] ; 3 uses
  %i.bm = add nuw nsw i64 %.020.i, 3
  %i.bn = icmp samesign ult i64 %.020.i, 165
  %i.bo = icmp slt i32 %.3.i, 256                 ; 2 uses
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %BORINGSSL_keccak_squeeze.exit, label %bb.i, !llvm.loop !1669

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  store i8 1, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 512 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit
  %.pre28.1 = phi i64 [ 168, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit ], [ %.pre29.1, %bb.x ]
  %.pre.i1127.1 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit ], [ %i.co, %bb.x ]
  %.01821.i.1 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit ], [ %.3.i.1, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.br = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.o, label %.preheader38.1

bb.o:                                             ; preds = %bb.n
  %i.bt = load i32, ptr %2, align 8, !tbaa !1220  ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 4
  br i1 %i.bu, label %switch.lookup.1, label %.loopexit

switch.lookup.1:                                  ; preds = %bb.o
  %switch.shiftamt.1 = shl nuw nsw i32 %i.bt, 3
  %switch.downshift.1 = lshr i32 522126854, %switch.shiftamt.1
  %switch.masked.1 = trunc i32 %switch.downshift.1 to i8
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = xor i8 %i.bx, %switch.masked.1
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !13
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = xor i8 %i.cc, -128
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i11.pre.1 = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre.1 = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader38.1

.preheader38.1:                                   ; preds = %switch.lookup.1, %bb.n
  %.ph.1 = phi i64 [ %.pre28.1, %bb.n ], [ %.pre.pre.1, %switch.lookup.1 ] ; 2 uses
  %.ph39.1 = phi i64 [ %.pre.i1127.1, %bb.n ], [ %.pre.i11.pre.1, %switch.lookup.1 ]
  br label %bb.p

bb.p:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1, %.preheader38.1
  %.pre30.1 = phi i64 [ %.pre29.1, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ], [ %.ph.1, %.preheader38.1 ]
  %i.ce = phi i64 [ %i.ch, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ], [ %.ph.1, %.preheader38.1 ] ; 2 uses
  %i.cf = phi i64 [ %i.co, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ], [ %.ph39.1, %.preheader38.1 ] ; 2 uses
  %.02429.i.1 = phi i64 [ %i.cn, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ], [ 168, %.preheader38.1 ] ; 2 uses
  %.02528.i.1 = phi ptr [ %i.cm, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ], [ %i.a, %.preheader38.1 ] ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.ce
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i.1 = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre29.1 = phi i64 [ %.pre30.i.1, %bb.q ], [ %.pre30.1, %bb.p ] ; 2 uses
  %i.ch = phi i64 [ %.pre30.i.1, %bb.q ], [ %i.ce, %bb.p ] ; 4 uses
  %.pre31.i.1 = phi i64 [ 0, %bb.q ], [ %i.cf, %bb.p ] ; 4 uses
  %i.ci = sub i64 %i.ch, %.pre31.i.1
  %spec.select.i.1 = tail call i64 @llvm.umin.i64(i64 %.02429.i.1, i64 %i.ci) ; 4 uses
  %i.cj = icmp eq i64 %i.ch, %.pre31.i.1
  br i1 %i.cj, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i.1, ptr nonnull readonly align 1 %i.ck, i64 %spec.select.i.1, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1

_ZL14OPENSSL_memcpyPvPKvm.exit.i.1:               ; preds = %bb.s, %bb.r
  %i.cl = phi i64 [ %i.ch, %bb.r ], [ %.pre31.i.1, %bb.s ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.02528.i.1, i64 %spec.select.i.1
  %i.cn = sub nuw nsw i64 %.02429.i.1, %spec.select.i.1 ; 2 uses
  %i.co = add i64 %i.cl, %spec.select.i.1         ; 3 uses
  store i64 %i.co, ptr %i.h, align 8, !tbaa !1245
  %.not.i12.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i12.1, label %BORINGSSL_keccak_squeeze.exit.1, label %bb.p, !llvm.loop !1246

BORINGSSL_keccak_squeeze.exit.1:                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1, %bb.w
  %.020.i.1 = phi i64 [ %i.dp, %bb.w ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ] ; 3 uses
  %.119.i.1 = phi i32 [ %.3.i.1, %bb.w ], [ %.01821.i.1, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.1 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i.1 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = and i32 %i.cv, 3840
  %i.cx = or disjoint i32 %i.cw, %i.cr            ; 2 uses
  %i.cy = lshr i32 %i.cu, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 4
  %i.dd = or disjoint i32 %i.dc, %i.cy            ; 2 uses
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = icmp samesign ult i32 %i.cx, 3329
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %BORINGSSL_keccak_squeeze.exit.1
  %i.dg = trunc nuw nsw i32 %i.cx to i16
  %i.dh = add nsw i32 %.119.i.1, 1
  %i.di = sext i32 %.119.i.1 to i64
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.di
  store i16 %i.dg, ptr %i.dj, align 2, !tbaa !639
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %BORINGSSL_keccak_squeeze.exit.1
  %.2.i.1 = phi i32 [ %i.dh, %bb.t ], [ %.119.i.1, %BORINGSSL_keccak_squeeze.exit.1 ] ; 4 uses
  %i.dk = icmp samesign ult i32 %i.dd, 3329
  %i.dl = icmp slt i32 %.2.i.1, 256
  %or.cond.i.1 = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond.i.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = add nsw i32 %.2.i.1, 1
  %i.dn = sext i32 %.2.i.1 to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.dn
  store i16 %i.de, ptr %i.do, align 2, !tbaa !639
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3.i.1 = phi i32 [ %i.dm, %bb.v ], [ %.2.i.1, %bb.u ] ; 3 uses
  %i.dp = add nuw nsw i64 %.020.i.1, 3
  %i.dq = icmp samesign ult i64 %.020.i.1, 165
  %i.dr = icmp slt i32 %.3.i.1, 256               ; 2 uses
  %i.ds = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %i.ds, label %BORINGSSL_keccak_squeeze.exit.1, label %bb.x, !llvm.loop !1669

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.dr, label %bb.n, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1, !llvm.loop !1668

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  store i8 2, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  %i.dt = getelementptr inbounds nuw i8, ptr %i.n, i64 1024 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ai, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1
  %.pre28.2 = phi i64 [ 168, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1 ], [ %.pre29.2, %bb.ai ]
  %.pre.i1127.2 = phi i64 [ 0, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1 ], [ %i.er, %bb.ai ]
  %.01821.i.2 = phi i32 [ 0, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.1 ], [ %.3.i.2, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.du = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.z, label %.preheader38.2

bb.z:                                             ; preds = %bb.y
  %i.dw = load i32, ptr %2, align 8, !tbaa !1220  ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 4
  br i1 %i.dx, label %switch.lookup.2, label %.loopexit

switch.lookup.2:                                  ; preds = %bb.z
  %switch.shiftamt.2 = shl nuw nsw i32 %i.dw, 3
  %switch.downshift.2 = lshr i32 522126854, %switch.shiftamt.2
  %switch.masked.2 = trunc i32 %switch.downshift.2 to i8
  %i.dy = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = xor i8 %i.ea, %switch.masked.2
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !13
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.ed = getelementptr i8, ptr %i.d, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1     ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  %i.eg = xor i8 %i.ef, -128
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i11.pre.2 = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre.2 = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader38.2

.preheader38.2:                                   ; preds = %switch.lookup.2, %bb.y
  %.ph.2 = phi i64 [ %.pre28.2, %bb.y ], [ %.pre.pre.2, %switch.lookup.2 ] ; 2 uses
  %.ph39.2 = phi i64 [ %.pre.i1127.2, %bb.y ], [ %.pre.i11.pre.2, %switch.lookup.2 ]
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2, %.preheader38.2
  %.pre30.2 = phi i64 [ %.pre29.2, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ], [ %.ph.2, %.preheader38.2 ]
  %i.eh = phi i64 [ %i.ek, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ], [ %.ph.2, %.preheader38.2 ] ; 2 uses
  %i.ei = phi i64 [ %i.er, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ], [ %.ph39.2, %.preheader38.2 ] ; 2 uses
  %.02429.i.2 = phi i64 [ %i.eq, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ], [ 168, %.preheader38.2 ] ; 2 uses
  %.02528.i.2 = phi ptr [ %i.ep, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ], [ %i.a, %.preheader38.2 ] ; 2 uses
  %i.ej = icmp eq i64 %i.ei, %i.eh
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i.2 = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre29.2 = phi i64 [ %.pre30.i.2, %bb.ab ], [ %.pre30.2, %bb.aa ] ; 2 uses
  %i.ek = phi i64 [ %.pre30.i.2, %bb.ab ], [ %i.eh, %bb.aa ] ; 4 uses
  %.pre31.i.2 = phi i64 [ 0, %bb.ab ], [ %i.ei, %bb.aa ] ; 4 uses
  %i.el = sub i64 %i.ek, %.pre31.i.2
  %spec.select.i.2 = tail call i64 @llvm.umin.i64(i64 %.02429.i.2, i64 %i.el) ; 4 uses
  %i.em = icmp eq i64 %i.ek, %.pre31.i.2
  br i1 %i.em, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i.2, ptr nonnull readonly align 1 %i.en, i64 %spec.select.i.2, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2

_ZL14OPENSSL_memcpyPvPKvm.exit.i.2:               ; preds = %bb.ad, %bb.ac
  %i.eo = phi i64 [ %i.ek, %bb.ac ], [ %.pre31.i.2, %bb.ad ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.02528.i.2, i64 %spec.select.i.2
  %i.eq = sub nuw nsw i64 %.02429.i.2, %spec.select.i.2 ; 2 uses
  %i.er = add i64 %i.eo, %spec.select.i.2         ; 3 uses
  store i64 %i.er, ptr %i.h, align 8, !tbaa !1245
  %.not.i12.2 = icmp eq i64 %i.eq, 0
  br i1 %.not.i12.2, label %BORINGSSL_keccak_squeeze.exit.2, label %bb.aa, !llvm.loop !1246

BORINGSSL_keccak_squeeze.exit.2:                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2, %bb.ah
  %.020.i.2 = phi i64 [ %i.fs, %bb.ah ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ] ; 3 uses
  %.119.i.2 = phi i32 [ %.3.i.2, %bb.ah ], [ %.01821.i.2, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.2 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i.2 ; 3 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = and i32 %i.ey, 3840
  %i.fa = or disjoint i32 %i.ez, %i.eu            ; 2 uses
  %i.fb = lshr i32 %i.ex, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 4
  %i.fg = or disjoint i32 %i.ff, %i.fb            ; 2 uses
  %i.fh = trunc nuw nsw i32 %i.fg to i16
  %i.fi = icmp samesign ult i32 %i.fa, 3329
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %BORINGSSL_keccak_squeeze.exit.2
  %i.fj = trunc nuw nsw i32 %i.fa to i16
  %i.fk = add nsw i32 %.119.i.2, 1
  %i.fl = sext i32 %.119.i.2 to i64
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.fl
  store i16 %i.fj, ptr %i.fm, align 2, !tbaa !639
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %BORINGSSL_keccak_squeeze.exit.2
  %.2.i.2 = phi i32 [ %i.fk, %bb.ae ], [ %.119.i.2, %BORINGSSL_keccak_squeeze.exit.2 ] ; 4 uses
  %i.fn = icmp samesign ult i32 %i.fg, 3329
  %i.fo = icmp slt i32 %.2.i.2, 256
  %or.cond.i.2 = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond.i.2, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fp = add nsw i32 %.2.i.2, 1
  %i.fq = sext i32 %.2.i.2 to i64
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.fq
  store i16 %i.fh, ptr %i.fr, align 2, !tbaa !639
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3.i.2 = phi i32 [ %i.fp, %bb.ag ], [ %.2.i.2, %bb.af ] ; 3 uses
  %i.fs = add nuw nsw i64 %.020.i.2, 3
  %i.ft = icmp samesign ult i64 %.020.i.2, 165
  %i.fu = icmp slt i32 %.3.i.2, 256               ; 2 uses
  %i.fv = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %i.fv, label %BORINGSSL_keccak_squeeze.exit.2, label %bb.ai, !llvm.loop !1669

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.fu, label %bb.y, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.2, !llvm.loop !1668

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit.2: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 3
  br i1 %exitcond25.not, label %bb.b, label %.preheader, !llvm.loop !1670
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_110vector_nttILi3EEEvPNS0_6vectorIXT_EEE(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.a, %._crit_edge39.i
  %.041.i = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge39.i ] ; 3 uses
  %.02940.i = phi i32 [ 1, %bb.a ], [ %i.f, %._crit_edge39.i ] ; 2 uses
  %i.a = lshr i32 %.041.i, 1                      ; 3 uses
  %i.b = and i32 %.041.i, 510
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 4 uses
  %i.e = zext nneg i32 %.02940.i to i64           ; 2 uses
  %invariant.gep47.i = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_19kNTTRootsE, i64 %i.e
  %.not.i = icmp eq i32 %i.a, 0
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d ; 2 uses
  br i1 %.not.i, label %._crit_edge39.i, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph38.i
  %min.iters.check = icmp samesign ult i32 %.041.i, 16
  %n.vec = and i64 %i.d, 248                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br label %.lr.ph.i.preheader

._crit_edge39.i:                                  ; preds = %._crit_edge.i.loopexit, %.lr.ph38.i
  %i.f = shl i32 %.02940.i, 1                     ; 2 uses
  %i.g = icmp slt i32 %i.f, 128
  br i1 %i.g, label %.lr.ph38.i, label %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit, !llvm.loop !1671

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge.i.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i.loopexit ], [ %i.d, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 4 uses
  %gep48.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep47.i, i64 %indvars.iv44.i
  %i.h = load i16, ptr %gep48.i, align 2, !tbaa !639
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.j = add nuw i64 %indvars.iv.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add nuw i64 %indvars.iv.i, %index        ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.k ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.l, align 2, !tbaa !639
  %i.m = zext <8 x i16> %wide.load to <8 x i32>
  %i.n = mul nuw <8 x i32> %broadcast.splat, %i.m ; 2 uses
  %i.o = zext <8 x i32> %i.n to <8 x i64>
  %i.p = mul nuw nsw <8 x i64> %i.o, splat (i64 5039)
  %i.q = lshr <8 x i64> %i.p, splat (i64 24)
  %i.r = trunc nuw nsw <8 x i64> %i.q to <8 x i32>
  %i.s = mul <8 x i32> %i.r, splat (i32 62207)
  %i.t = add <8 x i32> %i.s, %i.n
  %i.u = trunc <8 x i32> %i.t to <8 x i16>        ; 2 uses
  %i.v = add <8 x i16> %i.u, splat (i16 -3329)    ; 2 uses
  %i.w = icmp slt <8 x i16> %i.v, zeroinitializer
  %i.x = select <8 x i1> %i.w, <8 x i16> %i.u, <8 x i16> zeroinitializer
  %i.y = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.v, <8 x i16> zeroinitializer)
  %i.z = or <8 x i16> %i.x, %i.y                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.k ; 2 uses
  %wide.load10 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !639 ; 2 uses
  %i.ab = add <8 x i16> %i.z, %wide.load10        ; 2 uses
  %i.ac = add <8 x i16> %i.ab, splat (i16 -3329)  ; 2 uses
  %i.ad = icmp slt <8 x i16> %i.ac, zeroinitializer
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %i.ab, <8 x i16> zeroinitializer
  %i.af = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ac, <8 x i16> zeroinitializer)
  %i.ag = or <8 x i16> %i.ae, %i.af
  store <8 x i16> %i.ag, ptr %i.aa, align 2, !tbaa !639
  %i.ah = sub <8 x i16> %wide.load10, %i.z        ; 3 uses
  %i.ai = add <8 x i16> %i.ah, splat (i16 3329)
  %i.aj = icmp slt <8 x i16> %i.ah, zeroinitializer
  %i.ak = select <8 x i1> %i.aj, <8 x i16> %i.ai, <8 x i16> zeroinitializer
  %i.al = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ah, <8 x i16> zeroinitializer)
  %i.am = or <8 x i16> %i.ak, %i.al
  store <8 x i16> %i.am, ptr %i.l, align 2, !tbaa !639
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1672

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv42.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.c
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next45.i, %i.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.c
  br i1 %exitcond.not.i, label %._crit_edge39.i, label %.lr.ph.i.preheader, !llvm.loop !1673

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph.i ], [ %indvars.iv42.i.ph, %.lr.ph.i.preheader39 ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv42.i ; 2 uses
  %i.ao = load i16, ptr %gep.i, align 2, !tbaa !639
  %i.ap = zext i16 %i.ao to i32
  %i.aq = mul nuw i32 %i.ap, %i.i                 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 5039
  %i.at = lshr i64 %i.as, 24
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.neg.i.i = mul i32 %i.au, 62207
  %i.av = add i32 %.neg.i.i, %i.aq
  %i.aw = trunc i32 %i.av to i16                  ; 2 uses
  %i.ax = add i16 %i.aw, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ax, 0
  %i.ay = select i1 %isneg.i.i.i, i16 %i.aw, i16 0
  %i.az = tail call i16 @llvm.smax.i16(i16 %i.ax, i16 0)
  %i.ba = or i16 %i.ay, %i.az                     ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !639 ; 2 uses
  %i.bd = add i16 %i.ba, %i.bc                    ; 2 uses
  %i.be = add i16 %i.bd, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.be, 0
  %i.bf = select i1 %isneg.i.i, i16 %i.bd, i16 0
  %i.bg = tail call i16 @llvm.smax.i16(i16 %i.be, i16 0)
  %i.bh = or i16 %i.bf, %i.bg
  store i16 %i.bh, ptr %i.bb, align 2, !tbaa !639
  %i.bi = sub i16 %i.bc, %i.ba                    ; 3 uses
  %i.bj = add i16 %i.bi, 3329
  %isneg.i33.i = icmp slt i16 %i.bi, 0
  %i.bk = select i1 %isneg.i33.i, i16 %i.bj, i16 0
  %i.bl = tail call i16 @llvm.smax.i16(i16 %i.bi, i16 0)
  %i.bm = or i16 %i.bk, %i.bl
  store i16 %i.bm, ptr %gep.i, align 2, !tbaa !639
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m:bb.a
  %wide.load259 = load <4 x i32>, ptr %i.bxm, align 4, !tbaa !18 ; 2 uses
  %i.bxn = add <4 x i32> %wide.load259, splat (i32 127)
  %i.bxo = lshr <4 x i32> %i.bxn, splat (i32 7)
  %i.bxp = mul <4 x i32> %i.bxo, splat (i32 1025)
  %i.bxq = add <4 x i32> %i.bxp, splat (i32 2097152)
  %i.bxr = lshr <4 x i32> %i.bxq, splat (i32 22)  ; 2 uses
  %i.bxs = and <4 x i32> %i.bxr, splat (i32 15)   ; 2 uses
  %i.bxt = icmp ne <4 x i32> %wide.load258, zeroinitializer ; 2 uses
  %i.bxu = mul nsw <4 x i32> %i.bxs, splat (i32 -523776)
  %i.bxv = add <4 x i32> %i.bxu, %wide.load259    ; 2 uses
  %i.bxw = icmp sgt <4 x i32> %i.bxv, splat (i32 4190208)
  %i.bxx = select <4 x i1> %i.bxw, <4 x i32> splat (i32 -8380417), <4 x i32> zeroinitializer
  %i.bxy = add <4 x i32> %i.bxx, %i.bxv
  %i.bxz = icmp slt <4 x i32> %i.bxy, splat (i32 1)
  %i.bya = select <4 x i1> %i.bxt, <4 x i1> %i.bxz, <4 x i1> zeroinitializer
  %predphi260.v.v = select <4 x i1> %i.bya, <4 x i32> splat (i32 15), <4 x i32> splat (i32 1)
  %predphi260.v = add nuw nsw <4 x i32> %i.bxr, %predphi260.v.v
  %predphi260 = and <4 x i32> %predphi260.v, splat (i32 15)
  %predphi261 = select <4 x i1> %i.bxt, <4 x i32> %predphi260, <4 x i32> %i.bxs
  store <4 x i32> %predphi261, ptr %i.bxm, align 4, !tbaa !18
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.byb = icmp eq i64 %index.next262, 256
  br i1 %i.byb, label %_ZN5mldsa12_GLOBAL__N_123vector_use_hint_vartimeILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_.exit, label %vector.body256, !llvm.loop !1729

_ZN5mldsa12_GLOBAL__N_123vector_use_hint_vartimeILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_.exit: ; preds = %vector.body256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113vector_encodeILi8EEEvPhPKNS0_6vectorIXT_EEEi(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.ed, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ds, i8 0, i64 224, i1 false)
  store i32 3, ptr %12, align 8, !tbaa !1220
  store i32 0, ptr %i.dt, align 4, !tbaa !1224
  store i64 136, ptr %i.du, align 8, !tbaa !1225
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef nonnull %i.b, i64 noundef 64)
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %12, ptr noundef nonnull %i.c, i64 noundef 1024)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %12, ptr noundef nonnull %i.d, i64 noundef 64)
  %i.byc = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_110vector_maxILi7EEEjPKNS0_6vectorIXT_EEE(ptr noundef nonnull %i.j)
  %i.byd = icmp ult i32 %i.byc, 524168
  br i1 %i.byd, label %bb.aa, label %.thread72

bb.aa:                                            ; preds = %_ZN5mldsa12_GLOBAL__N_123vector_use_hint_vartimeILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_.exit
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.d, ptr noundef nonnull dereferenceable(64) %i.e, i64 64)
  %i.bye = icmp eq i32 %bcmp, 0
  %i.byf = zext i1 %i.bye to i32
  br label %.thread72

.thread72:                                        ; preds = %_ZN5mldsa12_GLOBAL__N_123vector_use_hint_vartimeILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_.exit, %bb.aa
  %i.byg = phi i32 [ 0, %_ZN5mldsa12_GLOBAL__N_123vector_use_hint_vartimeILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_.exit ], [ %i.byf, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.ab

.thread75:                                        ; preds = %bb.g, %bb.o, %bb.q, %bb.u, %bb.b, %bb.c, %bb.e, %bb.d, %._crit_edge.i.i, %bb.f, %._crit_edge.6.i.i, %._crit_edge.5.i.i, %._crit_edge.4.i.i, %._crit_edge.3.i.i, %._crit_edge.2.i.i, %._crit_edge.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ab

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.m, %bb.s, %.lr.ph66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.thread75, %.thread72
  %.074 = phi i32 [ %i.byg, %.thread72 ], [ 0, %.loopexit ], [ 0, %.thread75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %bb.ab
  %.171 = phi i32 [ %.074, %bb.ab ], [ 0, %bb.a ]
  ret i32 %.171
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi8ELi7EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 13 uses
  %i.a = alloca [168 x i8], align 16              ; 4 uses
  %i.b = load <16 x i8>, ptr %1, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 41
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv20 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next21, %bb.c ] ; 3 uses
  %i.m = trunc i64 %indvars.iv20 to i8
  %i.n = getelementptr inbounds nuw [7168 x i8], ptr %0, i64 %indvars.iv20
  br label %BORINGSSL_keccak_absorb.exit

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 8
  br i1 %exitcond23.not, label %bb.b, label %.preheader, !llvm.loop !1730

BORINGSSL_keccak_absorb.exit:                     ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i8
  %i.p = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.o, ptr %i.k, align 8, !tbaa !13
  store i8 %i.m, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre26 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre27, %bb.k ]
  %.pre.i25 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01115.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.2.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader36

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !1220   ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !13
  %i.y = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i.pre = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader36

.preheader36:                                     ; preds = %switch.lookup, %bb.d
  %.ph = phi i64 [ %.pre26, %bb.d ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph37 = phi i64 [ %.pre.i25, %bb.d ], [ %.pre.i.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader36, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre28 = phi i64 [ %.pre27, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader36 ]
  %i.ad = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader36 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph37, %.preheader36 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader36 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader36 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre27 = phi i64 [ %.pre30.i, %bb.h ], [ %.pre28, %bb.g ] ; 2 uses
  %i.ag = phi i64 [ %.pre30.i, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ah = sub i64 %i.ag, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre31.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.ak = phi i64 [ %i.ag, %bb.i ], [ %.pre31.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %i.ak, %spec.select.i           ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !1245
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !1246

bb.k:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bd, label %bb.d, label %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, !llvm.loop !1586

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.m
  %.014.i = phi i64 [ %i.bb, %bb.m ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.113.i = phi i32 [ %.2.i, %bb.m ], [ %.01115.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.i ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = and i8 %i.as, 127
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, 8380417
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.ay = add nsw i32 %.113.i, 1
  %i.az = sext i32 %.113.i to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.ay, %bb.l ], [ %.113.i, %BORINGSSL_keccak_squeeze.exit ] ; 3 uses
  %i.bb = add nuw nsw i64 %.014.i, 3
  %i.bc = icmp samesign ult i64 %.014.i, 165
  %i.bd = icmp slt i32 %.2.i, 256                 ; 2 uses
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !1587

_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1731
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_118vector_mult_scalarILi8EEEvPNS0_6vectorIXT_EEEPKS3_PKNS0_6scalarE(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.c                   ; 2 uses
  %i.h = mul i64 %i.g, 4236238847
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 8380417
  %i.k = add i64 %i.j, %i.g
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = add nsw i64 %i.l, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.m, 63
  %i.n = add nuw nsw i64 %i.l, 4286586879
  %i.o = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.p = and i64 %i.l, %i.o
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.1
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.z                 ; 2 uses
  %i.ae = mul i64 %i.ad, 4236238847
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw nsw i64 %i.af, 8380417
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 3 uses
  %i.aj = add nsw i64 %i.ai, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.aj, 63
  %i.ak = add nuw nsw i64 %i.ai, 4286586879
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !156 ; 2 uses
  %i.am = and i64 %i.ai, %i.al
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = or disjoint i64 %i.ao, %i.am
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.1
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw                ; 2 uses
  %i.bb = mul i64 %i.ba, 4236238847
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = mul nuw nsw i64 %i.bc, 8380417
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32                      ; 3 uses
  %i.bg = add nsw i64 %i.bf, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.bg, 63
  %i.bh = add nuw nsw i64 %i.bf, 4286586879
  %i.bi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !156 ; 2 uses
  %i.bj = and i64 %i.bf, %i.bi
  %i.bk = xor i64 %i.bi, -1
  %i.bl = and i64 %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.bl, %i.bj
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !18
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.3
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.3
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bt                ; 2 uses
  %i.by = mul i64 %i.bx, 4236238847
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = mul nuw nsw i64 %i.bz, 8380417
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = lshr i64 %i.cb, 32                      ; 3 uses
  %i.cd = add nsw i64 %i.cc, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.cd, 63
  %i.ce = add nuw nsw i64 %i.cc, 4286586879
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !156 ; 2 uses
  %i.cg = and i64 %i.cc, %i.cf
  %i.ch = xor i64 %i.cf, -1
  %i.ci = and i64 %i.ce, %i.ch
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.3
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !1255

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw i64 %i.ct, %i.cq                ; 2 uses
  %i.cv = mul i64 %i.cu, 4236238847
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = mul nuw nsw i64 %i.cw, 8380417
  %i.cy = add i64 %i.cx, %i.cu
end_hunk_23
begin_hunk_24_@_ZN5mlkem12_GLOBAL__N_113vector_decodeILi4EEEiPNS0_6vectorIXT_EEEPKhi:bb.a
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv.i.2
  store i16 %i.bo, ptr %i.bx, align 2, !tbaa !639
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.i.2, label %bb.s, label %.preheader.i.2, !llvm.loop !1264

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.bz = mul nuw nsw i64 %i.b, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  br label %.preheader.i.3

.preheader.i.3:                                   ; preds = %bb.x, %bb.s
  %indvars.iv.i.3 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i.3, %bb.x ] ; 2 uses
  %.03354.i.3 = phi i32 [ 0, %bb.s ], [ %i.cp, %bb.x ]
  %.03553.i.3 = phi i8 [ 0, %bb.s ], [ %i.cr, %bb.x ]
  %.04152.i.3 = phi ptr [ %i.ca, %bb.s ], [ %.243.i.3, %bb.x ]
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.preheader.i.3
  %.02951.i.3 = phi i32 [ 0, %.preheader.i.3 ], [ %i.cs, %bb.v ] ; 3 uses
  %.03050.i.3 = phi i16 [ 0, %.preheader.i.3 ], [ %i.co, %bb.v ]
  %.13449.i.3 = phi i32 [ %.03354.i.3, %.preheader.i.3 ], [ %i.cp, %bb.v ] ; 2 uses
  %.13648.i.3 = phi i8 [ %.03553.i.3, %.preheader.i.3 ], [ %i.cr, %bb.v ]
  %.14247.i.3 = phi ptr [ %.04152.i.3, %.preheader.i.3 ], [ %.243.i.3, %bb.v ] ; 3 uses
  %i.cb = icmp eq i32 %.13449.i.3, 0
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = load i8, ptr %.14247.i.3, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.14247.i.3, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.243.i.3 = phi ptr [ %i.cd, %bb.u ], [ %.14247.i.3, %bb.t ] ; 2 uses
  %.237.i.3 = phi i8 [ %i.cc, %bb.u ], [ %.13648.i.3, %bb.t ] ; 2 uses
  %.2.i.3 = phi i32 [ 8, %bb.u ], [ %.13449.i.3, %bb.t ] ; 2 uses
  %i.ce = sub nsw i32 %2, %.02951.i.3
  %spec.select.i.3 = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %.2.i.3) ; 4 uses
  %i.cf = zext i8 %.237.i.3 to i32
  %i.cg = sext i32 %spec.select.i.3 to i64
  %i.ch = getelementptr i8, ptr @_ZN5mlkem12_GLOBAL__N_16kMasksE, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = and i8 %i.cj, %.237.i.3
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, %.02951.i.3
  %i.cn = trunc i32 %i.cm to i16
  %i.co = or i16 %.03050.i.3, %i.cn               ; 3 uses
  %i.cp = sub nsw i32 %.2.i.3, %spec.select.i.3   ; 2 uses
  %i.cq = lshr i32 %i.cf, %spec.select.i.3
  %i.cr = trunc nuw i32 %i.cq to i8               ; 2 uses
  %i.cs = add nsw i32 %spec.select.i.3, %.02951.i.3 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %2
  br i1 %i.ct, label %bb.t, label %bb.w, !llvm.loop !1263

bb.w:                                             ; preds = %bb.v
  %i.cu = icmp ugt i16 %i.co, 3328
  %i.cv = zext i1 %i.cu to i32
  %i.cw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cv) #38, !srcloc !367
  %.not.i.3 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.3, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.i.3
  store i16 %i.co, ptr %i.cx, align 2, !tbaa !639
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.i.3, label %.loopexit, label %.preheader.i.3, !llvm.loop !1264

.loopexit:                                        ; preds = %bb.e, %bb.k, %bb.q, %bb.w, %bb.x
  %i.cy = phi i32 [ 0, %bb.k ], [ 1, %bb.x ], [ 0, %bb.q ], [ 0, %bb.w ], [ 0, %bb.e ]
  ret i32 %i.cy
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_113matrix_expandILi4EEEvPNS0_6matrixIXT_EEEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [168 x i8], align 16              ; 4 uses
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 13 uses
  %i.b = load <16 x i8>, ptr %1, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 41
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv22 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next23, %bb.c ] ; 3 uses
  %i.m = trunc i64 %indvars.iv22 to i8
  %i.n = getelementptr inbounds nuw [2048 x i8], ptr %0, i64 %indvars.iv22
  br label %BORINGSSL_keccak_absorb.exit

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 4
  br i1 %exitcond25.not, label %bb.b, label %.preheader, !llvm.loop !1916

BORINGSSL_keccak_absorb.exit:                     ; preds = %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !1220
  store i32 0, ptr %i.e, align 4, !tbaa !1224
  store i64 168, ptr %i.f, align 8, !tbaa !1225
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  store i8 %i.o, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1226
  %i.p = getelementptr inbounds nuw [512 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre28 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre29, %bb.k ]
  %.pre.i1127 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01821.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.3.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !1224
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader38

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !1220   ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1226
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !13
  %i.y = load i64, ptr %i.f, align 8, !tbaa !1225
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1224
  %.pre.i11.pre = load i64, ptr %i.h, align 8, !tbaa !1245
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !1225
  br label %.preheader38

.preheader38:                                     ; preds = %switch.lookup, %bb.d
  %.ph = phi i64 [ %.pre28, %bb.d ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph39 = phi i64 [ %.pre.i1127, %bb.d ], [ %.pre.i11.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader38, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre30 = phi i64 [ %.pre29, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ]
  %i.ad = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph39, %.preheader38 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader38 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader38 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1245
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !1225 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre29 = phi i64 [ %.pre30.i, %bb.h ], [ %.pre30, %bb.g ] ; 2 uses
  %i.ag = phi i64 [ %.pre30.i, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ah = sub i64 %i.ag, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre31.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.ak = phi i64 [ %i.ag, %bb.i ], [ %.pre31.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %i.ak, %spec.select.i           ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !1245
  %.not.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i12, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !1246

bb.k:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bq, label %bb.d, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, !llvm.loop !1668

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.o
  %.020.i = phi i64 [ %i.bo, %bb.o ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.119.i = phi i32 [ %.3.i, %bb.o ], [ %.01821.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = and i32 %i.au, 3840
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = lshr i32 %i.at, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 4
  %i.bc = or disjoint i32 %i.bb, %i.ax            ; 2 uses
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %i.be = icmp samesign ult i32 %i.aw, 3329
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.bf = trunc nuw nsw i32 %i.aw to i16
  %i.bg = add nsw i32 %.119.i, 1
  %i.bh = sext i32 %.119.i to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bh
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !639
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.bg, %bb.l ], [ %.119.i, %BORINGSSL_keccak_squeeze.exit ] ; 4 uses
  %i.bj = icmp samesign ult i32 %i.bc, 3329
  %i.bk = icmp slt i32 %.2.i, 256
  %or.cond.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %.2.i, 1
  %i.bm = sext i32 %.2.i to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bm
  store i16 %i.bd, ptr %i.bn, align 2, !tbaa !639
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.i = phi i32 [ %i.bl, %bb.n ], [ %.2.i, %bb.m ] ; 3 uses
  %i.bo = add nuw nsw i64 %.020.i, 3
  %i.bp = icmp samesign ult i64 %.020.i, 165
  %i.bq = icmp slt i32 %.3.i, 256                 ; 2 uses
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !1669

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1917
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v24i16(<24 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #24 = { mustprogress nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #25 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #31 = { inlinehint mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree nounwind }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind memory(none) }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
end_hunk_24
