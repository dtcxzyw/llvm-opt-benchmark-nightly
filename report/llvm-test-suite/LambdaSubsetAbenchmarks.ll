inline.NumInlined: 173
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv317
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !11
  %i.ho = fadd double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv317
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !11
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv317
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !11
  %i.ht = fadd double %i.hq, %i.hs
  %i.hu = fmul double %i.ht, -8.000000e+00
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.ho, double 7.000000e+00, double %i.hu)
  %i.hw = fadd double %i.hh, %.025.i
  %i.hx = fadd double %i.hw, %i.hv
  %i.hy = fmul double %i.gj, %i.hx
  %i.hz = fdiv double %i.hy, 6.000000e+00
  %i.ia = fsub double %i.hi, %i.hz                ; 2 uses
  %i.ib = tail call double @llvm.fabs.f64(double %i.ia)
  %i.ic = fcmp olt double %i.ib, %i.ai
  %i.id = select i1 %i.ic, double 0.000000e+00, double %i.ia ; 2 uses
  %i.ie = fcmp olt double %i.id, %i.ak
  %storemerge = select i1 %i.ie, double %i.ak, double %i.id
  store double %storemerge, ptr %i.hj, align 8, !tbaa !11
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %.lr.ph295, label %.lr.ph293, !llvm.loop !88

.lr.ph295:                                        ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit", %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit" ], [ 0, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit" ] ; 10 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv322
  %i.ig = load double, ptr %i.if, align 8, !tbaa !11
  %i.ih = fcmp ugt double %i.ig, 0.000000e+00
  br i1 %i.ih, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit", label %bb.h

bb.h:                                             ; preds = %.lr.ph295
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv322
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322
  %i.il = load double, ptr %i.ik, align 8, !tbaa !11
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv322
  %i.in = load double, ptr %i.im, align 8, !tbaa !11 ; 2 uses
  %i.io = fmul double %i.in, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv322
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !11
  %i.ir = fmul double %i.io, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv322
  %i.it = load double, ptr %i.is, align 8, !tbaa !11
  %i.iu = fmul double %i.ir, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.il, double %i.iu)
  %i.iw = fdiv double %i.iv, %i.ag                ; 2 uses
  %i.ix = fcmp ugt double %i.iw, f0x3842E7922A37D1A0
  br i1 %i.ix, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.iy = tail call double @sqrt(double noundef %i.iw) #9, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i40 = phi double [ %i.iy, %bb.i ], [ f0x3C18987CEE7F439D, %bb.h ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv322
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !11
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv322
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !11
  %i.jd = tail call double @llvm.fmuladd.f64(double %.0.i40, double %i.ja, double %i.jc) ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv322 ; 2 uses
  store double %i.jd, ptr %i.je, align 8, !tbaa !11
  %i.jf = tail call double @llvm.fabs.f64(double %i.jd)
  %i.jg = fcmp olt double %i.jf, %i.am
  br i1 %i.jg, label %bb.k, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.je, align 8, !tbaa !11
  br label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"

"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit": ; preds = %.lr.ph295, %bb.j, %bb.k
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %"_Z6forallIZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEE3$_5Ev9simd_execiiT_.exit", label %.lr.ph295, !llvm.loop !89

"_Z6forallIZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEE3$_5Ev9simd_execiiT_.exit": ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit", %bb.a
  %i.jh = add nsw i64 %.sroa.080.0297, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.jh, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.a, !prof !61
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 4 uses
  tail call void @_Z8loopInitj(i32 noundef 5)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 32, !tbaa !40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41
  %i.m = trunc i64 %i.l to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.m, i32 noundef 3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !90
  %i.q = sext i32 %i.p to i64                     ; 7 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !93
  %i.v = sext i32 %i.u to i64                     ; 13 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.q ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.v ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.v ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.q ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.v ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.v ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.v ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 16           ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.c

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.a
  %.not = icmp ne i32 %i.ap, 0
  %.not.i.not137146 = icmp eq i64 %i.ar, 0
  %.not.i.not137 = select i1 %.not, i1 true, i1 %.not.i.not137146
  br i1 %.not.i.not137, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph139, !prof !39

