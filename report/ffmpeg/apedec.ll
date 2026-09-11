Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apedec?download=true
inline.NumInlined: 91
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 30
begin_hunk_0_@predictor_decode_mono_3800:bb.a

vector.body292:                                   ; preds = %vector.memcheck285, %vector.body292
  %index293 = phi i64 [ %index.next300, %vector.body292 ], [ 0, %vector.memcheck285 ] ; 3 uses
  %vec.phi294 = phi <4 x i32> [ %i.gx, %vector.body292 ], [ zeroinitializer, %vector.memcheck285 ]
  %vec.phi295 = phi <4 x i32> [ %i.gy, %vector.body292 ], [ zeroinitializer, %vector.memcheck285 ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %index293 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load296 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !59, !alias.scope !176 ; 2 uses
  %wide.load297 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !59, !alias.scope !176 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index293 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load298 = load <4 x i32>, ptr %i.gt, align 16, !tbaa !59, !alias.scope !177, !noalias !176 ; 2 uses
  %wide.load299 = load <4 x i32>, ptr %i.gu, align 16, !tbaa !59, !alias.scope !177, !noalias !176 ; 2 uses
  %i.gv = mul <4 x i32> %wide.load298, %wide.load296
  %i.gw = mul <4 x i32> %wide.load299, %wide.load297
  %i.gx = add <4 x i32> %i.gv, %vec.phi294        ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %vec.phi295        ; 2 uses
  %i.gz = ashr <4 x i32> %wide.load296, splat (i32 31)
  %i.ha = ashr <4 x i32> %wide.load297, splat (i32 31)
  %i.hb = or <4 x i32> %i.gz, splat (i32 1)
  %i.hc = or <4 x i32> %i.ha, splat (i32 1)
  %i.hd = sub nsw <4 x i32> %wide.load298, %i.hb
  %i.he = sub nsw <4 x i32> %wide.load299, %i.hc
  store <4 x i32> %i.hd, ptr %i.gt, align 16, !tbaa !59, !alias.scope !177, !noalias !176
  store <4 x i32> %i.he, ptr %i.gu, align 16, !tbaa !59, !alias.scope !177, !noalias !176
  %index.next300 = add nuw i64 %index293, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next300, 256
  br i1 %i.hf, label %middle.block301, label %vector.body292, !llvm.loop !163

middle.block301:                                  ; preds = %vector.body292
  %bin.rdx302 = add <4 x i32> %i.gy, %i.gx
  %i.hg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx302)
  br label %.loopexit.i87

vector.memcheck266:                               ; preds = %bb.j
  %scevgep268 = getelementptr i8, ptr %.078.i79, i64 1024
  %bound0269 = icmp ult ptr %i.a, %scevgep268
  %bound1270 = icmp ult ptr %.078.i79, %scevgep267
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.preheader64.i92, label %vector.body274

vector.body274:                                   ; preds = %vector.memcheck266, %vector.body274
  %index275 = phi i64 [ %index.next282, %vector.body274 ], [ 0, %vector.memcheck266 ] ; 3 uses
  %vec.phi276 = phi <4 x i32> [ %i.hn, %vector.body274 ], [ zeroinitializer, %vector.memcheck266 ]
  %vec.phi277 = phi <4 x i32> [ %i.ho, %vector.body274 ], [ zeroinitializer, %vector.memcheck266 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %index275 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load278 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !59, !alias.scope !178 ; 2 uses
  %wide.load279 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !59, !alias.scope !178 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index275 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %wide.load280 = load <4 x i32>, ptr %i.hj, align 16, !tbaa !59, !alias.scope !179, !noalias !178 ; 2 uses
  %wide.load281 = load <4 x i32>, ptr %i.hk, align 16, !tbaa !59, !alias.scope !179, !noalias !178 ; 2 uses
  %i.hl = mul <4 x i32> %wide.load280, %wide.load278
  %i.hm = mul <4 x i32> %wide.load281, %wide.load279
  %i.hn = add <4 x i32> %i.hl, %vec.phi276        ; 2 uses
  %i.ho = add <4 x i32> %i.hm, %vec.phi277        ; 2 uses
  %i.hp = ashr <4 x i32> %wide.load278, splat (i32 31)
  %i.hq = ashr <4 x i32> %wide.load279, splat (i32 31)
  %i.hr = or <4 x i32> %i.hp, splat (i32 1)
  %i.hs = or <4 x i32> %i.hq, splat (i32 1)
  %i.ht = add nsw <4 x i32> %i.hr, %wide.load280
  %i.hu = add nsw <4 x i32> %i.hs, %wide.load281
  store <4 x i32> %i.ht, ptr %i.hj, align 16, !tbaa !59, !alias.scope !179, !noalias !178
  store <4 x i32> %i.hu, ptr %i.hk, align 16, !tbaa !59, !alias.scope !179, !noalias !178
  %index.next282 = add nuw i64 %index275, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next282, 256
  br i1 %i.hv, label %middle.block283, label %vector.body274, !llvm.loop !167

middle.block283:                                  ; preds = %vector.body274
  %bin.rdx284 = add <4 x i32> %i.ho, %i.hn
  %i.hw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx284)
  br label %.loopexit.i87

