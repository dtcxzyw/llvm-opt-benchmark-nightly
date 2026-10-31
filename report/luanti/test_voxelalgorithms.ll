Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_voxelalgorithms?download=true
inline.NumInlined: 627
inline.NumDeleted: 310
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN19TestVoxelAlgorithms21testVoxelLineIteratorEv:bb.a
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.068 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dp = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !18
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.068, label %bb.ac, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.068, label %bb.ac, label %bb.bt

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn339 = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.dl) #23
  br label %bb.bt

bb.ad:                                            ; preds = %bb.x
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.cf, align 4, !tbaa !83 ; 2 uses
  %.sroa.228.0.copyload = load float, ptr %i.cg, align 4, !tbaa !83
  %.sroa.09.0.vec.extract.i113 = extractelement <2 x float> %.sroa.027.0.copyload, i64 0 ; 2 uses
  %i.du = fcmp nsz ogt float %.sroa.09.0.vec.extract.i113, 0.000000e+00
  %i.dv = select nsz i1 %i.du, float 5.000000e-01, float -5.000000e-01
  %i.dw = fadd nsz float %.sroa.09.0.vec.extract.i113, %i.dv
  %i.dx = fptosi float %i.dw to i16               ; 2 uses
  %i.dy = insertelement <2 x float> %.sroa.027.0.copyload, float %.sroa.228.0.copyload, i64 0 ; 2 uses
  %i.dz = fcmp nsz ogt <2 x float> %i.dy, zeroinitializer
  %i.ea = select <2 x i1> %i.dz, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.eb = fadd nsz <2 x float> %i.dy, %i.ea
  %i.ec = fptosi <2 x float> %i.eb to <2 x i16>   ; 2 uses
  %i.ed = extractelement <2 x i16> %i.dc, i64 0   ; 2 uses
  %i.ee = sub i16 %i.dx, %i.ed
  %i.ef = insertelement <2 x i16> %i.dc, i16 %i.de, i64 0
  %i.eg = sub <2 x i16> %i.ec, %i.ef
  %i.eh = call i16 @llvm.abs.i16(i16 %i.ee, i1 false)
  %i.ei = zext i16 %i.eh to i32
  %i.ej = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.eg, i1 false) ; 2 uses
  %i.ek = extractelement <2 x i16> %i.ej, i64 1
  %i.el = zext i16 %i.ek to i32
  %i.em = add nuw nsw i32 %i.ei, %i.el
  %i.en = extractelement <2 x i16> %i.ej, i64 0
  %i.eo = zext i16 %i.en to i32
  %i.ep = add nuw nsw i32 %i.em, %i.eo            ; 2 uses
  %i.eq = load i16, ptr %i.cl, align 4, !tbaa !89
  %i.er = load i16, ptr %i.cm, align 4, !tbaa !90
  %i.es = icmp slt i16 %i.eq, %i.er
  br i1 %i.es, label %.lr.ph574.preheader, label %._crit_edge575

.lr.ph574.preheader:                              ; preds = %bb.ad
  %i.et = shufflevector <2 x i16> %i.dc, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %i.eu = insertelement <2 x i16> %i.et, i16 %i.de, i64 1
  br label %.lr.ph574

bb.ae:                                            ; preds = %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit
  %i.ev = load i16, ptr %i.cl, align 4, !tbaa !89
  %i.ew = load i16, ptr %i.cm, align 4, !tbaa !90
  %i.ex = icmp slt i16 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph574, label %._crit_edge575.loopexit, !llvm.loop !78

