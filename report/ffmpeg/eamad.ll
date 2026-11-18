Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/eamad?download=true
inline.NumInlined: 19
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a
bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #6
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !36
  %i.fr = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %i.fq, i32 noundef 1) #6 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.bb, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !36 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 108
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !59
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !60
  %i.fz = mul nsw i32 %i.fy, %i.fw
  %i.ga = sext i32 %i.fz to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %i.ga, i1 false)
  %i.gb = load ptr, ptr %i.fn, align 8, !tbaa !36 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !54
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 108
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !59
  %i.gg = sdiv i32 %i.gf, 2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !60
  %i.gj = mul nsw i32 %i.gg, %i.gi
  %i.gk = sext i32 %i.gj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gd, i8 -128, i64 %i.gk, i1 false)
  %i.gl = load ptr, ptr %i.fn, align 8, !tbaa !36 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !54
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 108
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !59
  %i.gq = sdiv i32 %i.gp, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !60
  %i.gt = mul nsw i32 %i.gq, %i.gs
  %i.gu = sext i32 %i.gt to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.gn, i8 -128, i64 %i.gu, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.gx = and i64 %i.ew, 2147483647               ; 2 uses
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gw, i64 noundef %i.gx) #6
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !61 ; 2 uses
  %.not88 = icmp eq ptr %i.gy, null
  br i1 %.not88, label %bb.bb, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ha = load ptr, ptr %i.gz, align 16, !tbaa !62
  %i.hb = sub i64 %i.ev, %i.m
  %i.hc = shl i64 %i.hb, 32
  %i.hd = ashr exact i64 %i.hc, 32
  %i.he = getelementptr inbounds i8, ptr %i.b, i64 %i.hd
  %i.hf = lshr i32 %i.ex, 1
  tail call void %i.ha(ptr noundef nonnull %i.gy, ptr noundef nonnull %i.he, i32 noundef %i.hf) #6
  %i.hg = load ptr, ptr %i.gv, align 8, !tbaa !61
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.hh, i8 0, i64 64, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.hj = load ptr, ptr %i.gv, align 8, !tbaa !61 ; 2 uses
  %i.hk = shl nuw nsw i32 %i.ex, 3
  %or.cond.i102 = icmp samesign ult i32 %i.ex, 268435392 ; 2 uses
  %i.hl = icmp ne ptr %i.hj, null
  %or.cond3.i = and i1 %or.cond.i102, %i.hl
  %.014.i = select i1 %or.cond.i102, ptr %i.hj, ptr null
  %.013.i = select i1 %or.cond3.i, i32 %i.hk, i32 0 ; 2 uses
  store ptr %.014.i, ptr %i.hi, align 16, !tbaa !63
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 %.013.i, ptr %i.hm, align 4, !tbaa !64
  %i.hn = add nuw nsw i32 %.013.i, 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 4 uses
  store i32 %i.hn, ptr %i.ho, align 16, !tbaa !65
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 18 uses
  store i32 0, ptr %i.hp, align 8, !tbaa !66
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !53 ; 2 uses
  %.not90150 = icmp sgt i32 %i.hr, 0
  br i1 %.not90150, label %.preheader.lr.ph, label %.critedge93

.preheader.lr.ph:                                 ; preds = %bb.u
  %i.hs = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %.pre = load i32, ptr %i.fb, align 8, !tbaa !52
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.hw = phi i32 [ %i.hr, %.preheader.lr.ph ], [ %i.za, %.critedge ]
  %i.hx = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.zb, %.critedge ] ; 2 uses
  %.074151 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.zc, %.critedge ] ; 4 uses
  %.not89148 = icmp sgt i32 %i.hx, 0
  br i1 %.not89148, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.hy = shl nuw nsw i32 %.074151, 3             ; 3 uses
  %i.hz = shl nuw nsw i32 %.074151, 4             ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %decode_mb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %decode_mb.exit ] ; 4 uses
  br i1 %.not143, label %bb.w, label %decode_motion.exit53.i

