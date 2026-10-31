Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ciff?download=true
inline.NumInlined: 28
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6LibRaw10parse_ciffExii:bb.a

bb.n:                                             ; preds = %bb.j
  %i.fg = tail call i32 @llvm.umin.i32(i32 %i.di, i32 128)
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.fj = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.am, i64 noundef %i.fh, ptr noundef %i.fi) ; 0 uses
  %i.fk = tail call i32 @strncasecmp(ptr noundef nonnull %i.am, ptr noundef nonnull @.str, i64 noundef 16) #11
  %.not277 = icmp eq i32 %i.fk, 0
  br i1 %.not277, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #11
  %i.fm = add i64 %i.fl, -15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.am, ptr nonnull align 2 %i.bi, i64 %i.fm, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN6LibRaw10trimSpacesEPc(ptr noundef nonnull %i.am)
  br label %.thread363

bb.q:                                             ; preds = %bb.j
  %i.fn = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fo = trunc i32 %i.fn to i16
  store i16 %i.fo, ptr %i.be, align 2, !tbaa !109
  %i.fp = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fq = trunc i32 %i.fp to i16
  store i16 %i.fq, ptr %i.bf, align 4, !tbaa !110
  %i.fr = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fs = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.fr)
  %i.ft = fpext reassoc nsz arcp contract afn float %i.fs to double
  store double %i.ft, ptr %i.bg, align 8, !tbaa !111
  %i.fu = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.fu, ptr %i.bh, align 8, !tbaa !112
  br label %.thread363

bb.r:                                             ; preds = %bb.j
  %i.fv = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.fv, ptr %i.bd, align 8, !tbaa !113
  br label %.thread363

bb.s:                                             ; preds = %bb.e, %bb.j
  store i64 %i.dl, ptr %i.bb, align 8, !tbaa !114
  store i32 %i.di, ptr %i.bc, align 8, !tbaa !115
  br label %.thread363

bb.t:                                             ; preds = %bb.j
  %i.fw = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.fx = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fy = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.fx) ; 2 uses
  %i.fz = fneg reassoc nsz arcp contract afn float %i.fy
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fy)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.ga, 6.400000e+01
  %exp2366 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fz)
  %i.gb = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2366
  store float %i.gb, ptr %i.az, align 4, !tbaa !116
  %i.gc = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gd = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.gc)
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, 5.000000e-01 ; 2 uses
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ge)
  %or.cond.i.i282 = fcmp reassoc nsz arcp contract afn ogt float %i.gf, 6.400000e+01
  %exp2367 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ge)
  %i.gg = select reassoc nsz arcp contract afn i1 %or.cond.i.i282, float 0.000000e+00, float %exp2367 ; 2 uses
  store float %i.gg, ptr %i.ax, align 8, !tbaa !117
  store float %i.gg, ptr %i.ay, align 4, !tbaa !118
  br label %.thread363

bb.u:                                             ; preds = %bb.j
  %i.gh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.gi = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gj = zext i16 %i.gi to i32
  %i.gk = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gl = zext i16 %i.gk to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.gj
  %i.gn = uitofp nneg i32 %i.gm to float
  %i.go = fmul reassoc nnan nsz arcp contract afn float %i.gn, 3.125000e-02
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, -5.000000e+00 ; 2 uses
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gp)
  %or.cond.i.i283 = fcmp reassoc nsz arcp contract afn ogt float %i.gq, 6.400000e+01
  %exp2 = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.gp)
  %i.gr = fmul reassoc nnan nsz arcp contract afn float %exp2, 1.000000e+02
  %i.gs = select i1 %or.cond.i.i283, float 0.000000e+00, float %i.gr
  store float %i.gs, ptr %i.aw, align 8, !tbaa !119
  %i.gt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.gu = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gv = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw21_CanonConvertApertureEt(i16 noundef zeroext %i.gu) ; 2 uses
  store float %i.gv, ptr %i.ax, align 8, !tbaa !117
  store float %i.gv, ptr %i.ay, align 4, !tbaa !118
  %i.gw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.gx = sitofp reassoc nsz arcp contract afn i16 %i.gw to float
  %i.gy = fmul reassoc nnan nsz arcp contract afn float %i.gx, -3.125000e-02 ; 2 uses
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gy)
  %or.cond.i.i284 = fcmp reassoc nsz arcp contract afn ogt float %i.gz, 6.400000e+01
  %exp2365 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gy)
  %i.ha = select reassoc nsz arcp contract afn i1 %or.cond.i.i284, float 0.000000e+00, float %exp2365
  store float %i.ha, ptr %i.az, align 4, !tbaa !116
  %i.hb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.hc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hd = zext i16 %i.hc to i32                   ; 3 uses
  store i32 %i.hd, ptr %i.ba, align 4, !tbaa !120
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !122
  %.not276 = icmp sgt i32 %i.he, %i.hd
  %spec.select = select i1 %.not276, i32 %i.hd, i32 0 ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !84
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = tail call noundef i32 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf, i64 noundef 32, i32 noundef 1), !call_target !99 ; 0 uses
  %i.hk = load float, ptr %i.az, align 4, !tbaa !116
  %i.hl = fcmp reassoc nsz arcp contract afn ogt float %i.hk, 1.000000e+06
  br i1 %i.hl, label %bb.v, label %.thread363

bb.v:                                             ; preds = %bb.u
  %i.hm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hn = uitofp reassoc nsz arcp contract afn i16 %i.hm to float
  %i.ho = fmul reassoc nnan nsz arcp contract afn float %i.hn, 1.000000e-01
  store float %i.ho, ptr %i.az, align 4, !tbaa !116
  br label %.thread363

bb.w:                                             ; preds = %bb.j
  %i.hp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.hq = icmp ugt i16 %i.hp, 512
  br i1 %i.hq, label %.thread363.loopexit, label %bb.x

.thread363.loopexit:                              ; preds = %bb.w
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !84
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = tail call noundef i32 %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, i64 noundef 118, i32 noundef 1), !call_target !99 ; 0 uses
  %i.hw = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hx = uitofp reassoc nsz arcp contract afn i16 %i.hw to float
  store float %i.hx, ptr %i.dd, align 4, !tbaa !123
  %i.hy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hz = uitofp reassoc nsz arcp contract afn i16 %i.hy to float
  store float %i.hz, ptr %i.de, align 8, !tbaa !123
  %i.ia = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ib = uitofp reassoc nsz arcp contract afn i16 %i.ia to float
  store float %i.ib, ptr %i.al, align 4, !tbaa !123
  %i.ic = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.id = uitofp reassoc nsz arcp contract afn i16 %i.ic to float
  store float %i.id, ptr %i.df, align 8, !tbaa !123
  br label %.thread363

bb.x:                                             ; preds = %bb.w
  %.not275 = icmp eq i16 %i.hp, 276
  br i1 %.not275, label %.thread363, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !84
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = tail call noundef i32 %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i64 noundef 98, i32 noundef 1), !call_target !99 ; 0 uses
  %i.ij = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ik = uitofp reassoc nsz arcp contract afn i16 %i.ij to float
  store float %i.ik, ptr %i.da, align 8, !tbaa !123
  %i.il = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.im = uitofp reassoc nsz arcp contract afn i16 %i.il to float
  store float %i.im, ptr %i.al, align 4, !tbaa !123
  %i.in = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.io = uitofp reassoc nsz arcp contract afn i16 %i.in to float
  store float %i.io, ptr %i.db, align 4, !tbaa !123
  %i.ip = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iq = uitofp reassoc nsz arcp contract afn i16 %i.ip to float
  store float %i.iq, ptr %i.dc, align 8, !tbaa !123
  %i.ir = load float, ptr %i.al, align 4, !tbaa !123
  %i.is = fcmp reassoc nsz arcp contract afn ogt float %i.ir, 1.000000e-03
  %spec.select278 = select i1 %i.is, i32 1, i32 %.0230419
  br label %.thread363

