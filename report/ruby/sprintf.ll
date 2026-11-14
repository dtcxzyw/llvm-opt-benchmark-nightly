Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/sprintf?download=true
inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@BSD_vfprintf:bb.a
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
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !183 ; 13 uses
  %i.gw = call double @llvm.fabs.f64(double %i.gv) #26
  %i.gx = fcmp oeq double %i.gw, +inf
  br i1 %i.gx, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gy = fcmp olt double %i.gv, 0.000000e+00
  br i1 %i.gy, label %bb.bp, label %bb.ga

bb.bp:                                            ; preds = %bb.bo
  store i8 45, ptr %i.e, align 1, !tbaa !67
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
  store i8 0, ptr %i.j, align 16, !tbaa !67
  %i.hm = load ptr, ptr %i.d, align 8, !tbaa !184 ; 2 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.042.i to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, %.042.i
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hq = call ptr @__memcpy_chk(ptr noundef nonnull %i.j, ptr noundef nonnull readonly %.042.i, i64 noundef range(i64 1, 0) %i.hp, i64 noundef 1335) #20, !alias.scope !185 ; 0 uses
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.by, %bb.bx
  %i.hr = getelementptr i8, ptr %i.j, i64 %i.hp
  store ptr %i.hr, ptr %i.d, align 8, !tbaa !184
  call void @free(ptr noundef %.042.i) #20
  %i.hs = and i32 %.4533, 1                       ; 5 uses
  %.not.i = icmp eq i32 %i.hs, 0                  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit..loopexit_crit_edge.i, label %bb.bz

ruby_nonempty_memcpy.exit..loopexit_crit_edge.i:  ; preds = %ruby_nonempty_memcpy.exit.i
  %.pre49.i = load ptr, ptr %i.d, align 8, !tbaa !184
  br label %cvt.exit

bb.bz:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.ht = sext i32 %i.hb to i64
  %i.hu = getelementptr i8, ptr %i.j, i64 %i.ht   ; 2 uses
  br i1 %i.hc, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hv = load i8, ptr %i.j, align 16, !tbaa !67
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
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !184 ; 3 uses
  %i.id = icmp ult ptr %i.ic, %.0.i763
  br i1 %i.id, label %.lr.ph.i, label %cvt.exit

.lr.ph.i:                                         ; preds = %bb.cd, %.lr.ph.i
  %i.ie = phi ptr [ %i.ig, %.lr.ph.i ], [ %i.ic, %bb.cd ] ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 1
  store ptr %i.if, ptr %i.d, align 8, !tbaa !184
  store i8 48, ptr %i.ie, align 1, !tbaa !67
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !184 ; 3 uses
  %i.ih = icmp ult ptr %i.ig, %.0.i763
  br i1 %i.ih, label %.lr.ph.i, label %cvt.exit, !llvm.loop !164

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
  store i8 %i.ix, ptr %i.g, align 1, !tbaa !67
  %i.iy = icmp slt i32 %i.iv, 0
  %storemerge.i = select i1 %i.iy, i8 45, i8 43
  %.023.i = call i32 @llvm.abs.i32(i32 %i.iv, i1 false) ; 3 uses
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !67
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
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !67
  %i.je = udiv i32 %.124.i, 10                    ; 2 uses
  %i.jf = icmp samesign ugt i32 %.124.i, 99
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %scevgep31.i = getelementptr i8, ptr %indvars.iv.i, i64 1
  br i1 %i.jf, label %.preheader.i, label %bb.cj, !llvm.loop !165

bb.cj:                                            ; preds = %.preheader.i
  %i.jg = trunc nuw i32 %i.je to i8
  %i.jh = or disjoint i8 %i.jg, 48
  %i.ji = getelementptr i8, ptr %.0.i765, i64 -2  ; 3 uses
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !67
  %i.jj = icmp ult ptr %i.ji, %i.ae
  br i1 %i.jj, label %.lr.ph.preheader.i, label %exponent.exit

