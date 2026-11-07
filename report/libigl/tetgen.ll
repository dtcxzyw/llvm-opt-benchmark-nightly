Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 551
begin_hunk_0_@_ZN10tetgenmesh17split_tetrahedronEPNS_7trifaceEPdiiRNS_17insertvertexflagsE:bb.a
  %i.eu = add nsw i64 %i.es, -1
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !345
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !238
  %.not248 = icmp eq i32 %i.ev, 0
  br i1 %.not248, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !56 ; 3 uses
  %i.ey = fcmp ogt double %i.ex, 0.000000e+00
  br i1 %i.ey, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !335 ; 2 uses
  %i.fb = fcmp olt double %i.ex, %i.fa
  %. = select i1 %i.fb, double %i.ex, double %i.fa
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0180 = phi double [ %., %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 68668
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !247
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.fe
  store double %.0180, ptr %i.ff, align 8, !tbaa !56
  %i.fg = load ptr, ptr %i.em, align 8, !tbaa !336
  %i.fh = load i32, ptr %i.bj, align 4, !tbaa !242
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [8 x i8], ptr %i.au, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fg, ptr %i.fk, align 8, !tbaa !218
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !335 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 68904 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !405
  %i.fp = fcmp olt double %i.fm, %i.fo
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.fm, ptr %i.fn, align 8, !tbaa !405
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !288
  %.not249 = icmp eq ptr %i.fr, null
  br i1 %.not249, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr null, ptr %i.fu, align 8, !tbaa !110
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr null, ptr %i.fv, align 8, !tbaa !110
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr null, ptr %i.fw, align 8, !tbaa !304
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fx, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fs, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ft, i8 0, i64 28, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dw, ptr %i.fy, align 4, !tbaa !279
  store i32 2, ptr %7, align 8, !tbaa !283
  %i.fz = call noundef i64 @_ZN10tetgenmesh12lawsonflip3dEPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !262
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !98
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !216
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 236
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !396
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp sgt i64 %i.gd, %i.gh
  br i1 %i.gi, label %bb.v, label %bb.cj

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN10tetgenmesh15recoverdelaunayEv(ptr noundef nonnull align 8 dereferenceable(69984) %0)
  br label %bb.cj

bb.w:                                             ; preds = %bb.k
  %i.gj = load i32, ptr %i.ce, align 8, !tbaa !221
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [4 x i8], ptr %i.au, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 4      ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !57
  %i.go = and i32 %i.gn, 255
  %i.gp = or disjoint i32 %i.go, 2304
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !57
  %i.gq = load ptr, ptr %i.as, align 8, !tbaa !217 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !198
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !109
  store ptr %i.au, ptr %i.gr, align 8, !tbaa !198
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 64 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !200
  %i.gv = add nsw i64 %i.gu, -1
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !200
  %i.gw = load i32, ptr %5, align 8, !tbaa !319
  switch i32 %i.gw, label %bb.ci [
    i32 7, label %bb.x
    i32 8, label %bb.at
  ]

bb.x:                                             ; preds = %bb.w
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !216 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !119
  %.not237 = icmp eq i32 %i.gz, 0
  br i1 %.not237, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  %i.ha = load ptr, ptr %1, align 8, !tbaa !229   ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %.sroa.0.0.copyload344 = load ptr, ptr %i.hb, align 8, !tbaa !110 ; 2 uses
  %.sroa.9.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %.sroa.9.0.copyload346 = load ptr, ptr %.sroa.9.0..sroa_idx345, align 8, !tbaa !110 ; 2 uses
  %.sroa.14.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %.sroa.14.0.copyload352 = load ptr, ptr %.sroa.14.0..sroa_idx351, align 8, !tbaa !110 ; 2 uses
  %.sroa.19.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %.sroa.19.0.copyload358 = load ptr, ptr %.sroa.19.0..sroa_idx357, align 8, !tbaa !110 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !148
  %i.he = trunc i32 %i.hd to i1
  %or.cond = or i1 %i.ek, %i.he
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 68472 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !328 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !98
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %.preheader
  %i.hk = or i32 %4, 3
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph328, %.thread
  %i.hl = phi ptr [ %i.hg, %.lr.ph328 ], [ %i.ji, %.thread ] ; 7 uses
  %indvars.iv337 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next338, %.thread ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !102
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !101
  %i.hq = trunc nuw nsw i64 %indvars.iv337 to i32 ; 2 uses
  %i.hr = lshr i32 %i.hq, %i.hp
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !108
  %i.hx = and i32 %i.hw, %i.hq
  %i.hy = load i32, ptr %i.hl, align 8, !tbaa !100
  %i.hz = mul nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hu, i64 %i.ia ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !308 ; 3 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !223
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !57
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !218
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !286
  %.not238 = icmp eq ptr %i.im, %i.io
  br i1 %.not238, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ip = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ih
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !57
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !218
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !287
  %.not239 = icmp eq ptr %i.it, %i.iv
  br i1 %.not239, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.iw = call noundef zeroext i1 @_ZN10tetgenmesh13split_segmentEPNS_4faceEPdS2_iiPi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.ic, ptr noundef null, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.hk, ptr noundef nonnull %i.a)
  br i1 %i.iw, label %bb.ad, label %.thread291