vector.body255:                                   ; preds = %bb.j, %vector.body255
  %index256 = phi i64 [ %index.next263, %vector.body255 ], [ 0, %bb.j ] ; 3 uses
  %vec.phi257 = phi <4 x i32> [ %i.id, %vector.body255 ], [ zeroinitializer, %bb.j ]
  %vec.phi258 = phi <4 x i32> [ %i.ie, %vector.body255 ], [ zeroinitializer, %bb.j ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %index256 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load259 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !59
  %wide.load260 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !59
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index256 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load261 = load <4 x i32>, ptr %i.hz, align 16, !tbaa !59
  %wide.load262 = load <4 x i32>, ptr %i.ia, align 16, !tbaa !59
  %i.ib = mul <4 x i32> %wide.load261, %wide.load259
  %i.ic = mul <4 x i32> %wide.load262, %wide.load260
  %i.id = add <4 x i32> %i.ib, %vec.phi257        ; 2 uses
  %i.ie = add <4 x i32> %i.ic, %vec.phi258        ; 2 uses
  %index.next263 = add nuw i64 %index256, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next263, 256
  br i1 %i.if, label %.loopexit.i87.loopexit, label %vector.body255, !llvm.loop !168

.preheader64.i92:                                 ; preds = %vector.memcheck266, %.preheader64.i92
  %indvars.iv85.i93 = phi i64 [ %indvars.iv.next86.i95.1, %.preheader64.i92 ], [ 0, %vector.memcheck266 ] ; 4 uses
  %.05474.i94 = phi i32 [ %i.iu, %.preheader64.i92 ], [ 0, %vector.memcheck266 ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %indvars.iv85.i93
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !59 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv85.i93 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.ik = mul i32 %i.ij, %i.ih
  %i.il = add i32 %i.ik, %.05474.i94
  %i.im = ashr i32 %i.ih, 31
  %i.in = or i32 %i.im, 1
  %i.io = add nsw i32 %i.in, %i.ij
  store i32 %i.io, ptr %i.ii, align 8, !tbaa !59
  %indvars.iv.next86.i95 = or disjoint i64 %indvars.iv85.i93, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %indvars.iv.next86.i95
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !59 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next86.i95 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !59 ; 2 uses
  %i.it = mul i32 %i.is, %i.iq
  %i.iu = add i32 %i.it, %i.il                    ; 2 uses
  %i.iv = ashr i32 %i.iq, 31
  %i.iw = or i32 %i.iv, 1
  %i.ix = add nsw i32 %i.iw, %i.is
  store i32 %i.ix, ptr %i.ir, align 4, !tbaa !59
  %indvars.iv.next86.i95.1 = add nuw nsw i64 %indvars.iv85.i93, 2 ; 2 uses
  %exitcond89.not.i96.1 = icmp eq i64 %indvars.iv.next86.i95.1, 256
  br i1 %exitcond89.not.i96.1, label %.loopexit.i87, label %.preheader64.i92, !llvm.loop !169

.preheader66.i82:                                 ; preds = %vector.memcheck285, %.preheader66.i82
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i85.1, %.preheader66.i82 ], [ 0, %vector.memcheck285 ] ; 4 uses
  %.15572.i84 = phi i32 [ %i.jm, %.preheader66.i82 ], [ 0, %vector.memcheck285 ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %indvars.iv.i83
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !59 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i83 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !59 ; 2 uses
  %i.jc = mul i32 %i.jb, %i.iz
  %i.jd = add i32 %i.jc, %.15572.i84
  %i.je = ashr i32 %i.iz, 31
  %i.jf = or i32 %i.je, 1
  %i.jg = sub nsw i32 %i.jb, %i.jf
  store i32 %i.jg, ptr %i.ja, align 8, !tbaa !59
  %indvars.iv.next.i85 = or disjoint i64 %indvars.iv.i83, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.078.i79, i64 %indvars.iv.next.i85
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !59 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i85 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !59 ; 2 uses
  %i.jl = mul i32 %i.jk, %i.ji
  %i.jm = add i32 %i.jl, %i.jd                    ; 2 uses
  %i.jn = ashr i32 %i.ji, 31
  %i.jo = or i32 %i.jn, 1
  %i.jp = sub nsw i32 %i.jk, %i.jo
  store i32 %i.jp, ptr %i.jj, align 4, !tbaa !59
  %indvars.iv.next.i85.1 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %exitcond.not.i86.1 = icmp eq i64 %indvars.iv.next.i85.1, 256
  br i1 %exitcond.not.i86.1, label %.loopexit.i87, label %.preheader66.i82, !llvm.loop !170

.loopexit.i87.loopexit:                           ; preds = %vector.body255
  %bin.rdx265 = add <4 x i32> %i.ie, %i.id
  %i.jq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx265)
  br label %.loopexit.i87

.loopexit.i87:                                    ; preds = %.preheader66.i82, %.preheader64.i92, %middle.block301, %middle.block283, %.loopexit.i87.loopexit
  %.3.i88 = phi i32 [ %i.jq, %.loopexit.i87.loopexit ], [ %i.iu, %.preheader64.i92 ], [ %i.hw, %middle.block283 ], [ %i.hg, %middle.block301 ], [ %i.jm, %.preheader66.i82 ]
  %i.jr = ashr i32 %.3.i88, 12
  %i.js = sub i32 %i.go, %i.jr                    ; 2 uses
  store i32 %i.js, ptr %i.gn, align 4, !tbaa !59
  %i.jt = getelementptr inbounds nuw i8, ptr %.078.i79, i64 4 ; 3 uses
  %i.ju = getelementptr i8, ptr %.078.i79, i64 1024
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !59
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.jv, %i.gm
  %i.jx = icmp eq i64 %i.jw, 1024
  br i1 %i.jx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit.i87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, ptr noundef nonnull align 4 dereferenceable(1024) %i.jt, i64 1024, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit.i87
  %.1.i89 = phi ptr [ %i.b, %bb.k ], [ %i.jt, %.loopexit.i87 ]
  %indvars.iv.next96.i90 = add nuw nsw i64 %indvars.iv95.i78, 1 ; 2 uses
  %exitcond99.not.i91 = icmp eq i64 %indvars.iv.next96.i90, %wide.trip.count98.i77
  br i1 %exitcond99.not.i91, label %long_filter_high_3800.exit102, label %bb.j, !llvm.loop !1

long_filter_high_3800.exit102:                    ; preds = %bb.l, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.m

bb.m:                                             ; preds = %long_filter_high_3800.exit102, %long_filter_high_3800.exit74, %bb.a, %long_filter_high_3800.exit
  %.040 = phi i32 [ 16, %long_filter_high_3800.exit ], [ 4, %bb.a ], [ 256, %long_filter_high_3800.exit102 ], [ 128, %long_filter_high_3800.exit74 ]
  %.1 = phi i32 [ 10, %long_filter_high_3800.exit ], [ 10, %bb.a ], [ 11, %long_filter_high_3800.exit102 ], [ 10, %long_filter_high_3800.exit74 ]
  %.not119 = icmp eq i32 %1, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted = load ptr, ptr %i.f, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.v
  %2 = phi ptr [ %.promoted, %.lr.ph ], [ %3, %bb.v ] ; 7 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.kj, %bb.v ]
  %.041120 = phi ptr [ %i.h, %.lr.ph ], [ %.142, %bb.v ] ; 3 uses
  %i.kj = add nsw i32 %.in, -1                    ; 2 uses
  %i.kk = load i32, ptr %i.i, align 8, !tbaa !49
  %i.kl = icmp eq i32 %i.kk, 1000
  %i.km = load i32, ptr %.041120, align 4, !tbaa !59 ; 10 uses
  %i.kn = load i32, ptr %i.jy, align 8, !tbaa !59 ; 6 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !59
  br i1 %i.kl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.kp = load i32, ptr %i.ka, align 8, !tbaa !80
  %i.kq = icmp ult i32 %i.kp, 3
  br i1 %i.kq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.km, ptr %i.jy, align 8, !tbaa !59
  br label %filter_fast_3320.exit

bb.q:                                             ; preds = %bb.o
  %i.kr = shl i32 %i.kn, 1
  %i.ks = getelementptr i8, ptr %2, i64 196
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !59
  %i.ku = sub i32 %i.kr, %i.kt                    ; 2 uses
  %i.kv = load i32, ptr %i.kb, align 8, !tbaa !59 ; 2 uses
  %i.kw = mul i32 %i.ku, %i.kv
  %i.kx = ashr i32 %i.kw, 9
  %i.ky = add i32 %i.kx, %i.km                    ; 2 uses
  store i32 %i.ky, ptr %i.jy, align 8, !tbaa !59
  %i.kz = xor i32 %i.ku, %i.km
  %.inv = icmp slt i32 %i.kz, 1
  %storemerge.i.v = select i1 %.inv, i32 -1, i32 1
  %storemerge.i = add i32 %storemerge.i.v, %i.kv
  store i32 %storemerge.i, ptr %i.kb, align 8, !tbaa !59
  %i.la = load i32, ptr %i.kg, align 8, !tbaa !59
  %i.lb = add i32 %i.la, %i.ky
  br label %filter_fast_3320.exit

bb.r:                                             ; preds = %bb.n
  %i.lc = load i32, ptr %i.jz, align 8, !tbaa !59 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !59
  %i.le = load i32, ptr %i.ka, align 8, !tbaa !80
  %i.lf = icmp ult i32 %i.le, %.040
  br i1 %i.lf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.lg = load i32, ptr %i.kg, align 8, !tbaa !59
  %i.lh = add i32 %i.lg, %i.km
  store i32 %i.km, ptr %i.jy, align 8, !tbaa !59
  store i32 %i.km, ptr %i.jz, align 8, !tbaa !59
  br label %filter_fast_3320.exit