.lr.ph.preheader.i:                               ; preds = %bb.cj
  %i.jk = add nuw i64 %indvar.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.021.i768, ptr noundef nonnull align 1 dereferenceable(1) %i.ji, i64 range(i64 0, 13) %i.jk, i1 false), !tbaa !67
  br label %exponent.exit

bb.ck:                                            ; preds = %bb.ci
  %i.jl = trunc i32 %.023.i to i8
  %i.jm = add i8 %i.jl, 48
  store i8 %i.jm, ptr %.021.i768, align 1, !tbaa !67
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
  store i8 %i.jx, ptr %i.g, align 1, !tbaa !67
  %i.jy = icmp slt i32 %i.jw, 0
  %storemerge.i766 = select i1 %i.jy, i8 45, i8 43
  %.023.i767 = call i32 @llvm.abs.i32(i32 %i.jw, i1 false) ; 3 uses
  store i8 %storemerge.i766, ptr %i.aa, align 1, !tbaa !67
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
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !67
  %i.ke = udiv i32 %.124.i777, 10                 ; 2 uses
  %i.kf = icmp samesign ugt i32 %.124.i777, 99
  %indvar.next.i779 = add nuw nsw i64 %indvar.i776, 1
  %scevgep31.i780 = getelementptr i8, ptr %indvars.iv.i775, i64 1
  br i1 %i.kf, label %.preheader.i774, label %bb.cn, !llvm.loop !165

bb.cn:                                            ; preds = %.preheader.i774
  %i.kg = trunc nuw i32 %i.ke to i8
  %i.kh = or disjoint i8 %i.kg, 48
  %i.ki = getelementptr i8, ptr %.0.i778, i64 -2  ; 3 uses
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !67
  %i.kj = icmp ult ptr %i.ki, %i.ab
  br i1 %i.kj, label %.lr.ph.preheader.i781, label %exponent.exit782

.lr.ph.preheader.i781:                            ; preds = %bb.cn
  %i.kk = add nuw i64 %indvar.i776, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.021.i768, ptr noundef nonnull align 1 dereferenceable(1) %i.ki, i64 range(i64 0, 13) %i.kk, i1 false), !tbaa !67
  br label %exponent.exit782

bb.co:                                            ; preds = %bb.cm
  %i.kl = and i32 %.3569, 15
  %.not.i769 = icmp eq i32 %i.kl, 0
  br i1 %.not.i769, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 48, ptr %.021.i768, align 1, !tbaa !67
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2.i770 = phi ptr [ %i.ac, %bb.cp ], [ %.021.i768, %bb.co ] ; 2 uses
  %i.km = trunc i32 %.023.i767 to i8
  %i.kn = add i8 %i.km, 48
  %i.ko = getelementptr i8, ptr %.2.i770, i64 1
  store i8 %i.kn, ptr %.2.i770, align 1, !tbaa !67
  br label %exponent.exit782

exponent.exit782:                                 ; preds = %bb.cn, %.lr.ph.preheader.i781, %bb.cq
  %.3.i771 = phi ptr [ %i.ko, %bb.cq ], [ %.021.i768, %bb.cn ], [ %indvars.iv.i775, %.lr.ph.preheader.i781 ]
  %i.kp = ptrtoint ptr %.3.i771 to i64
  %i.kq = sub i64 %i.kp, %i.ad
  %i.kr = trunc i64 %i.kq to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ks = add i32 %i.kr, %i.il                    ; 2 uses
  %i.kt = icmp slt i32 %i.il, 2
  %or.cond742 = and i1 %i.kt, %.not.i
  br i1 %or.cond742, label %bb.db, label %bb.cr

bb.cr:                                            ; preds = %exponent.exit782
  %i.ku = add i32 %.2504, 1
  %i.kv = add i32 %i.ks, 1
  br label %bb.db

