Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorchannelmixer?download=true
inline.NumInlined: 157
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_slice_gbrap32:bb.a
  %min.iters.check = icmp ult i32 %i.bs, 12
  %i.hj = icmp ult <2 x ptr> %i.gn, %i.hg
  %i.hk = icmp ult <2 x ptr> %i.hi, %i.gc
  %i.hl = icmp ult <2 x ptr> %i.gb, %i.gc
  %i.hm = icmp ult <2 x ptr> %i.gn, %i.gp
  %i.hn = icmp ult <2 x ptr> %i.gd, %i.gf
  %i.ho = icmp ult <2 x ptr> %i.gr, %i.gs
  %i.hp = or <4 x i32> %i.fh, %i.fi
  %i.hq = icmp slt <4 x i32> %i.hp, zeroinitializer
  %i.hr = icmp ult <4 x ptr> %i.fw, %i.fz
  %i.hs = icmp ult <4 x ptr> %i.gi, %i.gm
  %i.ht = or <16 x i32> %i.ep, %i.eq
  %i.hu = icmp ult <2 x ptr> %i.gu, %i.gv
  %i.hv = icmp ult <2 x ptr> %i.gz, %i.hb
  %i.hw = icmp ult <2 x ptr> %i.gw, %i.gy
  %i.hx = icmp ult <2 x ptr> %i.hd, %i.he
  %i.hy = icmp ult <2 x ptr> %i.fq, %i.fs
  %i.hz = icmp ult <2 x ptr> %i.fm, %i.fo
  %i.ia = icmp ult <4 x ptr> %i.fc, %i.fg
  %i.ib = icmp ult <4 x ptr> %i.eu, %i.ey
  %i.ic = and <4 x i1> %i.ib, %i.ia
  %bound0139 = icmp ult ptr %i.bp, %scevgep23
  %bound1140 = icmp ult ptr %i.ap, %scevgep20
  %found.conflict141 = and i1 %bound0139, %bound1140
  %bound0145 = icmp ult ptr %i.bp, %scevgep24
  %bound1146 = icmp ult ptr %i.ax, %scevgep20
  %found.conflict147 = and i1 %bound0145, %bound1146
  %i.id = and <2 x i1> %i.hz, %i.hy
  %i.ie = shufflevector <2 x i1> %i.hm, <2 x i1> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.if = shufflevector <4 x i1> %i.hs, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ig = shufflevector <2 x i1> %i.hl, <2 x i1> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ih = shufflevector <4 x i1> %i.hr, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = and <2 x i1> %i.hj, %i.hk               ; 2 uses
  %i.ij = icmp slt <16 x i32> %i.ht, zeroinitializer ; 2 uses
  %i.ik = shufflevector <2 x i1> %i.ii, <2 x i1> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.il = shufflevector <8 x i1> %i.ie, <8 x i1> %i.if, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.im = shufflevector <8 x i1> %i.ig, <8 x i1> %i.ih, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.in = and <16 x i1> %i.il, %i.im
  %i.io = shufflevector <16 x i1> %i.ik, <16 x i1> %i.in, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <2 x i1> %i.hv, <2 x i1> %i.hx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <2 x i1> %i.hu, <2 x i1> %i.hw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = and <16 x i1> %i.ip, %i.iq
  %i.is = shufflevector <16 x i1> %i.io, <16 x i1> %i.ir, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <2 x i1> %i.id, <2 x i1> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iu = shufflevector <16 x i1> %i.is, <16 x i1> %i.it, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.iv = shufflevector <2 x i1> %i.ii, <2 x i1> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iw = shufflevector <16 x i1> %i.ij, <16 x i1> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = shufflevector <16 x i1> %i.iu, <16 x i1> %i.iv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iy = shufflevector <32 x i1> %i.iw, <32 x i1> %i.ix, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.iz = shufflevector <16 x i1> %i.ij, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.iz, %i.ic
  %i.ja = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jb = shufflevector <32 x i1> %i.ja, <32 x i1> %i.iy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.jc = bitcast <32 x i1> %i.jb to i32
  %i.jd = icmp ne i32 %i.jc, 0
  %i.je = bitcast <4 x i1> %i.hq to i4
  %i.jf = icmp ne i4 %i.je, 0
  %i.jg = or <2 x i32> %i.fj, %i.fk
  %i.jh = icmp slt <2 x i32> %i.jg, zeroinitializer
  %i.ji = insertelement <2 x i1> poison, i1 %i.jf, i64 0
  %i.jj = insertelement <2 x i1> %i.ji, i1 %found.conflict141, i64 1
  %i.jk = or <2 x i1> %i.jj, %i.jh
  %op.rdx193 = or i1 %found.conflict147, %i.jd
  %i.jl = bitcast <2 x i1> %i.jk to i2
  %op.rdx194 = icmp ne i2 %i.jl, 0
  %op.rdx195 = or i1 %op.rdx194, %op.rdx193
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat152 = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat154 = shufflevector <2 x double> %i.cw, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat156 = shufflevector <2 x double> %i.cw, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat158 = shufflevector <2 x double> %i.db, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat160 = shufflevector <2 x double> %i.db, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat162 = shufflevector <2 x double> %i.cx, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat164 = shufflevector <2 x double> %i.cx, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat166 = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat168 = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <4 x double> poison, double %i.cy, i64 0
  %broadcast.splat170 = shufflevector <4 x double> %broadcast.splatinsert169, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <4 x double> poison, double %i.cz, i64 0
  %broadcast.splat172 = shufflevector <4 x double> %broadcast.splatinsert171, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat174 = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat176 = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <4 x double> poison, double %i.de, i64 0
  %broadcast.splat178 = shufflevector <4 x double> %broadcast.splatinsert177, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x double> poison, double %i.df, i64 0
  %broadcast.splat180 = shufflevector <4 x double> %broadcast.splatinsert179, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.jm = shufflevector <2 x double> %i.da, <2 x double> %i.db, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.jn = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.jo = shufflevector <4 x double> %i.jm, <4 x double> %i.jn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jp = shufflevector <2 x double> %i.da, <2 x double> %i.db, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jq = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.jr = shufflevector <4 x double> %i.jp, <4 x double> %i.jq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.js = shufflevector <2 x double> %i.cw, <2 x double> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.jt = shufflevector <2 x double> %i.cw, <2 x double> %i.cx, <2 x i32> <i32 0, i32 2>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.0136.i12 = phi i32 [ %i.k, %.preheader.lr.ph.split ], [ %i.lm, %._crit_edge ]
  %.0137.i11 = phi ptr [ %i.bp, %.preheader.lr.ph.split ], [ %i.ll, %._crit_edge ] ; 3 uses
  %.0138.i10 = phi ptr [ %i.bl, %.preheader.lr.ph.split ], [ %i.lk, %._crit_edge ] ; 3 uses
  %.0139.i9 = phi ptr [ %i.bh, %.preheader.lr.ph.split ], [ %i.lj, %._crit_edge ] ; 3 uses
  %.0140.i8 = phi ptr [ %i.bd, %.preheader.lr.ph.split ], [ %i.li, %._crit_edge ] ; 3 uses
  %.0141.i7 = phi ptr [ %i.ax, %.preheader.lr.ph.split ], [ %i.lh, %._crit_edge ] ; 3 uses
  %.0142.i6 = phi ptr [ %i.at, %.preheader.lr.ph.split ], [ %i.lg, %._crit_edge ] ; 3 uses
  %.0143.i5 = phi ptr [ %i.ap, %.preheader.lr.ph.split ], [ %i.lf, %._crit_edge ] ; 3 uses
  %.0144.i4 = phi ptr [ %i.al, %.preheader.lr.ph.split ], [ %i.le, %._crit_edge ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx195
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 9 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.0142.i6, i64 %index
  %wide.load = load <4 x float>, ptr %i.ju, align 4, !tbaa !83, !alias.scope !129
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0144.i4, i64 %index
  %wide.load181 = load <4 x float>, ptr %i.jv, align 4, !tbaa !83, !alias.scope !130
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.0143.i5, i64 %index
  %wide.load182 = load <4 x float>, ptr %i.jw, align 4, !tbaa !83, !alias.scope !131
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0141.i7, i64 %index
  %wide.load183 = load <4 x float>, ptr %i.jx, align 4, !tbaa !83, !alias.scope !132
  %i.jy = fpext nsz <4 x float> %wide.load183 to <4 x double> ; 4 uses
  %i.jz = fpext nsz <4 x float> %wide.load to <4 x double> ; 4 uses
  %i.ka = fpext nsz <4 x float> %wide.load181 to <4 x double> ; 4 uses
  %i.kb = fmul nsz <4 x double> %broadcast.splat, %i.ka
  %i.kc = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat152, <4 x double> %i.jz, <4 x double> %i.kb)
  %i.kd = fpext nsz <4 x float> %wide.load182 to <4 x double> ; 4 uses
  %i.ke = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat154, <4 x double> %i.kd, <4 x double> %i.kc)
  %i.kf = fmul nsz <4 x double> %broadcast.splat156, %i.jy
  %i.kg = fadd nsz <4 x double> %i.ke, %i.kf
  %i.kh = fptrunc nsz <4 x double> %i.kg to <4 x float>
  %i.ki = fmul nsz <4 x double> %broadcast.splat158, %i.ka
  %i.kj = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat160, <4 x double> %i.jz, <4 x double> %i.ki)
  %i.kk = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat162, <4 x double> %i.kd, <4 x double> %i.kj)
  %i.kl = fmul nsz <4 x double> %broadcast.splat164, %i.jy
  %i.km = fadd nsz <4 x double> %i.kk, %i.kl
  %i.kn = fptrunc nsz <4 x double> %i.km to <4 x float>
  %i.ko = fmul nsz <4 x double> %broadcast.splat166, %i.ka
  %i.kp = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat168, <4 x double> %i.jz, <4 x double> %i.ko)
  %i.kq = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat170, <4 x double> %i.kd, <4 x double> %i.kp)
  %i.kr = fmul nsz <4 x double> %broadcast.splat172, %i.jy
  %i.ks = fadd nsz <4 x double> %i.kq, %i.kr
  %i.kt = fptrunc nsz <4 x double> %i.ks to <4 x float>
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0138.i10, i64 %index
  store <4 x float> %i.kh, ptr %i.ku, align 4, !tbaa !83, !alias.scope !133, !noalias !134
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.0140.i8, i64 %index
  store <4 x float> %i.kn, ptr %i.kv, align 4, !tbaa !83, !alias.scope !135, !noalias !136
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0139.i9, i64 %index
  store <4 x float> %i.kt, ptr %i.kw, align 4, !tbaa !83, !alias.scope !137, !noalias !138
  %i.kx = fmul nsz <4 x double> %broadcast.splat174, %i.ka
  %i.ky = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat176, <4 x double> %i.jz, <4 x double> %i.kx)
  %i.kz = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat178, <4 x double> %i.kd, <4 x double> %i.ky)
  %i.la = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat180, <4 x double> %i.jy, <4 x double> %i.kz)
  %i.lb = fptrunc nsz <4 x double> %i.la to <4 x float>
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0137.i11, i64 %index
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !83, !alias.scope !139, !noalias !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0144.i4, i64 %i.bv
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.0143.i5, i64 %i.bx
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.0142.i6, i64 %i.bz
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.0141.i7, i64 %i.cb
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.0140.i8, i64 %i.cd
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.0139.i9, i64 %i.cf
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.0138.i10, i64 %i.ch
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.0137.i11, i64 %i.cj
  %i.lm = add nsw i32 %.0136.i12, 1               ; 2 uses
  %exitcond14.not = icmp eq i32 %i.lm, %i.p
  br i1 %exitcond14.not, label %filter_slice_rgba_planar_32.exit, label %.preheader, !llvm.loop !7

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0142.i6, i64 %indvars.iv
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !83
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.0144.i4, i64 %indvars.iv
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !83
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.0143.i5, i64 %indvars.iv
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !83
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.0141.i7, i64 %indvars.iv
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !83
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.0138.i10, i64 %indvars.iv
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.0140.i8, i64 %indvars.iv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.0139.i9, i64 %indvars.iv
  %i.ly = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lq, i64 1
  %i.ma = fpext <2 x float> %i.lz to <2 x double> ; 2 uses
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mc = fmul nsz <4 x double> %i.jo, %i.mb
  %i.md = shufflevector <2 x double> %i.ma, <2 x double> poison, <4 x i32> zeroinitializer
  %i.me = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jr, <4 x double> %i.md, <4 x double> %i.mc) ; 3 uses
  %4 = fpext nsz float %i.lu to double            ; 3 uses
  %5 = fpext nsz float %i.ls to double            ; 3 uses
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mf = fmul nsz <2 x double> %i.js, %7
  %8 = fmul nsz double %i.cz, %4
  %9 = insertelement <2 x double> poison, double %5, i64 0
  %i.mg = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = shufflevector <4 x double> %i.me, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.mi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.mg, <2 x double> %i.mh)
  %i.mj = fadd nsz <2 x double> %i.mi, %i.mf
  %i.mk = fptrunc <2 x double> %i.mj to <2 x float> ; 2 uses
  %i.ml = extractelement <4 x double> %i.me, i64 2
  %i.mm = tail call nsz double @llvm.fmuladd.f64(double %i.cy, double %5, double %i.ml)
  %i.mn = fadd nsz double %i.mm, %8
  %i.mo = fptrunc nsz double %i.mn to float
  %i.mp = extractelement <2 x float> %i.mk, i64 0
  store float %i.mp, ptr %i.lv, align 4, !tbaa !83
  %i.mq = extractelement <2 x float> %i.mk, i64 1
  store float %i.mq, ptr %i.lw, align 4, !tbaa !83
  store float %i.mo, ptr %i.lx, align 4, !tbaa !83
  %i.mr = extractelement <4 x double> %i.me, i64 3
  %i.ms = tail call nsz double @llvm.fmuladd.f64(double %i.de, double %5, double %i.mr)
  %i.mt = tail call nsz double @llvm.fmuladd.f64(double %i.df, double %4, double %i.ms)
  %i.mu = fptrunc nsz double %i.mt to float
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0137.i11, i64 %indvars.iv
  store float %i.mu, ptr %i.mv, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !128

