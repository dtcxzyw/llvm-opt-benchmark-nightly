inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZN4llvh3sys18getHostCPUFeaturesERNS_9StringMapIbNS_15MallocAllocatorEEE:bb.a
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !96
  %i.bz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.167, i64 3)
  %.fca.0.extract.i225 = extractvalue { ptr, i8 } %i.bz, 0
  %i.ca = load ptr, ptr %.fca.0.extract.i225, align 8, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = lshr i32 %i.f, 25
  %i.cd = trunc nuw nsw i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !96
  %i.cf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.168, i64 5)
  %.fca.0.extract.i226 = extractvalue { ptr, i8 } %i.cf, 0
  %i.cg = load ptr, ptr %.fca.0.extract.i226, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = lshr i32 %i.f, 30
  %i.cj = trunc nuw nsw i32 %i.ci to i8
  %i.ck = and i8 %i.cj, 1
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !96
  %i.cl = and i32 %i.f, 402653184
  %or.cond.not = icmp eq i32 %i.cl, 402653184
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cm = tail call { i32, i32 } asm ".byte 0x0f, 0x01, 0xd0", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #23, !srcloc !53
  %i.cn = extractvalue { i32, i32 } %i.cm, 0      ; 2 uses
  %i.co = and i32 %i.cn, 6
  %i.cp = icmp eq i32 %i.co, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.cn, %bb.c ] ; 2 uses
  %i.cq = phi i1 [ false, %bb.b ], [ %i.cp, %bb.c ] ; 5 uses
  %i.cr = zext i1 %i.cq to i8                     ; 9 uses
  %i.cs = and i32 %.0, 224
  %i.ct = icmp eq i32 %i.cs, 224
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false     ; 9 uses
  %i.cv = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.169, i64 3)
  %.fca.0.extract.i227 = extractvalue { ptr, i8 } %i.cv, 0
  %i.cw = load ptr, ptr %.fca.0.extract.i227, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.cr, ptr %i.cx, align 1, !tbaa !96
  %i.cy = and i32 %i.f, 4096
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = select i1 %i.cz, i1 %i.cq, i1 false
  %i.db = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.170, i64 3)
  %.fca.0.extract.i228 = extractvalue { ptr, i8 } %i.db, 0
  %i.dc = load ptr, ptr %.fca.0.extract.i228, align 8, !tbaa !94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = zext i1 %i.da to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !96
  %i.df = and i32 %i.f, 67108864
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = select i1 %i.dg, i1 %i.cq, i1 false
  %i.di = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.171, i64 5)
  %.fca.0.extract.i229 = extractvalue { ptr, i8 } %i.di, 0
  %i.dj = load ptr, ptr %.fca.0.extract.i229, align 8, !tbaa !94
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = zext i1 %i.dh to i8
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !96
  %i.dm = and i32 %i.f, 536870912
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = select i1 %i.dn, i1 %i.cq, i1 false
  %i.dp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.172, i64 4)
  %.fca.0.extract.i230 = extractvalue { ptr, i8 } %i.dp, 0
  %i.dq = load ptr, ptr %.fca.0.extract.i230, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = zext i1 %i.do to i8
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !96
  %i.dt = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648) #23, !srcloc !52 ; 2 uses
  %i.du = extractvalue { i32, i32, i32, i32 } %i.dt, 0 ; 2 uses
  %i.dv = icmp ugt i32 %i.du, -2147483648         ; 11 uses
  br i1 %i.dv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dw = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483647) #23, !srcloc !52 ; 2 uses
  %i.dx = extractvalue { i32, i32, i32, i32 } %i.dw, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { i32, i32, i32, i32 } [ %i.dw, %bb.e ], [ %i.dt, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.dx, %bb.e ], [ %.0, %bb.d ]
  %.0519 = extractvalue { i32, i32, i32, i32 } %.pn, 2 ; 3 uses
  %.0522 = extractvalue { i32, i32, i32, i32 } %.pn, 3 ; 2 uses
  %i.dy = trunc i32 %.0519 to i8
  %i.dz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.173, i64 4)
  %.fca.0.extract.i231 = extractvalue { ptr, i8 } %i.dz, 0
  %i.ea = load ptr, ptr %.fca.0.extract.i231, align 8, !tbaa !94
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = and i8 %i.dy, 1
  %i.ed = select i1 %i.dv, i8 %i.ec, i8 0
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !96
  %i.ee = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.174, i64 5)
  %.fca.0.extract.i232 = extractvalue { ptr, i8 } %i.ee, 0
  %i.ef = load ptr, ptr %.fca.0.extract.i232, align 8, !tbaa !94
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = insertelement <8 x i32> poison, i32 %.0519, i64 0
  %i.ei = shufflevector <8 x i32> %i.eh, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ej = and <8 x i32> %i.ei, <i32 536870912, i32 2097152, i32 65536, i32 32768, i32 2048, i32 256, i32 64, i32 32>
  %i.ek = icmp ne <8 x i32> %i.ej, zeroinitializer ; 8 uses
  %i.el = extractelement <8 x i1> %i.ek, i64 7
  %i.em = select i1 %i.dv, i1 %i.el, i1 false
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %i.eg, align 1, !tbaa !96
  %i.eo = extractelement <8 x i1> %i.ek, i64 6
  %i.ep = select i1 %i.dv, i1 %i.eo, i1 false
  %i.eq = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.175, i64 5)
  %.fca.0.extract.i233 = extractvalue { ptr, i8 } %i.eq, 0
  %i.er = load ptr, ptr %.fca.0.extract.i233, align 8, !tbaa !94
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = zext i1 %i.ep to i8
  store i8 %i.et, ptr %i.es, align 1, !tbaa !96
  %i.eu = extractelement <8 x i1> %i.ek, i64 5
  %i.ev = select i1 %i.dv, i1 %i.eu, i1 false
  %i.ew = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.176, i64 6)
  %.fca.0.extract.i234 = extractvalue { ptr, i8 } %i.ew, 0
  %i.ex = load ptr, ptr %.fca.0.extract.i234, align 8, !tbaa !94
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = zext i1 %i.ev to i8
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !96
  %i.fa = extractelement <8 x i1> %i.ek, i64 4
  %i.fb = select i1 %i.dv, i1 %i.fa, i1 false
  %i.fc = select i1 %i.fb, i8 %i.cr, i8 0
  %i.fd = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.177, i64 3)
  %.fca.0.extract.i235 = extractvalue { ptr, i8 } %i.fd, 0
  %i.fe = load ptr, ptr %.fca.0.extract.i235, align 8, !tbaa !94
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !96
  %i.fg = extractelement <8 x i1> %i.ek, i64 3
  %i.fh = select i1 %i.dv, i1 %i.fg, i1 false
  %i.fi = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.178, i64 3)
  %.fca.0.extract.i236 = extractvalue { ptr, i8 } %i.fi, 0
  %i.fj = load ptr, ptr %.fca.0.extract.i236, align 8, !tbaa !94
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = zext i1 %i.fh to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !96
  %i.fm = extractelement <8 x i1> %i.ek, i64 2
  %i.fn = select i1 %i.dv, i1 %i.fm, i1 false
  %i.fo = select i1 %i.fn, i8 %i.cr, i8 0
  %i.fp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.179, i64 4)
  %.fca.0.extract.i237 = extractvalue { ptr, i8 } %i.fp, 0
  %i.fq = load ptr, ptr %.fca.0.extract.i237, align 8, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i8 %i.fo, ptr %i.fr, align 1, !tbaa !96
  %i.fs = extractelement <8 x i1> %i.ek, i64 1
  %i.ft = select i1 %i.dv, i1 %i.fs, i1 false
  %i.fu = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.180, i64 3)
  %.fca.0.extract.i238 = extractvalue { ptr, i8 } %i.fu, 0
  %i.fv = load ptr, ptr %.fca.0.extract.i238, align 8, !tbaa !94
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = zext i1 %i.ft to i8
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !96
  %i.fy = extractelement <8 x i1> %i.ek, i64 0
  %i.fz = select i1 %i.dv, i1 %i.fy, i1 false
  %i.ga = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.181, i64 6)
  %.fca.0.extract.i239 = extractvalue { ptr, i8 } %i.ga, 0
  %i.gb = load ptr, ptr %.fca.0.extract.i239, align 8, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = zext i1 %i.fz to i8
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !96
  %i.ge = and i32 %.0522, 536870912
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = select i1 %i.dv, i1 %i.gf, i1 false
  %i.gh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.182, i64 5)
  %.fca.0.extract.i240 = extractvalue { ptr, i8 } %i.gh, 0
  %i.gi = load ptr, ptr %.fca.0.extract.i240, align 8, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = zext i1 %i.gg to i8
  store i8 %i.gk, ptr %i.gj, align 1, !tbaa !96
  %i.gl = icmp ugt i32 %i.du, -2147483641         ; 3 uses
  br i1 %i.gl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gm = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},~{dirflag},~{fpsr},~{flags}"(i32 -2147483640) #23, !srcloc !52 ; 4 uses
  %i.gn = extractvalue { i32, i32, i32, i32 } %i.gm, 0
  %i.go = extractvalue { i32, i32, i32, i32 } %i.gm, 2
  %i.gp = extractvalue { i32, i32, i32, i32 } %i.gm, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1523 = phi i32 [ %i.gp, %bb.g ], [ %.0522, %bb.f ]
  %.1520 = phi i32 [ %i.go, %bb.g ], [ %.0519, %bb.f ]
  %.pn527 = phi { i32, i32, i32, i32 } [ %i.gm, %bb.g ], [ %.pn, %bb.f ]
  %.2 = phi i32 [ %i.gn, %bb.g ], [ %.1, %bb.f ]
  %.1515 = extractvalue { i32, i32, i32, i32 } %.pn527, 1 ; 3 uses
  %i.gq = trunc i32 %.1515 to i8
  %i.gr = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.183, i64 6)
  %.fca.0.extract.i241 = extractvalue { ptr, i8 } %i.gr, 0
  %i.gs = load ptr, ptr %.fca.0.extract.i241, align 8, !tbaa !94
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = and i8 %i.gq, 1
  %i.gv = select i1 %i.gl, i8 %i.gu, i8 0
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !96
  %i.gw = and i32 %.1515, 512
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = select i1 %i.gl, i1 %i.gx, i1 false
  %i.gz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.184, i64 8)
  %.fca.0.extract.i242 = extractvalue { ptr, i8 } %i.gz, 0
  %i.ha = load ptr, ptr %.fca.0.extract.i242, align 8, !tbaa !94
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = zext i1 %i.gy to i8
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !96
  %i.hd = icmp ugt i32 %i.b, 6                    ; 31 uses
  br i1 %i.hd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.he = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #23, !srcloc !54 ; 4 uses
  %i.hf = extractvalue { i32, i32, i32, i32 } %i.he, 0
  %i.hg = extractvalue { i32, i32, i32, i32 } %i.he, 1 ; 2 uses
  %i.hh = extractvalue { i32, i32, i32, i32 } %i.he, 2
  %i.hi = extractvalue { i32, i32, i32, i32 } %i.he, 3
  %.pre = trunc i32 %i.hg to i8
  %.pre533 = and i8 %.pre, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hj = phi i8 [ %.pre533, %bb.i ], [ 0, %bb.h ]
  %.2524 = phi i32 [ %i.hi, %bb.i ], [ %.1523, %bb.h ]
  %.2521 = phi i32 [ %i.hh, %bb.i ], [ %.1520, %bb.h ] ; 16 uses
  %.2516 = phi i32 [ %i.hg, %bb.i ], [ %.1515, %bb.h ] ; 20 uses
  %.3 = phi i32 [ %i.hf, %bb.i ], [ %.2, %bb.h ]
  %i.hk = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.185, i64 8)
  %.fca.0.extract.i243 = extractvalue { ptr, i8 } %i.hk, 0
  %i.hl = load ptr, ptr %.fca.0.extract.i243, align 8, !tbaa !94
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i8 %i.hj, ptr %i.hm, align 1, !tbaa !96
  %1 = and i32 %.2516, 4
  %2 = icmp ne i32 %1, 0
  %3 = select i1 %i.hd, i1 %2, i1 false
  %i.hn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.186, i64 3)
  %.fca.0.extract.i244 = extractvalue { ptr, i8 } %i.hn, 0
  %i.ho = load ptr, ptr %.fca.0.extract.i244, align 8, !tbaa !94
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.hp, align 1, !tbaa !96
  %5 = and i32 %.2516, 8
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %i.hd, i1 %6, i1 false
  %i.hq = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.187, i64 3)
  %.fca.0.extract.i245 = extractvalue { ptr, i8 } %i.hq, 0
  %i.hr = load ptr, ptr %.fca.0.extract.i245, align 8, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %8 = zext i1 %7 to i8
  store i8 %8, ptr %i.hs, align 1, !tbaa !96
  %9 = and i32 %.2516, 32
  %.not154 = icmp ne i32 %9, 0
  %10 = select i1 %i.hd, i1 %.not154, i1 false
  %i.ht = select i1 %10, i8 %i.cr, i8 0
  %i.hu = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.188, i64 4)
  %.fca.0.extract.i246 = extractvalue { ptr, i8 } %i.hu, 0
  %i.hv = load ptr, ptr %.fca.0.extract.i246, align 8, !tbaa !94
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i8 %i.ht, ptr %i.hw, align 1, !tbaa !96
  %11 = and i32 %.2516, 256
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %i.hd, i1 %12, i1 false
  %i.hx = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.189, i64 4)
  %.fca.0.extract.i247 = extractvalue { ptr, i8 } %i.hx, 0
  %i.hy = load ptr, ptr %.fca.0.extract.i247, align 8, !tbaa !94
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = zext i1 %13 to i8
  store i8 %i.ia, ptr %i.hz, align 1, !tbaa !96
  %i.ib = and i32 %.2516, 1024
  %i.ic = icmp ne i32 %i.ib, 0
  %i.id = select i1 %i.hd, i1 %i.ic, i1 false
  %i.ie = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.190, i64 7)
  %.fca.0.extract.i248 = extractvalue { ptr, i8 } %i.ie, 0
  %i.if = load ptr, ptr %.fca.0.extract.i248, align 8, !tbaa !94
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = zext i1 %i.id to i8
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !96
  %i.ii = and i32 %.2516, 2048
  %i.ij = icmp ne i32 %i.ii, 0
  %i.ik = select i1 %i.hd, i1 %i.ij, i1 false
  %i.il = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.191, i64 3)
  %.fca.0.extract.i249 = extractvalue { ptr, i8 } %i.il, 0
  %i.im = load ptr, ptr %.fca.0.extract.i249, align 8, !tbaa !94
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = zext i1 %i.ik to i8
  store i8 %i.io, ptr %i.in, align 1, !tbaa !96
  br i1 %i.hd, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ip = and i32 %.2516, 65536
  %.not155 = icmp eq i32 %i.ip, 0
  %i.iq = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select175 = select i1 %.not155, i8 0, i8 %i.iq
  %i.ir = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.192, i64 7)
  %.fca.0.extract.i250 = extractvalue { ptr, i8 } %i.ir, 0
  %i.is = load ptr, ptr %.fca.0.extract.i250, align 8, !tbaa !94
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i8 %spec.select175, ptr %i.it, align 1, !tbaa !96
  %i.iu = and i32 %.2516, 131072
  %.not156 = icmp eq i32 %i.iu, 0
  %spec.select176 = select i1 %.not156, i8 0, i8 %i.iq
  br label %bb.l

