Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/player_sao?download=true
inline.NumInlined: 1609
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9PlayerSAO4stepEfb:bb.a
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
  %.0126351 = phi float [ 1.000000e-01, %.lr.ph ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.sroa.0313.0348 = phi i16 [ 0, %.lr.ph ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.hq = phi <2 x i16> [ zeroinitializer, %.lr.ph ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.sroa.01.0.copyload.i203 = load <2 x float>, ptr %i.ho, align 8 ; 2 uses
  %.sroa.22.0.copyload.i205 = load float, ptr %.sroa.22.0..sroa_idx.i204, align 8, !tbaa !107
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
  %i.ia = insertelement <2 x float> %i.hw, float %.sroa.22.0.copyload.i205, i64 0 ; 2 uses
  %i.ib = fcmp nsz ogt <2 x float> %i.ia, zeroinitializer
  %i.ic = select <2 x i1> %i.ib, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.id = fadd nsz <2 x float> %i.ia, %i.ic
  %i.ie = fdiv nsz <2 x float> %i.id, splat (float 1.000000e+01)
  %i.if = fptosi <2 x float> %i.ie to <2 x i16>   ; 3 uses
  %i.ig = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.ih = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.ig)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ii = extractelement <2 x i16> %i.if, i64 0
  %.sroa.3.0.insert.ext.i214 = zext i16 %i.ii to i48
  %.sroa.3.0.insert.shift.i215 = shl nuw i48 %.sroa.3.0.insert.ext.i214, 32
  %.sroa.0.0.insert.ext.i219 = zext i16 %i.hz to i48
  %i.ij = or disjoint i48 %.sroa.3.0.insert.shift.i215, %.sroa.0.0.insert.ext.i219
  %i.ik = extractelement <2 x i16> %i.if, i64 1
  %.sroa.2.0.insert.ext.i216 = zext i16 %i.ik to i48
  %.sroa.2.0.insert.shift.i217 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i216, 16
  %.sroa.0.0.insert.insert.i220 = or disjoint i48 %i.ij, %.sroa.2.0.insert.shift.i217
  %i.il = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ih, i48 %.sroa.0.0.insert.insert.i220, ptr noundef null)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.im = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 104
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !258
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = invoke noundef ptr %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ip)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.aj, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.ae
  %i.iu = and i32 %i.il, 65535
  %i.iv = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !333
  %i.iy = load ptr, ptr %i.it, align 8, !tbaa !336 ; 3 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = sdiv exact i64 %i.jb, 2072
  %i.jd = icmp ugt i64 %i.jc, %i.iv
  br i1 %i.jd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.je = getelementptr inbounds nuw [2072 x i8], ptr %i.iy, i64 %i.iv ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !103
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %bb.ag, label %_ZNK14NodeDefManager3getERK7MapNode.exit221

bb.ag:                                            ; preds = %bb.af, %_ZN8IGameDef4ndefEv.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit221