bb.cs:                                            ; preds = %bb.cl
  %i.kw = icmp eq i32 %.3569, 102
  %.pre = load i32, ptr %i.f, align 4, !tbaa !11  ; 4 uses
  br i1 %i.kw, label %bb.ct, label %.thread915

bb.ct:                                            ; preds = %bb.cs
  %i.kx = icmp sgt i32 %.pre, 0
  br i1 %i.kx, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ky = or i32 %.2520, %i.hs
  %or.cond743 = icmp eq i32 %i.ky, 0
  br i1 %or.cond743, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kz = add i32 %.2520, 1
  %i.la = add i32 %i.kz, %.pre
  br label %bb.db

bb.cw:                                            ; preds = %bb.ct
  %.not653 = icmp eq i32 %.2520, 0
  br i1 %.not653, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %spec.select744 = add nuw nsw i32 %i.hs, 1
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.lb = add i32 %.2520, 2
  br label %bb.db

.thread915:                                       ; preds = %bb.cf, %bb.cs
  %i.lc = phi i32 [ %i.in, %bb.cf ], [ %.pre, %bb.cs ] ; 4 uses
  %.not651 = icmp slt i32 %i.lc, %i.il
  br i1 %.not651, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.thread915
  %spec.select745 = add i32 %i.lc, %i.hs
  br label %bb.db

bb.da:                                            ; preds = %.thread915
  %i.ld = sub i32 2, %i.lc
  %.inv = icmp slt i32 %i.lc, 1
  %i.le = select i1 %.inv, i32 %i.ld, i32 1
  %i.lf = add i32 %i.le, %i.il
  br label %bb.db

bb.db:                                            ; preds = %exponent.exit, %bb.cz, %bb.cx, %bb.cu, %exponent.exit782, %bb.cr, %bb.da, %bb.cv, %bb.cy
  %.4570 = phi i32 [ 103, %bb.cz ], [ 102, %bb.cx ], [ %.3569, %bb.cr ], [ %.3569, %exponent.exit782 ], [ 102, %bb.cv ], [ 102, %bb.cu ], [ 102, %bb.cy ], [ 103, %bb.da ], [ %i.jq, %exponent.exit ] ; 2 uses
  %.5534 = phi i32 [ %i.ha, %bb.cz ], [ %i.ha, %bb.cx ], [ %i.ha, %bb.cr ], [ %i.ha, %exponent.exit782 ], [ %i.ha, %bb.cv ], [ %i.ha, %bb.cu ], [ %i.ha, %bb.cy ], [ %i.ha, %bb.da ], [ %i.it, %exponent.exit ] ; 2 uses
  %.1510 = phi i32 [ %.0509.ph, %bb.cz ], [ %.0509.ph, %bb.cx ], [ %i.kr, %bb.cr ], [ %i.kr, %exponent.exit782 ], [ %.0509.ph, %bb.cv ], [ %.0509.ph, %bb.cu ], [ %.0509.ph, %bb.cy ], [ %.0509.ph, %bb.da ], [ %i.jp, %exponent.exit ] ; 2 uses
  %.3505 = phi i32 [ %.2504, %bb.cz ], [ %.2504, %bb.cx ], [ %i.ku, %bb.cr ], [ %.2504, %exponent.exit782 ], [ %.2504, %bb.cv ], [ %.2504, %bb.cu ], [ %.2504, %bb.cy ], [ %.2504, %bb.da ], [ %.2504, %exponent.exit ] ; 2 uses
  %.0493 = phi i32 [ %spec.select745, %bb.cz ], [ %spec.select744, %bb.cx ], [ %i.kv, %bb.cr ], [ %i.ks, %exponent.exit782 ], [ %i.la, %bb.cv ], [ %.pre, %bb.cu ], [ %i.lb, %bb.cy ], [ %i.lf, %bb.da ], [ %spec.select759, %exponent.exit ] ; 2 uses
  br i1 %.sink.i, label %._crit_edge1619, label %bb.dc