.critedge:                                        ; preds = %bb.j
  %i.iv = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.192, i64 7)
  %.fca.0.extract.i251 = extractvalue { ptr, i8 } %i.iv, 0
  %i.iw = load ptr, ptr %.fca.0.extract.i251, align 8, !tbaa !94
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i8 0, ptr %i.ix, align 1, !tbaa !96
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.iy = phi i8 [ 0, %.critedge ], [ %spec.select176, %bb.k ]
  %i.iz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.193, i64 8)
  %.fca.0.extract.i252 = extractvalue { ptr, i8 } %i.iz, 0
  %i.ja = load ptr, ptr %.fca.0.extract.i252, align 8, !tbaa !94
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i8 %i.iy, ptr %i.jb, align 1, !tbaa !96
  %14 = and i32 %.2516, 262144
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %i.hd, i1 %15, i1 false
  %i.jc = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.194, i64 6)
  %.fca.0.extract.i253 = extractvalue { ptr, i8 } %i.jc, 0
  %i.jd = load ptr, ptr %.fca.0.extract.i253, align 8, !tbaa !94
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %i.je, align 1, !tbaa !96
  %18 = and i32 %.2516, 524288
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %i.hd, i1 %19, i1 false
  %i.jf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.195, i64 3)
  %.fca.0.extract.i254 = extractvalue { ptr, i8 } %i.jf, 0
  %i.jg = load ptr, ptr %.fca.0.extract.i254, align 8, !tbaa !94
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %i.jh, align 1, !tbaa !96
  %22 = and i32 %.2516, 2097152
  %.not157 = icmp ne i32 %22, 0
  %23 = select i1 %i.hd, i1 %.not157, i1 false
  %narrow528 = select i1 %23, i1 %i.cu, i1 false
  %i.ji = zext i1 %narrow528 to i8
  %i.jj = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.196, i64 10)
  %.fca.0.extract.i255 = extractvalue { ptr, i8 } %i.jj, 0
  %i.jk = load ptr, ptr %.fca.0.extract.i255, align 8, !tbaa !94
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i8 %i.ji, ptr %i.jl, align 1, !tbaa !96
  %24 = and i32 %.2516, 8388608
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %i.hd, i1 %25, i1 false
  %i.jm = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.197, i64 10)
  %.fca.0.extract.i256 = extractvalue { ptr, i8 } %i.jm, 0
  %i.jn = load ptr, ptr %.fca.0.extract.i256, align 8, !tbaa !94
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = zext i1 %26 to i8
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !96
  %i.jq = and i32 %.2516, 16777216
  %i.jr = icmp ne i32 %i.jq, 0
  %i.js = select i1 %i.hd, i1 %i.jr, i1 false
  %i.jt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.198, i64 4)
  %.fca.0.extract.i257 = extractvalue { ptr, i8 } %i.jt, 0
  %i.ju = load ptr, ptr %.fca.0.extract.i257, align 8, !tbaa !94
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = zext i1 %i.js to i8
  store i8 %i.jw, ptr %i.jv, align 1, !tbaa !96
  br i1 %i.hd, label %bb.m, label %.critedge180