bb.t:                                             ; preds = %bb.r
  %i.li = getelementptr i8, ptr %2, i64 196
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !59 ; 2 uses
  %i.lk = sub i32 %i.kn, %i.lj
  %i.ll = shl i32 %i.lk, 1                        ; 2 uses
  %i.lm = getelementptr i8, ptr %2, i64 192
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !59
  %i.lo = sub i32 %i.ln, %i.lj
  %i.lp = shl i32 %i.lo, 3
  %i.lq = add i32 %i.lp, %i.kn                    ; 2 uses
  %i.lr = shl i32 %i.lc, 1
  %i.ls = getelementptr i8, ptr %2, i64 164
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !59
  %i.lu = sub i32 %i.lr, %i.lt                    ; 2 uses
  %i.lv = load i32, ptr %i.kb, align 8, !tbaa !59 ; 2 uses
  %i.lw = mul i32 %i.lq, %i.lv
  %i.lx = load i32, ptr %i.kc, align 4, !tbaa !59 ; 2 uses
  %i.ly = mul i32 %i.lx, %i.ll
  %i.lz = add i32 %i.lw, %i.ly
  %i.ma = load i32, ptr %i.kd, align 8, !tbaa !59 ; 2 uses
  %i.mb = mul i32 %i.ma, %i.kn
  %i.mc = add i32 %i.lz, %i.mb
  %.lobit.i = lshr i32 %i.km, 31
  %i.md = icmp sgt i32 %i.km, 0
  %.neg.i = sext i1 %i.md to i32
  %i.me = add nsw i32 %.lobit.i, %.neg.i          ; 3 uses
  %i.mf = lshr i32 %i.lq, 30
  %i.mg = and i32 %i.mf, 2
  %i.mh = add nsw i32 %i.mg, -1
  %i.mi = mul nsw i32 %i.mh, %i.me
  %i.mj = add i32 %i.mi, %i.lv
  store i32 %i.mj, ptr %i.kb, align 8, !tbaa !59
  %i.mk = lshr i32 %i.ll, 28
  %i.ml = and i32 %i.mk, 8
  %i.mm = add nsw i32 %i.ml, -4
  %i.mn = mul nsw i32 %i.mm, %i.me
  %i.mo = add i32 %i.mn, %i.lx
  store i32 %i.mo, ptr %i.kc, align 4, !tbaa !59
  %i.mp = lshr i32 %i.kn, 28
  %i.mq = and i32 %i.mp, 8
  %i.mr = add nsw i32 %i.mq, -4
  %i.ms = mul nsw i32 %i.mr, %i.me
  %i.mt = add i32 %i.ma, %i.ms
  store i32 %i.mt, ptr %i.kd, align 8, !tbaa !59
  %i.mu = load i32, ptr %i.ke, align 8, !tbaa !59 ; 2 uses
  %i.mv = mul i32 %i.mu, %i.lu
  %i.mw = load i32, ptr %i.kf, align 4, !tbaa !59 ; 2 uses
  %i.mx = mul i32 %i.mw, %i.lc
  %i.my = sub i32 %i.mv, %i.mx
  %i.mz = ashr i32 %i.mc, 11
  %i.na = add i32 %i.mz, %i.km                    ; 4 uses
  store i32 %i.na, ptr %i.jy, align 8, !tbaa !59
  %.lobit.i103 = lshr i32 %i.na, 31
  %i.nb = icmp sgt i32 %i.na, 0
  %.neg.i104 = sext i1 %i.nb to i32
  %i.nc = add nsw i32 %.lobit.i103, %.neg.i104    ; 2 uses
  %i.nd = lshr i32 %i.lu, 29
  %i.ne = and i32 %i.nd, 4
  %i.nf = add nsw i32 %i.ne, -2
  %i.ng = mul nsw i32 %i.nc, %i.nf
  %i.nh = add i32 %i.ng, %i.mu
  store i32 %i.nh, ptr %i.ke, align 8, !tbaa !59
  %i.ni = lshr i32 %i.lc, 30
  %i.nj = and i32 %i.ni, 2
  %i.nk = add nsw i32 %i.nj, -1
  %i.nl = mul nsw i32 %i.nc, %i.nk
  %i.nm = sub i32 %i.mw, %i.nl
  store i32 %i.nm, ptr %i.kf, align 4, !tbaa !59
  %i.nn = ashr i32 %i.my, %.1
  %i.no = add i32 %i.nn, %i.na                    ; 2 uses
  store i32 %i.no, ptr %i.jz, align 8, !tbaa !59
  %i.np = load i32, ptr %i.kg, align 8, !tbaa !59
  %i.nq = mul i32 %i.np, 31
  %i.nr = ashr i32 %i.nq, 5
  %i.ns = add i32 %i.nr, %i.no
  br label %filter_fast_3320.exit

filter_fast_3320.exit:                            ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %.sink = phi i32 [ %i.ns, %bb.t ], [ %i.lh, %bb.s ], [ %i.lb, %bb.q ], [ %i.km, %bb.p ] ; 2 uses
  store i32 %.sink, ptr %i.kg, align 8, !tbaa !59
  store i32 %.sink, ptr %.041120, align 4, !tbaa !59
  %.142 = getelementptr inbounds nuw i8, ptr %.041120, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store ptr %i.nt, ptr %i.f, align 8, !tbaa !79
  %i.nu = load i32, ptr %i.ka, align 8, !tbaa !80
  %i.nv = add i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ka, align 8, !tbaa !80
  %i.nw = icmp eq ptr %i.nt, %i.kh
  br i1 %i.nw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %filter_fast_3320.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ki, ptr noundef nonnull align 4 dereferenceable(200) %i.nt, i64 200, i1 false)
  store ptr %i.ki, ptr %i.f, align 8, !tbaa !79
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %filter_fast_3320.exit
  %3 = phi ptr [ %i.ki, %bb.u ], [ %i.nt, %filter_fast_3320.exit ]
  %.not = icmp eq i32 %i.kj, 0
  br i1 %.not, label %._crit_edge, label %bb.n, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.v, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @predictor_decode_stereo_3800(ptr noundef %0, i32 noundef %1) #5 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 14 uses
  %i.b = alloca [512 x i32], align 16             ; 8 uses
  %i.c = alloca [256 x i32], align 16             ; 14 uses
  %i.d = alloca [512 x i32], align 16             ; 8 uses
  %i.e = alloca [256 x i32], align 16             ; 14 uses
  %i.f = alloca [512 x i32], align 16             ; 8 uses
  %i.g = alloca [256 x i32], align 16             ; 14 uses
  %i.h = alloca [512 x i32], align 16             ; 8 uses
  %i.i = alloca [512 x i32], align 16             ; 8 uses
  %i.j = alloca [512 x i32], align 16             ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !49
  switch i32 %i.q, label %bb.v [
    i32 3000, label %bb.b
    i32 4000, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %.not.i = icmp sgt i32 %1, 16
  br i1 %.not.i, label %.lr.ph.i, label %long_filter_high_3800.exit.thread

long_filter_high_3800.exit.thread:                ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  br label %long_filter_high_3800.exit104

.lr.ph.i:                                         ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa !59
  %i.r = ptrtoint ptr %i.j to i64
  %wide.trip.count98.i = zext nneg i32 %1 to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv95.i = phi i64 [ 16, %.lr.ph.i ], [ %indvars.iv.next96.i, %bb.e ] ; 2 uses
  %.078.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 16 uses
  %i.s = phi <16 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.dj, %bb.e ] ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv95.i ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 3 uses
  %.lobit.i.i = lshr i32 %i.u, 31
  %i.v = icmp sgt i32 %i.u, 0
  %.neg.i.i = sext i1 %i.v to i32
  %i.w = add nsw i32 %.lobit.i.i, %.neg.i.i
  %i.x = load i32, ptr %.078.i, align 4, !tbaa !59 ; 3 uses
  %i.y = extractelement <16 x i32> %i.s, i64 0
  %i.z = mul i32 %i.y, %i.x                       ; 3 uses
  switch i32 %i.w, label %.preheader.i.preheader [
    i32 1, label %.preheader64.i.preheader
    i32 -1, label %.preheader66.i.preheader
  ]

.preheader66.i.preheader:                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.078.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.078.i, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.078.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.078.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.078.i, i64 48
  %i.ag = load <2 x i32>, ptr %i.aa, align 4, !tbaa !59
  %i.ah = load <4 x i32>, ptr %i.ad, align 4, !tbaa !59 ; 3 uses
  %i.ai = load <4 x i32>, ptr %i.ae, align 4, !tbaa !59 ; 3 uses
  %i.aj = load <4 x i32>, ptr %i.af, align 4, !tbaa !59 ; 3 uses
  %i.ak = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <16 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = insertelement <16 x i32> %i.ak, i32 %i.x, i64 0
  %i.am = insertelement <16 x i32> %i.al, i32 %i.ac, i64 3
  %i.an = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ao = shufflevector <16 x i32> %i.am, <16 x i32> %i.an, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19>
  %i.ap = shufflevector <4 x i32> %i.ai, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = shufflevector <16 x i32> %i.ao, <16 x i32> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.ar = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <16 x i32> %i.aq, <16 x i32> %i.ar, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.at = ashr <16 x i32> %i.as, splat (i32 31)
  %i.au = or <16 x i32> %i.at, splat (i32 1)
  %i.av = load <2 x i32>, ptr %i.aa, align 4, !tbaa !59
  %i.aw = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %i.ax = shufflevector <16 x i32> %i.s, <16 x i32> %i.aw, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ay = shufflevector <4 x i32> %i.ah, <4 x i32> %i.aj, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 6, i32 7, i32 poison>
  %i.az = insertelement <16 x i32> %i.ay, i32 1, i64 15
  %i.ba = insertelement <16 x i32> %i.az, i32 %i.ac, i64 2
  %i.bb = shufflevector <4 x i32> %i.ah, <4 x i32> %i.ai, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bc = shufflevector <16 x i32> %i.ba, <16 x i32> %i.bb, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.bd = shufflevector <4 x i32> %i.ai, <4 x i32> %i.aj, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <16 x i32> %i.bc, <16 x i32> %i.bd, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.bf = shufflevector <2 x i32> %i.av, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <16 x i32> %i.bf, <16 x i32> %i.be, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bh = mul <16 x i32> %i.ax, %i.bg
  %i.bi = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bh)
  %i.bj = sub nsw <16 x i32> %i.s, %i.au
  br label %.loopexit.i

