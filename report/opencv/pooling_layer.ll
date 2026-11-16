Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pooling_layer?download=true
inline.NumInlined: 1291
inline.NumDeleted: 445
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv3dnn16PoolingLayerImpl14PoolingInvokerclERKNS_5RangeE:bb.a
  %i.ex = trunc i64 %i.ew to i32
  br label %bb.ag

bb.ag:                                            ; preds = %.thread647, %bb.af
  %i.ey = phi i32 [ %i.en, %bb.af ], [ 0, %.thread647 ]
  %i.ez = phi i32 [ %i.el, %bb.af ], [ 1, %.thread647 ]
  %i.fa = phi i32 [ %i.eo, %bb.af ], [ 1, %.thread647 ]
  %.pn922.pn = phi ptr [ %.pn922, %bb.af ], [ %i.dq, %.thread647 ]
  %i.fb = phi i32 [ %i.ex, %bb.af ], [ 1, %.thread647 ]
  %.in.in = getelementptr inbounds i8, ptr %.pn922.pn, i64 -8
  %.in = load i64, ptr %.in.in, align 8, !tbaa !56 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !105
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !56 ; 2 uses
  %i.fg = trunc i64 %i.ff to i32                  ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !128, !range !67, !noundef !85
  %i.fj = trunc nuw i8 %i.fi to i1                ; 3 uses
  %i.fk = icmp ult i64 %i.dk, %.sroa.speculated604
  br i1 %i.fk, label %.lr.ph782, label %._crit_edge783

.lr.ph782:                                        ; preds = %bb.ag
  %i.fl = sext i32 %i.cl to i64                   ; 2 uses
  %i.fm = sext i32 %i.cj to i64                   ; 2 uses
  %i.fn = sext i32 %i.n to i64                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !138 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.fs = sitofp i32 %i.cj to float               ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fz = sitofp i32 %i.cl to float               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gd = icmp eq i32 %i.fp, 1
  %i.ge = sext i32 %i.da to i64                   ; 2 uses
  %i.gf = and i64 %i.ff, 4294967295               ; 2 uses
  br label %bb.ah

._crit_edge783:                                   ; preds = %.loopexit, %bb.ag
  ret void