bb.m:                                             ; preds = %bb.l
  %i.jx = and i32 %.2516, 67108864
  %.not158 = icmp eq i32 %i.jx, 0
  %i.jy = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select178 = select i1 %.not158, i8 0, i8 %i.jy
  %i.jz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.199, i64 8)
  %.fca.0.extract.i258 = extractvalue { ptr, i8 } %i.jz, 0
  %i.ka = load ptr, ptr %.fca.0.extract.i258, align 8, !tbaa !94
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i8 %spec.select178, ptr %i.kb, align 1, !tbaa !96
  %i.kc = and i32 %.2516, 134217728
  %.not159 = icmp eq i32 %i.kc, 0
  %spec.select181 = select i1 %.not159, i8 0, i8 %i.jy
  br label %bb.n

.critedge180:                                     ; preds = %bb.l
  %i.kd = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.199, i64 8)
  %.fca.0.extract.i259 = extractvalue { ptr, i8 } %i.kd, 0
  %i.ke = load ptr, ptr %.fca.0.extract.i259, align 8, !tbaa !94
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i8 0, ptr %i.kf, align 1, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge180
  %i.kg = phi i8 [ 0, %.critedge180 ], [ %spec.select181, %bb.m ]
  %i.kh = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.200, i64 8)
  %.fca.0.extract.i260 = extractvalue { ptr, i8 } %i.kh, 0
  %i.ki = load ptr, ptr %.fca.0.extract.i260, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i8 %i.kg, ptr %i.kj, align 1, !tbaa !96
  %i.kk = and i32 %.2516, 268435456
  %.not160 = icmp ne i32 %i.kk, 0
  %i.kl = select i1 %i.hd, i1 %.not160, i1 false
  %narrow529 = select i1 %i.kl, i1 %i.cu, i1 false
  %i.km = zext i1 %narrow529 to i8
  %i.kn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.201, i64 8)
  %.fca.0.extract.i261 = extractvalue { ptr, i8 } %i.kn, 0
  %i.ko = load ptr, ptr %.fca.0.extract.i261, align 8, !tbaa !94
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i8 %i.km, ptr %i.kp, align 1, !tbaa !96
  %i.kq = and i32 %.2516, 536870912
  %i.kr = icmp ne i32 %i.kq, 0
  %i.ks = select i1 %i.hd, i1 %i.kr, i1 false
  %i.kt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.202, i64 3)
  %.fca.0.extract.i262 = extractvalue { ptr, i8 } %i.kt, 0
  %i.ku = load ptr, ptr %.fca.0.extract.i262, align 8, !tbaa !94
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = zext i1 %i.ks to i8
  store i8 %i.kw, ptr %i.kv, align 1, !tbaa !96
  br i1 %i.hd, label %bb.o, label %.critedge187

