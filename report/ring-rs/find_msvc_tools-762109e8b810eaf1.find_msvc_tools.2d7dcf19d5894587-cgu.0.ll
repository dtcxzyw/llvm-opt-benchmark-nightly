Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs3U9i7nQCKwt_15find_msvc_tools:bb.a
  %i.j = icmp ult i64 %1, 16
  br i1 %i.j, label %.lr.ph.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.i, ptr %0, i64 %1)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.09.i.i.i
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, %i.i                    ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.04.09.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %1
  %or.cond = select i1 %i.p, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond, label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.b, ptr %0, i64 %1, ptr %2, i64 %3)
  call fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.c, ptr align 8 %i.b) #32
  %i.r = load i64, ptr %i.c, align 8
  %i.s = icmp eq i64 %i.r, 1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load i8, ptr %2, align 1                 ; 3 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = icmp eq i64 %3, 2
  br i1 %i.v, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %3, i64 4) ; 2 uses
  %i.x = icmp ult i64 %i.w, %3
  br i1 %i.x, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.y = icmp ult i64 %i.w, %i.aa
  br i1 %i.y, label %.lr.ph, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.z = phi i64 [ %i.aa, %bb.k ], [ %3, %bb.j ]
  %i.aa = add nsw i64 %i.z, -1                    ; 6 uses
  %i.ab = icmp ult i64 %i.aa, %3
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.aa, i64 range(i64 2, 33) %3, ptr nonnull align 8 @12) #33
  unreachable

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ad, %i.t
  br i1 %.not.i.not.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.ae = add nuw nsw i64 %3, 15
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, label %bb.n

.thread.i.i:                                      ; preds = %bb.i
  %i.ag = icmp ult i64 %1, 17
  br i1 %i.ag, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, label %.thread92.i.i

.thread92.i.i:                                    ; preds = %.thread.i.i
  %i.ah = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread92.i.i
  %i.al = phi i8 [ %.pre.i.i, %.thread92.i.i ], [ %i.ad, %bb.n ]
  %i.am = phi <16 x i8> [ %i.ai, %.thread92.i.i ], [ %i.ak, %bb.n ] ; 6 uses
  %storemerge9194.i.i = phi i64 [ 1, %.thread92.i.i ], [ %i.aa, %bb.n ] ; 6 uses
  %i.an = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1
  store ptr %0, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.u, ptr %i.as, align 8
  %i.at = add nuw nsw i64 %3, 63                  ; 2 uses
  %.not.i.i = icmp ult i64 %i.at, %1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s, %bb.o
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.o ], [ %i.cp, %bb.s ] ; 2 uses
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.o ], [ %.sroa.014.2.3.i.i, %bb.s ] ; 2 uses
  %i.au = add nuw nsw i64 %3, 15                  ; 2 uses
  %i.av = add i64 %.sroa.06.0.lcssa.i.i, %i.au
  %i.aw = icmp uge i64 %i.av, %1
  %i.ax = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3104.i.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond3104.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.s
  %.sroa.06.0102.i.i = phi i64 [ %i.cp, %bb.s ], [ 0, %bb.o ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.0102.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.i.i = load <16 x i8>, ptr %i.az, align 1
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.am
  %i.bb = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i, %i.ao
  %i.bc = and <16 x i1> %i.ba, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.bf, align 1
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.am
  %i.bh = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i, %i.ao
  %i.bi = and <16 x i1> %i.bg, %i.bh
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.bl, align 1
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.am
  %i.bn = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i, %i.ao
  %i.bo = and <16 x i1> %i.bm, %i.bn
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.br, align 1
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.am
  %i.bt = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i, %i.ao
  %i.bu = and <16 x i1> %i.bs, %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = icmp eq i16 %i.bd, 0
  br i1 %i.bw, label %.preheader95.1.i.i, label %bb.t

.preheader95.1.i.i:                               ; preds = %bb.t, %.lr.ph.i.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %i.cu, %bb.t ] ; 3 uses
  %i.bx = icmp eq i16 %i.bj, 0
  br i1 %i.bx, label %.preheader95.2.i.i, label %bb.p

