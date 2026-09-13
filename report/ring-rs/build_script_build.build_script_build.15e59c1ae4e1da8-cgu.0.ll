Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_build.build_script_build.15e59c1ae4e1da8-cgu.0?download=true
inline.NumInlined: 83
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs7hEL9c06lo_18build_script_build4main:bb.a
  %.val1 = load i64, ptr %i.n, align 8            ; 10 uses
  %i.o = icmp ugt i64 %.val1, 6
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %.val1, 6
  br i1 %i.p, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = icmp ult i64 %.val1, 21
  br i1 %i.q, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.val, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @3, i64 1), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 5, ptr %i.t, align 8
  %i.u = icmp ult i64 %.val1, 70
  br i1 %i.u, label %.preheader.i3.i.i, label %.lr.ph.i.i.i

.preheader.i3.i.i:                                ; preds = %bb.o, %bb.k
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bp, %bb.o ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.k ], [ %.sroa.014.2.3.i.i.i, %bb.o ] ; 2 uses
  %i.v = add i64 %.sroa.06.0.lcssa.i.i.i, 21
  %i.w = icmp uge i64 %i.v, %.val1
  %i.x = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond344.i.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond344.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.o
  %.sroa.06.042.i.i.i = phi i64 [ %i.bp, %bb.o ], [ 0, %bb.k ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.042.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.z, align 1
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, splat (i8 109)
  %i.ab = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, splat (i8 121)
  %i.ac = and <16 x i1> %i.aa, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 21
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.af, align 1
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, splat (i8 109)
  %i.ah = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, splat (i8 121)
  %i.ai = and <16 x i1> %i.ag, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 37
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.al, align 1
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, splat (i8 109)
  %i.an = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, splat (i8 121)
  %i.ao = and <16 x i1> %i.am, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 53
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.ar, align 1
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, splat (i8 109)
  %i.at = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, splat (i8 121)
  %i.au = and <16 x i1> %i.as, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = icmp eq i16 %i.ad, 0
  br i1 %i.aw, label %.preheader36.1.i.i.i, label %bb.p

.preheader36.1.i.i.i:                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %i.bu, %bb.p ] ; 3 uses
  %i.ax = icmp eq i16 %i.aj, 0
  br i1 %i.ax, label %.preheader36.2.i.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader36.1.i.i.i
  %i.ay = or disjoint i64 %.sroa.06.042.i.i.i, 16
  %i.az = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.ba = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.ay, i16 %i.aj, i1 zeroext %i.az) #14
  %i.bb = zext i1 %i.ba to i8
  %i.bc = or i8 %.sroa.014.2.i.i.i, %i.bb
  br label %.preheader36.2.i.i.i

.preheader36.2.i.i.i:                             ; preds = %bb.l, %.preheader36.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader36.1.i.i.i ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bd = icmp eq i16 %i.ap, 0
  br i1 %i.bd, label %.preheader36.3.i.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader36.2.i.i.i
  %i.be = or disjoint i64 %.sroa.06.042.i.i.i, 32
  %i.bf = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.bg = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.be, i16 %i.ap, i1 zeroext %i.bf) #14
  %i.bh = zext i1 %i.bg to i8
  %i.bi = or i8 %.sroa.014.2.1.i.i.i, %i.bh
  br label %.preheader36.3.i.i.i

.preheader36.3.i.i.i:                             ; preds = %bb.m, %.preheader36.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader36.2.i.i.i ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bj = icmp eq i16 %i.av, 0
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader36.3.i.i.i
  %i.bk = or disjoint i64 %.sroa.06.042.i.i.i, 48
  %i.bl = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.bm = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.bk, i16 %i.av, i1 zeroext %i.bl) #14
  %i.bn = zext i1 %i.bm to i8
  %i.bo = or i8 %.sroa.014.2.2.i.i.i, %i.bn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader36.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader36.3.i.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bp = add i64 %.sroa.06.042.i.i.i, 64         ; 2 uses
  %i.bq = add i64 %.sroa.06.042.i.i.i, 133
  %i.br = icmp uge i64 %i.bq, %.val1
  %i.bs = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %.preheader.i3.i.i, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.042.i.i.i, i16 %i.ad, i1 zeroext false) #14
  %i.bu = zext i1 %i.bt to i8
  br label %.preheader36.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %.preheader.i3.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i3.i.i ], [ %.sroa.014.4.i.i.i, %bb.q ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.x, %.preheader.i3.i.i ], [ %i.cn, %bb.q ]
  %i.bv = add i64 %.val1, -21                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bv ; 2 uses
  %.sroa.0.0.copyload.i52.i.i.i = load <16 x i8>, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %.sroa.01.0.copyload.i53.i.i.i = load <16 x i8>, ptr %i.bx, align 1
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i52.i.i.i, splat (i8 109)
  %i.bz = icmp eq <16 x i8> %.sroa.01.0.copyload.i53.i.i.i, splat (i8 121)
  %i.ca = and <16 x i1> %i.by, %i.bz
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %.loopexit.i.i, label %bb.s

