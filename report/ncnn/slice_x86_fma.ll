Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86_fma?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn13Slice_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.dv = phi ptr [ %i.dj, %.lr.ph1443 ], [ %i.fm, %bb.x ]
  %.07851442 = phi i64 [ 0, %.lr.ph1443 ], [ %i.fk, %bb.x ] ; 6 uses
  %.07861441 = phi i32 [ 0, %.lr.ph1443 ], [ %i.fj, %bb.x ] ; 4 uses
  br i1 %.not810, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dw = add nsw i64 %i.du, -1
  %i.dx = icmp eq i64 %.07851442, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dy = sub nsw i32 %i.dg, %.07861441
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.07851442
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !28 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 0
  %i.ec = select i1 %i.eb, i32 %i.dg, i32 0
  %i.ed = sub i32 %i.ea, %.07861441
  %i.ee = add i32 %i.ed, %i.ec
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07851442
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !28 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, -233
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ei = sub nsw i32 %i.dg, %.07861441
  %i.ej = sext i32 %i.ei to i64
  %i.ek = sub nuw i64 %i.du, %.07851442
  %i.el = udiv i64 %i.ej, %i.ek
  %i.em = trunc i64 %i.el to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.r
  %.0784 = phi i32 [ %i.dy, %bb.q ], [ %i.ee, %bb.r ], [ %i.em, %bb.t ], [ %i.eg, %bb.s ] ; 4 uses
  %i.en = load i8, ptr %i.dq, align 1, !tbaa !46, !range !47, !noundef !48
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = and i32 %.0784, 7
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = and i32 %.0784, 3
  %i.es = icmp eq i32 %i.er, 0
  %i.et = select i1 %i.es, i32 4, i32 1
  %i.eu = select i1 %i.eq, i32 8, i32 %i.et
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0783 = phi i32 [ %i.eu, %bb.v ], [ 1, %bb.u ] ; 3 uses
  %i.ev = zext nneg i32 %.0783 to i64
  %i.ew = mul i64 %i.ds, %i.ev
  %i.ex = getelementptr inbounds nuw [72 x i8], ptr %i.dv, i64 %.07851442 ; 4 uses
  %i.ey = sdiv i32 %.0784, %.0783
  %i.ez = load ptr, ptr %i.dt, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ex, i32 noundef %i.dd, i32 noundef %i.ey, i64 noundef %i.ew, i32 noundef %.0783, ptr noundef %i.ez)
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !19
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.critedge848, label %_ZNK4ncnn3Mat5emptyEv.exit1050

_ZNK4ncnn3Mat5emptyEv.exit1050:                   ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !50
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.fd, %i.fg
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.critedge848, label %bb.x

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1050
  %i.fj = add nsw i32 %.0784, %.07861441
  %i.fk = add nuw i64 %.07851442, 1               ; 2 uses
  %i.fl = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.fm = load ptr, ptr %2, align 8, !tbaa !23    ; 25 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 72                ; 10 uses
  %.not811 = icmp ult i64 %i.fk, %i.fq
  br i1 %.not811, label %bb.o, label %.critedge843, !llvm.loop !63

.critedge843:                                     ; preds = %bb.x
  %i.fr = icmp eq ptr %i.fl, %i.fm
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !27 ; 4 uses
  br i1 %i.fr, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge843
  %min.iters.check = icmp ult i64 %i.fq, 4
  br i1 %min.iters.check, label %.lr.ph1447.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1807 = icmp ult i64 %i.fq, 16
  br i1 %min.iters.check1807, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fu = and i64 %i.fq, 12
  %n.vec = and i64 %i.fq, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ft, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ih, %vector.body ]
  %vec.phi1808 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ii, %vector.body ]
  %vec.phi1809 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ij, %vector.body ]
  %vec.phi1810 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ik, %vector.body ]
  %i.fv = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.fx = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.fy = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.ga = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gc = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gd = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gg = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gh = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gi = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gj = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gk = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 168
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 240
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 312
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 384
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 456
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 528
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 600
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 672
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 744
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 816
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gh, i64 888
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 960
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 1032
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 1104
  %i.hb = load i32, ptr %i.gl, align 4, !tbaa !28
  %i.hc = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.hd = load i32, ptr %i.gn, align 4, !tbaa !28
  %i.he = load i32, ptr %i.go, align 4, !tbaa !28
  %i.hf = insertelement <4 x i32> poison, i32 %i.hb, i64 0
  %i.hg = insertelement <4 x i32> %i.hf, i32 %i.hc, i64 1
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 2
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 3
  %i.hj = load i32, ptr %i.gp, align 4, !tbaa !28
  %i.hk = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.hl = load i32, ptr %i.gr, align 4, !tbaa !28
  %i.hm = load i32, ptr %i.gs, align 4, !tbaa !28
  %i.hn = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hk, i64 1
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hl, i64 2
  %i.hq = insertelement <4 x i32> %i.hp, i32 %i.hm, i64 3
  %i.hr = load i32, ptr %i.gt, align 4, !tbaa !28
  %i.hs = load i32, ptr %i.gu, align 4, !tbaa !28
  %i.ht = load i32, ptr %i.gv, align 4, !tbaa !28
  %i.hu = load i32, ptr %i.gw, align 4, !tbaa !28
  %i.hv = insertelement <4 x i32> poison, i32 %i.hr, i64 0
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 1
  %i.hx = insertelement <4 x i32> %i.hw, i32 %i.ht, i64 2
  %i.hy = insertelement <4 x i32> %i.hx, i32 %i.hu, i64 3
  %i.hz = load i32, ptr %i.gx, align 4, !tbaa !28
  %i.ia = load i32, ptr %i.gy, align 4, !tbaa !28
  %i.ib = load i32, ptr %i.gz, align 4, !tbaa !28
  %i.ic = load i32, ptr %i.ha, align 4, !tbaa !28
  %i.id = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %i.ie = insertelement <4 x i32> %i.id, i32 %i.ia, i64 1
  %i.if = insertelement <4 x i32> %i.ie, i32 %i.ib, i64 2
  %i.ig = insertelement <4 x i32> %i.if, i32 %i.ic, i64 3
  %i.ih = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hi, <4 x i32> %vec.phi) ; 2 uses
  %i.ii = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hq, <4 x i32> %vec.phi1808) ; 2 uses
  %i.ij = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hy, <4 x i32> %vec.phi1809) ; 2 uses
  %i.ik = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ig, <4 x i32> %vec.phi1810) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ih, <4 x i32> %i.ii)
  %rdx.minmax1811 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.ij)
  %rdx.minmax1812 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1811, <4 x i32> %i.ik)
  %i.im = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1812) ; 3 uses
  %cmp.n = icmp eq i64 %i.fq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1447.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.im, %vec.epilog.iter.check ], [ %i.ft, %vector.main.loop.iter.check ]
  %broadcast.splatinsert1815 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat1816 = shufflevector <4 x i32> %broadcast.splatinsert1815, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1813 = and i64 %i.fq, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1816 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1818, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1817 = phi <4 x i32> [ %broadcast.splat1816, %vec.epilog.ph ], [ %i.jd, %vec.epilog.vector.body ]
  %i.in = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index1816
  %i.io = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index1816
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index1816
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %index1816
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 96
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 168
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 240
  %i.iv = load i32, ptr %i.ir, align 4, !tbaa !28
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !28
  %i.ix = load i32, ptr %i.it, align 4, !tbaa !28
  %i.iy = load i32, ptr %i.iu, align 4, !tbaa !28
  %i.iz = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %i.ja = insertelement <4 x i32> %i.iz, i32 %i.iw, i64 1
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 2
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 3
  %i.jd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.jc, <4 x i32> %vec.phi1817) ; 2 uses
  %index.next1818 = add nuw i64 %index1816, 4     ; 2 uses
  %i.je = icmp eq i64 %index.next1818, %n.vec1813
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jf = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.jd) ; 2 uses
  %cmp.n1819 = icmp eq i64 %i.fq, %n.vec1813
  br i1 %cmp.n1819, label %._crit_edge, label %.lr.ph1447.preheader

.lr.ph1447.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07821446.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1813, %vec.epilog.middle.block ]
  %.014031444.ph = phi i32 [ %i.ft, %iter.check ], [ %i.im, %vec.epilog.iter.check ], [ %i.jf, %vec.epilog.middle.block ]
  br label %.lr.ph1447

._crit_edge:                                      ; preds = %.lr.ph1447, %middle.block, %vec.epilog.middle.block, %.critedge843.thread, %.critedge843
  %.01403.lcssa = phi i32 [ %i.ft, %.critedge843 ], [ %i.dl, %.critedge843.thread ], [ %i.jf, %vec.epilog.middle.block ], [ %i.im, %middle.block ], [ %.sroa.speculated1391, %.lr.ph1447 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !17 ; 2 uses
  %i.jj = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.jj, ptr %4, align 16, !tbaa !56
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jl = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.jl, ptr %i.jk, align 16, !tbaa !25
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jn = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.jn, ptr %i.jm, align 8, !tbaa !27
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !18
  store ptr %i.jq, ptr %i.jo, align 16, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.js = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.js, ptr %i.jr, align 8, !tbaa !28
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !50
  store i32 %i.jv, ptr %i.jt, align 8, !tbaa !50
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !20
  store i64 %i.jy, ptr %i.jw, align 16, !tbaa !20
  %.not.i1087 = icmp eq ptr %i.ji, null
  br i1 %.not.i1087, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.jz = atomicrmw add ptr %i.ji, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.y
  %i.ka = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.y ]
  %i.kb = icmp sgt i32 %i.ka, %.01403.lcssa
  br i1 %i.kb, label %bb.z, label %bb.ai