bb.ah:                                            ; preds = %.lr.ph782, %.loopexit
  %.0296780 = phi i64 [ %i.dk, %.lr.ph782 ], [ %i.oj, %.loopexit ] ; 4 uses
  %i.gg = urem i64 %.0296780, %i.fl               ; 5 uses
  %i.gh = trunc i64 %i.gg to i32                  ; 4 uses
  %i.gi = udiv i64 %.0296780, %i.fl               ; 2 uses
  %i.gj = urem i64 %i.gi, %i.fm
  %i.gk = trunc i64 %i.gj to i32                  ; 6 uses
  %i.gl = udiv i64 %i.gi, %i.fm                   ; 2 uses
  %i.gm = urem i64 %i.gl, %i.ck                   ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  %i.go = udiv i64 %i.gl, %i.ck                   ; 2 uses
  %i.gp = urem i64 %i.go, %i.fn                   ; 6 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = udiv i64 %i.go, %i.fn                   ; 4 uses
  switch i32 %i.fp, label %bb.as [
    i32 4, label %bb.ai
    i32 5, label %bb.ar
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gs = load ptr, ptr %i.fq, align 8, !tbaa !130 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !211
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !56
  %sext663 = shl i64 %i.gr, 32
  %i.gx = ashr exact i64 %sext663, 32             ; 3 uses
  %i.gy = mul i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gy ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !212
  %i.hc = load float, ptr %i.fr, align 4, !tbaa !139 ; 2 uses
  %i.hd = fmul float %i.hb, %i.hc                 ; 2 uses
  %i.he = fcmp oge float %i.hd, 0.000000e+00
  %i.hf = select i1 %i.he, float 5.000000e-01, float -5.000000e-01
  %i.hg = fadd float %i.hd, %i.hf
  %i.hh = fptosi float %i.hg to i32               ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !212
  %i.hk = fmul float %i.hc, %i.hj                 ; 2 uses
  %i.hl = fcmp oge float %i.hk, 0.000000e+00
  %i.hm = select i1 %i.hl, float 5.000000e-01, float -5.000000e-01
  %i.hn = fadd float %i.hk, %i.hm
  %i.ho = fptosi float %i.hn to i32
  %i.hp = sub nsw i32 %i.ho, %i.hh
  %i.hq = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %.sroa.speculated535 = add nuw nsw i32 %i.hq, 1
  %i.hr = uitofp nneg i32 %.sroa.speculated535 to float
  %i.hs = fdiv float %i.hr, %i.fs                 ; 2 uses
  %i.ht = sitofp i32 %i.hh to float               ; 2 uses
  %i.hu = sitofp i32 %i.gk to float
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hs, float %i.ht)
  %i.hw = fptosi float %i.hv to i32               ; 2 uses
  %i.hx = add nsw i32 %i.gk, 1
  %i.hy = sitofp i32 %i.hx to float
  %i.hz = fmul float %i.hs, %i.hy
  %i.ia = tail call noundef float @llvm.ceil.f32(float %i.hz)
  %i.ib = fadd float %i.ia, %i.ht
  %i.ic = fptosi float %i.ib to i32               ; 2 uses
  %i.id = load float, ptr %i.gz, align 4, !tbaa !212 ; 2 uses
  %i.ie = load ptr, ptr %i.o, align 8, !tbaa !129 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 84
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !91
  %i.ih = sitofp i32 %i.ig to float
  %i.ii = fcmp olt float %i.id, %i.ih
  br i1 %i.ii, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3dnn16PoolingLayerImpl14PoolingInvokerclERKNS_5RangeE, ptr noundef nonnull @.str.11, i32 noundef 820) #25
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.an:                                            ; preds = %bb.ak
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.il = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.io = load i64, ptr %i.im, align 8, !tbaa !28
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.am
  %.pn = phi { ptr, i32 } [ %i.ij, %bb.am ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ik, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume

bb.ao:                                            ; preds = %bb.ai
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !84
  %i.is = icmp slt i32 %i.ir, 2
  %i.it = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !211 ; 2 uses
  br i1 %i.is, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ie, i64 128
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !56
  %sext665 = shl i64 %i.gp, 32
  %i.ix = ashr exact i64 %sext665, 32
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iy
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.ja = fptosi float %i.id to i32
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ie, i64 128
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !56
  %i.je = mul i64 %i.jd, %i.jb
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.je
  %sext664 = shl i64 %i.gp, 32
  %i.jg = ashr exact i64 %sext664, 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ie, i64 136
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !56
  %i.jj = mul i64 %i.ji, %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jj
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

bb.ar:                                            ; preds = %bb.ah
  %i.jl = load ptr, ptr %i.fq, align 8, !tbaa !130 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !211
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 128
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !56
  %sext = shl i64 %i.gr, 32
  %i.jq = ashr exact i64 %sext, 32                ; 2 uses
  %i.jr = mul i64 %i.jp, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load <1 x float>, ptr %i.fr, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !212
  %i.jx = load float, ptr %i.jt, align 4, !tbaa !212
  %i.jy = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.jx, i64 1
  %i.ka = fadd <2 x float> %i.jz, <float 1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.kb = fcmp oge <2 x float> %i.ka, zeroinitializer
  %i.kc = select <2 x i1> %i.kb, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.kd = fadd <2 x float> %i.ka, %i.kc
  %i.ke = fptosi <2 x float> %i.kd to <2 x i32>
  %i.kf = sitofp <2 x i32> %i.ke to <2 x float>
  %i.kg = shufflevector <1 x float> %i.ju, <1 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %i.kg, %i.kf           ; 3 uses
  %shift = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.kh, %shift
  %i.ki = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.kj = fcmp olt float %i.ki, 1.000000e-01
  %.sroa.speculated530 = select i1 %i.kj, float 1.000000e-01, float %i.ki
  %i.kk = fdiv float %.sroa.speculated530, %i.fs
  %i.kl = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %i.km = shufflevector <2 x i32> %i.kl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kn = add nsw <2 x i32> %i.km, <i32 0, i32 1>
  %i.ko = sitofp <2 x i32> %i.kn to <2 x float>
  %i.kp = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ks = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kq, <2 x float> %i.kr) ; 2 uses
  %i.kt = extractelement <2 x float> %i.ks, i64 0
  %i.ku = tail call noundef float @llvm.floor.f32(float %i.kt)
  %i.kv = fptosi float %i.ku to i32
  %i.kw = extractelement <2 x float> %i.ks, i64 1
  %i.kx = tail call noundef float @llvm.ceil.f32(float %i.kw)
  %i.ky = fptosi float %i.kx to i32
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

bb.as:                                            ; preds = %bb.ah
  %i.kz = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.la = load ptr, ptr %i.ft, align 8, !tbaa !76 ; 2 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = icmp eq i64 %i.ld, 24
  br i1 %i.le, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lf = load i64, ptr %i.la, align 8, !tbaa !56
  %i.lg = trunc i64 %i.lf to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.lh = phi i32 [ %i.lg, %bb.at ], [ 0, %bb.as ]
  %i.li = mul nsw i32 %i.ey, %i.gn
  %i.lj = sub nsw i32 %i.li, %i.lh
  %.fr = freeze i32 %i.lj                         ; 3 uses
  %i.lk = add nsw i32 %.fr, %i.ez
  %i.ll = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !56
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = add i32 %i.ci, %i.ln
  %.sroa.speculated522 = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.lk) ; 2 uses
  %i.lp = mul nsw i32 %i.fb, %i.gk
  %i.lq = load i32, ptr %i.fw, align 4, !tbaa !134
  %i.lr = sub nsw i32 %i.lp, %i.lq                ; 2 uses
  %i.ls = add nsw i32 %i.lr, %i.fa
  %i.lt = load i32, ptr %i.fx, align 4, !tbaa !136
  %i.lu = add nsw i32 %i.lt, %i.cm
  %.sroa.speculated514 = tail call i32 @llvm.smin.i32(i32 %i.lu, i32 %i.ls)
  %i.lv = load ptr, ptr %i.o, align 8, !tbaa !129 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !84
  %i.ly = icmp slt i32 %i.lx, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !211 ; 2 uses
  br i1 %i.ly, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 128
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !56
  %sext668 = shl i64 %i.gp, 32
  %i.md = ashr exact i64 %sext668, 32
  %i.me = mul i64 %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.me
  %.pre856 = shl i64 %i.gr, 32
  %.pre857 = ashr exact i64 %.pre856, 32
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit

bb.aw:                                            ; preds = %bb.au
  %sext666 = shl i64 %i.gr, 32
  %i.mg = ashr exact i64 %sext666, 32             ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lv, i64 128
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !56
  %i.mj = mul i64 %i.mi, %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mj
  %sext667 = shl i64 %i.gp, 32
  %i.ml = ashr exact i64 %sext667, 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lv, i64 136
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !56
  %i.mo = mul i64 %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mo
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit:                   ; preds = %bb.aw, %bb.av
  %.pre854.pre-phi = phi i64 [ %i.mg, %bb.aw ], [ %.pre857, %bb.av ]
  %.0291 = phi ptr [ %i.mp, %bb.aw ], [ %i.mf, %bb.av ]
  %i.mq = sub nsw i32 %.sroa.speculated522, %.fr
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  br label %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread

_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread:            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit, %bb.ap, %bb.ar, %bb.aq
  %.pre-phi855 = phi i64 [ %.pre854.pre-phi, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.gx, %bb.ap ], [ %i.jq, %bb.ar ], [ %i.gx, %bb.aq ] ; 4 uses
  %i.mr = phi i32 [ %i.mq, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %.0291658 = phi ptr [ %.0291, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.iz, %bb.ap ], [ null, %bb.ar ], [ %i.jk, %bb.aq ] ; 10 uses
  %.0634657 = phi i32 [ %i.lr, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.hw, %bb.ap ], [ %i.kv, %bb.ar ], [ %i.hw, %bb.aq ] ; 2 uses
  %.0635656 = phi i32 [ %.sroa.speculated514, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ %i.ic, %bb.ap ], [ %i.ky, %bb.ar ], [ %i.ic, %bb.aq ] ; 2 uses
  %.0637655 = phi i32 [ %.sroa.speculated522, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %i.ms = phi i32 [ %spec.select, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 6 uses
  %.sroa.speculated548 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.0637655) ; 6 uses
  %i.mt = sub nsw i32 %.0635656, %.0634657
  %.sroa.speculated502 = tail call i32 @llvm.smax.i32(i32 %.0634657, i32 0) ; 15 uses
  %.sroa.speculated576 = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 %.0635656) ; 13 uses
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !131 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !211
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 128
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !56
  %i.mz = mul i64 %i.my, %.pre-phi855
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mz
  %sext669 = shl i64 %i.gp, 32
  %i.nb = ashr exact i64 %sext669, 32             ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 136
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !56
  %i.ne = mul i64 %i.nd, %i.nb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ne
  %sext670 = shl i64 %i.gm, 32
  %i.ng = ashr exact i64 %sext670, 32             ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 144
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !56
  %i.nj = mul i64 %i.ni, %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nj
  %i.nl = mul nsw i32 %i.cl, %i.gk
  %i.nm = sext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nm ; 9 uses
  %i.no = load ptr, ptr %i.fy, align 8, !tbaa !132 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !211 ; 2 uses
  %.not = icmp eq ptr %i.nq, null
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 128
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !56
  %i.nt = mul i64 %i.ns, %.pre-phi855
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 136
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !56
  %i.nx = mul i64 %i.nw, %i.nb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 144
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !56
  %i.ob = mul i64 %i.oa, %i.ng
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.nm
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread, %bb.ax
  %i.oe = phi ptr [ %i.od, %bb.ax ], [ null, %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.thread ] ; 6 uses
  %i.of = sub nuw i64 %.sroa.speculated604, %.0296780
  %i.og = trunc i64 %i.of to i32
  %i.oh = sub nsw i32 %i.cl, %i.gh
  %.sroa.speculated495 = tail call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.og) ; 6 uses
  %i.oi = sext i32 %.sroa.speculated495 to i64
  %i.oj = add i64 %.0296780, %i.oi                ; 2 uses
  %i.ok = add nsw i32 %.sroa.speculated495, %i.gh ; 4 uses
  switch i32 %i.fp, label %bb.bt [
    i32 0, label %.preheader687
    i32 1, label %bb.bj
    i32 3, label %bb.bj
    i32 4, label %bb.bp
  ]