bb.z:                                             ; preds = %bb.j
  %i.it = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.iu = zext i16 %i.it to i32
  %i.iv = add nsw i32 %i.iu, -2
  %i.iw = sdiv i32 %i.iv, 8
  %i.ix = add nsw i32 %i.iw, -1                   ; 2 uses
  %.not274 = icmp eq i32 %i.ix, 0
  br i1 %.not274, label %.loopexit386, label %.preheader385.preheader

.preheader385.preheader:                          ; preds = %bb.z
  %i.iy = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.iz = zext i16 %i.iy to i32
  store i32 %i.iz, ptr %i.ar, align 8, !tbaa !124
  %i.ja = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jb = zext i16 %i.ja to i32
  store i32 %i.jb, ptr %i.cg, align 4, !tbaa !124
  %i.jc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jd = zext i16 %i.jc to i32
  store i32 %i.jd, ptr %i.ch, align 4, !tbaa !124
  %i.je = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jf = zext i16 %i.je to i32
  store i32 %i.jf, ptr %i.ci, align 8, !tbaa !124
  br label %.loopexit386

.loopexit386:                                     ; preds = %.preheader385.preheader, %bb.z
  %i.jg = icmp ugt i16 %i.it, 65
  br i1 %i.jg, label %bb.aa, label %.preheader383.preheader

.preheader383.preheader:                          ; preds = %.loopexit386
  %i.jh = load <4 x i32>, ptr %i.ar, align 8, !tbaa !124
  %i.ji = sitofp reassoc nsz arcp contract afn <4 x i32> %i.jh to <4 x float>
  store <4 x float> %i.ji, ptr %i.al, align 4, !tbaa !123
  br label %.loopexit384

bb.aa:                                            ; preds = %.loopexit386
  tail call void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 0, i32 noundef 0)
  br label %.loopexit384

.loopexit384:                                     ; preds = %.preheader383.preheader, %bb.aa
  switch i32 %i.ix, label %.loopexit374 [
    i32 7, label %bb.ab
    i32 9, label %.preheader382.preheader
  ]

.preheader382.preheader:                          ; preds = %.loopexit384
  %i.jj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jk = zext i16 %i.jj to i32
  store i32 %i.jk, ptr %i.as, align 8, !tbaa !124
  %i.jl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jm = zext i16 %i.jl to i32
  store i32 %i.jm, ptr %i.cj, align 4, !tbaa !124
  %i.jn = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jo = zext i16 %i.jn to i32
  store i32 %i.jo, ptr %i.ck, align 4, !tbaa !124
  %i.jp = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jq = zext i16 %i.jp to i32
  store i32 %i.jq, ptr %i.cl, align 8, !tbaa !124
  %i.jr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.js = zext i16 %i.jr to i32
  store i32 %i.js, ptr %i.at, align 8, !tbaa !124
  %i.jt = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ju = zext i16 %i.jt to i32
  store i32 %i.ju, ptr %i.cm, align 4, !tbaa !124
  %i.jv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jw = zext i16 %i.jv to i32
  store i32 %i.jw, ptr %i.cn, align 4, !tbaa !124
  %i.jx = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jy = zext i16 %i.jx to i32
  store i32 %i.jy, ptr %i.co, align 8, !tbaa !124
  %or.cond21 = icmp ult i32 %.0253414, 10
  br i1 %or.cond21, label %.preheader377, label %.preheader379.preheader

bb.ab:                                            ; preds = %.loopexit384
  %or.cond17 = icmp ult i32 %.0253414, 9
  %i.jz = icmp ne i32 %.0253414, 6
  %or.cond19 = and i1 %or.cond17, %i.jz
  br i1 %or.cond19, label %.preheader373, label %.preheader375.preheader

.preheader375.preheader:                          ; preds = %bb.ab
  %i.ka = load <4 x i32>, ptr %i.ar, align 8, !tbaa !124
  %i.kb = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ka to <4 x float>
  store <4 x float> %i.kb, ptr %i.al, align 4, !tbaa !123
  br label %.loopexit374

.preheader373:                                    ; preds = %bb.ab
  %i.kc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !122 ; 2 uses
  %i.kd = icmp ult i32 %.0253414, %i.kc
  %.not.i = icmp eq i32 %i.kc, 0                  ; 4 uses
  %i.ke = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8 ; 6 uses
  %.not6.i = icmp eq ptr %i.ke, null              ; 4 uses
  br i1 %i.kd, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %.preheader373
  %brmerge = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %brmerge, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !124
  %i.kg = sext i32 %i.kf to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.0.i.ph = phi i64 [ 0, %bb.ac ], [ %i.kg, %bb.ad ]
  %i.kh = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i.ph
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !124
  %i.kj = sitofp reassoc nsz arcp contract afn i32 %i.ki to float
  store float %i.kj, ptr %i.al, align 4, !tbaa !123
  %brmerge.1 = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %brmerge.1, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kk = load i32, ptr %i.ke, align 4, !tbaa !124
  %i.kl = sext i32 %i.kk to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i.1.ph = phi i64 [ 0, %bb.ae ], [ %i.kl, %bb.af ]
  %i.km = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i.1.ph
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !124
  %i.kp = sitofp reassoc nsz arcp contract afn i32 %i.ko to float
  store float %i.kp, ptr %i.ct, align 8, !tbaa !123
  %brmerge.2 = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %brmerge.2, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kq = load i32, ptr %i.ke, align 4, !tbaa !124
  %i.kr = sext i32 %i.kq to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.2.ph = phi i64 [ 0, %bb.ag ], [ %i.kr, %bb.ah ]
  %i.ks = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i.2.ph
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !124
  %i.kv = sitofp reassoc nsz arcp contract afn i32 %i.ku to float
  store float %i.kv, ptr %i.cu, align 4, !tbaa !123
  %brmerge.3 = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %brmerge.3, label %_ZNK21libraw_static_table_tixEj.exit.3, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kw = load i32, ptr %i.ke, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit.3

bb.ak:                                            ; preds = %.preheader373
  %i.kx = zext nneg i32 %.0253414 to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !124 ; 2 uses
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.la
  %i.lc = load <2 x i32>, ptr %i.lb, align 8, !tbaa !124
  %i.ld = sitofp reassoc nsz arcp contract afn <2 x i32> %i.lc to <2 x float>
  store <2 x float> %i.ld, ptr %i.al, align 4, !tbaa !123
  %i.le = sext i32 %i.kz to i64
  %i.lf = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !124
  %i.li = sitofp reassoc nsz arcp contract afn i32 %i.lh to float
  store float %i.li, ptr %i.cv, align 4, !tbaa !123
  %i.lj = load i32, ptr %i.ky, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit.3

_ZNK21libraw_static_table_tixEj.exit.3:           ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i.3 = phi i32 [ %i.lj, %bb.ak ], [ %i.kw, %bb.aj ], [ 0, %bb.ai ]
  %i.lk = sext i32 %.0.i.3 to i64
  %i.ll = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !124
  %i.lo = sitofp reassoc nsz arcp contract afn i32 %i.ln to float
  store float %i.lo, ptr %i.cw, align 8, !tbaa !123
  br label %.loopexit374

.preheader379.preheader:                          ; preds = %.preheader382.preheader
  %i.lp = load <4 x i32>, ptr %i.ar, align 8, !tbaa !124
  %i.lq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.lp to <4 x float>
  store <4 x float> %i.lq, ptr %i.al, align 4, !tbaa !123
  br label %.loopexit374

