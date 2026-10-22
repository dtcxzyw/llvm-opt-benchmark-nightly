Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-6b79d212ea042f20.build_script_build.f5a96acf8a6a48e9-cgu.0?download=true
inline.NumInlined: 165
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCsl5EpZqQPkyP_18build_script_build4main:bb.a
  %.val4 = load i64, ptr %i.fd, align 8           ; 10 uses
  %i.fe = icmp ugt i64 %.val4, 6
  br i1 %i.fe, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = icmp eq i64 %.val4, 6
  br i1 %i.ff, label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit, label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fg = icmp ult i64 %.val4, 21
  br i1 %i.fg, label %_RNvXsY_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %.val, ptr %i.a, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val4, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @12, i64 1), ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 5, ptr %i.fj, align 8
  %i.fk = icmp ult i64 %.val4, 70
  br i1 %i.fk, label %.preheader.i5.i.i, label %.lr.ph.i4.i.i

.preheader.i5.i.i:                                ; preds = %bb.ak, %bb.ag
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.hf, %bb.ak ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ag ], [ %.sroa.014.2.3.i.i.i, %bb.ak ] ; 2 uses
  %i.fl = add i64 %.sroa.06.0.lcssa.i.i.i, 21
  %i.fm = icmp uge i64 %i.fl, %.val4
  %i.fn = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond344.i.i.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond344.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

.lr.ph.i4.i.i:                                    ; preds = %bb.ag, %bb.ak
  %.sroa.06.042.i.i.i = phi i64 [ %i.hf, %bb.ak ], [ 0, %bb.ag ] ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.042.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.fo, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 5
  %.sroa.02.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.fp, align 1
  %i.fq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, splat (i8 116)
  %i.fr = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i, splat (i8 100)
  %i.fs = and <16 x i1> %i.fq, %i.fr
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 21
  %.sroa.02.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.fv, align 1
  %i.fw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, splat (i8 116)
  %i.fx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i, splat (i8 100)
  %i.fy = and <16 x i1> %i.fw, %i.fx
  %i.fz = bitcast <16 x i1> %i.fy to i16          ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 37
  %.sroa.02.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.gb, align 1
  %i.gc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, splat (i8 116)
  %i.gd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i, splat (i8 100)
  %i.ge = and <16 x i1> %i.gc, %i.gd
  %i.gf = bitcast <16 x i1> %i.ge to i16          ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fo, i64 53
  %.sroa.02.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.gh, align 1
  %i.gi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, splat (i8 116)
  %i.gj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i, splat (i8 100)
  %i.gk = and <16 x i1> %i.gi, %i.gj
  %i.gl = bitcast <16 x i1> %i.gk to i16          ; 2 uses
  %i.gm = icmp eq i16 %i.ft, 0
  br i1 %i.gm, label %.preheader36.1.i.i.i, label %bb.al

.preheader36.1.i.i.i:                             ; preds = %bb.al, %.lr.ph.i4.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i4.i.i ], [ %i.hk, %bb.al ] ; 3 uses
  %i.gn = icmp eq i16 %i.fz, 0
  br i1 %i.gn, label %.preheader36.2.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.preheader36.1.i.i.i
  %i.go = or disjoint i64 %.sroa.06.042.i.i.i, 16
  %i.gp = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.gq = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %i.go, i16 %i.fz, i1 zeroext %i.gp)
  %i.gr = zext i1 %i.gq to i8
  %i.gs = or i8 %.sroa.014.2.i.i.i, %i.gr
  br label %.preheader36.2.i.i.i

.preheader36.2.i.i.i:                             ; preds = %bb.ah, %.preheader36.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader36.1.i.i.i ], [ %i.gs, %bb.ah ] ; 3 uses
  %i.gt = icmp eq i16 %i.gf, 0
  br i1 %i.gt, label %.preheader36.3.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.preheader36.2.i.i.i
  %i.gu = or disjoint i64 %.sroa.06.042.i.i.i, 32
  %i.gv = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.gw = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %i.gu, i16 %i.gf, i1 zeroext %i.gv)
  %i.gx = zext i1 %i.gw to i8
  %i.gy = or i8 %.sroa.014.2.1.i.i.i, %i.gx
  br label %.preheader36.3.i.i.i

.preheader36.3.i.i.i:                             ; preds = %bb.ai, %.preheader36.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader36.2.i.i.i ], [ %i.gy, %bb.ai ] ; 3 uses
  %i.gz = icmp eq i16 %i.gl, 0
  br i1 %i.gz, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.preheader36.3.i.i.i
  %i.ha = or disjoint i64 %.sroa.06.042.i.i.i, 48
  %i.hb = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.hc = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %i.ha, i16 %i.gl, i1 zeroext %i.hb)
  %i.hd = zext i1 %i.hc to i8
  %i.he = or i8 %.sroa.014.2.2.i.i.i, %i.hd
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.preheader36.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader36.3.i.i.i ], [ %i.he, %bb.aj ] ; 2 uses
  %i.hf = add i64 %.sroa.06.042.i.i.i, 64         ; 2 uses
  %i.hg = add i64 %.sroa.06.042.i.i.i, 133
  %i.hh = icmp uge i64 %i.hg, %.val4
  %i.hi = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond.i.i.i, label %.preheader.i5.i.i, label %.lr.ph.i4.i.i

