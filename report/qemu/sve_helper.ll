Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1191
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 1631
begin_hunk_0_@helper_sve_uzp_b:bb.a
  %min.iters.check64 = icmp ult i64 %i.ey, 32
  br i1 %min.iters.check64, label %vec.epilog.ph77, label %vector.ph65

vector.ph65:                                      ; preds = %vector.main.loop.iter.check63
  %i.ft = and i64 %i.fa, 15                       ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 16, i64 %i.ft      ; 2 uses
  %n.vec66 = sub i64 %i.fa, %i.fv                 ; 4 uses
  %i.fw = add i64 %i.em, %n.vec66
  %i.fx = shl i64 %n.vec66, 1
  %i.fy = add i64 %i.ep, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next69, %vector.body67 ] ; 3 uses
  %i.ga = shl nuw i64 %index68, 1
  %i.gb = add nuw i64 %i.ep, %i.ga                ; 16 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.029, i64 %i.gb
  %i.gd = getelementptr i8, ptr %.029, i64 %i.gb
  %i.ge = getelementptr i8, ptr %i.gd, i64 2
  %i.gf = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  %i.gh = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gi = getelementptr i8, ptr %i.gh, i64 6
  %i.gj = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gm = getelementptr i8, ptr %i.gl, i64 10
  %i.gn = getelementptr i8, ptr %.029, i64 %i.gb
  %i.go = getelementptr i8, ptr %i.gn, i64 12
  %i.gp = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gq = getelementptr i8, ptr %i.gp, i64 14
  %i.gr = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %i.gt = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gu = getelementptr i8, ptr %i.gt, i64 18
  %i.gv = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gw = getelementptr i8, ptr %i.gv, i64 20
  %i.gx = getelementptr i8, ptr %.029, i64 %i.gb
  %i.gy = getelementptr i8, ptr %i.gx, i64 22
  %i.gz = getelementptr i8, ptr %.029, i64 %i.gb
  %i.ha = getelementptr i8, ptr %i.gz, i64 24
  %i.hb = getelementptr i8, ptr %.029, i64 %i.gb
  %i.hc = getelementptr i8, ptr %i.hb, i64 26
  %i.hd = getelementptr i8, ptr %.029, i64 %i.gb
  %i.he = getelementptr i8, ptr %i.hd, i64 28
  %i.hf = getelementptr i8, ptr %.029, i64 %i.gb
  %i.hg = getelementptr i8, ptr %i.hf, i64 30
  %i.hh = load i8, ptr %i.gc, align 1, !alias.scope !754
  %i.hi = load i8, ptr %i.ge, align 1, !alias.scope !754
  %i.hj = load i8, ptr %i.gg, align 1, !alias.scope !754
  %i.hk = load i8, ptr %i.gi, align 1, !alias.scope !754
  %i.hl = load i8, ptr %i.gk, align 1, !alias.scope !754
  %i.hm = load i8, ptr %i.gm, align 1, !alias.scope !754
  %i.hn = load i8, ptr %i.go, align 1, !alias.scope !754
  %i.ho = load i8, ptr %i.gq, align 1, !alias.scope !754
  %i.hp = load i8, ptr %i.gs, align 1, !alias.scope !754
  %i.hq = load i8, ptr %i.gu, align 1, !alias.scope !754
  %i.hr = load i8, ptr %i.gw, align 1, !alias.scope !754
  %i.hs = load i8, ptr %i.gy, align 1, !alias.scope !754
  %i.ht = load i8, ptr %i.ha, align 1, !alias.scope !754
  %i.hu = load i8, ptr %i.hc, align 1, !alias.scope !754
  %i.hv = load i8, ptr %i.he, align 1, !alias.scope !754
  %i.hw = load i8, ptr %i.hg, align 1, !alias.scope !754
  %i.hx = insertelement <16 x i8> poison, i8 %i.hh, i64 0
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 1
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 2
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 3
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 4
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 5
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 6
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 7
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 8
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 9
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 10
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 11
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 12
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 13
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 14
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 15
  %i.in = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index68
  store <16 x i8> %i.im, ptr %i.in, align 1, !alias.scope !757, !noalias !754
  %index.next69 = add nuw i64 %index68, 16        ; 2 uses
  %i.io = icmp eq i64 %index.next69, %n.vec66
  br i1 %i.io, label %vec.epilog.iter.check75, label %vector.body67, !llvm.loop !759