bb.ad:                                            ; preds = %bb.ac
  %i.ix = load ptr, ptr %1, align 8, !tbaa !229   ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %.thread273, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !218 ; 2 uses
  %i.jb = icmp ne ptr %i.ja, null
  %.not240 = icmp eq ptr %i.ja, %.sroa.0.0.copyload344
  %or.cond306 = select i1 %i.jb, i1 %.not240, i1 false
  br i1 %or.cond306, label %bb.af, label %.thread273

bb.af:                                            ; preds = %bb.ae
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !110
  %.not241 = icmp eq ptr %i.jd, %.sroa.9.0.copyload346
  br i1 %.not241, label %bb.ag, label %.thread273

bb.ag:                                            ; preds = %bb.af
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !110
  %.not242 = icmp eq ptr %i.jf, %.sroa.14.0.copyload352
  br i1 %.not242, label %bb.ah, label %.thread273

bb.ah:                                            ; preds = %bb.ag
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !110
  %.not243.not = icmp eq ptr %i.jh, %.sroa.19.0.copyload358
  br i1 %.not243.not, label %.thread291, label %.thread273

.thread273:                                       ; preds = %bb.ae, %bb.ad, %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %.loopexit

.thread291:                                       ; preds = %bb.ah, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre366 = load ptr, ptr %i.hf, align 8, !tbaa !328
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.aa, %bb.ab, %.thread291
  %i.ji = phi ptr [ %i.hl, %bb.z ], [ %i.hl, %bb.aa ], [ %i.hl, %bb.ab ], [ %.pre366, %.thread291 ] ; 2 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !98
  %i.jl = icmp sgt i64 %i.jk, %indvars.iv.next338
  br i1 %i.jl, label %bb.z, label %.loopexit, !llvm.loop !1338

.loopexit:                                        ; preds = %.thread, %.preheader, %.thread273, %bb.y
  %.5196 = phi i8 [ 1, %.thread273 ], [ 0, %bb.y ], [ 0, %.preheader ], [ 0, %.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 68472
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !328
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  store i64 0, ptr %i.jo, align 8, !tbaa !98
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !280
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !200
  %i.jt = icmp sgt i64 %i.js, 0
  br i1 %i.jt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.loopexit
  %i.ju = or i32 %4, 3
  tail call void @_ZN10tetgenmesh13repairencsegsEPdii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ju)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !281
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !200
  %i.jz = icmp sgt i64 %i.jy, 0
  br i1 %i.jz, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ka = or i32 %4, 2
  tail call void @_ZN10tetgenmesh13repairencfacsEPdii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ka)
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !412
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32 ; 2 uses
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !98
  %i.kf = icmp sgt i64 %i.ke, 0
  br i1 %i.kf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 0, ptr %i.kd, align 8, !tbaa !98
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.kg = load ptr, ptr %1, align 8, !tbaa !229   ; 5 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.ci, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !218 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.ci, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not244 = icmp eq ptr %i.kj, %.sroa.0.0.copyload344
  br i1 %.not244, label %bb.ap, label %bb.cg

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !110
  %.not245 = icmp eq ptr %i.km, %.sroa.9.0.copyload346
  br i1 %.not245, label %bb.aq, label %bb.cg

bb.aq:                                            ; preds = %bb.ap
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !110
  %.not246 = icmp eq ptr %i.ko, %.sroa.14.0.copyload352
  br i1 %.not246, label %bb.ar, label %bb.cg

