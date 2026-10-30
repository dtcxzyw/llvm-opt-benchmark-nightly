Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CXMeshFileLoader?download=true
inline.NumInlined: 2641
inline.NumDeleted: 959
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader27parseDataObjectAnimationKeyEPNS_11SkinnedMesh6SJointE:bb.a
  %i.dv = add nuw i32 %.051212.us216, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.dv, %i.af
  br i1 %exitcond.not, label %.critedge62, label %.lr.ph.split.us215.split, !llvm.loop !344

.split221.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bj
  br i1 %i.dx, label %_ZN4core6stringIcED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

.lr.ph.split.us223:                               ; preds = %.lr.ph.split.us223.preheader, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us
  %.051212.us224 = phi i32 [ %i.iv, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us ], [ 0, %.lr.ph.split.us223.preheader ]
  %i.dy = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.dz = uitofp i32 %i.dy to float               ; 2 uses
  %i.ea = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.not.us = icmp eq i32 %i.ea, 16
  br i1 %.not.us, label %bb.x, label %.split227.us

bb.x:                                             ; preds = %.lr.ph.split.us223
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.eb = call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader10readMatrixERN4core8CMatrix4IfEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef nonnull align 4 dereferenceable(64) %13) ; 0 uses
  %i.ec = load i8, ptr %i.ah, align 8, !tbaa !165, !range !78, !noundef !79
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us, label %sub_0.i102.us

sub_0.i102.us:                                    ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.ee = load ptr, ptr %4, align 8, !tbaa !52    ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 1
  %.not.i103.us = icmp eq i8 %i.ef, 59
  br i1 %.not.i103.us, label %sub_1.i110.us, label %.tail.i104.us

sub_1.i110.us:                                    ; preds = %sub_0.i102.us
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = icmp eq i8 %i.eh, 0
  br label %.tail.i104.us

.tail.i104.us:                                    ; preds = %sub_1.i110.us, %sub_0.i102.us
  %.not5.i.i105.us = phi i1 [ false, %sub_0.i102.us ], [ %i.ei, %sub_1.i110.us ]
  %i.ej = icmp eq ptr %i.ee, %i.aw
  br i1 %i.ej, label %_ZN4core6stringIcED2Ev.exit.i107.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us: ; preds = %.tail.i104.us
  %i.ek = load i64, ptr %i.aw, align 8, !tbaa !27
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.el) #29
  br label %_ZN4core6stringIcED2Ev.exit.i107.us

_ZN4core6stringIcED2Ev.exit.i107.us:              ; preds = %.tail.i104.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.not5.i.i105.us, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us, label %bb.y

bb.y:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i107.us
  %i.em = load ptr, ptr %i.ax, align 8, !tbaa !168
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -1
  store ptr %i.en, ptr %i.ax, align 8, !tbaa !168
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.98, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.eo = load i32, ptr %i.ay, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.eo)
  %i.ep = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ep, i32 noundef 2)
          to label %bb.z unwind label %.split229.us

bb.z:                                             ; preds = %bb.y
  %i.eq = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.az
  br i1 %i.er, label %_ZN4core6stringIcED2Ev.exit114.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us: ; preds = %bb.z
  %i.es = load i64, ptr %i.az, align 8, !tbaa !27
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #29
  br label %_ZN4core6stringIcED2Ev.exit114.us