bb.w:                                             ; preds = %bb.v
  %i.ia = load i32, ptr %i.hp, align 8, !tbaa !66 ; 4 uses
  %i.ib = load ptr, ptr %i.hi, align 16, !tbaa !63 ; 9 uses
  %i.ic = lshr i32 %i.ia, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !47
  %i.ig = load i32, ptr %i.ho, align 16, !tbaa !65 ; 9 uses
  %i.ih = icmp slt i32 %i.ia, %i.ig
  %i.ii = zext i1 %i.ih to i32
  %spec.select.i.i.i = add i32 %i.ia, %i.ii       ; 6 uses
  %i.ij = zext i8 %i.if to i32
  %i.ik = and i32 %i.ia, 7
  store i32 %spec.select.i.i.i, ptr %i.hp, align 8, !tbaa !66
  %i.il = lshr exact i32 128, %i.ik
  %i.im = and i32 %i.il, %i.ij
  %.not.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.i.i, label %decode210.exit.i, label %.thread.i

decode210.exit.i:                                 ; preds = %bb.w
  %i.in = lshr i32 %spec.select.i.i.i, 3
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !47
  %i.ir = icmp slt i32 %spec.select.i.i.i, %i.ig
  %i.is = zext i1 %i.ir to i32
  %spec.select.i2.i.i = add i32 %spec.select.i.i.i, %i.is ; 4 uses
  %i.it = zext i8 %i.iq to i32
  %i.iu = and i32 %spec.select.i.i.i, 7
  store i32 %spec.select.i2.i.i, ptr %i.hp, align 8, !tbaa !66
  %i.iv = lshr exact i32 128, %i.iu
  %i.iw = and i32 %i.iv, %i.it
  %.not68.i = icmp eq i32 %i.iw, 0
  br i1 %.not68.i, label %decode_motion.exit53.i, label %bb.x

bb.x:                                             ; preds = %decode210.exit.i
  %i.ix = lshr i32 %spec.select.i2.i.i, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 1, !tbaa !47
  %i.jb = tail call i32 @llvm.bswap.i32(i32 %i.ja)
  %i.jc = and i32 %spec.select.i2.i.i, 7
  %i.jd = shl i32 %i.jb, %i.jc
  %i.je = lshr i32 %i.jd, 26
  %i.jf = add i32 %spec.select.i2.i.i, 6
  %i.jg = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 %i.jf) ; 2 uses
  store i32 %i.jg, ptr %i.hp, align 8, !tbaa !66
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w
  %i.jh = phi i32 [ %i.jg, %bb.x ], [ %spec.select.i.i.i, %bb.w ] ; 4 uses
  %i.ji = phi i32 [ %i.je, %bb.x ], [ 63, %bb.w ] ; 2 uses
  %i.jj = lshr i32 %i.jh, 3
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !47
  %i.jn = icmp slt i32 %i.jh, %i.ig
  %i.jo = zext i1 %i.jn to i32
  %spec.select.i.i46.i = add i32 %i.jh, %i.jo     ; 6 uses
  %i.jp = zext i8 %i.jm to i32
  %i.jq = and i32 %i.jh, 7
  store i32 %spec.select.i.i46.i, ptr %i.hp, align 8, !tbaa !66
  %i.jr = lshr exact i32 128, %i.jq
  %i.js = and i32 %i.jr, %i.jp
  %.not.i47.i = icmp eq i32 %i.js, 0
  br i1 %.not.i47.i, label %decode_motion.exit.i, label %bb.y