bb.ar:                                            ; preds = %bb.aq
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !110
  %.not247 = icmp eq ptr %i.kq, %.sroa.19.0.copyload358
  br i1 %.not247, label %bb.ci, label %bb.cg

bb.as:                                            ; preds = %bb.x
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 68472
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !328
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  store i64 0, ptr %i.kt, align 8, !tbaa !98
  br label %bb.ci

bb.at:                                            ; preds = %bb.w
  %i.ku = load ptr, ptr %i.i, align 8, !tbaa !216 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !119
  %.not218 = icmp eq i32 %i.kw, 0
  br i1 %.not218, label %bb.au, label %bb.ch

bb.au:                                            ; preds = %bb.at
  %i.kx = load ptr, ptr %1, align 8, !tbaa !229   ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.ky, align 8, !tbaa !110 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !110 ; 3 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !110 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !110 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !148
  %i.lb = and i32 %i.la, 2
  %i.lc = or i32 %i.lb, %3
  %or.cond3.not = icmp eq i32 %i.lc, 0
  br i1 %or.cond3.not, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double 0.000000e+00, ptr %i.ld, align 8, !tbaa !56
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 68480 ; 4 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !329 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !98
  %i.li = icmp sgt i64 %i.lh, 0
  br i1 %i.li, label %.lr.ph, label %.preheader310

.lr.ph:                                           ; preds = %bb.av
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.lk = or i32 %4, 2
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %.thread278
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread278 ] ; 2 uses
  %i.ll = phi ptr [ %i.lf, %.lr.ph ], [ %i.pw, %.thread278 ] ; 4 uses
  %.0319 = phi i32 [ 0, %.lr.ph ], [ %.2283, %.thread278 ] ; 8 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !102
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !101
  %i.lq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.lr = lshr i32 %i.lq, %i.lp
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.ls
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !51
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !108
  %i.lx = and i32 %i.lw, %i.lq
  %i.ly = load i32, ptr %i.ll, align 8, !tbaa !100
  %i.lz = mul nsw i32 %i.lx, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %i.lu, i64 %i.ma ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !308 ; 5 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %.thread278, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !223 ; 2 uses
  %i.mh = sext i32 %i.mg to i64                   ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !57
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !218
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 88
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !286
  %.not219 = icmp eq ptr %i.mm, %i.mo
  br i1 %.not219, label %bb.ay, label %.thread278

bb.ay:                                            ; preds = %bb.ax
  %i.mp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.mh
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !57
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !218
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !287
  %.not220 = icmp eq ptr %i.mt, %i.mv
  br i1 %.not220, label %bb.az, label %.thread278

bb.az:                                            ; preds = %bb.ay
  %i.mw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.mh
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !57
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.my
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !218
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mb, i64 104
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !310
  %.not221 = icmp eq ptr %i.na, %i.nc
  br i1 %.not221, label %bb.ba, label %.thread278

bb.ba:                                            ; preds = %bb.az
  %i.nd = and i32 %i.mg, 1
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 72
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !218
  %i.ni = ptrtoint ptr %i.nh to i64               ; 3 uses
  %i.nj = trunc nuw nsw i64 %i.ni to i32
  %i.nk = and i64 %i.ni, -16                      ; 2 uses
  %i.nl = inttoptr i64 %i.nk to ptr               ; 3 uses
  %i.nm = icmp eq i64 %i.nk, 0
  br i1 %i.nm, label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nn = and i64 %i.ni, 15
  %i.no = getelementptr inbounds nuw [24 x i8], ptr @_ZN10tetgenmesh10stpivottblE, i64 %i.nn
  %i.np = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.mh
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !57
  br label %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit

_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit: ; preds = %bb.ba, %bb.bb
  %.sroa.11.1 = phi i32 [ %i.nj, %bb.ba ], [ %i.nq, %bb.bb ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !218
  %i.nt = load ptr, ptr %i.lj, align 8, !tbaa !248
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %i.nv = and i32 %.sroa.11.1, 3
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !218
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = and i64 %i.nz, 15
  %i.ob = and i64 %i.nz, -16
  %i.oc = inttoptr i64 %i.ob to ptr
  %i.od = sext i32 %.sroa.11.1 to i64
  %i.oe = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.oa
  %i.og = load i32, ptr %i.of, align 4, !tbaa !57
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit
  %.sroa.11.0 = phi i32 [ %i.og, %bb.bc ], [ %.sroa.11.1, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ]
  %.sroa.0.0 = phi ptr [ %i.oc, %bb.bc ], [ %i.nl, %_ZN10tetgenmesh7stpivotERNS_4faceERNS_7trifaceE.exit ] ; 4 uses
  %i.oh = sext i32 %.sroa.11.0 to i64             ; 4 uses
  %i.oi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !57
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !218 ; 3 uses
  %i.on = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.oh
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !57
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !218 ; 3 uses
  %i.os = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.oh
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !57
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !218 ; 3 uses
  %i.ox = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.oh
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !57
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !218 ; 3 uses
  call void @_ZN10tetgenmesh11projpt2faceEPdS0_S0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef %i.or, ptr noundef %i.ow, ptr noundef %i.pb, ptr noundef nonnull %i.b)
  %i.pc = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.or, ptr noundef %i.ow, ptr noundef %i.om, ptr noundef nonnull %i.b)
  %i.pd = fcmp ult double %i.pc, 0.000000e+00
  br i1 %i.pd, label %.thread278, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pe = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.ow, ptr noundef %i.pb, ptr noundef %i.om, ptr noundef nonnull %i.b)
  %i.pf = fcmp ult double %i.pe, 0.000000e+00
  br i1 %i.pf, label %.thread278, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pg = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.pb, ptr noundef %i.or, ptr noundef %i.om, ptr noundef nonnull %i.b)
  %i.ph = fcmp ult double %i.pg, 0.000000e+00
  br i1 %i.ph, label %.thread278, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pi = add nsw i32 %.0319, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.pk = call noundef zeroext i1 @_ZN10tetgenmesh13split_subfaceEPNS_4faceEPdS2_S2_iiPi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.mc, ptr noundef null, ptr noundef nonnull %i.pj, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.lk, ptr noundef nonnull %i.c) ; 0 uses
  %i.pl = load ptr, ptr %1, align 8, !tbaa !229   ; 5 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %.thread300, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !218 ; 2 uses
  %i.pp = icmp ne ptr %i.po, null
  %.not222 = icmp eq ptr %i.po, %.sroa.0.0.copyload
  %or.cond308 = select i1 %i.pp, i1 %.not222, i1 false
  br i1 %or.cond308, label %bb.bi, label %.thread300

bb.bi:                                            ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 40
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !110
  %.not223 = icmp eq ptr %i.pr, %.sroa.9.0.copyload
  br i1 %.not223, label %bb.bj, label %.thread300

bb.bj:                                            ; preds = %bb.bi
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !110
  %.not224 = icmp eq ptr %i.pt, %.sroa.14.0.copyload
  br i1 %.not224, label %bb.bk, label %.thread300

bb.bk:                                            ; preds = %bb.bj
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 56
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !110
  %.not225 = icmp eq ptr %i.pv, %.sroa.19.0.copyload
  br i1 %.not225, label %bb.bl, label %.thread300

.thread300:                                       ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %.loopexit312

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %.thread278