.preheader377:                                    ; preds = %.preheader382.preheader
  %i.lr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !122 ; 2 uses
  %i.ls = icmp ult i32 %.0253414, %i.lr
  %.not.i285 = icmp eq i32 %i.lr, 0               ; 4 uses
  %i.lt = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8 ; 6 uses
  %.not6.i286 = icmp eq ptr %i.lt, null           ; 4 uses
  br i1 %i.ls, label %bb.at, label %bb.al

bb.al:                                            ; preds = %.preheader377
  %brmerge421 = select i1 %.not.i285, i1 true, i1 %.not6.i286
  br i1 %brmerge421, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !124
  %i.lv = sext i32 %i.lu to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.0.i287.ph = phi i64 [ 0, %bb.al ], [ %i.lv, %bb.am ]
  %i.lw = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i287.ph
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !124
  %i.ly = sitofp reassoc nsz arcp contract afn i32 %i.lx to float
  store float %i.ly, ptr %i.al, align 4, !tbaa !123
  %brmerge421.1 = select i1 %.not.i285, i1 true, i1 %.not6.i286
  br i1 %brmerge421.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lz = load i32, ptr %i.lt, align 4, !tbaa !124
  %i.ma = sext i32 %i.lz to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i287.1.ph = phi i64 [ 0, %bb.an ], [ %i.ma, %bb.ao ]
  %i.mb = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i287.1.ph
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !124
  %i.me = sitofp reassoc nsz arcp contract afn i32 %i.md to float
  store float %i.me, ptr %i.cp, align 8, !tbaa !123
  %brmerge421.2 = select i1 %.not.i285, i1 true, i1 %.not6.i286
  br i1 %brmerge421.2, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mf = load i32, ptr %i.lt, align 4, !tbaa !124
  %i.mg = sext i32 %i.mf to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i287.2.ph = phi i64 [ 0, %bb.ap ], [ %i.mg, %bb.aq ]
  %i.mh = getelementptr inbounds [16 x i8], ptr %i.an, i64 %.0.i287.2.ph
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !124
  %i.mk = sitofp reassoc nsz arcp contract afn i32 %i.mj to float
  store float %i.mk, ptr %i.cq, align 4, !tbaa !123
  %brmerge421.3 = select i1 %.not.i285, i1 true, i1 %.not6.i286
  br i1 %brmerge421.3, label %_ZNK21libraw_static_table_tixEj.exit288.3, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ml = load i32, ptr %i.lt, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit288.3

bb.at:                                            ; preds = %.preheader377
  %i.mm = zext nneg i32 %.0253414 to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mm ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !124 ; 2 uses
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.mp
  %i.mr = load <2 x i32>, ptr %i.mq, align 8, !tbaa !124
  %i.ms = sitofp reassoc nsz arcp contract afn <2 x i32> %i.mr to <2 x float>
  store <2 x float> %i.ms, ptr %i.al, align 4, !tbaa !123
  %i.mt = sext i32 %i.mo to i64
  %i.mu = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !124
  %i.mx = sitofp reassoc nsz arcp contract afn i32 %i.mw to float
  store float %i.mx, ptr %i.cr, align 4, !tbaa !123
  %i.my = load i32, ptr %i.mn, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit288.3

_ZNK21libraw_static_table_tixEj.exit288.3:        ; preds = %bb.at, %bb.as, %bb.ar
  %.0.i287.3 = phi i32 [ %i.my, %bb.at ], [ %i.ml, %bb.as ], [ 0, %bb.ar ]
  %i.mz = sext i32 %.0.i287.3 to i64
  %i.na = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !124
  %i.nd = sitofp reassoc nsz arcp contract afn i32 %i.nc to float
  store float %i.nd, ptr %i.cs, align 8, !tbaa !123
  br label %.loopexit374

.loopexit374:                                     ; preds = %.preheader379.preheader, %_ZNK21libraw_static_table_tixEj.exit288.3, %.preheader375.preheader, %_ZNK21libraw_static_table_tixEj.exit.3, %.loopexit384
  %i.ne = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nf = zext i16 %i.ne to i32                   ; 2 uses
  store i32 %i.nf, ptr %i.au, align 8, !tbaa !124
  %i.ng = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nh = zext i16 %i.ng to i32                   ; 2 uses
  store i32 %i.nh, ptr %i.cx, align 4, !tbaa !124
  %i.ni = add nuw nsw i32 %i.nf, %i.nh
  %i.nj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nk = zext i16 %i.nj to i32                   ; 2 uses
  store i32 %i.nk, ptr %i.cy, align 4, !tbaa !124
  %i.nl = add nuw nsw i32 %i.ni, %i.nk
  %i.nm = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nn = zext i16 %i.nm to i32                   ; 2 uses
  store i32 %i.nn, ptr %i.cz, align 8, !tbaa !124
  %i.no = add nuw nsw i32 %i.nl, %i.nn
  %i.np = lshr i32 %i.no, 2
  store i32 %i.np, ptr %i.av, align 8, !tbaa !125
  br label %.thread363

bb.au:                                            ; preds = %bb.j
  %i.nq = ashr i32 %i.di, 1
  tail call void @_ZN6LibRaw20Canon_CameraSettingsEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.nq)
  br label %.thread363

bb.av:                                            ; preds = %bb.j
  %i.nr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  switch i16 %i.nr, label %bb.ay [
    i16 1, label %bb.aw
    i16 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  store i16 1, ptr %i.aq, align 8, !tbaa !126
  br label %.thread363

bb.ax:                                            ; preds = %bb.av
  store i16 2, ptr %i.aq, align 8, !tbaa !126
  br label %.thread363

bb.ay:                                            ; preds = %bb.av
  store i16 255, ptr %i.aq, align 8, !tbaa !126
  br label %.thread363

bb.az:                                            ; preds = %bb.e, %bb.j
  %i.ns = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(14) @.str.1) #11
  %.not273 = icmp eq i32 %i.ns, 0
  br i1 %.not273, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nt = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.di) #9 ; 0 uses
  br label %.thread363

bb.bb:                                            ; preds = %bb.az
  %i.nu = ashr i32 %i.di, 16
  %i.nv = and i32 %i.di, 65535
  %i.nw = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.nu, i32 noundef %i.nv) #9 ; 0 uses
  br label %.thread363

bb.bc:                                            ; preds = %bb.j
  %i.nx = icmp eq i32 %i.di, 768
  br i1 %i.nx, label %bb.bd, label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !84
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = tail call noundef i32 %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, i64 noundef 4, i32 noundef 1), !call_target !99 ; 0 uses
  %i.od = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122 ; 2 uses
  %.not425 = icmp eq i32 %i.od, 0
  br i1 %.not425, label %._crit_edge398, label %_ZNK21libraw_static_table_tixEj.exit292.preheader

_ZNK21libraw_static_table_tixEj.exit292.preheader: ; preds = %bb.bd
  %.pre478 = load ptr, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, align 8, !tbaa !127
  br label %_ZNK21libraw_static_table_tixEj.exit292

._crit_edge398.loopexit:                          ; preds = %.loopexit
  %i.oe = shl nsw i32 %i.rm, 3
  %i.of = sub nsw i32 68, %i.oe
  %i.og = sext i32 %i.of to i64
  br label %._crit_edge398