bb.y:                                             ; preds = %.thread.i
  %i.jt = lshr i32 %spec.select.i.i46.i, 3
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !47
  %i.jx = icmp slt i32 %spec.select.i.i46.i, %i.ig
  %i.jy = zext i1 %i.jx to i32
  %spec.select.i5.i.i = add i32 %spec.select.i.i46.i, %i.jy ; 4 uses
  %i.jz = zext i8 %i.jw to i32
  %i.ka = and i32 %spec.select.i.i46.i, 7
  store i32 %spec.select.i5.i.i, ptr %i.hp, align 8, !tbaa !66
  %i.kb = lshr exact i32 128, %i.ka
  %i.kc = and i32 %i.kb, %i.jz
  %.not4.i.i = icmp eq i32 %i.kc, 0
  %i.kd = lshr i32 %spec.select.i5.i.i, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 1, !tbaa !47
  %i.kh = tail call i32 @llvm.bswap.i32(i32 %i.kg)
  %i.ki = and i32 %spec.select.i5.i.i, 7
  %i.kj = shl i32 %i.kh, %i.ki
  %i.kk = lshr i32 %i.kj, 28
  %i.kl = add i32 %spec.select.i5.i.i, 4
  %i.km = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 %i.kl) ; 2 uses
  store i32 %i.km, ptr %i.hp, align 8, !tbaa !66
  %i.kn = select i1 %.not4.i.i, i32 1, i32 -16
  %i.ko = add nsw i32 %i.kk, %i.kn
  br label %decode_motion.exit.i

decode_motion.exit.i:                             ; preds = %bb.y, %.thread.i
  %i.kp = phi i32 [ %i.km, %bb.y ], [ %spec.select.i.i46.i, %.thread.i ] ; 4 uses
  %.1.i.i = phi i32 [ %i.ko, %bb.y ], [ 0, %.thread.i ] ; 2 uses
  %i.kq = lshr i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !47
  %i.ku = icmp slt i32 %i.kp, %i.ig
  %i.kv = zext i1 %i.ku to i32
  %spec.select.i.i48.i = add i32 %i.kp, %i.kv     ; 5 uses
  %i.kw = zext i8 %i.kt to i32
  %i.kx = and i32 %i.kp, 7
  store i32 %spec.select.i.i48.i, ptr %i.hp, align 8, !tbaa !66
  %i.ky = lshr exact i32 128, %i.kx
  %i.kz = and i32 %i.ky, %i.kw
  %.not.i49.i = icmp eq i32 %i.kz, 0
  br i1 %.not.i49.i, label %decode_motion.exit53.i, label %bb.z

bb.z:                                             ; preds = %decode_motion.exit.i
  %i.la = lshr i32 %spec.select.i.i48.i, 3
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !47
  %i.le = icmp slt i32 %spec.select.i.i48.i, %i.ig
  %i.lf = zext i1 %i.le to i32
  %spec.select.i5.i50.i = add i32 %spec.select.i.i48.i, %i.lf ; 4 uses
  %i.lg = zext i8 %i.ld to i32
  %i.lh = and i32 %spec.select.i.i48.i, 7
  store i32 %spec.select.i5.i50.i, ptr %i.hp, align 8, !tbaa !66
  %i.li = lshr exact i32 128, %i.lh
  %i.lj = and i32 %i.li, %i.lg
  %.not4.i51.i = icmp eq i32 %i.lj, 0
  %i.lk = lshr i32 %spec.select.i5.i50.i, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 1, !tbaa !47
  %i.lo = tail call i32 @llvm.bswap.i32(i32 %i.ln)
  %i.lp = and i32 %spec.select.i5.i50.i, 7
  %i.lq = shl i32 %i.lo, %i.lp
  %i.lr = lshr i32 %i.lq, 28
  %i.ls = add i32 %spec.select.i5.i50.i, 4
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.ig, i32 %i.ls)
  store i32 %i.lt, ptr %i.hp, align 8, !tbaa !66
  %i.lu = select i1 %.not4.i51.i, i32 1, i32 -16
  %i.lv = add nsw i32 %i.lr, %i.lu
  br label %decode_motion.exit53.i