.preheader687:                                    ; preds = %bb.ay
  %i.ol = icmp sgt i32 %.sroa.speculated495, 0
  br i1 %i.ol, label %.lr.ph766, label %.loopexit

.lr.ph766:                                        ; preds = %.preheader687
  %i.om = load i32, ptr %i.ga, align 8, !tbaa !133 ; 2 uses
  %.not318 = icmp slt i32 %.sroa.speculated502, %.sroa.speculated576
  %i.on = icmp ne ptr %i.oe, null                 ; 2 uses
  %or.cond = select i1 %i.fj, i1 %i.on, i1 false  ; 2 uses
  %i.oo = icmp slt i32 %i.ms, %.sroa.speculated548 ; 2 uses
  %i.op = mul i32 %i.fg, %i.gh
  %i.oq = sub i32 %i.op, %i.om
  %sext898 = shl i64 %i.gg, 32
  %i.or = ashr exact i64 %sext898, 32
  %i.os = zext i32 %i.om to i64
  %i.ot = sext i32 %i.ok to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph766, %bb.bi
  %indvars.iv829 = phi i64 [ %i.or, %.lr.ph766 ], [ %indvars.iv.next830, %bb.bi ] ; 6 uses
  %indvars.iv815 = phi i32 [ %i.oq, %.lr.ph766 ], [ %indvars.iv.next816, %bb.bi ] ; 3 uses
  %i.ou = mul i64 %indvars.iv829, %i.gf
  %i.ov = sub i64 %i.ou, %i.os                    ; 2 uses
  %i.ow = add i64 %i.ov, %.in
  %i.ox = trunc i64 %i.ow to i32
  %.sroa.speculated486 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.ox) ; 4 uses
  %i.oy = trunc i64 %i.ov to i32
end_hunk_0
begin_hunk_1_@_ZNK2cv3dnn16PoolingLayerImpl14PoolingInvokerclERKNS_5RangeE:bb.a
  %i.ts = mul i64 %i.tr, %.pre-phi855
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !212
  %i.tw = load <1 x float>, ptr %i.fr, align 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !212
  %i.tz = shufflevector <1 x float> %i.tw, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ua = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.ub = insertelement <2 x float> %i.ua, float %i.ty, i64 1
  %i.uc = fmul <2 x float> %i.tz, %i.ub           ; 2 uses
  %i.ud = fcmp oge <2 x float> %i.uc, zeroinitializer
  %i.ue = select <2 x i1> %i.ud, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.uf = fadd <2 x float> %i.uc, %i.ue           ; 2 uses
  %i.ug = extractelement <2 x float> %i.uf, i64 0
  %i.uh = fptosi float %i.ug to i32               ; 2 uses
  %i.ui = extractelement <2 x float> %i.uf, i64 1
  %i.uj = fptosi float %i.ui to i32
  %i.uk = sub nsw i32 %i.uj, %i.uh
  %i.ul = tail call i32 @llvm.smax.i32(i32 %i.uk, i32 0)
  %.sroa.speculated436 = add nuw nsw i32 %i.ul, 1
  %i.um = uitofp nneg i32 %.sroa.speculated436 to float
  %i.un = fdiv float %i.um, %i.fz                 ; 2 uses
  %i.uo = icmp sgt i32 %.sroa.speculated495, 0
  br i1 %i.uo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.bp
  %i.up = sitofp i32 %i.uh to float               ; 2 uses
  %.not316 = icmp slt i32 %.sroa.speculated502, %.sroa.speculated576
  %i.uq = icmp ne ptr %i.oe, null
  %or.cond5 = select i1 %i.fj, i1 %i.uq, i1 false
  %i.ur = zext nneg i32 %.sroa.speculated502 to i64
  %sext896 = shl i64 %i.gg, 32
  %i.us = ashr exact i64 %sext896, 32
  %i.ut = sext i32 %i.ok to i64
  %wide.trip.count800 = zext nneg i32 %.sroa.speculated576 to i64
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph, %bb.bs
  %indvars.iv802 = phi i64 [ %i.us, %.lr.ph ], [ %indvars.iv.next803, %bb.bs ] ; 4 uses
  %i.uu = trunc nsw i64 %indvars.iv802 to i32
  %i.uv = sitofp i32 %i.uu to float
  %i.uw = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.un, float %i.up)
  %i.ux = fptosi float %i.uw to i32
  %indvars.iv.next803 = add nsw i64 %indvars.iv802, 1 ; 3 uses
  %i.uy = trunc nsw i64 %indvars.iv.next803 to i32
  %i.uz = sitofp i32 %i.uy to float
  %i.va = fmul float %i.un, %i.uz
  %i.vb = tail call noundef float @llvm.ceil.f32(float %i.va)
  %i.vc = fadd float %i.vb, %i.up
  %i.vd = fptosi float %i.vc to i32
  %.sroa.speculated419 = tail call i32 @llvm.smax.i32(i32 %i.ux, i32 0) ; 2 uses
  %.sroa.speculated426 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.vd) ; 2 uses
  %.not315 = icmp slt i32 %.sroa.speculated419, %.sroa.speculated426
  %or.cond660 = select i1 %.not315, i1 %.not316, i1 false
  br i1 %or.cond660, label %.preheader682.us.preheader, label %bb.br