._crit_edge398:                                   ; preds = %._crit_edge398.loopexit, %bb.bd
  %.lcssa = phi i64 [ 68, %bb.bd ], [ %i.og, %._crit_edge398.loopexit ]
  %i.oh = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !84
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = tail call noundef i32 %i.ok(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, i64 noundef %.lcssa, i32 noundef 1), !call_target !99 ; 0 uses
  %i.om = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow270 = tail call i16 @llvm.umax.i16(i16 %i.om, i16 1)
  %i.on = uitofp i16 %narrow270 to float
  %i.oo = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.on
  store float %i.oo, ptr %i.al, align 4, !tbaa !123
  %i.op = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow270.1 = tail call i16 @llvm.umax.i16(i16 %i.op, i16 1)
  %i.oq = uitofp i16 %narrow270.1 to float
  %i.or = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.oq
  store float %i.or, ptr %i.cd, align 8, !tbaa !123
  %i.os = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow270.2 = tail call i16 @llvm.umax.i16(i16 %i.os, i16 1)
  %i.ot = uitofp i16 %narrow270.2 to float
  %i.ou = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.ot
  store float %i.ou, ptr %i.ce, align 8, !tbaa !123
  %i.ov = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow270.3 = tail call i16 @llvm.umax.i16(i16 %i.ov, i16 1)
  %i.ow = uitofp i16 %narrow270.3 to float
  %i.ox = fdiv reassoc nsz arcp contract afn float 1.024000e+03, %i.ow
  store float %i.ox, ptr %i.cf, align 4, !tbaa !123
  %.not269 = icmp eq i32 %.0253414, 0
  br i1 %.not269, label %bb.bu, label %.thread363

_ZNK21libraw_static_table_tixEj.exit292:          ; preds = %_ZNK21libraw_static_table_tixEj.exit292.preheader, %.loopexit
  %i.oy = phi i32 [ %i.od, %_ZNK21libraw_static_table_tixEj.exit292.preheader ], [ %i.rm, %.loopexit ]
  %i.oz = phi ptr [ %.pre478, %_ZNK21libraw_static_table_tixEj.exit292.preheader ], [ %i.rn, %.loopexit ] ; 2 uses
  %indvars.iv443 = phi i64 [ 0, %_ZNK21libraw_static_table_tixEj.exit292.preheader ], [ %indvars.iv.next444, %.loopexit ] ; 10 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv443
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !124
  %.not271 = icmp eq i32 %i.pb, 0
  br i1 %.not271, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNK21libraw_static_table_tixEj.exit292
  %i.pc = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow272 = tail call i16 @llvm.umax.i16(i16 %i.pc, i16 1)
  %i.pd = uitofp i16 %narrow272 to float
  %i.pe = fdiv reassoc nsz arcp contract afn float 1.024000e+06, %i.pd
  %i.pf = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.pe)
  %i.pg = fptosi float %i.pf to i32
  %i.ph = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122 ; 2 uses
  %i.pi = zext i32 %i.ph to i64
  %i.pj = icmp samesign ult i64 %indvars.iv443, %i.pi
  br i1 %i.pj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.preheader
  %i.pk = load ptr, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, align 8, !tbaa !127
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv443
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit296

bb.bf:                                            ; preds = %.preheader
  %.not.i293 = icmp eq i32 %i.ph, 0
  br i1 %.not.i293, label %_ZNK21libraw_static_table_tixEj.exit296, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pn = load ptr, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, align 8, !tbaa !127 ; 2 uses
  %.not6.i294 = icmp eq ptr %i.pn, null
  br i1 %.not6.i294, label %_ZNK21libraw_static_table_tixEj.exit296, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit296

_ZNK21libraw_static_table_tixEj.exit296:          ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.0.i295 = phi i32 [ %i.pm, %bb.be ], [ %i.po, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bf ]
  %i.pp = sext i32 %.0.i295 to i64
  %i.pq = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.pp
  store i32 %i.pg, ptr %i.pq, align 8, !tbaa !124
  %i.pr = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %narrow272.1 = tail call i16 @llvm.umax.i16(i16 %i.pr, i16 1)
  %i.ps = uitofp i16 %narrow272.1 to float
  %i.pt = fdiv reassoc nsz arcp contract afn float 1.024000e+06, %i.ps
  %i.pu = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.pt)
  %i.pv = fptosi float %i.pu to i32
  %i.pw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %i.py = icmp samesign ult i64 %indvars.iv443, %i.px
  br i1 %i.py, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit296
  %.not.i293.1 = icmp eq i32 %i.pw, 0
  br i1 %.not.i293.1, label %_ZNK21libraw_static_table_tixEj.exit296.1, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pz = load ptr, ptr @_ZN6LibRaw27Canon_D30_linenums_2_StdWBiE, align 8, !tbaa !127 ; 2 uses
  %.not6.i294.1 = icmp eq ptr %i.pz, null
  br i1 %.not6.i294.1, label %_ZNK21libraw_static_table_tixEj.exit296.1, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !124
end_hunk_0
begin_hunk_1_@_ZN6LibRaw10parse_ciffExii:bb.a
  br i1 %or.cond23, label %bb.bw, label %.thread363

bb.bw:                                            ; preds = %bb.bv
  %i.rt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !122 ; 6 uses
  %i.ru = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.rv = icmp eq i16 %i.ru, %.sroa.0.0476        ; 2 uses
  %i.rw = icmp eq i32 %i.di, 2048                 ; 2 uses
  %or.cond25 = and i1 %i.rw, %i.rv
  br i1 %or.cond25, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw43Canon_KeyIs0x0410_Len2048_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122
  %i.ry = load ptr, ptr @_ZN6LibRaw43Canon_KeyIs0x0410_Len2048_linenums_2_StdWBiE, align 8, !tbaa !127
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %i.rz = icmp eq i32 %i.di, 3072
  %or.cond27 = and i1 %i.rz, %i.rv
  br i1 %or.cond27, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw43Canon_KeyIs0x0410_Len3072_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122
  %i.sb = load ptr, ptr @_ZN6LibRaw43Canon_KeyIs0x0410_Len3072_linenums_2_StdWBiE, align 8, !tbaa !127
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.sc = icmp eq i16 %i.ru, 0
  %or.cond29 = and i1 %i.rw, %i.sc
  br i1 %or.cond29, label %bb.cb, label %.thread363

bb.cb:                                            ; preds = %bb.ca
  %i.sd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw41Canon_KeyIsZero_Len2048_linenums_2_StdWBiE, i64 8), align 8, !tbaa !122
  %i.se = load ptr, ptr @_ZN6LibRaw41Canon_KeyIsZero_Len2048_linenums_2_StdWBiE, align 8, !tbaa !127
  %i.sf = tail call reassoc nsz arcp contract afn double @strtod(ptr noundef nonnull captures(none) %i.am, ptr noundef null) #9, !inline_history !18
  %i.sg = fcmp reassoc nsz arcp contract afn olt double %i.sf, f0x3FF051EB80000000
  %spec.select279 = select i1 %i.sg, i32 0, i32 %.0237418
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz, %bb.bx
  %.sroa.7.1 = phi i16 [ %.sroa.7.0, %bb.bx ], [ %.sroa.7.0, %bb.bz ], [ 0, %bb.cb ] ; 4 uses
  %.sroa.0.1 = phi i16 [ %.sroa.0.0476, %bb.bx ], [ %.sroa.0.0476, %bb.bz ], [ 0, %bb.cb ] ; 4 uses
  %.sroa.14.0 = phi i32 [ %i.rx, %bb.bx ], [ %i.sa, %bb.bz ], [ %i.sd, %bb.cb ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.ry, %bb.bx ], [ %i.sb, %bb.bz ], [ %i.se, %bb.cb ] ; 3 uses
  %.2245 = phi i64 [ 8, %bb.bx ], [ 16, %bb.bz ], [ %.0243417, %bb.cb ] ; 3 uses
  %.1238 = phi i32 [ %.0237418, %bb.bx ], [ %.0237418, %bb.bz ], [ %spec.select279, %bb.cb ] ; 2 uses
  %i.sh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Canon_wbi2stdE, i64 8), align 8, !tbaa !122 ; 3 uses
  %i.si = icmp ult i32 %.0253414, %i.sh
  br i1 %i.si, label %_ZNK21libraw_static_table_tixEj.exit300, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not.i297 = icmp eq i32 %i.sh, 0
  br i1 %.not.i297, label %.thread353, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sj = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8, !tbaa !127 ; 4 uses
  %.not6.i298 = icmp eq ptr %i.sj, null
  br i1 %.not6.i298, label %.thread353, label %_ZNK21libraw_static_table_tixEj.exit300.thread342