_ZNK14NodeDefManager3getERK7MapNode.exit221:      ; preds = %bb.ag, %bb.af
  %i.jj = phi ptr [ %i.ji, %bb.ag ], [ %i.je, %bb.af ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1412
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !362 ; 2 uses
  %i.jm = icmp ugt i32 %i.jl, %.0123352
  br i1 %i.jm, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ah:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.jn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ah, %bb.ae
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ah, %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %.sroa.0313.1 = phi i16 [ %.sroa.0313.0348, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.hz, %bb.ah ] ; 2 uses
  %.1124 = phi i32 [ %.0123352, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.jl, %bb.ah ] ; 2 uses
  %i.jq = phi <2 x i16> [ %i.hq, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.if, %bb.ah ] ; 2 uses
  %i.jr = fadd nsz float %.0126351, 1.000000e+00  ; 2 uses
  %i.js = fcmp nsz olt float %i.jr, %i.hm
  br i1 %i.js, label %bb.ac, label %._crit_edge, !llvm.loop !363

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ab
  %.sroa.0313.0.lcssa = phi i16 [ 0, %bb.ab ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.0123.lcssa = phi i32 [ 0, %bb.ab ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  %i.jt = phi <2 x i16> [ zeroinitializer, %bb.ab ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ju, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !107
  %i.jv = fmul nsz float %i.hm, 1.000000e+01
  %.sroa.0305.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0305.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.jw = fadd nsz float %i.jv, %.sroa.0305.4.vec.extract
  %i.jx = fcmp nsz ogt float %.sroa.0305.0.vec.extract, 0.000000e+00
  %i.jy = select nsz i1 %i.jx, float 5.000000e+00, float -5.000000e+00
  %i.jz = fadd nsz float %.sroa.0305.0.vec.extract, %i.jy
  %i.ka = fdiv nsz float %i.jz, 1.000000e+01
  %i.kb = fptosi float %i.ka to i16               ; 2 uses
  %i.kc = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i, i64 0
  %i.kd = insertelement <2 x float> %i.kc, float %i.jw, i64 1 ; 2 uses
  %i.ke = fcmp nsz ogt <2 x float> %i.kd, zeroinitializer
  %i.kf = select <2 x i1> %i.ke, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.kg = fadd nsz <2 x float> %i.kd, %i.kf
  %i.kh = fdiv nsz <2 x float> %i.kg, splat (float 1.000000e+01)
  %i.ki = fptosi <2 x float> %i.kh to <2 x i16>   ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !192
  %i.kl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.kk)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %._crit_edge
  %i.km = extractelement <2 x i16> %i.ki, i64 0
  %.sroa.3.0.insert.ext.i224 = zext i16 %i.km to i48
  %.sroa.3.0.insert.shift.i225 = shl nuw i48 %.sroa.3.0.insert.ext.i224, 32
  %.sroa.0.0.insert.ext.i229 = zext i16 %i.kb to i48
  %i.kn = or disjoint i48 %.sroa.3.0.insert.shift.i225, %.sroa.0.0.insert.ext.i229
  %i.ko = extractelement <2 x i16> %i.ki, i64 1
  %.sroa.2.0.insert.ext.i226 = zext i16 %i.ko to i48
  %.sroa.2.0.insert.shift.i227 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i226, 16
  %.sroa.0.0.insert.insert.i230 = or disjoint i48 %i.kn, %.sroa.2.0.insert.shift.i227
  %i.kp = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.kl, i48 %.sroa.0.0.insert.insert.i230, ptr noundef null)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.kq = load ptr, ptr %i.kj, align 8, !tbaa !192
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 104
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !258
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !9
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = invoke noundef ptr %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %_ZN8IGameDef4ndefEv.exit231 unwind label %bb.aq, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit231:                      ; preds = %bb.al
  %i.ky = and i32 %i.kp, 65535
  %i.kz = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !333
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !336 ; 3 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 2072
  %i.lh = icmp ugt i64 %i.lg, %i.kz
  br i1 %i.lh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN8IGameDef4ndefEv.exit231
  %i.li = getelementptr inbounds nuw [2072 x i8], ptr %i.lc, i64 %i.kz ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !103
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.an, label %_ZNK14NodeDefManager3getERK7MapNode.exit232

bb.an:                                            ; preds = %bb.am, %_ZN8IGameDef4ndefEv.exit231
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit232

_ZNK14NodeDefManager3getERK7MapNode.exit232:      ; preds = %bb.an, %bb.am
  %i.ln = phi ptr [ %i.lm, %bb.an ], [ %i.li, %bb.am ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1412
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !362 ; 2 uses
  %i.lq = icmp ugt i32 %i.lp, %.0123.lcssa
  br i1 %i.lq, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.lr)
          to label %.thread325 unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %._crit_edge
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ar:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %.not144 = icmp eq i32 %.0123.lcssa, 0
  br i1 %.not144, label %bb.az, label %.thread325

.thread325:                                       ; preds = %bb.ao, %bb.ar
  %.2125334 = phi i32 [ %.0123.lcssa, %bb.ar ], [ %i.lp, %bb.ao ]
  %.sroa.0313.2331 = phi i16 [ %.sroa.0313.0.lcssa, %bb.ar ], [ %i.kb, %bb.ao ]
  %i.lu = phi <2 x i16> [ %i.jt, %bb.ar ], [ %i.ki, %bb.ao ]
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.lw = load i16, ptr %i.lv, align 4, !tbaa !142 ; 2 uses
  %.not145 = icmp eq i16 %i.lw, 0
  br i1 %.not145, label %bb.az, label %bb.as

bb.as:                                            ; preds = %.thread325
  %i.lx = zext i16 %i.lw to i32
  %i.ly = sub nsw i32 %i.lx, %.2125334
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.lz = zext <2 x i16> %i.lu to <2 x i48>
  %i.ma = shl nuw <2 x i48> %i.lz, <i48 32, i48 16>
  %.sroa.7315.0.insert.insert = call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.ma)
  %.sroa.0313.0.insert.ext = zext i16 %.sroa.0313.2331 to i48
  %.sroa.0313.0.insert.insert = or disjoint i48 %.sroa.7315.0.insert.insert, %.sroa.0313.0.insert.ext
  invoke void @_ZN20PlayerHPChangeReasonC2ENS_4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(54) %8, i8 noundef zeroext 4, ptr noundef nonnull align 8 %9, i48 %.sroa.0313.0.insert.insert)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.mb = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.au
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !105
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %i.mg = load ptr, ptr %0, align 8, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 216
  %i.mi = load ptr, ptr %i.mh, align 8
  invoke void %i.mi(ptr noundef nonnull align 8 dereferenceable(1226) %0, i32 noundef %i.ly, ptr noundef nonnull align 8 dereferenceable(54) %8)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !102 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %_ZN20PlayerHPChangeReasonD2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %bb.av
  %i.mn = load i64, ptr %i.ml, align 8, !tbaa !105
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mo) #33
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit239

