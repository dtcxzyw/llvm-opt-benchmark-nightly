Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7Minimap11drawMinimapEN4core4rectIiEE:bb.a
  %i.dk = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef nonnull align 4 dereferenceable(64) ptr %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(64) %i.do, i64 64, i1 false), !tbaa.struct !394
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.dp = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef nonnull align 4 dereferenceable(64) ptr %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef nonnull align 4 dereferenceable(64) %i.dt, i64 64, i1 false), !tbaa.struct !394
  %i.du = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 344
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.dy = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dz, i8 0, i64 56, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 60
  store float 1.000000e+00, ptr %i.ea, align 4, !tbaa !195
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 40
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !195
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 20
  store float 1.000000e+00, ptr %i.ec, align 4, !tbaa !195
  store float 1.000000e+00, ptr %12, align 4, !tbaa !195
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %i.eg = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.eh, i8 0, i64 56, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 60
  store float 1.000000e+00, ptr %i.ei, align 4, !tbaa !195
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float 1.000000e+00, ptr %i.ej, align 4, !tbaa !195
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 20
  store float 1.000000e+00, ptr %i.ek, align 4, !tbaa !195
  store float 1.000000e+00, ptr %13, align 4, !tbaa !195
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 60
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.eo, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.ep, align 4, !tbaa !195
  store float 1.000000e+00, ptr %i.eq, align 8, !tbaa !195
  store float 1.000000e+00, ptr %i.er, align 4, !tbaa !195
  store float 1.000000e+00, ptr %14, align 8, !tbaa !195
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !159 ; 13 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 18
  store i8 3, ptr %i.ev, align 2, !tbaa !395
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 19
  store i8 1, ptr %i.ew, align 1, !tbaa !396
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 42
  store i8 3, ptr %i.ex, align 2, !tbaa !395
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 43
  store i8 1, ptr %i.ey, align 1, !tbaa !396
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 66
  store i8 3, ptr %i.ez, align 2, !tbaa !395
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 67
  store i8 1, ptr %i.fa, align 1, !tbaa !396
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 90
  store i8 3, ptr %i.fb, align 2, !tbaa !395
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 91
  store i8 1, ptr %i.fc, align 1, !tbaa !396
  store ptr %i.j, ptr %i.eu, align 8, !tbaa !236
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !157 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2097280
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !209
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !236
  %i.fh = load i32, ptr %i.fd, align 8, !tbaa !95
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %._crit_edge.i.i87, label %bb.t

._crit_edge.i.i87:                                ; preds = %bb.p
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fl, ptr %15, align 8, !tbaa !151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.fl, ptr noundef nonnull align 1 dereferenceable(14) @.str.15, i64 14, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 14, ptr %i.fm, align 8, !tbaa !155
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 30
  store i8 0, ptr %i.fn, align 2, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !27
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.fo, ptr %i.fq, align 8, !tbaa !237
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.fr, align 8, !tbaa !63
  %i.fs = load ptr, ptr %i.fk, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 1, ptr noundef null)
          to label %bb.q unwind label %.body

bb.q:                                             ; preds = %._crit_edge.i.i87
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.fx)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #32
  unreachable

.body:                                            ; preds = %._crit_edge.i.i87
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gb = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fl
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gd = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fl
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.s
  %i.gf = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.gh = load ptr, ptr %i.fj, align 8, !tbaa !145 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef nonnull align 8 dereferenceable(96) ptr %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, i32 noundef %i.fv)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 36
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !403
  %i.go = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !404
  %.pre142 = load ptr, ptr %i.f, align 8, !tbaa !157
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %.body
  %i.gp = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ae