_ZNK21libraw_static_table_tixEj.exit300:          ; preds = %bb.cc
  %i.sk = load ptr, ptr @_ZN6LibRaw13Canon_wbi2stdE, align 8, !tbaa !127 ; 3 uses
  %i.sl = zext i32 %.0253414 to i64
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !124 ; 2 uses
  %i.so = icmp eq i32 %i.sn, 82
  br i1 %i.so, label %.thread353, label %_ZNK21libraw_static_table_tixEj.exit304

_ZNK21libraw_static_table_tixEj.exit300.thread342: ; preds = %bb.ce
  %i.sp = load i32, ptr %i.sj, align 4, !tbaa !124 ; 2 uses
  %i.sq = icmp eq i32 %i.sp, 82
  br i1 %i.sq, label %.thread353, label %_ZNK21libraw_static_table_tixEj.exit304.thread

_ZNK21libraw_static_table_tixEj.exit304:          ; preds = %_ZNK21libraw_static_table_tixEj.exit300
  %i.sr = icmp eq i32 %i.sn, 0
  %i.ss = icmp ne i32 %.0230419, 0
  %or.cond31 = select i1 %i.sr, i1 true, i1 %i.ss
  %.not266 = icmp eq i32 %.1238, 0
  %or.cond368 = select i1 %or.cond31, i1 true, i1 %.not266
  br i1 %or.cond368, label %.thread353, label %bb.cf

_ZNK21libraw_static_table_tixEj.exit304.thread:   ; preds = %_ZNK21libraw_static_table_tixEj.exit300.thread342
  %i.st = icmp eq i32 %i.sp, 0
  %i.su = icmp ne i32 %.0230419, 0
  %or.cond31507 = select i1 %i.st, i1 true, i1 %i.su
  %.not266508 = icmp eq i32 %.1238, 0
  %or.cond368509 = select i1 %or.cond31507, i1 true, i1 %.not266508
  br i1 %or.cond368509, label %.thread353, label %_ZNK21libraw_static_table_tixEj.exit308.thread

bb.cf:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit304
  %i.sv = zext i32 %.0253414 to i64
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.sv
  br label %_ZNK21libraw_static_table_tixEj.exit308.thread

_ZNK21libraw_static_table_tixEj.exit308.thread:   ; preds = %bb.cf, %_ZNK21libraw_static_table_tixEj.exit304.thread
  %i.sx = phi ptr [ %i.sk, %bb.cf ], [ %i.sj, %_ZNK21libraw_static_table_tixEj.exit304.thread ]
  %.0.i307.in = phi ptr [ %i.sw, %bb.cf ], [ %i.sj, %_ZNK21libraw_static_table_tixEj.exit304.thread ]
  %.not423 = icmp eq i32 %.sroa.14.0, 0
  br i1 %.not423, label %.thread353, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK21libraw_static_table_tixEj.exit308.thread
  %.0.i307 = load i32, ptr %.0.i307.in, align 4, !tbaa !124
  %.0.i307.fr = freeze i32 %.0.i307
  %i.sy = icmp eq i32 %.0.i307.fr, 83
  %spec.select364 = select i1 %i.sy, i32 1, i32 %.0253414 ; 2 uses
  %i.sz = icmp ult i32 %spec.select364, %i.sh
  %wide.trip.count = zext i32 %.sroa.14.0 to i64
  %narrow515 = select i1 %i.sz, i32 %spec.select364, i32 0
  %.0.i311.in.idx = zext i32 %narrow515 to i64
  %.0.i311.in = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.0.i311.in.idx
  %.0.i311 = load i32, ptr %.0.i311.in, align 4, !tbaa !124
  br label %_ZNK21libraw_static_table_tixEj.exit316

_ZNK21libraw_static_table_tixEj.exit316:          ; preds = %.lr.ph, %bb.cg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cg ] ; 3 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !124
  %i.tc = icmp eq i32 %.0.i311, %i.tb
  br i1 %i.tc, label %.thread353.loopexit.split.loop.exit511, label %bb.cg

bb.cg:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit316
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread353, label %_ZNK21libraw_static_table_tixEj.exit316, !llvm.loop !19

.thread353.loopexit.split.loop.exit511:           ; preds = %_ZNK21libraw_static_table_tixEj.exit316
  %i.td = trunc nuw i64 %indvars.iv to i32
  br label %.thread353

.thread353:                                       ; preds = %bb.cg, %.thread353.loopexit.split.loop.exit511, %_ZNK21libraw_static_table_tixEj.exit304.thread, %_ZNK21libraw_static_table_tixEj.exit308.thread, %bb.ce, %bb.cd, %_ZNK21libraw_static_table_tixEj.exit300.thread342, %_ZNK21libraw_static_table_tixEj.exit304, %_ZNK21libraw_static_table_tixEj.exit300
  %.not266.not = phi i1 [ false, %bb.ce ], [ false, %_ZNK21libraw_static_table_tixEj.exit300.thread342 ], [ false, %bb.cd ], [ false, %_ZNK21libraw_static_table_tixEj.exit300 ], [ false, %_ZNK21libraw_static_table_tixEj.exit304 ], [ true, %_ZNK21libraw_static_table_tixEj.exit308.thread ], [ false, %_ZNK21libraw_static_table_tixEj.exit304.thread ], [ true, %.thread353.loopexit.split.loop.exit511 ], [ true, %bb.cg ]
  %.2239356 = phi i32 [ 0, %bb.ce ], [ 0, %_ZNK21libraw_static_table_tixEj.exit300.thread342 ], [ 0, %bb.cd ], [ 0, %_ZNK21libraw_static_table_tixEj.exit300 ], [ 0, %_ZNK21libraw_static_table_tixEj.exit304 ], [ 1, %_ZNK21libraw_static_table_tixEj.exit308.thread ], [ 0, %_ZNK21libraw_static_table_tixEj.exit304.thread ], [ 1, %.thread353.loopexit.split.loop.exit511 ], [ 1, %bb.cg ] ; 2 uses
  %.1226 = phi i32 [ %i.rt, %bb.ce ], [ %i.rt, %_ZNK21libraw_static_table_tixEj.exit300.thread342 ], [ %i.rt, %bb.cd ], [ %i.rt, %_ZNK21libraw_static_table_tixEj.exit300 ], [ %i.rt, %_ZNK21libraw_static_table_tixEj.exit304 ], [ 0, %_ZNK21libraw_static_table_tixEj.exit308.thread ], [ %i.rt, %_ZNK21libraw_static_table_tixEj.exit304.thread ], [ %i.td, %.thread353.loopexit.split.loop.exit511 ], [ %.sroa.14.0, %bb.cg ]
  %i.te = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.tf = add nsw i64 %.2245, 78
  %i.tg = load ptr, ptr %i.te, align 8, !tbaa !84
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.ti = load ptr, ptr %i.th, align 8
  %i.tj = tail call noundef i32 %i.ti(ptr noundef nonnull align 8 dereferenceable(8) %i.te, i64 noundef %i.tf, i32 noundef 1), !call_target !99 ; 0 uses
  %.not424 = icmp eq i32 %.sroa.14.0, 0
  br i1 %.not424, label %._crit_edge, label %_ZNK21libraw_static_table_tixEj.exit320.preheader