bb.o:                                             ; preds = %bb.n
  %i.kx = and i32 %.2516, 1073741824
  %.not161 = icmp eq i32 %i.kx, 0
  %i.ky = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select185 = select i1 %.not161, i8 0, i8 %i.ky
  %i.kz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.203, i64 8)
  %.fca.0.extract.i263 = extractvalue { ptr, i8 } %i.kz, 0
  %i.la = load ptr, ptr %.fca.0.extract.i263, align 8, !tbaa !94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i8 %spec.select185, ptr %i.lb, align 1, !tbaa !96
  %.not162 = icmp sgt i32 %.2516, -1
  %spec.select213 = select i1 %.not162, i8 0, i8 %i.ky
  br label %bb.p

.critedge187:                                     ; preds = %bb.n
  %i.lc = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.203, i64 8)
  %.fca.0.extract.i264 = extractvalue { ptr, i8 } %i.lc, 0
  %i.ld = load ptr, ptr %.fca.0.extract.i264, align 8, !tbaa !94
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i8 0, ptr %i.le, align 1, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge187
  %i.lf = phi i8 [ 0, %.critedge187 ], [ %spec.select213, %bb.o ]
  %i.lg = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.204, i64 8)
  %.fca.0.extract.i265 = extractvalue { ptr, i8 } %i.lg, 0
  %i.lh = load ptr, ptr %.fca.0.extract.i265, align 8, !tbaa !94
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i8 %i.lf, ptr %i.li, align 1, !tbaa !96
  %i.lj = trunc i32 %.2521 to i8
  %i.lk = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.205, i64 11)
  %.fca.0.extract.i266 = extractvalue { ptr, i8 } %i.lk, 0
  %i.ll = load ptr, ptr %.fca.0.extract.i266, align 8, !tbaa !94
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = and i8 %i.lj, 1
  %i.lo = select i1 %i.hd, i8 %i.ln, i8 0
  store i8 %i.lo, ptr %i.lm, align 1, !tbaa !96
  %27 = and i32 %.2521, 2
  %.not163 = icmp ne i32 %27, 0
  %28 = select i1 %i.hd, i1 %.not163, i1 false
  %narrow530 = select i1 %28, i1 %i.cu, i1 false
  %29 = zext i1 %narrow530 to i8
  %i.lp = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.206, i64 10)
  %.fca.0.extract.i267 = extractvalue { ptr, i8 } %i.lp, 0
  %i.lq = load ptr, ptr %.fca.0.extract.i267, align 8, !tbaa !94
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i8 %29, ptr %i.lr, align 1, !tbaa !96
  %30 = and i32 %.2521, 16
  %31 = icmp ne i32 %30, 0
  %i.ls = select i1 %i.hd, i1 %31, i1 false
  %i.lt = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.207, i64 3)
  %.fca.0.extract.i268 = extractvalue { ptr, i8 } %i.lt, 0
  %i.lu = load ptr, ptr %.fca.0.extract.i268, align 8, !tbaa !94
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %32 = zext i1 %i.ls to i8
  store i8 %32, ptr %i.lv, align 1, !tbaa !96
  %33 = and i32 %.2521, 32
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %i.hd, i1 %34, i1 false
  %i.lw = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.208, i64 7)
  %.fca.0.extract.i269 = extractvalue { ptr, i8 } %i.lw, 0
  %i.lx = load ptr, ptr %.fca.0.extract.i269, align 8, !tbaa !94
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %i.ly, align 1, !tbaa !96
  %37 = and i32 %.2521, 64
  %.not164 = icmp ne i32 %37, 0
  %38 = select i1 %i.hd, i1 %.not164, i1 false
  %narrow531 = select i1 %38, i1 %i.cu, i1 false
  %i.lz = zext i1 %narrow531 to i8
  %i.ma = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.209, i64 11)
  %.fca.0.extract.i270 = extractvalue { ptr, i8 } %i.ma, 0
  %i.mb = load ptr, ptr %.fca.0.extract.i270, align 8, !tbaa !94
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store i8 %i.lz, ptr %i.mc, align 1, !tbaa !96
  %i.md = and i32 %.2521, 128
  %i.me = icmp ne i32 %i.md, 0
  %i.mf = select i1 %i.hd, i1 %i.me, i1 false
  %i.mg = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.210, i64 5)
  %.fca.0.extract.i271 = extractvalue { ptr, i8 } %i.mg, 0
  %i.mh = load ptr, ptr %.fca.0.extract.i271, align 8, !tbaa !94
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = zext i1 %i.mf to i8
  store i8 %i.mj, ptr %i.mi, align 1, !tbaa !96
  %i.mk = and i32 %.2521, 256
  %i.ml = icmp ne i32 %i.mk, 0
  %i.mm = select i1 %i.hd, i1 %i.ml, i1 false
  %i.mn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.211, i64 4)
  %.fca.0.extract.i272 = extractvalue { ptr, i8 } %i.mn, 0
  %i.mo = load ptr, ptr %.fca.0.extract.i272, align 8, !tbaa !94
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = zext i1 %i.mm to i8
  store i8 %i.mq, ptr %i.mp, align 1, !tbaa !96
  br i1 %i.hd, label %bb.q, label %.critedge200

