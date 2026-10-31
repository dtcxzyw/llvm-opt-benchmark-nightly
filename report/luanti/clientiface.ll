Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientiface?download=true
inline.NumInlined: 1283
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12RemoteClient13GetNextBlocksEP17ServerEnvironmentP13EmergeManagerfRSt6vectorI27PrioritySortedBlockTransferSaIS5_EE:.noexc.i
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %.pre.i227 = load ptr, ptr %i.cb, align 8, !tbaa !117 ; 2 uses
  %.pre = load ptr, ptr %.pre.i227, align 8, !tbaa !116
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre528 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = phi i64 [ %.pre528, %bb.n ], [ %i.cf, %bb.m ]
  %i.cl = phi ptr [ %.pre.i227, %bb.n ], [ %i.cc, %bb.m ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !131 ; 6 uses
  %.not.i.i.i325 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i325, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #32
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !137
  %.not.i1.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 67
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !58
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.co)
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !116
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %i.co, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.q, %bb.r
  %.0.i.i.i = phi i8 [ %i.cs, %bb.q ], [ %i.cw, %bb.r ]
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef signext %.0.i.i.i)
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRfEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i16 0, ptr %i.cz, align 8, !tbaa !98
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.u
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.s
  %i.dd = load i64, ptr %i.u, align 8, !tbaa !58
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.da

bb.t:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load float, ptr %i.n, align 4, !tbaa !96
  %i.dg = fcmp nsz ult float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.u, label %bb.cm

bb.u:                                             ; preds = %bb.t
  %i.dh = load i16, ptr %0, align 8, !tbaa !53
  %i.di = call noundef ptr @_ZN17ServerEnvironment9getPlayerEt(ptr noundef nonnull align 8 dereferenceable(3560) %1, i16 noundef zeroext %i.dh) ; 4 uses
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.cm, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 424
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !258 ; 16 uses
  %.not209 = icmp eq ptr %i.dk, null
  br i1 %.not209, label %bb.cm, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !89
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !71
  %i.dq = zext i16 %i.dp to i64
  %.not210 = icmp ult i64 %i.dn, %i.dq
  br i1 %.not210, label %bb.x, label %bb.cm

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 312 ; 2 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.dr, align 8, !tbaa !125
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 320 ; 2 uses
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !125
  %i.ds = load ptr, ptr %i.dk, align 8, !tbaa !116
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 312
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef ptr %i.du(ptr noundef nonnull align 8 dereferenceable(324) %i.dk), !inline_history !225
  %.not1.i = icmp eq ptr %i.dv, null
  br i1 %.not1.i, label %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.i
  %.02.i = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.dk, %bb.x ] ; 2 uses
  %i.dw = load ptr, ptr %.02.i, align 8, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 312
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(324) %.02.i), !inline_history !225 ; 5 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !116
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 312
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(324) %i.dz), !inline_history !225
  %.not.i231 = icmp eq ptr %i.ed, null
  br i1 %.not.i231, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !226

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ee = icmp eq ptr %i.dz, %i.dk
  br i1 %i.ee, label %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread, label %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit

_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit: ; preds = %._crit_edge.i
  %i.ef = call ptr @__dynamic_cast(ptr nonnull %i.dz, ptr nonnull @_ZTI18ServerActiveObject, ptr nonnull @_ZTI12LuaEntitySAO, i64 0) #29 ; 2 uses
  %.not211 = icmp eq ptr %i.ef, null
  br i1 %.not211, label %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit
  %i.eg = call { <2 x float>, float } @_ZN12LuaEntitySAO11getVelocityEv(ptr noundef nonnull align 8 dereferenceable(1145) %i.ef) ; 2 uses
  %.fca.0.extract127 = extractvalue { <2 x float>, float } %i.eg, 0
  %.fca.1.extract128 = extractvalue { <2 x float>, float } %i.eg, 1
  br label %bb.z

_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread: ; preds = %bb.x, %._crit_edge.i, %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  %.sroa.01.0.copyload.i232 = load <2 x float>, ptr %i.eh, align 8, !tbaa !125
  %.sroa.22.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.di, i64 368
  %.sroa.22.0.copyload.i234 = load float, ptr %.sroa.22.0..sroa_idx.i233, align 8, !tbaa !125
  br label %bb.z

