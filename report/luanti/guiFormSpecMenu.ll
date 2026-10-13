Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiFormSpecMenu?download=true
inline.NumInlined: 8823
inline.NumDeleted: 2297
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i306: ; preds = %.lr.ph.i.i.i304
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !252
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307: ; preds = %.lr.ph.i.i.i304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i306
  %i.wn = getelementptr inbounds nuw i8, ptr %.05.i.i.i305, i64 32 ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %i.wn, %i.wh
  br i1 %.not.i.i.i308, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309, label %.lr.ph.i.i.i304, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i307
  %.pr.i310 = load ptr, ptr %10, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %i.wo = phi ptr [ %.pr.i310, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i309 ], [ %i.wf, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread ] ; 3 uses
  %.not.i.i1.i312 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i1.i312, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311
  %i.wp = load ptr, ptr %i.uc, align 8, !tbaa !308
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = ptrtoint ptr %i.wo to i64
  %i.ws = sub i64 %i.wq, %i.wr
  call void @_ZdlPvm(ptr noundef nonnull %i.wo, i64 noundef %i.ws) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i311, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %i.wg, label %bb.cl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge

bb.cl:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314
  %i.wt = add i32 %.6143595, 1                    ; 3 uses
  %i.wu = zext i32 %i.wt to i64                   ; 2 uses
  %i.wv = load ptr, ptr %i.ol, align 8, !tbaa !306
  %i.ww = load ptr, ptr %8, align 8, !tbaa !305   ; 2 uses
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = ashr exact i64 %i.wz, 5
  %i.xb = icmp ugt i64 %i.xa, %i.wu
  br i1 %i.xb, label %bb.ca, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge, !llvm.loop !982