._crit_edge1619:                                  ; preds = %bb.db
  %.pre1595.pre = load i8, ptr %i.e, align 1, !tbaa !67
  br label %bb.ga

bb.dc:                                            ; preds = %bb.db
  store i8 45, ptr %i.e, align 1, !tbaa !67
  br label %bb.ga

bb.dd:                                            ; preds = %._crit_edge
  %i.lg = and i32 %.0529, 16
  %.not647 = icmp eq i32 %i.lg, 0
  br i1 %.not647, label %bb.di, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lh = load i32, ptr %2, align 8               ; 3 uses
  %i.li = icmp ult i32 %i.lh, 41
  br i1 %i.li, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.lj = load ptr, ptr %i.x, align 8
  %i.lk = zext nneg i32 %i.lh to i64
  %i.ll = getelementptr i8, ptr %i.lj, i64 %i.lk
  %i.lm = add nuw nsw i32 %i.lh, 8
  store i32 %i.lm, ptr %2, align 8
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.ln = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  store ptr %i.lo, ptr %i.w, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.lp = phi ptr [ %i.ll, %bb.df ], [ %i.ln, %bb.dg ]
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !75
  store i64 %.1527, ptr %i.lq, align 8, !tbaa !64
  br label %.backedge2335

.backedge2335:                                    ; preds = %bb.dh, %bb.dq, %bb.dm
  br label %bb.d

bb.di:                                            ; preds = %bb.dd
  %i.lr = and i32 %.0529, 64
  %.not648 = icmp eq i32 %i.lr, 0
  %i.ls = load i32, ptr %2, align 8               ; 5 uses
  %i.lt = icmp ult i32 %i.ls, 41                  ; 2 uses
  br i1 %.not648, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lu = trunc i64 %.1527 to i16
  br i1 %i.lt, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lv = load ptr, ptr %i.x, align 8
  %i.lw = zext nneg i32 %i.ls to i64
  %i.lx = getelementptr i8, ptr %i.lv, i64 %i.lw
  %i.ly = add nuw nsw i32 %i.ls, 8
  store i32 %i.ly, ptr %2, align 8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.lz = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.w, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.mb = phi ptr [ %i.lx, %bb.dk ], [ %i.lz, %bb.dl ]
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !187
  store i16 %i.lu, ptr %i.mc, align 2, !tbaa !188
  br label %.backedge2335

bb.dn:                                            ; preds = %bb.di
  %i.md = trunc i64 %.1527 to i32
  br i1 %i.lt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.me = load ptr, ptr %i.x, align 8
  %i.mf = zext nneg i32 %i.ls to i64
  %i.mg = getelementptr i8, ptr %i.me, i64 %i.mf
  %i.mh = add nuw nsw i32 %i.ls, 8
  store i32 %i.mh, ptr %2, align 8
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.mi = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mj, ptr %i.w, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.mk = phi ptr [ %i.mg, %bb.do ], [ %i.mi, %bb.dp ]
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !190
  store i32 %i.md, ptr %i.ml, align 4, !tbaa !11
  br label %.backedge2335

bb.dr:                                            ; preds = %._crit_edge
  %.1519.fr.le3003 = freeze i32 %.1519
  %i.mm = or i32 %.0529, 16
  br label %.loopexit1042

.loopexit1042.loopexit:                           ; preds = %._crit_edge
  %.1519.fr.le3001 = freeze i32 %.1519
  br label %.loopexit1042

.loopexit1042:                                    ; preds = %.loopexit1042.loopexit, %bb.dr
  %.1519.fr2703 = phi i32 [ %.1519.fr.le3003, %bb.dr ], [ %.1519.fr.le3001, %.loopexit1042.loopexit ] ; 4 uses
  %.6535 = phi i32 [ %i.mm, %bb.dr ], [ %.0529, %.loopexit1042.loopexit ] ; 4 uses
  %i.mn = and i32 %.6535, 16
  %.not645 = icmp eq i32 %i.mn, 0
end_hunk_0