bb.z:                                             ; preds = %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread, %bb.y
  %.sroa.0424.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i232, %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread ], [ %.fca.0.extract127, %bb.y ] ; 3 uses
  %.sroa.14.0 = phi nsz float [ %.sroa.22.0.copyload.i234, %_ZL17getAttachedObjectP9PlayerSAOP17ServerEnvironment.exit.thread ], [ %.fca.1.extract128, %bb.y ] ; 4 uses
  %.sroa.0424.0.vec.extract = extractelement <2 x float> %.sroa.0424.0, i64 0 ; 3 uses
  %.sroa.0424.4.vec.extract = extractelement <2 x float> %.sroa.0424.0, i64 1 ; 3 uses
  %i.ei = fmul nsz float %.sroa.0424.4.vec.extract, %.sroa.0424.4.vec.extract
  %i.ej = call nsz float @llvm.fmuladd.f32(float %.sroa.0424.0.vec.extract, float %.sroa.0424.0.vec.extract, float %i.ei)
  %i.ek = call nsz float @llvm.fmuladd.f32(float %.sroa.14.0, float %.sroa.14.0, float %i.ej)
  %i.el = call nsz noundef float @llvm.sqrt.f32(float %i.ek) ; 3 uses
  %i.em = fcmp nsz ogt float %i.el, 1.000000e+01  ; 3 uses
  %i.en = insertelement <2 x float> poison, float %i.el, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv nsz <2 x float> %.sroa.0424.0, %i.eo
  %i.eq = fdiv nsz float %.sroa.14.0, %i.el
  %.sroa.0419.0 = select nsz i1 %i.em, <2 x float> %i.ep, <2 x float> zeroinitializer ; 2 uses
  %.sroa.8423.0 = select nsz i1 %i.em, float %i.eq, float 0.000000e+00 ; 2 uses
  %i.er = fmul nsz float %.sroa.8423.0, 1.600000e+02
  %i.es = fadd nsz float %.sroa.22.0.copyload.i, %i.er ; 2 uses
  %i.et = fcmp nsz ogt float %i.es, 0.000000e+00
  %i.eu = select nsz i1 %i.et, float 5.000000e+00, float -5.000000e+00
  %i.ev = fadd nsz float %i.es, %i.eu
  %i.ew = fdiv nsz float %i.ev, 1.000000e+01
  %i.ex = fptosi float %i.ew to i16               ; 2 uses
  %i.ey = fmul nsz <2 x float> %.sroa.0419.0, splat (float 1.600000e+02)
  %i.ez = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.ey ; 2 uses
  %i.fa = fcmp nsz ogt <2 x float> %i.ez, zeroinitializer
  %i.fb = select <2 x i1> %i.fa, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fc = fadd nsz <2 x float> %i.ez, %i.fb
  %i.fd = fdiv nsz <2 x float> %i.fc, splat (float 1.000000e+01)
  %i.fe = fptosi <2 x float> %i.fd to <2 x i16>   ; 2 uses
  %i.ff = sext <2 x i16> %i.fe to <2 x i32>       ; 2 uses
  %i.fg = add nsw <2 x i32> %i.ff, splat (i32 -15)
  %i.fh = icmp slt <2 x i16> %i.fe, zeroinitializer
  %i.fi = select <2 x i1> %i.fh, <2 x i32> %i.fg, <2 x i32> %i.ff
  %i.fj = sdiv <2 x i32> %i.fi, splat (i32 16)
  %i.fk = sext i16 %i.ex to i32                   ; 2 uses
  %i.fl = add nsw i32 %i.fk, -15
  %.not475476 = icmp slt i16 %i.ex, 0
  %i.fm = select i1 %.not475476, i32 %i.fl, i32 %i.fk
  %i.fn = sdiv i32 %i.fm, 16
  %i.fo = trunc nsw <2 x i32> %i.fj to <2 x i16>  ; 5 uses
  %.sroa.8.0.extract.trunc = trunc nsw i32 %i.fn to i16 ; 3 uses
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.dr, align 8, !tbaa !125
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !125
  %i.fp = call { <2 x float>, float } @_ZNK9PlayerSAO12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.dk) ; 2 uses
  %.fca.0.extract3.i = extractvalue { <2 x float>, float } %i.fp, 0
  %.fca.1.extract4.i = extractvalue { <2 x float>, float } %i.fp, 1
  %i.fq = fadd nsz <2 x float> %.sroa.01.0.copyload.i.i, %.fca.0.extract3.i ; 5 uses
  %i.fr = fadd nsz float %.sroa.22.0.copyload.i.i, %.fca.1.extract4.i ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 1140
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !299
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dk, i64 332
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !300
  %i.fw = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ft, i64 1
  %i.fy = fpext nsz <2 x float> %i.fx to <2 x double>
  %i.fz = fmul nsz <2 x double> %i.fy, splat (double f0x3F91DF46A2529D39)
  %i.ga = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.fz) ; 2 uses
  %i.gb = extractvalue { <2 x double>, <2 x double> } %i.ga, 0 ; 3 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 1
  %i.gd = extractvalue { <2 x double>, <2 x double> } %i.ga, 1 ; 3 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 1
  %i.gf = call nsz double @llvm.fmuladd.f64(double %i.gc, double 0.000000e+00, double %i.ge)
  %i.gg = fptrunc nsz double %i.gf to float
  %i.gh = extractelement <2 x double> %i.gb, i64 0 ; 2 uses
  %i.gi = fpext nsz float %i.gg to double         ; 2 uses
  %i.gj = fneg nsz double %i.gi
  %i.gk = fmul nsz double %i.gh, %i.gj
  %i.gl = fneg nsz <2 x double> %i.gb
  %i.gm = insertelement <2 x double> %i.gl, double %i.gk, i64 0
  %i.gn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> zeroinitializer, <2 x double> %i.gm)
  %i.go = fptrunc nsz <2 x double> %i.gn to <2 x float> ; 2 uses
  %i.gp = extractelement <2 x double> %i.gd, i64 0
  %i.gq = fmul nsz double %i.gp, %i.gi
  %i.gr = call nsz double @llvm.fmuladd.f64(double %i.gh, double 0.000000e+00, double %i.gq)
  %i.gs = fptrunc nsz double %i.gr to float       ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 1150
  %i.gu = load i8, ptr %i.gt, align 2, !tbaa !301, !range !166, !noundef !113
  %i.gv = trunc nuw i8 %i.gu to i1                ; 2 uses
  %i.gw = fneg nsz <2 x float> %i.go
  %i.gx = fneg nsz float %i.gs
  %.sroa.0384.0 = select nsz i1 %i.gv, <2 x float> %i.gw, <2 x float> %i.go ; 4 uses
  %.sroa.19.0 = select nsz i1 %i.gv, float %i.gx, float %i.gs ; 4 uses
  %i.gy = load i16, ptr %i.do, align 4, !tbaa !71 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !59
  %i.hb = fadd nsz float %3, %i.ha                ; 2 uses
  store float %i.hb, ptr %i.gz, align 4, !tbaa !59
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !72
  %i.he = fcmp nsz olt float %i.hb, %i.hd
  br i1 %i.he, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hf = uitofp nsz i16 %i.gy to float
  %i.hg = fmul nnan nsz float %i.hf, 3.300000e-01
  %i.hh = fptoui float %i.hg to i16
  %narrow = call i16 @llvm.umax.i16(i16 %i.hh, i16 1)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0175 = phi i16 [ %narrow, %bb.aa ], [ %i.gy, %bb.z ]
  %i.hi = load i64, ptr %i.dm, align 8, !tbaa !89
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dk, i64 960
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !302
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 692
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !303 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dk, i64 1148
  %i.hp = load i16, ptr %i.ho, align 4, !tbaa !304
  %i.hq = add i16 %i.hp, 1                        ; 2 uses
  %i.hr = icmp sgt i16 %i.hn, -1
  br i1 %i.hr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hs = sext i16 %i.hq to i32
  %i.ht = uitofp nneg i16 %i.hn to float
  %i.hu = fmul nnan nsz float %i.ht, 6.250000e-02
  %i.hv = call nsz noundef float @llvm.ceil.f32(float %i.hu)
  %i.hw = fptoui float %i.hv to i32
  %.sroa.speculated363 = call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.hs)
  %i.hx = trunc i32 %.sroa.speculated363 to i16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i16 [ %i.hx, %bb.ac ], [ %i.hq, %bb.ab ] ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dk, i64 1144
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !305 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 322 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !90
  %i.ic = extractelement <2 x i16> %i.fo, i64 0
  %i.id = icmp eq i16 %i.ib, %i.ic
  br i1 %i.id, label %bb.ae, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !91
  %i.ig = extractelement <2 x i16> %i.fo, i64 1
  %i.ih = icmp eq i16 %i.if, %i.ig
  br i1 %i.ih, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.ae
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 326
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !92
  %.not477 = icmp eq i16 %i.ij, %.sroa.8.0.extract.trunc
  br i1 %.not477, label %bb.af, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.ad, %bb.ae, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i16 0, ptr %i.ik, align 8, !tbaa !98
  store <2 x i16> %i.fo, ptr %i.ia, align 2, !tbaa !97
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 326
  store i16 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !97
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.sroa.0384.0.vec.extract394 = extractelement <2 x float> %.sroa.0384.0, i64 0 ; 2 uses
  %i.im = load float, ptr %i.il, align 8, !tbaa !306
  %.sroa.0384.4.vec.extract405 = extractelement <2 x float> %.sroa.0384.0, i64 1 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.io = load float, ptr %i.in, align 4, !tbaa !300
  %i.ip = fmul nsz float %.sroa.0384.4.vec.extract405, %i.io
  %i.iq = call nsz float @llvm.fmuladd.f32(float %.sroa.0384.0.vec.extract394, float %i.im, float %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !tbaa !307
  %i.it = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.19.0, float %i.is, float %i.iq)
  %i.iu = fmul nsz float %i.hz, 1.000000e-01
  %i.iv = call nsz noundef float @llvm.cos.f32(float %i.iu)
  %i.iw = fcmp nsz olt float %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br i1 %i.iw, label %bb.ag, label %._crit_edge529