_ZN20PlayerHPChangeReasonD2Ev.exit239:            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ax:                                            ; preds = %bb.at
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.ax
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !105
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !102 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %bb.ay
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !105
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.ay, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.aw
  %.pn146 = phi { ptr, i32 } [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.mp, %bb.aw ], [ %i.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243 ], [ %i.mq, %bb.ax ], [ %i.mw, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ba

bb.az:                                            ; preds = %_ZN20PlayerHPChangeReasonD2Ev.exit239, %.thread325, %bb.ar
  %i.nd = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.hi
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.az
  %i.nf = load i64, ptr %i.hi, align 8, !tbaa !105
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge167

bb.ba:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.aq, %bb.ai, %bb.aj
  %.pn160.pn.pn = phi { ptr, i32 } [ %i.lt, %bb.aq ], [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.jo, %bb.ai ], [ %i.jp, %bb.aj ], [ %i.ls, %bb.ap ]
  %i.nh = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.hi
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.ba
  %i.nj = load i64, ptr %i.hi, align 8, !tbaa !105
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

.critedge167:                                     ; preds = %_ZNK7UnitSAO10isImmortalEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %bb.aa, %.critedge
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 8, !tbaa !364, !range !233, !noundef !234
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %.critedge167
  store i8 1, ptr %i.nl, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 749
  store i8 1, ptr %i.np, align 1, !tbaa !137, !noalias !365
  call void @_ZNK7UnitSAO28generateSetPropertiesCommandB5cxx11ERK16ObjectProperties(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1226) %0, ptr noundef nonnull align 8 dereferenceable(351) %i.no)
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ns = load i16, ptr %i.nr, align 8, !tbaa !193
  store i16 %i.ns, ptr %i.d, align 2, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i8 1, ptr %i.e, align 1, !tbaa !368
  %i.nt = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE12emplace_backIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.nq, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit unwind label %bb.bd ; 0 uses