.preheader682.us.preheader:                       ; preds = %bb.bq
  %i.ve = zext nneg i32 %.sroa.speculated419 to i64 ; 4 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated426 to i64 ; 3 uses
  %i.vf = sub nsw i64 %wide.trip.count, %i.ve
  %xtraiter = and i64 %i.vf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.vg = sub nsw i64 %i.ve, %wide.trip.count
  %i.vh = icmp ugt i64 %i.vg, -4
  br label %.preheader682.us

.preheader682.us:                                 ; preds = %.preheader682.us.preheader, %._crit_edge.us
  %indvars.iv797 = phi i64 [ %i.ur, %.preheader682.us.preheader ], [ %indvars.iv.next798, %._crit_edge.us ] ; 2 uses
  %.0632693.us = phi float [ f0xFF7FFFFF, %.preheader682.us.preheader ], [ %.sroa.speculated413.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.vi = mul nuw nsw i64 %indvars.iv797, %i.ge
  %invariant.gep = getelementptr [4 x i8], ptr %.0291658, i64 %i.vi ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader682.us, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.ve, %.preheader682.us ] ; 2 uses
  %.1633691.us.prol = phi float [ %.sroa.speculated413.us.prol, %.prol.preheader ], [ %.0632693.us, %.preheader682.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader682.us ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.vj = load float, ptr %gep.prol, align 4, !tbaa !212 ; 2 uses
  %i.vk = fcmp olt float %.1633691.us.prol, %i.vj
  %.sroa.speculated413.us.prol = select i1 %i.vk, float %i.vj, float %.1633691.us.prol ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !202

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader682.us
  %.sroa.speculated413.us.lcssa.unr = phi float [ poison, %.preheader682.us ], [ %.sroa.speculated413.us.prol, %.prol.preheader ]
  %indvars.iv.unr = phi i64 [ %i.ve, %.preheader682.us ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.1633691.us.unr = phi float [ %.0632693.us, %.preheader682.us ], [ %.sroa.speculated413.us.prol, %.prol.preheader ]
  br i1 %i.vh, label %._crit_edge.us, label %.preheader682.us.new

.preheader682.us.new:                             ; preds = %.prol.loopexit, %.preheader682.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader682.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %.1633691.us = phi float [ %.sroa.speculated413.us.3, %.preheader682.us.new ], [ %.1633691.us.unr, %.prol.loopexit ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.vl = load float, ptr %gep, align 4, !tbaa !212 ; 2 uses
  %i.vm = fcmp olt float %.1633691.us, %i.vl
  %.sroa.speculated413.us = select i1 %i.vm, float %i.vl, float %.1633691.us ; 2 uses
  %i.vn = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.vn, i64 4
  %i.vo = load float, ptr %gep.1, align 4, !tbaa !212 ; 2 uses
  %i.vp = fcmp olt float %.sroa.speculated413.us, %i.vo
  %.sroa.speculated413.us.1 = select i1 %i.vp, float %i.vo, float %.sroa.speculated413.us ; 2 uses
  %i.vq = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.vq, i64 8
  %i.vr = load float, ptr %gep.2, align 4, !tbaa !212 ; 2 uses
  %i.vs = fcmp olt float %.sroa.speculated413.us.1, %i.vr
  %.sroa.speculated413.us.2 = select i1 %i.vs, float %i.vr, float %.sroa.speculated413.us.1 ; 2 uses
  %i.vt = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.vt, i64 12
  %i.vu = load float, ptr %gep.3, align 4, !tbaa !212 ; 2 uses
  %i.vv = fcmp olt float %.sroa.speculated413.us.2, %i.vu
  %.sroa.speculated413.us.3 = select i1 %i.vv, float %i.vu, float %.sroa.speculated413.us.2 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %.preheader682.us.new, !llvm.loop !203

._crit_edge.us:                                   ; preds = %.preheader682.us.new, %.prol.loopexit
  %.sroa.speculated413.us.lcssa = phi float [ %.sroa.speculated413.us.lcssa.unr, %.prol.loopexit ], [ %.sroa.speculated413.us.3, %.preheader682.us.new ] ; 2 uses
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 1 ; 2 uses
  %exitcond801.not = icmp eq i64 %indvars.iv.next798, %wide.trip.count800
  br i1 %exitcond801.not, label %.sink.split913, label %.preheader682.us, !llvm.loop !204

bb.br:                                            ; preds = %bb.bq
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %indvars.iv802
  store float 0.000000e+00, ptr %i.vw, align 4, !tbaa !212
  br i1 %or.cond5, label %.sink.split913, label %bb.bs

.sink.split913:                                   ; preds = %._crit_edge.us, %bb.br
  %.sink915 = phi ptr [ %i.oe, %bb.br ], [ %i.nn, %._crit_edge.us ]
  %.sink = phi float [ -1.000000e+00, %bb.br ], [ %.sroa.speculated413.us.lcssa, %._crit_edge.us ]
  %i.vx = getelementptr inbounds [4 x i8], ptr %.sink915, i64 %indvars.iv802
  store float %.sink, ptr %i.vx, align 4, !tbaa !212
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split913, %bb.br
  %i.vy = icmp slt i64 %indvars.iv.next803, %i.ut
  br i1 %i.vy, label %bb.bq, label %.loopexit, !llvm.loop !205

bb.bt:                                            ; preds = %bb.ay
  %i.vz = load ptr, ptr %i.fq, align 8, !tbaa !130 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !211
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 128
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !56
  %i.we = mul i64 %i.wd, %.pre-phi855
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.we ; 4 uses
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !212
  %i.wh = load ptr, ptr %i.o, align 8, !tbaa !129 ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 84
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !91
  %i.wk = sitofp i32 %i.wj to float
  %i.wl = fcmp olt float %i.wg, %i.wk
  br i1 %i.wl, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3dnn16PoolingLayerImpl14PoolingInvokerclERKNS_5RangeE, ptr noundef nonnull @.str.11, i32 noundef 1118) #25
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

bb.by:                                            ; preds = %bb.bv
  %i.wn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wo = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %bb.by
  %i.wr = load i64, ptr %i.wp, align 8, !tbaa !28
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.ws) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387, %bb.bx
  %.pn310 = phi { ptr, i32 } [ %i.wm, %bb.bx ], [ %i.wn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387 ], [ %i.wn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %common.resume

bb.bz:                                            ; preds = %bb.bt
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wu = load <1 x float>, ptr %i.fr, align 4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wf, i64 12
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !212
  %i.wx = load float, ptr %i.wt, align 4, !tbaa !212
  %i.wy = insertelement <2 x float> poison, float %i.ww, i64 0
  %i.wz = insertelement <2 x float> %i.wy, float %i.wx, i64 1
  %i.xa = fadd <2 x float> %i.wz, <float 1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.xb = fcmp oge <2 x float> %i.xa, zeroinitializer
  %i.xc = select <2 x i1> %i.xb, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.xd = fadd <2 x float> %i.xa, %i.xc
  %i.xe = fptosi <2 x float> %i.xd to <2 x i32>
  %i.xf = sitofp <2 x i32> %i.xe to <2 x float>
  %i.xg = shufflevector <1 x float> %i.wu, <1 x float> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x float> %i.xg, %i.xf           ; 3 uses
  %i.xi = icmp sgt i32 %.sroa.speculated495, 0
  br i1 %i.xi, label %.lr.ph779, label %.loopexit

.lr.ph779:                                        ; preds = %bb.bz
  %shift935 = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop936 = fsub <2 x float> %i.xh, %shift935
  %i.xj = extractelement <2 x float> %foldExtExtBinop936, i64 0 ; 2 uses
  %i.xk = fcmp olt float %i.xj, 1.000000e-01
  %.sroa.speculated410 = select i1 %i.xk, float 1.000000e-01, float %i.xj
  %i.xl = fdiv float %.sroa.speculated410, %i.fz
  %.not314 = icmp slt i32 %.sroa.speculated502, %.sroa.speculated576
  %i.xm = mul nsw i32 %i.cj, %i.gq
  %i.xn = add nsw i32 %i.xm, %i.gk
  %i.xo = mul nsw i32 %i.xn, %i.cl
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wh, i64 128 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wh, i64 136
  %i.xt = sub nuw nsw i32 %.sroa.speculated576, %.sroa.speculated502
  %i.xu = zext nneg i32 %.sroa.speculated502 to i64
  %sext899 = shl i64 %i.gg, 32
  %i.xv = ashr exact i64 %sext899, 32
  %i.xw = sext i32 %i.ok to i64
  %i.xx = sext i32 %i.xo to i64
  %wide.trip.count840 = zext nneg i32 %.sroa.speculated576 to i64
  %i.xy = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ya = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph779, %bb.cd
  %indvars.iv842 = phi i64 [ %i.xv, %.lr.ph779 ], [ %indvars.iv.next843, %bb.cd ] ; 4 uses
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, 1 ; 3 uses
  %i.yb = trunc i64 %indvars.iv842 to i32
  %i.yc = insertelement <2 x i32> poison, i32 %i.yb, i64 0
  %i.yd = trunc i64 %indvars.iv.next843 to i32
  %i.ye = insertelement <2 x i32> %i.yc, i32 %i.yd, i64 1
  %i.yf = sitofp <2 x i32> %i.ye to <2 x float>
  %i.yg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yf, <2 x float> %i.xz, <2 x float> %i.ya) ; 2 uses
  %i.yh = extractelement <2 x float> %i.yg, i64 0
  %i.yi = tail call noundef float @llvm.floor.f32(float %i.yh)
  %i.yj = fptosi float %i.yi to i32
  %i.yk = extractelement <2 x float> %i.yg, i64 1
  %i.yl = tail call noundef float @llvm.ceil.f32(float %i.yk)
  %i.ym = fptosi float %i.yl to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.yj, i32 0) ; 3 uses
  %.sroa.speculated399 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %i.ym) ; 3 uses
  %.not313 = icmp slt i32 %.sroa.speculated, %.sroa.speculated399
  %or.cond661 = select i1 %.not313, i1 %.not314, i1 false
  br i1 %or.cond661, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.yn = add nsw i64 %indvars.iv842, %i.xx
  %i.yo = load i32, ptr %i.xp, align 4, !tbaa !84
  %i.yp = icmp slt i32 %i.yo, 2
  %i.yq = load ptr, ptr %i.xq, align 8, !tbaa !211 ; 2 uses
  br i1 %i.yp, label %.preheader678.us.preheader, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yr = load float, ptr %i.wf, align 4, !tbaa !212
  %i.ys = fptosi float %i.yr to i32
  %i.yt = sext i32 %i.ys to i64
  %i.yu = load i64, ptr %i.xr, align 8, !tbaa !56
  %i.yv = mul i64 %i.yu, %i.yt
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yv
  br label %.preheader678.us.preheader