.lr.ph46.i.i.i:                                   ; preds = %.preheader.i3.i.i, %bb.q
  %.sroa.06.145.i.i.i = phi i64 [ %i.ck, %bb.q ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i3.i.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.145.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i54.i.i.i = load <16 x i8>, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 5
  %.sroa.01.0.copyload.i55.i.i.i = load <16 x i8>, ptr %i.ce, align 1
  %i.cf = icmp eq <16 x i8> %.sroa.0.0.copyload.i54.i.i.i, splat (i8 109)
  %i.cg = icmp eq <16 x i8> %.sroa.01.0.copyload.i55.i.i.i, splat (i8 121)
  %i.ch = and <16 x i1> %i.cf, %i.cg
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %i.cj = icmp eq i16 %i.ci, 0
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph46.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph46.i.i.i ], [ %i.cp, %bb.r ] ; 2 uses
  %i.ck = add i64 %.sroa.06.145.i.i.i, 16
  %i.cl = add i64 %.sroa.06.145.i.i.i, 37
  %i.cm = icmp uge i64 %i.cl, %.val1
  %i.cn = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.cm, %i.cn
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

bb.r:                                             ; preds = %.lr.ph46.i.i.i
  %i.co = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.145.i.i.i, i16 %i.ci, i1 zeroext false) #14
  %i.cp = zext i1 %i.co to i8
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.cq = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.bv, i16 %i.cb, i1 zeroext %.lcssa.i.i.i) #14
  %i.cr = zext i1 %i.cq to i8
  %i.cs = or i8 %.sroa.014.3.lcssa.i.i.i, %i.cr
  br label %.loopexit.i.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i: ; preds = %bb.j, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i
  %.sroa.06.021.i.i.i = phi ptr [ %i.cv, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i ], [ %.val, %bb.j ] ; 4 uses
  %i.ct = phi i64 [ %i.cu, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i ], [ %.val1, %bb.j ] ; 2 uses
  %i.cu = add i64 %i.ct, -1
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i.i.i, i64 1
  %.not.not.i.i.i.i = icmp eq ptr %.sroa.06.021.i.i.i, null
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i.thread, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i
  %i.cw = load i32, ptr %.sroa.06.021.i.i.i, align 1
  %i.cx = xor i32 %i.cw, 1869440365
  %i.cy = getelementptr i8, ptr %.sroa.06.021.i.i.i, i64 4
  %i.cz = load i16, ptr %i.cy, align 1
  %i.da = zext i16 %i.cz to i32
  %i.db = xor i32 %i.da, 31090
  %i.dc = or i32 %i.cx, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.loopexit.i.i.thread4, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i

.loopexit.i.i.thread4:                            ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i
  %i.dg = icmp ult i64 %i.ct, 7
  br i1 %i.dg, label %.loopexit.i.i.thread, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i

.loopexit.i.i.thread:                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

.loopexit.i.i:                                    ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.cs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dh = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %i.dh, label %bb.v, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit: ; preds = %bb.i
  %i.di = load i32, ptr %.val, align 1
  %i.dj = xor i32 1869440365, %i.di
  %i.dk = getelementptr i8, ptr %.val, i64 4
  %i.dl = load i16, ptr %i.dk, align 1
  %i.dm = zext i16 %i.dl to i32
  %i.dn = xor i32 31090, %i.dm
  %i.do = or i32 %i.dj, %i.dn
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread: ; preds = %.loopexit.i.i.thread, %bb.i, %.loopexit.i.i, %bb.v, %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7hEL9c06lo_18build_script_build.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7hEL9c06lo_18build_script_build.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
  ret void

bb.v:                                             ; preds = %.loopexit.i.i.thread4, %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit, %.loopexit.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr nonnull @4, ptr nonnull inttoptr (i64 63 to ptr))
          to label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread unwind label %bb.g

bb.w:                                             ; preds = %bb.g
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCs7hEL9c06lo_18build_script_build4main, ptr %i.a, align 8
  %i.c = call i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr nonnull %i.a, ptr nonnull align 8 @0, i64 %i.b, ptr %1, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noinline }
attributes #13 = { cold }
attributes #14 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = distinct !{null}
!6 = !{i64 16277144371581911}
!7 = distinct !{!7, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE17unwrap_or_defaultCs7hEL9c06lo_18build_script_build"}
!8 = distinct !{!8, !7, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE17unwrap_or_defaultCs7hEL9c06lo_18build_script_build: argument 0"}
!9 = distinct !{!9, !"_RNvXsp_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7hEL9c06lo_18build_script_build"}
!10 = distinct !{!10, !9, !"_RNvXsp_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7hEL9c06lo_18build_script_build: argument 0"}
!11 = !{!8}
!12 = !{!10, !8}
end_hunk_0