.lr.ph1447:                                       ; preds = %.lr.ph1447.preheader, %.lr.ph1447
  %.07821446 = phi i64 [ %i.kf, %.lr.ph1447 ], [ %.07821446.ph, %.lr.ph1447.preheader ] ; 2 uses
  %.014031444 = phi i32 [ %.sroa.speculated1391, %.lr.ph1447 ], [ %.014031444.ph, %.lr.ph1447.preheader ]
  %i.kc = getelementptr inbounds nuw [72 x i8], ptr %i.fm, i64 %.07821446
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !28
  %.sroa.speculated1391 = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %.014031444) ; 2 uses
  %i.kf = add nuw i64 %.07821446, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.kf, %i.fq
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1447, !llvm.loop !66

bb.z:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.01403.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.kg = load ptr, ptr %4, align 16, !tbaa !19
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %.critedge848.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1049

_ZNK4ncnn3Mat5emptyEv.exit1049:                   ; preds = %bb.aa
  %i.ki = load i64, ptr %i.jw, align 16, !tbaa !20
  %i.kj = load i32, ptr %i.jt, align 8, !tbaa !50
  %i.kk = sext i32 %i.kj to i64
  %i.kl = mul i64 %i.ki, %i.kk
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %.critedge848.critedge, label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.kn = landingpad { ptr, i32 }
          cleanup
  %i.ko = load ptr, ptr %i.jg, align 8, !tbaa !17 ; 2 uses
  %.not.i904 = icmp eq ptr %i.ko, null
  br i1 %.not.i904, label %_ZN4ncnn3MatD2Ev.exit902, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kp = atomicrmw add ptr %i.ko, i32 -1 acq_rel, align 4
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit902

bb.ad:                                            ; preds = %bb.ac
  %i.kr = load ptr, ptr %i.jo, align 16, !tbaa !18 ; 3 uses
  %.not3.i905 = icmp eq ptr %i.kr, null
  %i.ks = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i905, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  invoke void %i.kv(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef %i.ks)
          to label %_ZN4ncnn3MatD2Ev.exit902 unwind label %bb.ah, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %.not.i1039 = icmp eq ptr %i.ks, null
  br i1 %.not.i1039, label %_ZN4ncnn3MatD2Ev.exit902, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ks) #9
  br label %_ZN4ncnn3MatD2Ev.exit902

bb.ah:                                            ; preds = %bb.ae
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #13
  unreachable

_ZN4ncnn3MatD2Ev.exit902:                         ; preds = %bb.ac, %bb.ab, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ee

bb.ai:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1049, %_ZN4ncnn3Mat6addrefEv.exit
  %i.ky = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.kz = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not1606 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not1606, label %._crit_edge1499, label %.lr.ph1498

.lr.ph1498:                                       ; preds = %bb.ai
  %i.la = load ptr, ptr %4, align 16, !tbaa !19
  %i.lb = icmp eq i32 %.01403.lcssa, 4
  %i.lc = shl i32 %i.dd, 2                        ; 2 uses
  %i.ld = sext i32 %i.lc to i64                   ; 6 uses
  %i.le = icmp sgt i32 %i.dd, 0                   ; 3 uses
  %i.lf = shl i32 %i.dd, 3                        ; 2 uses
  %i.lg = sext i32 %i.lf to i64                   ; 5 uses
  %i.lh = icmp eq i32 %.01403.lcssa, 1
  %i.li = sext i32 %i.dd to i64                   ; 4 uses
  %i.lj = shl i32 %i.dd, 1
  %i.lk = sext i32 %i.lj to i64                   ; 4 uses
  %i.ll = mul i32 %i.dd, 3
  %i.lm = sext i32 %i.ll to i64                   ; 4 uses
  %i.ln = mul i32 %i.dd, 5
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  %i.lp = mul i32 %i.dd, 6
  %i.lq = sext i32 %i.lp to i64                   ; 2 uses
  %i.lr = mul i32 %i.dd, 7
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = add i32 %i.dd, -1
  %i.lu = zext i32 %i.lt to i64                   ; 2 uses
  %i.lv = shl nuw nsw i64 %i.lu, 4
  %i.lw = shl nsw i64 %i.lm, 2                    ; 2 uses
  %i.lx = shl nuw nsw i64 %i.lu, 2                ; 4 uses
  %i.ly = shl nsw i64 %i.ld, 2
  %i.lz = shl nsw i64 %i.lk, 2                    ; 2 uses
  %i.ma = shl nsw i64 %i.li, 2                    ; 2 uses
  %i.mb = add i32 %i.dd, -1
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = shl nuw nsw i64 %i.mc, 5
  %i.me = shl nsw i64 %i.ls, 2                    ; 2 uses
  %i.mf = shl nuw nsw i64 %i.mc, 2                ; 8 uses
  %i.mg = shl nsw i64 %i.lg, 2
  %i.mh = shl nsw i64 %i.lq, 2                    ; 2 uses
  %i.mi = shl nsw i64 %i.lo, 2                    ; 2 uses
  %i.mj = shl nsw i64 %i.ld, 2                    ; 2 uses
  %i.mk = shl nsw i64 %i.lm, 2                    ; 2 uses
  %i.ml = shl nsw i64 %i.lk, 2                    ; 2 uses
  %i.mm = shl nsw i64 %i.li, 2                    ; 2 uses
  %i.mn = zext nneg i32 %i.dd to i64              ; 2 uses
  %min.iters.check1927 = icmp ult i32 %i.dd, 32
  %stride.check1897 = icmp slt i32 %i.lf, 0
  %n.vec1929 = and i64 %i.mn, 2147483640          ; 5 uses
  %i.mo = trunc nuw nsw i64 %n.vec1929 to i32
  %i.mp = shl nuw nsw i64 %n.vec1929, 5
  %i.mq = shl nuw nsw i64 %n.vec1929, 2           ; 8 uses
  %cmp.n1952 = icmp eq i64 %n.vec1929, %i.mn
  %i.mr = zext nneg i32 %i.dd to i64              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn13Slice_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.abg = add nsw i64 %i.abe, -1
  %i.abh = icmp eq i64 %.07061507, %i.abg
  br i1 %i.abh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.abi = sub nsw i32 %i.aas, %.07071506
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.07061507
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !28 ; 2 uses
  %i.abl = icmp slt i32 %i.abk, 0
  %i.abm = select i1 %i.abl, i32 %i.aas, i32 0
  %i.abn = sub i32 %i.abk, %.07071506
  %i.abo = add i32 %i.abn, %i.abm
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07061507
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !28 ; 2 uses
  %i.abr = icmp eq i32 %i.abq, -233
  br i1 %i.abr, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.abs = sub nsw i32 %i.aas, %.07071506
  %i.abt = sext i32 %i.abs to i64
  %i.abu = sub nuw i64 %i.abe, %.07061507
  %i.abv = udiv i64 %i.abt, %i.abu
  %i.abw = trunc i64 %i.abv to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bi, %bb.bj
  %.0705 = phi i32 [ %i.abi, %bb.bi ], [ %i.abo, %bb.bj ], [ %i.abw, %bb.bl ], [ %i.abq, %bb.bk ] ; 4 uses
  %i.abx = load i8, ptr %i.abc, align 1, !tbaa !46, !range !47, !noundef !48
  %i.aby = trunc nuw i8 %i.abx to i1
  br i1 %i.aby, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.abz = and i32 %.0705, 7
  %i.aca = icmp eq i32 %i.abz, 0
  %i.acb = and i32 %.0705, 3
  %i.acc = icmp eq i32 %i.acb, 0
  %i.acd = select i1 %i.acc, i32 4, i32 1
  %i.ace = select i1 %i.aca, i32 8, i32 %i.acd
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0702 = phi i32 [ %i.ace, %bb.bn ], [ 1, %bb.bm ] ; 3 uses
  %i.acf = load i64, ptr %i.a, align 8, !tbaa !26
  %i.acg = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ach = sext i32 %i.acg to i64
  %i.aci = udiv i64 %i.acf, %i.ach
  %i.acj = zext nneg i32 %.0702 to i64
  %i.ack = mul i64 %i.aci, %i.acj
  %i.acl = getelementptr inbounds nuw [72 x i8], ptr %i.abf, i64 %.07061507 ; 5 uses
  %i.acm = sdiv i32 %.0705, %.0702
  %i.acn = load ptr, ptr %i.abd, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.acl, i32 noundef %i.aak, i32 noundef %i.aam, i32 noundef %i.aao, i32 noundef %i.acm, i64 noundef %i.ack, i32 noundef %.0702, ptr noundef %i.acn)
  %i.aco = load ptr, ptr %i.acl, align 8, !tbaa !19
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %.critedge848, label %_ZNK4ncnn3Mat5emptyEv.exit1047

_ZNK4ncnn3Mat5emptyEv.exit1047:                   ; preds = %bb.bo
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acl, i64 64
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !20
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acl, i64 56
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !50
  %i.acu = sext i32 %i.act to i64
  %i.acv = mul i64 %i.acr, %i.acu
  %i.acw = icmp eq i64 %i.acv, 0
  br i1 %i.acw, label %.critedge848, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1047
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acl, i64 40
  store i32 %i.m, ptr %i.acx, align 8, !tbaa !24
  %i.acy = add nsw i32 %.0705, %.07071506
  %i.acz = add nuw i64 %.07061507, 1              ; 2 uses
  %i.ada = load ptr, ptr %i.aat, align 8, !tbaa !44 ; 2 uses
  %i.adb = load ptr, ptr %2, align 8, !tbaa !23   ; 25 uses
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = ptrtoint ptr %i.adb to i64
  %i.ade = sub i64 %i.adc, %i.add
  %i.adf = sdiv exact i64 %i.ade, 72              ; 10 uses
  %.not815 = icmp ult i64 %i.acz, %i.adf
  br i1 %.not815, label %bb.bg, label %.critedge854, !llvm.loop !93

.critedge854:                                     ; preds = %bb.bp
  %i.adg = icmp eq ptr %i.ada, %i.adb
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !27 ; 4 uses
  br i1 %i.adg, label %._crit_edge1514, label %iter.check1985

