Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dynafu_tsdf?download=true
inline.NumInlined: 1368
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK2cv6dynafu16IntegrateInvokerclERKNS_5RangeE:bb.a
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ac

bb.t:                                             ; preds = %bb.d
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ao

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

.loopexit137:                                     ; preds = %bb.p
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

.loopexit.split-lp138:                            ; preds = %bb.o
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %5, align 8, !tbaa !162   ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIfSaIfEED2Ev.exit117, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = load ptr, ptr %i.k, align 8, !tbaa !313
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit117

bb.w:                                             ; preds = %bb.aa, %.lr.ph.new
  %.096142 = phi i64 [ 0, %.lr.ph.new ], [ %i.gc, %bb.aa ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aa ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.096142
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !33 ; 2 uses
  %i.fj = fcmp uno float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = load i32, ptr %i.dw, align 4, !tbaa !132 ; 2 uses
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fl
  store float %i.fi, ptr %i.fm, align 4, !tbaa !33
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.096142
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !28
  %i.fp = add nsw i32 %i.fk, 1
  store i32 %i.fp, ptr %i.dw, align 4, !tbaa !132
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fl
  store i32 %i.fo, ptr %i.fq, align 4, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.fr = or disjoint i64 %.096142, 1             ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !33 ; 2 uses
  %i.fu = fcmp uno float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = load i32, ptr %i.dw, align 4, !tbaa !132 ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fw
  store float %i.ft, ptr %i.fx, align 4, !tbaa !33
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fr
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = add nsw i32 %i.fv, 1
  store i32 %i.ga, ptr %i.dw, align 4, !tbaa !132
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.fw
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gc = add nuw i64 %.096142, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.w, !llvm.loop !307

_ZNSt6vectorIfSaIfEED2Ev.exit117:                 ; preds = %.loopexit137, %.loopexit.split-lp138, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.fb, %bb.v ], [ %i.fb, %bb.u ], [ %lpad.loopexit139, %.loopexit137 ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp138 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.gd = load ptr, ptr %4, align 8, !tbaa !158   ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit119, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit117
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !312
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gh) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit119