decode_motion.exit53.i:                           ; preds = %bb.z, %decode_motion.exit.i, %decode210.exit.i, %bb.v
  %.140.i = phi i32 [ 0, %bb.v ], [ 0, %decode210.exit.i ], [ %i.ji, %decode_motion.exit.i ], [ %i.ji, %bb.z ]
  %.138.i = phi i32 [ undef, %bb.v ], [ undef, %decode210.exit.i ], [ %.1.i.i, %decode_motion.exit.i ], [ %.1.i.i, %bb.z ] ; 2 uses
  %.1.i = phi i32 [ undef, %bb.v ], [ undef, %decode210.exit.i ], [ 0, %decode_motion.exit.i ], [ %i.lv, %bb.z ] ; 2 uses
  %i.lw = sdiv i32 %.1.i, 2
  %i.lx = add nsw i32 %i.lw, %i.hy
  %i.ly = shl nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.lz = sdiv i32 %.138.i, 2
  %i.ma = trunc nuw nsw i64 %i.ly to i32
  %i.mb = add nsw i32 %i.lz, %i.ma
  %i.mc = shl nuw nsw i64 %indvars.iv, 4          ; 3 uses
  %i.md = trunc nuw nsw i64 %i.mc to i32
  %i.me = add i32 %.138.i, %i.md
  br label %bb.aa

bb.aa:                                            ; preds = %comp_block.exit.i, %decode_motion.exit53.i
  %indvars.iv.i104 = phi i64 [ 0, %decode_motion.exit53.i ], [ %indvars.iv.next.i105, %comp_block.exit.i ] ; 7 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv.i104 to i32 ; 4 uses
  %i.mg = shl nuw nsw i32 1, %i.mf
  %i.mh = and i32 %i.mg, %.140.i
  %.not44.i = icmp eq i32 %i.mh, 0
  br i1 %.not44.i, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mi = load i32, ptr %i.hp, align 8, !tbaa !66 ; 4 uses
  %i.mj = load ptr, ptr %i.hi, align 16, !tbaa !63 ; 3 uses
  %i.mk = lshr i32 %i.mi, 3
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !47
  %i.mo = load i32, ptr %i.ho, align 16, !tbaa !65 ; 3 uses
  %i.mp = icmp slt i32 %i.mi, %i.mo
  %i.mq = zext i1 %i.mp to i32
  %spec.select.i.i54.i = add i32 %i.mi, %i.mq     ; 5 uses
  %i.mr = zext i8 %i.mn to i32
  %i.ms = and i32 %i.mi, 7
  store i32 %spec.select.i.i54.i, ptr %i.hp, align 8, !tbaa !66
  %i.mt = lshr exact i32 128, %i.ms
  %i.mu = and i32 %i.mt, %i.mr
  %.not.i55.i = icmp eq i32 %i.mu, 0
  br i1 %.not.i55.i, label %decode_motion.exit59.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mv = lshr i32 %spec.select.i.i54.i, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !47
  %i.mz = icmp slt i32 %spec.select.i.i54.i, %i.mo
  %i.na = zext i1 %i.mz to i32
  %spec.select.i5.i56.i = add i32 %spec.select.i.i54.i, %i.na ; 4 uses
  %i.nb = zext i8 %i.my to i32
  %i.nc = and i32 %spec.select.i.i54.i, 7
  store i32 %spec.select.i5.i56.i, ptr %i.hp, align 8, !tbaa !66
  %i.nd = lshr exact i32 128, %i.nc
  %i.ne = and i32 %i.nd, %i.nb
  %.not4.i57.i = icmp eq i32 %i.ne, 0
  %i.nf = lshr i32 %spec.select.i5.i56.i, 3
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 1, !tbaa !47
  %i.nj = tail call i32 @llvm.bswap.i32(i32 %i.ni)
  %i.nk = and i32 %spec.select.i5.i56.i, 7
  %i.nl = shl i32 %i.nj, %i.nk
  %i.nm = lshr i32 %i.nl, 28
  %i.nn = add i32 %spec.select.i5.i56.i, 4
  %i.no = tail call i32 @llvm.umin.i32(i32 %i.mo, i32 %i.nn)
  store i32 %i.no, ptr %i.hp, align 8, !tbaa !66
  %i.np = select i1 %.not4.i57.i, i32 1, i32 -16
  %i.nq = add nsw i32 %i.nm, %i.np
  %i.nr = shl nsw i32 %i.nq, 1
  br label %decode_motion.exit59.i

