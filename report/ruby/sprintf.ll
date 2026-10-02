Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/sprintf?download=true
inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@BSD_vfprintf:bb.a
  %i.fc = and i32 %.1530, 64
  %.not662 = icmp eq i32 %i.fc, 0
  %i.fd = load i32, ptr %2, align 8               ; 5 uses
  %i.fe = icmp ult i32 %i.fd, 41                  ; 2 uses
  br i1 %.not662, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fe, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ff = load ptr, ptr %i.x, align 8
  %i.fg = zext nneg i32 %i.fd to i64
  %i.fh = getelementptr i8, ptr %i.ff, i64 %i.fg
  %i.fi = add nuw nsw i32 %i.fd, 8
  store i32 %i.fi, ptr %2, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fj = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.w, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fl = phi ptr [ %i.fh, %bb.ay ], [ %i.fj, %bb.az ]
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !11
  %i.fn = zext i32 %i.fm to i64
  %sext = shl i64 %i.fn, 48
  %i.fo = ashr exact i64 %sext, 48
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  br i1 %i.fe, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fp = load ptr, ptr %i.x, align 8
  %i.fq = zext nneg i32 %i.fd to i64
  %i.fr = getelementptr i8, ptr %i.fp, i64 %i.fq
  %i.fs = add nuw nsw i32 %i.fd, 8
  store i32 %i.fs, ptr %2, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ft = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fu, ptr %i.w, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fv = phi ptr [ %i.fr, %bb.bc ], [ %i.ft, %bb.bd ]
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = sext i32 %i.fw to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ba, %bb.be, %bb.av
  %i.fy = phi i64 [ %i.fb, %bb.av ], [ %i.fo, %bb.ba ], [ %i.fx, %bb.be ] ; 4 uses
  store i64 %i.fy, ptr %i.h, align 8, !tbaa !13
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %.thread, label %bb.fq

.thread:                                          ; preds = %bb.bf
  %i.ga = sub i64 0, %i.fy                        ; 2 uses
  store i64 %i.ga, ptr %i.h, align 8, !tbaa !13
  store i8 45, ptr %i.e, align 1, !tbaa !16
  %i.gb = and i32 %.1530, -129
  %i.gc = icmp slt i32 %.1519.fr2655, 0
  %spec.select747.jt101718 = select i1 %i.gc, i32 %.1530, i32 %i.gb
  br label %bb.ft

bb.bg:                                            ; preds = %._crit_edge, %._crit_edge
  %.1519.fr.le2958 = freeze i32 %.1519            ; 3 uses
  %i.gd = icmp sgt i32 %.1519.fr.le2958, 0
  br i1 %i.gd, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ge = or i32 %.0529, 1
  %i.gf = add nuw i32 %.1519.fr.le2958, 1         ; 2 uses
  br label %bb.bk

bb.bi:                                            ; preds = %._crit_edge, %._crit_edge
  %.1519.fr.le2956 = freeze i32 %.1519            ; 3 uses
  %.not650 = icmp ne i32 %.1519.fr.le2956, 0
  %i.gg = zext i1 %.not650 to i32
  %spec.select = or i32 %.0529, %i.gg
  %i.gh = icmp eq i32 %.1519.fr.le2956, -1        ; 2 uses
  %i.gi = add nuw i32 %.1519.fr.le2956, 1         ; 2 uses
  %.1503 = select i1 %i.gh, i32 %.0502.ph, i32 %i.gi
  %i.gj = select i1 %i.gh, i32 7, i32 %i.gi
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge
  %.1519.fr.le2954 = freeze i32 %.1519            ; 2 uses
  %.not649 = icmp ne i32 %.1519.fr.le2954, 0
  %i.gk = zext i1 %.not649 to i32
  %spec.select741 = or i32 %.0529, %i.gk
  br label %.loopexit1041

.loopexit1041.loopexit:                           ; preds = %._crit_edge, %._crit_edge
  %.1519.fr.le2952 = freeze i32 %.1519
  br label %.loopexit1041