bb.t:                                             ; preds = %bb.p
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store i32 1, ptr %i.gr, align 8, !tbaa !404
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.gs = phi ptr [ %i.fd, %bb.t ], [ %.pre142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2097253
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !158, !range !93, !noundef !94
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !147
  %i.gy = fsub nsz float 3.600000e+02, %i.gx
  %i.gz = fmul nsz float %i.gy, f0x3C8EFA35
  %i.ha = fpext nsz float %i.gz to double
  %sincos39.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.ha) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 3 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 3 uses
  %i.hb = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %sin40.i.i, i64 1 ; 2 uses
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float>
  store <2 x float> %i.hd, ptr %14, align 8, !tbaa !195
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float -0.000000e+00, ptr %i.he, align 8, !tbaa !195
  %i.hf = fneg nsz double %sin40.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hh = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %cos41.i.i, i64 1
  %i.hj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> zeroinitializer, <2 x double> %i.hi)
  %i.hk = fptrunc <2 x double> %i.hj to <2 x float>
  store <2 x float> %i.hk, ptr %i.hg, align 8, !tbaa !195
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 24
  store float 0.000000e+00, ptr %i.hl, align 8, !tbaa !195
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.hn = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %cos41.i.i, i64 1 ; 2 uses
  %i.hp = fmul nsz <2 x double> %i.ho, <double 0.000000e+00, double -0.000000e+00>
  %i.hq = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> zeroinitializer, <2 x double> %i.hp)
  %i.hs = fptrunc <2 x double> %i.hr to <2 x float>
  store <2 x float> %i.hs, ptr %i.hm, align 8, !tbaa !195
  store float 1.000000e+00, ptr %i.eq, align 8, !tbaa !195
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ht = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %14)
  %i.hx = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef nonnull align 8 dereferenceable(127) %i.eu)
  %i.ib = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ic = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 448
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ic)
  %i.ig = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2097253
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !158, !range !93, !noundef !94
  %i.ij = trunc nuw i8 %i.ii to i1
  %.in.v = select i1 %i.ij, i64 2097296, i64 2097304
  %.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.in.v
  %i.ik = load ptr, ptr %.in, align 8, !tbaa !405
  store ptr %i.ik, ptr %i.eu, align 8, !tbaa !236
  %i.il = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store i32 1, ptr %i.il, align 8, !tbaa !404
  %i.im = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 96
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull align 8 dereferenceable(127) %i.eu)
  %i.iq = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ir = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !20
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 448
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef %i.ir)
  %i.iv = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2097253
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !158, !range !93, !noundef !94
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float 1.000000e+00, ptr %14, align 8, !tbaa !195
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !147
  %i.jb = fmul nsz float %i.ja, f0x3C8EFA35
  %i.jc = fpext nsz float %i.jb to double
  %sincos39.i.i112 = call nsz { double, double } @llvm.sincos.f64(double %i.jc) ; 2 uses
  %sin40.i.i113 = extractvalue { double, double } %sincos39.i.i112, 0 ; 4 uses
  %cos41.i.i114 = extractvalue { double, double } %sincos39.i.i112, 1 ; 4 uses
  %i.jd = fptrunc nsz double %cos41.i.i114 to float
  store float %i.jd, ptr %14, align 8, !tbaa !195
  %i.je = fptrunc nsz double %sin40.i.i113 to float
  %i.jf = fneg nsz double %sin40.i.i113
  %i.jg = insertelement <2 x double> poison, double %cos41.i.i114, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %sin40.i.i113, i64 1
  %i.ji = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %cos41.i.i114, i64 1
  %i.jk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> zeroinitializer, <2 x double> %i.jj)
  %i.jl = fptrunc <2 x double> %i.jk to <2 x float>
  %i.jm = insertelement <2 x double> poison, double %sin40.i.i113, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %cos41.i.i114, i64 1 ; 2 uses
  %i.jo = fmul nsz <2 x double> %i.jn, <double 0.000000e+00, double -0.000000e+00>
  %i.jp = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> zeroinitializer, <2 x double> %i.jo)
  %i.jr = fptrunc <2 x double> %i.jq to <2 x float>
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink141 = phi float [ 0.000000e+00, %bb.x ], [ %i.je, %bb.y ]
  %i.js = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.x ], [ %i.jl, %bb.y ]
  %i.jt = phi <2 x float> [ zeroinitializer, %bb.x ], [ %i.jr, %bb.y ]
  store float %.sink141, ptr %i.eo, align 4, !tbaa !195
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float -0.000000e+00, ptr %i.ju, align 8, !tbaa !195
  %i.jv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x float> %i.js, ptr %i.jv, align 8, !tbaa !195
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 24
  store float 0.000000e+00, ptr %i.jw, align 8, !tbaa !195
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x float> %i.jt, ptr %i.jx, align 8, !tbaa !195
  store float 1.000000e+00, ptr %i.eq, align 8, !tbaa !195
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iv, i64 2097312
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !391
  store ptr %i.jz, ptr %i.eu, align 8, !tbaa !236
  %i.ka = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !20
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %14)
  %i.ke = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 96
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, ptr noundef nonnull align 8 dereferenceable(127) %i.eu)
  %i.ki = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.kj = load ptr, ptr %i.es, align 8, !tbaa !159
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !20
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 448
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kj)
  %i.kn = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %11)
  %i.kr = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !20
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %10)
  %i.kv = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 344
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kv, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.kz = load <2 x i32>, ptr %4, align 8, !tbaa !196
  %i.la = load i32, ptr %4, align 8, !tbaa !407
  %i.lb = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2097320
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !392
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store i32 0, ptr %16, align 4, !tbaa !227
  %i.lf = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 0, ptr %i.lf, align 4, !tbaa !228
  %i.lg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lh = load <2 x i32>, ptr %i.le, align 4, !tbaa !196
  store <2 x i32> %i.lh, ptr %i.lg, align 4, !tbaa !196
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !408 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !408 ; 2 uses
  %.not135136 = icmp eq ptr %i.lj, %i.ll
  br i1 %.not135136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !147
  %i.lo = fmul nsz float %i.ln, f0x3C8EFA35
  %sincos = call nsz { float, float } @llvm.sincos.f32(float %i.lo) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %i.lp = load i32, ptr %i.e, align 8, !tbaa !409
  %i.lq = sub nsw i32 %i.lp, %i.la
  %i.lr = sitofp nsz i32 %i.lq to float
  %i.ls = fmul nnan nsz float %i.lr, 2.500000e-02
  %i.lt = fptosi float %i.ls to i32
  %i.lu = fneg nsz float %sin
  %i.lv = sitofp nsz i32 %i.lt to float
  %i.lw = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lx = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %cos, i64 1
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mb = insertelement <2 x float> poison, float %cos, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %sin, i64 1
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph, %bb.ac
  %.sroa.0115.0137 = phi ptr [ %i.lj, %.lr.ph ], [ %i.nf, %bb.ac ] ; 2 uses
  %i.md = load <2 x float>, ptr %.sroa.0115.0137, align 4, !tbaa !195 ; 3 uses
  %i.me = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 2097253
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !158, !range !93, !noundef !94
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mi = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mj = fmul nsz <2 x float> %i.mi, %i.ly
  %i.mk = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.mc, <2 x float> %i.mj)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mm = phi <2 x float> [ %i.ml, %bb.ab ], [ %i.md, %bb.aa ]
  %i.mn = fadd nsz <2 x float> %i.mm, splat (float 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.mo = load <2 x i32>, ptr %i.e, align 8, !tbaa !196
  %i.mp = load <2 x i32>, ptr %4, align 8, !tbaa !196
  %i.mq = sub nsw <2 x i32> %i.mo, %i.mp
  %i.mr = sitofp <2 x i32> %i.mq to <2 x float>
  %i.ms = fmul nsz <2 x float> %i.mn, %i.mr
  %i.mt = fadd nsz <2 x float> %i.ms, %i.lw
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.mv = fsub nsz <4 x float> %i.mu, %i.ma
  %i.mw = fadd nsz <4 x float> %i.mu, %i.ma
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.my = fptosi <4 x float> %i.mx to <4 x i32>
  store <4 x i32> %i.my, ptr %17, align 16, !tbaa !196
  %i.mz = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 2097320
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !392
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef %i.nb, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull %17, ptr noundef nonnull @_ZZN7Minimap11drawMinimapEN4core4rectIiEEE1c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0115.0137, i64 8 ; 2 uses
  %.not135 = icmp eq ptr %i.nf, %i.ll
  br i1 %.not135, label %._crit_edge, label %bb.aa

bb.ad:                                            ; preds = %._crit_edge, %bb.b, %bb.a
  ret void

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn51.pn = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  resume { ptr, i32 } %.pn51.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap19updateActiveMarkersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !414
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.j, align 4, !tbaa !54 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %i.k = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.l = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.m = insertelement <2 x i16> poison, i16 %i.l, i64 0
  %i.n = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.o = insertelement <2 x i16> %i.m, i16 %i.n, i64 1
  %i.p = sitofp <2 x i16> %i.o to <2 x float>
  %i.q = fmul nnan nsz float %i.k, 1.000000e+01
  %i.r = fmul nnan nsz <2 x float> %i.p, splat (float 1.000000e+01)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load <2 x i16>, ptr %i.v, align 8, !tbaa !54
  %i.x = lshr <2 x i16> %i.w, splat (i16 1)       ; 2 uses
  %i.y = load i16, ptr %i.u, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 90
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !52
  %i.ab = extractelement <2 x i16> %i.x, i64 0
  %.neg74 = sub i16 %i.ab, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 92
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !53
  %i.ae = shufflevector <2 x i16> %i.x, <2 x i16> poison, <2 x i32> <i32 1, i32 1>
  %i.af = insertelement <2 x i16> poison, i16 %i.y, i64 0
  %i.ag = insertelement <2 x i16> %i.af, i16 %i.ad, i64 1
  %i.ah = sub <2 x i16> %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !240 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !240 ; 2 uses
  %.not7376 = icmp eq ptr %i.aj, %i.al
  br i1 %.not7376, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit
  %.sroa.061.077 = phi ptr [ %i.aj, %.lr.ph ], [ %i.dt, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.061.077, align 8, !tbaa !203
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !243 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call { <2 x float>, float } %i.ar(ptr noundef nonnull align 8 dereferenceable(218) %i.ao) ; 2 uses
  %.fca.0.extract10 = extractvalue { <2 x float>, float } %i.as, 0 ; 2 uses
  %.fca.1.extract11 = extractvalue { <2 x float>, float } %i.as, 1
  %.sroa.057.4.vec.extract = extractelement <2 x float> %.fca.0.extract10, i64 1
  %i.at = fadd nsz float %i.q, %.sroa.057.4.vec.extract ; 2 uses
  %i.au = fcmp nsz ogt float %i.at, 0.000000e+00
  %i.av = select nsz i1 %i.au, float 5.000000e+00, float -5.000000e+00
  %i.aw = fadd nsz float %i.at, %i.av
  %i.ax = fdiv nsz float %i.aw, 1.000000e+01
  %i.ay = fptosi float %i.ax to i16
  %i.az = add i16 %.neg74, %i.ay                  ; 2 uses
  %i.ba = insertelement <2 x float> %.fca.0.extract10, float %.fca.1.extract11, i64 1
  %i.bb = fadd nsz <2 x float> %i.r, %i.ba        ; 2 uses
  %i.bc = fcmp nsz ogt <2 x float> %i.bb, zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.be = fadd nsz <2 x float> %i.bb, %i.bd
  %i.bf = fdiv nsz <2 x float> %i.be, splat (float 1.000000e+01)
  %i.bg = fptosi <2 x float> %i.bf to <2 x i16>
  %i.bh = add <2 x i16> %i.ah, %i.bg              ; 4 uses
  %i.bi = extractelement <2 x i16> %i.bh, i64 0   ; 2 uses
  %i.bj = icmp slt i16 %i.bi, 0
  br i1 %i.bj, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !157 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 42
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !96 ; 3 uses
  %i.bn = icmp ugt i16 %i.bi, %i.bm
  %i.bo = icmp slt i16 %i.az, 0
  %or.cond = or i1 %i.bo, %i.bn
  br i1 %or.cond, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = zext i16 %i.bm to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !97
  %i.bs = icmp ugt i16 %i.az, %i.br
  %i.bt = extractelement <2 x i16> %i.bh, i64 1
  %i.bu = sext i16 %i.bt to i32
  %i.bv = icmp ugt i32 %i.bu, %i.bp
  %or.cond72 = or i1 %i.bv, %i.bs
  br i1 %or.cond72, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = uitofp nneg <2 x i16> %i.bh to <2 x float>
  %i.bx = sitofp nsz <2 x i16> %i.bh to <2 x float>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.bz = uitofp i16 %i.bm to float
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv nsz <2 x float> %i.by, %i.cb
  %i.cd = fmul nsz <2 x float> %i.cc, splat (float 5.120000e+02)
  %i.ce = fptosi <2 x float> %i.cd to <2 x i16>   ; 4 uses
  %i.cf = extractelement <2 x i16> %i.ce, i64 0
  %i.cg = zext nneg i16 %i.cf to i32
  %i.ch = extractelement <2 x i16> %i.ce, i64 1
  %i.ci = sext i16 %i.ch to i32
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call i32 %i.cl(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i32 noundef %i.cg, i32 noundef %i.ci)
  %.not = icmp ult i32 %i.cm, 16777216
  br i1 %.not, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = uitofp nsz nneg <2 x i16> %i.ce to <2 x float>
  %i.co = sitofp nsz <2 x i16> %i.ce to <2 x float>
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.cq = fmul nnan nsz <2 x float> %i.cp, <float 1.000000e+00, float f0x3B000000> ; 2 uses
  %i.cr = fmul nnan nsz <2 x float> %i.cq, <float f0x3B000000, float poison>
  %i.cs = fsub nsz <2 x float> <float poison, float 1.000000e+00>, %i.cq
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = fadd nsz <2 x float> %i.ct, splat (float -5.000000e-01) ; 2 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !414 ; 6 uses
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x float> %i.cu, ptr %i.cv, align 4, !tbaa !195
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !414
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !163 ; 5 uses
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.i, label %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #35 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  store <2 x float> %i.cu, ptr %i.dk, align 4, !tbaa !195
  %.not10.i.i.i.i.i = icmp eq ptr %i.cy, %i.cv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %i.dj, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %i.cy, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.dl = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !195, !alias.scope !587
  store i64 %i.dl, ptr %.012.i.i.i.i.i, align 4, !tbaa !195, !alias.scope !586
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, %i.cv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !413

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dj, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dn, %.lr.ph.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !164
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dr) #30
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  store ptr %i.dj, ptr %i.b, align 8, !tbaa !163
  store ptr %i.do, ptr %i.d, align 8, !tbaa !414
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.ds, ptr %i.am, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit: ; preds = %bb.e, %bb.g, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.b, %bb.c, %bb.d
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.061.077, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.dt, %i.al
  br i1 %.not73, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7Minimap9addMarkerEPN5scene10ISceneNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