_ZN4core6stringIcED2Ev.exit114.us:                ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us: ; preds = %_ZN4core6stringIcED2Ev.exit114.us, %_ZN4core6stringIcED2Ev.exit.i107.us, %bb.x
  %i.eu = load float, ptr %13, align 4, !tbaa !90, !noalias !347 ; 6 uses
  %i.ev = load float, ptr %i.bb, align 4, !tbaa !90, !noalias !347 ; 4 uses
  %i.ew = load float, ptr %i.bf, align 4, !tbaa !90, !noalias !347 ; 6 uses
  %i.ex = load float, ptr %i.bc, align 4, !tbaa !90, !noalias !347 ; 4 uses
  %i.ey = load float, ptr %i.bg, align 4, !tbaa !90, !noalias !347 ; 4 uses
  %i.ez = load <2 x float>, ptr %i.be, align 4, !tbaa !90, !noalias !347 ; 7 uses
  %i.fa = load float, ptr %i.bh, align 4, !tbaa !90, !noalias !347 ; 4 uses
  %i.fb = load float, ptr %i.bi, align 4, !tbaa !90, !noalias !347 ; 6 uses
  %i.fc = fadd float %i.eu, %i.ew
  %i.fd = fadd float %i.fc, %i.fb
  %i.fe = fadd float %i.fd, 1.000000e+00          ; 2 uses
  %i.ff = fcmp ogt float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us
  %i.fg = fcmp ogt float %i.eu, %i.ew
  %i.fh = fcmp ogt float %i.eu, %i.fb
  %or.cond.i.us = and i1 %i.fg, %i.fh
  br i1 %or.cond.i.us, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = fcmp ogt float %i.ew, %i.fb
  br i1 %i.fi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = fadd float %i.fb, 1.000000e+00
  %i.fk = fsub float %i.fj, %i.eu
  %i.fl = fsub float %i.fk, %i.ew
  %i.fm = call float @sqrtf(float noundef %i.fl) #28
  %i.fn = fmul float %i.fm, 2.000000e+00
  %i.fo = extractelement <2 x float> %i.ez, i64 1
  %i.fp = fadd float %i.ex, %i.fo
  %i.fq = fadd float %i.ey, %i.fa
  %i.fr = extractelement <2 x float> %i.ez, i64 0
  %i.fs = fsub float %i.ev, %i.fr
  %i.ft = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.fs, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fp, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %i.fq, i64 2 ; 2 uses
  %i.fw = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fy = fdiv <4 x float> %i.fv, %i.fx
  %i.fz = fmul <4 x float> %i.fv, %i.fx
  %i.ga = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.ad:                                            ; preds = %bb.ab
  %i.gb = fadd float %i.ew, 1.000000e+00
  %i.gc = fsub float %i.gb, %i.eu
  %i.gd = fsub float %i.gc, %i.fb
  %i.ge = call float @sqrtf(float noundef %i.gd) #28
  %i.gf = fmul float %i.ge, 2.000000e+00
  %i.gg = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.ey, i64 1
  %i.gi = insertelement <2 x float> %i.ez, float %i.fa, i64 1
  %i.gj = fadd <2 x float> %i.gh, %i.gi
  %i.gk = extractelement <2 x float> %i.ez, i64 1
  %i.gl = fsub float %i.gk, %i.ex
  %i.gm = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gl, i64 0
  %i.gn = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.gp = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gr = fdiv <4 x float> %i.go, %i.gq
  %i.gs = fmul <4 x float> %i.go, %i.gq
  %i.gt = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.ae:                                            ; preds = %bb.aa
  %i.gu = fadd float %i.eu, 1.000000e+00
  %i.gv = fsub float %i.gu, %i.ew
  %i.gw = fsub float %i.gv, %i.fb
  %i.gx = call float @sqrtf(float noundef %i.gw) #28
  %i.gy = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.gx, i64 0
  %i.gz = fmul <4 x float> %i.gy, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.ex, i64 1
  %i.hd = fadd <2 x float> %i.hc, %i.ez
  %i.he = fsub float %i.ey, %i.fa
  %i.hf = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.hh = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hi = shufflevector <4 x float> %i.hg, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.hj = fdiv <4 x float> %i.hi, %i.ha
  %i.hk = fmul <4 x float> %i.hi, %i.ha
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.af:                                            ; preds = %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us
  %i.hm = call float @sqrtf(float noundef %i.fe) #28
  %i.hn = fmul float %i.hm, 2.000000e+00
  %i.ho = fsub float %i.ey, %i.fa
  %i.hp = extractelement <2 x float> %i.ez, i64 1
  %i.hq = fsub float %i.hp, %i.ex
  %i.hr = extractelement <2 x float> %i.ez, i64 0
  %i.hs = fsub float %i.ev, %i.hr
  %i.ht = insertelement <4 x float> poison, float %i.hn, i64 0 ; 2 uses
  %i.hu = insertelement <4 x float> %i.ht, float %i.ho, i64 1
  %i.hv = insertelement <4 x float> %i.hu, float %i.hq, i64 2
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 3 ; 2 uses
  %i.hx = shufflevector <4 x float> %i.ht, <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %i.hy = fmul <4 x float> %i.hw, %i.hx
  %i.hz = fdiv <4 x float> %i.hw, %i.hx
  %i.ia = shufflevector <4 x float> %i.hy, <4 x float> %i.hz, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.ib = phi <4 x float> [ %i.ia, %bb.af ], [ %i.hl, %bb.ae ], [ %i.gt, %bb.ad ], [ %i.ga, %bb.ac ] ; 7 uses
  %foldExtExtBinop = fmul <4 x float> %i.ib, %i.ib
  %i.ic = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.id = extractelement <4 x float> %i.ib, i64 1 ; 2 uses
  %i.ie = call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ic)
  %i.if = extractelement <4 x float> %i.ib, i64 3 ; 2 uses
  %i.ig = call float @llvm.fmuladd.f32(float %i.if, float %i.if, float %i.ie)
  %i.ih = extractelement <4 x float> %i.ib, i64 0 ; 2 uses
  %i.ii = call float @llvm.fmuladd.f32(float %i.ih, float %i.ih, float %i.ig)
  %i.ij = fpext float %i.ii to double
  %i.ik = call double @sqrt(double noundef %i.ij) #28
  %i.il = fdiv double 1.000000e+00, %i.ik
  %i.im = fptrunc double %i.il to float
  %i.in = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.io = insertelement <2 x float> poison, float %i.im, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iq = fmul <2 x float> %i.in, %i.ip
  %i.ir = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.is = fmul <2 x float> %i.ir, %i.ip
  call void @_ZN5scene18SkinnedMeshBuilder14addRotationKeyEPNS_11SkinnedMesh6SJointEfN4core10quaternionE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.dz, <2 x float> %i.iq, <2 x float> %i.is)
  %i.it = load <4 x float>, ptr %i.bd, align 4    ; 2 uses
  %i.iu = extractelement <4 x float> %i.it, i64 2
  %.sroa.0.4.vec.insert.i.us = shufflevector <4 x float> %i.it, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  call void @_ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.dz, <2 x float> %.sroa.0.4.vec.insert.i.us, float %i.iu)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.iv = add nuw i32 %.051212.us224, 1           ; 2 uses
  %exitcond236.not = icmp eq i32 %i.iv, %i.af
  br i1 %exitcond236.not, label %.critedge62, label %.lr.ph.split.us223, !llvm.loop !344