_ZNK21libraw_static_table_tixEj.exit320.preheader: ; preds = %.thread353
  %i.tk = zext i32 %.1226 to i64                  ; 2 uses
  %wide.trip.count440 = zext i32 %.sroa.14.0 to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.tk
  br label %_ZNK21libraw_static_table_tixEj.exit320

._crit_edge:                                      ; preds = %.loopexit371, %.thread353
  %.2232.lcssa = phi i32 [ %.0230419, %.thread353 ], [ %.3233, %.loopexit371 ]
  %.not267 = icmp eq i32 %.2232.lcssa, 0
  br i1 %.not267, label %bb.ci, label %.thread363

_ZNK21libraw_static_table_tixEj.exit320:          ; preds = %_ZNK21libraw_static_table_tixEj.exit320.preheader, %.loopexit371
  %indvars.iv437 = phi i64 [ 0, %_ZNK21libraw_static_table_tixEj.exit320.preheader ], [ %indvars.iv.next438, %.loopexit371 ] ; 3 uses
  %.2232393 = phi i32 [ %.0230419, %_ZNK21libraw_static_table_tixEj.exit320.preheader ], [ %.3233, %.loopexit371 ] ; 2 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv437 ; 5 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !124
  %.not268 = icmp eq i32 %i.tn, 0
  br i1 %.not268, label %bb.ch, label %.preheader372

.preheader372:                                    ; preds = %_ZNK21libraw_static_table_tixEj.exit320
  %i.to = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.tp = xor i16 %.sroa.0.1, %i.to
  %i.tq = zext i16 %i.tp to i32
  %i.tr = load i32, ptr %i.tm, align 4, !tbaa !124
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store i32 %i.tq, ptr %i.tu, align 4, !tbaa !124
  %i.tv = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.tw = xor i16 %.sroa.7.1, %i.tv
  %i.tx = zext i16 %i.tw to i32
  %i.ty = load i32, ptr %i.tm, align 4, !tbaa !124
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.tz
  store i32 %i.tx, ptr %i.ua, align 8, !tbaa !124
  %i.ub = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.uc = xor i16 %.sroa.0.1, %i.ub
  %i.ud = zext i16 %i.uc to i32
  %i.ue = load i32, ptr %i.tm, align 4, !tbaa !124
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store i32 %i.ud, ptr %i.uh, align 8, !tbaa !124
  %i.ui = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.uj = xor i16 %.sroa.7.1, %i.ui
  %i.uk = zext i16 %i.uj to i32
  %i.ul = load i32, ptr %i.tm, align 4, !tbaa !124
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  store i32 %i.uk, ptr %i.uo, align 4, !tbaa !124
  %i.up = icmp eq i64 %indvars.iv437, %i.tk
  %or.cond = select i1 %.not266.not, i1 %i.up, i1 false
  br i1 %or.cond, label %.preheader370, label %.loopexit371

.preheader370:                                    ; preds = %.preheader372
  %i.uq = load i32, ptr %i.tl, align 4, !tbaa !124
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ur
  %i.ut = load <4 x i32>, ptr %i.us, align 8, !tbaa !124
  %i.uu = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ut to <4 x float>
  store <4 x float> %i.uu, ptr %i.al, align 4, !tbaa !123
  br label %.loopexit371

bb.ch:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit320
  %i.uv = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !84
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 32
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = tail call noundef i32 %i.uy(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, i64 noundef 8, i32 noundef 1), !call_target !99 ; 0 uses
  br label %.loopexit371

.loopexit371:                                     ; preds = %.preheader370, %bb.ch, %.preheader372
  %.3233 = phi i32 [ %.2232393, %.preheader372 ], [ %.2232393, %bb.ch ], [ 1, %.preheader370 ] ; 2 uses
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count440
  br i1 %exitcond441.not, label %._crit_edge, label %_ZNK21libraw_static_table_tixEj.exit320, !llvm.loop !20

bb.ci:                                            ; preds = %._crit_edge
  store float -1.000000e+00, ptr %i.al, align 4, !tbaa !123
  br label %.thread363

bb.cj:                                            ; preds = %bb.j
  %i.va = icmp eq i16 %i.dh, 4144
  %i.vb = icmp sgt i32 %.0253414, -1
  %or.cond33 = select i1 %i.va, i1 %i.vb, i1 false
  br i1 %or.cond33, label %bb.ck, label %.thread361

bb.ck:                                            ; preds = %bb.cj
  %i.vc = shl nuw i32 1, %.0253414
  %i.vd = and i32 %i.vc, 98368
  %.not265 = icmp eq i32 %i.vd, 0
  br i1 %.not265, label %.thread363, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @_ZN6LibRaw15ciff_block_1030Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.thread363

.thread361:                                       ; preds = %bb.cj
  switch i16 %i.dh, label %.thread363 [
    i16 4145, label %bb.cm
    i16 20508, label %bb.cn
    i16 20521, label %bb.co
    i16 6158, label %bb.cw
    i16 22542, label %bb.cv
    i16 22551, label %bb.ct
    i16 22580, label %bb.cu
  ]

bb.cm:                                            ; preds = %.thread361
  %i.ve = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.vf = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.vf, ptr %i.bx, align 8, !tbaa !128
  store i16 %i.vf, ptr %i.bz, align 2, !tbaa !129
  %i.vg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  store i16 %i.vg, ptr %i.ca, align 2, !tbaa !130
  store i16 %i.vg, ptr %i.by, align 8, !tbaa !131
  %i.vh = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !84
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = tail call noundef i32 %i.vk(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, i64 noundef 4, i32 noundef 1), !call_target !99 ; 0 uses
  %i.vm = tail call i64 @_ZN6LibRaw13get_CanonAreaEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i64 %i.vm, ptr %i.cb, align 4, !tbaa !12
  %i.vn = tail call i64 @_ZN6LibRaw13get_CanonAreaEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i64 %i.vn, ptr %i.cc, align 4, !tbaa !12
  br label %.thread363

bb.cn:                                            ; preds = %bb.e, %.thread361
  %i.vo = and i32 %i.di, 65535
  %i.vp = uitofp nneg i32 %i.vo to float
  store float %i.vp, ptr %i.aw, align 8, !tbaa !119
  br label %.thread363

bb.co:                                            ; preds = %bb.e, %.thread361
  %i.vq = ashr i32 %i.di, 16
  %i.vr = sitofp reassoc nsz arcp contract afn i32 %i.vq to float ; 3 uses
  store float %i.vr, ptr %i.bt, align 8, !tbaa !132
  %i.vs = trunc i32 %i.di to i16
  store i16 %i.vs, ptr %i.bu, align 4, !tbaa !133
  %sext.mask = and i32 %i.di, 65535
  %i.vt = icmp eq i32 %sext.mask, 2
  br i1 %i.vt, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i16 32, ptr %i.bv, align 8, !tbaa !134
  %i.vu = fmul reassoc nnan nsz arcp contract afn float %i.vr, 3.125000e-02 ; 2 uses
  store float %i.vu, ptr %i.bt, align 8, !tbaa !132
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vv = phi float [ %i.vu, %bb.cp ], [ %i.vr, %bb.co ]
  store float %i.vv, ptr %i.bw, align 4, !tbaa !135
  br label %.thread363