bb.cm:                                            ; preds = %bb.cf, %bb.ce
  %.pn169 = phi { ptr, i32 } [ %i.vj, %bb.cf ], [ %i.vi, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.loopexit.split-lp517

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge: ; preds = %bb.cl, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge
  %i.xc = phi ptr [ %i.tz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ %i.tu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %i.tz, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ], [ %i.tz, %bb.cl ] ; 4 uses
  %.2136899 = phi i1 [ %.2136.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ true, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %.2136.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ], [ %.2136.ph, %bb.cl ]
  %.6143.lcssa = phi i32 [ %.5142.lcssa.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge ], [ %.5142.lcssa.ph894, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit._crit_edge.thread ], [ %i.wt, %bb.cl ], [ %.6143595, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314 ] ; 2 uses
  %i.xd = load i8, ptr %2, align 8, !tbaa !448, !range !309, !noundef !310
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.cn, label %bb.db

bb.cn:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 1998
  %i.xg = load i8, ptr %i.xf, align 2, !tbaa !281, !range !309, !noundef !310
  %i.xh = trunc nuw i8 %i.xg to i1
  br i1 %i.xh, label %bb.co, label %bb.cu

bb.co:                                            ; preds = %bb.cn
  %i.xi = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !569 ; 2 uses
  %.not.i315 = icmp eq ptr %i.xi, null
  br i1 %.not.i315, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !580 ; 3 uses
  %.not2.i = icmp eq ptr %i.xk, null
  br i1 %.not2.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #36
          to label %.noexc316 unwind label %bb.ct

.noexc316:                                        ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !72
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = invoke noundef ptr %i.xn(ptr noundef nonnull align 8 dereferenceable(8) %i.xk)
          to label %_ZN15RenderingEngine16get_video_driverEv.exit unwind label %bb.ct, !inline_history !983 ; 2 uses

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.cr
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !72
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 488
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = invoke noundef nonnull align 4 dereferenceable(8) ptr %i.xr(ptr noundef nonnull align 8 dereferenceable(8) %i.xo)
          to label %bb.cs unwind label %bb.ct     ; 2 uses

bb.cs:                                            ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !463 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !464 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !282 ; 2 uses
  %i.xy = sub i32 %i.xt, %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !283 ; 2 uses
  %i.yb = sub i32 %i.xv, %i.ya
  %i.yc = icmp ugt i32 %i.xv, %i.ya
  %i.yd = lshr i32 %i.yb, 1
  %.sroa.8.0 = select i1 %i.yc, i32 %i.yd, i32 0
  %i.ye = icmp ugt i32 %i.xt, %i.xx
  %i.yf = lshr i32 %i.xy, 1
  %.sroa.046.0 = select i1 %i.ye, i32 %i.yf, i32 0
  %.sroa.4461.0.insert.ext = zext nneg i32 %.sroa.8.0 to i64
  %.sroa.4461.0.insert.shift = shl nuw nsw i64 %.sroa.4461.0.insert.ext, 32
  %.sroa.0460.0.insert.ext = zext nneg i32 %.sroa.046.0 to i64
  %.sroa.0460.0.insert.insert = or disjoint i64 %.sroa.4461.0.insert.shift, %.sroa.0460.0.insert.ext
  store i64 %.sroa.0460.0.insert.insert, ptr %i.fm, align 8, !tbaa !387
  %i.yg = load i64, ptr %i.xw, align 8, !tbaa !387
  store i64 %i.yg, ptr %i.fg, align 4, !tbaa !387
  br label %bb.cv

bb.ct:                                            ; preds = %bb.cr, %bb.cq, %_ZN15RenderingEngine16get_video_driverEv.exit
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

bb.cu:                                            ; preds = %bb.cn
  store i64 0, ptr %i.fm, align 8, !tbaa !387
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %i.yi = invoke noundef double @_ZN15GUIFormSpecMenu16calculateImgsizeERKNS_10parserDataE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
          to label %bb.cw unwind label %bb.cy     ; 4 uses

bb.cw:                                            ; preds = %bb.cv
  %i.yj = fptosi double %i.yi to i32
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %.sroa.4457.0.insert.ext = zext i32 %i.yj to i64
  %.sroa.0456.0.insert.insert = mul nuw i64 %.sroa.4457.0.insert.ext, 4294967297
  store i64 %.sroa.0456.0.insert.insert, ptr %i.yk, align 8, !tbaa !387
  %i.yl = fmul nsz double %i.yi, 5.000000e+00
  %i.ym = fmul nsz double %i.yi, 1.500000e+01
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.yo = fmul nsz double %i.yl, 2.500000e-01
  %i.yp = fdiv nsz double %i.ym, 1.300000e+01     ; 2 uses
  %i.yq = insertelement <2 x double> poison, double %i.yo, i64 0
  %i.yr = insertelement <2 x double> %i.yq, double %i.yp, i64 1
  %i.ys = fptrunc <2 x double> %i.yr to <2 x float>
  store <2 x float> %i.ys, ptr %i.yn, align 8, !tbaa !388
  %i.yt = fmul nsz double %i.yi, 3.000000e+00
  %i.yu = fmul nsz double %i.yt, 1.250000e-01
  %i.yv = fptosi double %i.yu to i32
  %.sroa.4452.0.insert.ext = zext i32 %i.yv to i64
  %.sroa.0451.0.insert.insert = mul nuw i64 %.sroa.4452.0.insert.ext, 4294967297
  store i64 %.sroa.0451.0.insert.insert, ptr %i.fl, align 8, !tbaa !387
  %i.yw = fmul nsz double %i.yp, 3.500000e-01
  %i.yx = fptosi double %i.yw to i32
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  store i32 %i.yx, ptr %i.yy, align 8, !tbaa !509
  %i.yz = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1324
  %i.zb = load i16, ptr %i.za, align 4
  %i.zc = zext i16 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, 40
  %.sroa.0.0.insert.insert.i318 = or disjoint i64 %i.zd, 72057615512764415
  %i.ze = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.yz, i64 %.sroa.0.0.insert.insert.i318)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %bb.cy

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.cw
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 2224
  store ptr %i.ze, ptr %i.zf, align 8, !tbaa !292
  %i.zg = load i8, ptr %i.xc, align 1, !tbaa !480, !range !309, !noundef !310
  %i.zh = trunc nuw i8 %i.zg to i1
  br i1 %i.zh, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.zi = load <2 x float>, ptr %i.j, align 4, !tbaa !388
  %i.zj = load <2 x i32>, ptr %i.yk, align 8, !tbaa !387
  %i.zk = sitofp <2 x i32> %i.zj to <2 x float>
  %i.zl = fmul nsz <2 x float> %i.zi, %i.zk
  %i.zm = fptosi <2 x float> %i.zl to <2 x i32>
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

