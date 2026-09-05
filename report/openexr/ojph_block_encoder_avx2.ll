Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx2?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local26ojph_encode_codeblock_avx2EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.fl = zext <8 x i1> %i.fk to <8 x i32>        ; 2 uses
  %i.fm = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fn = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fo = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.fp = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.fq = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  store <8 x i32> %i.fq, ptr %i.aq, align 32, !tbaa !23
  %i.fr = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  store <8 x i32> %i.fr, ptr %i.ar, align 32, !tbaa !23
  %i.fs = shufflevector <8 x i1> %.not.1.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ft = zext <8 x i1> %i.fs to <8 x i32>        ; 2 uses
  %i.fu = shufflevector <8 x i1> %.not.3.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fv = zext <8 x i1> %i.fu to <8 x i32>        ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fx = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> %i.fo)
  %i.fz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fy, <8 x i32> %i.ff) ; 2 uses
  %i.ga = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fz, <8 x i32> %i.fp) ; 4 uses
  %i.gb = shl nuw nsw <8 x i32> %i.fw, splat (i32 1)
  %i.gc = shl nuw nsw <8 x i32> %i.fn, splat (i32 2)
  %i.gd = shl nuw nsw <8 x i32> %i.fx, splat (i32 3)
  %i.ge = or disjoint <8 x i32> %i.gb, %i.gc
  %.inner277 = or disjoint <8 x i32> %i.fm, %i.gd
  %.inner278 = or disjoint <8 x i32> %.inner277, %i.ge ; 2 uses
  store <8 x i32> %.inner278, ptr %i.h, align 32, !tbaa !23
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.gg = load <8 x i32>, ptr %i.gf, align 32, !tbaa !23 ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.gg, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.gj = load <1 x i64>, ptr %i.gi, align 32, !tbaa !23
  %i.gk = shufflevector <1 x i64> %i.gj, <1 x i64> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = bitcast <2 x i64> %i.gk to <4 x i32>
  %i.gm = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.go = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> %i.gg)
  %i.gp = add <8 x i32> %i.go, splat (i32 -1)
  %i.gq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> splat (i32 1))
  %i.gr = call range(i32 0, 5) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %.inner278)
  %.inv = icmp samesign ugt <8 x i32> %i.gr, splat (i32 1)
  %i.gs = select <8 x i1> %.inv, <8 x i32> %i.gq, <8 x i32> splat (i32 1) ; 2 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  %i.gu = call noundef <4 x i64> %.0101228.us(i32 noundef %i.gt, ptr noundef nonnull %i.e, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.gv = bitcast <4 x i64> %i.gu to <8 x i32>    ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.gv, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gx = insertelement <8 x i32> %i.gw, i32 %.1104209.us, i64 0 ; 2 uses
  store <8 x i32> %i.gx, ptr %i.i, align 32, !tbaa !23
  %i.gy = shufflevector <8 x i32> %i.fp, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gz = shufflevector <8 x i32> %i.bj, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ha = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fo, <8 x i32> %i.gz)
  store <8 x i32> %i.ha, ptr %i.gf, align 32, !tbaa !23
  %i.hb = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  %i.hc = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.hd = shufflevector <8 x i32> %i.bi, <8 x i32> %i.hc, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = lshr <8 x i32> %i.hd, splat (i32 3)
  %i.hf = lshr <8 x i32> %i.hb, splat (i32 1)
  %i.hg = or <8 x i32> %i.he, %i.hf
  %i.hh = bitcast <8 x i32> %i.hg to <4 x i64>
  %i.hi = and <4 x i64> %i.hh, splat (i64 4294967297)
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  store <4 x i64> %i.hi, ptr %i.hj, align 32, !tbaa !23
  %i.hk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gs, <8 x i32> %i.ga) ; 5 uses
  %i.hl = sub nsw <8 x i32> %i.hk, %i.gs          ; 3 uses
  %i.hm = bitcast <8 x i32> %i.hl to <4 x i64>
  %i.hn = icmp sgt <8 x i32> %i.hl, zeroinitializer
  %i.ho = icmp eq <8 x i32> %i.ga, %i.fe
  %i.hp = zext <8 x i1> %i.ho to <8 x i32>
  %i.hq = icmp eq <8 x i32> %i.ga, %i.fo
  %i.hr = select <8 x i1> %i.hq, <8 x i32> splat (i32 2), <8 x i32> zeroinitializer
  %i.hs = icmp eq <8 x i32> %i.ga, %i.ff
  %i.ht = select <8 x i1> %i.hs, <8 x i32> splat (i32 4), <8 x i32> zeroinitializer
  %.not198.us = icmp sgt <8 x i32> %i.fz, %i.fp
  %i.hu = select <8 x i1> %.not198.us, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8)
  %i.hv = or disjoint <8 x i32> %i.hu, %i.hp
  %i.hw = or disjoint <8 x i32> %i.hv, %i.hr
  %i.hx = or disjoint <8 x i32> %i.hw, %i.ht
  %i.hy = select <8 x i1> %i.hn, <8 x i32> %i.hx, <8 x i32> zeroinitializer
  %i.hz = shl <8 x i32> %i.gx, splat (i32 8)
  %i.ia = shl <8 x i32> %i.hb, splat (i32 4)
  %i.ib = add <8 x i32> %i.ia, %i.hz
  %i.ic = or disjoint <8 x i32> %i.hy, %i.ib
  %i.id = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull readonly %.0102227.us, <8 x i32> %i.ic, <8 x i32> splat (i32 -1), i8 4) ; 5 uses
  %i.ie = select i1 %i.bk, i32 0, i32 %i.n        ; 2 uses
  call void %.0100229.us(ptr noundef nonnull %9, ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef %i.hm, i32 noundef %i.ie, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !55
  %.val115201.us = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.if = and <8 x i32> %i.id, splat (i32 1)
  %i.ig = sub nuw nsw <8 x i32> %i.hk, %i.if
  %i.ih = and <8 x i32> %.val115201.us, splat (i32 1)
  %i.ii = icmp eq <8 x i32> %i.ih, zeroinitializer
  %i.ij = select <8 x i1> %i.ii, <8 x i32> zeroinitializer, <8 x i32> %i.ig ; 2 uses
  %i.ik = shl <8 x i32> %i.id, splat (i32 30)
  %i.il = ashr <8 x i32> %i.ik, splat (i32 31)
  %i.im = add nsw <8 x i32> %i.hk, %i.il
  %i.in = and <8 x i32> %.val115201.us, splat (i32 2)
  %.not.i119.us = icmp eq <8 x i32> %i.in, zeroinitializer
  %i.io = select <8 x i1> %.not.i119.us, <8 x i32> zeroinitializer, <8 x i32> %i.im ; 2 uses
  %i.ip = shl <8 x i32> %i.id, splat (i32 29)
  %i.iq = ashr <8 x i32> %i.ip, splat (i32 31)
  %i.ir = add nsw <8 x i32> %i.hk, %i.iq
  %i.is = and <8 x i32> %.val115201.us, splat (i32 4)
  %.not5.i.us = icmp eq <8 x i32> %i.is, zeroinitializer
  %i.it = select <8 x i1> %.not5.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.ir ; 2 uses
  %i.iu = shl <8 x i32> %i.id, splat (i32 28)
  %i.iv = ashr <8 x i32> %i.iu, splat (i32 31)
  %i.iw = add nsw <8 x i32> %i.hk, %i.iv
  %i.ix = and <8 x i32> %.val115201.us, splat (i32 8)
  %.not6.i.us = icmp eq <8 x i32> %i.ix, zeroinitializer
  %i.iy = select <8 x i1> %.not6.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.iw ; 2 uses
  %i.iz = shufflevector <8 x i32> %i.ij, <8 x i32> %i.io, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ja = shufflevector <8 x i32> %i.it, <8 x i32> %i.iy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jb = shufflevector <8 x i32> %i.ij, <8 x i32> %i.io, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jc = shufflevector <8 x i32> %i.it, <8 x i32> %i.iy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jd = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.je = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.je, ptr %i.at, align 32, !tbaa !23
  store <8 x i32> %i.jd, ptr %i.a, align 32, !tbaa !23
  %i.jf = shufflevector <8 x i32> %i.jb, <8 x i32> %i.jc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jg = shufflevector <8 x i32> %i.jb, <8 x i32> %i.jc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jg, ptr %i.au, align 32, !tbaa !23
  store <8 x i32> %i.jf, ptr %i.as, align 32, !tbaa !23
  %i.jh = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jj = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jk = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jl = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jm = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jm, ptr %i.ap, align 32, !tbaa !23
  store <8 x i32> %i.jl, ptr %i.f, align 32, !tbaa !23
  %i.jn = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jo = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jo, ptr %i.ar, align 32, !tbaa !23
  store <8 x i32> %i.jn, ptr %i.aq, align 32, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us, %bb.i
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1203.us, %bb.i ], [ %.sroa.62.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1204.us, %bb.i ], [ %.sroa.47.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1205.us, %bb.i ], [ %.sroa.37.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.9154.3.us = phi i32 [ %.sroa.9154.1206.us, %bb.i ], [ %.sroa.9154.7.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.jq = load <8 x i32>, ptr %i.jp, align 32, !tbaa !23 ; 9 uses
  %i.jr = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.jq)
  %i.js = add <8 x i32> %i.jr, splat (i32 -1)
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv.i.us
  %i.ju = load <8 x i32>, ptr %i.jt, align 32, !tbaa !23
  %i.jv = and <8 x i32> %i.ju, %i.js              ; 8 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 1
  %i.jw = add nsw i32 %.sroa.0.4.vec.extract.i.us, %.sroa.0.0.vec.extract.i.us ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.j
  %.sroa.012.4.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 1
  %i.jy = zext i32 %.sroa.012.4.vec.extract.i.us to i64
  %i.jz = zext nneg i32 %.sroa.0.0.vec.extract.i.us to i64
  %i.ka = shl i64 %i.jy, %i.jz
  %.sroa.012.0.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 0
  %i.kb = zext i32 %.sroa.012.0.vec.extract.i.us to i64
  %i.kc = or i64 %i.ka, %i.kb
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.us
  %.sroa.62.13.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.14.us, %bb.o ]
  %.sroa.47.13.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.14.us, %bb.o ] ; 3 uses
  %.sroa.37.13.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.14.us, %bb.o ] ; 3 uses
  %.sroa.9154.14.us = phi i32 [ %.sroa.9154.3.us, %.lr.ph.i.i.us ], [ %.sroa.9154.15.us, %bb.o ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.jw, %.lr.ph.i.i.us ], [ %i.kp, %bb.o ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.kc, %.lr.ph.i.i.us ], [ %i.ko, %bb.o ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9154.14.us, 17477
  br i1 %.not.i.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !57
  %i.kf = load ptr, ptr %i.ke, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.kg = sub nuw nsw i32 %.sroa.37.13.us, %.sroa.47.13.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.kg, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.kh = xor i32 %notmask.i.i.us, -1
  %i.ki = trunc i64 %.02731.i.i.us to i32
  %i.kj = and i32 %i.kh, %i.ki
  %i.kk = shl nuw nsw i32 %i.kj, %.sroa.47.13.us
  %i.kl = or i32 %i.kk, %.sroa.62.13.us           ; 3 uses
  %i.km = add nuw nsw i32 %..0.i.i.us, %.sroa.47.13.us ; 2 uses
  %i.kn = zext nneg i32 %..0.i.i.us to i64
  %i.ko = lshr i64 %.02731.i.i.us, %i.kn
  %i.kp = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.km, %.sroa.37.13.us
  br i1 %.not30.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kq = trunc i32 %i.kl to i8
  %i.kr = add nuw i32 %.sroa.9154.14.us, 1
  %i.ks = zext i32 %.sroa.9154.14.us to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ks
  store i8 %i.kq, ptr %i.kt, align 1, !tbaa !23
  %i.ku = icmp eq i32 %i.kl, 255
  %i.kv = select i1 %i.ku, i32 7, i32 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.62.14.us = phi i32 [ %i.kl, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.47.14.us = phi i32 [ %i.km, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.37.14.us = phi i32 [ %.sroa.37.13.us, %bb.m ], [ %i.kv, %bb.n ] ; 2 uses
  %.sroa.9154.15.us = phi i32 [ %.sroa.9154.14.us, %bb.m ], [ %i.kr, %bb.n ] ; 2 uses
  %i.kw = icmp sgt i32 %i.kp, 0
  br i1 %i.kw, label %bb.k, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.o, %bb.j
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.j ], [ %.sroa.62.14.us, %bb.o ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.j ], [ %.sroa.47.14.us, %bb.o ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.j ], [ %.sroa.37.14.us, %bb.o ] ; 2 uses
  %.sroa.9154.4.us = phi i32 [ %.sroa.9154.3.us, %bb.j ], [ %.sroa.9154.15.us, %bb.o ] ; 2 uses
  %.sroa.0.8.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 2 ; 2 uses
  %.sroa.0.12.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 3
  %i.kx = add nsw i32 %.sroa.0.12.vec.extract.i.us, %.sroa.0.8.vec.extract.i.us ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.012.12.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 3
  %i.kz = zext i32 %.sroa.012.12.vec.extract.i.us to i64
  %i.la = zext nneg i32 %.sroa.0.8.vec.extract.i.us to i64
  %i.lb = shl i64 %i.kz, %i.la
  %.sroa.012.8.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 2
  %i.lc = zext i32 %.sroa.012.8.vec.extract.i.us to i64
  %i.ld = or i64 %i.lb, %i.lc
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.1.i.us
  %.sroa.62.11.us = phi i32 [ %.sroa.62.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.62.12.us, %bb.t ]
  %.sroa.47.11.us = phi i32 [ %.sroa.47.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 3 uses
  %.sroa.37.11.us = phi i32 [ %.sroa.37.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 3 uses
  %.sroa.9154.12.us = phi i32 [ %.sroa.9154.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.9154.13.us, %bb.t ] ; 4 uses
  %.032.i.1.i.us = phi i32 [ %i.kx, %.lr.ph.i.1.i.us ], [ %i.lq, %bb.t ] ; 2 uses
  %.02731.i.1.i.us = phi i64 [ %i.ld, %.lr.ph.i.1.i.us ], [ %i.lp, %bb.t ] ; 2 uses
  %.not.i.1.i.us = icmp ult i32 %.sroa.9154.12.us, 17477
  br i1 %.not.i.1.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.le = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !57
  %i.lg = load ptr, ptr %i.lf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.le, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lh = sub nuw nsw i32 %.sroa.37.11.us, %.sroa.47.11.us
  %..0.i.1.i.us = call i32 @llvm.smin.i32(i32 %i.lh, i32 %.032.i.1.i.us) ; 4 uses
  %notmask.i.1.i.us = shl nsw i32 -1, %..0.i.1.i.us
  %i.li = xor i32 %notmask.i.1.i.us, -1
  %i.lj = trunc i64 %.02731.i.1.i.us to i32
  %i.lk = and i32 %i.li, %i.lj
  %i.ll = shl nuw nsw i32 %i.lk, %.sroa.47.11.us
  %i.lm = or i32 %i.ll, %.sroa.62.11.us           ; 3 uses
  %i.ln = add nuw nsw i32 %..0.i.1.i.us, %.sroa.47.11.us ; 2 uses
  %i.lo = zext nneg i32 %..0.i.1.i.us to i64
  %i.lp = lshr i64 %.02731.i.1.i.us, %i.lo
  %i.lq = sub nsw i32 %.032.i.1.i.us, %..0.i.1.i.us ; 2 uses
  %.not30.i.1.i.us = icmp slt i32 %i.ln, %.sroa.37.11.us
  br i1 %.not30.i.1.i.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lr = trunc i32 %i.lm to i8
  %i.ls = add nuw i32 %.sroa.9154.12.us, 1
  %i.lt = zext i32 %.sroa.9154.12.us to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lt
  store i8 %i.lr, ptr %i.lu, align 1, !tbaa !23
  %i.lv = icmp eq i32 %i.lm, 255
  %i.lw = select i1 %i.lv, i32 7, i32 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.62.12.us = phi i32 [ %i.lm, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.47.12.us = phi i32 [ %i.ln, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.37.12.us = phi i32 [ %.sroa.37.11.us, %bb.r ], [ %i.lw, %bb.s ] ; 2 uses
  %.sroa.9154.13.us = phi i32 [ %.sroa.9154.12.us, %bb.r ], [ %i.ls, %bb.s ] ; 2 uses
  %i.lx = icmp sgt i32 %i.lq, 0
  br i1 %i.lx, label %bb.p, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us: ; preds = %bb.t, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.62.4.us = phi i32 [ %.sroa.62.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.62.12.us, %bb.t ] ; 2 uses
  %.sroa.47.4.us = phi i32 [ %.sroa.47.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 2 uses
  %.sroa.37.4.us = phi i32 [ %.sroa.37.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 2 uses
  %.sroa.9154.5.us = phi i32 [ %.sroa.9154.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.9154.13.us, %bb.t ] ; 2 uses
  %.sroa.0.16.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 4 ; 2 uses
  %.sroa.0.20.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 5
  %i.ly = add nsw i32 %.sroa.0.20.vec.extract.i.us, %.sroa.0.16.vec.extract.i.us ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph.i.2.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us

.lr.ph.i.2.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us
  %.sroa.012.20.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 5
  %i.ma = zext i32 %.sroa.012.20.vec.extract.i.us to i64
  %i.mb = zext nneg i32 %.sroa.0.16.vec.extract.i.us to i64
  %i.mc = shl i64 %i.ma, %i.mb
  %.sroa.012.16.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 4
  %i.md = zext i32 %.sroa.012.16.vec.extract.i.us to i64
  %i.me = or i64 %i.mc, %i.md
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.2.i.us
  %.sroa.62.9.us = phi i32 [ %.sroa.62.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.62.10.us, %bb.y ]
  %.sroa.47.9.us = phi i32 [ %.sroa.47.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.47.10.us, %bb.y ] ; 3 uses
  %.sroa.37.9.us = phi i32 [ %.sroa.37.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.37.10.us, %bb.y ] ; 3 uses
  %.sroa.9154.10.us = phi i32 [ %.sroa.9154.5.us, %.lr.ph.i.2.i.us ], [ %.sroa.9154.11.us, %bb.y ] ; 4 uses
  %.032.i.2.i.us = phi i32 [ %i.ly, %.lr.ph.i.2.i.us ], [ %i.mr, %bb.y ] ; 2 uses
  %.02731.i.2.i.us = phi i64 [ %i.me, %.lr.ph.i.2.i.us ], [ %i.mq, %bb.y ] ; 2 uses
  %.not.i.2.i.us = icmp ult i32 %.sroa.9154.10.us, 17477
  br i1 %.not.i.2.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mf = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !57
  %i.mh = load ptr, ptr %i.mg, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.mi = sub nuw nsw i32 %.sroa.37.9.us, %.sroa.47.9.us
  %..0.i.2.i.us = call i32 @llvm.smin.i32(i32 %i.mi, i32 %.032.i.2.i.us) ; 4 uses
  %notmask.i.2.i.us = shl nsw i32 -1, %..0.i.2.i.us
  %i.mj = xor i32 %notmask.i.2.i.us, -1
  %i.mk = trunc i64 %.02731.i.2.i.us to i32
  %i.ml = and i32 %i.mj, %i.mk
  %i.mm = shl nuw nsw i32 %i.ml, %.sroa.47.9.us
  %i.mn = or i32 %i.mm, %.sroa.62.9.us            ; 3 uses
  %i.mo = add nuw nsw i32 %..0.i.2.i.us, %.sroa.47.9.us ; 2 uses
  %i.mp = zext nneg i32 %..0.i.2.i.us to i64
  %i.mq = lshr i64 %.02731.i.2.i.us, %i.mp
  %i.mr = sub nsw i32 %.032.i.2.i.us, %..0.i.2.i.us ; 2 uses
  %.not30.i.2.i.us = icmp slt i32 %i.mo, %.sroa.37.9.us
  br i1 %.not30.i.2.i.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ms = trunc i32 %i.mn to i8
  %i.mt = add nuw i32 %.sroa.9154.10.us, 1
  %i.mu = zext i32 %.sroa.9154.10.us to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mu
  store i8 %i.ms, ptr %i.mv, align 1, !tbaa !23
  %i.mw = icmp eq i32 %i.mn, 255
  %i.mx = select i1 %i.mw, i32 7, i32 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.62.10.us = phi i32 [ %i.mn, %bb.w ], [ 0, %bb.x ] ; 2 uses
  %.sroa.47.10.us = phi i32 [ %i.mo, %bb.w ], [ 0, %bb.x ] ; 2 uses
  %.sroa.37.10.us = phi i32 [ %.sroa.37.9.us, %bb.w ], [ %i.mx, %bb.x ] ; 2 uses
  %.sroa.9154.11.us = phi i32 [ %.sroa.9154.10.us, %bb.w ], [ %i.mt, %bb.x ] ; 2 uses
  %i.my = icmp sgt i32 %i.mr, 0
  br i1 %i.my, label %bb.u, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us: ; preds = %bb.y, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us
  %.sroa.62.5.us = phi i32 [ %.sroa.62.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ], [ %.sroa.62.10.us, %bb.y ] ; 2 uses
  %.sroa.47.5.us = phi i32 [ %.sroa.47.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ], [ %.sroa.47.10.us, %bb.y ] ; 2 uses
  %.sroa.37.5.us = phi i32 [ %.sroa.37.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ], [ %.sroa.37.10.us, %bb.y ] ; 2 uses
  %.sroa.9154.6.us = phi i32 [ %.sroa.9154.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ], [ %.sroa.9154.11.us, %bb.y ] ; 2 uses
  %.sroa.0.24.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 6 ; 2 uses
  %.sroa.0.28.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 7
  %i.mz = add nsw i32 %.sroa.0.28.vec.extract.i.us, %.sroa.0.24.vec.extract.i.us ; 2 uses
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.3.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us

.lr.ph.i.3.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us
  %.sroa.012.28.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 7
  %i.nb = zext i32 %.sroa.012.28.vec.extract.i.us to i64
  %i.nc = zext nneg i32 %.sroa.0.24.vec.extract.i.us to i64
  %i.nd = shl i64 %i.nb, %i.nc
  %.sroa.012.24.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 6
  %i.ne = zext i32 %.sroa.012.24.vec.extract.i.us to i64
  %i.nf = or i64 %i.nd, %i.ne
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %.lr.ph.i.3.i.us
  %.sroa.62.7.us = phi i32 [ %.sroa.62.5.us, %.lr.ph.i.3.i.us ], [ %.sroa.62.8.us, %bb.ad ]
  %.sroa.47.7.us = phi i32 [ %.sroa.47.5.us, %.lr.ph.i.3.i.us ], [ %.sroa.47.8.us, %bb.ad ] ; 3 uses
  %.sroa.37.7.us = phi i32 [ %.sroa.37.5.us, %.lr.ph.i.3.i.us ], [ %.sroa.37.8.us, %bb.ad ] ; 3 uses
  %.sroa.9154.8.us = phi i32 [ %.sroa.9154.6.us, %.lr.ph.i.3.i.us ], [ %.sroa.9154.9.us, %bb.ad ] ; 4 uses
  %.032.i.3.i.us = phi i32 [ %i.mz, %.lr.ph.i.3.i.us ], [ %i.ns, %bb.ad ] ; 2 uses
  %.02731.i.3.i.us = phi i64 [ %i.nf, %.lr.ph.i.3.i.us ], [ %i.nr, %bb.ad ] ; 2 uses
  %.not.i.3.i.us = icmp ult i32 %.sroa.9154.8.us, 17477
  br i1 %.not.i.3.i.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ng = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !57
  %i.ni = load ptr, ptr %i.nh, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ni(ptr noundef nonnull align 8 dereferenceable(8) %i.ng, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.nj = sub nuw nsw i32 %.sroa.37.7.us, %.sroa.47.7.us
  %..0.i.3.i.us = call i32 @llvm.smin.i32(i32 %i.nj, i32 %.032.i.3.i.us) ; 4 uses
  %notmask.i.3.i.us = shl nsw i32 -1, %..0.i.3.i.us
  %i.nk = xor i32 %notmask.i.3.i.us, -1
  %i.nl = trunc i64 %.02731.i.3.i.us to i32
  %i.nm = and i32 %i.nk, %i.nl
  %i.nn = shl nuw nsw i32 %i.nm, %.sroa.47.7.us
  %i.no = or i32 %i.nn, %.sroa.62.7.us            ; 3 uses
  %i.np = add nuw nsw i32 %..0.i.3.i.us, %.sroa.47.7.us ; 2 uses
  %i.nq = zext nneg i32 %..0.i.3.i.us to i64
  %i.nr = lshr i64 %.02731.i.3.i.us, %i.nq
  %i.ns = sub nsw i32 %.032.i.3.i.us, %..0.i.3.i.us ; 2 uses
  %.not30.i.3.i.us = icmp slt i32 %i.np, %.sroa.37.7.us
  br i1 %.not30.i.3.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nt = trunc i32 %i.no to i8
  %i.nu = add nuw i32 %.sroa.9154.8.us, 1
  %i.nv = zext i32 %.sroa.9154.8.us to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nv
  store i8 %i.nt, ptr %i.nw, align 1, !tbaa !23
  %i.nx = icmp eq i32 %i.no, 255
  %i.ny = select i1 %i.nx, i32 7, i32 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.62.8.us = phi i32 [ %i.no, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.47.8.us = phi i32 [ %i.np, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.37.8.us = phi i32 [ %.sroa.37.7.us, %bb.ab ], [ %i.ny, %bb.ac ] ; 2 uses
  %.sroa.9154.9.us = phi i32 [ %.sroa.9154.8.us, %bb.ab ], [ %i.nu, %bb.ac ] ; 2 uses
  %i.nz = icmp sgt i32 %i.ns, 0
  br i1 %i.nz, label %bb.z, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us: ; preds = %bb.ad, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us
  %.sroa.62.6.us = phi i32 [ %.sroa.62.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us ], [ %.sroa.62.8.us, %bb.ad ] ; 4 uses
  %.sroa.47.6.us = phi i32 [ %.sroa.47.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us ], [ %.sroa.47.8.us, %bb.ad ] ; 6 uses
  %.sroa.37.6.us = phi i32 [ %.sroa.37.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us ], [ %.sroa.37.8.us, %bb.ad ] ; 5 uses
  %.sroa.9154.7.us = phi i32 [ %.sroa.9154.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us ], [ %.sroa.9154.9.us, %bb.ad ] ; 8 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us, label %bb.j, !llvm.loop !48

_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us: ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us
  %i.oa = extractelement <8 x i32> %i.gv, i64 7
  %i.ob = shufflevector <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> %i.fp, <8 x i32> <i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  %i.oc = shufflevector <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> %i.hb, <8 x i32> <i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0> ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.od = lshr <8 x i32> %i.id, splat (i32 4)
  store <8 x i32> %i.od, ptr %i.k, align 16, !tbaa !23
  store <8 x i32> %i.hl, ptr %i.j, align 16, !tbaa !23
  call void %.099230.us(ptr noundef nonnull %10, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i32 noundef %i.ie), !callees !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ai
  br i1 %exitcond.not, label %._crit_edge214.us, label %bb.b, !llvm.loop !49

._crit_edge214.us:                                ; preds = %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us
  %i.oe = bitcast <8 x i32> %i.ob to <4 x i64>
  %i.of = load <8 x i32>, ptr %i.e, align 32, !tbaa !23 ; 2 uses
  %i.og = shl <8 x i32> %i.of, splat (i32 2)
  %i.oh = shufflevector <8 x i32> %i.og, <8 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.oi = shufflevector <8 x i32> %i.of, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.oj = add <4 x i32> %i.oh, %i.oi
  %i.ok = extractelement <4 x i32> %i.oj, i64 0
  %i.ol = add i32 %.098231.us, 2                  ; 2 uses
  %i.om = icmp ult i32 %i.ol, %4
  br i1 %i.om, label %.lr.ph213.us, label %._crit_edge234, !llvm.loop !50

._crit_edge234:                                   ; preds = %._crit_edge214.us
  %.not.i = icmp eq i32 %.sroa.47.6.us, 0
  br i1 %.not.i, label %._crit_edge234.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge234
  %i.on = sub nuw nsw i32 %.sroa.37.6.us, %.sroa.47.6.us
  %notmask.i = shl nsw i32 -1, %i.on
  %i.oo = and i32 %notmask.i, 255
  %i.op = xor i32 %i.oo, 255
  %i.oq = shl nuw nsw i32 %i.op, %.sroa.47.6.us
  %i.or = or i32 %i.oq, %.sroa.62.6.us            ; 2 uses
  %.not16.i = icmp eq i32 %i.or, 255
  br i1 %.not16.i, label %_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not17.i = icmp ult i32 %.sroa.9154.7.us, 17477
  br i1 %.not17.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.os = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !57
  %i.ou = load ptr, ptr %i.ot, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.os, i32 noundef 131078, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 477, ptr noundef nonnull @.str.1), !inline_history !51
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ov = trunc i32 %i.or to i8
  %i.ow = add nuw i32 %.sroa.9154.7.us, 1
  %i.ox = zext i32 %.sroa.9154.7.us to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ox
  store i8 %i.ov, ptr %i.oy, align 1, !tbaa !23
  br label %_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit

._crit_edge234.thread:                            ; preds = %._crit_edge.thread, %.lr.ph233.split.preheader, %._crit_edge, %._crit_edge234
  %.sroa.9154.0.lcssa274 = phi i32 [ %.sroa.9154.7.us, %._crit_edge234 ], [ 0, %._crit_edge ], [ 0, %.lr.ph233.split.preheader ], [ 0, %._crit_edge.thread ]
  %.sroa.37.0.lcssa273 = phi i32 [ %.sroa.37.6.us, %._crit_edge234 ], [ 8, %._crit_edge ], [ 8, %.lr.ph233.split.preheader ], [ 8, %._crit_edge.thread ]
  %i.oz = icmp eq i32 %.sroa.37.0.lcssa273, 7
  %i.pa = sext i1 %i.oz to i32
  %spec.select = add i32 %.sroa.9154.0.lcssa274, %i.pa
  br label %_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit

_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit: ; preds = %._crit_edge234.thread, %bb.ae, %bb.ah
  %.sroa.9154.2 = phi i32 [ %i.ow, %bb.ah ], [ %spec.select, %._crit_edge234.thread ], [ %.sroa.9154.7.us, %bb.ae ] ; 2 uses
  %i.pb = load i32, ptr %i.s, align 8, !tbaa !15
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %bb.ai, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i

bb.ai:                                            ; preds = %_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit
  %i.pd = load i32, ptr %i.r, align 4, !tbaa !27
  %i.pe = shl i32 %i.pd, 1
  %i.pf = or disjoint i32 %i.pe, 1                ; 2 uses
  store i32 %i.pf, ptr %i.r, align 4, !tbaa !27
  %i.pg = load i32, ptr %i.q, align 8, !tbaa !28
  %i.ph = add nsw i32 %i.pg, -1                   ; 2 uses
  store i32 %i.ph, ptr %i.q, align 8, !tbaa !28
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.aj, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.pj = trunc i32 %i.pf to i8
  %i.pk = load ptr, ptr %9, align 8, !tbaa !14
  %i.pl = load i32, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.pm = add i32 %i.pl, 1
  store i32 %i.pm, ptr %i.o, align 8, !tbaa !29
  %i.pn = zext i32 %i.pl to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  store i8 %i.pj, ptr %i.po, align 1, !tbaa !23
  %i.pp = load i32, ptr %i.r, align 4, !tbaa !27
  %i.pq = icmp eq i32 %i.pp, 255
  %i.pr = select i1 %i.pq, i32 7, i32 8
  store i32 %i.pr, ptr %i.q, align 8, !tbaa !28
  store i32 0, ptr %i.r, align 4, !tbaa !27
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i: ; preds = %bb.aj, %bb.ai, %_ZN4ojph5localL12ms_terminateEPNS0_9ms_structE.exit
  %i.ps = load i8, ptr %i.aa, align 8, !tbaa !26, !range !30, !noundef !59
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i
  %i.pu = load i64, ptr %i.z, align 8, !tbaa !25
  %i.pv = and i64 %i.pu, 127
  %i.pw = icmp eq i64 %i.pv, 127
  br i1 %i.pw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.px = load ptr, ptr %10, align 8, !tbaa !21
  %i.py = load i32, ptr %i.w, align 8, !tbaa !22
  %i.pz = zext i32 %i.py to i64
  %i.qa = sub nsw i64 0, %i.pz
  %i.qb = getelementptr inbounds i8, ptr %i.px, i64 %i.qa
  store i8 127, ptr %i.qb, align 1, !tbaa !23
  %i.qc = load i32, ptr %i.w, align 8, !tbaa !22
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.w, align 8, !tbaa !22
  %i.qe = load i64, ptr %i.z, align 8, !tbaa !25
  %i.qf = lshr i64 %i.qe, 7
  store i64 %i.qf, ptr %i.z, align 8, !tbaa !25
  %i.qg = load i32, ptr %i.y, align 8, !tbaa !24
  %i.qh = add nsw i32 %i.qg, -7
  store i32 %i.qh, ptr %i.y, align 8, !tbaa !24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit.i
  %i.qi = load i32, ptr %i.r, align 4, !tbaa !27
  %i.qj = load i32, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.qk = shl i32 %i.qi, %i.qj                    ; 2 uses
  store i32 %i.qk, ptr %i.r, align 4, !tbaa !27
  %i.ql = shl i32 255, %i.qj
  %i.qm = and i32 %i.ql, 255                      ; 2 uses
  %i.qn = load i32, ptr %i.y, align 8, !tbaa !24
  %i.qo = sub nsw i32 8, %i.qn
  %i.qp = lshr i32 255, %i.qo                     ; 2 uses
  %i.qq = or i32 %i.qp, %i.qm
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_15vlc_struct_avx2E.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qs = load i32, ptr %i.o, align 8, !tbaa !29
  %i.qt = load i32, ptr %i.p, align 4, !tbaa !60
  %.not.i116 = icmp ult i32 %i.qs, %i.qt
  br i1 %.not.i116, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !57
  %i.qw = load ptr, ptr %i.qv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, i32 noundef 131075, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 397, ptr noundef nonnull @.str.2), !inline_history !52
  %.pre.i117 = load i32, ptr %i.r, align 4, !tbaa !27
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.qx = phi i32 [ %.pre.i117, %bb.ao ], [ %i.qk, %bb.an ] ; 3 uses
  %i.qy = load i64, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.qz = trunc i64 %i.qy to i8
  %i.ra = trunc i64 %i.qy to i32                  ; 2 uses
  %i.rb = and i32 %i.ra, 255
  %i.rc = or i32 %i.rb, %i.qx                     ; 4 uses
  %i.rd = xor i32 %i.rc, %i.qx
  %i.re = and i32 %i.rd, %i.qm
  %i.rf = xor i32 %i.rc, %i.ra
  %i.rg = and i32 %i.rf, %i.qp
  %i.rh = or i32 %i.re, %i.rg
  %i.ri = icmp eq i32 %i.rh, 0
  %i.rj = icmp ne i32 %i.rc, 255
  %or.cond.i = and i1 %i.rj, %i.ri
  %i.rk = load i32, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  %i.rl = icmp ugt i32 %i.rk, 1
  %or.cond47.i = select i1 %or.cond.i, i1 %i.rl, i1 false
  br i1 %or.cond47.i, label %bb.aq, label %._crit_edge.i

bb.aq:                                            ; preds = %bb.ap
  %i.rm = trunc i32 %i.rc to i8
  %i.rn = load ptr, ptr %9, align 8, !tbaa !14
  %i.ro = load i32, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.rp = add i32 %i.ro, 1
  store i32 %i.rp, ptr %i.o, align 8, !tbaa !29
  %i.rq = zext i32 %i.ro to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rq
  store i8 %i.rm, ptr %i.rr, align 1, !tbaa !23
  br label %_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_15vlc_struct_avx2E.exit

._crit_edge.i:                                    ; preds = %bb.ap
  %i.rs = load i32, ptr %i.x, align 4, !tbaa !53
  %.not43.i = icmp ult i32 %i.rk, %i.rs
  br i1 %.not43.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i
  %i.rt = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !57
  %i.rv = load ptr, ptr %i.ru, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.rv(ptr noundef nonnull align 8 dereferenceable(8) %i.rt, i32 noundef 131076, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 409, ptr noundef nonnull @.str.3), !inline_history !52
  %.pre45.i = load i32, ptr %i.r, align 4, !tbaa !27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i
  %i.rw = phi i32 [ %.pre45.i, %bb.ar ], [ %i.qx, %._crit_edge.i ]
  %i.rx = trunc i32 %i.rw to i8
  %i.ry = load ptr, ptr %9, align 8, !tbaa !14
  %i.rz = load i32, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %i.sa = add i32 %i.rz, 1
  store i32 %i.sa, ptr %i.o, align 8, !tbaa !29
  %i.sb = zext i32 %i.rz to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sb
  store i8 %i.rx, ptr %i.sc, align 1, !tbaa !23
  %i.sd = load ptr, ptr %10, align 8, !tbaa !21
  %i.se = load i32, ptr %i.w, align 8, !tbaa !22
  %i.sf = zext i32 %i.se to i64
  %i.sg = sub nsw i64 0, %i.sf
  %i.sh = getelementptr inbounds i8, ptr %i.sd, i64 %i.sg
  store i8 %i.qz, ptr %i.sh, align 1, !tbaa !23
  %i.si = load i32, ptr %i.w, align 8, !tbaa !22
  %i.sj = add i32 %i.si, 1
  store i32 %i.sj, ptr %i.w, align 8, !tbaa !22
  br label %_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_15vlc_struct_avx2E.exit

_ZN4ojph5localL17terminate_mel_vlcEPNS0_10mel_structEPNS0_15vlc_struct_avx2E.exit: ; preds = %bb.am, %bb.aq, %bb.as
  %i.sk = load i32, ptr %i.o, align 8, !tbaa !29
  %i.sl = load i32, ptr %i.w, align 8, !tbaa !22
  %i.sm = add i32 %i.sk, %.sroa.9154.2
  %i.sn = add i32 %i.sm, %i.sl                    ; 2 uses
  store i32 %i.sn, ptr %6, align 4, !tbaa !9
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.so = load ptr, ptr %8, align 8, !tbaa !62
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !64
  %i.sr = zext i32 %.sroa.9154.2 to i64           ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sq, ptr nonnull align 16 %i.b, i64 %i.sr, i1 false)
  %i.ss = load ptr, ptr %8, align 8, !tbaa !62
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sr
  %i.sw = load ptr, ptr %9, align 8, !tbaa !14
  %i.sx = load i32, ptr %i.o, align 8, !tbaa !29
  %i.sy = zext i32 %i.sx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sv, ptr align 1 %i.sw, i64 %i.sy, i1 false)
  %i.sz = load ptr, ptr %8, align 8, !tbaa !62
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.sr
  %i.td = load i32, ptr %i.o, align 8, !tbaa !29
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.te
  %i.tg = load ptr, ptr %10, align 8, !tbaa !21
  %i.th = load i32, ptr %i.w, align 8, !tbaa !22
  %i.ti = zext i32 %i.th to i64                   ; 2 uses
  %i.tj = sub nsw i64 0, %i.ti
  %i.tk = getelementptr inbounds i8, ptr %i.tg, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tf, ptr nonnull align 1 %i.tl, i64 %i.ti, i1 false)
  %i.tm = load i32, ptr %i.o, align 8, !tbaa !29
  %i.tn = load i32, ptr %i.w, align 8, !tbaa !22
  %i.to = add i32 %i.tn, %i.tm                    ; 2 uses
  %i.tp = lshr i32 %i.to, 4
  %i.tq = trunc i32 %i.tp to i8
  %i.tr = load ptr, ptr %8, align 8, !tbaa !62
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !64
  %i.tu = load i32, ptr %6, align 4, !tbaa !9
  %i.tv = add i32 %i.tu, -1
  %i.tw = zext i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tw
  store i8 %i.tq, ptr %i.tx, align 1, !tbaa !23
  %i.ty = load ptr, ptr %8, align 8, !tbaa !62
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !64
  %i.ub = load i32, ptr %6, align 4, !tbaa !9
  %i.uc = add i32 %i.ub, -2
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ud ; 2 uses
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !23
  %i.ug = and i8 %i.uf, -16
  store i8 %i.ug, ptr %i.ue, align 1, !tbaa !23
  %i.uh = load ptr, ptr %8, align 8, !tbaa !62
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !64
  %i.uk = load i32, ptr %6, align 4, !tbaa !9
  %i.ul = add i32 %i.uk, -2
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.um ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !23
  %i.up = trunc i32 %i.to to i8
  %i.uq = and i8 %i.up, 15
  %i.ur = or i8 %i.uo, %i.uq
  store i8 %i.ur, ptr %i.un, align 1, !tbaa !23
  %i.us = load i32, ptr %6, align 4, !tbaa !9
  %i.ut = load ptr, ptr %8, align 8, !tbaa !62
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 12 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !65
  %i.uw = sub i32 %i.uv, %i.us
  store i32 %i.uw, ptr %i.uu, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef <4 x i64> @_ZN4ojph5localL8proc_cq1EjPDv4_xRS1_S1_(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(32) %2, <4 x i64> %3) unnamed_addr #4 {
bb.a:
  %i.a = load <4 x i64>, ptr %2, align 32, !tbaa !23 ; 2 uses
  %i.b = bitcast <4 x i64> %i.a to <8 x i32>
  %i.c = lshr <8 x i32> %i.b, splat (i32 1)
  %i.d = bitcast <8 x i32> %i.c to <4 x i64>
  %i.e = and <4 x i64> %i.a, splat (i64 4294967297)
  %i.f = or <4 x i64> %i.e, %i.d
  ret <4 x i64> %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv4_xS4_S3_jS3_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(32) %2, <4 x i64> noundef %3, i32 noundef %4, <4 x i64> noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 5 uses
  %i.b = alloca [8 x i32], align 16               ; 4 uses
  %i.c = alloca [8 x i32], align 16               ; 5 uses
  %i.d = alloca [8 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.e = load <8 x i32>, ptr %1, align 32, !tbaa !23
  %i.f = icmp eq <8 x i32> %i.e, zeroinitializer
  %i.g = sext <8 x i1> %i.f to <8 x i32>
  store <8 x i32> %i.g, ptr %i.a, align 16, !tbaa !23
  %i.h = load <8 x i32>, ptr %2, align 32, !tbaa !23
  %.not28 = icmp ne <8 x i32> %i.h, zeroinitializer
  %i.i = zext <8 x i1> %.not28 to <8 x i32>
  store <8 x i32> %i.i, ptr %i.c, align 16, !tbaa !23
  %i.j = bitcast <4 x i64> %3 to <8 x i32>        ; 3 uses
  %i.k = bitcast <4 x i64> %5 to <8 x i32>
  %i.l = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.j, <8 x i32> %i.k) ; 2 uses
  %i.m = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.j, <8 x i32> %i.l)
  %i.n = icmp sgt <8 x i32> %i.m, splat (i32 2)
  %i.o = zext <8 x i1> %i.n to <8 x i32>
  store <8 x i32> %i.o, ptr %i.d, align 16, !tbaa !23
  %i.p = icmp sgt <8 x i32> %i.j, zeroinitializer
  %i.q = icmp sgt <8 x i32> %i.l, zeroinitializer
  %i.r = and <8 x i1> %i.p, %i.q
  %i.s = sext <8 x i1> %i.r to <8 x i32>
  store <8 x i32> %i.s, ptr %i.b, align 16, !tbaa !23
  %i.t = lshr i32 %4, 1                           ; 2 uses
  %.not30 = icmp eq i32 %i.t, 8
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %6 = sub nsw i32 8, %i.t
  %7 = zext i32 %6 to i64                         ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 8, !tbaa !9
  %i.y = icmp ne i32 %i.x, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.y)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %8 = or disjoint i64 %indvars.iv, 1             ; 3 uses
  %i.z = icmp samesign ult i64 %8, %7
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = icmp ne i32 %i.ad, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !9
  %.not27 = icmp eq i32 %i.ag, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9
  %i.aj = icmp ne i32 %i.ai, 0
  tail call fastcc void @_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb(ptr noundef %0, i1 noundef zeroext %i.aj)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %7
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4ojph5localL16proc_vlc_encode1EPNS0_15vlc_struct_avx2EPjS3_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = lshr i32 %3, 1                           ; 2 uses
  %.not112 = icmp eq i32 %i.a, 8
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nsw i32 8, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = zext i32 %i.b to i64                     ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4ojph5localL10vlc_encodeEPNS0_15vlc_struct_avx2Eji.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4ojph5localL10vlc_encodeEPNS0_15vlc_struct_avx2Eji.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5localL10vlc_encodeEPNS0_15vlc_struct_avx2Eji.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = lshr i32 %i.i, 4                         ; 2 uses
  %i.k = and i32 %i.i, 7                          ; 3 uses
  %i.l = or disjoint i64 %indvars.iv, 1           ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = shl i32 %i.p, %i.k
  %i.r = or i32 %i.q, %i.j
  %i.s = and i32 %i.o, 7
  %i.t = add nuw nsw i32 %i.s, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0102 = phi i32 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.0 = phi i32 [ %i.t, %bb.c ], [ %i.k, %bb.b ]  ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9    ; 4 uses
  %i.w = icmp ugt i32 %i.v, 2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9    ; 5 uses
  br i1 %i.w, label %bb.e, label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.d
  %i.z = zext i32 %i.y to i64
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.y, 2
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %i.v, -2
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = shl i32 %i.ae, %.0
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.ac
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = add nsw i32 %i.ah, %.0                  ; 2 uses
  %i.aj = add i32 %i.y, -2
  %i.ak = zext i32 %i.aj to i64                   ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = shl i32 %i.am, %i.ai
  %i.ao = or i32 %i.an, %i.af
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.ak
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = add nsw i32 %i.aq, %i.ai                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.ac
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = shl i32 %i.at, %i.ar
  %i.av = or i32 %i.ao, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.ac
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = add nsw i32 %i.ax, %i.ar                ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.ak
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = shl i32 %i.ba, %i.ay
  %i.bc = or i32 %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.ak
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9
  %i.bf = add nsw i32 %i.be, %i.ay
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = zext i32 %i.v to i64                    ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = shl i32 %i.bi, %.0
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.bg
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = add nsw i32 %i.bl, %.0                  ; 2 uses
  %i.bn = add nsw i32 %i.y, -1
  %i.bo = shl nuw i32 %i.bn, %i.bm
  %i.bp = or i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bm, 1                    ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.bg
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = shl i32 %i.bs, %i.bq
  %i.bu = or i32 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.bg
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = add nsw i32 %i.bq, %i.bw
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge114, %bb.g
  %i.by = phi i64 [ %i.z, %._crit_edge114 ], [ 0, %bb.g ] ; 4 uses
  %i.bz = zext i32 %i.v to i64                    ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = shl i32 %i.cb, %.0
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.bz
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9
  %i.cf = add nsw i32 %i.ce, %.0                  ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 %i.by
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = shl i32 %i.ch, %i.cf
  %i.cj = or i32 %i.ci, %i.cc
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 %i.by
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.cm = add nsw i32 %i.cl, %i.cf                ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.bz
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !9
  %i.cp = shl i32 %i.co, %i.cm
  %i.cq = or i32 %i.cj, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.bz
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !9
  %i.ct = add nsw i32 %i.cs, %i.cm                ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 %i.by
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = shl i32 %i.cv, %i.ct
  %i.cx = or i32 %i.cq, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 %i.by
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  %i.da = add nsw i32 %i.cz, %i.ct
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.pn = phi i32 [ %i.bc, %bb.f ], [ %i.bu, %bb.h ], [ %i.cx, %bb.i ]
  %.1 = phi i32 [ %i.bf, %bb.f ], [ %i.bx, %bb.h ], [ %i.da, %bb.i ]
  %.1103 = or i32 %.pn, %.0102
  %i.db = zext i32 %.1103 to i64
  %i.dc = load i32, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl i64 %i.db, %i.dd
  %i.df = load i64, ptr %i.d, align 8, !tbaa !25
  %i.dg = or i64 %i.de, %i.df                     ; 2 uses
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !25
  %i.dh = add nsw i32 %i.dc, %.1                  ; 2 uses
  store i32 %i.dh, ptr %i.c, align 8, !tbaa !24
  %i.di = icmp sgt i32 %i.dh, 7
  br i1 %i.di, label %.lr.ph.i, label %_ZN4ojph5localL10vlc_encodeEPNS0_15vlc_struct_avx2Eji.exit

.lr.ph.i:                                         ; preds = %bb.j
  %.pre.i = load i8, ptr %i.e, align 8, !tbaa !26, !range !30
  %i.dj = trunc nuw i8 %.pre.i to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i
  %i.dk = phi i64 [ %i.dg, %.lr.ph.i ], [ %i.ed, %bb.p ] ; 3 uses
  %i.dl = phi i1 [ %i.dj, %.lr.ph.i ], [ %.sink.shrunk.i, %bb.p ]
  %i.dm = trunc i64 %i.dk to i8                   ; 3 uses
  br i1 %i.dl, label %bb.l, label %bb.o, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.dn = and i8 %i.dm, 127
  %.not.i = icmp eq i8 %i.dn, 127
  %i.do = load ptr, ptr %0, align 8, !tbaa !21
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !22
  %i.dq = zext i32 %i.dp to i64
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !31

bb.m:                                             ; preds = %bb.l
  store i8 %i.dm, ptr %i.ds, align 1, !tbaa !23
  %i.dt = and i64 %i.dk, 240
  %i.du = icmp samesign ugt i64 %i.dt, 143
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i8 127, ptr %i.ds, align 1, !tbaa !23
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %0, align 8, !tbaa !21
end_hunk_0