.thread278:                                       ; preds = %bb.bl, %bb.bd, %bb.bf, %bb.be, %bb.ax, %bb.ay, %bb.az, %bb.aw
  %.2283 = phi i32 [ %i.pi, %bb.bl ], [ %.0319, %bb.bd ], [ %.0319, %bb.be ], [ %.0319, %bb.bf ], [ %.0319, %bb.ax ], [ %.0319, %bb.ay ], [ %.0319, %bb.az ], [ %.0319, %bb.aw ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pw = load ptr, ptr %i.le, align 8, !tbaa !329 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32
  %i.py = load i64, ptr %i.px, align 8, !tbaa !98
  %i.pz = icmp sgt i64 %i.py, %indvars.iv.next
  br i1 %i.pz, label %bb.aw, label %.loopexit312, !llvm.loop !1339

.loopexit312:                                     ; preds = %.thread278, %.thread300
  %.11 = phi i8 [ 1, %.thread300 ], [ 0, %.thread278 ] ; 2 uses
  %.3 = phi i32 [ %i.pi, %.thread300 ], [ %.2283, %.thread278 ]
  %i.qa = icmp eq i32 %.3, 0
  br i1 %i.qa, label %.preheader310, label %.loopexit311

.preheader310:                                    ; preds = %bb.av, %.loopexit312
  %.11381 = phi i8 [ %.11, %.loopexit312 ], [ 0, %bb.av ] ; 4 uses
  %i.qb = load ptr, ptr %i.le, align 8, !tbaa !329 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !98
  %i.qe = icmp sgt i64 %i.qd, 0
  br i1 %i.qe, label %.lr.ph322, label %.loopexit311

.lr.ph322:                                        ; preds = %.preheader310
  %i.qf = or i32 %4, 2
  %8 = trunc nuw i8 %.11381 to i1
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph322, %bb.bw
  %i.qg = phi ptr [ %i.qb, %.lr.ph322 ], [ %i.sl, %bb.bw ] ; 8 uses
  %indvars.iv332 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next333, %bb.bw ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !102
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !101
  %i.ql = trunc nuw nsw i64 %indvars.iv332 to i32 ; 2 uses
  %i.qm = lshr i32 %i.ql, %i.qk
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !51
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 12
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !108
  %i.qs = and i32 %i.qr, %i.ql
  %i.qt = load i32, ptr %i.qg, align 8, !tbaa !100
  %i.qu = mul nsw i32 %i.qs, %i.qt
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds i8, ptr %i.qp, i64 %i.qv ; 6 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !308 ; 4 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !223
  %i.rc = sext i32 %i.rb to i64                   ; 3 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !57
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.rf
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !218
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qw, i64 88
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !286
  %.not226 = icmp eq ptr %i.rh, %i.rj
  br i1 %.not226, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.rk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.rc
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !57
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.rm
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !218
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qw, i64 96
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !287
  %.not227 = icmp eq ptr %i.ro, %i.rq
  br i1 %.not227, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  %i.rr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.rc
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !57
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.rt
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !218
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qw, i64 104
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !310
  %.not228 = icmp eq ptr %i.rv, %i.rx
  br i1 %.not228, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.rz = call noundef zeroext i1 @_ZN10tetgenmesh13split_subfaceEPNS_4faceEPdS2_S2_iiPi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.qx, ptr noundef null, ptr noundef nonnull %i.ry, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %i.qf, ptr noundef nonnull %i.d) ; 0 uses
  %i.sa = load ptr, ptr %1, align 8, !tbaa !229   ; 5 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !218 ; 2 uses
  %i.se = icmp ne ptr %i.sd, null
  %.not229 = icmp eq ptr %i.sd, %.sroa.0.0.copyload
  %or.cond309 = select i1 %i.se, i1 %.not229, i1 false
  br i1 %or.cond309, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 40
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !110
  %.not230 = icmp eq ptr %i.sg, %.sroa.9.0.copyload
  br i1 %.not230, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !110
  %.not231 = icmp eq ptr %i.si, %.sroa.14.0.copyload
  br i1 %.not231, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 56
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !110
  %.not232 = icmp ne ptr %i.sk, %.sroa.19.0.copyload ; 2 uses
  %brmerge = or i1 %.not232, %8
  br i1 %brmerge, label %.thread304, label %._crit_edge