bb.cz:                                            ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.zo = load i32, ptr %i.yk, align 8, !tbaa !391
  %i.zp = sitofp nsz i32 %i.zo to double
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !393
  %i.zs = load i32, ptr %i.yy, align 8, !tbaa !509
  %i.zt = sitofp nsz i32 %i.zs to double
  %i.zu = fmul nnan nsz double %i.zt, 2.000000e+00
  %i.zv = fdiv nsz double %i.zu, 3.000000e+00
  %i.zw = load <2 x i32>, ptr %i.fl, align 8, !tbaa !387
  %i.zx = shl nsw <2 x i32> %i.zw, splat (i32 1)
  %i.zy = load <2 x float>, ptr %i.yn, align 8, !tbaa !388
  %14 = fpext <2 x float> %i.zy to <2 x double>
  %i.zz = load <2 x float>, ptr %i.j, align 4, !tbaa !388
  %i.aaa = fpext <2 x float> %i.zz to <2 x double>
  %i.aab = fadd nsz <2 x double> %i.aaa, splat (double -1.000000e+00)
  %i.aac = sitofp <2 x i32> %i.zx to <2 x double>
  %i.aad = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.aab, <2 x double> %i.aac) ; 2 uses
  %i.aae = sitofp nsz i32 %i.zr to double
  %i.aaf = extractelement <2 x double> %i.aad, i64 1
  %i.aag = fadd nsz double %i.aaf, %i.aae
  %i.aah = insertelement <2 x double> %i.aad, double %i.aag, i64 1
  %i.aai = insertelement <2 x double> poison, double %i.zp, i64 0
  %i.aaj = insertelement <2 x double> %i.aai, double %i.zv, i64 1
  %i.aak = fadd nsz <2 x double> %i.aah, %i.aaj
  %i.aal = fptosi <2 x double> %i.aak to <2 x i32>
  br label %bb.da

bb.da:                                            ; preds = %bb.cx, %bb.cz
  %i.aam = phi <2 x i32> [ %i.zm, %bb.cx ], [ %i.aal, %bb.cz ] ; 2 uses
  store <2 x i32> %i.aam, ptr %i.ff, align 4, !tbaa !387
  %i.aan = sitofp <2 x i32> %i.aam to <2 x float> ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.aap = load <2 x i32>, ptr %i.fg, align 4, !tbaa !387
  %i.aaq = uitofp <2 x i32> %i.aap to <2 x float>
  %i.aar = load <2 x float>, ptr %i.fh, align 4, !tbaa !388
  %i.aas = fmul nsz <2 x float> %i.aar, %i.aaq
  %i.aat = fptosi <2 x float> %i.aas to <2 x i32>
  %i.aau = load <2 x float>, ptr %i.fi, align 4, !tbaa !388 ; 2 uses
  %i.aav = fmul nsz <2 x float> %i.aau, %i.aan
  %i.aaw = fptosi <2 x float> %i.aav to <2 x i32>
  %i.aax = load <2 x i32>, ptr %i.fm, align 8, !tbaa !387
  %i.aay = add <2 x i32> %i.aax, %i.aat
  %i.aaz = shufflevector <2 x i32> %i.aay, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aba = fpext <2 x float> %i.aau to <2 x double>
  %i.abb = fsub nsz <2 x double> splat (double 1.000000e+00), %i.aba
  %i.abc = fpext nnan ninf <2 x float> %i.aan to <2 x double>
  %i.abd = fmul nsz <2 x double> %i.abb, %i.abc
  %i.abe = fptosi <2 x double> %i.abd to <2 x i32>
  %i.abf = shufflevector <2 x i32> %i.aaw, <2 x i32> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.abg = sub <4 x i32> %i.aaz, %i.abf
  %i.abh = add <4 x i32> %i.aaz, %i.abf
  %i.abi = shufflevector <4 x i32> %i.abg, <4 x i32> %i.abh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.abi, ptr %i.aao, align 4, !tbaa !387
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abj, ptr noundef nonnull align 4 dereferenceable(16) %i.aao, i64 16, i1 false), !tbaa.struct !462
  br label %bb.de