.lr.ph574:                                        ; preds = %.lr.ph574.preheader, %bb.ae
  %.072572 = phi i32 [ %i.ez, %bb.ae ], [ 0, %.lr.ph574.preheader ]
  %.sroa.0246.0571 = phi i16 [ %.sroa.0238.0.copyload, %bb.ae ], [ %i.ed, %.lr.ph574.preheader ]
  %i.ey = phi <2 x i16> [ %i.fc, %bb.ae ], [ %i.eu, %.lr.ph574.preheader ]
  invoke void @_ZN7voxalgo17VoxelLineIterator4nextEv(ptr noundef nonnull align 4 dereferenceable(70) %2)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %.lr.ph574
  %i.ez = add nuw nsw i32 %.072572, 1             ; 2 uses
  %.sroa.0238.0.copyload = load i16, ptr %i.ci, align 2, !tbaa !30 ; 2 uses
  %i.fa = sub i16 %.sroa.0238.0.copyload, %.sroa.0246.0571 ; 2 uses
  %i.fb = mul i16 %i.fa, %i.fa
  %i.fc = load <2 x i16>, ptr %i.cj, align 4, !tbaa !30 ; 2 uses
  %i.fd = sub <2 x i16> %i.fc, %i.ey              ; 2 uses
  %i.fe = mul <2 x i16> %i.fd, %i.fd              ; 2 uses
  %i.ff = extractelement <2 x i16> %i.fe, i64 0
  %i.fg = add i16 %i.ff, %i.fb
  %i.fh = extractelement <2 x i16> %i.fe, i64 1
  %i.fi = add i16 %i.fg, %i.fh                    ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 1
  br i1 %i.fj, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.4, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ah
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.am, !inline_history !0 ; 2 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.fn = sitofp i16 %i.fi to double
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, double noundef %i.fn)
          to label %_ZNSolsEf.exit unwind label %bb.am ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSolsEPFRSoS_E.exit142 unwind label %bb.am, !inline_history !0 ; 2 uses

_ZNSolsEPFRSoS_E.exit142:                         ; preds = %_ZNSolsEf.exit
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %_ZNSolsEPFRSoS_E.exit142
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, double noundef 1.000000e+00)
          to label %_ZNSolsEf.exit146 unwind label %bb.am ; 0 uses

_ZNSolsEf.exit146:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  %i.fs = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread

bb.ai:                                            ; preds = %_ZNSolsEf.exit146
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.fs, ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.3, i32 noundef 71)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.bw unwind label %bb.an