.thread304:                                       ; preds = %bb.bu
  %.mux.le = select i1 %.not232, i8 1, i8 %.11381
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bt, %bb.bq, %bb.br, %.thread304
  %.13294.ph = phi i8 [ %.mux.le, %.thread304 ], [ 1, %bb.br ], [ 1, %bb.bq ], [ 1, %bb.bt ], [ 1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  br label %.loopexit311

._crit_edge:                                      ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %.pre = load ptr, ptr %i.le, align 8, !tbaa !329
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %._crit_edge
  %i.sl = phi ptr [ %i.qg, %bb.bm ], [ %i.qg, %bb.bn ], [ %i.qg, %bb.bo ], [ %i.qg, %bb.bp ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !98
  %i.so = icmp sgt i64 %i.sn, %indvars.iv.next333
  br i1 %i.so, label %bb.bm, label %.loopexit311, !llvm.loop !1340

.loopexit311:                                     ; preds = %bb.bw, %.preheader310, %bb.bv, %.loopexit312
  %.15 = phi i8 [ %.13294.ph, %bb.bv ], [ %.11, %.loopexit312 ], [ %.11381, %.preheader310 ], [ %.11381, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.bx

bb.bx:                                            ; preds = %bb.au, %.loopexit311
  %.16 = phi i8 [ %.15, %.loopexit311 ], [ 0, %bb.au ]
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 68480
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !329
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  store i64 0, ptr %i.sr, align 8, !tbaa !98
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !281
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !200
  %i.sw = icmp sgt i64 %i.sv, 0
  br i1 %i.sw, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.sx = or i32 %4, 2
  call void @_ZN10tetgenmesh13repairencfacsEPdii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.sx)
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !412
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32 ; 2 uses
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !98
  %i.tc = icmp sgt i64 %i.tb, 0
  br i1 %i.tc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i64 0, ptr %i.ta, align 8, !tbaa !98
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %bb.bx
  %i.td = load ptr, ptr %1, align 8, !tbaa !229   ; 5 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !218 ; 2 uses
  %i.th = icmp eq ptr %i.tg, null
  br i1 %i.th, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not233 = icmp eq ptr %i.tg, %.sroa.0.0.copyload
  br i1 %.not233, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !110
  %.not234 = icmp eq ptr %i.tj, %.sroa.9.0.copyload
  br i1 %.not234, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 48
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !110
  %.not235 = icmp eq ptr %i.tl, %.sroa.14.0.copyload
  br i1 %.not235, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 56
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !110
  %.not236 = icmp eq ptr %i.tn, %.sroa.19.0.copyload
  br i1 %.not236, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  br label %bb.ci

bb.ch:                                            ; preds = %bb.at
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 68480
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !329
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  store i64 0, ptr %i.tq, align 8, !tbaa !98
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.ca, %bb.w, %bb.ar, %bb.an, %bb.am, %bb.ch, %bb.as
  %.18 = phi i8 [ 0, %bb.as ], [ 0, %bb.w ], [ 0, %bb.ch ], [ 1, %bb.am ], [ %.5196, %bb.ar ], [ 1, %bb.ca ], [ 1, %bb.an ], [ %.16, %bb.cf ], [ 1, %bb.cg ], [ 1, %bb.cb ]
  %i.tr = trunc nuw i8 %.18 to i1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.u, %bb.v, %bb.ci, %bb.j
  %.0197 = phi i1 [ false, %bb.j ], [ %i.tr, %bb.ci ], [ true, %bb.v ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i1 %.0197
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh13repairbadtetsEdi(ptr noundef nonnull align 8 dereferenceable(69984) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.tetgenmesh::triface", align 8 ; 8 uses
  %i.a = alloca [6 x double], align 16            ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.tetgenmesh::insertvertexflags", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store ptr null, ptr %3, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68984 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68912 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68960
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread

_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread: ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread.backedge, %bb.a
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !282  ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !200
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !402
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !98
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.v

bb.c:                                             ; preds = %_ZN10tetgenmesh9isdeadtetERNS_7trifaceE.exit.thread
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !194  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !201
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !190
  %i.ae = sext i32 %i.ad to i64                   ; 6 uses
  %i.af = add i64 %i.ae, %i.ab
  %i.ag = urem i64 %i.ab, %i.ae
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !202
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !193 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !203
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !196
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %i.al, 0
  br i1 %i.aq, label %bb.e, label %_ZN10tetgenmesh10memorypool8traverseEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !109 ; 2 uses
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !201
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = add i64 %i.at, %i.ae
  %i.av = urem i64 %i.at, %i.ae
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit

_ZN10tetgenmesh10memorypool8traverseEv.exit:      ; preds = %bb.d, %bb.e
  %i.ay = phi ptr [ %i.ax, %bb.e ], [ %i.ai, %bb.d ] ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !192
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add i64 %i.bc, %i.az
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !202
  %i.bf = add nsw i32 %i.al, -1
  store i32 %i.bf, ptr %i.am, align 4, !tbaa !203
  %.not43 = icmp eq ptr %i.ay, null
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit, %_ZN10tetgenmesh10memorypool8traverseEv.exit27
  %.01844 = phi ptr [ %i.ft, %_ZN10tetgenmesh10memorypool8traverseEv.exit27 ], [ %i.ay, %_ZN10tetgenmesh10memorypool8traverseEv.exit ] ; 2 uses
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !402 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !98
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !101
  %i.bm = ashr i32 %i.bj, %i.bl                   ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !102 ; 10 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.br = add nsw i32 %i.bm, 128                  ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 3                    ; 2 uses
end_hunk_0