_ZNSt6vectorIiSaIiEED2Ev.exit119:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab, %_ZNSt6vectorIfSaIfEED2Ev.exit117
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit117 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ao

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt12__shared_ptrIN2cv5flann12GenericIndexIN7cvflann9L2_SimpleIfEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gi = load ptr, ptr %i.g, align 8, !tbaa !311
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(40) %i.gj, i64 40, i1 false), !tbaa.struct !314
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bz, i64 88 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !132
  %i.gm = invoke { <2 x float>, float } @_ZNK2cv6dynafu9WarpField9applyWarpENS_7Point3_IfEESt5arrayIiLm10EEib(ptr noundef nonnull align 8 dereferenceable(320) %i.gi, <2 x float> %i.cf, float %i.cg, ptr noundef nonnull byval(%"struct.std::array") align 8 %6, i32 noundef %i.gl, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.fca.0.extract27 = extractvalue { <2 x float>, float } %i.gm, 0 ; 4 uses
  %.fca.1.extract28 = extractvalue { <2 x float>, float } %i.gm, 1 ; 2 uses
  %.sroa.0129.0.vec.extract = extractelement <2 x float> %.fca.0.extract27, i64 0
  %.sroa.0129.4.vec.extract = extractelement <2 x float> %.fca.0.extract27, i64 1
  %i.gn = load float, ptr %i.m, align 8, !tbaa !33
  %i.go = load float, ptr %i.n, align 4, !tbaa !33
  %i.gp = fmul float %.sroa.0129.4.vec.extract, %i.go
  %i.gq = call float @llvm.fmuladd.f32(float %i.gn, float %.sroa.0129.0.vec.extract, float %i.gp)
  %i.gr = load float, ptr %i.o, align 8, !tbaa !33
  %i.gs = call float @llvm.fmuladd.f32(float %i.gr, float %.fca.1.extract28, float %i.gq)
  %i.gt = load float, ptr %i.p, align 4, !tbaa !33
  %i.gu = fadd float %i.gt, %i.gs                 ; 3 uses
  %i.gv = fcmp ugt float %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.af, label %bb.an

bb.ae:                                            ; preds = %bb.ac
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.gx = fdiv float 1.000000e+00, %i.gu
  %i.gy = load <8 x float>, ptr %i.q, align 8, !tbaa !33 ; 4 uses
  %i.gz = shufflevector <2 x float> %.fca.0.extract27, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = shufflevector <8 x float> %i.gy, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.hb = fmul <2 x float> %i.gz, %i.ha
  %i.hc = shufflevector <8 x float> %i.gy, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.hd = shufflevector <2 x float> %.fca.0.extract27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hd, <2 x float> %i.hb)
  %i.hf = shufflevector <8 x float> %i.gy, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.hg = insertelement <2 x float> poison, float %.fca.1.extract28, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hh, <2 x float> %i.he)
  %i.hj = shufflevector <8 x float> %i.gy, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.hk = fadd <2 x float> %i.hj, %i.hi
  %i.hl = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x float> %i.hm, %i.hk           ; 4 uses
  %i.ho = load <2 x float>, ptr %i.r, align 8, !tbaa !33
  %i.hp = load <2 x float>, ptr %i.s, align 8, !tbaa !33
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hn, <2 x float> %i.hp) ; 7 uses
  %i.hr = load ptr, ptr %i.t, align 8, !tbaa !315, !nonnull !91, !align !92 ; 4 uses
  %i.hs = extractelement <2 x float> %i.hq, i64 0
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  br i1 %i.ht, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !164
  %i.hw = add nsw i32 %i.hv, -1
  %i.hx = sitofp i32 %i.hw to float
  %i.hy = extractelement <2 x float> %i.hq, i64 0
  %i.hz = fcmp oge float %i.hy, %i.hx
  %i.ia = extractelement <2 x float> %i.hq, i64 1
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  %or.cond.i = select i1 %i.hz, i1 true, i1 %i.ib
  br i1 %or.cond.i, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !95
  %i.ie = add nsw i32 %i.id, -1
  %i.if = sitofp i32 %i.ie to float
  %i.ig = extractelement <2 x float> %i.hq, i64 1
  %i.ih = fcmp ult float %i.ig, %i.if
  br i1 %i.ih, label %bb.ai, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ii = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.hq)
  %i.ij = fptosi <2 x float> %i.ii to <2 x i32>   ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !93 ; 2 uses
  %i.im = extractelement <2 x i32> %i.ij, i64 1   ; 2 uses
  %7 = sext i32 %i.im to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 128
  %i.io = load i64, ptr %i.in, align 8, !tbaa !77 ; 2 uses
  %i.ip = mul i64 %i.io, %7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ip ; 2 uses
  %i.ir = add nsw i32 %i.im, 1
  %8 = sext i32 %i.ir to i64
  %i.is = mul i64 %i.io, %8
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.is ; 2 uses
  %i.iu = extractelement <2 x i32> %i.ij, i64 0   ; 2 uses
  %9 = sext i32 %i.iu to i64                      ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %9
  %i.iw = add nsw i32 %i.iu, 1
  %10 = sext i32 %i.iw to i64                     ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %10
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.it, i64 %9
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %10
  %i.ja = load <2 x float>, ptr %i.iv, align 4, !tbaa !33 ; 3 uses
  %i.jb = load float, ptr %i.ix, align 4, !tbaa !33
  %i.jc = load <2 x float>, ptr %i.iy, align 4, !tbaa !33 ; 3 uses
  %i.jd = load float, ptr %i.iz, align 4, !tbaa !33
  %i.je = extractelement <2 x float> %i.ja, i64 0
  %i.jf = fcmp ogt float %i.je, 0.000000e+00
  %i.jg = fcmp ogt float %i.jb, 0.000000e+00
  %i.jh = extractelement <2 x float> %i.jc, i64 0
  %i.ji = fcmp ogt float %i.jh, 0.000000e+00
  %i.jj = fcmp ogt float %i.jd, 0.000000e+00
  %or.cond4.i = select i1 %i.jf, i1 %i.jg, i1 false
  %or.cond6.i = select i1 %or.cond4.i, i1 %i.ji, i1 false
  %or.cond8.i = select i1 %or.cond6.i, i1 %i.jj, i1 false
  br i1 %or.cond8.i, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit: ; preds = %bb.ai
  %i.jk = sitofp <2 x i32> %i.ij to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.hq, %i.jk
  %foldExtExtBinop203 = fsub <2 x float> %i.hq, %i.jk
  %i.jl = extractelement <2 x float> %foldExtExtBinop203, i64 1
  %i.jm = shufflevector <2 x float> %i.jc, <2 x float> %i.ja, <2 x i32> <i32 1, i32 3>
  %i.jn = shufflevector <2 x float> %i.jc, <2 x float> %i.ja, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jo = fsub <2 x float> %i.jm, %i.jn
  %i.jp = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jo, <2 x float> %i.jn) ; 2 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 0
  %i.js = extractelement <2 x float> %i.jq, i64 1 ; 2 uses
  %i.jt = fsub float %i.jr, %i.js
  %i.ju = call float @llvm.fmuladd.f32(float %i.jl, float %i.jt, float %i.js) ; 2 uses
  %i.jv = fcmp oeq float %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.an, label %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread

_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread: ; preds = %bb.ai, %bb.ag, %bb.ah, %bb.af, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit
  %.1.i135 = phi float [ %i.ju, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit ], [ +qnan, %bb.af ], [ +qnan, %bb.ah ], [ +qnan, %bb.ag ], [ +qnan, %bb.ai ]
  %foldExtExtBinop205 = fmul <2 x float> %i.hn, %i.hn
  %i.jw = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.jx = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.jy = call float @llvm.fmuladd.f32(float %i.jx, float %i.jx, float %i.jw)
  %i.jz = fadd float %i.jy, 1.000000e+00
  %sqrt = call float @llvm.sqrt.f32(float %i.jz)
  %i.ka = load float, ptr %i.u, align 4, !tbaa !316
  %i.kb = fneg float %i.gu
  %i.kc = call float @llvm.fmuladd.f32(float %.1.i135, float %i.ka, float %i.kb)
  %i.kd = fmul float %sqrt, %i.kc                 ; 2 uses
  %i.ke = load ptr, ptr %i.f, align 8, !tbaa !90, !nonnull !91, !align !92 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 112
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !34
  %i.kh = fneg float %i.kg
  %i.ki = fcmp ult float %i.kd, %i.kh
  br i1 %i.ki, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread
  %i.kj = load float, ptr %i.v, align 8, !tbaa !317
  %i.kk = fmul float %i.kd, %i.kj
  %i.kl = call nsz noundef float @llvm.minnum.f32(float %i.kk, float 1.000000e+00)
  %i.km = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.kn = load ptr, ptr %i.g, align 8, !tbaa !311 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !318
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !319
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = ashr exact i64 %i.ku, 4
  %i.kw = load i32, ptr %i.kn, align 8, !tbaa !155
  %i.kx = sext i32 %i.kw to i64
  %.not = icmp ult i64 %i.kv, %i.kx
  br i1 %.not, label %._crit_edge146, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %i.ky = load i32, ptr %i.gk, align 4, !tbaa !132 ; 4 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  br i1 %i.kz, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader
  %i.la = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ky to i64   ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.lb = icmp ult i32 %i.ky, 4
  br i1 %i.lb, label %.epil.preheader210, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter215 = and i64 %wide.trip.count, 2147483644
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph145.new
  %indvars.iv = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next.3, %bb.ak ] ; 5 uses
  %.084143 = phi float [ 0.000000e+00, %.lr.ph145.new ], [ %i.lu, %bb.ak ]
  %niter216 = phi i64 [ 0, %.lr.ph145.new ], [ %niter216.next.3, %bb.ak ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !33
  %i.le = call noundef float @sqrtf(float noundef %i.ld) #28
  %i.lf = fadd float %.084143, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load float, ptr %i.lh, align 4, !tbaa !33
  %i.lj = call noundef float @sqrtf(float noundef %i.li) #28
  %i.lk = fadd float %i.lf, %i.lj
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !33
  %i.lo = call noundef float @sqrtf(float noundef %i.ln) #28
  %i.lp = fadd float %i.lk, %i.lo
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !33
  %i.lt = call noundef float @sqrtf(float noundef %i.ls) #28
  %i.lu = fadd float %i.lp, %i.lt                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter216.next.3 = add i64 %niter216, 4         ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %._crit_edge146.thread.unr-lcssa, label %bb.ak, !llvm.loop !308

._crit_edge146.thread.unr-lcssa:                  ; preds = %bb.ak
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %._crit_edge146.thread, label %.epil.preheader210

.epil.preheader210:                               ; preds = %._crit_edge146.thread.unr-lcssa, %.lr.ph145
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next.3, %._crit_edge146.thread.unr-lcssa ]
  %.084143.epil.init = phi float [ 0.000000e+00, %.lr.ph145 ], [ %i.lu, %._crit_edge146.thread.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod214)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader210
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader210 ], [ %indvars.iv.next.epil, %bb.al ] ; 2 uses
  %.084143.epil = phi float [ %.084143.epil.init, %.epil.preheader210 ], [ %i.ly, %bb.al ]
  %epil.iter = phi i64 [ 0, %.epil.preheader210 ], [ %epil.iter.next, %bb.al ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.epil
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !33
  %i.lx = call noundef float @sqrtf(float noundef %i.lw) #28
  %i.ly = fadd float %.084143.epil, %i.lx         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter211
  br i1 %epil.iter.cmp.not, label %._crit_edge146.thread, label %bb.al, !llvm.loop !309

._crit_edge146.thread:                            ; preds = %bb.al, %._crit_edge146.thread.unr-lcssa
  %.lcssa = phi float [ %i.lu, %._crit_edge146.thread.unr-lcssa ], [ %i.ly, %bb.al ]
  %i.lz = uitofp nneg i32 %i.ky to float
  %i.ma = fdiv float %.lcssa, %i.lz
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.preheader, %bb.aj, %._crit_edge146.thread
  %.1 = phi float [ %i.ma, %._crit_edge146.thread ], [ 1.000000e+00, %bb.aj ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %i.mb = load float, ptr %i.km, align 4, !tbaa !33 ; 2 uses
  %i.mc = fadd float %.1, %i.mb                   ; 4 uses
  %i.md = fcmp une float %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge146
  %i.me = load float, ptr %i.bz, align 4, !tbaa !33
  %i.mf = fmul float %i.kl, %.1
  %i.mg = call float @llvm.fmuladd.f32(float %i.me, float %i.mb, float %i.mf)
  %i.mh = fdiv float %i.mg, %i.mc
  store float %i.mh, ptr %i.bz, align 4, !tbaa !33
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ke, i64 28
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !33 ; 2 uses
  %i.mk = fcmp olt float %i.mj, %i.mc
  %.sroa.speculated = select i1 %i.mk, float %i.mj, float %i.mc
  store float %.sroa.speculated, ptr %i.km, align 4, !tbaa !33
  br label %bb.an

bb.an:                                            ; preds = %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit, %._crit_edge146, %bb.am, %_ZN2cv6dynafuL13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread, %bb.ad
  %i.ml = add nuw nsw i32 %.095148, 1             ; 2 uses
  %i.mm = load ptr, ptr %i.f, align 8, !tbaa !90, !nonnull !91, !align !92 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !37
  %i.mp = icmp slt i32 %i.ml, %i.mo
  br i1 %i.mp, label %bb.d, label %._crit_edge151, !llvm.loop !310

bb.ao:                                            ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit119, %bb.t
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.ae ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit119 ], [ %i.fa, %bb.t ]
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !62
  %.not.i124 = icmp eq i32 %i.mr, 0
  br i1 %.not.i124, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit125, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit125 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #31
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit125:    ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn103.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

end_hunk_0