vec.epilog.iter.check75:                          ; preds = %vector.body67
  %min.epilog.iters.check76 = icmp samesign ult i64 %i.fv, 9
  br i1 %min.epilog.iters.check76, label %vec.epilog.scalar.ph74.preheader, label %vec.epilog.ph77, !prof !751

vec.epilog.ph77:                                  ; preds = %vector.main.loop.iter.check63, %vec.epilog.iter.check75
  %vec.epilog.resume.val71 = phi i64 [ %n.vec66, %vec.epilog.iter.check75 ], [ 0, %vector.main.loop.iter.check63 ]
  %i.ip = and i64 %i.fa, 7                        ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  %i.ir = select i1 %i.iq, i64 8, i64 %i.ip
  %n.vec78 = sub i64 %i.fa, %i.ir                 ; 3 uses
  %i.is = add i64 %i.em, %n.vec78
  %i.it = shl i64 %n.vec78, 1
  %i.iu = add i64 %i.ep, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph77
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph77 ], [ %index.next81, %vec.epilog.vector.body79 ] ; 3 uses
  %i.iw = shl nuw i64 %index80, 1
  %i.ix = add nuw i64 %i.ep, %i.iw                ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.029, i64 %i.ix
  %i.iz = getelementptr i8, ptr %.029, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 2
  %i.jb = getelementptr i8, ptr %.029, i64 %i.ix
  %i.jc = getelementptr i8, ptr %i.jb, i64 4
  %i.jd = getelementptr i8, ptr %.029, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.jd, i64 6
  %i.jf = getelementptr i8, ptr %.029, i64 %i.ix
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  %i.jh = getelementptr i8, ptr %.029, i64 %i.ix
  %i.ji = getelementptr i8, ptr %i.jh, i64 10
  %i.jj = getelementptr i8, ptr %.029, i64 %i.ix
  %i.jk = getelementptr i8, ptr %i.jj, i64 12
  %i.jl = getelementptr i8, ptr %.029, i64 %i.ix
  %i.jm = getelementptr i8, ptr %i.jl, i64 14
  %i.jn = load i8, ptr %i.iy, align 1, !alias.scope !754
  %i.jo = load i8, ptr %i.ja, align 1, !alias.scope !754
  %i.jp = load i8, ptr %i.jc, align 1, !alias.scope !754
  %i.jq = load i8, ptr %i.je, align 1, !alias.scope !754
  %i.jr = load i8, ptr %i.jg, align 1, !alias.scope !754
  %i.js = load i8, ptr %i.ji, align 1, !alias.scope !754
  %i.jt = load i8, ptr %i.jk, align 1, !alias.scope !754
  %i.ju = load i8, ptr %i.jm, align 1, !alias.scope !754
  %i.jv = insertelement <8 x i8> poison, i8 %i.jn, i64 0
  %i.jw = insertelement <8 x i8> %i.jv, i8 %i.jo, i64 1
  %i.jx = insertelement <8 x i8> %i.jw, i8 %i.jp, i64 2
  %i.jy = insertelement <8 x i8> %i.jx, i8 %i.jq, i64 3
  %i.jz = insertelement <8 x i8> %i.jy, i8 %i.jr, i64 4
  %i.ka = insertelement <8 x i8> %i.jz, i8 %i.js, i64 5
  %i.kb = insertelement <8 x i8> %i.ka, i8 %i.jt, i64 6
  %i.kc = insertelement <8 x i8> %i.kb, i8 %i.ju, i64 7
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index80
  store <8 x i8> %i.kc, ptr %i.kd, align 1, !alias.scope !757, !noalias !754
  %index.next81 = add nuw i64 %index80, 8         ; 2 uses
  %i.ke = icmp eq i64 %index.next81, %n.vec78
  br i1 %i.ke, label %vec.epilog.scalar.ph74.preheader, label %vec.epilog.vector.body79, !llvm.loop !760