.preheader64.i.preheader:                         ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %.078.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.078.i, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !59 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.078.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.078.i, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.078.i, i64 48
  %i.bq = load <2 x i32>, ptr %i.bk, align 4, !tbaa !59
  %i.br = load <4 x i32>, ptr %i.bn, align 4, !tbaa !59 ; 3 uses
  %i.bs = load <4 x i32>, ptr %i.bo, align 4, !tbaa !59 ; 3 uses
  %i.bt = load <4 x i32>, ptr %i.bp, align 4, !tbaa !59 ; 3 uses
  %i.bu = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <16 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <16 x i32> %i.bu, i32 %i.x, i64 0
  %i.bw = insertelement <16 x i32> %i.bv, i32 %i.bm, i64 3
  %i.bx = shufflevector <4 x i32> %i.bt, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <16 x i32> %i.bw, <16 x i32> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19>
  %i.bz = shufflevector <4 x i32> %i.bs, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <16 x i32> %i.by, <16 x i32> %i.bz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.cb = shufflevector <4 x i32> %i.br, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <16 x i32> %i.ca, <16 x i32> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = ashr <16 x i32> %i.cc, splat (i32 31)
  %i.ce = or <16 x i32> %i.cd, splat (i32 1)
  %i.cf = load <2 x i32>, ptr %i.bk, align 4, !tbaa !59
  %i.cg = insertelement <16 x i32> poison, i32 %i.z, i64 0
  %i.ch = shufflevector <16 x i32> %i.s, <16 x i32> %i.cg, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ci = shufflevector <4 x i32> %i.br, <4 x i32> %i.bt, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 6, i32 7, i32 poison>
  %i.cj = insertelement <16 x i32> %i.ci, i32 1, i64 15
  %i.ck = insertelement <16 x i32> %i.cj, i32 %i.bm, i64 2
  %i.cl = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <16 x i32> %i.ck, <16 x i32> %i.cl, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.cn = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bt, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <16 x i32> %i.cm, <16 x i32> %i.cn, <16 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.cp = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <16 x i32> %i.cp, <16 x i32> %i.co, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cr = mul <16 x i32> %i.ch, %i.cq
  %i.cs = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.cr)
  %i.ct = add nsw <16 x i32> %i.ce, %i.s
  br label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %.078.i, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.078.i, i64 52
  %i.cw = getelementptr inbounds nuw i8, ptr %.078.i, i64 60
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59
  %i.cy = load <12 x i32>, ptr %i.cu, align 4, !tbaa !59
  %i.cz = load <2 x i32>, ptr %i.cv, align 4, !tbaa !59
  %i.da = insertelement <16 x i32> poison, i32 %i.cx, i64 14
  %i.db = insertelement <16 x i32> %i.da, i32 %i.z, i64 15
  %i.dc = shufflevector <12 x i32> %i.cy, <12 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dd = shufflevector <16 x i32> %i.dc, <16 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 30, i32 31>
  %i.de = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <16 x i32> %i.dd, <16 x i32> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %i.dg = shufflevector <16 x i32> %i.s, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 31>
  %i.dh = mul <16 x i32> %i.df, %i.dg
  %i.di = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.dh)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader66.i.preheader, %.preheader64.i.preheader, %.preheader.i.preheader
  %.3.i = phi i32 [ %i.di, %.preheader.i.preheader ], [ %i.cs, %.preheader64.i.preheader ], [ %i.bi, %.preheader66.i.preheader ]
  %i.dj = phi <16 x i32> [ %i.s, %.preheader.i.preheader ], [ %i.ct, %.preheader64.i.preheader ], [ %i.bj, %.preheader66.i.preheader ]
  %i.dk = ashr i32 %.3.i, 9
  %i.dl = sub i32 %i.u, %i.dk                     ; 2 uses
  store i32 %i.dl, ptr %i.t, align 4, !tbaa !59
  %i.dm = getelementptr inbounds nuw i8, ptr %.078.i, i64 4 ; 3 uses
  %i.dn = getelementptr i8, ptr %.078.i, i64 64
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !59
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.do, %i.r
  %i.dq = icmp eq i64 %i.dp, 1024
  br i1 %i.dq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.j, ptr noundef nonnull align 4 dereferenceable(1024) %i.dm, i64 1024, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.1.i = phi ptr [ %i.j, %bb.d ], [ %i.dm, %.loopexit.i ]
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count98.i
  br i1 %exitcond99.not.i, label %long_filter_high_3800.exit, label %bb.c, !llvm.loop !1

long_filter_high_3800.exit:                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa !59
  %i.dr = ptrtoint ptr %i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %long_filter_high_3800.exit
  %indvars.iv95.i80 = phi i64 [ 16, %long_filter_high_3800.exit ], [ %indvars.iv.next96.i92, %bb.h ] ; 2 uses
  %.078.i81 = phi ptr [ %i.i, %long_filter_high_3800.exit ], [ %.1.i91, %bb.h ] ; 13 uses
  %i.ds = phi <12 x i32> [ zeroinitializer, %long_filter_high_3800.exit ], [ %i.he, %bb.h ] ; 6 uses
  %i.dt = phi <4 x i32> [ zeroinitializer, %long_filter_high_3800.exit ], [ %i.hf, %bb.h ] ; 8 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv95.i80 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59 ; 3 uses
end_hunk_0
begin_hunk_1_@predictor_decode_stereo_3800:bb.a
  %wide.load648 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !59, !alias.scope !237 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index644 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  %wide.load649 = load <4 x i32>, ptr %i.sk, align 16, !tbaa !59, !alias.scope !238, !noalias !237 ; 2 uses
  %wide.load650 = load <4 x i32>, ptr %i.sl, align 16, !tbaa !59, !alias.scope !238, !noalias !237 ; 2 uses
  %i.sm = mul <4 x i32> %wide.load649, %wide.load647
  %i.sn = mul <4 x i32> %wide.load650, %wide.load648
  %i.so = add <4 x i32> %i.sm, %vec.phi645        ; 2 uses
  %i.sp = add <4 x i32> %i.sn, %vec.phi646        ; 2 uses
  %i.sq = ashr <4 x i32> %wide.load647, splat (i32 31)
  %i.sr = ashr <4 x i32> %wide.load648, splat (i32 31)
  %i.ss = or <4 x i32> %i.sq, splat (i32 1)
  %i.st = or <4 x i32> %i.sr, splat (i32 1)
  %i.su = sub nsw <4 x i32> %wide.load649, %i.ss
  %i.sv = sub nsw <4 x i32> %wide.load650, %i.st
  store <4 x i32> %i.su, ptr %i.sk, align 16, !tbaa !59, !alias.scope !238, !noalias !237
  store <4 x i32> %i.sv, ptr %i.sl, align 16, !tbaa !59, !alias.scope !238, !noalias !237
  %index.next651 = add nuw i64 %index644, 8       ; 2 uses
  %i.sw = icmp eq i64 %index.next651, 256
  br i1 %i.sw, label %middle.block652, label %vector.body643, !llvm.loop !216

middle.block652:                                  ; preds = %vector.body643
  %bin.rdx653 = add <4 x i32> %i.sp, %i.so
  %i.sx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx653)
  br label %.loopexit.i201

vector.memcheck617:                               ; preds = %bb.s
  %scevgep619 = getelementptr i8, ptr %.078.i193, i64 1024
  %bound0620 = icmp ult ptr %i.a, %scevgep619
  %bound1621 = icmp ult ptr %.078.i193, %scevgep618
  %found.conflict622 = and i1 %bound0620, %bound1621
  br i1 %found.conflict622, label %.preheader64.i206, label %vector.body625