.preheader678.us.preheader:                       ; preds = %bb.cb, %bb.cc
  %.sink918.in = phi ptr [ %i.xs, %bb.cc ], [ %i.xr, %bb.cb ]
  %.sink916 = phi ptr [ %i.yw, %bb.cc ], [ %i.yq, %bb.cb ]
  %.sink918 = load i64, ptr %.sink918.in, align 8, !tbaa !56
  %i.yx = mul i64 %.sink918, %i.yn
  %i.yy = getelementptr inbounds nuw i8, ptr %.sink916, i64 %i.yx
  %i.yz = zext nneg i32 %.sroa.speculated to i64  ; 4 uses
  %wide.trip.count835 = zext nneg i32 %.sroa.speculated399 to i64 ; 3 uses
  %i.za = sub nsw i64 %wide.trip.count835, %i.yz
  %xtraiter949 = and i64 %i.za, 7                 ; 2 uses
  %lcmp.mod950.not = icmp eq i64 %xtraiter949, 0
  %i.zb = sub nsw i64 %i.yz, %wide.trip.count835
  %i.zc = icmp ugt i64 %i.zb, -8
  br label %.preheader678.us

.preheader678.us:                                 ; preds = %.preheader678.us.preheader, %._crit_edge770.us
  %indvars.iv837 = phi i64 [ %i.xu, %.preheader678.us.preheader ], [ %indvars.iv.next838, %._crit_edge770.us ] ; 2 uses
  %.0268771.us = phi float [ 0.000000e+00, %.preheader678.us.preheader ], [ %.lcssa943, %._crit_edge770.us ] ; 2 uses
  %i.zd = mul nuw nsw i64 %indvars.iv837, %i.ge
  %invariant.gep906 = getelementptr [4 x i8], ptr %i.yy, i64 %i.zd ; 9 uses
  br i1 %lcmp.mod950.not, label %.prol.loopexit948, label %.prol.preheader947