vec.epilog.scalar.ph74.preheader:                 ; preds = %vec.epilog.vector.body79, %vector.memcheck53, %iter.check73, %vec.epilog.iter.check75
  %.128.ph = phi i64 [ %i.em, %iter.check73 ], [ %i.em, %vector.memcheck53 ], [ %i.fw, %vec.epilog.iter.check75 ], [ %i.is, %vec.epilog.vector.body79 ]
  %.1.ph = phi i64 [ %i.ep, %iter.check73 ], [ %i.ep, %vector.memcheck53 ], [ %i.fy, %vec.epilog.iter.check75 ], [ %i.iu, %vec.epilog.vector.body79 ]
  br label %vec.epilog.scalar.ph74

vec.epilog.scalar.ph74:                           ; preds = %vec.epilog.scalar.ph74.preheader, %vec.epilog.scalar.ph74
  %.128 = phi i64 [ %i.ki, %vec.epilog.scalar.ph74 ], [ %.128.ph, %vec.epilog.scalar.ph74.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.kj, %vec.epilog.scalar.ph74 ], [ %.1.ph, %vec.epilog.scalar.ph74.preheader ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i8 %i.kg, ptr %i.kh, align 1
  %i.ki = add nuw nsw i64 %.128, 1                ; 2 uses
  %i.kj = add nuw nsw i64 %.1, 2                  ; 2 uses
  %i.kk = icmp samesign ult i64 %i.kj, %i.g
  br i1 %i.kk, label %vec.epilog.scalar.ph74, label %bb.d, !llvm.loop !761

bb.d:                                             ; preds = %vec.epilog.scalar.ph74
  %i.kl = icmp eq i64 %i.ki, %i.g
  call void @llvm.assume(i1 %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !487
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !762
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 11 uses
  %i.o = add nsw i64 %i.i, 4
  %i.p = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.o)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 112
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = add nsw i64 %i.i, 4
  %smax = call i64 @llvm.smax.i64(i64 %i.g, i64 %i.u)
  %i.v = xor i64 %i.i, -1
  %i.w = add i64 %smax, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = and i64 %i.x, 9223372036854775806
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 2
  %scevgep44 = getelementptr i8, ptr %1, i64 %i.i
  %i.aa = and i64 %i.w, -4
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.i
  %scevgep45 = getelementptr i8, ptr %i.ac, i64 2
  %bound0 = icmp ult ptr %0, %scevgep45
  %bound1 = icmp ult ptr %scevgep44, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 1
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = shl i64 %index, 2
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.vec = load <8 x i16>, ptr %i.am, align 2, !alias.scope !766
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i16>, ptr %i.ao, align 2, !alias.scope !766
  %strided.vec47 = shufflevector <8 x i16> %wide.vec46, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <4 x i16> %strided.vec, ptr %i.ap, align 2, !alias.scope !769, !noalias !766
  store <4 x i16> %strided.vec47, ptr %i.aq, align 2, !alias.scope !769, !noalias !766
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !771

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i16, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i16 %i.at, ptr %i.au, align 2
  %i.av = add i64 %.027, 2                        ; 6 uses
  %i.aw = add nsw i64 %.0, 4                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !772

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -4                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.g)
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = add i64 %i.be, 3
  %i.bg = add i64 %i.az, %i.i
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.bh, 224
  br i1 %min.iters.check58, label %scalar.ph57.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.av
  %i.bk = and i64 %i.r, -4                        ; 2 uses
  %i.bl = add i64 %i.bk, %i.i
  %i.bm = zext nneg i32 %.v.v.i to i64            ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %umax = call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.g)
  %i.bo = add i64 %umax, %i.bm
  %i.bp = add i64 %i.bo, 3
  %i.bq = add i64 %i.bk, %i.i
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = and i64 %i.bs, 9223372036854775806
  %i.bu = getelementptr i8, ptr %0, i64 %.027
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bt
  %scevgep51 = getelementptr i8, ptr %i.bv, i64 4
  %scevgep52 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.bw = and i64 %i.br, -4
  %i.bx = add i64 %bc.resume.val48, %i.bw
  %i.by = add i64 %i.bx, -2
  %i.bz = sub i64 %i.by, %i.bm
  %i.ca = sub i64 %.0, %bc.resume.val48
  %i.cb = getelementptr i8, ptr %.029, i64 %i.bz
  %scevgep53 = getelementptr i8, ptr %i.cb, i64 %i.ca
  %bound054 = icmp ult ptr %scevgep50, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %scalar.ph57.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck49
  %i.cc = and i64 %i.bj, 7                        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = select i1 %i.cd, i64 8, i64 %i.cc
  %n.vec60 = sub nsw i64 %i.bj, %i.ce             ; 3 uses
  %i.cf = shl i64 %n.vec60, 1
  %i.cg = add i64 %i.av, %i.cf
  %i.ch = shl i64 %n.vec60, 2
  %i.ci = add i64 %i.ay, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next63, %vector.body61 ] ; 3 uses
  %i.ck = shl nuw i64 %index62, 1
  %i.cl = shl nuw i64 %index62, 2
  %i.cm = add nuw i64 %i.ay, %i.cl                ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.029, i64 %i.cm
  %i.co = getelementptr i8, ptr %.029, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = getelementptr i8, ptr %.029, i64 %i.cm
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %.029, i64 %i.cm
  %i.ct = getelementptr i8, ptr %i.cs, i64 12
  %i.cu = getelementptr i8, ptr %.029, i64 %i.cm
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = getelementptr i8, ptr %.029, i64 %i.cm
  %i.cx = getelementptr i8, ptr %i.cw, i64 20
  %i.cy = getelementptr i8, ptr %.029, i64 %i.cm
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  %i.da = getelementptr i8, ptr %.029, i64 %i.cm
  %i.db = getelementptr i8, ptr %i.da, i64 28
  %i.dc = load i16, ptr %i.cn, align 2, !alias.scope !773
  %i.dd = load i16, ptr %i.cp, align 2, !alias.scope !773
  %i.de = load i16, ptr %i.cr, align 2, !alias.scope !773
  %i.df = load i16, ptr %i.ct, align 2, !alias.scope !773
  %i.dg = load i16, ptr %i.cv, align 2, !alias.scope !773
  %i.dh = load i16, ptr %i.cx, align 2, !alias.scope !773
  %i.di = load i16, ptr %i.cz, align 2, !alias.scope !773
  %i.dj = load i16, ptr %i.db, align 2, !alias.scope !773
  %i.dk = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 1
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 2
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 3
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 4
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 5
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 6
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  store <8 x i16> %i.dr, ptr %i.ds, align 2, !alias.scope !776, !noalias !773
  %index.next63 = add nuw i64 %index62, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.dt, label %scalar.ph57.preheader, label %vector.body61, !llvm.loop !778