bb.p:                                             ; preds = %.preheader95.1.i.i
  %i.by = or disjoint i64 %.sroa.06.0102.i.i, 16
  %i.bz = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.ca = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.by, i16 %i.bj, i1 zeroext %i.bz) #32
  %i.cb = zext i1 %i.ca to i8
  %i.cc = or i8 %.sroa.014.2.i.i, %i.cb
  br label %.preheader95.2.i.i

.preheader95.2.i.i:                               ; preds = %bb.p, %.preheader95.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader95.1.i.i ], [ %i.cc, %bb.p ] ; 3 uses
  %i.cd = icmp eq i16 %i.bp, 0
  br i1 %i.cd, label %.preheader95.3.i.i, label %bb.q

bb.q:                                             ; preds = %.preheader95.2.i.i
  %i.ce = or disjoint i64 %.sroa.06.0102.i.i, 32
  %i.cf = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.cg = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.ce, i16 %i.bp, i1 zeroext %i.cf) #32
  %i.ch = zext i1 %i.cg to i8
  %i.ci = or i8 %.sroa.014.2.1.i.i, %i.ch
  br label %.preheader95.3.i.i

.preheader95.3.i.i:                               ; preds = %bb.q, %.preheader95.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader95.2.i.i ], [ %i.ci, %bb.q ] ; 3 uses
  %i.cj = icmp eq i16 %i.bv, 0
  br i1 %i.cj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader95.3.i.i
  %i.ck = or disjoint i64 %.sroa.06.0102.i.i, 48
  %i.cl = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.cm = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.ck, i16 %i.bv, i1 zeroext %i.cl) #32
  %i.cn = zext i1 %i.cm to i8
  %i.co = or i8 %.sroa.014.2.2.i.i, %i.cn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader95.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader95.3.i.i ], [ %i.co, %bb.r ] ; 2 uses
  %i.cp = add i64 %.sroa.06.0102.i.i, 64          ; 3 uses
  %i.cq = add i64 %i.cp, %i.at
  %i.cr = icmp uge i64 %i.cq, %1
  %i.cs = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ct = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %.sroa.06.0102.i.i, i16 %i.bd, i1 zeroext false) #32
  %i.cu = zext i1 %i.ct to i8
  br label %.preheader95.1.i.i

._crit_edge.i.i:                                  ; preds = %bb.u, %.preheader.i.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.014.4.i.i, %bb.u ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.ax, %.preheader.i.i ], [ %i.do, %bb.u ]
  %i.cv = sub nuw i64 %1, %i.u
  %i.cw = add i64 %i.cv, -16                      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw ; 2 uses
  %.sroa.0.0.copyload.i52.i.i = load <16 x i8>, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i53.i.i = load <16 x i8>, ptr %i.cy, align 1
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i52.i.i, %i.am
  %i.da = icmp eq <16 x i8> %.sroa.01.0.copyload.i53.i.i, %i.ao
  %i.db = and <16 x i1> %i.cz, %i.da
  %i.dc = bitcast <16 x i1> %i.db to i16          ; 2 uses
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %.loopexit.i, label %bb.w

.lr.ph106.i.i:                                    ; preds = %.preheader.i.i, %bb.u
  %.sroa.06.1105.i.i = phi i64 [ %i.dl, %bb.u ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.06.1105.i.i ; 2 uses
  %.sroa.0.0.copyload.i54.i.i = load <16 x i8>, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %storemerge9194.i.i
  %.sroa.01.0.copyload.i55.i.i = load <16 x i8>, ptr %i.df, align 1
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i54.i.i, %i.am
  %i.dh = icmp eq <16 x i8> %.sroa.01.0.copyload.i55.i.i, %i.ao
  %i.di = and <16 x i1> %i.dg, %i.dh
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.lr.ph106.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph106.i.i ], [ %i.dq, %bb.v ] ; 2 uses
  %i.dl = add i64 %.sroa.06.1105.i.i, 16          ; 2 uses
  %i.dm = add i64 %i.dl, %i.au
  %i.dn = icmp uge i64 %i.dm, %1
  %i.do = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.dn, %i.do
  br i1 %or.cond3.i.i, label %._crit_edge.i.i, label %.lr.ph106.i.i