iter.check1985:                                   ; preds = %.critedge854
  %min.iters.check1964 = icmp ult i64 %i.adf, 4
  br i1 %min.iters.check1964, label %.lr.ph1513.preheader, label %vector.main.loop.iter.check1965

vector.main.loop.iter.check1965:                  ; preds = %iter.check1985
  %min.iters.check1966 = icmp ult i64 %i.adf, 16
  br i1 %min.iters.check1966, label %vec.epilog.ph1989, label %vector.ph1967

vector.ph1967:                                    ; preds = %vector.main.loop.iter.check1965
  %i.adj = and i64 %i.adf, 12
  %n.vec1968 = and i64 %i.adf, -16                ; 4 uses
  %broadcast.splatinsert1969 = insertelement <4 x i32> poison, i32 %i.adi, i64 0
  %broadcast.splat1970 = shufflevector <4 x i32> %broadcast.splatinsert1969, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1971

vector.body1971:                                  ; preds = %vector.ph1967, %vector.body1971
  %index1972 = phi i64 [ 0, %vector.ph1967 ], [ %index.next1977, %vector.body1971 ] ; 17 uses
  %vec.phi1973 = phi <4 x i32> [ %broadcast.splat1970, %vector.ph1967 ], [ %i.afw, %vector.body1971 ]
  %vec.phi1974 = phi <4 x i32> [ %broadcast.splat1970, %vector.ph1967 ], [ %i.afx, %vector.body1971 ]
  %vec.phi1975 = phi <4 x i32> [ %broadcast.splat1970, %vector.ph1967 ], [ %i.afy, %vector.body1971 ]
  %vec.phi1976 = phi <4 x i32> [ %broadcast.splat1970, %vector.ph1967 ], [ %i.afz, %vector.body1971 ]
  %i.adk = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adl = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adm = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adn = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.ado = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adp = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adq = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adr = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.ads = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adt = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adu = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adv = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adw = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adx = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.ady = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.adz = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1972
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adl, i64 96
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adm, i64 168
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 240
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ado, i64 312
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adp, i64 384
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 456
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 528
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 600
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 672
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 744
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 816
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 888
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 960
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 1032
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 1104
  %i.aeq = load i32, ptr %i.aea, align 4, !tbaa !28
  %i.aer = load i32, ptr %i.aeb, align 4, !tbaa !28
  %i.aes = load i32, ptr %i.aec, align 4, !tbaa !28
  %i.aet = load i32, ptr %i.aed, align 4, !tbaa !28
  %i.aeu = insertelement <4 x i32> poison, i32 %i.aeq, i64 0
  %i.aev = insertelement <4 x i32> %i.aeu, i32 %i.aer, i64 1
  %i.aew = insertelement <4 x i32> %i.aev, i32 %i.aes, i64 2
  %i.aex = insertelement <4 x i32> %i.aew, i32 %i.aet, i64 3
  %i.aey = load i32, ptr %i.aee, align 4, !tbaa !28
  %i.aez = load i32, ptr %i.aef, align 4, !tbaa !28
  %i.afa = load i32, ptr %i.aeg, align 4, !tbaa !28
  %i.afb = load i32, ptr %i.aeh, align 4, !tbaa !28
  %i.afc = insertelement <4 x i32> poison, i32 %i.aey, i64 0
  %i.afd = insertelement <4 x i32> %i.afc, i32 %i.aez, i64 1
  %i.afe = insertelement <4 x i32> %i.afd, i32 %i.afa, i64 2
  %i.aff = insertelement <4 x i32> %i.afe, i32 %i.afb, i64 3
  %i.afg = load i32, ptr %i.aei, align 4, !tbaa !28
  %i.afh = load i32, ptr %i.aej, align 4, !tbaa !28
  %i.afi = load i32, ptr %i.aek, align 4, !tbaa !28
  %i.afj = load i32, ptr %i.ael, align 4, !tbaa !28
  %i.afk = insertelement <4 x i32> poison, i32 %i.afg, i64 0
  %i.afl = insertelement <4 x i32> %i.afk, i32 %i.afh, i64 1
  %i.afm = insertelement <4 x i32> %i.afl, i32 %i.afi, i64 2
  %i.afn = insertelement <4 x i32> %i.afm, i32 %i.afj, i64 3
  %i.afo = load i32, ptr %i.aem, align 4, !tbaa !28
  %i.afp = load i32, ptr %i.aen, align 4, !tbaa !28
  %i.afq = load i32, ptr %i.aeo, align 4, !tbaa !28
  %i.afr = load i32, ptr %i.aep, align 4, !tbaa !28
  %i.afs = insertelement <4 x i32> poison, i32 %i.afo, i64 0
  %i.aft = insertelement <4 x i32> %i.afs, i32 %i.afp, i64 1
  %i.afu = insertelement <4 x i32> %i.aft, i32 %i.afq, i64 2
  %i.afv = insertelement <4 x i32> %i.afu, i32 %i.afr, i64 3
  %i.afw = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aex, <4 x i32> %vec.phi1973) ; 2 uses
  %i.afx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aff, <4 x i32> %vec.phi1974) ; 2 uses
  %i.afy = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afn, <4 x i32> %vec.phi1975) ; 2 uses
  %i.afz = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afv, <4 x i32> %vec.phi1976) ; 2 uses
  %index.next1977 = add nuw i64 %index1972, 16    ; 2 uses
  %i.aga = icmp eq i64 %index.next1977, %n.vec1968
  br i1 %i.aga, label %middle.block1978, label %vector.body1971, !llvm.loop !94

middle.block1978:                                 ; preds = %vector.body1971
  %rdx.minmax1979 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.afw, <4 x i32> %i.afx)
  %rdx.minmax1980 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1979, <4 x i32> %i.afy)
  %rdx.minmax1981 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1980, <4 x i32> %i.afz)
  %i.agb = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1981) ; 3 uses
  %cmp.n1982 = icmp eq i64 %i.adf, %n.vec1968
  br i1 %cmp.n1982, label %._crit_edge1514, label %vec.epilog.iter.check1987

vec.epilog.iter.check1987:                        ; preds = %middle.block1978
  %min.epilog.iters.check1988 = icmp eq i64 %i.adj, 0
  br i1 %min.epilog.iters.check1988, label %.lr.ph1513.preheader, label %vec.epilog.ph1989, !prof !55

vec.epilog.ph1989:                                ; preds = %vector.main.loop.iter.check1965, %vec.epilog.iter.check1987
  %vec.epilog.resume.val1983 = phi i64 [ %n.vec1968, %vec.epilog.iter.check1987 ], [ 0, %vector.main.loop.iter.check1965 ]
  %bc.merge.rdx1984 = phi i32 [ %i.agb, %vec.epilog.iter.check1987 ], [ %i.adi, %vector.main.loop.iter.check1965 ]
  %broadcast.splatinsert1993 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1984, i64 0
  %broadcast.splat1994 = shufflevector <4 x i32> %broadcast.splatinsert1993, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1990 = and i64 %i.adf, -4                 ; 3 uses
  br label %vec.epilog.vector.body1993

vec.epilog.vector.body1993:                       ; preds = %vec.epilog.vector.body1993, %vec.epilog.ph1989
  %index1994 = phi i64 [ %vec.epilog.resume.val1983, %vec.epilog.ph1989 ], [ %index.next1996, %vec.epilog.vector.body1993 ] ; 5 uses
  %vec.phi1995 = phi <4 x i32> [ %broadcast.splat1994, %vec.epilog.ph1989 ], [ %i.ags, %vec.epilog.vector.body1993 ]
  %i.agc = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1994
  %i.agd = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1994
  %i.age = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1994
  %i.agf = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %index1994
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 96
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 168
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agf, i64 240
  %i.agk = load i32, ptr %i.agg, align 4, !tbaa !28
  %i.agl = load i32, ptr %i.agh, align 4, !tbaa !28
  %i.agm = load i32, ptr %i.agi, align 4, !tbaa !28
  %i.agn = load i32, ptr %i.agj, align 4, !tbaa !28
  %i.ago = insertelement <4 x i32> poison, i32 %i.agk, i64 0
  %i.agp = insertelement <4 x i32> %i.ago, i32 %i.agl, i64 1
  %i.agq = insertelement <4 x i32> %i.agp, i32 %i.agm, i64 2
  %i.agr = insertelement <4 x i32> %i.agq, i32 %i.agn, i64 3
  %i.ags = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agr, <4 x i32> %vec.phi1995) ; 2 uses
  %index.next1996 = add nuw i64 %index1994, 4     ; 2 uses
  %i.agt = icmp eq i64 %index.next1996, %n.vec1990
  br i1 %i.agt, label %vec.epilog.middle.block1997, label %vec.epilog.vector.body1993, !llvm.loop !95

vec.epilog.middle.block1997:                      ; preds = %vec.epilog.vector.body1993
  %i.agu = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ags) ; 2 uses
  %cmp.n1998 = icmp eq i64 %i.adf, %n.vec1990
  br i1 %cmp.n1998, label %._crit_edge1514, label %.lr.ph1513.preheader

.lr.ph1513.preheader:                             ; preds = %iter.check1985, %vec.epilog.iter.check1987, %vec.epilog.middle.block1997
  %.07011512.ph = phi i64 [ 0, %iter.check1985 ], [ %n.vec1968, %vec.epilog.iter.check1987 ], [ %n.vec1990, %vec.epilog.middle.block1997 ]
  %.014051510.ph = phi i32 [ %i.adi, %iter.check1985 ], [ %i.agb, %vec.epilog.iter.check1987 ], [ %i.agu, %vec.epilog.middle.block1997 ]
  br label %.lr.ph1513