bb.ak:                                            ; preds = %.lr.ph574
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.al:                                            ; preds = %bb.ag
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %_ZNSolsEPFRSoS_E.exit142, %_ZNSolsEf.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit139, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ah
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %_ZNSolsEf.exit146
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %.070 = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fy = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.an
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !18
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #22
  br i1 %.070, label %bb.ao, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.an
  br i1 %.070, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn83342 = phi { ptr, i32 } [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ]
  call void @__cxa_free_exception(ptr %i.fs) #23
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.ao, %bb.am
  %.pn83.pn = phi { ptr, i32 } [ %.pn83342, %bb.ao ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.fv, %bb.am ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %bb.ap ], [ %i.fu, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bt

bb.ar:                                            ; preds = %bb.af
  %.sroa.015.0.copyload = load i48, ptr %i.ci, align 2 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.015.0.copyload to i16
  %i.gd = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float ; 2 uses
  %i.ge = bitcast i48 %.sroa.015.0.copyload to <3 x i16> ; 2 uses
  %i.gf = shufflevector <3 x i16> %i.ge, <3 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.gg = sitofp <2 x i16> %i.gf to <2 x float>   ; 2 uses
  %i.gh = fadd nsz float %i.gd, -5.000100e-01     ; 2 uses
  %i.gi = fadd nsz <2 x float> %i.gg, splat (float -5.000100e-01) ; 3 uses
  %i.gj = fadd nsz float %i.gd, 5.000100e-01      ; 2 uses
  %i.gk = fadd nsz <2 x float> %i.gg, splat (float 5.000100e-01) ; 3 uses
  %i.gl = load float, ptr %i.ch, align 8, !tbaa !82 ; 3 uses
  %i.gm = load float, ptr %i.cg, align 4, !tbaa !82 ; 3 uses
  %i.gn = fadd nsz float %i.gl, %i.gm
  %i.go = load <2 x float>, ptr %1, align 8, !tbaa !83 ; 4 uses
  %i.gp = load <2 x float>, ptr %i.cf, align 4, !tbaa !83 ; 4 uses
  %i.gq = fadd nsz <2 x float> %i.go, %i.gp
  %i.gr = fsub nsz <2 x float> %i.gp, %i.go       ; 5 uses
  %i.gs = fsub nsz float %i.gm, %i.gl             ; 4 uses
  %i.gt = shufflevector <2 x float> %i.gq, <2 x float> %i.gr, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.gu = insertelement <4 x float> %i.gt, float %i.gn, i64 0
  %i.gv = shufflevector <2 x float> %i.gr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.gx = fmul nsz <4 x float> %i.gu, %i.gw       ; 4 uses
  %i.gy = extractelement <2 x float> %i.gr, i64 0 ; 2 uses
  %i.gz = extractelement <4 x float> %i.gx, i64 3
  %i.ha = call nsz float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %i.gz)
  %i.hb = call nsz float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.ha) ; 2 uses
  %i.hc = fcmp nsz oeq float %i.hb, 0.000000e+00
  br i1 %i.hc, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hd = fpext nsz float %i.hb to double
  %i.he = call nsz double @llvm.sqrt.f64(double %i.hd)
  %i.hf = fdiv nsz double 1.000000e+00, %i.he     ; 2 uses
  %i.hg = fpext <2 x float> %i.gr to <2 x double>
  %i.hh = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x double> %i.hi, %i.hg
  %i.hk = fptrunc <2 x double> %i.hj to <2 x float>
  %i.hl = fpext nsz float %i.gs to double
  %i.hm = fmul nsz double %i.hf, %i.hl
  %i.hn = fptrunc nsz double %i.hm to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.as, %bb.ar
  %.sroa.7334.0 = phi nsz float [ %i.gs, %bb.ar ], [ %i.hn, %bb.as ] ; 3 uses
  %.sroa.0331.0 = phi nsz <2 x float> [ %i.gr, %bb.ar ], [ %i.hk, %bb.as ] ; 5 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.go, %i.gp
  %i.ho = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop580 = fsub nsz <2 x float> %i.go, %i.gp ; 2 uses
  %i.hp = fsub nsz float %i.gl, %i.gm             ; 2 uses
  %foldExtExtBinop582 = fmul nsz <2 x float> %foldExtExtBinop580, %foldExtExtBinop580
  %i.hq = extractelement <2 x float> %foldExtExtBinop582, i64 1
  %i.hr = call nsz float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.hq)
  %i.hs = call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hr)
  %i.ht = call nsz noundef float @llvm.sqrt.f32(float %i.hs)
  %i.hu = fmul nsz float %i.ht, 5.000000e-01
  %i.hv = fsub nsz float %i.gj, %i.gh
  %i.hw = fsub nsz <2 x float> %i.gk, %i.gi       ; 2 uses
  %i.hx = fmul nsz float %i.hv, 5.000000e-01      ; 3 uses
  %i.hy = fadd nsz float %i.gj, %i.gh
  %foldExtExtBinop584 = fadd nsz <2 x float> %i.gk, %i.gi
  %i.hz = extractelement <2 x float> %foldExtExtBinop584, i64 0
  %foldExtExtBinop586 = fadd nsz <2 x float> %i.gk, %i.gi
  %i.ia = extractelement <2 x float> %foldExtExtBinop586, i64 1
  %i.ib = fmul nsz float %i.hy, 5.000000e-01
  %i.ic = fmul nsz float %i.hz, 5.000000e-01
  %i.id = fmul nsz float %i.ia, 5.000000e-01
  %i.ie = extractelement <2 x float> %i.hw, i64 0
  %i.if = fmul nsz float %i.ie, 5.000000e-01      ; 2 uses
  %i.ig = extractelement <4 x float> %i.gx, i64 1
  %i.ih = fsub nsz float %i.ib, %i.ig             ; 3 uses
  %i.ii = extractelement <2 x float> %i.hw, i64 1
  %i.ij = fmul nsz float %i.ii, 5.000000e-01      ; 3 uses
  %i.ik = extractelement <4 x float> %i.gx, i64 2
  %i.il = fsub nsz float %i.ic, %i.ik             ; 2 uses
  %i.im = extractelement <4 x float> %i.gx, i64 0
  %i.in = fsub nsz float %i.id, %i.im             ; 3 uses
  %i.io = call nsz float @llvm.fabs.f32(float %i.ih)
  %i.ip = fpext float %i.io to double
  %i.iq = fpext nsz float %i.hx to double
  %i.ir = fpext nsz float %i.hu to double         ; 3 uses
  %.sroa.0331.0.vec.extract = extractelement <2 x float> %.sroa.0331.0, i64 0 ; 2 uses
  %i.is = call nsz float @llvm.fabs.f32(float %.sroa.0331.0.vec.extract) ; 3 uses
  %i.it = fpext float %i.is to double
  %i.iu = call nsz double @llvm.fmuladd.f64(double %i.ir, double %i.it, double %i.iq)
  %i.iv = fcmp nsz olt double %i.iu, %i.ip
  br i1 %i.iv, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %i.iw = call nsz float @llvm.fabs.f32(float %i.il)
  %i.ix = fpext float %i.iw to double
  %i.iy = fpext nsz float %i.if to double
  %.sroa.0331.4.vec.extract = extractelement <2 x float> %.sroa.0331.0, i64 1
  %i.iz = call nsz float @llvm.fabs.f32(float %.sroa.0331.4.vec.extract) ; 3 uses
  %i.ja = fpext float %i.iz to double
  %i.jb = call nsz double @llvm.fmuladd.f64(double %i.ir, double %i.ja, double %i.iy)
  %i.jc = fcmp nsz olt double %i.jb, %i.ix
  br i1 %i.jc, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jd = call nsz float @llvm.fabs.f32(float %i.in)
  %i.je = fpext float %i.jd to double
  %i.jf = fpext nsz float %i.ij to double
  %i.jg = call nsz float @llvm.fabs.f32(float %.sroa.7334.0) ; 3 uses
  %i.jh = fpext float %i.jg to double
  %i.ji = call nsz double @llvm.fmuladd.f64(double %i.ir, double %i.jh, double %i.jf)
  %i.jj = fcmp nsz olt double %i.ji, %i.je
  br i1 %i.jj, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jk = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.jl = insertelement <2 x float> %i.jk, float %i.in, i64 1
  %i.jm = fneg nsz <2 x float> %.sroa.0331.0
  %i.jn = insertelement <2 x float> %i.jm, float %i.iz, i64 0
  %i.jo = fmul nsz <2 x float> %i.jl, %i.jn
  %i.jp = insertelement <2 x float> poison, float %i.if, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.il, i64 1 ; 2 uses
  %i.jr = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %.sroa.7334.0, i64 1
  %i.jt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.js, <2 x float> %i.jo) ; 2 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 1
  %i.jv = call nsz float @llvm.fabs.f32(float %i.ju)
  %i.jw = extractelement <2 x float> %i.jt, i64 0
  %i.jx = fcmp nsz ogt float %i.jv, %i.jw
  br i1 %i.jx, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jy = fmul nsz float %i.ij, %i.is
  %i.jz = call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.jg, float %i.jy)
  %i.ka = fneg nsz float %.sroa.7334.0
  %i.kb = fmul nsz float %i.ih, %i.ka
  %i.kc = call nsz float @llvm.fmuladd.f32(float %i.in, float %.sroa.0331.0.vec.extract, float %i.kb)
  %i.kd = call nsz float @llvm.fabs.f32(float %i.kc)
  %i.ke = fcmp nsz ogt float %i.kd, %i.jz
  br i1 %i.ke, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit

_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit: ; preds = %bb.aw
  %i.kf = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kg = fneg nsz <2 x float> %.sroa.0331.0
  %i.kh = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 0, i32 2>
  %i.ki = fmul nsz <2 x float> %i.jq, %i.kh
  %i.kj = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.ih, i64 1
  %i.kl = insertelement <2 x float> %.sroa.0331.0, float %i.iz, i64 0
  %i.km = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.kl, <2 x float> %i.ki) ; 2 uses
  %i.kn = extractelement <2 x float> %i.km, i64 1
  %i.ko = call nsz float @llvm.fabs.f32(float %i.kn)
  %i.kp = extractelement <2 x float> %i.km, i64 0
  %i.kq = fcmp nsz ule float %i.ko, %i.kp
  br i1 %i.kq, label %bb.ae, label %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread, !llvm.loop !78

_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread: ; preds = %bb.av, %bb.aw, %bb.at, %bb.au, %_ZN4core8vector3dIfE9normalizeEv.exit.i, %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit
  %i.kr = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread

bb.ax:                                            ; preds = %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.kr, ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.3, i32 noundef 77)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.kr, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.bw unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread: ; preds = %_ZNK4core8aabbox3dIfE18intersectsWithLineERKNS_6line3dIfEE.exit.thread
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.044 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ku = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.az
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !18
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.044, label %bb.ba, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.044, label %bb.ba, label %bb.bt

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %.pn90346 = phi { ptr, i32 } [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.thread ], [ %i.kt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ]
  call void @__cxa_free_exception(ptr %i.kr) #23
  br label %bb.bt