bb.q:                                             ; preds = %bb.p
  %i.mr = and i32 %.2521, 512
  %.not165 = icmp eq i32 %i.mr, 0
  %spec.select192 = select i1 %.not165, i8 0, i8 %i.cr
  %i.ms = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.212, i64 4)
  %.fca.0.extract.i273 = extractvalue { ptr, i8 } %i.ms, 0
  %i.mt = load ptr, ptr %.fca.0.extract.i273, align 8, !tbaa !94
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i8 %spec.select192, ptr %i.mu, align 1, !tbaa !96
  %i.mv = and i32 %.2521, 1024
  %.not166 = icmp eq i32 %i.mv, 0
  %spec.select195 = select i1 %.not166, i8 0, i8 %i.cr
  %i.mw = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.213, i64 10)
  %.fca.0.extract.i275536 = extractvalue { ptr, i8 } %i.mw, 0
  %i.mx = load ptr, ptr %.fca.0.extract.i275536, align 8, !tbaa !94
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i8 %spec.select195, ptr %i.my, align 1, !tbaa !96
  %i.mz = and i32 %.2521, 2048
  %.not167 = icmp eq i32 %i.mz, 0
  %i.na = zext i1 %i.cu to i8                     ; 2 uses
  %spec.select198 = select i1 %.not167, i8 0, i8 %i.na
  %i.nb = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.214, i64 10)
  %.fca.0.extract.i276 = extractvalue { ptr, i8 } %i.nb, 0
  %i.nc = load ptr, ptr %.fca.0.extract.i276, align 8, !tbaa !94
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store i8 %spec.select198, ptr %i.nd, align 1, !tbaa !96
  %i.ne = and i32 %.2521, 4096
  %.not168 = icmp eq i32 %i.ne, 0
  %spec.select201 = select i1 %.not168, i8 0, i8 %i.na
  br label %bb.r