._crit_edge1514:                                  ; preds = %.lr.ph1513, %middle.block1978, %vec.epilog.middle.block1997, %.critedge854.thread, %.critedge854
  %.01405.lcssa = phi i32 [ %i.adi, %.critedge854 ], [ %i.aax, %.critedge854.thread ], [ %i.agu, %vec.epilog.middle.block1997 ], [ %i.agb, %middle.block1978 ], [ %.sroa.speculated, %.lr.ph1513 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.agv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !17 ; 2 uses
  %i.agy = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.agy, ptr %5, align 16, !tbaa !56
  %i.agz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aha = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.aha, ptr %i.agz, align 16, !tbaa !25
  %i.ahb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ahc = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.ahc, ptr %i.ahb, align 8, !tbaa !27
  %i.ahd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !18
  store ptr %i.ahf, ptr %i.ahd, align 16, !tbaa !18
  %i.ahg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ahh = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.ahh, ptr %i.ahg, align 8, !tbaa !28
  %i.ahi = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ahj = load i32, ptr %i.aap, align 8, !tbaa !50
  store i32 %i.ahj, ptr %i.ahi, align 8, !tbaa !50
  %i.ahk = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 6 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !20
  store i64 %i.ahm, ptr %i.ahk, align 16, !tbaa !20
  %.not.i1088 = icmp eq ptr %i.agx, null
  br i1 %.not.i1088, label %_ZN4ncnn3Mat6addrefEv.exit1089, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1514
  %i.ahn = atomicrmw add ptr %i.agx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1089

_ZN4ncnn3Mat6addrefEv.exit1089:                   ; preds = %._crit_edge1514, %bb.bq
  %i.aho = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ahp = icmp sgt i32 %i.aho, %.01405.lcssa
  br i1 %i.ahp, label %bb.br, label %bb.bu

.lr.ph1513:                                       ; preds = %.lr.ph1513.preheader, %.lr.ph1513
  %.07011512 = phi i64 [ %i.aht, %.lr.ph1513 ], [ %.07011512.ph, %.lr.ph1513.preheader ] ; 2 uses
  %.014051510 = phi i32 [ %.sroa.speculated, %.lr.ph1513 ], [ %.014051510.ph, %.lr.ph1513.preheader ]
  %i.ahq = getelementptr inbounds nuw [72 x i8], ptr %i.adb, i64 %.07011512
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ahs, i32 %.014051510) ; 2 uses
  %i.aht = add nuw i64 %.07011512, 1              ; 2 uses
  %exitcond1642.not = icmp eq i64 %i.aht, %i.adf
  br i1 %exitcond1642.not, label %._crit_edge1514, label %.lr.ph1513, !llvm.loop !96

bb.br:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1089
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.01405.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ahu = load ptr, ptr %5, align 16, !tbaa !19
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %.critedge848.critedge877, label %_ZNK4ncnn3Mat5emptyEv.exit1046

_ZNK4ncnn3Mat5emptyEv.exit1046:                   ; preds = %bb.bs
  %i.ahw = load i64, ptr %i.ahk, align 16, !tbaa !20
  %i.ahx = load i32, ptr %i.ahi, align 8, !tbaa !50
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = mul i64 %i.ahw, %i.ahy
  %i.aia = icmp eq i64 %i.ahz, 0
  br i1 %i.aia, label %.critedge848.critedge877, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.aib = landingpad { ptr, i32 }
          cleanup
  %i.aic = load ptr, ptr %i.agv, align 8, !tbaa !17 ; 2 uses
  %.not.i984 = icmp eq ptr %i.aic, null
  br i1 %.not.i984, label %_ZN4ncnn3MatD2Ev.exit882, label %bb.ci

bb.bu:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1046, %_ZN4ncnn3Mat6addrefEv.exit1089
  %i.aid = load ptr, ptr %i.aat, align 8, !tbaa !44 ; 2 uses
  %i.aie = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not1608 = icmp eq ptr %i.aid, %i.aie
  br i1 %.not1608, label %._crit_edge1589, label %.lr.ph1588

.lr.ph1588:                                       ; preds = %bb.bu
  %i.aif = icmp eq i32 %.01405.lcssa, 4
  %i.aig = icmp eq i32 %.01405.lcssa, 1
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1588, %bb.cb
  %i.aih = phi ptr [ %i.aie, %.lr.ph1588 ], [ %i.axy, %bb.cb ] ; 2 uses
  %i.aii = phi ptr [ %i.aid, %.lr.ph1588 ], [ %i.axz, %bb.cb ]
  %.06921586 = phi i64 [ 0, %.lr.ph1588 ], [ %i.aya, %bb.cb ] ; 2 uses
  %.06931585 = phi i32 [ 0, %.lr.ph1588 ], [ %.7700, %bb.cb ] ; 4 uses
  %i.aij = getelementptr inbounds nuw [72 x i8], ptr %i.aih, i64 %.06921586 ; 26 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 24 ; 3 uses
  %i.ail = load i32, ptr %i.aik, align 8          ; 2 uses
  %i.aim = icmp eq i32 %i.ail, 8
  %or.cond857 = select i1 %i.aif, i1 %i.aim, i1 false
  br i1 %or.cond857, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aij, i64 44
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !43
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !52
  %i.air = mul i32 %i.aiq, %i.aio
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aij, i64 52
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !58
  %i.aiu = mul i32 %i.air, %i.ait                 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !50 ; 3 uses
  %i.aix = icmp sgt i32 %i.aiw, 0
  br i1 %i.aix, label %.noexc1085.lr.ph, label %.thread1419

.noexc1085.lr.ph:                                 ; preds = %bb.bw
  %i.aiy = load ptr, ptr %5, align 16, !tbaa !19, !noalias !157 ; 2 uses
  %i.aiz = load i64, ptr %i.ahk, align 16, !tbaa !20, !noalias !157
  %i.aja = load i64, ptr %i.agz, align 16, !tbaa !25, !noalias !157
  %factor.op.mul1525 = mul i64 %i.aiz, %i.aja     ; 2 uses
  %i.ajb = load ptr, ptr %i.aij, align 8, !tbaa !19, !noalias !158
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !20, !noalias !158
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !25, !noalias !158
  %factor.op.mul1528 = mul i64 %i.ajd, %i.ajf
  %i.ajg = icmp sgt i32 %i.aiu, 0
  br i1 %i.ajg, label %.noexc1085.us.preheader, label %.noexc1085.preheader

.noexc1085.preheader:                             ; preds = %.noexc1085.lr.ph
  %i.ajh = shl nuw i32 %i.aiw, 1
  %i.aji = add i32 %.06931585, %i.ajh
  br label %.thread1419

.noexc1085.us.preheader:                          ; preds = %.noexc1085.lr.ph
  %i.ajj = sext i32 %.06931585 to i64
  %wide.trip.count1651 = zext nneg i32 %i.aiw to i64
  br label %.noexc1085.us

.noexc1085.us:                                    ; preds = %.noexc1085.us.preheader, %._crit_edge1521.us
  %indvars.iv1646 = phi i64 [ %i.ajj, %.noexc1085.us.preheader ], [ %indvars.iv.next1647, %._crit_edge1521.us ] ; 3 uses
  %indvars.iv1644 = phi i64 [ 0, %.noexc1085.us.preheader ], [ %indvars.iv.next1645, %._crit_edge1521.us ] ; 2 uses
  %.reass.us1530 = mul i64 %factor.op.mul1525, %indvars.iv1646
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.reass.us1530
  %i.ajl = add nsw i64 %indvars.iv1646, 1
  %.reass1527.us = mul i64 %factor.op.mul1525, %i.ajl
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %.reass1527.us
  %.reass1529.us = mul i64 %factor.op.mul1528, %indvars.iv1644
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %.reass1529.us
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc1085.us, %bb.bx
  %.06871519.us = phi i32 [ 0, %.noexc1085.us ], [ %i.akm, %bb.bx ]
  %.06881518.us = phi ptr [ %i.ajn, %.noexc1085.us ], [ %i.akl, %bb.bx ] ; 9 uses
  %.06891517.us = phi ptr [ %i.ajm, %.noexc1085.us ], [ %i.akk, %bb.bx ] ; 5 uses
  %.06901516.us = phi ptr [ %i.ajk, %.noexc1085.us ], [ %i.akj, %bb.bx ] ; 5 uses
  %i.ajo = load float, ptr %.06901516.us, align 4, !tbaa !140
  store float %i.ajo, ptr %.06881518.us, align 4, !tbaa !140
  %i.ajp = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 4
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !140
  %i.ajr = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 4
  store float %i.ajq, ptr %i.ajr, align 4, !tbaa !140
  %i.ajs = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 8
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !140
  %i.aju = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 8
  store float %i.ajt, ptr %i.aju, align 4, !tbaa !140
  %i.ajv = getelementptr inbounds nuw i8, ptr %.06901516.us, i64 12
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !140
  %i.ajx = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 12
  store float %i.ajw, ptr %i.ajx, align 4, !tbaa !140
  %i.ajy = load float, ptr %.06891517.us, align 4, !tbaa !140
  %i.ajz = getelementptr inbounds nuw i8, ptr %.06881518.us, i64 16