.split229.us:                                     ; preds = %bb.y
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.az
  br i1 %i.iy, label %_ZN4core6stringIcED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.us
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.93, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.iz = load i32, ptr %i.ay, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.iz)
  %i.ja = load ptr, ptr %8, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ja, i32 noundef 2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.split.us
  %i.jb = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZN4core6stringIcED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.ag
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !27
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #29
  br label %_ZN4core6stringIcED2Ev.exit74

_ZN4core6stringIcED2Ev.exit74:                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge.sink.split

bb.ah:                                            ; preds = %.split.us
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZN4core6stringIcED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ah
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !27
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #29
  br label %_ZN4core6stringIcED2Ev.exit77

_ZN4core6stringIcED2Ev.exit77:                    ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %.split214.us
  %i.jm = load i64, ptr %i.bk, align 8, !tbaa !27
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.jn) #29
  br label %_ZN4core6stringIcED2Ev.exit83

_ZN4core6stringIcED2Ev.exit83:                    ; preds = %.split214.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aq

.split219.us:                                     ; preds = %.lr.ph.split.us215.split, %.lr.ph.split.us215.split.us
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.95, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.jo = load i32, ptr %i.ay, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.jo)
  %i.jp = load ptr, ptr %10, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.jp, i32 noundef 2)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.split219.us
  %i.jq = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZN4core6stringIcED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ai
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !27
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #29
  br label %_ZN4core6stringIcED2Ev.exit86

_ZN4core6stringIcED2Ev.exit86:                    ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge.sink.split

bb.aj:                                            ; preds = %.split219.us
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZN4core6stringIcED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.aj
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !27
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #29
  br label %_ZN4core6stringIcED2Ev.exit89

_ZN4core6stringIcED2Ev.exit89:                    ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %.split221.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.kb = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.kc) #29
  br label %_ZN4core6stringIcED2Ev.exit95

_ZN4core6stringIcED2Ev.exit95:                    ; preds = %.split221.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aq

.split227.us:                                     ; preds = %.lr.ph.split.us223
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.97, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.kd = load i32, ptr %i.ay, align 4, !tbaa !163
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.kd)
  %i.ke = load ptr, ptr %12, align 8, !tbaa !52
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ke, i32 noundef 2)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.split227.us
  %i.kf = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZN4core6stringIcED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96: ; preds = %bb.ak
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !27
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #29
  br label %_ZN4core6stringIcED2Ev.exit98

_ZN4core6stringIcED2Ev.exit98:                    ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge.sink.split

bb.al:                                            ; preds = %.split227.us
  %i.kk = landingpad { ptr, i32 }
          cleanup
  %i.kl = load ptr, ptr %12, align 8, !tbaa !52   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZN4core6stringIcED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.al
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !27
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #29
  br label %_ZN4core6stringIcED2Ev.exit101

_ZN4core6stringIcED2Ev.exit101:                   ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %.split229.us
  %i.kq = load i64, ptr %i.az, align 8, !tbaa !27
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.kr) #29
  br label %_ZN4core6stringIcED2Ev.exit117

_ZN4core6stringIcED2Ev.exit117:                   ; preds = %.split229.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aq

.critedge62:                                      ; preds = %bb.w, %bb.s, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us, %bb.o, %bb.j, %_ZN4core6stringIcED2Ev.exit.i, %bb.k
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !165, !range !78, !noundef !79
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit127.thread, label %sub_0.i118