_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !192
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ny, ptr %11, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 18, ptr %i.c, align 8, !tbaa !104
  %i.nz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.be    ; 2 uses

.noexc:                                           ; preds = %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit
  store ptr %i.nz, ptr %11, align 8, !tbaa !102
  %i.oa = load i64, ptr %i.c, align 8, !tbaa !104 ; 3 uses
  store i64 %i.oa, ptr %i.ny, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.nz, ptr noundef nonnull align 1 dereferenceable(18) @.str.10, i64 18, i1 false)
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.oa, ptr %i.ob, align 8, !tbaa !103
  %i.oc = load ptr, ptr %11, align 8, !tbaa !102
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  store i8 0, ptr %i.od, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 552
  invoke void @_ZN12ScriptApiEnv12player_eventEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %.noexc
  %i.of = load ptr, ptr %11, align 8, !tbaa !102  ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.ny
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.bc
  %i.oh = load i64, ptr %i.ny, align 8, !tbaa !105
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.oj = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !105
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bg

end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !103
  store ptr %i.ap, ptr %1, align 8, !tbaa !102
  store i64 0, ptr %i.b, align 8, !tbaa !103
  store i8 0, ptr %i.ap, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 0, ptr %i.ay, align 8, !tbaa !255
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !593
  %i.az = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.d, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.loopexit

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.ba

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.az, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.d ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !594
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !501
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #31 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !594
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !159
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %2, ptr %i.t, align 8, !tbaa !504
  %i.u = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !503  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  store ptr %i.x, ptr %3, align 8, !tbaa !148
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !503
  store ptr %3, ptr %i.y, align 8, !tbaa !148
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156
  store ptr %i.aa, ptr %3, align 8, !tbaa !148
  store ptr %3, ptr %i.z, align 8, !tbaa !156
  %i.ab = load ptr, ptr %3, align 8, !tbaa !148   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !504
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !503
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !503
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !501
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !501
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !105
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !516

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !595
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !516

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !156
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !148 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !504
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !503  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !156
  store ptr %i.o, ptr %.02530, align 8, !tbaa !148
  store ptr %.02530, ptr %i.g, align 8, !tbaa !156
  store ptr %i.g, ptr %i.m, align 8, !tbaa !503
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !148
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !503
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !148
  store ptr %i.r, ptr %.02530, align 8, !tbaa !148
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !503
  store ptr %.02530, ptr %i.s, align 8, !tbaa !148
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !596

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !159
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !159
  store ptr %.0.i, ptr %0, align 8, !tbaa !158
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare extern_weak void @_ZTH13warningstream() #1

declare extern_weak void @_ZTH12actionstream() #1