bb.al:                                            ; preds = %.lr.ph.i4.i.i
  %i.hj = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.042.i.i.i, i16 %i.ft, i1 zeroext false)
  %i.hk = zext i1 %i.hj to i8
  br label %.preheader36.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.am, %.preheader.i5.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i5.i.i ], [ %.sroa.014.4.i.i.i, %bb.am ] ; 2 uses
  %.lcssa.i.i.i10 = phi i1 [ %i.fn, %.preheader.i5.i.i ], [ %i.id, %bb.am ]
  %i.hl = add i64 %.val4, -21                     ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hl ; 2 uses
  %.sroa.0.0.copyload.i53.i.i.i = load <16 x i8>, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 5
  %.sroa.02.0.copyload.i54.i.i.i = load <16 x i8>, ptr %i.hn, align 1
  %i.ho = icmp eq <16 x i8> %.sroa.0.0.copyload.i53.i.i.i, splat (i8 116)
  %i.hp = icmp eq <16 x i8> %.sroa.02.0.copyload.i54.i.i.i, splat (i8 100)
  %i.hq = and <16 x i1> %i.ho, %i.hp
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %i.hs = icmp eq i16 %i.hr, 0
  br i1 %i.hs, label %.loopexit.i.i, label %bb.ao

.lr.ph46.i.i.i:                                   ; preds = %.preheader.i5.i.i, %bb.am
  %.sroa.06.145.i.i.i = phi i64 [ %i.ia, %bb.am ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i5.i.i ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.145.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i55.i.i.i = load <16 x i8>, ptr %i.ht, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 5
  %.sroa.02.0.copyload.i56.i.i.i = load <16 x i8>, ptr %i.hu, align 1
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i55.i.i.i, splat (i8 116)
  %i.hw = icmp eq <16 x i8> %.sroa.02.0.copyload.i56.i.i.i, splat (i8 100)
  %i.hx = and <16 x i1> %i.hv, %i.hw
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %i.hz = icmp eq i16 %i.hy, 0
  br i1 %i.hz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.an, %.lr.ph46.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph46.i.i.i ], [ %i.if, %bb.an ] ; 2 uses
  %i.ia = add i64 %.sroa.06.145.i.i.i, 16
  %i.ib = add i64 %.sroa.06.145.i.i.i, 37
  %i.ic = icmp uge i64 %i.ib, %.val4
  %i.id = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.ic, %i.id
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

bb.an:                                            ; preds = %.lr.ph46.i.i.i
  %i.ie = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.145.i.i.i, i16 %i.hy, i1 zeroext false)
  %i.if = zext i1 %i.ie to i8
  br label %bb.am

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  %i.ig = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Csl5EpZqQPkyP_18build_script_build(ptr align 8 %i.a, i64 %i.hl, i16 %i.hr, i1 zeroext %.lcssa.i.i.i10)
  %i.ih = zext i1 %i.ig to i8
  %i.ii = or i8 %.sroa.014.3.lcssa.i.i.i, %i.ih
  br label %.loopexit.i.i

_RNvXsY_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build.exit.i.i.i.i: ; preds = %bb.af, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i
  %.sroa.06.021.i.i.i = phi ptr [ %i.il, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i ], [ %.val, %bb.af ] ; 4 uses
  %i.ij = phi i64 [ %i.ik, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i ], [ %.val4, %bb.af ] ; 2 uses
  %i.ik = add i64 %i.ij, -1
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i.i.i, i64 1
  %.not.not.i.i.i.i = icmp eq ptr %.sroa.06.021.i.i.i, null
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i.thread, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RNvXsY_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build.exit.i.i.i.i
  %i.im = load i32, ptr %.sroa.06.021.i.i.i, align 1
  %i.in = xor i32 %i.im, 1701996660
  %i.io = getelementptr i8, ptr %.sroa.06.021.i.i.i, i64 4
  %i.ip = load i16, ptr %i.io, align 1
  %i.iq = zext i16 %i.ip to i32
  %i.ir = xor i32 %i.iq, 25697
  %i.is = or i32 %i.in, %i.ir
  %i.it = icmp ne i32 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %.loopexit.i.i.thread26, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i

.loopexit.i.i.thread26:                           ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ar

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i
  %i.iw = icmp ult i64 %i.ij, 7
  br i1 %i.iw, label %.loopexit.i.i.thread, label %_RNvXsY_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build.exit.i.i.i.i

.loopexit.i.i.thread:                             ; preds = %_RNvXsY_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csl5EpZqQPkyP_18build_script_build.exit.backedge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread

.loopexit.i.i:                                    ; preds = %bb.ao, %._crit_edge.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.ii, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ix = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %i.ix, label %bb.ar, label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit: ; preds = %bb.ae
  %i.iy = load i32, ptr %.val, align 1
  %i.iz = xor i32 1701996660, %i.iy
  %i.ja = getelementptr i8, ptr %.val, i64 4
  %i.jb = load i16, ptr %i.ja, align 1
  %i.jc = zext i16 %i.jb to i32
  %i.jd = xor i32 25697, %i.jc
  %i.je = or i32 %i.iz, %i.jd
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.ar, label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread: ; preds = %.loopexit.i.i.thread, %bb.ae, %.loopexit.i.i, %bb.ar, %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl5EpZqQPkyP_18build_script_build.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.k)
          to label %.body unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl5EpZqQPkyP_18build_script_build.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl5EpZqQPkyP_18build_script_build.exit unwind label %bb.u

bb.ar:                                            ; preds = %.loopexit.i.i.thread26, %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit, %.loopexit.i.i
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr nonnull @13, ptr nonnull inttoptr (i64 85 to ptr))
          to label %_RINvMNtCs4NRVxsYgnAr_4core3stre8containsReECsl5EpZqQPkyP_18build_script_build.exit.thread unwind label %bb.ac

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl5EpZqQPkyP_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsl5EpZqQPkyP_18build_script_build.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit.sink.split unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl5EpZqQPkyP_18build_script_build.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.o)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl5EpZqQPkyP_18build_script_build.exit, %bb.ay
  %.sink = phi ptr [ %i.m, %bb.ay ], [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsl5EpZqQPkyP_18build_script_build.exit ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %.sink)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit.sink.split, %bb.ax
  ret void

bb.au:                                            ; preds = %bb.av, %bb.ac, %.body
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.av:                                            ; preds = %bb.aw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build(ptr align 8 %i.m) #16
          to label %common.resume unwind label %bb.au

bb.aw:                                            ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs2_NtCs2AWtUsOyxgP_3std3envNtB5_8VarErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr nonnull @14, ptr nonnull %i.l)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.jo = load i64, ptr %i.m, align 8
  %i.jp = icmp eq i64 %i.jo, -1
  br i1 %i.jp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsl5EpZqQPkyP_18build_script_build.exit.sink.split unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.m)
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsl5EpZqQPkyP_18build_script_build(ptr nofree nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsl5EpZqQPkyP_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !noalias !54 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !noalias !54 ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.m = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.an, %bb.g ] ; 5 uses
  %i.n = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.aj, %bb.g ] ; 4 uses
  %i.o = load i64, ptr %i.e, align 8, !noalias !54
  %.not.i.i = icmp ugt i64 %i.m, %i.o
  br i1 %.not.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !noalias !54
  %i.q = sub nuw i64 %i.m, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.s = load i8, ptr %i.l, align 8, !noalias !54 ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !noalias !54 ; 2 uses
  %i.x = icmp ult i64 %i.q, 16
  br i1 %i.x, label %.preheader.i.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.m, %i.n
  br i1 %.not.i.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %.sroa.01.05.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.05.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !noalias !54
  %i.aa = icmp eq i8 %i.z, %i.w
  br i1 %i.aa, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.i.i: ; preds = %bb.d
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 %i.w, ptr %i.r, i64 %i.q), !noalias !54 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.loopexit20_crit_edge.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.loopexit20_crit_edge.i.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.i.i
  %.pre45.pre.i.i = load i64, ptr %i.g, align 8, !noalias !54
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.i.i
  %i.af = extractvalue { i64, i64 } %i.ac, 1
  %.pre.i.i = load i64, ptr %i.f, align 8, !noalias !54
  %.pre44.i.i = load i8, ptr %i.l, align 8, !noalias !54 ; 2 uses
  %.pre47.i.i = zext i8 %.pre44.i.i to i64
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16.i.i: ; preds = %.lr.ph.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre47.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i ], [ %i.t, %.lr.ph.i.i.i ] ; 4 uses
  %i.ag = phi i8 [ %.pre44.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i ], [ %i.s, %.lr.ph.i.i.i ]
  %i.ah = phi i64 [ %.pre.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.4.0.i19.i.i = phi i64 [ %i.af, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread16_crit_edge.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %i.ai = add i64 %i.ah, 1
  %i.aj = add i64 %i.ai, %.sroa.4.0.i19.i.i       ; 7 uses
  store i64 %i.aj, ptr %i.f, align 8, !noalias !54
  %.not12.i.i = icmp ult i64 %i.aj, %.pre-phi.i.i
  br i1 %.not12.i.i, label %bb.g, label %bb.f

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.i.i: ; preds = %.preheader.i.i.i, %bb.e, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsl5EpZqQPkyP_18build_script_build.exit.thread.loopexit20_crit_edge.i.i
end_hunk_0