bb.v:                                             ; preds = %.lr.ph106.i.i
  %i.dp = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %.sroa.06.1105.i.i, i16 %i.dj, i1 zeroext false) #32
  %i.dq = zext i1 %i.dp to i8
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dr = call zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a, i64 %i.cw, i16 %i.dc, i1 zeroext %.lcssa.i.i) #32
  %i.ds = zext i1 %i.dr to i8
  %i.dt = or i8 %.sroa.014.3.lcssa.i.i, %i.ds
  br label %.loopexit.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i: ; preds = %.thread.i.i, %bb.m
  %.not.not.i.i.i31 = icmp eq ptr %0, null
  br i1 %.not.not.i.i.i31, label %.loopexit.i, label %.split.i.i.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i.i32, i64 1
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %.in = phi i64 [ %i.dw, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i ], [ %1, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ]
  %.sroa.061.0.i.i32 = phi ptr [ %i.du, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i ], [ %0, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ] ; 2 uses
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.061.0.i.i32, ptr noundef nonnull dereferenceable(1) %2, i64 range(i64 2, 33) %3)
  %i.dv = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.dv, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i: ; preds = %.split.i.i.i
  %i.dw = add i64 %.in, -1                        ; 2 uses
  %i.dx = icmp ugt i64 %3, %i.dw
  br i1 %i.dx, label %.loopexit.i, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containsCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

.loopexit.i:                                      ; preds = %.split.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i, %bb.w, %._crit_edge.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ %.sroa.014.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.dt, %bb.w ], [ 0, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.preheader.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3U9i7nQCKwt_15find_msvc_tools.exit.backedge.i.i.i ], [ 1, %.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dy = trunc nuw i8 %.sroa.0.0.i.ph.i to i1
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.x:                                             ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr %2, ptr %0, i64 %3)
  %i.dz = icmp eq i32 %bcmp.i, 0
  br label %_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15is_contained_inCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.d, %bb.g, %bb.h, %.loopexit.i, %bb.x
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ %i.dy, %.loopexit.i ], [ %i.s, %bb.h ], [ %i.dz, %bb.x ], [ %i.m, %bb.g ], [ %i.p, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolE3mapNtNtCsaL1QbXo9JQH_3std7process7CommandNCNvNtBM_10find_tools4find0EBM_(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [200 x i8], align 8               ; 2 uses
  %i.d = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !4
  invoke void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.a, ptr %.val.i.i.i.i, i64 %.val1.i.i.i.i)
          to label %.noexc.i unwind label %bb.f, !noalias !4

.noexc.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !4
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6common7CommandECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a)
          to label %.body.i unwind label %bb.e, !noalias !4

_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.d, %.noexc.i
  %.sroa.0.0.i.i = phi ptr [ %i.h, %.noexc.i ], [ %i.o, %bb.d ] ; 7 uses
  %i.n = icmp eq ptr %.sroa.0.0.i.i, %i.k
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  %or.cond.i.i = or i1 %i.n, %.not.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.p = getelementptr i8, ptr %.sroa.0.0.i.i, i64 8
  %.val.i.i4.i.i = load ptr, ptr %i.p, align 8, !noalias !4
  %i.q = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16
  %.val1.i.i5.i.i = load i64, ptr %i.q, align 8, !noalias !4
  %i.r = getelementptr i8, ptr %.sroa.0.0.i.i, i64 32
  %.val.i1.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4
  %i.s = getelementptr i8, ptr %.sroa.0.0.i.i, i64 40
  %.val1.i2.i.i.i = load i64, ptr %i.s, align 8, !noalias !4
  invoke void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr nonnull align 8 %i.l, ptr %.val.i.i4.i.i, i64 %.val1.i.i5.i.i, ptr %.val.i1.i.i.i, i64 %.val1.i2.i.i.i)
          to label %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i unwind label %bb.c, !noalias !4

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.m, %bb.c ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEBF_(ptr nonnull align 8 %i.b) #35
          to label %common.resume.i unwind label %bb.l, !noalias !4

bb.g:                                             ; preds = %_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i unwind label %bb.h, !noalias !4

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %.body.i.i unwind label %bb.i, !noalias !4

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.b)
          to label %_RNCNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools4find0B5_.exit unwind label %bb.j, !noalias !4

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.v, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.y) #35
          to label %common.resume.i unwind label %bb.k, !noalias !4

bb.k:                                             ; preds = %.body.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i
end_hunk_0