._crit_edge575.loopexit:                          ; preds = %bb.ae
  %.sroa.3.0.extract.shift.i.le = lshr i48 %.sroa.015.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.le = trunc nuw i48 %.sroa.3.0.extract.shift.i.le to i16
  %i.kz = shufflevector <3 x i16> %i.ge, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  br label %._crit_edge575

._crit_edge575:                                   ; preds = %._crit_edge575.loopexit, %bb.ad
  %.lcssa546 = phi i16 [ %i.de, %bb.ad ], [ %.sroa.3.0.extract.trunc.i.le, %._crit_edge575.loopexit ]
  %.072.lcssa = phi i32 [ 0, %bb.ad ], [ %i.ez, %._crit_edge575.loopexit ] ; 2 uses
  %i.la = phi <2 x i16> [ %i.dc, %bb.ad ], [ %i.kz, %._crit_edge575.loopexit ] ; 2 uses
  %i.lb = extractelement <2 x i16> %i.la, i64 0
  %i.lc = icmp eq i16 %i.lb, %i.dx
  %i.ld = insertelement <2 x i16> %i.la, i16 %.lcssa546, i64 0
  %i.le = icmp eq <2 x i16> %i.ld, %i.ec          ; 2 uses
  %i.lf = extractelement <2 x i1> %i.le, i64 1
  %or.cond359 = select i1 %i.lc, i1 %i.lf, i1 false
  %i.lg = extractelement <2 x i1> %i.le, i64 0
  %or.cond361 = select i1 %or.cond359, i1 %i.lg, i1 false
  br i1 %or.cond361, label %bb.bf, label %_ZNK4core8vector3dIsEeqERKS1_.exit158.thread

_ZNK4core8vector3dIsEeqERKS1_.exit158.thread:     ; preds = %._crit_edge575
  %i.lh = call ptr @__cxa_allocate_exception(i64 72) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.thread

bb.bb:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit158.thread
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.lh, ptr noundef nonnull align 8 %10, ptr noundef nonnull @.str.3, i32 noundef 83)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_throw(ptr nonnull %i.lh, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #25
          to label %bb.bw unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.thread: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit158.thread
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.042 = phi i1 [ false, %bb.bc ], [ true, %bb.bb ] ; 2 uses
end_hunk_0