scalar.ph57.preheader:                            ; preds = %vector.body61, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.cg, %vector.body61 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.ci, %vector.body61 ]
  br label %scalar.ph57

scalar.ph57:                                      ; preds = %scalar.ph57.preheader, %scalar.ph57
  %.128 = phi i64 [ %i.dx, %scalar.ph57 ], [ %.128.ph, %scalar.ph57.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.dy, %scalar.ph57 ], [ %.1.ph, %scalar.ph57.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i16 %i.dv, ptr %i.dw, align 2
  %i.dx = add nuw nsw i64 %.128, 2                ; 2 uses
  %i.dy = add nuw nsw i64 %.1, 4                  ; 2 uses
  %i.dz = icmp samesign ult i64 %i.dy, %i.g
  br i1 %i.dz, label %scalar.ph57, label %bb.f, !llvm.loop !779

bb.f:                                             ; preds = %scalar.ph57
  %i.ea = icmp eq i64 %i.dx, %i.g
  call void @llvm.assume(i1 %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 10 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !487
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !780
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]  ; 5 uses
  %i.o = add nsw i64 %i.i, 8
  %i.p = call i64 @llvm.smax.i64(i64 %i.o, i64 %i.g)
  %i.q = xor i64 %i.i, -1
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 224
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.u = add nsw i64 %i.i, 8
  %smax = call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  %i.v = xor i64 %i.i, -1
  %i.w = add i64 %smax, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = and i64 %i.x, 9223372036854775804
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 4
  %scevgep44 = getelementptr i8, ptr %1, i64 %i.i
  %i.aa = and i64 %i.w, -8
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.i
  %scevgep45 = getelementptr i8, ptr %i.ac, i64 4
  %bound0 = icmp ult ptr %0, %scevgep45
  %bound1 = icmp ult ptr %scevgep44, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %i.t, 7                         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec = sub nsw i64 %i.t, %i.af                ; 3 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = shl i64 %n.vec, 3
  %i.ai = add i64 %i.ah, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = shl nuw i64 %index, 2
  %i.ak = shl i64 %index, 3
  %i.al = add i64 %i.ak, %i.i                     ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %1, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %wide.vec = load <8 x i32>, ptr %i.am, align 4, !alias.scope !784
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.ao, align 4, !alias.scope !784
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %strided.vec, ptr %i.ap, align 4, !alias.scope !787, !noalias !784
  store <4 x i32> %strided.vec47, ptr %i.aq, align 4, !alias.scope !787, !noalias !784
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %scalar.ph, label %vector.body, !llvm.loop !789

scalar.ph:                                        ; preds = %vector.body, %vector.memcheck, %bb.c
  %bc.resume.val = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %i.ag, %vector.body ]
  %bc.resume.val48 = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %bb.c ], [ %i.ai, %vector.body ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %scalar.ph, %bb.d
  %.027 = phi i64 [ %bc.resume.val, %scalar.ph ], [ %i.av, %bb.d ] ; 3 uses
  %.0 = phi i64 [ %bc.resume.val48, %scalar.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add i64 %.027, 4                        ; 6 uses
  %i.aw = add nsw i64 %.0, 8                      ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.g
  br i1 %i.ax, label %bb.d, label %bb.e, !llvm.loop !790

bb.e:                                             ; preds = %bb.d
  %i.ay = sub i64 %i.aw, %i.g                     ; 5 uses
  %i.az = and i64 %i.r, -8                        ; 2 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add i64 %i.az, %i.i
  %i.bc = add i64 %i.bb, 8
  %i.bd = sub i64 %i.bc, %i.ba
  %i.be = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.g)
  %i.bf = add i64 %i.be, %i.ba
  %i.bg = xor i64 %i.i, -1
  %i.bh = add i64 %i.bf, %i.bg
  %i.bi = sub i64 %i.bh, %i.az                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.bi, 416
  br i1 %min.iters.check58, label %scalar.ph57.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %bb.e
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.av
  %i.bl = and i64 %i.r, -8                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.i
  %i.bn = add i64 %i.bm, 8
  %i.bo = zext nneg i32 %.v.v.i to i64            ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %umax = call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.g)
  %i.bq = add i64 %umax, %i.bo
  %i.br = xor i64 %i.i, -1
  %i.bs = add i64 %i.bq, %i.br
  %i.bt = sub i64 %i.bs, %i.bl                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = and i64 %i.bu, 9223372036854775804
  %i.bw = getelementptr i8, ptr %0, i64 %.027
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %scevgep51 = getelementptr i8, ptr %i.bx, i64 8
  %scevgep52 = getelementptr i8, ptr %.029, i64 %i.ay
  %i.by = and i64 %i.bt, -8
  %i.bz = add i64 %bc.resume.val48, %i.by
  %i.ca = add i64 %i.bz, 4
  %i.cb = sub i64 %i.ca, %i.bo
  %i.cc = sub i64 %.0, %bc.resume.val48
  %i.cd = getelementptr i8, ptr %.029, i64 %i.cb
  %scevgep53 = getelementptr i8, ptr %i.cd, i64 %i.cc
  %bound054 = icmp ult ptr %scevgep50, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %scalar.ph57.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck49
  %i.ce = and i64 %i.bk, 7                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 8, i64 %i.ce
  %n.vec60 = sub nsw i64 %i.bk, %i.cg             ; 3 uses
  %i.ch = shl i64 %n.vec60, 2
  %i.ci = add i64 %i.av, %i.ch
  %i.cj = shl i64 %n.vec60, 3
  %i.ck = add i64 %i.ay, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 3 uses
  %i.cm = shl nuw i64 %index62, 2
  %i.cn = shl nuw i64 %index62, 3
  %i.co = add nuw i64 %i.ay, %i.cn                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.029, i64 %i.co
  %i.cq = getelementptr i8, ptr %.029, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 32
  %wide.vec63 = load <8 x i32>, ptr %i.cp, align 4, !alias.scope !791
  %strided.vec64 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec65 = load <8 x i32>, ptr %i.cr, align 4, !alias.scope !791
  %strided.vec66 = shufflevector <8 x i32> %wide.vec65, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %strided.vec64, ptr %i.cs, align 4, !alias.scope !794, !noalias !791
  store <4 x i32> %strided.vec66, ptr %i.ct, align 4, !alias.scope !794, !noalias !791
  %index.next67 = add nuw i64 %index62, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.cu, label %scalar.ph57.preheader, label %vector.body61, !llvm.loop !796