.prol.preheader947:                               ; preds = %.preheader678.us, %.prol.preheader947
  %indvars.iv832.prol = phi i64 [ %indvars.iv.next833.prol, %.prol.preheader947 ], [ %i.yz, %.preheader678.us ] ; 2 uses
  %.1767.us.prol = phi float [ %i.zf, %.prol.preheader947 ], [ %.0268771.us, %.preheader678.us ]
  %prol.iter951 = phi i64 [ %prol.iter951.next, %.prol.preheader947 ], [ 0, %.preheader678.us ]
  %gep907.prol = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832.prol
  %i.ze = load float, ptr %gep907.prol, align 4, !tbaa !212
  %i.zf = fadd float %.1767.us.prol, %i.ze        ; 3 uses
  %indvars.iv.next833.prol = add nuw nsw i64 %indvars.iv832.prol, 1 ; 2 uses
  %prol.iter951.next = add i64 %prol.iter951, 1   ; 2 uses
  %prol.iter951.cmp.not = icmp eq i64 %prol.iter951.next, %xtraiter949
  br i1 %prol.iter951.cmp.not, label %.prol.loopexit948, label %.prol.preheader947, !llvm.loop !206

.prol.loopexit948:                                ; preds = %.prol.preheader947, %.preheader678.us
  %.lcssa943.unr = phi float [ poison, %.preheader678.us ], [ %i.zf, %.prol.preheader947 ]
  %indvars.iv832.unr = phi i64 [ %i.yz, %.preheader678.us ], [ %indvars.iv.next833.prol, %.prol.preheader947 ]
  %.1767.us.unr = phi float [ %.0268771.us, %.preheader678.us ], [ %i.zf, %.prol.preheader947 ]
  br i1 %i.zc, label %._crit_edge770.us, label %.preheader678.us.new