vector.body625:                                   ; preds = %vector.memcheck617, %vector.body625
  %index626 = phi i64 [ %index.next633, %vector.body625 ], [ 0, %vector.memcheck617 ] ; 3 uses
  %vec.phi627 = phi <4 x i32> [ %i.te, %vector.body625 ], [ zeroinitializer, %vector.memcheck617 ]
  %vec.phi628 = phi <4 x i32> [ %i.tf, %vector.body625 ], [ zeroinitializer, %vector.memcheck617 ]
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %index626 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load629 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !59, !alias.scope !239 ; 2 uses
  %wide.load630 = load <4 x i32>, ptr %i.sz, align 4, !tbaa !59, !alias.scope !239 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index626 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 2 uses
  %wide.load631 = load <4 x i32>, ptr %i.ta, align 16, !tbaa !59, !alias.scope !240, !noalias !239 ; 2 uses
  %wide.load632 = load <4 x i32>, ptr %i.tb, align 16, !tbaa !59, !alias.scope !240, !noalias !239 ; 2 uses
  %i.tc = mul <4 x i32> %wide.load631, %wide.load629
  %i.td = mul <4 x i32> %wide.load632, %wide.load630
  %i.te = add <4 x i32> %i.tc, %vec.phi627        ; 2 uses
  %i.tf = add <4 x i32> %i.td, %vec.phi628        ; 2 uses
  %i.tg = ashr <4 x i32> %wide.load629, splat (i32 31)
  %i.th = ashr <4 x i32> %wide.load630, splat (i32 31)
  %i.ti = or <4 x i32> %i.tg, splat (i32 1)
  %i.tj = or <4 x i32> %i.th, splat (i32 1)
  %i.tk = add nsw <4 x i32> %i.ti, %wide.load631
  %i.tl = add nsw <4 x i32> %i.tj, %wide.load632
  store <4 x i32> %i.tk, ptr %i.ta, align 16, !tbaa !59, !alias.scope !240, !noalias !239
  store <4 x i32> %i.tl, ptr %i.tb, align 16, !tbaa !59, !alias.scope !240, !noalias !239
  %index.next633 = add nuw i64 %index626, 8       ; 2 uses
  %i.tm = icmp eq i64 %index.next633, 256
  br i1 %i.tm, label %middle.block634, label %vector.body625, !llvm.loop !220

middle.block634:                                  ; preds = %vector.body625
  %bin.rdx635 = add <4 x i32> %i.tf, %i.te
  %i.tn = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx635)
  br label %.loopexit.i201

vector.body606:                                   ; preds = %bb.s, %vector.body606
  %index607 = phi i64 [ %index.next614, %vector.body606 ], [ 0, %bb.s ] ; 3 uses
  %vec.phi608 = phi <4 x i32> [ %i.tu, %vector.body606 ], [ zeroinitializer, %bb.s ]
  %vec.phi609 = phi <4 x i32> [ %i.tv, %vector.body606 ], [ zeroinitializer, %bb.s ]
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %index607 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %wide.load610 = load <4 x i32>, ptr %i.to, align 4, !tbaa !59
  %wide.load611 = load <4 x i32>, ptr %i.tp, align 4, !tbaa !59
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index607 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %wide.load612 = load <4 x i32>, ptr %i.tq, align 16, !tbaa !59
  %wide.load613 = load <4 x i32>, ptr %i.tr, align 16, !tbaa !59
  %i.ts = mul <4 x i32> %wide.load612, %wide.load610
  %i.tt = mul <4 x i32> %wide.load613, %wide.load611
  %i.tu = add <4 x i32> %i.ts, %vec.phi608        ; 2 uses
  %i.tv = add <4 x i32> %i.tt, %vec.phi609        ; 2 uses
  %index.next614 = add nuw i64 %index607, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next614, 256
  br i1 %i.tw, label %.loopexit.i201.loopexit, label %vector.body606, !llvm.loop !221

.preheader64.i206:                                ; preds = %vector.memcheck617, %.preheader64.i206
  %indvars.iv85.i207 = phi i64 [ %indvars.iv.next86.i209.1, %.preheader64.i206 ], [ 0, %vector.memcheck617 ] ; 4 uses
  %.05474.i208 = phi i32 [ %i.ul, %.preheader64.i206 ], [ 0, %vector.memcheck617 ]
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %indvars.iv85.i207
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !59 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv85.i207 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !59 ; 2 uses
  %i.ub = mul i32 %i.ua, %i.ty
  %i.uc = add i32 %i.ub, %.05474.i208
  %i.ud = ashr i32 %i.ty, 31
  %i.ue = or i32 %i.ud, 1
  %i.uf = add nsw i32 %i.ue, %i.ua
  store i32 %i.uf, ptr %i.tz, align 8, !tbaa !59
  %indvars.iv.next86.i209 = or disjoint i64 %indvars.iv85.i207, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %indvars.iv.next86.i209
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !59 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next86.i209 ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !59 ; 2 uses
  %i.uk = mul i32 %i.uj, %i.uh
  %i.ul = add i32 %i.uk, %i.uc                    ; 2 uses
  %i.um = ashr i32 %i.uh, 31
  %i.un = or i32 %i.um, 1
  %i.uo = add nsw i32 %i.un, %i.uj
  store i32 %i.uo, ptr %i.ui, align 4, !tbaa !59
  %indvars.iv.next86.i209.1 = add nuw nsw i64 %indvars.iv85.i207, 2 ; 2 uses
  %exitcond89.not.i210.1 = icmp eq i64 %indvars.iv.next86.i209.1, 256
  br i1 %exitcond89.not.i210.1, label %.loopexit.i201, label %.preheader64.i206, !llvm.loop !222

.preheader66.i196:                                ; preds = %vector.memcheck636, %.preheader66.i196
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i199.1, %.preheader66.i196 ], [ 0, %vector.memcheck636 ] ; 4 uses
  %.15572.i198 = phi i32 [ %i.vd, %.preheader66.i196 ], [ 0, %vector.memcheck636 ]
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %indvars.iv.i197
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !59 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i197 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !59 ; 2 uses
  %i.ut = mul i32 %i.us, %i.uq
  %i.uu = add i32 %i.ut, %.15572.i198
  %i.uv = ashr i32 %i.uq, 31
  %i.uw = or i32 %i.uv, 1
  %i.ux = sub nsw i32 %i.us, %i.uw
  store i32 %i.ux, ptr %i.ur, align 8, !tbaa !59
  %indvars.iv.next.i199 = or disjoint i64 %indvars.iv.i197, 1 ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.078.i193, i64 %indvars.iv.next.i199
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !59 ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i199 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !59 ; 2 uses
  %i.vc = mul i32 %i.vb, %i.uz
  %i.vd = add i32 %i.vc, %i.uu                    ; 2 uses
  %i.ve = ashr i32 %i.uz, 31
  %i.vf = or i32 %i.ve, 1
  %i.vg = sub nsw i32 %i.vb, %i.vf
  store i32 %i.vg, ptr %i.va, align 4, !tbaa !59
  %indvars.iv.next.i199.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %exitcond.not.i200.1 = icmp eq i64 %indvars.iv.next.i199.1, 256
  br i1 %exitcond.not.i200.1, label %.loopexit.i201, label %.preheader66.i196, !llvm.loop !223

.loopexit.i201.loopexit:                          ; preds = %vector.body606
  %bin.rdx616 = add <4 x i32> %i.tv, %i.tu
  %i.vh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx616)
  br label %.loopexit.i201

.loopexit.i201:                                   ; preds = %.preheader66.i196, %.preheader64.i206, %middle.block652, %middle.block634, %.loopexit.i201.loopexit
  %.3.i202 = phi i32 [ %i.vh, %.loopexit.i201.loopexit ], [ %i.ul, %.preheader64.i206 ], [ %i.tn, %middle.block634 ], [ %i.sx, %middle.block652 ], [ %i.vd, %.preheader66.i196 ]
  %i.vi = ashr i32 %.3.i202, 12
  %i.vj = sub i32 %i.sf, %i.vi                    ; 2 uses
  store i32 %i.vj, ptr %i.se, align 4, !tbaa !59
  %i.vk = getelementptr inbounds nuw i8, ptr %.078.i193, i64 4 ; 3 uses
  %i.vl = getelementptr i8, ptr %.078.i193, i64 1024
  store i32 %i.vj, ptr %i.vl, align 4, !tbaa !59
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vm, %i.sd
  %i.vo = icmp eq i64 %i.vn, 1024
  br i1 %i.vo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit.i201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, ptr noundef nonnull align 4 dereferenceable(1024) %i.vk, i64 1024, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.i201
  %.1.i203 = phi ptr [ %i.b, %bb.t ], [ %i.vk, %.loopexit.i201 ]
  %indvars.iv.next96.i204 = add nuw nsw i64 %indvars.iv95.i192, 1 ; 2 uses
  %exitcond99.not.i205 = icmp eq i64 %indvars.iv.next96.i204, %wide.trip.count98.i163
  br i1 %exitcond99.not.i205, label %long_filter_high_3800.exit216, label %bb.s, !llvm.loop !1