.loopexit1041:                                    ; preds = %.loopexit1041.loopexit, %bb.bj
  %.1519.fr2657 = phi i32 [ %.1519.fr.le2954, %bb.bj ], [ %.1519.fr.le2952, %.loopexit1041.loopexit ] ; 3 uses
  %.3532 = phi i32 [ %spec.select741, %bb.bj ], [ %.0529, %.loopexit1041.loopexit ]
  %i.gl = icmp eq i32 %.1519.fr2657, -1           ; 2 uses
  %..1519 = select i1 %i.gl, i32 6, i32 %.1519.fr2657
  %.0502..1519 = select i1 %i.gl, i32 %.0502.ph, i32 %.1519.fr2657
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit1041, %bb.bg, %bb.bh, %bb.bi
  %.4533 = phi i32 [ %i.ge, %bb.bh ], [ %.0529, %bb.bg ], [ %spec.select, %bb.bi ], [ %.3532, %.loopexit1041 ] ; 6 uses
  %.2520 = phi i32 [ %i.gf, %bb.bh ], [ %.1519.fr.le2958, %bb.bg ], [ %i.gj, %bb.bi ], [ %..1519, %.loopexit1041 ] ; 6 uses
  %.2504 = phi i32 [ %i.gf, %bb.bh ], [ %.0502.ph, %bb.bg ], [ %.1503, %bb.bi ], [ %.0502..1519, %.loopexit1041 ] ; 12 uses
  %i.gm = load i32, ptr %i.y, align 4             ; 3 uses
  %i.gn = icmp ult i32 %i.gm, 161
  br i1 %i.gn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.go = load ptr, ptr %i.x, align 8
  %i.gp = zext nneg i32 %i.gm to i64
  %i.gq = getelementptr i8, ptr %i.go, i64 %i.gp
  %i.gr = add nuw nsw i32 %i.gm, 16
  store i32 %i.gr, ptr %i.y, align 4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.gs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gt, ptr %i.w, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gu = phi ptr [ %i.gq, %bb.bl ], [ %i.gs, %bb.bm ]
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !117 ; 13 uses
  %i.gw = call double @llvm.fabs.f64(double %i.gv) #26
  %i.gx = fcmp oeq double %i.gw, +inf
  br i1 %i.gx, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gy = fcmp olt double %i.gv, 0.000000e+00
  br i1 %i.gy, label %bb.bp, label %bb.ga

bb.bp:                                            ; preds = %bb.bo
  store i8 45, ptr %i.e, align 1, !tbaa !16
  br label %bb.ga