.preheader678.us.new:                             ; preds = %.prol.loopexit948, %.preheader678.us.new
  %indvars.iv832 = phi i64 [ %indvars.iv.next833.7, %.preheader678.us.new ], [ %indvars.iv832.unr, %.prol.loopexit948 ] ; 9 uses
  %.1767.us = phi float [ %i.aac, %.preheader678.us.new ], [ %.1767.us.unr, %.prol.loopexit948 ]
  %gep907 = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %i.zg = load float, ptr %gep907, align 4, !tbaa !212
  %i.zh = fadd float %.1767.us, %i.zg
  %i.zi = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.1 = getelementptr i8, ptr %i.zi, i64 4
  %i.zj = load float, ptr %gep907.1, align 4, !tbaa !212
  %i.zk = fadd float %i.zh, %i.zj
  %i.zl = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.2 = getelementptr i8, ptr %i.zl, i64 8
  %i.zm = load float, ptr %gep907.2, align 4, !tbaa !212
  %i.zn = fadd float %i.zk, %i.zm
  %i.zo = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.3 = getelementptr i8, ptr %i.zo, i64 12
  %i.zp = load float, ptr %gep907.3, align 4, !tbaa !212
  %i.zq = fadd float %i.zn, %i.zp
  %i.zr = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.4 = getelementptr i8, ptr %i.zr, i64 16
  %i.zs = load float, ptr %gep907.4, align 4, !tbaa !212
  %i.zt = fadd float %i.zq, %i.zs
  %i.zu = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.5 = getelementptr i8, ptr %i.zu, i64 20
  %i.zv = load float, ptr %gep907.5, align 4, !tbaa !212
  %i.zw = fadd float %i.zt, %i.zv
  %i.zx = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.6 = getelementptr i8, ptr %i.zx, i64 24
  %i.zy = load float, ptr %gep907.6, align 4, !tbaa !212
  %i.zz = fadd float %i.zw, %i.zy
  %i.aaa = getelementptr [4 x i8], ptr %invariant.gep906, i64 %indvars.iv832
  %gep907.7 = getelementptr i8, ptr %i.aaa, i64 28
  %i.aab = load float, ptr %gep907.7, align 4, !tbaa !212
  %i.aac = fadd float %i.zz, %i.aab               ; 2 uses
  %indvars.iv.next833.7 = add nuw nsw i64 %indvars.iv832, 8 ; 2 uses
  %exitcond836.not.7 = icmp eq i64 %indvars.iv.next833.7, %wide.trip.count835
  br i1 %exitcond836.not.7, label %._crit_edge770.us, label %.preheader678.us.new, !llvm.loop !207

._crit_edge770.us:                                ; preds = %.preheader678.us.new, %.prol.loopexit948
  %.lcssa943 = phi float [ %.lcssa943.unr, %.prol.loopexit948 ], [ %i.aac, %.preheader678.us.new ] ; 2 uses
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 1 ; 2 uses
  %exitcond841.not = icmp eq i64 %indvars.iv.next838, %wide.trip.count840
  br i1 %exitcond841.not, label %._crit_edge773, label %.preheader678.us, !llvm.loop !208

._crit_edge773:                                   ; preds = %._crit_edge770.us
  %i.aad = sub nuw nsw i32 %.sroa.speculated399, %.sroa.speculated
  %i.aae = mul nuw nsw i32 %i.aad, %i.xt
  %i.aaf = sitofp i32 %i.aae to float
  %i.aag = fdiv float %.lcssa943, %i.aaf
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ca, %._crit_edge773
  %.sink919 = phi float [ %i.aag, %._crit_edge773 ], [ 0.000000e+00, %bb.ca ]
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %indvars.iv842
  store float %.sink919, ptr %i.aah, align 4, !tbaa !212
  %i.aai = icmp slt i64 %indvars.iv.next843, %i.xw
  br i1 %i.aai, label %bb.ca, label %.loopexit, !llvm.loop !209

.loopexit:                                        ; preds = %bb.bs, %_ZSt10accumulateIPKffET0_T_S3_S2_.exit, %bb.bi, %bb.cd, %bb.bp, %bb.bj, %.preheader687, %bb.bz
  %i.aaj = icmp ult i64 %i.oj, %.sroa.speculated604
  br i1 %i.aaj, label %bb.ah, label %._crit_edge783, !llvm.loop !210
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #17

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !76     ; 4 uses
end_hunk_1