._crit_edge529:                                   ; preds = %bb.af
  %.pre531 = load i16, ptr %i.ix, align 8, !tbaa !98
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i16 0, ptr %i.ix, align 8, !tbaa !98
  store <2 x float> %.sroa.0384.0, ptr %i.il, align 8, !tbaa !125
  store float %.sroa.19.0, ptr %i.ir, align 8, !tbaa !125
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !99
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge529, %bb.ag
  %i.iy = phi i16 [ %.pre531, %._crit_edge529 ], [ 0, %bb.ag ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ja = call nsz noundef float @_ZNK9PlayerSAO10getZoomFOVEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.dk)
  %i.jb = fcmp nsz olt float %i.ja, 1.000000e-03
  br i1 %i.jb, label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jc = call nsz noundef float @_ZNK9PlayerSAO10getZoomFOVEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.dk)
  %i.jd = fmul nsz float %i.jc, f0x3C8EFA35       ; 2 uses
  %i.je = fcmp nsz olt float %i.hz, %i.jd
  %.sroa.speculated356 = select i1 %i.je, float %i.jd, float %i.hz
  br label %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.ah, %bb.ai
  %i.jf = phi nsz float [ %.sroa.speculated356, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !73
  %i.ji = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jh, float noundef %i.jf)
  %.sroa.speculated351 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.ji) ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !74
  %i.jl = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jk, float noundef %i.jf)
  %.sroa.speculated346 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jn = load i16, ptr %i.jm, align 8, !tbaa !75
  %i.jo = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.jn, float noundef %i.jf)
  %.sroa.speculated341 = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jo) ; 2 uses
  %i.jp = sext i16 %.sroa.speculated351 to i32
  %i.jq = sitofp i16 %.sroa.speculated351 to float
  %i.jr = fmul nnan nsz float %i.jq, 1.000000e+01
  %i.js = fmul nnan nsz float %i.jr, 1.600000e+01 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !76
  %i.jv = call noundef signext i16 @_Z10adjustDistsf(i16 noundef signext %i.ju, float noundef %i.jf)
  %.sroa.speculated = call i16 @llvm.smin.i16(i16 %.0, i16 %i.jv)
  %i.jw = sext i16 %i.iy to i32                   ; 2 uses
  %i.jx = sext i16 %.sroa.speculated341 to i32
  %i.jy = shl nsw i32 %i.jx, 1
  %i.jz = icmp sgt i32 %i.jy, %i.jw
  %i.ka = select i1 %i.jz, i32 2, i32 0
  %i.kb = add nsw i32 %i.ka, %i.jw
  %spec.select478 = call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.jp)
  %spec.select = trunc nsw i32 %spec.select478 to i16 ; 2 uses
  %i.kc = fmul nsz float %.sroa.0424.4.vec.extract, %.sroa.0384.4.vec.extract405
  %i.kd = call nsz float @llvm.fmuladd.f32(float %.sroa.0384.0.vec.extract394, float %.sroa.0424.0.vec.extract, float %i.kc)
  %i.ke = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.19.0, float %.sroa.14.0, float %i.kd) ; 3 uses
  %i.kf = fcmp nsz olt float %i.ke, 0.000000e+00
  %i.kg = fcmp nsz ogt float %i.ke, 3.000000e+02
  %..i259 = select nsz i1 %i.kg, float 3.000000e+02, float %i.ke
  %i.kh = fdiv nsz float %..i259, 3.000000e+02
  %i.ki = fadd nsz float %i.kh, 1.000000e+00
  %i.kj = select i1 %i.kf, float 1.000000e+00, float %i.ki
  %i.kk = fdiv nsz float %i.hz, %i.kj
  %i.kl = fcmp nsz ogt <2 x float> %i.fq, zeroinitializer ; 2 uses
  %i.km = extractelement <2 x i1> %i.kl, i64 0
  %i.kn = select nsz i1 %i.km, float 5.000000e+00, float -5.000000e+00
  %i.ko = extractelement <2 x float> %i.fq, i64 0
  %i.kp = fadd nsz float %i.ko, %i.kn
  %i.kq = fdiv nsz float %i.kp, 1.000000e+01
  %i.kr = fptosi float %i.kq to i16
  %i.ks = fcmp nsz ogt float %i.fr, 0.000000e+00
  %i.kt = insertelement <2 x i1> %i.kl, i1 %i.ks, i64 0
  %i.ku = select <2 x i1> %i.kt, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.kv = insertelement <2 x float> %i.fq, float %i.fr, i64 0
  %i.kw = fadd nsz <2 x float> %i.kv, %i.ku
  %i.kx = fdiv nsz <2 x float> %i.kw, splat (float 1.000000e+01)
  %i.ky = fptosi <2 x float> %i.kx to <2 x i16>   ; 2 uses
  %i.kz = extractelement <2 x i16> %i.ky, i64 0
  %i.la = zext i16 %i.kz to i48
  %.sroa.3.0.insert.shift.i263 = shl nuw i48 %i.la, 32
  %i.lb = extractelement <2 x i16> %i.ky, i64 1
  %i.lc = zext i16 %i.lb to i48
  %.sroa.2.0.insert.shift.i265 = shl nuw nsw i48 %i.lc, 16
  %.sroa.2.0.insert.insert.i266 = or disjoint i48 %.sroa.2.0.insert.shift.i265, %.sroa.3.0.insert.shift.i263
  %.sroa.0.0.insert.ext.i267 = zext i16 %i.kr to i48
  %.sroa.0.0.insert.insert.i268 = or disjoint i48 %.sroa.2.0.insert.insert.i266, %.sroa.0.0.insert.ext.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store i16 %i.iy, ptr %i.k, align 2, !tbaa !97
  %.not212511 = icmp sgt i16 %i.iy, %spec.select
  br i1 %.not212511, label %.loopexit490.thread, label %.lr.ph516

.lr.ph516:                                        ; preds = %_Z8rangelimIfffET_RKS0_RKT0_RKT1_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 432
end_hunk_0