declare extern_weak void @_ZTH10infostream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #27

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !85, i64 960}
!12 = !{!"_ZTS9PlayerSAO", !13, i64 0, !85, i64 960, !64, i64 968, !16, i64 1000, !86, i64 1004, !86, i64 1012, !48, i64 1020, !39, i64 1032, !39, i64 1036, !18, i64 1040, !39, i64 1048, !39, i64 1052, !48, i64 1056, !87, i64 1068, !87, i64 1072, !87, i64 1076, !17, i64 1080, !88, i64 1088, !17, i64 1136, !17, i64 1137, !16, i64 1138, !39, i64 1140, !39, i64 1144, !16, i64 1148, !17, i64 1150, !97, i64 1152, !100, i64 1224, !17, i64 1225}
!13 = !{!"_ZTS7UnitSAO", !14, i64 0, !16, i64 324, !48, i64 328, !39, i64 340, !49, i64 344, !17, i64 400, !51, i64 408, !80, i64 760, !16, i64 816, !7, i64 818, !17, i64 819, !82, i64 820, !39, i64 828, !39, i64 832, !17, i64 836, !17, i64 837, !17, i64 838, !17, i64 839, !83, i64 840, !64, i64 896, !48, i64 928, !48, i64 940, !17, i64 952, !17, i64 953}
!14 = !{!"_ZTS18ServerActiveObject", !15, i64 0, !16, i64 10, !17, i64 12, !18, i64 14, !19, i64 24, !24, i64 88, !29, i64 160, !31, i64 168, !17, i64 224, !17, i64 225, !40, i64 232, !48, i64 312}
!15 = !{!"_ZTS12ActiveObject", !16, i64 8}
!16 = !{!"short", !7, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"_ZTSN4core8vector3dIsEE", !16, i64 0, !16, i64 2, !16, i64 4}
!19 = !{!"_ZTSSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !20, i64 0}
!20 = !{!"_ZTSSt14_Optional_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0EE", !21, i64 0}
!21 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0ELb0EE", !22, i64 0}
!22 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb1ELb0ELb0EE", !23, i64 0}
!23 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !7, i64 0, !17, i64 56}
!24 = !{!"_ZTSSt8optionalIS_ISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEE", !25, i64 0}
!25 = !{!"_ZTSSt14_Optional_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0EE", !26, i64 0}
!26 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0ELb0EE", !27, i64 0}
!27 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb1ELb0ELb0EE", !28, i64 0}
!28 = !{!"_ZTSSt22_Optional_payload_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEEE", !7, i64 0, !17, i64 64}
!29 = !{!"p1 _ZTS17ServerEnvironment", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE", !32, i64 0}
!32 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!33 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!34 = !{!"any p2 pointer", !30, i64 0}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!37 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!38 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !35, i64 8}
!39 = !{!"float", !7, i64 0}
!40 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !41, i64 0}
!41 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !42, i64 0}
!42 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !43, i64 0}
!43 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !44, i64 0}
!44 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !45, i64 0, !35, i64 8, !46, i64 16, !46, i64 48}
!45 = !{!"p2 _ZTS19ActiveObjectMessage", !34, i64 0}
!46 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !47, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!47 = !{!"p1 _ZTS19ActiveObjectMessage", !30, i64 0}
!48 = !{!"_ZTSN4core8vector3dIfEE", !39, i64 0, !39, i64 4, !39, i64 8}
!49 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !50, i64 0}
!50 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!51 = !{!"_ZTS16ObjectProperties", !52, i64 0, !57, i64 24, !62, i64 48, !62, i64 72, !63, i64 96, !64, i64 104, !64, i64 136, !64, i64 168, !64, i64 200, !64, i64 232, !48, i64 264, !67, i64 276, !68, i64 280, !72, i64 288, !72, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !73, i64 320, !77, i64 328, !16, i64 332, !16, i64 334, !7, i64 336, !78, i64 337, !17, i64 338, !17, i64 339, !17, i64 340, !17, i64 341, !17, i64 342, !17, i64 343, !17, i64 344, !17, i64 345, !17, i64 346, !17, i64 347, !17, i64 348, !17, i64 349, !79, i64 350}
!52 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!57 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN5video6SColorE", !30, i64 0}
!62 = !{!"_ZTSN4core8aabbox3dIfEE", !48, i64 0, !48, i64 12}
!63 = !{!"_ZTS12ObjectVisual", !7, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !65, i64 0, !35, i64 8, !7, i64 16}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!66 = !{!"p1 omnipotent char", !30, i64 0}
!67 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!68 = !{!"_ZTSSt8optionalIN5video6SColorEE", !69, i64 0}
!69 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !70, i64 0}
!70 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !71, i64 0}
!71 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !7, i64 0, !17, i64 4}
!72 = !{!"_ZTSN4core8vector2dIsEE", !16, i64 0, !16, i64 2}
!73 = !{!"_ZTSSt8optionalIjE", !74, i64 0}
!74 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !75, i64 0}
!75 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !76, i64 0}
!76 = !{!"_ZTSSt22_Optional_payload_baseIjE", !7, i64 0, !17, i64 4}
!77 = !{!"_ZTS7MapNode", !16, i64 0, !7, i64 2, !7, i64 3}
!78 = !{!"_ZTS16PointabilityType", !7, i64 0}
end_hunk_1