.lr.ph139:                                        ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !94 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !95 ; 5 uses
  %.not134135 = icmp sgt i32 %i.at, %i.av
  br i1 %.not134135, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph139
  %i.aw = sext i32 %i.at to i64                   ; 4 uses
  %i.ax = add i32 %i.av, 1
  %i.ay = shl nsw i64 %i.aw, 3                    ; 9 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.ay ; 2 uses
  %i.az = sub i32 %i.av, %i.at
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 5 uses
  %i.bc = getelementptr i8, ptr %i.i, i64 %i.ay
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep147 = getelementptr i8, ptr %i.bd, i64 8 ; 2 uses
  %i.be = shl nsw i64 %i.v, 3                     ; 2 uses
  %i.bf = shl nsw i64 %i.q, 3                     ; 2 uses
  %i.bg = add nsw i64 %i.be, %i.bf
  %i.bh = add nsw i64 %i.bg, %i.ay                ; 4 uses
  %scevgep148 = getelementptr i8, ptr %i.c, i64 %i.bh
  %i.bi = add nsw i64 %i.bh, %i.bb
  %i.bj = add nsw i64 %i.bi, 16                   ; 3 uses
  %scevgep149 = getelementptr i8, ptr %i.c, i64 %i.bj
  %i.bk = add nsw i64 %i.be, %i.ay                ; 4 uses
  %scevgep150 = getelementptr i8, ptr %i.c, i64 %i.bk
  %i.bl = add nsw i64 %i.bk, %i.bb
  %i.bm = add nsw i64 %i.bl, 16                   ; 3 uses
  %scevgep151 = getelementptr i8, ptr %i.c, i64 %i.bm
  %scevgep152 = getelementptr i8, ptr %i.c, i64 %i.ay
  %i.bn = add nsw i64 %i.ay, %i.bb
  %i.bo = add nsw i64 %i.bn, 16                   ; 3 uses
  %scevgep153 = getelementptr i8, ptr %i.c, i64 %i.bo
  %i.bp = add nsw i64 %i.bf, %i.ay                ; 4 uses
  %scevgep154 = getelementptr i8, ptr %i.c, i64 %i.bp
  %i.bq = add nsw i64 %i.bp, %i.bb
  %i.br = add nsw i64 %i.bq, 16                   ; 3 uses
  %scevgep155 = getelementptr i8, ptr %i.c, i64 %i.br
  %scevgep156 = getelementptr i8, ptr %i.e, i64 %i.bh
  %scevgep157 = getelementptr i8, ptr %i.e, i64 %i.bj
  %scevgep158 = getelementptr i8, ptr %i.e, i64 %i.bk
  %scevgep159 = getelementptr i8, ptr %i.e, i64 %i.bm
  %scevgep160 = getelementptr i8, ptr %i.e, i64 %i.ay
  %scevgep161 = getelementptr i8, ptr %i.e, i64 %i.bo
  %scevgep162 = getelementptr i8, ptr %i.e, i64 %i.bp
  %scevgep163 = getelementptr i8, ptr %i.e, i64 %i.br
  %scevgep164 = getelementptr i8, ptr %i.g, i64 %i.bh
  %scevgep165 = getelementptr i8, ptr %i.g, i64 %i.bj
  %scevgep166 = getelementptr i8, ptr %i.g, i64 %i.bk
  %scevgep167 = getelementptr i8, ptr %i.g, i64 %i.bm
  %scevgep168 = getelementptr i8, ptr %i.g, i64 %i.ay
  %scevgep169 = getelementptr i8, ptr %i.g, i64 %i.bo
  %scevgep170 = getelementptr i8, ptr %i.g, i64 %i.bp
  %scevgep171 = getelementptr i8, ptr %i.g, i64 %i.br
  %i.bs = insertelement <8 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.bt = insertelement <8 x ptr> %i.bs, ptr %scevgep150, i64 1
  %i.bu = insertelement <8 x ptr> %i.bt, ptr %scevgep154, i64 3
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %scevgep158, i64 5
  %i.bw = insertelement <8 x ptr> %i.bv, ptr %scevgep162, i64 7
  %i.bx = shufflevector <8 x ptr> %i.bw, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.by = insertelement <8 x ptr> poison, ptr %scevgep149, i64 0
  %i.bz = insertelement <8 x ptr> %i.by, ptr %scevgep147, i64 1 ; 2 uses
  %i.ca = insertelement <8 x ptr> %i.bz, ptr %scevgep153, i64 2
  %i.cb = insertelement <8 x ptr> %i.ca, ptr %scevgep157, i64 4
  %i.cc = insertelement <8 x ptr> %i.cb, ptr %scevgep161, i64 6
  %i.cd = shufflevector <8 x ptr> %i.cc, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.ce = shufflevector <8 x ptr> %i.bs, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.cf = insertelement <8 x ptr> %i.ce, ptr %scevgep148, i64 0
  %i.cg = insertelement <8 x ptr> %i.cf, ptr %scevgep152, i64 2
  %i.ch = insertelement <8 x ptr> %i.cg, ptr %scevgep156, i64 4
  %i.ci = insertelement <8 x ptr> %i.ch, ptr %scevgep160, i64 6
  %i.cj = shufflevector <8 x ptr> %i.bz, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.ck = insertelement <8 x ptr> %i.cj, ptr %scevgep151, i64 1
  %i.cl = insertelement <8 x ptr> %i.ck, ptr %scevgep155, i64 3
  %i.cm = insertelement <8 x ptr> %i.cl, ptr %scevgep159, i64 5
  %i.cn = insertelement <8 x ptr> %i.cm, ptr %scevgep163, i64 7
  %i.co = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep166, i64 1
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %scevgep170, i64 3
  %i.cr = shufflevector <4 x ptr> %i.cq, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep165, i64 0
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %scevgep147, i64 1 ; 2 uses
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %scevgep169, i64 2
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cw = shufflevector <4 x ptr> %i.co, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %scevgep164, i64 0
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %scevgep168, i64 2
  %i.cz = shufflevector <4 x ptr> %i.ct, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.da = insertelement <4 x ptr> %i.cz, ptr %scevgep167, i64 1
  %i.db = insertelement <4 x ptr> %i.da, ptr %scevgep171, i64 3
  %2 = sub i32 %i.av, %i.at
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check = icmp eq i32 %i.av, %i.at
  %i.dc = icmp ult <8 x ptr> %i.bx, %i.cd
  %i.dd = icmp ult <8 x ptr> %i.ci, %i.cn
  %i.de = and <8 x i1> %i.dd, %i.dc               ; 2 uses
  %i.df = icmp ult <4 x ptr> %i.cr, %i.cv
  %i.dg = icmp ult <4 x ptr> %i.cy, %i.db
  %i.dh = and <4 x i1> %i.dg, %i.df
  %i.di = shufflevector <4 x i1> %i.dh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = or <8 x i1> %i.de, %i.di
  %i.dk = shufflevector <8 x i1> %i.dj, <8 x i1> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dl = bitcast <8 x i1> %i.dk to i8
  %.not238 = icmp eq i8 %i.dl, 0
  %n.vec = and i64 %4, 8589934590                 ; 3 uses
  %i.dm = add nsw i64 %n.vec, %i.aw
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %.lr.ph

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %.lr.ph139, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.c

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !96 ; 2 uses
  %.not.i22 = icmp eq ptr %i.do, null
  br i1 %.not.i22, label %_ZN7ADomainD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.do) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.c:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !96 ; 2 uses
  %.not.i23 = icmp eq ptr %i.dr, null
  br i1 %.not.i23, label %_ZN7ADomainD2Ev.exit24, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.027.0138 = phi i64 [ %i.ls, %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.ar, %.lr.ph.preheader ]
  %.not238.not = xor i1 %.not238, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not238.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.ds = add i64 %index, %i.aw                   ; 25 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ds
  %wide.load = load <2 x double>, ptr %i.dt, align 8, !tbaa !11, !alias.scope !97 ; 3 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ds
  %wide.load215 = load <2 x double>, ptr %i.du, align 8, !tbaa !11, !alias.scope !100
  %i.dv = fsub <2 x double> %wide.load, %wide.load215 ; 3 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ds
  %wide.load216 = load <2 x double>, ptr %i.dw, align 8, !tbaa !11, !alias.scope !102
  %i.dx = fsub <2 x double> %wide.load, %wide.load216 ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ds
  %wide.load217 = load <2 x double>, ptr %i.dy, align 8, !tbaa !11, !alias.scope !104
  %i.dz = fsub <2 x double> %wide.load, %wide.load217 ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ds
  %wide.load218 = load <2 x double>, ptr %i.ea, align 8, !tbaa !11, !alias.scope !102
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ds
  %wide.load219 = load <2 x double>, ptr %i.eb, align 8, !tbaa !11, !alias.scope !100 ; 3 uses
  %i.ec = fsub <2 x double> %wide.load218, %wide.load219 ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ds
  %wide.load220 = load <2 x double>, ptr %i.ed, align 8, !tbaa !11, !alias.scope !104
  %i.ee = fsub <2 x double> %wide.load220, %wide.load219 ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ds
  %wide.load221 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !97
  %i.eg = fsub <2 x double> %wide.load221, %wide.load219 ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ds
  %wide.load222 = load <2 x double>, ptr %i.eh, align 8, !tbaa !11, !alias.scope !106 ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ds
  %wide.load223 = load <2 x double>, ptr %i.ei, align 8, !tbaa !11, !alias.scope !108
  %i.ej = fsub <2 x double> %wide.load222, %wide.load223 ; 3 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ds
  %wide.load224 = load <2 x double>, ptr %i.ek, align 8, !tbaa !11, !alias.scope !110
  %i.el = fsub <2 x double> %wide.load222, %wide.load224 ; 3 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ds
  %wide.load225 = load <2 x double>, ptr %i.em, align 8, !tbaa !11, !alias.scope !112
  %i.en = fsub <2 x double> %wide.load222, %wide.load225 ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ds
  %wide.load226 = load <2 x double>, ptr %i.eo, align 8, !tbaa !11, !alias.scope !110
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ds
  %wide.load227 = load <2 x double>, ptr %i.ep, align 8, !tbaa !11, !alias.scope !108 ; 3 uses
  %i.eq = fsub <2 x double> %wide.load226, %wide.load227 ; 3 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ds
  %wide.load228 = load <2 x double>, ptr %i.er, align 8, !tbaa !11, !alias.scope !112
  %i.es = fsub <2 x double> %wide.load228, %wide.load227 ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ds
  %wide.load229 = load <2 x double>, ptr %i.et, align 8, !tbaa !11, !alias.scope !106
  %i.eu = fsub <2 x double> %wide.load229, %wide.load227 ; 3 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ds
  %wide.load230 = load <2 x double>, ptr %i.ev, align 8, !tbaa !11, !alias.scope !114 ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ds
  %wide.load231 = load <2 x double>, ptr %i.ew, align 8, !tbaa !11, !alias.scope !116
  %i.ex = fsub <2 x double> %wide.load230, %wide.load231 ; 3 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ds
  %wide.load232 = load <2 x double>, ptr %i.ey, align 8, !tbaa !11, !alias.scope !118
  %i.ez = fsub <2 x double> %wide.load230, %wide.load232 ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ds
  %wide.load233 = load <2 x double>, ptr %i.fa, align 8, !tbaa !11, !alias.scope !120
  %i.fb = fsub <2 x double> %wide.load230, %wide.load233 ; 3 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ds
  %wide.load234 = load <2 x double>, ptr %i.fc, align 8, !tbaa !11, !alias.scope !118
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ds
  %wide.load235 = load <2 x double>, ptr %i.fd, align 8, !tbaa !11, !alias.scope !116 ; 3 uses
  %i.fe = fsub <2 x double> %wide.load234, %wide.load235 ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ds
  %wide.load236 = load <2 x double>, ptr %i.ff, align 8, !tbaa !11, !alias.scope !120
  %i.fg = fsub <2 x double> %wide.load236, %wide.load235 ; 3 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ds
  %wide.load237 = load <2 x double>, ptr %i.fh, align 8, !tbaa !11, !alias.scope !114
  %i.fi = fsub <2 x double> %wide.load237, %wide.load235 ; 3 uses
  %i.fj = fadd <2 x double> %i.dv, %i.eg
  %i.fk = fadd <2 x double> %i.ej, %i.eu
  %i.fl = fadd <2 x double> %i.ex, %i.fi
  %i.fm = fneg <2 x double> %i.eq
  %i.fn = fmul <2 x double> %i.ez, %i.fm
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.fe, <2 x double> %i.fn)
  %i.fp = fneg <2 x double> %i.fe
  %i.fq = fmul <2 x double> %i.dx, %i.fp
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.ec, <2 x double> %i.fq)
  %i.fs = fneg <2 x double> %i.ec
  %i.ft = fmul <2 x double> %i.el, %i.fs
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.eq, <2 x double> %i.ft)
  %i.fv = fmul <2 x double> %i.fk, %i.fr
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fo, <2 x double> %i.fv)
  %i.fx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fu, <2 x double> %i.fw)
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ds
  %i.fz = fadd <2 x double> %i.dx, %i.ee
  %i.ga = fadd <2 x double> %i.el, %i.es
  %i.gb = fadd <2 x double> %i.ez, %i.fg
  %i.gc = fneg <2 x double> %i.eu
  %i.gd = fmul <2 x double> %i.fb, %i.gc
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.fi, <2 x double> %i.gd)
  %i.gf = fneg <2 x double> %i.fi
  %i.gg = fmul <2 x double> %i.dz, %i.gf
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.eg, <2 x double> %i.gg)
  %i.gi = fneg <2 x double> %i.eg
  %i.gj = fmul <2 x double> %i.en, %i.gi
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.eu, <2 x double> %i.gj)
  %i.gl = fmul <2 x double> %i.ga, %i.gh
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.ge, <2 x double> %i.gl)
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gk, <2 x double> %i.gm)
  %i.go = fadd <2 x double> %i.fx, %i.gn
  %i.gp = fadd <2 x double> %i.dz, %i.ec
  %i.gq = fadd <2 x double> %i.en, %i.eq
  %i.gr = fadd <2 x double> %i.fb, %i.fe
  %i.gs = fneg <2 x double> %i.es
  %i.gt = fmul <2 x double> %i.ex, %i.gs
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.fg, <2 x double> %i.gt)
  %i.gv = fneg <2 x double> %i.fg
  %i.gw = fmul <2 x double> %i.dv, %i.gv
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ee, <2 x double> %i.gw)
  %i.gy = fneg <2 x double> %i.ee
  %i.gz = fmul <2 x double> %i.ej, %i.gy
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.es, <2 x double> %i.gz)
  %i.hb = fmul <2 x double> %i.gq, %i.gx
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gu, <2 x double> %i.hb)
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.ha, <2 x double> %i.hc)
  %i.he = fadd <2 x double> %i.hd, %i.go
  %i.hf = fmul <2 x double> %i.he, splat (double f0x3FB5555555555555)
  store <2 x double> %i.hf, ptr %i.fy, align 8, !tbaa !11, !alias.scope !122, !noalias !124
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dm, %middle.block ], [ %i.aw, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 26 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !11 ; 3 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !11
  %i.hl = fsub double %i.hi, %i.hk                ; 3 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !11
  %i.ho = fsub double %i.hi, %i.hn                ; 3 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !11
  %i.hr = fsub double %i.hi, %i.hq                ; 3 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !11
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !11 ; 3 uses
  %i.hw = fsub double %i.ht, %i.hv                ; 3 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !11
  %i.hz = fsub double %i.hy, %i.hv                ; 3 uses
end_hunk_0