bb.bq:                                            ; preds = %bb.bn
  %i.gz = fcmp uno double %i.gv, 0.000000e+00
  br i1 %i.gz, label %bb.ga, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = or i32 %.4533, 256                      ; 8 uses
  %i.hb = call i32 @llvm.smin.i32(i32 %.2520, i32 1026) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.hc = icmp eq i32 %.0566, 102                 ; 2 uses
  %..i = select i1 %i.hc, i32 3, i32 2
  %i.hd = fcmp olt double %i.gv, 0.000000e+00
  br i1 %i.hd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.he = fneg double %i.gv
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.hf = fcmp une double %i.gv, 0.000000e+00
  %i.hg = bitcast double %i.gv to i64
  %i.hh = icmp sgt i64 %i.hg, -1
  %or.cond48.i.not = or i1 %i.hf, %i.hh
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sink.i = phi i1 [ %or.cond48.i.not, %bb.bt ], [ false, %bb.bs ]
  %.044.i = phi double [ %i.gv, %bb.bt ], [ %i.he, %bb.bs ] ; 3 uses
  switch i32 %.0566, label %bb.bw [
    i32 97, label %bb.bv
    i32 65, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.hi = icmp eq i32 %.0566, 97
  %i.hj = select i1 %i.hi, ptr @ruby_hexdigits, ptr getelementptr (i8, ptr @ruby_hexdigits, i64 16)
  %i.hk = call ptr @ruby_hdtoa(double noundef %.044.i, ptr noundef %i.hj, i32 noundef %i.hb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.hl = call ptr @ruby_dtoa(double noundef %.044.i, i32 noundef %..i, i32 noundef %i.hb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.042.i = phi ptr [ %i.hk, %bb.bv ], [ %i.hl, %bb.bw ] ; 4 uses
  store i8 0, ptr %i.j, align 16, !tbaa !16
  %i.hm = load ptr, ptr %i.d, align 8, !tbaa !118 ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.042.i to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, %.042.i
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hq = call ptr @__memcpy_chk(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %.042.i, i64 noundef range(i64 1, 0) %i.hp, i64 noundef 1335) #20, !alias.scope !119 ; 0 uses
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.by, %bb.bx
  %i.hr = getelementptr i8, ptr %i.j, i64 %i.hp
  store ptr %i.hr, ptr %i.d, align 8, !tbaa !118
  call void @free(ptr noundef %.042.i) #20
  %i.hs = and i32 %.4533, 1                       ; 5 uses
  %.not.i = icmp eq i32 %i.hs, 0                  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i, label %bb.bz

ruby_nonempty_memcpy.exit..loopexit_crit_edge.i:  ; preds = %ruby_nonempty_memcpy.exit.i
  %.pre49.i = load ptr, ptr %i.d, align 8, !tbaa !118
  br label %cvt.exit

bb.bz:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.ht = sext i32 %i.hb to i64
  %i.hu = getelementptr i8, ptr %i.j, i64 %i.ht   ; 2 uses
  br i1 %i.hc, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hv = load i8, ptr %i.j, align 16, !tbaa !16
  %i.hw = icmp eq i8 %i.hv, 48
  %i.hx = fcmp une double %.044.i, 0.000000e+00
  %or.cond3.i = and i1 %i.hx, %i.hw
  br i1 %or.cond3.i, label %bb.cb, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ca
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !11
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hy = sub i32 1, %i.hb                        ; 2 uses
  store i32 %i.hy, ptr %i.f, align 4, !tbaa !11
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge.i
  %i.hz = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.hy, %bb.cb ]
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr i8, ptr %i.hu, i64 %i.ia
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %.0.i763 = phi ptr [ %i.ib, %bb.cc ], [ %i.hu, %bb.bz ] ; 2 uses
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !118 ; 3 uses
  %i.id = icmp ult ptr %i.ic, %.0.i763
  br i1 %i.id, label %.lr.ph.i, label %cvt.exit

.lr.ph.i:                                         ; preds = %bb.cd, %.lr.ph.i
  %i.ie = phi ptr [ %i.ig, %.lr.ph.i ], [ %i.ic, %bb.cd ] ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 1
  store ptr %i.if, ptr %i.d, align 8, !tbaa !118
  store i8 48, ptr %i.ie, align 1, !tbaa !16
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !118 ; 3 uses
  %i.ih = icmp ult ptr %i.ig, %.0.i763
  br i1 %i.ih, label %.lr.ph.i, label %cvt.exit, !llvm.loop !99

cvt.exit:                                         ; preds = %.lr.ph.i, %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i, %bb.cd
  %i.ii = phi ptr [ %.pre49.i, %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i ], [ %i.ic, %bb.cd ], [ %i.ig, %.lr.ph.i ]
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.z
  %i.il = trunc i64 %i.ik to i32                  ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.im = icmp eq i32 %.0566, 103
  switch i32 %.0566, label %bb.ch [
    i32 103, label %bb.ce
    i32 71, label %bb.ce
  ]

bb.ce:                                            ; preds = %cvt.exit, %cvt.exit
  %i.in = load i32, ptr %i.f, align 4, !tbaa !11  ; 4 uses
  %i.io = icmp slt i32 %i.in, -3
  br i1 %i.io, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ip = icmp sgt i32 %i.in, %.2520
  %i.iq = icmp sgt i32 %i.in, 1
  %or.cond3 = and i1 %i.ip, %i.iq
  br i1 %or.cond3, label %bb.cg, label %.thread915

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ir = select i1 %i.im, i32 101, i32 69
  br label %bb.ch

bb.ch:                                            ; preds = %cvt.exit, %bb.cg
  %.3569 = phi i32 [ %i.ir, %bb.cg ], [ %.0566, %cvt.exit ] ; 9 uses
  %i.is = and i32 %.3569, -33
  %or.cond5 = icmp eq i32 %i.is, 65
  br i1 %or.cond5, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.it = or i32 %.4533, 258
  %i.iu = load i32, ptr %i.f, align 4, !tbaa !11
  %i.iv = add i32 %i.iu, -1                       ; 3 uses
  store i32 %i.iv, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.iw = trunc nuw nsw i32 %.3569 to i8
  %i.ix = add nuw nsw i8 %i.iw, 15
  store i8 %i.ix, ptr %i.g, align 1, !tbaa !16
  %i.iy = icmp slt i32 %i.iv, 0
  %storemerge.i = select i1 %i.iy, i8 45, i8 43
  %.023.i = call i32 @llvm.abs.i32(i32 %i.iv, i1 false) ; 3 uses
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !16
  %i.iz = icmp sgt i32 %.023.i, 9
  br i1 %i.iz, label %.preheader.i, label %bb.ck

.preheader.i:                                     ; preds = %bb.ci, %.preheader.i
  %indvars.iv.i = phi ptr [ %scevgep31.i, %.preheader.i ], [ %scevgep.i773, %bb.ci ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.preheader.i ], [ 0, %bb.ci ] ; 2 uses
  %.124.i = phi i32 [ %i.je, %.preheader.i ], [ %.023.i, %bb.ci ] ; 3 uses
  %.0.i765 = phi ptr [ %i.jd, %.preheader.i ], [ %i.ae, %bb.ci ] ; 2 uses
  %i.ja = urem i32 %.124.i, 10
  %i.jb = trunc nuw nsw i32 %i.ja to i8
  %i.jc = or disjoint i8 %i.jb, 48
  %i.jd = getelementptr i8, ptr %.0.i765, i64 -1  ; 2 uses
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !16
  %i.je = udiv i32 %.124.i, 10                    ; 2 uses
  %i.jf = icmp samesign ugt i32 %.124.i, 99
  %indvar.next.i = add i64 %indvar.i, 1
  %scevgep31.i = getelementptr i8, ptr %indvars.iv.i, i64 1
  br i1 %i.jf, label %.preheader.i, label %bb.cj, !llvm.loop !100

bb.cj:                                            ; preds = %.preheader.i
  %i.jg = trunc nuw i32 %i.je to i8
  %i.jh = or disjoint i8 %i.jg, 48
  %i.ji = getelementptr i8, ptr %.0.i765, i64 -2  ; 3 uses
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !16
  %i.jj = icmp ult ptr %i.ji, %i.ae
  br i1 %i.jj, label %.lr.ph.preheader.i, label %exponent.exit

.lr.ph.preheader.i:                               ; preds = %bb.cj
  %i.jk = add i64 %indvar.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.021.i768, ptr nonnull align 1 %i.ji, i64 %i.jk, i1 false), !tbaa !16
  br label %exponent.exit

bb.ck:                                            ; preds = %bb.ci
  %i.jl = trunc i32 %.023.i to i8
  %i.jm = add i8 %i.jl, 48
  store i8 %i.jm, ptr %.021.i768, align 1, !tbaa !16
  br label %exponent.exit

exponent.exit:                                    ; preds = %bb.cj, %.lr.ph.preheader.i, %bb.ck
  %.3.i = phi ptr [ %i.ac, %bb.ck ], [ %.021.i768, %bb.cj ], [ %indvars.iv.i, %.lr.ph.preheader.i ]
  %i.jn = ptrtoint ptr %.3.i to i64
  %i.jo = sub i64 %i.jn, %i.ad
  %i.jp = trunc i64 %i.jo to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.jq = add nuw nsw i32 %.3569, 23
  %i.jr = icmp sgt i32 %i.il, 1
  %i.js = select i1 %i.jr, i32 1, i32 %i.hs
  %i.jt = add i32 %i.js, %i.il
  %spec.select759 = add i32 %i.jt, %i.jp
  br label %bb.db

bb.cl:                                            ; preds = %bb.ch
  %i.ju = icmp samesign ult i32 %.3569, 102
  br i1 %i.ju, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.jv = load i32, ptr %i.f, align 4, !tbaa !11
  %i.jw = add i32 %i.jv, -1                       ; 3 uses
  store i32 %i.jw, ptr %i.f, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.jx = trunc nuw nsw i32 %.3569 to i8
  store i8 %i.jx, ptr %i.g, align 1, !tbaa !16
  %i.jy = icmp slt i32 %i.jw, 0
  %storemerge.i766 = select i1 %i.jy, i8 45, i8 43
  %.023.i767 = call i32 @llvm.abs.i32(i32 %i.jw, i1 false) ; 3 uses
  store i8 %storemerge.i766, ptr %i.aa, align 1, !tbaa !16
  %i.jz = icmp sgt i32 %.023.i767, 9
  br i1 %i.jz, label %.preheader.i774, label %bb.co

.preheader.i774:                                  ; preds = %bb.cm, %.preheader.i774
  %indvars.iv.i775 = phi ptr [ %scevgep31.i780, %.preheader.i774 ], [ %scevgep.i773, %bb.cm ] ; 2 uses
  %indvar.i776 = phi i64 [ %indvar.next.i779, %.preheader.i774 ], [ 0, %bb.cm ] ; 2 uses
  %.124.i777 = phi i32 [ %i.ke, %.preheader.i774 ], [ %.023.i767, %bb.cm ] ; 3 uses
  %.0.i778 = phi ptr [ %i.kd, %.preheader.i774 ], [ %i.ab, %bb.cm ] ; 2 uses
  %i.ka = urem i32 %.124.i777, 10
  %i.kb = trunc nuw nsw i32 %i.ka to i8
  %i.kc = or disjoint i8 %i.kb, 48
  %i.kd = getelementptr i8, ptr %.0.i778, i64 -1  ; 2 uses
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !16
  %i.ke = udiv i32 %.124.i777, 10                 ; 2 uses
  %i.kf = icmp samesign ugt i32 %.124.i777, 99
  %indvar.next.i779 = add i64 %indvar.i776, 1
  %scevgep31.i780 = getelementptr i8, ptr %indvars.iv.i775, i64 1
  br i1 %i.kf, label %.preheader.i774, label %bb.cn, !llvm.loop !100

bb.cn:                                            ; preds = %.preheader.i774
  %i.kg = trunc nuw i32 %i.ke to i8
  %i.kh = or disjoint i8 %i.kg, 48
  %i.ki = getelementptr i8, ptr %.0.i778, i64 -2  ; 3 uses
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !16
  %i.kj = icmp ult ptr %i.ki, %i.ab
  br i1 %i.kj, label %.lr.ph.preheader.i781, label %exponent.exit782

.lr.ph.preheader.i781:                            ; preds = %bb.cn
  %i.kk = add i64 %indvar.i776, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.021.i768, ptr nonnull align 1 %i.ki, i64 %i.kk, i1 false), !tbaa !16
  br label %exponent.exit782