long_filter_high_3800.exit216:                    ; preds = %bb.u, %long_filter_high_3800.exit188.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.v

bb.v:                                             ; preds = %long_filter_high_3800.exit216, %long_filter_high_3800.exit160, %bb.a, %long_filter_high_3800.exit104
  %.063 = phi i32 [ 16, %long_filter_high_3800.exit104 ], [ 4, %bb.a ], [ 256, %long_filter_high_3800.exit216 ], [ 128, %long_filter_high_3800.exit160 ] ; 2 uses
  %.1 = phi i32 [ 10, %long_filter_high_3800.exit104 ], [ 10, %bb.a ], [ 11, %long_filter_high_3800.exit216 ], [ 10, %long_filter_high_3800.exit160 ] ; 2 uses
  %.not253 = icmp eq i32 %1, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 2440 ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 6 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.ai
  %2 = phi ptr [ %.promoted, %.lr.ph ], [ %3, %bb.ai ] ; 14 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.wi, %bb.ai ]
  %.064255 = phi ptr [ %i.o, %.lr.ph ], [ %.165, %bb.ai ] ; 3 uses
  %.066254 = phi ptr [ %i.m, %.lr.ph ], [ %.167, %bb.ai ] ; 4 uses
  %i.wi = add nsw i32 %.in, -1                    ; 2 uses
  %i.wj = load i32, ptr %.066254, align 4, !tbaa !59 ; 10 uses
  %i.wk = load i32, ptr %.064255, align 4, !tbaa !59 ; 10 uses
  %i.wl = load i32, ptr %i.p, align 8, !tbaa !49
  %i.wm = icmp eq i32 %i.wl, 1000
  %i.wn = load i32, ptr %i.vp, align 8, !tbaa !59 ; 6 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i32 %i.wn, ptr %i.wo, align 4, !tbaa !59
  br i1 %i.wm, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.wp = load i32, ptr %i.vr, align 8, !tbaa !80
  %i.wq = icmp ult i32 %i.wp, 3
  br i1 %i.wq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.wk, ptr %i.vp, align 8, !tbaa !59
  br label %filter_fast_3320.exit73

bb.z:                                             ; preds = %bb.x
  %i.wr = shl i32 %i.wn, 1
  %i.ws = getelementptr i8, ptr %2, i64 196
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !59
  %i.wu = sub i32 %i.wr, %i.wt                    ; 2 uses
  %i.wv = load i32, ptr %i.vs, align 8, !tbaa !59 ; 2 uses
  %i.ww = mul i32 %i.wu, %i.wv
  %i.wx = ashr i32 %i.ww, 9
  %i.wy = add i32 %i.wx, %i.wk                    ; 2 uses
  store i32 %i.wy, ptr %i.vp, align 8, !tbaa !59
  %i.wz = xor i32 %i.wu, %i.wk
  %.inv = icmp slt i32 %i.wz, 1
  %storemerge.i71.v = select i1 %.inv, i32 -1, i32 1
  %storemerge.i71 = add i32 %storemerge.i71.v, %i.wv
  store i32 %storemerge.i71, ptr %i.vs, align 8, !tbaa !59
  %i.xa = load i32, ptr %i.vx, align 8, !tbaa !59
  %i.xb = add i32 %i.xa, %i.wy
  br label %filter_fast_3320.exit73

filter_fast_3320.exit73:                          ; preds = %bb.y, %bb.z
  %storemerge430.a = phi i32 [ %i.xb, %bb.z ], [ %i.wk, %bb.y ] ; 2 uses
  store i32 %storemerge430.a, ptr %i.vx, align 8, !tbaa !59
  store i32 %storemerge430.a, ptr %.066254, align 4, !tbaa !59
  %i.xc = load i32, ptr %i.vy, align 4, !tbaa !59 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !59
  %i.xe = load i32, ptr %i.vr, align 8, !tbaa !80
  %i.xf = icmp ult i32 %i.xe, 3
  br i1 %i.xf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %filter_fast_3320.exit73
  store i32 %i.wj, ptr %i.vy, align 4, !tbaa !59
  br label %filter_fast_3320.exit

bb.ab:                                            ; preds = %filter_fast_3320.exit73
  %i.xg = shl i32 %i.xc, 1
  %i.xh = getelementptr i8, ptr %2, i64 132
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !59
  %i.xj = sub i32 %i.xg, %i.xi                    ; 2 uses
  %i.xk = load i32, ptr %i.wa, align 8, !tbaa !59 ; 2 uses
  %i.xl = mul i32 %i.xj, %i.xk
  %i.xm = ashr i32 %i.xl, 9
  %i.xn = add i32 %i.xm, %i.wj                    ; 2 uses
  store i32 %i.xn, ptr %i.vy, align 4, !tbaa !59
  %i.xo = xor i32 %i.xj, %i.wj
  %.inv223 = icmp slt i32 %i.xo, 1
  %storemerge.i.v = select i1 %.inv223, i32 -1, i32 1
  %storemerge.i = add i32 %storemerge.i.v, %i.xk
  store i32 %storemerge.i, ptr %i.wa, align 8, !tbaa !59
  %i.xp = load i32, ptr %i.wf, align 4, !tbaa !59
  %i.xq = add i32 %i.xp, %i.xn
  br label %filter_fast_3320.exit

bb.ac:                                            ; preds = %bb.w
  %i.xr = load i32, ptr %i.vq, align 8, !tbaa !59 ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !59
  %i.xt = load i32, ptr %i.vr, align 8, !tbaa !80
  %i.xu = icmp ult i32 %i.xt, %.063
  br i1 %i.xu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.xv = load i32, ptr %i.vx, align 8, !tbaa !59
  %i.xw = add i32 %i.xv, %i.wk
  store i32 %i.wk, ptr %i.vp, align 8, !tbaa !59
  store i32 %i.wk, ptr %i.vq, align 8, !tbaa !59
  br label %filter_3800.exit76