.critedge200:                                     ; preds = %bb.p
  %i.nf = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.212, i64 4)
  %.fca.0.extract.i274 = extractvalue { ptr, i8 } %i.nf, 0
  %i.ng = load ptr, ptr %.fca.0.extract.i274, align 8, !tbaa !94
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i8 0, ptr %i.nh, align 1, !tbaa !96
  %i.ni = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.213, i64 10)
  %.fca.0.extract.i275 = extractvalue { ptr, i8 } %i.ni, 0
  %i.nj = load ptr, ptr %.fca.0.extract.i275, align 8, !tbaa !94
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i8 0, ptr %i.nk, align 1, !tbaa !96
  %i.nl = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.214, i64 10)
  %.fca.0.extract.i277 = extractvalue { ptr, i8 } %i.nl, 0
  %i.nm = load ptr, ptr %.fca.0.extract.i277, align 8, !tbaa !94
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i8 0, ptr %i.nn, align 1, !tbaa !96
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge200
  %i.no = phi i8 [ 0, %.critedge200 ], [ %spec.select201, %bb.q ]
  %i.np = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.215, i64 12)
  %.fca.0.extract.i278 = extractvalue { ptr, i8 } %i.np, 0
  %i.nq = load ptr, ptr %.fca.0.extract.i278, align 8, !tbaa !94
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i8 %i.no, ptr %i.nr, align 1, !tbaa !96
  %39 = and i32 %.2521, 16384
  %.not169 = icmp ne i32 %39, 0
  %40 = select i1 %i.hd, i1 %.not169, i1 false
  %narrow532 = select i1 %40, i1 %i.cu, i1 false
  %41 = zext i1 %narrow532 to i8
  %i.ns = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.216, i64 15)
  %.fca.0.extract.i279 = extractvalue { ptr, i8 } %i.ns, 0
  %i.nt = load ptr, ptr %.fca.0.extract.i279, align 8, !tbaa !94
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store i8 %41, ptr %i.nu, align 1, !tbaa !96
  %42 = and i32 %.2521, 4194304
  %43 = icmp ne i32 %42, 0
  %i.nv = select i1 %i.hd, i1 %43, i1 false
  %i.nw = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.217, i64 5)
  %.fca.0.extract.i280 = extractvalue { ptr, i8 } %i.nw, 0
  %i.nx = load ptr, ptr %.fca.0.extract.i280, align 8, !tbaa !94
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %44 = zext i1 %i.nv to i8
  store i8 %44, ptr %i.ny, align 1, !tbaa !96
  %45 = and i32 %.2521, 33554432
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %i.hd, i1 %46, i1 false
  %i.nz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.218, i64 8)
  %.fca.0.extract.i281 = extractvalue { ptr, i8 } %i.nz, 0
  %i.oa = load ptr, ptr %.fca.0.extract.i281, align 8, !tbaa !94
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %48 = zext i1 %47 to i8
  store i8 %48, ptr %i.ob, align 1, !tbaa !96
  %49 = and i32 %.2521, 134217728
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %i.hd, i1 %50, i1 false
  %i.oc = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.219, i64 7)
  %.fca.0.extract.i282 = extractvalue { ptr, i8 } %i.oc, 0
  %i.od = load ptr, ptr %.fca.0.extract.i282, align 8, !tbaa !94
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = zext i1 %51 to i8
  store i8 %i.of, ptr %i.oe, align 1, !tbaa !96
  %i.og = and i32 %.2521, 268435456
  %i.oh = icmp ne i32 %i.og, 0
  %i.oi = select i1 %i.hd, i1 %i.oh, i1 false
  %i.oj = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.220, i64 9)
  %.fca.0.extract.i283 = extractvalue { ptr, i8 } %i.oj, 0
  %i.ok = load ptr, ptr %.fca.0.extract.i283, align 8, !tbaa !94
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = zext i1 %i.oi to i8
  store i8 %i.om, ptr %i.ol, align 1, !tbaa !96
  %i.on = and i32 %.2524, 262144
  %i.oo = icmp ne i32 %i.on, 0
  %i.op = select i1 %i.hd, i1 %i.oo, i1 false
  %i.oq = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.221, i64 7)
  %.fca.0.extract.i284 = extractvalue { ptr, i8 } %i.oq, 0
  %i.or = load ptr, ptr %.fca.0.extract.i284, align 8, !tbaa !94
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = zext i1 %i.op to i8
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !96
  %i.ou = icmp ugt i32 %i.b, 12                   ; 2 uses
  br i1 %i.ou, label %.critedge206, label %.critedge208