end_hunk_1
begin_hunk_2_@_ZNK4ncnn13Slice_x86_fma19forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.dr = phi ptr [ %i.df, %.lr.ph1438 ], [ %i.fi, %bb.w ]
  %.07811437 = phi i64 [ 0, %.lr.ph1438 ], [ %i.fg, %bb.w ] ; 6 uses
  %.07821436 = phi i32 [ 0, %.lr.ph1438 ], [ %i.ff, %bb.w ] ; 4 uses
  br i1 %.not806, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = add nsw i64 %i.dq, -1
  %i.dt = icmp eq i64 %.07811437, %i.ds
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.du = sub nsw i32 %i.dc, %.07821436
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.07811437
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !28 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  %i.dy = select i1 %i.dx, i32 %i.dc, i32 0
  %i.dz = sub i32 %i.dw, %.07821436
  %i.ea = add i32 %i.dz, %i.dy
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.07811437
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !28 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -233
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = sub nsw i32 %i.dc, %.07821436
  %i.ef = sext i32 %i.ee to i64
  %i.eg = sub nuw i64 %i.dq, %.07811437
  %i.eh = udiv i64 %i.ef, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p, %bb.q
  %.0780 = phi i32 [ %i.du, %bb.p ], [ %i.ea, %bb.q ], [ %i.ei, %bb.s ], [ %i.ec, %bb.r ] ; 4 uses
  %i.ej = load i8, ptr %i.dm, align 1, !tbaa !46, !range !47, !noundef !48
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.el = and i32 %.0780, 7
  %i.em = icmp eq i32 %i.el, 0
  %i.en = and i32 %.0780, 3
  %i.eo = icmp eq i32 %i.en, 0
  %i.ep = select i1 %i.eo, i32 4, i32 1
  %i.eq = select i1 %i.em, i32 8, i32 %i.ep
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0779 = phi i32 [ %i.eq, %bb.u ], [ 1, %bb.t ] ; 3 uses
  %i.er = zext nneg i32 %.0779 to i64
  %i.es = mul i64 %i.do, %i.er
  %i.et = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %.07811437 ; 4 uses
  %i.eu = sdiv i32 %.0780, %.0779
  %i.ev = load ptr, ptr %i.dp, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.et, i32 noundef %i.cz, i32 noundef %i.eu, i64 noundef %i.es, i32 noundef %.0779, ptr noundef %i.ev)
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !19
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %.critedge844, label %_ZNK4ncnn3Mat5emptyEv.exit1045

_ZNK4ncnn3Mat5emptyEv.exit1045:                   ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !50
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul i64 %i.ez, %i.fc
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.critedge844, label %bb.w

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1045
  %i.ff = add nsw i32 %.0780, %.07821436
  %i.fg = add nuw i64 %.07811437, 1               ; 2 uses
  %i.fh = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  %i.fi = load ptr, ptr %2, align 8, !tbaa !23    ; 25 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 72                ; 10 uses
  %.not807 = icmp ult i64 %i.fg, %i.fm
  br i1 %.not807, label %bb.n, label %.critedge839, !llvm.loop !184

.critedge839:                                     ; preds = %bb.w
  %i.fn = icmp eq ptr %i.fh, %i.fi
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !27 ; 4 uses
  br i1 %i.fn, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge839
  %min.iters.check = icmp ult i64 %i.fm, 4
  br i1 %min.iters.check, label %.lr.ph1442.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1801 = icmp ult i64 %i.fm, 16
  br i1 %min.iters.check1801, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fq = and i64 %i.fm, 12
  %n.vec = and i64 %i.fm, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.id, %vector.body ]
  %vec.phi1802 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ie, %vector.body ]
  %vec.phi1803 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.if, %vector.body ]
  %vec.phi1804 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ig, %vector.body ]
  %i.fr = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fs = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.ft = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fu = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fv = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fx = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fy = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.ga = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gc = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gd = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gg = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 168
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 240
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 312
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 384
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 456
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 528
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 600
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 672
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 744
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 816
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 888
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 960
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 1032
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 1104
  %i.gx = load i32, ptr %i.gh, align 4, !tbaa !28
  %i.gy = load i32, ptr %i.gi, align 4, !tbaa !28
  %i.gz = load i32, ptr %i.gj, align 4, !tbaa !28
  %i.ha = load i32, ptr %i.gk, align 4, !tbaa !28
  %i.hb = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 1
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 2
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 3
  %i.hf = load i32, ptr %i.gl, align 4, !tbaa !28
  %i.hg = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.hh = load i32, ptr %i.gn, align 4, !tbaa !28
  %i.hi = load i32, ptr %i.go, align 4, !tbaa !28
  %i.hj = insertelement <4 x i32> poison, i32 %i.hf, i64 0
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 1
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 2
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 3
  %i.hn = load i32, ptr %i.gp, align 4, !tbaa !28
  %i.ho = load i32, ptr %i.gq, align 4, !tbaa !28
  %i.hp = load i32, ptr %i.gr, align 4, !tbaa !28
  %i.hq = load i32, ptr %i.gs, align 4, !tbaa !28
  %i.hr = insertelement <4 x i32> poison, i32 %i.hn, i64 0
  %i.hs = insertelement <4 x i32> %i.hr, i32 %i.ho, i64 1
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 2
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 3
  %i.hv = load i32, ptr %i.gt, align 4, !tbaa !28
  %i.hw = load i32, ptr %i.gu, align 4, !tbaa !28
  %i.hx = load i32, ptr %i.gv, align 4, !tbaa !28
  %i.hy = load i32, ptr %i.gw, align 4, !tbaa !28
  %i.hz = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 1
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.hx, i64 2
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hy, i64 3
  %i.id = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.he, <4 x i32> %vec.phi) ; 2 uses
  %i.ie = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hm, <4 x i32> %vec.phi1802) ; 2 uses
  %i.if = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hu, <4 x i32> %vec.phi1803) ; 2 uses
  %i.ig = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ic, <4 x i32> %vec.phi1804) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.id, <4 x i32> %i.ie)
  %rdx.minmax1805 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.if)
  %rdx.minmax1806 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1805, <4 x i32> %i.ig)
  %i.ii = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1806) ; 3 uses
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1442.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ii, %vec.epilog.iter.check ], [ %i.fp, %vector.main.loop.iter.check ]
  %broadcast.splatinsert1809 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat1810 = shufflevector <4 x i32> %broadcast.splatinsert1809, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1807 = and i64 %i.fm, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1810 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1812, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1811 = phi <4 x i32> [ %broadcast.splat1810, %vec.epilog.ph ], [ %i.iz, %vec.epilog.vector.body ]
  %i.ij = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index1810
  %i.ik = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index1810
  %i.il = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index1810
  %i.im = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %index1810
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 168
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 240
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !28
  %i.is = load i32, ptr %i.io, align 4, !tbaa !28
  %i.it = load i32, ptr %i.ip, align 4, !tbaa !28
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !28
  %i.iv = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %i.iw = insertelement <4 x i32> %i.iv, i32 %i.is, i64 1
  %i.ix = insertelement <4 x i32> %i.iw, i32 %i.it, i64 2
  %i.iy = insertelement <4 x i32> %i.ix, i32 %i.iu, i64 3
  %i.iz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.iy, <4 x i32> %vec.phi1811) ; 2 uses
  %index.next1812 = add nuw i64 %index1810, 4     ; 2 uses
  %i.ja = icmp eq i64 %index.next1812, %n.vec1807
  br i1 %i.ja, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jb = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.iz) ; 2 uses
  %cmp.n1813 = icmp eq i64 %i.fm, %n.vec1807
  br i1 %cmp.n1813, label %._crit_edge, label %.lr.ph1442.preheader

.lr.ph1442.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07781441.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1807, %vec.epilog.middle.block ]
  %.013981439.ph = phi i32 [ %i.fp, %iter.check ], [ %i.ii, %vec.epilog.iter.check ], [ %i.jb, %vec.epilog.middle.block ]
  br label %.lr.ph1442

._crit_edge:                                      ; preds = %.lr.ph1442, %middle.block, %vec.epilog.middle.block, %.critedge839.thread, %.critedge839
  %.01398.lcssa = phi i32 [ %i.fp, %.critedge839 ], [ %i.dh, %.critedge839.thread ], [ %i.jb, %vec.epilog.middle.block ], [ %i.ii, %middle.block ], [ %.sroa.speculated1386, %.lr.ph1442 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !17 ; 2 uses
  %i.jf = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.jf, ptr %4, align 16, !tbaa !56
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jh = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.jh, ptr %i.jg, align 16, !tbaa !25
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jj = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.jj, ptr %i.ji, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !18
  store ptr %i.jm, ptr %i.jk, align 16, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jo = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.jo, ptr %i.jn, align 8, !tbaa !28
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !50
  store i32 %i.jr, ptr %i.jp, align 8, !tbaa !50
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !20
  store i64 %i.ju, ptr %i.js, align 16, !tbaa !20
  %.not.i1082 = icmp eq ptr %i.je, null
  br i1 %.not.i1082, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.jv = atomicrmw add ptr %i.je, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.x
  %i.jw = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.x ]
  %i.jx = icmp sgt i32 %i.jw, %.01398.lcssa
  br i1 %i.jx, label %bb.y, label %bb.ah

.lr.ph1442:                                       ; preds = %.lr.ph1442.preheader, %.lr.ph1442
  %.07781441 = phi i64 [ %i.kb, %.lr.ph1442 ], [ %.07781441.ph, %.lr.ph1442.preheader ] ; 2 uses
  %.013981439 = phi i32 [ %.sroa.speculated1386, %.lr.ph1442 ], [ %.013981439.ph, %.lr.ph1442.preheader ]
  %i.jy = getelementptr inbounds nuw [72 x i8], ptr %i.fi, i64 %.07781441
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !28
  %.sroa.speculated1386 = tail call i32 @llvm.smin.i32(i32 %i.ka, i32 %.013981439) ; 2 uses
  %i.kb = add nuw i64 %.07781441, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.kb, %i.fm
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1442, !llvm.loop !187

bb.y:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.01398.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kc = load ptr, ptr %4, align 16, !tbaa !19
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %.critedge844.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1044

_ZNK4ncnn3Mat5emptyEv.exit1044:                   ; preds = %bb.z
  %i.ke = load i64, ptr %i.js, align 16, !tbaa !20
  %i.kf = load i32, ptr %i.jp, align 8, !tbaa !50
  %i.kg = sext i32 %i.kf to i64
  %i.kh = mul i64 %i.ke, %i.kg
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %.critedge844.critedge, label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %i.jc, align 8, !tbaa !17 ; 2 uses
  %.not.i900 = icmp eq ptr %i.kk, null
  br i1 %.not.i900, label %_ZN4ncnn3MatD2Ev.exit898, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kl = atomicrmw add ptr %i.kk, i32 -1 acq_rel, align 4
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %bb.ac, label %_ZN4ncnn3MatD2Ev.exit898