bb.ae:                                            ; preds = %bb.ac
  %i.xx = getelementptr i8, ptr %2, i64 196
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !59 ; 2 uses
  %i.xz = sub i32 %i.wn, %i.xy
  %i.ya = shl i32 %i.xz, 1                        ; 2 uses
  %i.yb = getelementptr i8, ptr %2, i64 192
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !59
  %i.yd = sub i32 %i.yc, %i.xy
  %i.ye = shl i32 %i.yd, 3
  %i.yf = add i32 %i.ye, %i.wn                    ; 2 uses
  %i.yg = shl i32 %i.xr, 1
  %i.yh = getelementptr i8, ptr %2, i64 164
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !59
  %i.yj = sub i32 %i.yg, %i.yi                    ; 2 uses
  %i.yk = load i32, ptr %i.vs, align 8, !tbaa !59 ; 2 uses
  %i.yl = mul i32 %i.yf, %i.yk
  %i.ym = load i32, ptr %i.vt, align 4, !tbaa !59 ; 2 uses
  %i.yn = mul i32 %i.ym, %i.ya
  %i.yo = add i32 %i.yl, %i.yn
  %i.yp = load i32, ptr %i.vu, align 8, !tbaa !59 ; 2 uses
  %i.yq = mul i32 %i.yp, %i.wn
  %i.yr = add i32 %i.yo, %i.yq
  %.lobit.i = lshr i32 %i.wk, 31
  %i.ys = icmp sgt i32 %i.wk, 0
  %.neg.i = sext i1 %i.ys to i32
  %i.yt = add nsw i32 %.lobit.i, %.neg.i          ; 3 uses
  %i.yu = lshr i32 %i.yf, 30
  %i.yv = and i32 %i.yu, 2
  %i.yw = add nsw i32 %i.yv, -1
  %i.yx = mul nsw i32 %i.yw, %i.yt
  %i.yy = add i32 %i.yx, %i.yk
  store i32 %i.yy, ptr %i.vs, align 8, !tbaa !59
  %i.yz = lshr i32 %i.ya, 28
  %i.za = and i32 %i.yz, 8
  %i.zb = add nsw i32 %i.za, -4
  %i.zc = mul nsw i32 %i.zb, %i.yt
  %i.zd = add i32 %i.zc, %i.ym
  store i32 %i.zd, ptr %i.vt, align 4, !tbaa !59
  %i.ze = lshr i32 %i.wn, 28
  %i.zf = and i32 %i.ze, 8
  %i.zg = add nsw i32 %i.zf, -4
  %i.zh = mul nsw i32 %i.zg, %i.yt
  %i.zi = add i32 %i.yp, %i.zh
  store i32 %i.zi, ptr %i.vu, align 8, !tbaa !59
  %i.zj = load i32, ptr %i.vv, align 8, !tbaa !59 ; 2 uses
  %i.zk = mul i32 %i.zj, %i.yj
  %i.zl = load i32, ptr %i.vw, align 4, !tbaa !59 ; 2 uses
  %i.zm = mul i32 %i.zl, %i.xr
  %i.zn = sub i32 %i.zk, %i.zm
  %i.zo = ashr i32 %i.yr, 11
  %i.zp = add i32 %i.zo, %i.wk                    ; 4 uses
  store i32 %i.zp, ptr %i.vp, align 8, !tbaa !59
  %.lobit.i217 = lshr i32 %i.zp, 31
  %i.zq = icmp sgt i32 %i.zp, 0
  %.neg.i218 = sext i1 %i.zq to i32
  %i.zr = add nsw i32 %.lobit.i217, %.neg.i218    ; 2 uses
  %i.zs = lshr i32 %i.yj, 29
  %i.zt = and i32 %i.zs, 4
  %i.zu = add nsw i32 %i.zt, -2
  %i.zv = mul nsw i32 %i.zr, %i.zu
  %i.zw = add i32 %i.zv, %i.zj
  store i32 %i.zw, ptr %i.vv, align 8, !tbaa !59
  %i.zx = lshr i32 %i.xr, 30
  %i.zy = and i32 %i.zx, 2
  %i.zz = add nsw i32 %i.zy, -1
  %i.aaa = mul nsw i32 %i.zr, %i.zz
  %i.aab = sub i32 %i.zl, %i.aaa
  store i32 %i.aab, ptr %i.vw, align 4, !tbaa !59
  %i.aac = ashr i32 %i.zn, %.1
  %i.aad = add i32 %i.aac, %i.zp                  ; 2 uses
  store i32 %i.aad, ptr %i.vq, align 8, !tbaa !59
  %i.aae = load i32, ptr %i.vx, align 8, !tbaa !59
  %i.aaf = mul i32 %i.aae, 31
  %i.aag = ashr i32 %i.aaf, 5
  %i.aah = add i32 %i.aag, %i.aad
  br label %filter_3800.exit76

filter_3800.exit76:                               ; preds = %bb.ad, %bb.ae
  %storemerge429 = phi i32 [ %i.aah, %bb.ae ], [ %i.xw, %bb.ad ] ; 2 uses
  store i32 %storemerge429, ptr %i.vx, align 8, !tbaa !59
  store i32 %storemerge429, ptr %.066254, align 4, !tbaa !59
  %i.aai = load i32, ptr %i.vy, align 4, !tbaa !59 ; 5 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.aai, ptr %i.aaj, align 4, !tbaa !59
  %i.aak = load i32, ptr %i.vz, align 4, !tbaa !59 ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !59
  %i.aam = load i32, ptr %i.vr, align 8, !tbaa !80
  %i.aan = icmp ult i32 %i.aam, %.063
  br i1 %i.aan, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %filter_3800.exit76
  %i.aao = load i32, ptr %i.wf, align 4, !tbaa !59
  %i.aap = add i32 %i.aao, %i.wj
  store i32 %i.wj, ptr %i.vy, align 4, !tbaa !59
  store i32 %i.wj, ptr %i.vz, align 4, !tbaa !59
  br label %filter_fast_3320.exit

bb.ag:                                            ; preds = %filter_3800.exit76
  %i.aaq = getelementptr i8, ptr %2, i64 132
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !59 ; 2 uses
  %i.aas = sub i32 %i.aai, %i.aar
  %i.aat = shl i32 %i.aas, 1                      ; 2 uses
  %i.aau = getelementptr i8, ptr %2, i64 128
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !59
  %i.aaw = sub i32 %i.aav, %i.aar
  %i.aax = shl i32 %i.aaw, 3
  %i.aay = add i32 %i.aax, %i.aai                 ; 2 uses
  %i.aaz = shl i32 %i.aak, 1
  %i.aba = getelementptr i8, ptr %2, i64 100
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !59
  %i.abc = sub i32 %i.aaz, %i.abb                 ; 2 uses
  %i.abd = load i32, ptr %i.wa, align 8, !tbaa !59 ; 2 uses
  %i.abe = mul i32 %i.aay, %i.abd
  %i.abf = load i32, ptr %i.wb, align 4, !tbaa !59 ; 2 uses
  %i.abg = mul i32 %i.abf, %i.aat
  %i.abh = add i32 %i.abe, %i.abg
  %i.abi = load i32, ptr %i.wc, align 8, !tbaa !59 ; 2 uses
  %i.abj = mul i32 %i.abi, %i.aai
  %i.abk = add i32 %i.abh, %i.abj
  %.lobit.i219 = lshr i32 %i.wj, 31
  %i.abl = icmp sgt i32 %i.wj, 0
  %.neg.i220 = sext i1 %i.abl to i32
  %i.abm = add nsw i32 %.lobit.i219, %.neg.i220   ; 3 uses
  %i.abn = lshr i32 %i.aay, 30
  %i.abo = and i32 %i.abn, 2
  %i.abp = add nsw i32 %i.abo, -1
  %i.abq = mul nsw i32 %i.abp, %i.abm
  %i.abr = add i32 %i.abq, %i.abd
  store i32 %i.abr, ptr %i.wa, align 8, !tbaa !59
  %i.abs = lshr i32 %i.aat, 28
  %i.abt = and i32 %i.abs, 8
  %i.abu = add nsw i32 %i.abt, -4
  %i.abv = mul nsw i32 %i.abu, %i.abm
  %i.abw = add i32 %i.abv, %i.abf
  store i32 %i.abw, ptr %i.wb, align 4, !tbaa !59
  %i.abx = lshr i32 %i.aai, 28
  %i.aby = and i32 %i.abx, 8
  %i.abz = add nsw i32 %i.aby, -4
  %i.aca = mul nsw i32 %i.abz, %i.abm
  %i.acb = add i32 %i.abi, %i.aca
  store i32 %i.acb, ptr %i.wc, align 8, !tbaa !59
  %i.acc = load i32, ptr %i.wd, align 4, !tbaa !59 ; 2 uses
  %i.acd = mul i32 %i.acc, %i.abc
  %i.ace = load i32, ptr %i.we, align 8, !tbaa !59 ; 2 uses
  %i.acf = mul i32 %i.ace, %i.aak
  %i.acg = sub i32 %i.acd, %i.acf
  %i.ach = ashr i32 %i.abk, 11
  %i.aci = add i32 %i.ach, %i.wj                  ; 4 uses
  store i32 %i.aci, ptr %i.vy, align 4, !tbaa !59
  %.lobit.i221 = lshr i32 %i.aci, 31
  %i.acj = icmp sgt i32 %i.aci, 0
  %.neg.i222 = sext i1 %i.acj to i32
  %i.ack = add nsw i32 %.lobit.i221, %.neg.i222   ; 2 uses
  %i.acl = lshr i32 %i.abc, 29
  %i.acm = and i32 %i.acl, 4
  %i.acn = add nsw i32 %i.acm, -2
  %i.aco = mul nsw i32 %i.ack, %i.acn
  %i.acp = add i32 %i.aco, %i.acc
  store i32 %i.acp, ptr %i.wd, align 4, !tbaa !59
  %i.acq = lshr i32 %i.aak, 30
  %i.acr = and i32 %i.acq, 2
  %i.acs = add nsw i32 %i.acr, -1
  %i.act = mul nsw i32 %i.ack, %i.acs
  %i.acu = sub i32 %i.ace, %i.act
  store i32 %i.acu, ptr %i.we, align 8, !tbaa !59
  %i.acv = ashr i32 %i.acg, %.1
  %i.acw = add i32 %i.acv, %i.aci                 ; 2 uses
  store i32 %i.acw, ptr %i.vz, align 4, !tbaa !59
  %i.acx = load i32, ptr %i.wf, align 4, !tbaa !59
  %i.acy = mul i32 %i.acx, 31
  %i.acz = ashr i32 %i.acy, 5
  %i.ada = add i32 %i.acz, %i.acw
  br label %filter_fast_3320.exit