bb.db:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit314._crit_edge
  %i.abk = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 1324
  %i.abm = load i16, ptr %i.abl, align 4
  %i.abn = zext i16 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 40
  %.sroa.0.0.insert.insert.i322 = or disjoint i64 %i.abo, 72057615512764415
  %i.abp = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.abk, i64 %.sroa.0.0.insert.insert.i322)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit324 unwind label %bb.dd ; 5 uses

_ZN10FontEngine7getFontEj8FontMode.exit324:       ; preds = %bb.db
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 2224
  store ptr %i.abp, ptr %i.abq, align 8, !tbaa !292
  %i.abr = load ptr, ptr %i.abp, align 8, !tbaa !72
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = invoke i64 %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull @.str.194)
          to label %.noexc325 unwind label %bb.dd, !inline_history !35

.noexc325:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit324
  %i.abv = load ptr, ptr %i.abp, align 8, !tbaa !72
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = invoke i64 %i.abx(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, i32 noundef signext 65, i32 noundef signext 0)
          to label %bb.dc unwind label %bb.dd, !inline_history !35

bb.dc:                                            ; preds = %.noexc325
  %.sroa.32.0.extract.shift.i = lshr i64 %i.abu, 32
  %.sroa.32.0.extract.trunc.i = trunc nuw i64 %.sroa.32.0.extract.shift.i to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %i.aby, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.abz = add i32 %.sroa.3.0.extract.trunc.i, %.sroa.32.0.extract.trunc.i
  %i.aca = uitofp nsz i32 %i.abz to double
  %i.acb = fmul nnan nsz double %i.aca, 8.750000e-01
  %i.acc = fptosi double %i.acb to i32
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store i32 %i.acc, ptr %i.acd, align 8, !tbaa !509
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.acf = load <2 x i32>, ptr %i.fg, align 4, !tbaa !387
  %i.acg = uitofp <2 x i32> %i.acf to <2 x float>
  %i.ach = load <2 x float>, ptr %i.fh, align 4, !tbaa !388
  %i.aci = fmul nsz <2 x float> %i.ach, %i.acg
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ack = fptosi <4 x float> %i.acj to <4 x i32> ; 2 uses
  %i.acl = load <2 x float>, ptr %i.fi, align 4, !tbaa !388
  %i.acm = fpext <2 x float> %i.acl to <2 x double> ; 2 uses
  %i.acn = fsub nsz <2 x double> splat (double 1.000000e+00), %i.acm
  %i.aco = shufflevector <2 x double> %i.acm, <2 x double> %i.acn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acp = fmul nsz <4 x double> %i.aco, <double 5.800000e+02, double 3.000000e+02, double 5.800000e+02, double 3.000000e+02>
  %i.acq = fptosi <4 x double> %i.acp to <4 x i32> ; 2 uses
  %i.acr = sub nsw <4 x i32> %i.ack, %i.acq
  %i.acs = add nsw <4 x i32> %i.ack, %i.acq
  %i.act = shufflevector <4 x i32> %i.acr, <4 x i32> %i.acs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.act, ptr %i.ace, align 8, !tbaa !387
  br label %bb.de

bb.dd:                                            ; preds = %.noexc325, %_ZN10FontEngine7getFontEj8FontMode.exit324, %bb.db, %bb.df, %bb.de
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

bb.de:                                            ; preds = %bb.dc, %bb.da
  invoke void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
          to label %bb.df unwind label %bb.dd