sub_0.i118:                                       ; preds = %.critedge62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.kv = load ptr, ptr %3, align 8, !tbaa !52    ; 4 uses
  %i.kw = load i8, ptr %i.kv, align 1
  %.not.i119 = icmp eq i8 %i.kw, 59
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEvNSB_IPS6_S8_EET_SH_St20forward_iterator_tag:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.013.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.08.012.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !359
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !356

_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !358
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !358
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 20
  br i1 %i.w, label %bb.e, label %bb.f, !prof !200

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.neg116 = udiv exact i64 %i.v, 20
  %.neg116.neg = sub nsw i64 0, %.neg116
  %i.x = getelementptr inbounds [20 x i8], ptr %i.h, i64 %.neg116.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.y = icmp eq i64 %i.v, 20
  br i1 %i.y, label %bb.g, label %_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.z, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !359
  br label %_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit

_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = icmp sgt i64 %i.c, 20
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !200

bb.h:                                             ; preds = %_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_ET0_T_S9_S8_.exit
  %i.ab = icmp eq i64 %i.c, 20
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !359
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.ac, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.04.08.i.i.i.i, i64 20, i1 false), !tbaa.struct !359
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 20
  %.not.i.i.i.i = icmp eq ptr %i.ad, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !357

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !358
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.af = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub nuw nsw i64 %i.d, %i.n
  %i.ah = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !358
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i52 ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.013.i.i.i.i.i53, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.08.012.i.i.i.i.i54, i64 20, i1 false), !tbaa.struct !359
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 20 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 20
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ai, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !356

_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !358
  br label %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57

_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit
  %i.ak = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57.loopexit ], [ %i.ah, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.m
  store ptr %i.al, ptr %i.g, align 8, !tbaa !358
  %i.am = icmp sgt i64 %i.m, 20
  br i1 %i.am, label %bb.k, label %bb.l, !prof !200

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit57
  %i.an = icmp eq i64 %i.m, 20
  br i1 %i.an, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !359
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

bb.n:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %0, align 8, !tbaa !196   ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = sub i64 %i.j, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 20                ; 4 uses
  %i.as = sub nsw i64 461168601842738790, %i.ar
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %bb.o, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #32
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.d)
  %i.au = add nsw i64 %.sroa.speculated.i, %i.ar  ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.ar
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 461168601842738790)
  %i.ax = select i1 %i.av, i64 461168601842738790, i64 %i.aw ; 3 uses
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ay = mul nuw nsw i64 %i.ax, 20
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #30
  br label %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.ba = phi ptr [ %i.az, %bb.p ], [ null, %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ao, %1
  br i1 %.not11.i.i.i.i.i59, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i60 ], [ %i.ba, %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i60 ], [ %i.ao, %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.013.i.i.i.i.i61, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.08.012.i.i.i.i.i62, i64 20, i1 false), !tbaa.struct !359
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 20 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i.i.i63, label %.lr.ph.i.i.i.i66.preheader, label %.lr.ph.i.i.i.i.i60, !llvm.loop !356

.lr.ph.i.i.i.i66.preheader:                       ; preds = %.lr.ph.i.i.i.i.i60, %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit
  %.09.i.i.i.i67.ph = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_M_allocateEm.exit ], [ %i.bc, %.lr.ph.i.i.i.i.i60 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.be, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i66 ], [ %2, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.i.i.i.i67, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.04.08.i.i.i.i68, i64 20, i1 false), !tbaa.struct !359
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 20 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 20 ; 3 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.bd, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !357

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit78, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i73 ], [ %i.be, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i73 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.013.i.i.i.i.i74, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.08.012.i.i.i.i.i75, i64 20, i1 false), !tbaa.struct !359
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 20 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.bf, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !356

_ZSt34__uninitialized_move_if_noexcept_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.be, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEEPS8_S8_ET0_T_SH_SG_RSaIT1_E.exit71 ], [ %i.bg, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ao, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit78
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bj) #29
  br label %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameES7_SaIS6_EET0_T_SA_S9_RT1_.exit78, %bb.q
  store ptr %i.ba, ptr %0, align 8, !tbaa !196
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !358
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.ba, i64 %i.ax
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !197
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #22

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !52     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #29
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !52
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = and i64 %i.i, 4294967295
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.o = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !360

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !26
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27
  %i.y = load ptr, ptr %0, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !27
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = load ptr, ptr %0, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !27
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = load ptr, ptr %0, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !27
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = load ptr, ptr %0, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !361

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video9SMaterialESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(127) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5video9SMaterialESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #32
  unreachable

_ZNKSt6vectorIN5video9SMaterialESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 7                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 72057594037927935)
  %i.l = select i1 %i.j, i64 72057594037927935, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 7                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN5video9SMaterialC2EOS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.q, ptr noundef nonnull align 8 dereferenceable(127) %2)
          to label %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.r

_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5video9SMaterialESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5video9SMaterialEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(127) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN5video9SMaterialEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 128 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video9SMaterialES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
end_hunk_1
