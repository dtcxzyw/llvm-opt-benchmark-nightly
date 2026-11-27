Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/HashUtils?download=true
inline.NumInlined: 246
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_511CacheIDHashB5cxx11EPKcm:bb.a
  %i.cy = xor i64 %i.cx, %i.cw
  %.fca.0.insert.i5.i = insertvalue { i64, i64 } poison, i64 %i.cs, 0
  %.fca.1.insert.i6.i = insertvalue { i64, i64 } %.fca.0.insert.i5.i, i64 %i.cy, 1
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.cz = icmp ult i64 %2, 129
  br i1 %i.cz, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.da = mul i64 %2, -7046029288634856825        ; 4 uses
  %i.db = icmp samesign ugt i64 %2, 32
  br i1 %i.db, label %bb.j, label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp samesign ugt i64 %2, 64
  br i1 %i.dc, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp samesign ugt i64 %2, 96
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -64
  %.0.copyload.i24.i = load i64, ptr %i.de, align 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.0.copyload.i25.i = load i64, ptr %i.dh, align 1 ; 2 uses
  %i.di = xor i64 %.0.copyload.i24.i, 4554437623014685352
  %i.dj = xor i64 %.0.copyload.i25.i, 2111919702937427193
  %i.dk = zext i64 %i.di to i128
  %i.dl = zext i64 %i.dj to i128
  %i.dm = mul nuw i128 %i.dl, %i.dk               ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = xor i128 %i.dn, %i.dm
  %i.dp = trunc i128 %i.do to i64
  %i.dq = add i64 %i.da, %i.dp
  %.0.copyload.i26.i = load i64, ptr %i.dg, align 1 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.df, i64 -56
  %.0.copyload.i27.i = load i64, ptr %i.dr, align 1 ; 2 uses
  %i.ds = add i64 %.0.copyload.i27.i, %.0.copyload.i26.i
  %i.dt = xor i64 %i.dq, %i.ds
  %i.du = xor i64 %.0.copyload.i26.i, 3556072174620004746
  %i.dv = xor i64 %.0.copyload.i27.i, 7238261902898274248
  %i.dw = zext i64 %i.du to i128
  %i.dx = zext i64 %i.dv to i128
  %i.dy = mul nuw i128 %i.dx, %i.dw               ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = xor i128 %i.dz, %i.dy
  %i.eb = trunc i128 %i.ea to i64
  %i.ec = add i64 %.0.copyload.i25.i, %.0.copyload.i24.i
  %i.ed = xor i64 %i.ec, %i.eb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.014.0.i.i = phi i64 [ %i.dt, %bb.l ], [ %i.da, %bb.k ]
  %.sroa.13.0.i.i = phi i64 [ %i.ed, %bb.l ], [ 0, %bb.k ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %.0.copyload.i32.i = load i64, ptr %i.ee, align 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0.copyload.i33.i = load i64, ptr %i.eh, align 1 ; 2 uses
  %i.ei = xor i64 %.0.copyload.i32.i, -3818837453329782724
  %i.ej = xor i64 %.0.copyload.i33.i, -6688317018830679928
  %i.ek = zext i64 %i.ei to i128
  %i.el = zext i64 %i.ej to i128
  %i.em = mul nuw i128 %i.el, %i.ek               ; 2 uses
  %i.en = lshr i128 %i.em, 64
  %i.eo = xor i128 %i.en, %i.em
  %i.ep = trunc i128 %i.eo to i64
  %i.eq = add i64 %.sroa.014.0.i.i, %i.ep
  %.0.copyload.i34.i = load i64, ptr %i.eg, align 1 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 -40
  %.0.copyload.i35.i = load i64, ptr %i.er, align 1 ; 2 uses
  %i.es = add i64 %.0.copyload.i35.i, %.0.copyload.i34.i
  %i.et = xor i64 %i.eq, %i.es
  %i.eu = xor i64 %.0.copyload.i34.i, 5690594596133299313
  %i.ev = xor i64 %.0.copyload.i35.i, -2833645246901970632
  %i.ew = zext i64 %i.eu to i128
  %i.ex = zext i64 %i.ev to i128
  %i.ey = mul nuw i128 %i.ex, %i.ew               ; 2 uses
  %i.ez = lshr i128 %i.ey, 64
  %i.fa = xor i128 %i.ez, %i.ey
  %i.fb = trunc i128 %i.fa to i64
  %i.fc = add i64 %.sroa.13.0.i.i, %i.fb
  %i.fd = add i64 %.0.copyload.i33.i, %.0.copyload.i32.i
  %i.fe = xor i64 %i.fc, %i.fd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.014.1.i.i = phi i64 [ %i.et, %bb.m ], [ %i.da, %bb.j ]
  %.sroa.13.1.i.i = phi i64 [ %i.fe, %bb.m ], [ 0, %bb.j ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -32
  %.0.copyload.i40.i = load i64, ptr %i.ff, align 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i41.i = load i64, ptr %i.fi, align 1 ; 2 uses
  %i.fj = xor i64 %.0.copyload.i40.i, 8711581037947681227
  %i.fk = xor i64 %.0.copyload.i41.i, 2410270004345854594
  %i.fl = zext i64 %i.fj to i128
  %i.fm = zext i64 %i.fk to i128
  %i.fn = mul nuw i128 %i.fm, %i.fl               ; 2 uses
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = xor i128 %i.fo, %i.fn
  %i.fq = trunc i128 %i.fp to i64
  %i.fr = add i64 %.sroa.014.1.i.i, %i.fq
  %.0.copyload.i42.i = load i64, ptr %i.fh, align 1 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fg, i64 -24
  %.0.copyload.i43.i = load i64, ptr %i.fs, align 1 ; 2 uses
  %i.ft = add i64 %.0.copyload.i43.i, %.0.copyload.i42.i
  %i.fu = xor i64 %i.fr, %i.ft
  %i.fv = xor i64 %.0.copyload.i42.i, -8204357891075471176
  %i.fw = xor i64 %.0.copyload.i43.i, 5487137525590930912
  %i.fx = zext i64 %i.fv to i128
  %i.fy = zext i64 %i.fw to i128
  %i.fz = mul nuw i128 %i.fy, %i.fx               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = xor i128 %i.ga, %i.fz
  %i.gc = trunc i128 %i.gb to i64
  %i.gd = add i64 %.sroa.13.1.i.i, %i.gc
  %i.ge = add i64 %.0.copyload.i41.i, %.0.copyload.i40.i
  %i.gf = xor i64 %i.gd, %i.ge
  br label %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit.i

_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit.i:       ; preds = %bb.n, %bb.i
  %.sroa.014.2.i.i = phi i64 [ %i.fu, %bb.n ], [ %i.da, %bb.i ]
  %.sroa.13.2.i.i = phi i64 [ %i.gf, %bb.n ], [ 0, %bb.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -16
  %.0.copyload.i48.i = load i64, ptr %1, align 1  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i49.i = load i64, ptr %i.gi, align 1 ; 2 uses
  %i.gj = xor i64 %.0.copyload.i48.i, -4734510112055689544
  %i.gk = xor i64 %.0.copyload.i49.i, 2066345149520216444
  %i.gl = zext i64 %i.gj to i128
  %i.gm = zext i64 %i.gk to i128
  %i.gn = mul nuw i128 %i.gm, %i.gl               ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = xor i128 %i.go, %i.gn
  %i.gq = trunc i128 %i.gp to i64
  %i.gr = add i64 %.sroa.014.2.i.i, %i.gq
  %.0.copyload.i50.i = load i64, ptr %i.gh, align 1 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gg, i64 -8
  %.0.copyload.i51.i = load i64, ptr %i.gs, align 1 ; 2 uses
  %i.gt = add i64 %.0.copyload.i51.i, %.0.copyload.i50.i
  %i.gu = xor i64 %i.gr, %i.gt                    ; 2 uses
  %i.gv = xor i64 %.0.copyload.i50.i, -2623469361688619810
  %i.gw = xor i64 %.0.copyload.i51.i, 2262974939099578482
  %i.gx = zext i64 %i.gv to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = mul nuw i128 %i.gy, %i.gx               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = xor i128 %i.ha, %i.gz
  %i.hc = trunc i128 %i.hb to i64
  %i.hd = add i64 %.sroa.13.2.i.i, %i.hc
  %i.he = add i64 %.0.copyload.i49.i, %.0.copyload.i48.i
  %i.hf = xor i64 %i.hd, %i.he                    ; 2 uses
  %i.hg = add i64 %i.hf, %i.gu                    ; 2 uses
  %i.hh = mul i64 %i.gu, -7046029288634856825
  %i.hi = mul i64 %i.hf, -8796714831421723037
  %i.hj = mul i64 %2, -4417276706812531889
  %i.hk = add i64 %i.hh, %i.hj
  %i.hl = add i64 %i.hk, %i.hi                    ; 2 uses
  %i.hm = lshr i64 %i.hg, 37
  %i.hn = xor i64 %i.hm, %i.hg
  %i.ho = mul i64 %i.hn, 1609587791953885689      ; 2 uses
  %i.hp = lshr i64 %i.ho, 32
  %i.hq = xor i64 %i.hp, %i.ho
  %i.hr = lshr i64 %i.hl, 37
  %i.hs = xor i64 %i.hr, %i.hl
  %i.ht = mul i64 %i.hs, 1609587791953885689      ; 2 uses
  %i.hu = lshr i64 %i.ht, 32
  %i.hv = xor i64 %i.hu, %i.ht
  %i.hw = sub i64 0, %i.hv
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.hq, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %i.hw, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.hx = icmp ult i64 %2, 241
  br i1 %i.hx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hy = tail call fastcc { i64, i64 } @_ZL22XXH3_len_129to240_128bPKhmS0_mm(ptr noundef readonly %1, i64 noundef %2)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.hz = tail call fastcc { i64, i64 } @_ZL26XXH3_hashLong_128b_defaultPKvmmS0_m(ptr noundef readonly %1, i64 noundef %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit.i, %bb.p, %bb.q
  %.pn.i.i = phi { i64, i64 } [ %i.hz, %bb.q ], [ %.fca.1.insert.i.i, %_ZL21XXH3_len_17to128_128bPKhmS0_mm.exit.i ], [ %i.hy, %bb.p ], [ %.fca.1.insert.i2.i, %bb.c ], [ %.fca.1.insert.i4.i, %bb.e ], [ %.fca.1.insert.i6.i, %bb.g ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %bb.f ] ; 2 uses
  %i.ia = extractvalue { i64, i64 } %.pn.i.i, 0
  %i.ib = extractvalue { i64, i64 } %.pn.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !15 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 -24    ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !26
  %i.ij = and i32 %i.ii, -75
  %i.ik = or disjoint i32 %i.ij, 8
  store i32 %i.ik, ptr %i.ih, align 8, !tbaa !27
  %i.il = load i64, ptr %i.ie, align 8
  %i.im = getelementptr inbounds i8, ptr %i.ic, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 225
  %i.io = load i8, ptr %i.in, align 1, !tbaa !35, !range !36, !noundef !37
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 240
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !38 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.t
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.s
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.it = load i8, ptr %i.is, align 8, !tbaa !44
  %.not.i1.i.i.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i1.i.i.i.i, label %bb.u, label %4

4:                                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %i.ir, i64 89
  %6 = load i8, ptr %5, align 1, !tbaa !8
  %7 = freeze i8 %6
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ir)
          to label %.noexc6 unwind label %bb.aa

.noexc6:                                          ; preds = %bb.u
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef signext i8 %i.iw(ptr noundef nonnull align 8 dereferenceable(570) %i.ir, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %bb.aa, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc6, %4
  %.0.i.i.i.i.i = phi i8 [ %7, %4 ], [ %i.ix, %.noexc6 ]
  %8 = getelementptr inbounds nuw i8, ptr %i.im, i64 224
  %9 = zext i8 %.0.i.i.i.i.i to i16
  %10 = or disjoint i16 %9, 256
  store i16 %10, ptr %8, align 8
  %.pre = load ptr, ptr %i.ic, align 8, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.iy = phi ptr [ %i.id, %bb.r ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 224
  store i8 48, ptr %i.iz, align 8, !tbaa !45
  %i.ja = getelementptr i8, ptr %i.iy, i64 -24
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds i8, ptr %i.ic, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 16, ptr %i.jd, align 8, !tbaa !46
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i64 noundef %i.ia)
          to label %bb.w unwind label %bb.aa      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.jf = load ptr, ptr %i.ic, align 8, !tbaa !15
  %i.jg = getelementptr i8, ptr %i.jf, i64 -24
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds i8, ptr %i.ic, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 16, ptr %i.jj, align 8, !tbaa !46
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i64 noundef %i.ib)
          to label %_ZNSolsEm.exit10 unwind label %bb.aa ; 0 uses

_ZNSolsEm.exit10:                                 ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.jl, ptr %0, align 8, !tbaa !51, !alias.scope !52
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jm, align 8, !tbaa !54, !alias.scope !52
  store i8 0, ptr %i.jl, align 8, !tbaa !8, !alias.scope !52
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !56, !noalias !52 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.jo, null
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !52 ; 2 uses
  %i.jr = icmp ugt ptr %i.jo, %i.jq
  %.08.i.i.i = select i1 %i.jr, ptr %i.jo, ptr %i.jq ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i11 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i11, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNSolsEm.exit10
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !57, !noalias !52 ; 2 uses
  %i.ju = ptrtoint ptr %.08.i.i.i to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.jt, i64 noundef %i.jw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %0, align 8, !tbaa !58, !alias.scope !52 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jl
  br i1 %i.ka, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.y
  %i.kb = load i64, ptr %i.jl, align 8, !tbaa !8, !alias.scope !52
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #14
  br label %.body

bb.z:                                             ; preds = %_ZNSolsEm.exit10
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.kd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.y

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.z, %bb.x
  %i.ke = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ke, ptr %3, align 8, !tbaa !15
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.kg = getelementptr i8, ptr %i.ke, i64 -24
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds i8, ptr %3, i64 %i.kh
  store ptr %i.kf, ptr %i.ki, align 8, !tbaa !15
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.kj, ptr %i.ic, align 8, !tbaa !15
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kk, align 8, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !58 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !8
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kk, align 8, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kr) #12
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ks, ptr %3, align 8, !tbaa !15
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ku = getelementptr i8, ptr %i.ks, i64 -24
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds i8, ptr %3, i64 %i.kv
  store ptr %i.kt, ptr %i.kw, align 8, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.kx, align 8, !tbaa !60
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ky) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.aa:                                            ; preds = %bb.w, %bb.v, %.noexc6, %bb.u, %bb.t
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.kz, %bb.aa ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jy, %bb.y ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @_ZL26XXH3_hashLong_128b_defaultPKvmmS0_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %1, -1                           ; 3 uses
  %i.b = lshr i64 %i.a, 10                        ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader
  %.sroa.33.0 = phi <2 x i64> [ %i.cv, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader ], [ <i64 2870177450012600261, i64 2654435761>, %bb.a ]
  %.sroa.23.0 = phi <2 x i64> [ %i.cl, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader ], [ <i64 -8796714831421723037, i64 2246822519>, %bb.a ]
  %.sroa.13.0 = phi <2 x i64> [ %i.cb, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %bb.a ]
  %.sroa.0.0 = phi <2 x i64> [ %i.br, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader ], [ <i64 3266489917, i64 -7046029288634856825>, %bb.a ]
  %.0.i4 = phi i64 [ %i.cw, %_ZL15XXH3_accumulatePmPKhS1_mPFvPvPKvS4_E.exit.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.c = shl nuw i64 %.0.i4, 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i

_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i:     ; preds = %.lr.ph, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i
  %.sroa.33.1 = phi <2 x i64> [ %.sroa.33.0, %.lr.ph ], [ %i.bg, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i ]
  %.sroa.23.1 = phi <2 x i64> [ %.sroa.23.0, %.lr.ph ], [ %i.at, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i ]
  %.sroa.13.1 = phi <2 x i64> [ %.sroa.13.0, %.lr.ph ], [ %i.ag, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i ]
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0, %.lr.ph ], [ %i.t, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i ]
  %.0.i12 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZL24XXH3_accumulate_512_sse2PvPKvS1_.exit.i ] ; 3 uses
  %i.e = shl nuw nsw i64 %.0.i12, 6
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.g, i32 0, i32 3, i32 1)
  %i.h = shl nuw nsw i64 %.0.i12, 3
  %i.i = getelementptr inbounds nuw i8, ptr @_ZL12XXH3_kSecret, i64 %i.h ; 4 uses
  %i.j = load <2 x i64>, ptr %i.f, align 1, !tbaa !8 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !8
  %i.l = xor <2 x i64> %i.k, %i.j                 ; 2 uses
  %i.m = bitcast <2 x i64> %i.l to <4 x i32>
  %i.n = and <2 x i64> %i.l, splat (i64 4294967295)
  %i.o = and <4 x i32> %i.m, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.p = bitcast <4 x i32> %.inner to <2 x i64>
  %i.q = mul nuw <2 x i64> %i.n, %i.p
  %i.r = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.s = add <2 x i64> %.sroa.0.1, %i.r
  %i.t = add <2 x i64> %i.s, %i.q                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load <2 x i64>, ptr %i.u, align 1, !tbaa !8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !8
  %i.y = xor <2 x i64> %i.x, %i.v                 ; 2 uses
  %i.z = bitcast <2 x i64> %i.y to <4 x i32>
  %i.aa = and <2 x i64> %i.y, splat (i64 4294967295)
  %i.ab = and <4 x i32> %i.z, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner12 = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ac = bitcast <4 x i32> %.inner12 to <2 x i64>
  %i.ad = mul nuw <2 x i64> %i.aa, %i.ac
  %i.ae = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.af = add <2 x i64> %.sroa.13.1, %i.ae
  %i.ag = add <2 x i64> %i.af, %i.ad              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ai = load <2 x i64>, ptr %i.ah, align 1, !tbaa !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !8
  %i.al = xor <2 x i64> %i.ak, %i.ai              ; 2 uses
  %i.am = bitcast <2 x i64> %i.al to <4 x i32>
end_hunk_0