bb.cr:                                            ; preds = %bb.e
  %i.vw = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.vw, ptr %i.bs, align 8, !tbaa !136
  br label %.thread363

bb.cs:                                            ; preds = %bb.e
  %i.vx = tail call reassoc nsz arcp contract afn noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.di)
  store float %i.vx, ptr %i.br, align 4, !tbaa !137
  br label %.thread363

bb.ct:                                            ; preds = %bb.e, %.thread361
  store i32 %i.di, ptr %i.bq, align 8, !tbaa !138
  br label %.thread363

bb.cu:                                            ; preds = %bb.e, %.thread361
  %i.vy = zext i32 %i.di to i64                   ; 2 uses
  store i64 %i.vy, ptr %i.bp, align 8, !tbaa !139
  tail call void @_ZN6LibRaw20setCanonBodyFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.vy)
  br label %.thread363

bb.cv:                                            ; preds = %.thread361, %bb.e
  %i.vz = sext i32 %i.di to i64
  store i64 %i.vz, ptr %i.bo, align 8, !tbaa !140
  br label %.thread363

bb.cw:                                            ; preds = %.thread361
  %i.wa = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.wb = zext i32 %i.wa to i64
  store i64 %i.wb, ptr %i.bo, align 8, !tbaa !140
  br label %.thread363