filter_fast_3320.exit:                            ; preds = %bb.ag, %bb.af, %bb.ab, %bb.aa
  %.sink = phi i32 [ %i.ada, %bb.ag ], [ %i.aap, %bb.af ], [ %i.xq, %bb.ab ], [ %i.wj, %bb.aa ] ; 2 uses
  store i32 %.sink, ptr %i.wf, align 4, !tbaa !59
  store i32 %.sink, ptr %.064255, align 4, !tbaa !59
  %.165 = getelementptr inbounds nuw i8, ptr %.064255, i64 4
  %.167 = getelementptr inbounds nuw i8, ptr %.066254, i64 4
  %i.adb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store ptr %i.adb, ptr %i.k, align 8, !tbaa !79
  %i.adc = load i32, ptr %i.vr, align 8, !tbaa !80
  %i.add = add i32 %i.adc, 1
  store i32 %i.add, ptr %i.vr, align 8, !tbaa !80
  %i.ade = icmp eq ptr %i.adb, %i.wg
  br i1 %i.ade, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %filter_fast_3320.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.wh, ptr noundef nonnull align 4 dereferenceable(200) %i.adb, i64 200, i1 false)
  store ptr %i.wh, ptr %i.k, align 8, !tbaa !79
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %filter_fast_3320.exit
  %3 = phi ptr [ %i.wh, %bb.ah ], [ %i.adb, %filter_fast_3320.exit ]
  %.not = icmp eq i32 %i.wi, 0
  br i1 %.not, label %._crit_edge, label %bb.w, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.ai, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @predictor_decode_mono_3930(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  tail call fastcc void @ape_apply_filters(ptr noundef %0, ptr noundef %i.c, ptr noundef null, i32 noundef %1)
  %.not18 = icmp eq i32 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.pre, %.lr.ph ], [ %i.bp, %bb.d ] ; 5 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.m, %bb.d ]
  %.019 = phi ptr [ %i.c, %.lr.ph ], [ %i.bm, %bb.d ] ; 3 uses
  %i.m = add nsw i32 %.in, -1                     ; 2 uses
  %i.n = load i32, ptr %.019, align 4, !tbaa !59  ; 3 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !59   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 %i.o, ptr %i.p, align 4, !tbaa !59
  %i.q = getelementptr i8, ptr %i.l, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59   ; 2 uses
  %i.s = sub i32 %i.o, %i.r                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 192
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 2 uses
  %i.v = sub i32 %i.r, %i.u                       ; 2 uses
  %i.w = getelementptr i8, ptr %i.l, i64 188
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59
  %i.y = sub i32 %i.u, %i.x                       ; 2 uses
  %i.z = load i32, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.aa = mul i32 %i.z, %i.o
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !59  ; 2 uses
  %i.ac = mul i32 %i.ab, %i.s
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.af = mul i32 %i.ae, %i.v
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !59  ; 2 uses
  %i.ai = mul i32 %i.ah, %i.y
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = ashr i32 %i.aj, 9
  %i.al = add nsw i32 %i.ak, %i.n                 ; 2 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !59
  %i.am = load i32, ptr %i.i, align 8, !tbaa !59
  %i.an = mul i32 %i.am, 31
  %i.ao = ashr i32 %i.an, 5
  %i.ap = add nsw i32 %i.al, %i.ao                ; 2 uses
  store i32 %i.ap, ptr %i.i, align 8, !tbaa !59
  %.lobit.i = lshr i32 %i.n, 31
  %i.aq = icmp sgt i32 %i.n, 0
  %.neg.i = sext i1 %i.aq to i32
  %i.ar = add nsw i32 %.lobit.i, %.neg.i          ; 4 uses
  %i.as = lshr i32 %i.o, 30
  %i.at = and i32 %i.as, 2
  %i.au = add nsw i32 %i.at, -1
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = add i32 %i.z, %i.av
  store i32 %i.aw, ptr %i.e, align 8, !tbaa !59
  %i.ax = lshr i32 %i.s, 30
  %i.ay = and i32 %i.ax, 2
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = mul nsw i32 %i.az, %i.ar
  %i.bb = add i32 %i.ba, %i.ab
  store i32 %i.bb, ptr %i.f, align 4, !tbaa !59
  %i.bc = lshr i32 %i.v, 30
  %i.bd = and i32 %i.bc, 2
  %i.be = add nsw i32 %i.bd, -1
  %i.bf = mul nsw i32 %i.be, %i.ar
  %i.bg = add i32 %i.bf, %i.ae
  store i32 %i.bg, ptr %i.g, align 8, !tbaa !59
  %i.bh = lshr i32 %i.y, 30
  %i.bi = and i32 %i.bh, 2
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = mul nsw i32 %i.bj, %i.ar
  %i.bl = add i32 %i.bk, %i.ah
  store i32 %i.bl, ptr %i.h, align 4, !tbaa !59
  store i32 %i.ap, ptr %.019, align 4, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %.019, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !79
  %i.bo = icmp eq ptr %i.bn, %i.j
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.k, ptr noundef nonnull align 4 dereferenceable(200) %i.bn, i64 200, i1 false)
  store ptr %i.k, ptr %i.a, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = phi ptr [ %i.k, %bb.c ], [ %i.bn, %bb.b ]
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @predictor_decode_stereo_3930(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  tail call fastcc void @ape_apply_filters(ptr noundef %0, ptr noundef %i.c, ptr noundef %i.e, i32 noundef %1)
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.t = phi ptr [ %.pre, %.lr.ph ], [ %i.dx, %bb.d ] ; 9 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.u, %bb.d ]
  %.031 = phi ptr [ %i.e, %.lr.ph ], [ %i.du, %bb.d ] ; 3 uses
  %.02430 = phi ptr [ %i.c, %.lr.ph ], [ %i.bv, %bb.d ] ; 3 uses
  %i.u = add nsw i32 %.in, -1                     ; 2 uses
  %i.v = load i32, ptr %.031, align 4, !tbaa !59  ; 3 uses
  %i.w = load i32, ptr %.02430, align 4, !tbaa !59 ; 3 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !59   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store i32 %i.x, ptr %i.y, align 4, !tbaa !59
  %i.z = getelementptr i8, ptr %i.t, i64 196
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59  ; 2 uses
  %i.ab = sub i32 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 192
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59 ; 2 uses
  %i.ae = sub i32 %i.aa, %i.ad                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 188
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %i.ah = sub i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.aj = mul i32 %i.ai, %i.x
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !59  ; 2 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = add i32 %i.al, %i.aj
  %i.an = load i32, ptr %i.i, align 8, !tbaa !59  ; 2 uses
  %i.ao = mul i32 %i.an, %i.ae
  %i.ap = add i32 %i.am, %i.ao
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !59  ; 2 uses
  %i.ar = mul i32 %i.aq, %i.ah
  %i.as = add i32 %i.ap, %i.ar
  %i.at = ashr i32 %i.as, 9
  %i.au = add nsw i32 %i.at, %i.v                 ; 2 uses
  store i32 %i.au, ptr %i.f, align 8, !tbaa !59
  %i.av = load i32, ptr %i.k, align 8, !tbaa !59
  %i.aw = mul i32 %i.av, 31
  %i.ax = ashr i32 %i.aw, 5
  %i.ay = add nsw i32 %i.au, %i.ax                ; 2 uses
  store i32 %i.ay, ptr %i.k, align 8, !tbaa !59
  %.lobit.i = lshr i32 %i.v, 31
  %i.az = icmp sgt i32 %i.v, 0
  %.neg.i = sext i1 %i.az to i32
  %i.ba = add nsw i32 %.lobit.i, %.neg.i          ; 4 uses
  %i.bb = lshr i32 %i.x, 30
  %i.bc = and i32 %i.bb, 2
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = mul nsw i32 %i.bd, %i.ba
  %i.bf = add i32 %i.ai, %i.be
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !59
  %i.bg = lshr i32 %i.ab, 30
  %i.bh = and i32 %i.bg, 2
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = mul nsw i32 %i.bi, %i.ba
  %i.bk = add i32 %i.bj, %i.ak
  store i32 %i.bk, ptr %i.h, align 4, !tbaa !59
end_hunk_1