bb.df:                                            ; preds = %bb.de
  %i.acv = load <2 x i32>, ptr %i.fl, align 8, !tbaa !387
  %i.acw = load <2 x i32>, ptr %i.fm, align 8, !tbaa !387
  %i.acx = add nsw <2 x i32> %i.acw, %i.acv
  %i.acy = load <2 x i32>, ptr %i.fn, align 8, !tbaa !387
  %i.acz = add nsw <2 x i32> %i.acx, %i.acy
  store <2 x i32> %i.acz, ptr %i.ft, align 4, !tbaa !387
  %i.ada = load ptr, ptr %i.mz, align 8, !tbaa !276 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !292
  %i.add = load ptr, ptr %i.ada, align 8, !tbaa !72
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 280
  %i.adf = load ptr, ptr %i.ade, align 8
  invoke void %i.adf(ptr noundef nonnull align 8 dereferenceable(308) %i.ada, ptr noundef %i.adc)
          to label %bb.dg unwind label %bb.dd

bb.dg:                                            ; preds = %bb.df
  %i.adg = load ptr, ptr %i.mw, align 8, !tbaa !380 ; 2 uses
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !72
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 96
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = invoke noundef ptr %i.adj(ptr noundef nonnull align 8 dereferenceable(8) %i.adg)
          to label %bb.dh unwind label %bb.dk     ; 7 uses

bb.dh:                                            ; preds = %bb.dg
  %.not175 = icmp eq ptr %i.adk, null
  br i1 %.not175, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.65, i32 noundef 3236, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15GUIFormSpecMenu13regenerateGuiEN4core8vector2dIjEE) #36
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  unreachable

bb.dk:                                            ; preds = %bb.di, %bb.dg
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

bb.dl:                                            ; preds = %bb.dh
  %i.adm = load ptr, ptr %i.adk, align 8, !tbaa !72
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 64
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = invoke noundef ptr %i.ado(ptr noundef nonnull align 8 dereferenceable(8) %i.adk, i32 noundef 0)
          to label %bb.dm unwind label %bb.du

bb.dm:                                            ; preds = %bb.dl
  %i.adq = load ptr, ptr %i.adb, align 8, !tbaa !292
  %i.adr = load ptr, ptr %i.adk, align 8, !tbaa !72
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 72
  %i.adt = load ptr, ptr %i.ads, align 8
  invoke void %i.adt(ptr noundef nonnull align 8 dereferenceable(8) %i.adk, ptr noundef %i.adq, i32 noundef 0)
          to label %bb.dn unwind label %bb.du

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store <4 x i32> <i32 0, i32 0, i32 100000, i32 100000>, ptr %11, align 16, !tbaa !387
  %i.adu = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.adv = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #35
          to label %bb.do unwind label %bb.dv     ; 3 uses

bb.do:                                            ; preds = %bb.dn
  %i.adw = load ptr, ptr %i.mw, align 8, !tbaa !380
  invoke void @_ZN3gui11IGUIElementC1ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %i.adv, i32 noundef 15, ptr noundef %i.adw, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.dp unwind label %bb.dw

bb.dp:                                            ; preds = %bb.do
  %i.adx = load ptr, ptr %i.adu, align 8, !tbaa !512 ; 3 uses
  %.not.i331 = icmp eq ptr %i.adx, null
  br i1 %.not.i331, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !72
  %i.adz = getelementptr i8, ptr %i.ady, i64 -24
  %i.aea = load i64, ptr %i.adz, align 8
  %i.aeb = getelementptr inbounds i8, ptr %i.adx, i64 %i.aea ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8 ; 2 uses
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !349
  %i.aee = add nsw i32 %i.aed, -1                 ; 2 uses
  store i32 %i.aee, ptr %i.aec, align 8, !tbaa !349
  %.not.i.i332 = icmp eq i32 %i.aee, 0
  br i1 %.not.i.i332, label %bb.dr, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

bb.dr:                                            ; preds = %bb.dq
  %i.aef = load ptr, ptr %i.aeb, align 8, !tbaa !72
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8
  call void %i.aeh(ptr noundef nonnull align 8 dereferenceable(12) %i.aeb) #32, !inline_history !984
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit: ; preds = %bb.dp, %bb.dq, %bb.dr
  store ptr %i.adv, ptr %i.adu, align 8, !tbaa !512
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 616
end_hunk_0
