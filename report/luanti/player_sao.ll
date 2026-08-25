Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/player_sao?download=true
inline.NumInlined: 1609
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9PlayerSAO4stepEfb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.q:                                             ; preds = %.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.r:                                             ; preds = %bb.n
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.r
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !105
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !102 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %bb.s
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !105
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.s, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.q
  %.pn = phi { ptr, i32 } [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.dw, %bb.q ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176 ], [ %i.dx, %bb.r ], [ %i.ed, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ek = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.en = load i64, ptr %i.el, align 8, !tbaa !105
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

bb.t:                                             ; preds = %bb.d, %bb.e, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.i, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ep = load i8, ptr %i.ae, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !257
  %i.et = fadd nsz float %1, %i.es                ; 3 uses
  %i.eu = fcmp nsz uge float %i.et, 5.000000e-01  ; 2 uses
  %i.ev = fadd nsz float %i.et, -5.000000e-01
  %storemerge.i182 = select i1 %i.eu, float %i.ev, float %i.et
  store float %storemerge.i182, ptr %i.er, align 4, !tbaa !257
  br i1 %i.eu, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i.i183 = load <2 x float>, ptr %i.ew, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i.i185 = load float, ptr %.sroa.22.0..sroa_idx.i.i184, align 8, !tbaa !107
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !136
  %i.ez = fmul nsz float %i.ey, 1.000000e+01
  %.sroa.018.4.vec.extract.i186 = extractelement <2 x float> %.sroa.01.0.copyload.i.i183, i64 1
  %i.fa = fadd nsz float %.sroa.018.4.vec.extract.i186, %i.ez
  %.sroa.09.0.vec.extract.i190 = extractelement <2 x float> %.sroa.01.0.copyload.i.i183, i64 0 ; 2 uses
  %i.fb = fcmp nsz ogt float %.sroa.09.0.vec.extract.i190, 0.000000e+00
  %i.fc = select nsz i1 %i.fb, float 5.000000e+00, float -5.000000e+00
  %i.fd = fadd nsz float %.sroa.09.0.vec.extract.i190, %i.fc
  %i.fe = fdiv nsz float %i.fd, 1.000000e+01
  %i.ff = fptosi float %i.fe to i16
  %i.fg = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %.sroa.22.0.copyload.i.i185, i64 1 ; 2 uses
  %i.fi = fcmp nsz ogt <2 x float> %i.fh, zeroinitializer
  %i.fj = select <2 x i1> %i.fi, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fk = fadd nsz <2 x float> %i.fh, %i.fj
  %i.fl = fdiv nsz <2 x float> %i.fk, splat (float 1.000000e+01)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i16>
  %i.fn = zext <2 x i16> %i.fm to <2 x i48>
  %i.fo = shl nuw <2 x i48> %i.fn, <i48 16, i48 32>
  %.sroa.2.0.insert.insert.i196 = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.fo)
  %.sroa.0.0.insert.ext.i197 = zext i16 %i.ff to i48
  %.sroa.0.0.insert.insert.i198 = or disjoint i48 %.sroa.2.0.insert.insert.i196, %.sroa.0.0.insert.ext.i197
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !192
  %i.fr = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.fq)
  %i.fs = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.fr, i48 %.sroa.0.0.insert.insert.i198, ptr noundef null)
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !192
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !258
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw), !inline_history !332 ; 2 uses
  %.sroa.0320.0.extract.trunc.mask = and i32 %i.fs, 65535 ; 2 uses
  %i.gb = zext nneg i32 %.sroa.0320.0.extract.trunc.mask to i64 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !333
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !336 ; 3 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 2072
  %i.gj = icmp ugt i64 %i.gi, %i.gb
  br i1 %i.gj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gk = getelementptr inbounds nuw [2072 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !103
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.x, label %_ZNK14NodeDefManager3getERK7MapNode.exit199

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit199

_ZNK14NodeDefManager3getERK7MapNode.exit199:      ; preds = %bb.w, %bb.x
  %i.gp = phi ptr [ %i.go, %bb.x ], [ %i.gk, %bb.w ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1138
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !118 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !125
  %i.gu = icmp uge i16 %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 1533
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = icmp ne i8 %i.gw, 0
  %or.cond.not338 = select i1 %i.gu, i1 true, i1 %i.gx
  %.not141 = icmp eq i32 %.sroa.0320.0.extract.trunc.mask, 127
  %or.cond335 = or i1 %or.cond.not338, %.not141
  br i1 %or.cond335, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit199
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !142
  %.not142 = icmp eq i16 %i.gz, 0
  br i1 %.not142, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ha = add nuw i16 %i.gr, 1
  call void @_ZN9PlayerSAO9setBreathEtb(ptr noundef nonnull align 8 dereferenceable(1226) %0, i16 noundef zeroext %i.ha, i1 noundef zeroext true)
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u, %bb.z, %bb.y, %_ZNK14NodeDefManager3getERK7MapNode.exit199
  %i.hb = load i8, ptr %i.ae, align 8
  %i.hc = and i8 %i.hb, 4
  %.not143 = icmp eq i8 %i.hc, 0
  br i1 %.not143, label %.critedge167, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !257
  %i.hf = fadd nsz float %1, %i.he                ; 3 uses
  %i.hg = fcmp nsz uge float %i.hf, 1.000000e+00  ; 2 uses
  %i.hh = fadd nsz float %i.hf, -1.000000e+00
  %storemerge.i200 = select i1 %i.hg, float %i.hh, float %i.hf
  store float %storemerge.i200, ptr %i.hd, align 4, !tbaa !257
  br i1 %i.hg, label %bb.ab, label %.critedge167

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.hi, ptr %7, align 8, !tbaa !101
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hj, align 8, !tbaa !103
  store i8 0, ptr %i.hi, align 8, !tbaa !105
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hl = load float, ptr %i.hk, align 8, !tbaa !361
  %i.hm = fadd nsz float %i.hl, -1.000000e-01     ; 3 uses
  %i.hn = fcmp nsz ogt float %i.hm, 1.000000e-01
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.22.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0123352 = phi i32 [ 0, %.lr.ph ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.0126351 = phi float [ 1.000000e-01, %.lr.ph ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.sroa.0313.0350 = phi i16 [ 0, %.lr.ph ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.hq = phi <2 x i16> [ zeroinitializer, %.lr.ph ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.sroa.01.0.copyload.i203 = load <2 x float>, ptr %i.ho, align 8 ; 2 uses
  %17 = load <4 x float>, ptr %.sroa.22.0..sroa_idx.i204, align 8
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hr = fmul nsz float %.0126351, 1.000000e+01
  %.sroa.0311.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i203, i64 0
  %i.hs = fcmp nsz ogt float %.sroa.0311.0.vec.extract, 0.000000e+00
  %i.ht = select nsz i1 %i.hs, float 5.000000e+00, float -5.000000e+00
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hr, i64 1
  %i.hw = fadd nsz <2 x float> %i.hv, %.sroa.01.0.copyload.i203 ; 2 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0
  %i.hy = fdiv nsz float %i.hx, 1.000000e+01
  %i.hz = fptosi float %i.hy to i16               ; 2 uses
  %19 = shufflevector <2 x float> %18, <2 x float> %i.hw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ia = fcmp nsz ogt <2 x float> %19, zeroinitializer
  %i.ib = select <2 x i1> %i.ia, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ic = fadd nsz <2 x float> %19, %i.ib
  %i.id = fdiv nsz <2 x float> %i.ic, splat (float 1.000000e+01)
  %i.ie = fptosi <2 x float> %i.id to <2 x i16>   ; 3 uses
  %i.if = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.ig = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.if)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ih = extractelement <2 x i16> %i.ie, i64 0
  %.sroa.3.0.insert.ext.i214 = zext i16 %i.ih to i48
  %.sroa.3.0.insert.shift.i215 = shl nuw i48 %.sroa.3.0.insert.ext.i214, 32
  %.sroa.0.0.insert.ext.i219 = zext i16 %i.hz to i48
  %i.ii = or disjoint i48 %.sroa.3.0.insert.shift.i215, %.sroa.0.0.insert.ext.i219
  %i.ij = extractelement <2 x i16> %i.ie, i64 1
  %.sroa.2.0.insert.ext.i216 = zext i16 %i.ij to i48
  %.sroa.2.0.insert.shift.i217 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i216, 16
  %.sroa.0.0.insert.insert.i220 = or disjoint i48 %i.ii, %.sroa.2.0.insert.shift.i217
  %i.ik = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ig, i48 %.sroa.0.0.insert.insert.i220, ptr noundef null)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.il = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !258
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = invoke noundef ptr %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.aj, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.ae
  %i.it = and i32 %i.ik, 65535
  %i.iu = zext nneg i32 %i.it to i64              ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !333
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !336 ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = sdiv exact i64 %i.ja, 2072
  %i.jc = icmp ugt i64 %i.jb, %i.iu
  br i1 %i.jc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.jd = getelementptr inbounds nuw [2072 x i8], ptr %i.ix, i64 %i.iu ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !103
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %bb.ag, label %_ZNK14NodeDefManager3getERK7MapNode.exit221

bb.ag:                                            ; preds = %bb.af, %_ZN8IGameDef4ndefEv.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit221

_ZNK14NodeDefManager3getERK7MapNode.exit221:      ; preds = %bb.ag, %bb.af
  %i.ji = phi ptr [ %i.jh, %bb.ag ], [ %i.jd, %bb.af ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1412
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !362 ; 2 uses
  %i.jl = icmp ugt i32 %i.jk, %.0123352
  br i1 %i.jl, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ah:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.jm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ah, %bb.ae
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ah, %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %.sroa.0313.1 = phi i16 [ %.sroa.0313.0350, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.hz, %bb.ah ] ; 2 uses
  %.1124 = phi i32 [ %.0123352, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.jk, %bb.ah ] ; 2 uses
  %i.jp = phi <2 x i16> [ %i.hq, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.ie, %bb.ah ] ; 2 uses
  %i.jq = fadd nsz float %.0126351, 1.000000e+00  ; 2 uses
  %i.jr = fcmp nsz olt float %i.jq, %i.hm
  br i1 %i.jr, label %bb.ac, label %._crit_edge, !llvm.loop !363

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ab
  %.sroa.0313.0.lcssa = phi i16 [ 0, %bb.ab ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.0123.lcssa = phi i32 [ 0, %bb.ab ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  %i.js = phi <2 x i16> [ zeroinitializer, %bb.ab ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.jt, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %20 = load <4 x float>, ptr %.sroa.22.0..sroa_idx.i, align 8
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ju = fmul nsz float %i.hm, 1.000000e+01
  %.sroa.0305.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0305.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.jv = fadd nsz float %i.ju, %.sroa.0305.4.vec.extract
  %i.jw = fcmp nsz ogt float %.sroa.0305.0.vec.extract, 0.000000e+00
  %i.jx = select nsz i1 %i.jw, float 5.000000e+00, float -5.000000e+00
  %i.jy = fadd nsz float %.sroa.0305.0.vec.extract, %i.jx
  %i.jz = fdiv nsz float %i.jy, 1.000000e+01
  %i.ka = fptosi float %i.jz to i16               ; 2 uses
  %i.kb = insertelement <2 x float> %21, float %i.jv, i64 1 ; 2 uses
  %i.kc = fcmp nsz ogt <2 x float> %i.kb, zeroinitializer
  %i.kd = select <2 x i1> %i.kc, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ke = fadd nsz <2 x float> %i.kb, %i.kd
  %i.kf = fdiv nsz <2 x float> %i.ke, splat (float 1.000000e+01)
  %i.kg = fptosi <2 x float> %i.kf to <2 x i16>   ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !192
  %i.kj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.ki)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %._crit_edge
  %i.kk = extractelement <2 x i16> %i.kg, i64 0
  %.sroa.3.0.insert.ext.i224 = zext i16 %i.kk to i48
  %.sroa.3.0.insert.shift.i225 = shl nuw i48 %.sroa.3.0.insert.ext.i224, 32
  %.sroa.0.0.insert.ext.i229 = zext i16 %i.ka to i48
  %i.kl = or disjoint i48 %.sroa.3.0.insert.shift.i225, %.sroa.0.0.insert.ext.i229
  %i.km = extractelement <2 x i16> %i.kg, i64 1
  %.sroa.2.0.insert.ext.i226 = zext i16 %i.km to i48
  %.sroa.2.0.insert.shift.i227 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i226, 16
  %.sroa.0.0.insert.insert.i230 = or disjoint i48 %i.kl, %.sroa.2.0.insert.shift.i227
  %i.kn = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.kj, i48 %.sroa.0.0.insert.insert.i230, ptr noundef null)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ko = load ptr, ptr %i.kh, align 8, !tbaa !192
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 104
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !258
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kr)
          to label %_ZN8IGameDef4ndefEv.exit231 unwind label %bb.aq, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit231:                      ; preds = %bb.al
  %i.kw = and i32 %i.kn, 65535
  %i.kx = zext nneg i32 %i.kw to i64              ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !333
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !336 ; 3 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = sdiv exact i64 %i.ld, 2072
  %i.lf = icmp ugt i64 %i.le, %i.kx
  br i1 %i.lf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN8IGameDef4ndefEv.exit231
  %i.lg = getelementptr inbounds nuw [2072 x i8], ptr %i.la, i64 %i.kx ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !103
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %bb.an, label %_ZNK14NodeDefManager3getERK7MapNode.exit232

bb.an:                                            ; preds = %bb.am, %_ZN8IGameDef4ndefEv.exit231
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit232

_ZNK14NodeDefManager3getERK7MapNode.exit232:      ; preds = %bb.an, %bb.am
  %i.ll = phi ptr [ %i.lk, %bb.an ], [ %i.lg, %bb.am ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 1412
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !362 ; 2 uses
  %i.lo = icmp ugt i32 %i.ln, %.0123.lcssa
  br i1 %i.lo, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.lp)
          to label %.thread325 unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %._crit_edge
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ar:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %.not144 = icmp eq i32 %.0123.lcssa, 0
  br i1 %.not144, label %bb.az, label %.thread325

.thread325:                                       ; preds = %bb.ao, %bb.ar
  %.2125334 = phi i32 [ %.0123.lcssa, %bb.ar ], [ %i.ln, %bb.ao ]
  %.sroa.0313.2333 = phi i16 [ %.sroa.0313.0.lcssa, %bb.ar ], [ %i.ka, %bb.ao ]
  %i.ls = phi <2 x i16> [ %i.js, %bb.ar ], [ %i.kg, %bb.ao ]
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.lu = load i16, ptr %i.lt, align 4, !tbaa !142 ; 2 uses
  %.not145 = icmp eq i16 %i.lu, 0
  br i1 %.not145, label %bb.az, label %bb.as

bb.as:                                            ; preds = %.thread325
  %i.lv = zext i16 %i.lu to i32
  %i.lw = sub nsw i32 %i.lv, %.2125334
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.lx = zext <2 x i16> %i.ls to <2 x i48>
  %i.ly = shl nuw <2 x i48> %i.lx, <i48 32, i48 16>
  %.sroa.7315.0.insert.insert = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.ly)
  %.sroa.0313.0.insert.ext = zext i16 %.sroa.0313.2333 to i48
  %.sroa.0313.0.insert.insert = or disjoint i48 %.sroa.7315.0.insert.insert, %.sroa.0313.0.insert.ext
  invoke void @_ZN20PlayerHPChangeReasonC2ENS_4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(54) %8, i8 noundef zeroext 4, ptr noundef nonnull align 8 %9, i48 %.sroa.0313.0.insert.insert)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.lz = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.au
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !105
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %i.me = load ptr, ptr %0, align 8, !tbaa !9
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 216
  %i.mg = load ptr, ptr %i.mf, align 8
  invoke void %i.mg(ptr noundef nonnull align 8 dereferenceable(1226) %0, i32 noundef %i.lw, ptr noundef nonnull align 8 dereferenceable(54) %8)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !102 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZN20PlayerHPChangeReasonD2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %bb.av
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !105
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #33
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit239

_ZN20PlayerHPChangeReasonD2Ev.exit239:            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ax:                                            ; preds = %bb.at
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.ax
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !105
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !102 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %bb.ay
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !105
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.ay, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.aw
  %.pn146 = phi { ptr, i32 } [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.mn, %bb.aw ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243 ], [ %i.mo, %bb.ax ], [ %i.mu, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ba

bb.az:                                            ; preds = %_ZN20PlayerHPChangeReasonD2Ev.exit239, %.thread325, %bb.ar
  %i.nb = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.hi
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.az
  %i.nd = load i64, ptr %i.hi, align 8, !tbaa !105
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge167

bb.ba:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.aq, %bb.ai, %bb.aj
end_hunk_0