decode_motion.exit59.i:                           ; preds = %bb.ac, %bb.ab
  %.1.i58.i = phi i32 [ %i.nr, %bb.ac ], [ 0, %bb.ab ] ; 16 uses
  %i.ns = load ptr, ptr %i.hs, align 8, !tbaa !36 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !54 ; 2 uses
  %.not45.i = icmp eq ptr %i.nt, null
  br i1 %.not45.i, label %comp_block.exit.i, label %bb.ad

bb.ad:                                            ; preds = %decode_motion.exit59.i
  %i.nu = icmp samesign ult i64 %indvars.iv.i104, 4
  br i1 %i.nu, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.nv = shl nuw nsw i32 %i.mf, 2
  %i.nw = and i32 %i.nv, 8
  %i.nx = or disjoint i32 %i.nw, %i.hz            ; 2 uses
  %i.ny = add nsw i32 %i.nx, %.1.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !60 ; 3 uses
  %i.ob = mul nsw i32 %i.oa, %i.ny
  %i.oc = shl nuw nsw i32 %i.mf, 3
  %i.od = and i32 %i.oc, 8                        ; 2 uses
  %i.oe = add i32 %i.me, %i.od
  %i.of = add i32 %i.oe, %i.ob                    ; 2 uses
  %i.og = load ptr, ptr %i.f, align 16, !tbaa !35
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 116
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !53
  %i.oj = add nsw i32 %i.oi, -7
  %i.ok = mul nsw i32 %i.oj, %i.oa
  %i.ol = add nsw i32 %i.ok, -7
  %.not50.i.i = icmp ult i32 %i.of, %i.ol
  br i1 %.not50.i.i, label %bb.af, label %comp_block.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.om = load ptr, ptr %1, align 8, !tbaa !54
  %i.on = load i32, ptr %i.ht, align 8, !tbaa !60 ; 2 uses
  %i.oo = mul nsw i32 %i.on, %i.nx
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds i8, ptr %i.om, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.mc
  %i.os = zext nneg i32 %i.od to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.os
  %i.ou = sext i32 %i.on to i64
  %i.ov = zext i32 %i.of to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ov
  %i.ox = sext i32 %i.oa to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.af
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.oy = mul nsw i64 %indvars.iv.i.i.i, %i.ox
  %i.oz = getelementptr i8, ptr %i.ow, i64 %i.oy  ; 8 uses
  %i.pa = mul nsw i64 %indvars.iv.i.i.i, %i.ou
  %i.pb = getelementptr i8, ptr %i.ot, i64 %i.pa  ; 8 uses
  %i.pc = load i8, ptr %i.oz, align 1, !tbaa !47
  %i.pd = zext i8 %i.pc to i32
  %i.pe = add nsw i32 %.1.i58.i, %i.pd
  %i.pf = tail call i32 @llvm.smax.i32(i32 %i.pe, i32 0)
  %.0.i13.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 255)
  %.0.i.i.i.i = trunc nuw i32 %.0.i13.i.i.i to i8
  store i8 %.0.i.i.i.i, ptr %i.pb, align 1, !tbaa !47
  %i.pg = getelementptr i8, ptr %i.oz, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !47
  %i.pi = zext i8 %i.ph to i32
  %i.pj = add nsw i32 %.1.i58.i, %i.pi
  %i.pk = tail call i32 @llvm.smax.i32(i32 %i.pj, i32 0)
  %.0.i13.1.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pk, i32 255)
  %.0.i.1.i.i.i = trunc nuw i32 %.0.i13.1.i.i.i to i8
  %i.pl = getelementptr i8, ptr %i.pb, i64 1
  store i8 %.0.i.1.i.i.i, ptr %i.pl, align 1, !tbaa !47
  %i.pm = getelementptr i8, ptr %i.oz, i64 2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !47
  %i.po = zext i8 %i.pn to i32
  %i.pp = add nsw i32 %.1.i58.i, %i.po
  %i.pq = tail call i32 @llvm.smax.i32(i32 %i.pp, i32 0)
  %.0.i13.2.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pq, i32 255)
  %.0.i.2.i.i.i = trunc nuw i32 %.0.i13.2.i.i.i to i8
  %i.pr = getelementptr i8, ptr %i.pb, i64 2
  store i8 %.0.i.2.i.i.i, ptr %i.pr, align 1, !tbaa !47
  %i.ps = getelementptr i8, ptr %i.oz, i64 3
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !47
  %i.pu = zext i8 %i.pt to i32
  %i.pv = add nsw i32 %.1.i58.i, %i.pu
  %i.pw = tail call i32 @llvm.smax.i32(i32 %i.pv, i32 0)
  %.0.i13.3.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.pw, i32 255)
  %.0.i.3.i.i.i = trunc nuw i32 %.0.i13.3.i.i.i to i8
  %i.px = getelementptr i8, ptr %i.pb, i64 3
  store i8 %.0.i.3.i.i.i, ptr %i.px, align 1, !tbaa !47
  %i.py = getelementptr i8, ptr %i.oz, i64 4
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !47
  %i.qa = zext i8 %i.pz to i32
  %i.qb = add nsw i32 %.1.i58.i, %i.qa
  %i.qc = tail call i32 @llvm.smax.i32(i32 %i.qb, i32 0)
  %.0.i13.4.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 255)
  %.0.i.4.i.i.i = trunc nuw i32 %.0.i13.4.i.i.i to i8
  %i.qd = getelementptr i8, ptr %i.pb, i64 4
  store i8 %.0.i.4.i.i.i, ptr %i.qd, align 1, !tbaa !47
  %i.qe = getelementptr i8, ptr %i.oz, i64 5
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !47
  %i.qg = zext i8 %i.qf to i32
  %i.qh = add nsw i32 %.1.i58.i, %i.qg
  %i.qi = tail call i32 @llvm.smax.i32(i32 %i.qh, i32 0)
  %.0.i13.5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.qi, i32 255)
  %.0.i.5.i.i.i = trunc nuw i32 %.0.i13.5.i.i.i to i8
  %i.qj = getelementptr i8, ptr %i.pb, i64 5
  store i8 %.0.i.5.i.i.i, ptr %i.qj, align 1, !tbaa !47
  %i.qk = getelementptr i8, ptr %i.oz, i64 6
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !47
  %i.qm = zext i8 %i.ql to i32
  %i.qn = add nsw i32 %.1.i58.i, %i.qm
  %i.qo = tail call i32 @llvm.smax.i32(i32 %i.qn, i32 0)
  %.0.i13.6.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.qo, i32 255)
  %.0.i.6.i.i.i = trunc nuw i32 %.0.i13.6.i.i.i to i8
  %i.qp = getelementptr i8, ptr %i.pb, i64 6
  store i8 %.0.i.6.i.i.i, ptr %i.qp, align 1, !tbaa !47
  %i.qq = getelementptr i8, ptr %i.oz, i64 7
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !47
  %i.qs = zext i8 %i.qr to i32
  %i.qt = add nsw i32 %.1.i58.i, %i.qs
  %i.qu = tail call i32 @llvm.smax.i32(i32 %i.qt, i32 0)
  %.0.i13.7.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.qu, i32 255)
  %.0.i.7.i.i.i = trunc nuw i32 %.0.i13.7.i.i.i to i8
  %i.qv = getelementptr i8, ptr %i.pb, i64 7
  store i8 %.0.i.7.i.i.i, ptr %i.qv, align 1, !tbaa !47
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %comp_block.exit.i, label %.preheader.i.i.i, !llvm.loop !39