bb.ac:                                            ; preds = %bb.ab
  %i.kn = load ptr, ptr %i.jk, align 16, !tbaa !18 ; 3 uses
  %.not3.i901 = icmp eq ptr %i.kn, null
  %i.ko = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i901, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !11
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef %i.ko)
          to label %_ZN4ncnn3MatD2Ev.exit898 unwind label %bb.ag, !inline_history !0

bb.ae:                                            ; preds = %bb.ac
  %.not.i1035 = icmp eq ptr %i.ko, null
  br i1 %.not.i1035, label %_ZN4ncnn3MatD2Ev.exit898, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.ko) #9
  br label %_ZN4ncnn3MatD2Ev.exit898

bb.ag:                                            ; preds = %bb.ad
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #13
  unreachable

_ZN4ncnn3MatD2Ev.exit898:                         ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ee

bb.ah:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1044, %_ZN4ncnn3Mat6addrefEv.exit
  %i.ku = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  %i.kv = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not1601 = icmp eq ptr %i.ku, %i.kv
  br i1 %.not1601, label %._crit_edge1494, label %.lr.ph1493

.lr.ph1493:                                       ; preds = %bb.ah
  %i.kw = load ptr, ptr %4, align 16, !tbaa !19
  %i.kx = icmp eq i32 %.01398.lcssa, 4
  %i.ky = shl i32 %i.cz, 2                        ; 2 uses
  %i.kz = sext i32 %i.ky to i64                   ; 5 uses
  %i.la = icmp sgt i32 %i.cz, 0                   ; 3 uses
  %i.lb = shl i32 %i.cz, 3
  %i.lc = sext i32 %i.lb to i64                   ; 4 uses
  %i.ld = icmp eq i32 %.01398.lcssa, 1
  %i.le = sext i32 %i.cz to i64                   ; 3 uses
  %i.lf = shl i32 %i.cz, 1
  %i.lg = sext i32 %i.lf to i64                   ; 3 uses
  %i.lh = mul i32 %i.cz, 3
  %i.li = sext i32 %i.lh to i64                   ; 3 uses
  %i.lj = mul nsw i32 %i.cz, 5
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul nsw i32 %i.cz, 6
  %i.lm = sext i32 %i.ll to i64
  %i.ln = mul nsw i32 %i.cz, 7
  %i.lo = sext i32 %i.ln to i64
  %i.lp = add i32 %i.cz, -1
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %i.lr = shl nuw nsw i64 %i.lq, 3
  %i.ls = shl nsw i64 %i.li, 1                    ; 2 uses
  %i.lt = shl nuw nsw i64 %i.lq, 1                ; 4 uses
  %i.lu = shl nsw i64 %i.kz, 1
  %i.lv = shl nsw i64 %i.lg, 1                    ; 2 uses
  %i.lw = shl nsw i64 %i.le, 1                    ; 2 uses
  %i.lx = zext i32 %i.cz to i64                   ; 5 uses
  %min.iters.check1840 = icmp ult i32 %i.cz, 8
  %stride.check1828 = icmp slt i32 %i.ky, 0
  %min.iters.check1842 = icmp ult i32 %i.cz, 16
  %i.ly = and i64 %i.lx, 8
  %n.vec1844 = and i64 %i.lx, 2147483632          ; 6 uses
  %i.lz = trunc nuw nsw i64 %n.vec1844 to i32
  %i.ma = shl nuw nsw i64 %n.vec1844, 3
  %i.mb = shl nuw nsw i64 %n.vec1844, 1           ; 4 uses
  %cmp.n1856 = icmp eq i64 %n.vec1844, %i.lx
  %min.epilog.iters.check1867.not.not = icmp eq i64 %i.ly, 0
  %n.vec1869 = and i64 %i.lx, 2147483640          ; 5 uses
  %i.mc = trunc nuw nsw i64 %n.vec1869 to i32
  %i.md = shl nuw nsw i64 %n.vec1869, 3
  %i.me = shl nuw nsw i64 %n.vec1869, 1           ; 4 uses
  %cmp.n1884 = icmp eq i64 %n.vec1869, %i.lx
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1493, %bb.an
  %i.mf = phi ptr [ %i.kv, %.lr.ph1493 ], [ %i.uq, %bb.an ] ; 2 uses
  %i.mg = phi ptr [ %i.ku, %.lr.ph1493 ], [ %i.ur, %bb.an ]
end_hunk_2
begin_hunk_3_@_ZNK4ncnn13Slice_x86_fma19forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.yo = add nsw i64 %i.ym, -1
  %i.yp = icmp eq i64 %.06811502, %i.yo
  br i1 %i.yp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.yq = sub nsw i32 %i.ya, %.06821501
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.06811502
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !28 ; 2 uses
  %i.yt = icmp slt i32 %i.ys, 0
  %i.yu = select i1 %i.yt, i32 %i.ya, i32 0
  %i.yv = sub i32 %i.ys, %.06821501
  %i.yw = add i32 %i.yv, %i.yu
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bg
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.06811502
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !28 ; 2 uses
  %i.yz = icmp eq i32 %i.yy, -233
  br i1 %i.yz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.za = sub nsw i32 %i.ya, %.06821501
  %i.zb = sext i32 %i.za to i64
  %i.zc = sub nuw i64 %i.ym, %.06811502
  %i.zd = udiv i64 %i.zb, %i.zc
  %i.ze = trunc i64 %i.zd to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bi, %bb.bj
  %.0680 = phi i32 [ %i.yq, %bb.bi ], [ %i.yw, %bb.bj ], [ %i.ze, %bb.bl ], [ %i.yy, %bb.bk ] ; 4 uses
  %i.zf = load i8, ptr %i.yk, align 1, !tbaa !46, !range !47, !noundef !48
  %i.zg = trunc nuw i8 %i.zf to i1
  br i1 %i.zg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.zh = and i32 %.0680, 7
  %i.zi = icmp eq i32 %i.zh, 0
  %i.zj = and i32 %.0680, 3
  %i.zk = icmp eq i32 %i.zj, 0
  %i.zl = select i1 %i.zk, i32 4, i32 1
  %i.zm = select i1 %i.zi, i32 8, i32 %i.zl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0676 = phi i32 [ %i.zm, %bb.bn ], [ 1, %bb.bm ] ; 3 uses
  %i.zn = load i64, ptr %i.a, align 8, !tbaa !26
  %i.zo = load i32, ptr %i.b, align 4, !tbaa !28
  %i.zp = sext i32 %i.zo to i64
  %i.zq = udiv i64 %i.zn, %i.zp
  %i.zr = zext nneg i32 %.0676 to i64
  %i.zs = mul i64 %i.zq, %i.zr
  %i.zt = getelementptr inbounds nuw [72 x i8], ptr %i.yn, i64 %.06811502 ; 5 uses
  %i.zu = sdiv i32 %.0680, %.0676
  %i.zv = load ptr, ptr %i.yl, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.zt, i32 noundef %i.xs, i32 noundef %i.xu, i32 noundef %i.xw, i32 noundef %i.zu, i64 noundef %i.zs, i32 noundef %.0676, ptr noundef %i.zv)
  %i.zw = load ptr, ptr %i.zt, align 8, !tbaa !19
  %i.zx = icmp eq ptr %i.zw, null
  br i1 %i.zx, label %.critedge844, label %_ZNK4ncnn3Mat5emptyEv.exit1042

_ZNK4ncnn3Mat5emptyEv.exit1042:                   ; preds = %bb.bo
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zt, i64 64
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !20
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zt, i64 56
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !50
  %i.aac = sext i32 %i.aab to i64
  %i.aad = mul i64 %i.zz, %i.aac
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %.critedge844, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1042
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  store i32 %i.m, ptr %i.aaf, align 8, !tbaa !24
  %i.aag = add nsw i32 %.0680, %.06821501
  %i.aah = add nuw i64 %.06811502, 1              ; 2 uses
  %i.aai = load ptr, ptr %i.yb, align 8, !tbaa !44 ; 2 uses
  %i.aaj = load ptr, ptr %2, align 8, !tbaa !23   ; 25 uses
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = sub i64 %i.aak, %i.aal
  %i.aan = sdiv exact i64 %i.aam, 72              ; 10 uses
  %.not811 = icmp ult i64 %i.aah, %i.aan
  br i1 %.not811, label %bb.bg, label %.critedge850, !llvm.loop !204

.critedge850:                                     ; preds = %bb.bp
  %i.aao = icmp eq ptr %i.aai, %i.aaj
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aaq = load i32, ptr %i.aap, align 8, !tbaa !27 ; 4 uses
  br i1 %i.aao, label %._crit_edge1509, label %iter.check1912

iter.check1912:                                   ; preds = %.critedge850
  %min.iters.check1891 = icmp ult i64 %i.aan, 4
  br i1 %min.iters.check1891, label %.lr.ph1508.preheader, label %vector.main.loop.iter.check1892

vector.main.loop.iter.check1892:                  ; preds = %iter.check1912
  %min.iters.check1893 = icmp ult i64 %i.aan, 16
  br i1 %min.iters.check1893, label %vec.epilog.ph1916, label %vector.ph1894

vector.ph1894:                                    ; preds = %vector.main.loop.iter.check1892
  %i.aar = and i64 %i.aan, 12
  %n.vec1895 = and i64 %i.aan, -16                ; 4 uses
  %broadcast.splatinsert1896 = insertelement <4 x i32> poison, i32 %i.aaq, i64 0
  %broadcast.splat1897 = shufflevector <4 x i32> %broadcast.splatinsert1896, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1898