filter_slice_rgba_planar_32.exit:                 ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_slice_gbrap32_pl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 18 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !46     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = load double, ptr %i.f, align 8, !tbaa !77
  %i.h = fptrunc nsz double %i.g to float         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = sext i32 %2 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = sdiv i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32                    ; 10 uses
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.k, %i.r
  %i.t = sdiv i64 %i.s, %i.n
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !66   ; 2 uses
  %i.y = mul nsw i32 %i.x, %i.p
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !66 ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.p
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.p
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !66 ; 2 uses
  %i.at = mul nsw i32 %i.as, %i.p
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !66 ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.p
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !74
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66 ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.p
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.p
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !66 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.p
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 %i.bv
  %i.bx = icmp slt i32 %i.p, %i.u
  br i1 %i.bx, label %.preheader.lr.ph, label %filter_slice_rgba_planar_32.exit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !76 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = sext i32 %i.x to i64
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = sext i32 %i.ae to i64
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = sext i32 %i.al to i64
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = sext i32 %i.as to i64
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = sext i32 %i.ay to i64
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = sext i32 %i.bf to i64
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = sext i32 %i.bm to i64
  %i.co = lshr i64 %i.cn, 2
  %i.cp = sext i32 %i.bt to i64
  %i.cq = lshr i64 %i.cp, 2
  br i1 %i.ca, label %.preheader.lr.ph.split, label %filter_slice_rgba_planar_32.exit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !50
  %i.dj = load double, ptr %i.dg, align 8, !tbaa !51
  %i.dk = load double, ptr %i.df, align 8, !tbaa !52
  %i.dl = load double, ptr %i.de, align 8, !tbaa !53
  %i.dm = load double, ptr %i.dd, align 8, !tbaa !54
  %i.dn = load double, ptr %i.dc, align 8, !tbaa !55
  %i.do = load double, ptr %i.db, align 8, !tbaa !56
  %i.dp = load double, ptr %i.da, align 8, !tbaa !57
  %i.dq = load double, ptr %i.cz, align 8, !tbaa !58
  %i.dr = load double, ptr %i.cy, align 8, !tbaa !59
  %i.ds = load double, ptr %i.cx, align 8, !tbaa !60
  %i.dt = load double, ptr %i.cw, align 8, !tbaa !61
  %i.du = load i32, ptr %i.cv, align 8, !tbaa !44
  %i.dv = load double, ptr %i.cu, align 8, !tbaa !62
  %i.dw = load double, ptr %i.ct, align 8, !tbaa !63
  %i.dx = load double, ptr %i.cs, align 8, !tbaa !64
  %i.dy = load double, ptr %i.cr, align 8, !tbaa !65
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.0136.i20 = phi i32 [ %i.p, %.preheader.lr.ph.split ], [ %i.eh, %._crit_edge ]
  %.0137.i19 = phi ptr [ %i.bw, %.preheader.lr.ph.split ], [ %i.eg, %._crit_edge ] ; 2 uses
  %.0138.i18 = phi ptr [ %i.bp, %.preheader.lr.ph.split ], [ %i.ef, %._crit_edge ] ; 2 uses
  %.0139.i17 = phi ptr [ %i.bi, %.preheader.lr.ph.split ], [ %i.ee, %._crit_edge ] ; 2 uses
  %.0140.i16 = phi ptr [ %i.bb, %.preheader.lr.ph.split ], [ %i.ed, %._crit_edge ] ; 2 uses
  %.0141.i15 = phi ptr [ %i.av, %.preheader.lr.ph.split ], [ %i.ec, %._crit_edge ] ; 2 uses
  %.0142.i14 = phi ptr [ %i.ao, %.preheader.lr.ph.split ], [ %i.eb, %._crit_edge ] ; 2 uses
  %.0143.i13 = phi ptr [ %i.ah, %.preheader.lr.ph.split ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.0144.i12 = phi ptr [ %i.aa, %.preheader.lr.ph.split ], [ %i.dz, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %preserve_color.exit
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0144.i12, i64 %i.cc
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0143.i13, i64 %i.ce
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0142.i14, i64 %i.cg
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0141.i15, i64 %i.ci
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0140.i16, i64 %i.ck
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0139.i17, i64 %i.cm
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0138.i18, i64 %i.co
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0137.i19, i64 %i.cq
  %i.eh = add nsw i32 %.0136.i20, 1               ; 2 uses
  %exitcond22.not = icmp eq i32 %i.eh, %i.u
  br i1 %exitcond22.not, label %filter_slice_rgba_planar_32.exit, label %.preheader, !llvm.loop !7

bb.b:                                             ; preds = %.preheader, %preserve_color.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %preserve_color.exit ] ; 9 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0142.i14, i64 %indvars.iv
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !83 ; 7 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.0144.i12, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !83 ; 7 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0143.i13, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !83 ; 7 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0141.i15, i64 %indvars.iv
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !83
  %i.eq = fpext nsz float %i.ep to double         ; 4 uses
  %i.er = fpext nsz float %i.ej to double         ; 4 uses
  %i.es = fpext nsz float %i.el to double         ; 4 uses
  %i.et = fmul nsz double %i.dj, %i.es
  %i.eu = tail call nsz double @llvm.fmuladd.f64(double %i.di, double %i.er, double %i.et)
  %i.ev = fpext nsz float %i.en to double         ; 4 uses
  %i.ew = tail call nsz double @llvm.fmuladd.f64(double %i.dk, double %i.ev, double %i.eu)
  %i.ex = fmul nsz double %i.dl, %i.eq
  %i.ey = fadd nsz double %i.ew, %i.ex
  %i.ez = fptrunc nsz double %i.ey to float       ; 9 uses
  %i.fa = fmul nsz double %i.dn, %i.es
  %i.fb = tail call nsz double @llvm.fmuladd.f64(double %i.dm, double %i.er, double %i.fa)
  %i.fc = tail call nsz double @llvm.fmuladd.f64(double %i.do, double %i.ev, double %i.fb)
end_hunk_0