end_hunk_0
begin_hunk_1_@BSD_vfprintf:bb.a
  %i.aqz = getelementptr i8, ptr %.481355, i64 16
  %i.ara = add nsw i32 %i.aqv, 1                  ; 2 uses
  store i32 %i.ara, ptr %i.u, align 8, !tbaa !116
  %i.arb = icmp sgt i32 %i.aqv, 6
  br i1 %i.arb, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %.lr.ph1356
  %i.arc = icmp eq i64 %i.aqy, 0
  br i1 %i.arc, label %BSD__sprint.exit875.thread, label %BSD__sprint.exit875

BSD__sprint.exit875.thread:                       ; preds = %bb.jz
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.ka

BSD__sprint.exit875:                              ; preds = %bb.jz
  %i.ard = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.are = call i32 %i.ard(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i32 0, ptr %i.u, align 8, !tbaa !116
  %.not732 = icmp eq i32 %i.are, 0
  br i1 %.not732, label %bb.ka, label %.thread1011

bb.ka:                                            ; preds = %BSD__sprint.exit875.thread, %BSD__sprint.exit875, %.lr.ph1356
  %i.arf = phi i64 [ %i.aqy, %.lr.ph1356 ], [ 0, %BSD__sprint.exit875 ], [ 0, %BSD__sprint.exit875.thread ] ; 2 uses
  %i.arg = phi i32 [ %i.ara, %.lr.ph1356 ], [ 0, %BSD__sprint.exit875 ], [ 0, %BSD__sprint.exit875.thread ] ; 2 uses
  %.49 = phi ptr [ %i.aqz, %.lr.ph1356 ], [ %4, %BSD__sprint.exit875 ], [ %4, %BSD__sprint.exit875.thread ] ; 2 uses
  %i.arh = add nsw i32 %.135651354, -16           ; 2 uses
  %i.ari = icmp sgt i32 %.135651354, 32
  br i1 %i.ari, label %.lr.ph1356, label %._crit_edge1357, !llvm.loop !114

._crit_edge1357:                                  ; preds = %bb.ka, %.preheader1045
  %i.arj = phi i32 [ %i.aqn, %.preheader1045 ], [ %i.arg, %bb.ka ] ; 2 uses
  %i.ark = phi i64 [ %i.aqo, %.preheader1045 ], [ %i.arf, %bb.ka ]
  %.13565.lcssa = phi i32 [ %i.aqt, %.preheader1045 ], [ %i.arh, %bb.ka ]
  %.48.lcssa = phi ptr [ %.47, %.preheader1045 ], [ %.49, %bb.ka ] ; 2 uses
  store ptr @BSD_vfprintf.blanks, ptr %.48.lcssa, align 8, !tbaa !46
  %i.arl = zext nneg i32 %.13565.lcssa to i64     ; 2 uses
  %i.arm = getelementptr i8, ptr %.48.lcssa, i64 8
  store i64 %i.arl, ptr %i.arm, align 8, !tbaa !47
  %i.arn = add i64 %i.ark, %i.arl                 ; 3 uses
  store i64 %i.arn, ptr %i.t, align 8, !tbaa !43
  %i.aro = add nsw i32 %i.arj, 1
  store i32 %i.aro, ptr %i.u, align 8, !tbaa !116
  %i.arp = icmp sgt i32 %i.arj, 6
  br i1 %i.arp, label %bb.kb, label %thread-pre-split1034

bb.kb:                                            ; preds = %._crit_edge1357
  %i.arq = icmp eq i64 %i.arn, 0
  br i1 %i.arq, label %thread-pre-split1034.thread, label %BSD__sprint.exit877

thread-pre-split1034.thread:                      ; preds = %bb.kb
  %i.arr = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.ars = add i64 %i.arr, %.1527
  br label %bb.kc

BSD__sprint.exit877:                              ; preds = %bb.kb
  %i.art = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.aru = call i32 %i.art(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  %.not729 = icmp eq i32 %i.aru, 0
  br i1 %.not729, label %.thread1008, label %.thread1011

.thread1008:                                      ; preds = %BSD__sprint.exit877
  %i.arv = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.arw = add i64 %i.arv, %.1527
  br label %bb.kc

thread-pre-split1034:                             ; preds = %bb.jw, %bb.jy, %._crit_edge1357
  %.pr = phi i64 [ %i.arn, %._crit_edge1357 ], [ %i.aqo, %bb.jy ], [ %i.aqo, %bb.jw ]
  %i.arx = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.ary = add i64 %i.arx, %.1527                 ; 3 uses
  %.not730 = icmp eq i64 %.pr, 0
  br i1 %.not730, label %bb.kc, label %BSD__sprint.exit879

BSD__sprint.exit879:                              ; preds = %thread-pre-split1034
  %i.arz = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.asa = call i32 %i.arz(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93
  store i64 0, ptr %i.t, align 8, !tbaa !43
  %.not731 = icmp eq i32 %i.asa, 0
  br i1 %.not731, label %bb.kc, label %.thread1011

bb.kc:                                            ; preds = %thread-pre-split1034.thread, %.thread1008, %BSD__sprint.exit879, %thread-pre-split1034
  %i.asb = phi i64 [ %i.arw, %.thread1008 ], [ %i.ary, %BSD__sprint.exit879 ], [ %i.ary, %thread-pre-split1034 ], [ %i.ars, %thread-pre-split1034.thread ]
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %.outer2298

.loopexit:                                        ; preds = %._crit_edge, %bb.k
  %i.asc = load i64, ptr %i.t, align 8, !tbaa !43
  %.not736 = icmp eq i64 %i.asc, 0
  br i1 %.not736, label %.thread1011, label %BSD__sprint.exit881

BSD__sprint.exit881:                              ; preds = %.loopexit
  %i.asd = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.ase = call i32 %i.asd(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !93 ; 0 uses
  br label %.thread1011

.thread1011.sink.split:                           ; preds = %bb.jx, %bb.gt, %bb.go, %bb.gc
  %i.asf = call ptr @rb_errno_ptr() #20
  store i32 12, ptr %i.asf, align 4, !tbaa !11
  br label %.thread1011

.thread1011:                                      ; preds = %BSD__sprint.exit, %BSD__sprint.exit879, %BSD__sprint.exit762, %BSD__sprint.exit869, %BSD__sprint.exit861, %BSD__sprint.exit871, %BSD__sprint.exit865, %BSD__sprint.exit859, %BSD__sprint.exit857, %BSD__sprint.exit853, %BSD__sprint.exit851, %BSD__sprint.exit849, %BSD__sprint.exit847, %BSD__sprint.exit845, %BSD__sprint.exit841, %BSD__sprint.exit839, %BSD__sprint.exit835, %BSD__sprint.exit833, %BSD__sprint.exit829, %BSD__sprint.exit827, %BSD__sprint.exit825, %BSD__sprint.exit821, %BSD__sprint.exit819, %BSD__sprint.exit817, %BSD__sprint.exit809, %BSD__sprint.exit815, %BSD__sprint.exit811, %BSD__sprint.exit807, %BSD__sprint.exit805, %BSD__sprint.exit877, %BSD__sprint.exit873, %BSD__sprint.exit803, %BSD__sprint.exit799, %BSD__sprint.exit795, %BSD__sprint.exit793, %BSD__sprint.exit791, %bb.ao, %BSD__sprint.exit789, %BSD__sprint.exit797, %BSD__sprint.exit801, %BSD__sprint.exit813, %BSD__sprint.exit863, %BSD__sprint.exit867, %BSD__sprint.exit843, %BSD__sprint.exit855, %BSD__sprint.exit831, %BSD__sprint.exit837, %BSD__sprint.exit823, %BSD__sprint.exit875, %BSD__sprint.exit881, %.thread1011.sink.split, %.loopexit
  %.25281021 = phi i64 [ %.1527, %BSD__sprint.exit863 ], [ %.1527, %.thread1011.sink.split ], [ %.1527, %.loopexit ], [ %.1527, %BSD__sprint.exit831 ], [ %.1527, %BSD__sprint.exit875 ], [ %.1527, %BSD__sprint.exit801 ], [ %.1527, %BSD__sprint.exit855 ], [ %.1527, %BSD__sprint.exit823 ], [ %.1527, %BSD__sprint.exit881 ], [ %.1527, %BSD__sprint.exit797 ], [ %.1527, %BSD__sprint.exit843 ], [ %.1527, %BSD__sprint.exit789 ], [ %.1527, %BSD__sprint.exit867 ], [ %.1527, %BSD__sprint.exit837 ], [ %.1527, %BSD__sprint.exit813 ], [ %.0526, %BSD__sprint.exit ], [ %.1527, %BSD__sprint.exit865 ], [ %.1527, %BSD__sprint.exit859 ], [ %.1527, %BSD__sprint.exit857 ], [ %.1527, %BSD__sprint.exit853 ], [ %.1527, %BSD__sprint.exit851 ], [ %.1527, %BSD__sprint.exit849 ], [ %.1527, %BSD__sprint.exit847 ], [ %.1527, %BSD__sprint.exit845 ], [ %.1527, %BSD__sprint.exit841 ], [ %.1527, %BSD__sprint.exit839 ], [ %.1527, %BSD__sprint.exit835 ], [ %.1527, %BSD__sprint.exit833 ], [ %.1527, %BSD__sprint.exit829 ], [ %.1527, %BSD__sprint.exit827 ], [ %.1527, %BSD__sprint.exit825 ], [ %.1527, %BSD__sprint.exit821 ], [ %.1527, %BSD__sprint.exit819 ], [ %.1527, %BSD__sprint.exit817 ], [ %.1527, %BSD__sprint.exit809 ], [ %.1527, %BSD__sprint.exit815 ], [ %.1527, %BSD__sprint.exit811 ], [ %.1527, %BSD__sprint.exit807 ], [ %.1527, %BSD__sprint.exit805 ], [ %.1527, %BSD__sprint.exit877 ], [ %.1527, %bb.ao ], [ %.1527, %BSD__sprint.exit873 ], [ %.1527, %BSD__sprint.exit803 ], [ %.1527, %BSD__sprint.exit799 ], [ %.1527, %BSD__sprint.exit795 ], [ %.1527, %BSD__sprint.exit793 ], [ %.1527, %BSD__sprint.exit791 ], [ %.1527, %BSD__sprint.exit861 ], [ %i.ary, %BSD__sprint.exit879 ], [ %.1527, %BSD__sprint.exit871 ], [ %.1527, %BSD__sprint.exit762 ], [ %.1527, %BSD__sprint.exit869 ]
  %i.asg = load i16, ptr %i.m, align 8, !tbaa !31
  %i.ash = and i16 %i.asg, 64
  %.not738 = icmp eq i16 %i.ash, 0
  %i.asi = select i1 %.not738, i64 %.25281021, i64 -1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.b, %.thread1011
  %.0584 = phi i64 [ %i.asi, %.thread1011 ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  ret i64 %.0584
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_errno_ptr() local_unnamed_addr #3

declare ptr @ruby_hdtoa(double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ruby_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ruby__sfvwrite(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 7 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !32
  %i.e = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.b, i64 24       ; 6 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.q = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.47) #19
  unreachable

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43   ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.s, 9223372036854775806
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.48) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = and i64 %i.e, 3145728
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0 = phi i64 [ %i.n, %bb.g ], [ %i.z, %bb.i ]  ; 4 uses
  %i.x = sub i64 %.0, %i.l
  %i.y = icmp sgt i64 %i.s, %i.x
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = shl i64 %.0, 1                           ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.h, !llvm.loop !126

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.2) #19
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ac = tail call i64 @rb_str_resize(i64 noundef %i.c, i64 noundef %.0) #20 ; 0 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.ae = and i64 %i.ad, -3145729
  %i.af = or disjoint i64 %i.ae, %i.w
  store i64 %i.af, ptr %i.b, align 8, !tbaa !15
  %i.ag = and i64 %i.ad, 8192
  %.not.i45 = icmp eq i64 %i.ag, 0
  br i1 %.not.i45, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ %i.g, %bb.k ]
  store i64 %.0, ptr %i.m, align 8, !tbaa !34
  %i.aj = load ptr, ptr %1, align 8, !tbaa !44
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.03953 = phi i64 [ %i.ap, %ruby_nonempty_memcpy.exit ], [ %i.s, %.lr.ph.preheader ]
  %.04052 = phi ptr [ %i.ao, %ruby_nonempty_memcpy.exit ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.04151 = phi ptr [ %i.aq, %ruby_nonempty_memcpy.exit ], [ %i.aj, %.lr.ph.preheader ] ; 3 uses
  %i.al = getelementptr i8, ptr %.04151, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47 ; 4 uses
  %.not.i47 = icmp eq i64 %i.am, 0
  br i1 %.not.i47, label %ruby_nonempty_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %.04151, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.04052, ptr noundef nonnull readonly align 1 %i.an, i64 noundef range(i64 1, 0) %i.am, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph, %bb.m
  %i.ao = getelementptr i8, ptr %.04052, i64 %i.am ; 3 uses
  %i.ap = sub i64 %.03953, %i.am                  ; 2 uses
  %i.aq = getelementptr i8, ptr %.04151, i64 16
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !127

._crit_edge:                                      ; preds = %ruby_nonempty_memcpy.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !15
  store ptr %i.ao, ptr %0, align 8, !tbaa !32
  %i.as = and i64 %.pre, 8192
  %.not.i48 = icmp eq i64 %i.as, 0
  br i1 %.not.i48, label %RSTRING_PTR.exit49, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %RSTRING_PTR.exit49

RSTRING_PTR.exit49:                               ; preds = %._crit_edge, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ %i.g, %._crit_edge ]
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @rb_str_set_len(i64 noundef %i.c, i64 noundef %i.ax) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %RSTRING_PTR.exit49
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @ruby__sfvextra(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %.not = icmp eq i64 %1, 8
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !13     ; 8 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  %.not22 = icmp eq i64 %i.g, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.47) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %4, 43
  br i1 %i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  switch i64 %i.e, label %bb.i [
    i64 4, label %bb.f
    i64 20, label %bb.g
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  store i64 3, ptr %3, align 8, !tbaa !13
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  store i64 4, ptr %3, align 8, !tbaa !13
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  store i64 5, ptr %3, align 8, !tbaa !13
  br label %bb.t

bb.i:                                             ; preds = %bb.e
  %i.j = tail call i64 @rb_inspect(i64 noundef %i.e) #20
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  %i.k = and i64 %i.e, 255
  %i.l = icmp eq i64 %i.k, 12
  br i1 %i.l, label %RB_SYMBOL_P.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = icmp eq i64 %i.e, 0
  %i.n = and i64 %i.e, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %RB_SYMBOL_P.exit.thread25, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.k
  %i.q = inttoptr i64 %i.e to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 20
  br i1 %i.t, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread25

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.j, %RB_SYMBOL_P.exit
  %i.u = tail call i64 @rb_sym2str(i64 noundef %i.e) #20 ; 5 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !13
  %i.v = icmp eq i32 %4, 32
  br i1 %i.v, label %bb.l, label %bb.o

bb.l:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.w = tail call i32 @rb_str_symname_p(i64 noundef %i.u) #20
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = tail call i64 @rb_str_escape(i64 noundef %i.u) #20
  br label %.sink.split

RB_SYMBOL_P.exit.thread25:                        ; preds = %bb.k, %RB_SYMBOL_P.exit
  %i.y = tail call i64 @rb_obj_as_string(i64 noundef %i.e) #20 ; 3 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !13
  %i.z = icmp eq i32 %4, 32
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RB_SYMBOL_P.exit.thread25
  %i.aa = tail call i64 @rb_str_quote_unprintable(i64 noundef %i.y) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.n, %bb.m
  %.sink = phi i64 [ %i.x, %bb.m ], [ %i.aa, %bb.n ], [ %i.j, %bb.i ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %RB_SYMBOL_P.exit.thread, %RB_SYMBOL_P.exit.thread25
  %i.ab = phi i64 [ %i.y, %RB_SYMBOL_P.exit.thread25 ], [ %i.u, %bb.l ], [ %i.u, %RB_SYMBOL_P.exit.thread ], [ %.sink, %.sink.split ] ; 3 uses
  %i.ac = tail call ptr @rb_enc_compatible(i64 noundef %i.d, i64 noundef %i.ab) #20 ; 2 uses
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = tail call i64 @rb_enc_associate(i64 noundef %i.d, ptr noundef nonnull %i.ac) #20 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = tail call ptr @rb_enc_get(i64 noundef %i.d) #20
  %i.af = tail call ptr @rb_enc_get(i64 noundef %i.ab) #20
  %i.ag = tail call i64 @rb_str_conv_enc_opts(i64 noundef %i.ab, ptr noundef %i.af, ptr noundef %i.ae, i32 noundef 34, i64 noundef 4) #20 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  store volatile i64 %i.ag, ptr %2, align 8, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  %i.am = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.r, %bb.s
  %i.ao = phi ptr [ %i.an, %bb.s ], [ %i.am, %bb.r ]
  %i.ap = getelementptr i8, ptr %i.aj, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18
  store i64 %i.aq, ptr %3, align 8, !tbaa !13
  %i.ar = getelementptr i8, ptr %0, i64 56
  store volatile i64 %i.ai, ptr %i.ar, align 8, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %RSTRING_PTR.exit, %bb.h, %bb.g, %bb.f
  %.0 = phi ptr [ @.str.51, %bb.h ], [ %i.ao, %RSTRING_PTR.exit ], [ @.str.49, %bb.f ], [ @.str.50, %bb.g ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

declare i32 @rb_str_symname_p(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_escape(i64 noundef) local_unnamed_addr #3

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_conv_enc_opts(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { cold nounwind }
attributes #26 = { memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !19}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!14, !12, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!"RString", !14, i64 0, !12, i64 16, !9, i64 24}
!18 = !{!17, !12, i64 16}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"OnigEncodingTypeST", !20, i64 0, !21, i64 8, !10, i64 16, !10, i64 20, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !20, i64 120, !10, i64 128, !10, i64 132}
!23 = !{!"p1 long", !20, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"double", !9, i64 0}
!26 = !{!22, !10, i64 20}
!27 = !{!22, !21, i64 8}
!28 = !{!"short", !9, i64 0}
!29 = !{!"rb_printf_sbuf", !21, i64 0, !12, i64 8}
!30 = !{!"rb_printf_sfile", !21, i64 0, !12, i64 8, !28, i64 16, !28, i64 18, !29, i64 24, !20, i64 40, !20, i64 48}
!31 = !{!30, !28, i64 16}
!32 = !{!30, !21, i64 0}
!33 = !{!30, !21, i64 24}
!34 = !{!30, !12, i64 8}
!35 = !{!30, !12, i64 32}
!36 = !{!30, !20, i64 40}
!37 = !{!30, !20, i64 48}
!38 = !{!14, !12, i64 8}
!39 = !{!"", !30, i64 0, !12, i64 56}
!40 = !{!39, !12, i64 56}
!41 = !{!"p1 _ZTS6__siov", !20, i64 0}
!42 = !{!"__suio", !41, i64 0, !10, i64 8, !12, i64 16}
!43 = !{!42, !12, i64 16}
!44 = !{!42, !41, i64 0}
!45 = !{!"__siov", !20, i64 0, !12, i64 8}
!46 = !{!45, !20, i64 0}
!47 = !{!45, !12, i64 8}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{null}
!51 = distinct !{null, null}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{null}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{ptr @rb_str_new, null}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = !{!22, !20, i64 88}
!76 = !{!22, !20, i64 48}
!77 = !{i64 2155118875}
!78 = !{i64 2155119832}
!79 = !{!"RFloat", !14, i64 0, !25, i64 16}
!80 = !{!79, !25, i64 16}
!81 = !{i64 2155126043}
!82 = !{i64 2155129537}
!83 = !{!39, !28, i64 16}
!84 = !{!39, !12, i64 32}
!85 = !{!39, !12, i64 8}
!86 = !{!39, !21, i64 24}
!87 = !{!39, !21, i64 0}
!88 = !{!39, !20, i64 40}
!89 = !{!39, !20, i64 48}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{null}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, i1 false, !"memcpy.inline"}
!97 = distinct !{!97, !96, !"memcpy.inline: argument 1"}
!98 = distinct !{!98, !96, !"memcpy.inline: argument 0"}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = !{!30, !28, i64 18}
!116 = !{!42, !10, i64 8}
!117 = !{!25, !25, i64 0}
!118 = !{!21, !21, i64 0}
!119 = !{!98, !97}
!120 = !{!"p1 short", !20, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!28, !28, i64 0}
!123 = !{!"p1 int", !20, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!20, !20, i64 0}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
end_hunk_1