vector.body1898:                                  ; preds = %vector.ph1894, %vector.body1898
  %index1899 = phi i64 [ 0, %vector.ph1894 ], [ %index.next1904, %vector.body1898 ] ; 17 uses
  %vec.phi1900 = phi <4 x i32> [ %broadcast.splat1897, %vector.ph1894 ], [ %i.ade, %vector.body1898 ]
  %vec.phi1901 = phi <4 x i32> [ %broadcast.splat1897, %vector.ph1894 ], [ %i.adf, %vector.body1898 ]
  %vec.phi1902 = phi <4 x i32> [ %broadcast.splat1897, %vector.ph1894 ], [ %i.adg, %vector.body1898 ]
  %vec.phi1903 = phi <4 x i32> [ %broadcast.splat1897, %vector.ph1894 ], [ %i.adh, %vector.body1898 ]
  %i.aas = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aat = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aau = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aav = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aaw = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aax = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aay = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aaz = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.aba = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abb = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abc = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abd = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abe = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abf = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abg = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abh = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1899
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aat, i64 96
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aau, i64 168
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aav, i64 240
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aaw, i64 312
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aax, i64 384
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aay, i64 456
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aaz, i64 528
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aba, i64 600
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abb, i64 672
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abc, i64 744
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abd, i64 816
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abe, i64 888
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abf, i64 960
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 1032
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abh, i64 1104
  %i.aby = load i32, ptr %i.abi, align 4, !tbaa !28
  %i.abz = load i32, ptr %i.abj, align 4, !tbaa !28
  %i.aca = load i32, ptr %i.abk, align 4, !tbaa !28
  %i.acb = load i32, ptr %i.abl, align 4, !tbaa !28
  %i.acc = insertelement <4 x i32> poison, i32 %i.aby, i64 0
  %i.acd = insertelement <4 x i32> %i.acc, i32 %i.abz, i64 1
  %i.ace = insertelement <4 x i32> %i.acd, i32 %i.aca, i64 2
  %i.acf = insertelement <4 x i32> %i.ace, i32 %i.acb, i64 3
  %i.acg = load i32, ptr %i.abm, align 4, !tbaa !28
  %i.ach = load i32, ptr %i.abn, align 4, !tbaa !28
  %i.aci = load i32, ptr %i.abo, align 4, !tbaa !28
  %i.acj = load i32, ptr %i.abp, align 4, !tbaa !28
  %i.ack = insertelement <4 x i32> poison, i32 %i.acg, i64 0
  %i.acl = insertelement <4 x i32> %i.ack, i32 %i.ach, i64 1
  %i.acm = insertelement <4 x i32> %i.acl, i32 %i.aci, i64 2
  %i.acn = insertelement <4 x i32> %i.acm, i32 %i.acj, i64 3
  %i.aco = load i32, ptr %i.abq, align 4, !tbaa !28
  %i.acp = load i32, ptr %i.abr, align 4, !tbaa !28
  %i.acq = load i32, ptr %i.abs, align 4, !tbaa !28
  %i.acr = load i32, ptr %i.abt, align 4, !tbaa !28
  %i.acs = insertelement <4 x i32> poison, i32 %i.aco, i64 0
  %i.act = insertelement <4 x i32> %i.acs, i32 %i.acp, i64 1
  %i.acu = insertelement <4 x i32> %i.act, i32 %i.acq, i64 2
  %i.acv = insertelement <4 x i32> %i.acu, i32 %i.acr, i64 3
  %i.acw = load i32, ptr %i.abu, align 4, !tbaa !28
  %i.acx = load i32, ptr %i.abv, align 4, !tbaa !28
  %i.acy = load i32, ptr %i.abw, align 4, !tbaa !28
  %i.acz = load i32, ptr %i.abx, align 4, !tbaa !28
  %i.ada = insertelement <4 x i32> poison, i32 %i.acw, i64 0
  %i.adb = insertelement <4 x i32> %i.ada, i32 %i.acx, i64 1
  %i.adc = insertelement <4 x i32> %i.adb, i32 %i.acy, i64 2
  %i.add = insertelement <4 x i32> %i.adc, i32 %i.acz, i64 3
  %i.ade = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.acf, <4 x i32> %vec.phi1900) ; 2 uses
  %i.adf = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.acn, <4 x i32> %vec.phi1901) ; 2 uses
  %i.adg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.acv, <4 x i32> %vec.phi1902) ; 2 uses
  %i.adh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.add, <4 x i32> %vec.phi1903) ; 2 uses
  %index.next1904 = add nuw i64 %index1899, 16    ; 2 uses
  %i.adi = icmp eq i64 %index.next1904, %n.vec1895
  br i1 %i.adi, label %middle.block1905, label %vector.body1898, !llvm.loop !205

middle.block1905:                                 ; preds = %vector.body1898
  %rdx.minmax1906 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ade, <4 x i32> %i.adf)
  %rdx.minmax1907 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1906, <4 x i32> %i.adg)
  %rdx.minmax1908 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax1907, <4 x i32> %i.adh)
  %i.adj = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1908) ; 3 uses
  %cmp.n1909 = icmp eq i64 %i.aan, %n.vec1895
  br i1 %cmp.n1909, label %._crit_edge1509, label %vec.epilog.iter.check1914

vec.epilog.iter.check1914:                        ; preds = %middle.block1905
  %min.epilog.iters.check1915 = icmp eq i64 %i.aar, 0
  br i1 %min.epilog.iters.check1915, label %.lr.ph1508.preheader, label %vec.epilog.ph1916, !prof !55

vec.epilog.ph1916:                                ; preds = %vector.main.loop.iter.check1892, %vec.epilog.iter.check1914
  %vec.epilog.resume.val1910 = phi i64 [ %n.vec1895, %vec.epilog.iter.check1914 ], [ 0, %vector.main.loop.iter.check1892 ]
  %bc.merge.rdx1911 = phi i32 [ %i.adj, %vec.epilog.iter.check1914 ], [ %i.aaq, %vector.main.loop.iter.check1892 ]
  %broadcast.splatinsert1914 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1911, i64 0
  %broadcast.splat1915 = shufflevector <4 x i32> %broadcast.splatinsert1914, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1911 = and i64 %i.aan, -4                 ; 3 uses
  br label %vec.epilog.vector.body1920

vec.epilog.vector.body1920:                       ; preds = %vec.epilog.vector.body1920, %vec.epilog.ph1916
  %index1921 = phi i64 [ %vec.epilog.resume.val1910, %vec.epilog.ph1916 ], [ %index.next1923, %vec.epilog.vector.body1920 ] ; 5 uses
  %vec.phi1922 = phi <4 x i32> [ %broadcast.splat1915, %vec.epilog.ph1916 ], [ %i.aea, %vec.epilog.vector.body1920 ]
  %i.adk = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1921
  %i.adl = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1921
  %i.adm = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1921
  %i.adn = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %index1921
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adl, i64 96
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 168
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 240
  %i.ads = load i32, ptr %i.ado, align 4, !tbaa !28
  %i.adt = load i32, ptr %i.adp, align 4, !tbaa !28
  %i.adu = load i32, ptr %i.adq, align 4, !tbaa !28
  %i.adv = load i32, ptr %i.adr, align 4, !tbaa !28
  %i.adw = insertelement <4 x i32> poison, i32 %i.ads, i64 0
  %i.adx = insertelement <4 x i32> %i.adw, i32 %i.adt, i64 1
  %i.ady = insertelement <4 x i32> %i.adx, i32 %i.adu, i64 2
  %i.adz = insertelement <4 x i32> %i.ady, i32 %i.adv, i64 3
  %i.aea = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.adz, <4 x i32> %vec.phi1922) ; 2 uses
  %index.next1923 = add nuw i64 %index1921, 4     ; 2 uses
  %i.aeb = icmp eq i64 %index.next1923, %n.vec1911
  br i1 %i.aeb, label %vec.epilog.middle.block1924, label %vec.epilog.vector.body1920, !llvm.loop !206

vec.epilog.middle.block1924:                      ; preds = %vec.epilog.vector.body1920
  %i.aec = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.aea) ; 2 uses
  %cmp.n1925 = icmp eq i64 %i.aan, %n.vec1911
  br i1 %cmp.n1925, label %._crit_edge1509, label %.lr.ph1508.preheader

.lr.ph1508.preheader:                             ; preds = %iter.check1912, %vec.epilog.iter.check1914, %vec.epilog.middle.block1924
  %.06751507.ph = phi i64 [ 0, %iter.check1912 ], [ %n.vec1895, %vec.epilog.iter.check1914 ], [ %n.vec1911, %vec.epilog.middle.block1924 ]
  %.014001505.ph = phi i32 [ %i.aaq, %iter.check1912 ], [ %i.adj, %vec.epilog.iter.check1914 ], [ %i.aec, %vec.epilog.middle.block1924 ]
  br label %.lr.ph1508