bb.ag:                                            ; preds = %bb.ad
  %i.qw = load ptr, ptr %i.f, align 16, !tbaa !35 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 64
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !67
  %i.qz = and i32 %i.qy, 8192
  %.not.i60.i = icmp eq i32 %i.qz, 0
  br i1 %.not.i60.i, label %bb.ah, label %comp_block.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ra = add nsw i64 %indvars.iv.i104, -3        ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ra
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !60 ; 3 uses
  %i.re = mul nsw i32 %i.rd, %i.lx
  %i.rf = add i32 %i.mb, %i.re                    ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 116
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !53
  %i.ri = sdiv i32 %i.rh, 2
  %i.rj = add nsw i32 %i.ri, -7
  %i.rk = mul nsw i32 %i.rj, %i.rd
  %i.rl = add nsw i32 %i.rk, -7
  %.not49.i.i = icmp ult i32 %i.rf, %i.rl
  br i1 %.not49.i.i, label %bb.ai, label %comp_block.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ra
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !54
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ra
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !60 ; 2 uses
  %i.rq = mul nsw i32 %i.rp, %i.hy
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %i.rn, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ly
  %i.ru = sext i32 %i.rp to i64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.ra
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !54
  %i.rx = zext i32 %i.rf to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx
  %i.rz = sext i32 %i.rd to i64
  br label %.preheader.i51.i.i