.thread363:                                       ; preds = %.thread363.loopexit, %bb.ck, %bb.ca, %bb.ci, %._crit_edge, %bb.y, %.thread361, %._crit_edge398, %bb.bu, %bb.x, %bb.k, %bb.m, %bb.q, %bb.s, %bb.v, %bb.u, %.loopexit374, %bb.ay, %bb.ax, %bb.aw, %bb.bv, %bb.cm, %bb.cq, %bb.cs, %bb.cu, %bb.cw, %bb.cv, %bb.ct, %bb.cr, %bb.cn, %bb.cl, %bb.ba, %bb.bb, %bb.au, %bb.t, %bb.r, %bb.p, %bb.l
  %.sroa.7.2 = phi i16 [ %.sroa.7.0, %bb.ck ], [ %.sroa.7.0, %bb.cl ], [ %.sroa.7.0, %.thread361 ], [ %.sroa.7.0, %bb.cm ], [ %.sroa.7.0, %bb.cn ], [ %.sroa.7.0, %bb.cq ], [ %.sroa.7.0, %bb.cr ], [ %.sroa.7.0, %bb.cs ], [ %.sroa.7.0, %bb.ct ], [ %.sroa.7.0, %bb.cu ], [ %.sroa.7.0, %bb.cv ], [ %.sroa.7.0, %bb.cw ], [ %.sroa.7.0, %bb.k ], [ %.sroa.7.0, %bb.l ], [ %.sroa.7.0, %bb.m ], [ %.sroa.7.0, %bb.p ], [ %.sroa.7.0, %bb.q ], [ %.sroa.7.0, %bb.r ], [ %.sroa.7.0, %bb.s ], [ %.sroa.7.0, %bb.t ], [ %.sroa.7.0, %bb.v ], [ %.sroa.7.0, %bb.u ], [ %.sroa.7.0, %.thread363.loopexit ], [ %.sroa.7.0, %bb.x ], [ %.sroa.7.0, %bb.y ], [ %.sroa.7.0, %.loopexit374 ], [ %.sroa.7.0, %bb.au ], [ %.sroa.7.0, %bb.ay ], [ %.sroa.7.0, %bb.aw ], [ %.sroa.7.0, %bb.ax ], [ %.sroa.7.0, %bb.bb ], [ %.sroa.7.0, %bb.ba ], [ %.sroa.7.0, %bb.bu ], [ %.sroa.7.0, %._crit_edge398 ], [ %.sroa.7.1, %bb.ci ], [ %.sroa.7.1, %._crit_edge ], [ %.sroa.7.0, %bb.ca ], [ %.sroa.7.0, %bb.bv ]
  %.sroa.0.2 = phi i16 [ %.sroa.0.0476, %bb.ck ], [ %.sroa.0.0476, %bb.cl ], [ %.sroa.0.0476, %.thread361 ], [ %.sroa.0.0476, %bb.cm ], [ %.sroa.0.0476, %bb.cn ], [ %.sroa.0.0476, %bb.cq ], [ %.sroa.0.0476, %bb.cr ], [ %.sroa.0.0476, %bb.cs ], [ %.sroa.0.0476, %bb.ct ], [ %.sroa.0.0476, %bb.cu ], [ %.sroa.0.0476, %bb.cv ], [ %.sroa.0.0476, %bb.cw ], [ %.sroa.0.0476, %bb.k ], [ %.sroa.0.0476, %bb.l ], [ %.sroa.0.0476, %bb.m ], [ %.sroa.0.0476, %bb.p ], [ %.sroa.0.0476, %bb.q ], [ %.sroa.0.0476, %bb.r ], [ %.sroa.0.0476, %bb.s ], [ %.sroa.0.0476, %bb.t ], [ %.sroa.0.0476, %bb.v ], [ %.sroa.0.0476, %bb.u ], [ %.sroa.0.0476, %.thread363.loopexit ], [ %.sroa.0.0476, %bb.x ], [ %.sroa.0.0476, %bb.y ], [ %.sroa.0.0476, %.loopexit374 ], [ %.sroa.0.0476, %bb.au ], [ %.sroa.0.0476, %bb.ay ], [ %.sroa.0.0476, %bb.aw ], [ %.sroa.0.0476, %bb.ax ], [ %.sroa.0.0476, %bb.bb ], [ %.sroa.0.0476, %bb.ba ], [ %.sroa.0.0476, %bb.bu ], [ %.sroa.0.0476, %._crit_edge398 ], [ %.sroa.0.1, %bb.ci ], [ %.sroa.0.1, %._crit_edge ], [ %.sroa.0.0476, %bb.ca ], [ %.sroa.0.0476, %bb.bv ]
  %.2255 = phi i32 [ %.0253414, %bb.ck ], [ %.0253414, %bb.cl ], [ %.0253414, %.thread361 ], [ %.0253414, %bb.cm ], [ %.0253414, %bb.cn ], [ %.0253414, %bb.cq ], [ %.0253414, %bb.cr ], [ %.0253414, %bb.cs ], [ %.0253414, %bb.ct ], [ %.0253414, %bb.cu ], [ %.0253414, %bb.cv ], [ %.0253414, %bb.cw ], [ %.0253414, %bb.k ], [ %.0253414, %bb.l ], [ %.0253414, %bb.m ], [ %.0253414, %bb.p ], [ %.0253414, %bb.q ], [ %.0253414, %bb.r ], [ %.0253414, %bb.s ], [ %.0253414, %bb.t ], [ %spec.select, %bb.v ], [ %spec.select, %bb.u ], [ %.0253414, %.thread363.loopexit ], [ %.0253414, %bb.x ], [ %.0253414, %bb.y ], [ %.0253414, %.loopexit374 ], [ %.0253414, %bb.au ], [ %.0253414, %bb.ay ], [ %.0253414, %bb.aw ], [ %.0253414, %bb.ax ], [ %.0253414, %bb.bb ], [ %.0253414, %bb.ba ], [ 0, %bb.bu ], [ %.0253414, %._crit_edge398 ], [ %.0253414, %bb.ci ], [ %.0253414, %._crit_edge ], [ %.0253414, %bb.ca ], [ %.0253414, %bb.bv ]
  %.2251 = phi i16 [ %.0249416, %bb.ck ], [ %.0249416, %bb.cl ], [ %.0249416, %.thread361 ], [ %.0249416, %bb.cm ], [ %.0249416, %bb.cn ], [ %.0249416, %bb.cq ], [ %.0249416, %bb.cr ], [ %.0249416, %bb.cs ], [ %.0249416, %bb.ct ], [ %.0249416, %bb.cu ], [ %.0249416, %bb.cv ], [ %.0249416, %bb.cw ], [ %.0249416, %bb.k ], [ %.0249416, %bb.l ], [ %.0249416, %bb.m ], [ %.0249416, %bb.p ], [ %.0249416, %bb.q ], [ %.0249416, %bb.r ], [ %.0249416, %bb.s ], [ %.0249416, %bb.t ], [ %.0249416, %bb.v ], [ %.0249416, %bb.u ], [ %.0249416, %.thread363.loopexit ], [ %.0249416, %bb.x ], [ 1, %bb.y ], [ %.0249416, %.loopexit374 ], [ %.0249416, %bb.au ], [ %.0249416, %bb.ay ], [ %.0249416, %bb.aw ], [ %.0249416, %bb.ax ], [ %.0249416, %bb.bb ], [ %.0249416, %bb.ba ], [ %.0249416, %bb.bu ], [ %.0249416, %._crit_edge398 ], [ %.0249416, %bb.ci ], [ %.0249416, %._crit_edge ], [ %.0249416, %bb.ca ], [ 0, %bb.bv ]
  %.4247 = phi i64 [ %.0243417, %bb.ck ], [ %.0243417, %bb.cl ], [ %.0243417, %.thread361 ], [ %.0243417, %bb.cm ], [ %.0243417, %bb.cn ], [ %.0243417, %bb.cq ], [ %.0243417, %bb.cr ], [ %.0243417, %bb.cs ], [ %.0243417, %bb.ct ], [ %.0243417, %bb.cu ], [ %.0243417, %bb.cv ], [ %.0243417, %bb.cw ], [ %.0243417, %bb.k ], [ %.0243417, %bb.l ], [ %.0243417, %bb.m ], [ %.0243417, %bb.p ], [ %.0243417, %bb.q ], [ %.0243417, %bb.r ], [ %.0243417, %bb.s ], [ %.0243417, %bb.t ], [ %.0243417, %bb.v ], [ %.0243417, %bb.u ], [ %.0243417, %.thread363.loopexit ], [ %.0243417, %bb.x ], [ -14, %bb.y ], [ %.0243417, %.loopexit374 ], [ %.0243417, %bb.au ], [ %.0243417, %bb.ay ], [ %.0243417, %bb.aw ], [ %.0243417, %bb.ax ], [ %.0243417, %bb.bb ], [ %.0243417, %bb.ba ], [ %.0243417, %bb.bu ], [ %.0243417, %._crit_edge398 ], [ %.2245, %bb.ci ], [ %.2245, %._crit_edge ], [ %.0243417, %bb.ca ], [ %.0243417, %bb.bv ]
  %.4241 = phi i32 [ %.0237418, %bb.ck ], [ %.0237418, %bb.cl ], [ %.0237418, %.thread361 ], [ %.0237418, %bb.cm ], [ %.0237418, %bb.cn ], [ %.0237418, %bb.cq ], [ %.0237418, %bb.cr ], [ %.0237418, %bb.cs ], [ %.0237418, %bb.ct ], [ %.0237418, %bb.cu ], [ %.0237418, %bb.cv ], [ %.0237418, %bb.cw ], [ %.0237418, %bb.k ], [ %.0237418, %bb.l ], [ %.0237418, %bb.m ], [ %.0237418, %bb.p ], [ %.0237418, %bb.q ], [ %.0237418, %bb.r ], [ %.0237418, %bb.s ], [ %.0237418, %bb.t ], [ %.0237418, %bb.v ], [ %.0237418, %bb.u ], [ %.0237418, %.thread363.loopexit ], [ %.0237418, %bb.x ], [ %.0237418, %bb.y ], [ %.0237418, %.loopexit374 ], [ %.0237418, %bb.au ], [ %.0237418, %bb.ay ], [ %.0237418, %bb.aw ], [ %.0237418, %bb.ax ], [ %.0237418, %bb.bb ], [ %.0237418, %bb.ba ], [ %.0237418, %bb.bu ], [ %.0237418, %._crit_edge398 ], [ %.2239356, %bb.ci ], [ %.2239356, %._crit_edge ], [ %.0237418, %bb.ca ], [ %.0237418, %bb.bv ]
  %.5235 = phi i32 [ %.0230419, %bb.ck ], [ %.0230419, %bb.cl ], [ %.0230419, %.thread361 ], [ %.0230419, %bb.cm ], [ %.0230419, %bb.cn ], [ %.0230419, %bb.cq ], [ %.0230419, %bb.cr ], [ %.0230419, %bb.cs ], [ %.0230419, %bb.ct ], [ %.0230419, %bb.cu ], [ %.0230419, %bb.cv ], [ %.0230419, %bb.cw ], [ %.0230419, %bb.k ], [ %.0230419, %bb.l ], [ %.0230419, %bb.m ], [ %.0230419, %bb.p ], [ %.0230419, %bb.q ], [ %.0230419, %bb.r ], [ %.0230419, %bb.s ], [ %.0230419, %bb.t ], [ %.0230419, %bb.v ], [ %.0230419, %bb.u ], [ %.0230419, %.thread363.loopexit ], [ %.0230419, %bb.x ], [ %spec.select278, %bb.y ], [ %.0230419, %.loopexit374 ], [ %.0230419, %bb.au ], [ %.0230419, %bb.ay ], [ %.0230419, %bb.aw ], [ %.0230419, %bb.ax ], [ %.0230419, %bb.bb ], [ %.0230419, %bb.ba ], [ %.0230419, %bb.bu ], [ %.0230419, %._crit_edge398 ], [ 0, %bb.ci ], [ 1, %._crit_edge ], [ %.0230419, %bb.ca ], [ %.0230419, %bb.bv ]
  %i.wc = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !84
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = tail call noundef i32 %i.wf(ptr noundef nonnull align 8 dereferenceable(8) %i.wc, i64 noundef %i.dq, i32 noundef 0), !call_target !99 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.thread363, %bb.g
  %.sroa.7.3 = phi i16 [ %.sroa.7.2, %.thread363 ], [ %.sroa.7.0, %bb.g ]
  %.sroa.0.3 = phi i16 [ %.sroa.0.2, %.thread363 ], [ %.sroa.0.0476, %bb.g ]
  %.3256 = phi i32 [ %.2255, %.thread363 ], [ %.0253414, %bb.g ]
  %.3252 = phi i16 [ %.2251, %.thread363 ], [ %.0249416, %bb.g ]
  %.5248 = phi i64 [ %.4247, %.thread363 ], [ %.0243417, %bb.g ]
  %.5242 = phi i32 [ %.4241, %.thread363 ], [ %.0237418, %bb.g ]
  %.6236 = phi i32 [ %.5235, %.thread363 ], [ %.0230419, %bb.g ]
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %.loopexit388, label %bb.e

.loopexit388:                                     ; preds = %bb.cx, %bb.d, %bb.c
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

declare void @_ZN6LibRaw10trimSpacesEPc(ptr noundef) local_unnamed_addr #1

declare noundef float @_ZN6LibRaw12int_to_floatEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #1

declare noundef float @_ZN6LibRaw21_CanonConvertApertureEt(i16 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6LibRaw15Canon_WBpresetsEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6LibRaw20Canon_CameraSettingsEj(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #7

declare i64 @_ZN6LibRaw13get_CanonAreaEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

declare void @_ZN6LibRaw20setCanonBodyFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