._crit_edge1509:                                  ; preds = %.lr.ph1508, %middle.block1905, %vec.epilog.middle.block1924, %.critedge850.thread, %.critedge850
  %.01400.lcssa = phi i32 [ %i.aaq, %.critedge850 ], [ %i.yf, %.critedge850.thread ], [ %i.aec, %vec.epilog.middle.block1924 ], [ %i.adj, %middle.block1905 ], [ %.sroa.speculated, %.lr.ph1508 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.aed = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !17 ; 2 uses
  %i.aeg = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.aeg, ptr %5, align 16, !tbaa !56
  %i.aeh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aei = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.aei, ptr %i.aeh, align 16, !tbaa !25
  %i.aej = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aek = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.aek, ptr %i.aej, align 8, !tbaa !27
  %i.ael = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !18
  store ptr %i.aen, ptr %i.ael, align 16, !tbaa !18
  %i.aeo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aep = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.aep, ptr %i.aeo, align 8, !tbaa !28
  %i.aeq = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aer = load i32, ptr %i.xx, align 8, !tbaa !50
  store i32 %i.aer, ptr %i.aeq, align 8, !tbaa !50
  %i.aes = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 6 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !20
  store i64 %i.aeu, ptr %i.aes, align 16, !tbaa !20
  %.not.i1083 = icmp eq ptr %i.aef, null
  br i1 %.not.i1083, label %_ZN4ncnn3Mat6addrefEv.exit1084, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1509
  %i.aev = atomicrmw add ptr %i.aef, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1084

_ZN4ncnn3Mat6addrefEv.exit1084:                   ; preds = %._crit_edge1509, %bb.bq
  %i.aew = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aex = icmp sgt i32 %i.aew, %.01400.lcssa
  br i1 %i.aex, label %bb.br, label %bb.bu

.lr.ph1508:                                       ; preds = %.lr.ph1508.preheader, %.lr.ph1508
  %.06751507 = phi i64 [ %i.afb, %.lr.ph1508 ], [ %.06751507.ph, %.lr.ph1508.preheader ] ; 2 uses
  %.014001505 = phi i32 [ %.sroa.speculated, %.lr.ph1508 ], [ %.014001505.ph, %.lr.ph1508.preheader ]
  %i.aey = getelementptr inbounds nuw [72 x i8], ptr %i.aaj, i64 %.06751507
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.afa, i32 %.014001505) ; 2 uses
  %i.afb = add nuw i64 %.06751507, 1              ; 2 uses
  %exitcond1637.not = icmp eq i64 %i.afb, %i.aan
  br i1 %exitcond1637.not, label %._crit_edge1509, label %.lr.ph1508, !llvm.loop !207

bb.br:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1084
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.01400.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.afc = load ptr, ptr %5, align 16, !tbaa !19
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %.critedge844.critedge873, label %_ZNK4ncnn3Mat5emptyEv.exit1041

_ZNK4ncnn3Mat5emptyEv.exit1041:                   ; preds = %bb.bs
  %i.afe = load i64, ptr %i.aes, align 16, !tbaa !20
  %i.aff = load i32, ptr %i.aeq, align 8, !tbaa !50
  %i.afg = sext i32 %i.aff to i64
  %i.afh = mul i64 %i.afe, %i.afg
  %i.afi = icmp eq i64 %i.afh, 0
  br i1 %i.afi, label %.critedge844.critedge873, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.afj = landingpad { ptr, i32 }
          cleanup
  %i.afk = load ptr, ptr %i.aed, align 8, !tbaa !17 ; 2 uses
  %.not.i980 = icmp eq ptr %i.afk, null
  br i1 %.not.i980, label %_ZN4ncnn3MatD2Ev.exit878, label %bb.ci

bb.bu:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1041, %_ZN4ncnn3Mat6addrefEv.exit1084
  %i.afl = load ptr, ptr %i.yb, align 8, !tbaa !44 ; 2 uses
  %i.afm = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not1603 = icmp eq ptr %i.afl, %i.afm
  br i1 %.not1603, label %._crit_edge1584, label %.lr.ph1583

.lr.ph1583:                                       ; preds = %bb.bu
  %i.afn = icmp eq i32 %.01400.lcssa, 4
  %i.afo = icmp eq i32 %.01400.lcssa, 1
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1583, %bb.cb
  %i.afp = phi ptr [ %i.afm, %.lr.ph1583 ], [ %i.ari, %bb.cb ] ; 2 uses
  %i.afq = phi ptr [ %i.afl, %.lr.ph1583 ], [ %i.arj, %bb.cb ]
  %.06661581 = phi i64 [ 0, %.lr.ph1583 ], [ %i.ark, %bb.cb ] ; 2 uses
  %.06671580 = phi i32 [ 0, %.lr.ph1583 ], [ %.7674, %bb.cb ] ; 4 uses
  %i.afr = getelementptr inbounds nuw [72 x i8], ptr %i.afp, i64 %.06661581 ; 26 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 24 ; 3 uses
  %i.aft = load i32, ptr %i.afs, align 8          ; 2 uses
  %i.afu = icmp eq i32 %i.aft, 8
  %or.cond853 = select i1 %i.afn, i1 %i.afu, i1 false
  br i1 %or.cond853, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 44
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !43
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afr, i64 48
  %i.afy = load i32, ptr %i.afx, align 8, !tbaa !52
  %i.afz = mul i32 %i.afy, %i.afw
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afr, i64 52
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !58
  %i.agc = mul i32 %i.afz, %i.agb                 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afr, i64 56
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !50 ; 3 uses
  %i.agf = icmp sgt i32 %i.age, 0
  br i1 %i.agf, label %.noexc1080.lr.ph, label %.thread1414

.noexc1080.lr.ph:                                 ; preds = %bb.bw
  %i.agg = load ptr, ptr %5, align 16, !tbaa !19, !noalias !249 ; 2 uses
  %i.agh = load i64, ptr %i.aes, align 16, !tbaa !20, !noalias !249
  %i.agi = load i64, ptr %i.aeh, align 16, !tbaa !25, !noalias !249
  %factor.op.mul1520 = mul i64 %i.agh, %i.agi     ; 2 uses
  %i.agj = load ptr, ptr %i.afr, align 8, !tbaa !19, !noalias !250
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afr, i64 64
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !20, !noalias !250
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !25, !noalias !250
  %factor.op.mul1523 = mul i64 %i.agl, %i.agn
  %i.ago = icmp sgt i32 %i.agc, 0
  br i1 %i.ago, label %.noexc1080.us.preheader, label %.noexc1080.preheader

.noexc1080.preheader:                             ; preds = %.noexc1080.lr.ph
  %i.agp = shl nuw i32 %i.age, 1
  %i.agq = add i32 %.06671580, %i.agp
  br label %.thread1414

.noexc1080.us.preheader:                          ; preds = %.noexc1080.lr.ph
  %i.agr = sext i32 %.06671580 to i64
  %wide.trip.count1646 = zext nneg i32 %i.age to i64
  br label %.noexc1080.us

.noexc1080.us:                                    ; preds = %.noexc1080.us.preheader, %._crit_edge1516.us
  %indvars.iv1641 = phi i64 [ %i.agr, %.noexc1080.us.preheader ], [ %indvars.iv.next1642, %._crit_edge1516.us ] ; 3 uses
  %indvars.iv1639 = phi i64 [ 0, %.noexc1080.us.preheader ], [ %indvars.iv.next1640, %._crit_edge1516.us ] ; 2 uses
  %.reass.us1525 = mul i64 %factor.op.mul1520, %indvars.iv1641
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agg, i64 %.reass.us1525
  %i.agt = add nsw i64 %indvars.iv1641, 1
  %.reass1522.us = mul i64 %factor.op.mul1520, %i.agt
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agg, i64 %.reass1522.us
  %.reass1524.us = mul i64 %factor.op.mul1523, %indvars.iv1639
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agj, i64 %.reass1524.us
  br label %bb.bx

bb.bx:                                            ; preds = %.noexc1080.us, %bb.bx
  %.06611514.us = phi i32 [ 0, %.noexc1080.us ], [ %i.ahu, %bb.bx ]
  %.06621513.us = phi ptr [ %i.agv, %.noexc1080.us ], [ %i.aht, %bb.bx ] ; 9 uses
  %.06631512.us = phi ptr [ %i.agu, %.noexc1080.us ], [ %i.ahs, %bb.bx ] ; 5 uses
  %.06641511.us = phi ptr [ %i.ags, %.noexc1080.us ], [ %i.ahr, %bb.bx ] ; 5 uses
  %i.agw = load i16, ptr %.06641511.us, align 2, !tbaa !241
  store i16 %i.agw, ptr %.06621513.us, align 2, !tbaa !241
  %i.agx = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !241
  %i.agz = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 2
  store i16 %i.agy, ptr %i.agz, align 2, !tbaa !241
  %i.aha = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 4
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !241
  %i.ahc = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 4
  store i16 %i.ahb, ptr %i.ahc, align 2, !tbaa !241
  %i.ahd = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 6
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !241
  %i.ahf = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 6
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !241
  %i.ahg = load i16, ptr %.06631512.us, align 2, !tbaa !241
  %i.ahh = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 8
  store i16 %i.ahg, ptr %i.ahh, align 2, !tbaa !241
  %i.ahi = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 2
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !241
  %i.ahk = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 10
  store i16 %i.ahj, ptr %i.ahk, align 2, !tbaa !241
  %i.ahl = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 4
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !241
  %i.ahn = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 12
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !241
  %i.aho = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 6
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !241
  %i.ahq = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 14
  store i16 %i.ahp, ptr %i.ahq, align 2, !tbaa !241
  %i.ahr = getelementptr inbounds nuw i8, ptr %.06641511.us, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %.06631512.us, i64 8
  %i.aht = getelementptr inbounds nuw i8, ptr %.06621513.us, i64 16
  %i.ahu = add nuw nsw i32 %.06611514.us, 1       ; 2 uses
  %exitcond1638.not = icmp eq i32 %i.ahu, %i.agc
  br i1 %exitcond1638.not, label %._crit_edge1516.us, label %bb.bx, !llvm.loop !212

._crit_edge1516.us:                               ; preds = %bb.bx
  %indvars.iv.next1642 = add nsw i64 %indvars.iv1641, 2 ; 2 uses
  %indvars.iv.next1640 = add nuw nsw i64 %indvars.iv1639, 1 ; 2 uses
  %exitcond1647.not = icmp eq i64 %indvars.iv.next1640, %wide.trip.count1646
  br i1 %exitcond1647.not, label %.loopexit.loopexit, label %.noexc1080.us, !llvm.loop !213

.loopexit.loopexit:                               ; preds = %._crit_edge1516.us
  %i.ahv = trunc nsw i64 %indvars.iv.next1642 to i32
end_hunk_3