.critedge206:                                     ; preds = %bb.r
  %i.ov = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 13, i32 1) #23, !srcloc !54 ; 2 uses
  %i.ow = extractvalue { i32, i32, i32, i32 } %i.ov, 0 ; 3 uses
  %i.ox = extractvalue { i32, i32, i32, i32 } %i.ov, 1
  %i.oy = and i32 %i.ow, 1
  %.not170 = icmp eq i32 %i.oy, 0
  %spec.select207 = select i1 %.not170, i8 0, i8 %i.cr
  %i.oz = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.222, i64 8)
  %.fca.0.extract.i285 = extractvalue { ptr, i8 } %i.oz, 0
  %i.pa = load ptr, ptr %.fca.0.extract.i285, align 8, !tbaa !94
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i8 %spec.select207, ptr %i.pb, align 1, !tbaa !96
  %i.pc = and i32 %i.ow, 2
  %.not171 = icmp eq i32 %i.pc, 0
  %spec.select209 = select i1 %.not171, i8 0, i8 %i.cr
  br label %bb.s

.critedge208:                                     ; preds = %bb.r
  %i.pd = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.222, i64 8)
  %.fca.0.extract.i286 = extractvalue { ptr, i8 } %i.pd, 0
  %i.pe = load ptr, ptr %.fca.0.extract.i286, align 8, !tbaa !94
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i8 0, ptr %i.pf, align 1, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %.critedge206, %.critedge208
  %.3517 = phi i32 [ %i.ox, %.critedge206 ], [ %.2516, %.critedge208 ]
  %.4 = phi i32 [ %i.ow, %.critedge206 ], [ %.3, %.critedge208 ]
  %i.pg = phi i8 [ %spec.select209, %.critedge206 ], [ 0, %.critedge208 ]
  %i.ph = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.223, i64 6)
  %.fca.0.extract.i287 = extractvalue { ptr, i8 } %i.ph, 0
  %i.pi = load ptr, ptr %.fca.0.extract.i287, align 8, !tbaa !94
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i8 %i.pg, ptr %i.pj, align 1, !tbaa !96
  %i.pk = and i32 %.4, 8
  %.not172 = icmp ne i32 %i.pk, 0
  %i.pl = select i1 %i.ou, i1 %.not172, i1 false
  %i.pm = select i1 %i.pl, i8 %i.cr, i8 0
  %i.pn = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.224, i64 6)
  %.fca.0.extract.i288 = extractvalue { ptr, i8 } %i.pn, 0
  %i.po = load ptr, ptr %.fca.0.extract.i288, align 8, !tbaa !94
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i8 %i.pm, ptr %i.pp, align 1, !tbaa !96
  %i.pq = icmp ugt i32 %i.b, 19                   ; 2 uses
  br i1 %i.pq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.pr = tail call { i32, i32, i32, i32 } asm "movq\09%rbx, %rsi\0A\09cpuid\0A\09xchgq\09%rbx, %rsi\0A\09", "={ax},={si},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 20, i32 0) #23, !srcloc !54
  %i.ps = extractvalue { i32, i32, i32, i32 } %i.pr, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4518 = phi i32 [ %i.ps, %bb.t ], [ %.3517, %bb.s ]
  %i.pt = and i32 %.4518, 16
  %i.pu = icmp ne i32 %i.pt, 0
  %i.pv = select i1 %i.pq, i1 %i.pu, i1 false
  %i.pw = tail call { ptr, i8 } @_ZN4llvh9StringMapIbNS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIbEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nonnull @.str.225, i64 7)
  %.fca.0.extract.i289 = extractvalue { ptr, i8 } %i.pw, 0
  %i.px = load ptr, ptr %.fca.0.extract.i289, align 8, !tbaa !94
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = zext i1 %i.pv to i8
  store i8 %i.pz, ptr %i.py, align 1, !tbaa !96
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys16getProcessTripleB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.llvh::Triple", align 8      ; 18 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.llvh::Triple", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 24, ptr %i.b, align 8, !tbaa !19
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.226, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call fastcc void @_ZL21updateTripleOSVersionNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %1, ptr noundef %2)
  %i.i = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.k = load i64, ptr %i.c, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  call void @_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr %i.m, i64 %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !56
  store ptr %5, ptr %4, align 8, !tbaa !14
  call void @_ZN4llvh6TripleC1ERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(18) %4) #20
  %i.r = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.w = call noundef zeroext i1 @_ZNK4llvh6Triple11isArch32BitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  br i1 %i.w, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNK4llvh6Triple19get64BitArchVariantEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Triple") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  %i.x = load ptr, ptr %3, align 8, !tbaa !15     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %6, align 8, !tbaa !15    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.a
  br i1 %i.ac, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4: ; preds = %bb.a
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  switch i64 %i.ae, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !14
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !11
  %i.aj = load ptr, ptr %3, align 8, !tbaa !15
end_hunk_0