.preheader.i51.i.i:                               ; preds = %.preheader.i51.i.i, %bb.ai
  %indvars.iv.i52.i.i = phi i64 [ 0, %bb.ai ], [ %indvars.iv.next.i69.i.i, %.preheader.i51.i.i ] ; 3 uses
  %i.sa = mul nsw i64 %indvars.iv.i52.i.i, %i.rz
  %i.sb = getelementptr i8, ptr %i.ry, i64 %i.sa  ; 8 uses
  %i.sc = mul nsw i64 %indvars.iv.i52.i.i, %i.ru
  %i.sd = getelementptr i8, ptr %i.rt, i64 %i.sc  ; 8 uses
  %i.se = load i8, ptr %i.sb, align 1, !tbaa !47
  %i.sf = zext i8 %i.se to i32
  %i.sg = add nsw i32 %.1.i58.i, %i.sf
  %i.sh = tail call i32 @llvm.smax.i32(i32 %i.sg, i32 0)
  %.0.i13.i53.i.i = tail call i32 @llvm.umin.i32(i32 %i.sh, i32 255)
  %.0.i.i54.i.i = trunc nuw i32 %.0.i13.i53.i.i to i8
  store i8 %.0.i.i54.i.i, ptr %i.sd, align 1, !tbaa !47
  %i.si = getelementptr i8, ptr %i.sb, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !47
  %i.sk = zext i8 %i.sj to i32
  %i.sl = add nsw i32 %.1.i58.i, %i.sk
  %i.sm = tail call i32 @llvm.smax.i32(i32 %i.sl, i32 0)
  %.0.i13.1.i55.i.i = tail call i32 @llvm.umin.i32(i32 %i.sm, i32 255)
  %.0.i.1.i56.i.i = trunc nuw i32 %.0.i13.1.i55.i.i to i8
  %i.sn = getelementptr i8, ptr %i.sd, i64 1
  store i8 %.0.i.1.i56.i.i, ptr %i.sn, align 1, !tbaa !47
  %i.so = getelementptr i8, ptr %i.sb, i64 2
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !47
  %i.sq = zext i8 %i.sp to i32
  %i.sr = add nsw i32 %.1.i58.i, %i.sq
  %i.ss = tail call i32 @llvm.smax.i32(i32 %i.sr, i32 0)
  %.0.i13.2.i57.i.i = tail call i32 @llvm.umin.i32(i32 %i.ss, i32 255)
  %.0.i.2.i58.i.i = trunc nuw i32 %.0.i13.2.i57.i.i to i8
end_hunk_0