scalar.ph57.preheader:                            ; preds = %vector.body61, %vector.memcheck49, %bb.e
  %.128.ph = phi i64 [ %i.av, %vector.memcheck49 ], [ %i.av, %bb.e ], [ %i.ci, %vector.body61 ]
  %.1.ph = phi i64 [ %i.ay, %vector.memcheck49 ], [ %i.ay, %bb.e ], [ %i.ck, %vector.body61 ]
  br label %scalar.ph57

scalar.ph57:                                      ; preds = %scalar.ph57.preheader, %scalar.ph57
  %.128 = phi i64 [ %i.cy, %scalar.ph57 ], [ %.128.ph, %scalar.ph57.preheader ] ; 2 uses
  %.1 = phi i64 [ %i.cz, %scalar.ph57 ], [ %.1.ph, %scalar.ph57.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i32 %i.cw, ptr %i.cx, align 4
  %i.cy = add nuw nsw i64 %.128, 4                ; 2 uses
  %i.cz = add nuw nsw i64 %.1, 8                  ; 2 uses
  %i.da = icmp samesign ult i64 %i.cz, %i.g
  br i1 %i.da, label %scalar.ph57, label %bb.f, !llvm.loop !797

bb.f:                                             ; preds = %scalar.ph57
  %i.db = icmp eq i64 %i.cy, %i.g
  call void @llvm.assume(i1 %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve_uzp_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !487
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !798
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i64 [ 0, %bb.c ], [ %i.r, %bb.d ]   ; 2 uses
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.s, %bb.d ]  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i64 %i.p, ptr %i.q, align 8
  %i.r = add nuw nsw i64 %.027, 8                 ; 2 uses
  %i.s = add nsw i64 %.0, 16                      ; 3 uses
  %i.t = icmp slt i64 %i.s, %i.g
  br i1 %i.t, label %bb.d, label %bb.e, !llvm.loop !802

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 %i.s, %i.g
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.128 = phi i64 [ %i.r, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.u, %bb.e ], [ %i.z, %bb.f ]  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 %.1
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.128
  store i64 %i.w, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.128, 8                 ; 2 uses
  %i.z = add nuw nsw i64 %.1, 16                  ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.g
  br i1 %i.aa, label %bb.f, label %bb.g, !llvm.loop !803

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %i.y, %i.g
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local void @helper_sve2_uzp_q(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #7 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !487
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !804
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i64 [ 0, %bb.c ], [ %i.r, %bb.d ]   ; 2 uses
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.s, %bb.d ]  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.0
  %i.p = load i128, ptr %i.o, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i128 %i.p, ptr %i.q, align 16
  %i.r = add nuw nsw i64 %.027, 16                ; 2 uses
  %i.s = add nsw i64 %.0, 32                      ; 3 uses
  %i.t = icmp slt i64 %i.s, %i.g
  br i1 %i.t, label %bb.d, label %bb.e, !llvm.loop !808

end_hunk_0
