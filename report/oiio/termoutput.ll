inline.NumInlined: 3127
inline.NumDeleted: 880
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.si = load ptr, ptr %55, align 8, !tbaa !32   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.pv
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %.body419
  %i.sk = load i64, ptr %i.pv, align 8, !tbaa !33
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %.body419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425, %bb.ds
  %.pn196 = phi { ptr, i32 } [ %i.sg, %bb.ds ], [ %eh.lpad-body420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425 ], [ %eh.lpad-body420, %.body419 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  br label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %bb.dr
  %.pn196.pn = phi { ptr, i32 } [ %.pn196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %i.sf, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %bb.fj

.noexc238:                                        ; preds = %._crit_edge754
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.sm = load ptr, ptr %56, align 8, !tbaa !32
  %i.sn = load i64, ptr %i.px, align 8, !tbaa !34
  store ptr %i.sm, ptr %24, align 16, !tbaa !33
  store i64 %i.sn, ptr %i.py, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %24)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %.noexc238
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.so = load ptr, ptr %56, align 8, !tbaa !32   ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.pz
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.dv
  %i.sq = load i64, ptr %i.pz, align 8, !tbaa !33
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  %i.ss = add i32 %.0155755, 1                    ; 2 uses
  %exitcond782.not = icmp eq i32 %i.ss, %i.pd
  br i1 %exitcond782.not, label %.loopexit, label %bb.df, !llvm.loop !183

bb.dw:                                            ; preds = %._crit_edge754
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

bb.dx:                                            ; preds = %.noexc238
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = load ptr, ptr %56, align 8, !tbaa !32   ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.pz
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %bb.dx
  %i.sx = load i64, ptr %i.pz, align 8, !tbaa !33
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.dw
  %.pn194 = phi { ptr, i32 } [ %i.st, %bb.dw ], [ %i.su, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ], [ %i.su, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  br label %bb.fj

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i346, %bb.bs
  %bcmp.i435 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0630.1, ptr noundef nonnull dereferenceable(1) @.str.30, i64 %.sroa.14637.1)
  %.not.i.i436 = icmp eq i32 %bcmp.i435, 0
  br i1 %.not.i.i436, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438, label %bb.ep

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434
  %i.sz = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !168 ; 2 uses
  %i.tc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dz unwind label %bb.eb     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.td = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader732 unwind label %bb.ec ; 2 uses

.preheader732:                                    ; preds = %bb.dz
  %i.te = icmp slt i32 %i.tc, %i.td
  br i1 %i.te, label %.lr.ph751, label %.loopexit

.lr.ph751:                                        ; preds = %.preheader732
  %i.tf = add nsw i32 %i.tb, 1
  %.sroa.2526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.3527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %i.tk = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.tb, i64 0
  %i.tl = insertelement <4 x i32> %i.tk, i32 %i.tf, i64 1
  br label %bb.ed

bb.ea:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eb:                                            ; preds = %bb.dy
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ec:                                            ; preds = %bb.dz
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ed:                                            ; preds = %.lr.ph751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %.0157750 = phi i32 [ %i.tc, %.lr.ph751 ], [ %i.vi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ] ; 3 uses
  %i.tp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ee unwind label %bb.ef     ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %i.tq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader731 unwind label %bb.eg ; 2 uses

.preheader731:                                    ; preds = %bb.ee
  %i.tr = icmp slt i32 %i.tp, %i.tq
  br i1 %i.tr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader731
  %i.ts = add nsw i32 %.0157750, 1
  br label %bb.eh

._crit_edge:                                      ; preds = %bb.ei, %.preheader731
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #32
  store ptr @.str.27, ptr %60, align 8, !tbaa !7
  store i64 7, ptr %i.tg, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %60)
          to label %.noexc235 unwind label %bb.en

bb.ef:                                            ; preds = %bb.ed
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eg:                                            ; preds = %bb.ee
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eh:                                            ; preds = %.lr.ph, %bb.ei
  %.0158749 = phi i32 [ %i.tp, %.lr.ph ], [ %i.tw, %bb.ei ] ; 2 uses
  %i.tv = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.uz, %bb.ei ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #32
  %i.tw = add i32 %.0158749, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 %.0158749, ptr %6, align 8
  store i32 %i.tw, ptr %.sroa.2526.0..sroa_idx, align 4
  store i32 %.0157750, ptr %.sroa.3527.0..sroa_idx, align 8
  store i32 %i.ts, ptr %.sroa.4528.0..sroa_idx, align 4
  store <4 x i32> %i.tl, ptr %.sroa.5529.0..sroa_idx, align 8
  %i.tx = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i64 267, ptr nonnull %58, i64 16, ptr noundef nonnull %58, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc260 unwind label %bb.ej ; 0 uses

.noexc260:                                        ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ty = load <4 x float>, ptr %58, align 16, !tbaa !33
  %i.tz = fadd <4 x float> %i.tv, %i.ty           ; 3 uses
  store <4 x float> %i.tz, ptr %58, align 16, !tbaa !33
  %i.ua = fmul <4 x float> %i.tz, splat (float 5.000000e+00)
  %bc715 = bitcast <4 x float> %i.ua to <2 x double> ; 2 uses
  %i.ub = extractelement <2 x double> %bc715, i64 0
  %i.uc = extractelement <2 x double> %bc715, i64 1
  %bc717 = bitcast double %i.ub to <2 x float>    ; 2 uses
  %i.ud = extractelement <2 x float> %bc717, i64 0
  %i.ue = extractelement <2 x float> %bc717, i64 1
  %bc719 = bitcast double %i.uc to <2 x float>    ; 2 uses
  %i.uf = extractelement <2 x float> %bc719, i64 0
  %i.ug = extractelement <2 x float> %bc719, i64 1
  %i.uh = call float @llvm.floor.f32(float %i.uf)
  %i.ui = call float @llvm.floor.f32(float %i.ud)
  %i.uj = call float @llvm.floor.f32(float %i.ug)
  %i.uk = call float @llvm.floor.f32(float %i.ue)
  %i.ul = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.um = insertelement <2 x float> %i.ul, float %i.uh, i64 1
  %i.un = bitcast <2 x float> %i.um to <2 x i32>
  %i.uo = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.up = insertelement <2 x float> %i.uo, float %i.uj, i64 1
  %i.uq = bitcast <2 x float> %i.up to <2 x i32>
  %i.ur = zext <2 x i32> %i.uq to <2 x i64>
  %i.us = shl nuw <2 x i64> %i.ur, splat (i64 32)
  %i.ut = zext <2 x i32> %i.un to <2 x i64>
  %i.uu = or disjoint <2 x i64> %i.us, %i.ut
  %i.uv = bitcast <2 x i64> %i.uu to <4 x float>
  %i.uw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.uv) ; 4 uses
  %.sroa.0808.0.vec.extract811 = extractelement <4 x i32> %i.uw, i64 0
  %.sroa.speculated694 = call i32 @llvm.smax.i32(i32 %.sroa.0808.0.vec.extract811, i32 0)
  %.sroa.0808.4.vec.extract813 = extractelement <4 x i32> %i.uw, i64 1
  %.sroa.speculated694.1 = call i32 @llvm.smax.i32(i32 %.sroa.0808.4.vec.extract813, i32 0)
  %.sroa.0808.8.vec.extract816 = extractelement <4 x i32> %i.uw, i64 2
  %.sroa.speculated694.2 = call i32 @llvm.smax.i32(i32 %.sroa.0808.8.vec.extract816, i32 0)
  %64 = call i32 @llvm.umin.i32(i32 %.sroa.speculated694, i32 5)
  %65 = call i32 @llvm.umin.i32(i32 %.sroa.speculated694.1, i32 5)
  %66 = call i32 @llvm.umin.i32(i32 %.sroa.speculated694.2, i32 5)
  %67 = mul nuw nsw i32 %64, 36
  %68 = add nuw nsw i32 %67, 16
  %69 = mul nuw nsw i32 %65, 6
  %70 = add nuw nsw i32 %68, %69
  %71 = add nuw nsw i32 %70, %66
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  store i32 %71, ptr %18, align 16, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %18)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %.noexc260
  %i.ux = sitofp <4 x i32> %i.uw to <4 x float>
  %i.uy = fmul nnan <4 x float> %i.ux, splat (float 2.000000e-01)
  %i.uz = fsub <4 x float> %i.tz, %i.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  %exitcond.not = icmp eq i32 %i.tw, %i.tq
  br i1 %exitcond.not, label %._crit_edge, label %bb.eh, !llvm.loop !184

bb.ej:                                            ; preds = %bb.eh
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %.noexc260
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn184.pn.pn = phi { ptr, i32 } [ %i.va, %bb.ej ], [ %i.vb, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  br label %bb.fj

.noexc235:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.vc = load ptr, ptr %59, align 8, !tbaa !32
  %i.vd = load i64, ptr %i.th, align 8, !tbaa !34
  store ptr %i.vc, ptr %25, align 16, !tbaa !33
  store i64 %i.vd, ptr %i.ti, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %25)
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %.noexc235
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.ve = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.tj
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %bb.em
  %i.vg = load i64, ptr %i.tj, align 8, !tbaa !33
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  %i.vi = add i32 %.0157750, 1                    ; 2 uses
  %exitcond780.not = icmp eq i32 %i.vi, %i.td
  br i1 %exitcond780.not, label %.loopexit, label %bb.ed, !llvm.loop !185

bb.en:                                            ; preds = %._crit_edge
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.eo:                                            ; preds = %.noexc235
  %i.vk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vl = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.tj
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.eo
  %i.vn = load i64, ptr %i.tj, align 8, !tbaa !33
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444, %bb.en
  %.pn180 = phi { ptr, i32 } [ %i.vj, %bb.en ], [ %i.vk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444 ], [ %i.vk, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  br label %bb.fj

bb.ep:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i401, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i369, %bb.bs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434
  %i.vp = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.eq unwind label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !168 ; 2 uses
  %i.vs = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.er unwind label %bb.et     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.vt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader723 unwind label %bb.eu ; 2 uses

.preheader723:                                    ; preds = %bb.er
  %i.vu = icmp slt i32 %i.vs, %i.vt
  br i1 %i.vu, label %.lr.ph768, label %.loopexit

.lr.ph768:                                        ; preds = %.preheader723
  %i.vv = add nsw i32 %i.vr, 1
  %.sroa.2509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.vy = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %i.wa = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.vr, i64 0
  %i.wb = insertelement <4 x i32> %i.wa, i32 %i.vv, i64 1
  br label %bb.ev

bb.es:                                            ; preds = %bb.ep
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.et:                                            ; preds = %bb.eq
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eu:                                            ; preds = %bb.er
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ev:                                            ; preds = %.lr.ph768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %.0151767 = phi i32 [ %i.vs, %.lr.ph768 ], [ %i.xt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ] ; 3 uses
  %i.wf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ew unwind label %bb.ex     ; 2 uses

bb.ew:                                            ; preds = %bb.ev
  %i.wg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader722 unwind label %bb.ey ; 2 uses

.preheader722:                                    ; preds = %bb.ew
  %i.wh = icmp slt i32 %i.wf, %i.wg
  br i1 %i.wh, label %.lr.ph765, label %._crit_edge766

.lr.ph765:                                        ; preds = %.preheader722
  %i.wi = add nsw i32 %.0151767, 1
  br label %bb.ez

._crit_edge766:                                   ; preds = %bb.fa, %.preheader722
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #32
  store ptr @.str.27, ptr %63, align 8, !tbaa !7
  store i64 7, ptr %i.vw, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %63)
          to label %.noexc unwind label %bb.ff

bb.ex:                                            ; preds = %bb.ev
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ey:                                            ; preds = %bb.ew
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ez:                                            ; preds = %.lr.ph765, %bb.fa
  %.0149764 = phi i32 [ %i.wf, %.lr.ph765 ], [ %i.wl, %bb.fa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #32
  %i.wl = add i32 %.0149764, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.0149764, ptr %5, align 8
  store i32 %i.wl, ptr %.sroa.2509.0..sroa_idx, align 4
  store i32 %.0151767, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 %i.wi, ptr %.sroa.4.0..sroa_idx, align 4
  store <4 x i32> %i.wb, ptr %.sroa.5.0..sroa_idx510, align 8
  %i.wm = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i64 267, ptr nonnull %61, i64 16, ptr noundef nonnull %61, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc258 unwind label %bb.fb ; 0 uses

.noexc258:                                        ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.wn = load <4 x float>, ptr %61, align 16, !tbaa !33
  %i.wo = fmul <4 x float> %i.wn, splat (float 5.000000e+00)
  %bc = bitcast <4 x float> %i.wo to <2 x double> ; 2 uses
  %i.wp = extractelement <2 x double> %bc, i64 0
  %i.wq = extractelement <2 x double> %bc, i64 1
  %bc711 = bitcast double %i.wp to <2 x float>    ; 2 uses
  %i.wr = extractelement <2 x float> %bc711, i64 0
  %i.ws = extractelement <2 x float> %bc711, i64 1
  %bc713 = bitcast double %i.wq to <2 x float>    ; 2 uses
  %i.wt = extractelement <2 x float> %bc713, i64 0
  %i.wu = extractelement <2 x float> %bc713, i64 1
  %i.wv = call float @llvm.floor.f32(float %i.wt)
  %i.ww = call float @llvm.floor.f32(float %i.wr)
  %i.wx = call float @llvm.floor.f32(float %i.wu)
  %i.wy = call float @llvm.floor.f32(float %i.ws)
  %i.wz = insertelement <2 x float> poison, float %i.ww, i64 0
  %i.xa = insertelement <2 x float> %i.wz, float %i.wv, i64 1
  %i.xb = bitcast <2 x float> %i.xa to <2 x i32>
  %i.xc = insertelement <2 x float> poison, float %i.wy, i64 0
  %i.xd = insertelement <2 x float> %i.xc, float %i.wx, i64 1
  %i.xe = bitcast <2 x float> %i.xd to <2 x i32>
  %i.xf = zext <2 x i32> %i.xe to <2 x i64>
  %i.xg = shl nuw <2 x i64> %i.xf, splat (i64 32)
  %i.xh = zext <2 x i32> %i.xb to <2 x i64>
  %i.xi = or disjoint <2 x i64> %i.xg, %i.xh
  %i.xj = bitcast <2 x i64> %i.xi to <4 x float>
  %i.xk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.xj) ; 3 uses
  %.sroa.0795.0.vec.extract798 = extractelement <4 x i32> %i.xk, i64 0
  %.sroa.speculated699 = call i32 @llvm.smax.i32(i32 %.sroa.0795.0.vec.extract798, i32 0)
  %.sroa.0795.4.vec.extract800 = extractelement <4 x i32> %i.xk, i64 1
  %.sroa.speculated699.1 = call i32 @llvm.smax.i32(i32 %.sroa.0795.4.vec.extract800, i32 0)
  %.sroa.0795.8.vec.extract803 = extractelement <4 x i32> %i.xk, i64 2
  %.sroa.speculated699.2 = call i32 @llvm.smax.i32(i32 %.sroa.0795.8.vec.extract803, i32 0)
  %72 = call i32 @llvm.umin.i32(i32 %.sroa.speculated699, i32 5)
  %73 = call i32 @llvm.umin.i32(i32 %.sroa.speculated699.1, i32 5)
  %74 = call i32 @llvm.umin.i32(i32 %.sroa.speculated699.2, i32 5)
  %75 = mul nuw nsw i32 %72, 36
  %76 = add nuw nsw i32 %75, 16
  %77 = mul nuw nsw i32 %73, 6
  %78 = add nuw nsw i32 %76, %77
  %79 = add nuw nsw i32 %78, %74
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i32 %79, ptr %19, align 16, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %19)
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  %exitcond788.not = icmp eq i32 %i.wl, %i.wg
  br i1 %exitcond788.not, label %._crit_edge766, label %bb.ez, !llvm.loop !186

bb.fb:                                            ; preds = %bb.ez
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fc:                                            ; preds = %.noexc258
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.pn171.pn.pn = phi { ptr, i32 } [ %i.xl, %bb.fb ], [ %i.xm, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  br label %bb.fj

.noexc:                                           ; preds = %._crit_edge766
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.xn = load ptr, ptr %62, align 8, !tbaa !32
  %i.xo = load i64, ptr %i.vx, align 8, !tbaa !34
  store ptr %i.xn, ptr %26, align 16, !tbaa !33
  store i64 %i.xo, ptr %i.vy, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %26)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.xp = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.vz
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %bb.fe
  %i.xr = load i64, ptr %i.vz, align 8, !tbaa !33
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  %i.xt = add i32 %.0151767, 1                    ; 2 uses
  %exitcond789.not = icmp eq i32 %i.xt, %i.vt
  br i1 %exitcond789.not, label %.loopexit, label %bb.ev, !llvm.loop !187

bb.ff:                                            ; preds = %._crit_edge766
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

bb.fg:                                            ; preds = %.noexc
  %i.xv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xw = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.xx = icmp eq ptr %i.xw, %i.vz
  br i1 %i.xx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467: ; preds = %bb.fg
  %i.xy = load i64, ptr %i.vz, align 8, !tbaa !33
  %i.xz = add i64 %i.xy, 1
  call void @_ZdlPvm(ptr noundef %i.xw, i64 noundef %i.xz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467, %bb.ff
  %.pn167 = phi { ptr, i32 } [ %i.xu, %bb.ff ], [ %i.xv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467 ], [ %i.xv, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  br label %bb.fj

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %.preheader732, %.preheader729, %.preheader726, %.preheader723, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ya = load ptr, ptr @stdout, align 8, !tbaa !129
  %.not218 = icmp eq ptr %spec.select, %i.ya
  br i1 %.not218, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.loopexit
  %i.yb = call i32 @fclose(ptr noundef %spec.select) ; 0 uses
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  %i.yc = load ptr, ptr %27, align 8, !tbaa !32   ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ye = icmp eq ptr %i.yc, %i.yd
  br i1 %i.ye, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470: ; preds = %bb.fi
  %i.yf = load i64, ptr %i.yd, align 8, !tbaa !33
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  ret i1 true

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %bb.eg, %bb.el, %bb.ef, %bb.ai, %bb.am, %bb.br, %bb.bw, %bb.ca, %bb.cw, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %bb.bx, %bb.bv, %bb.dd, %bb.dh, %bb.du, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %bb.de, %bb.dc, %bb.eb, %bb.ec, %bb.ea, %bb.et, %bb.ex, %bb.fd, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %bb.eu, %bb.es, %bb.aj, %bb.ah
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %i.ek, %bb.ai ], [ %i.el, %bb.aj ], [ %.pn219.pn.pn.pn.pn.pn.pn, %bb.br ], [ %.pn165, %bb.am ], [ %i.li, %bb.cb ], [ %i.qk, %bb.di ], [ %i.to, %bb.ec ], [ %i.la, %bb.bv ], [ %i.lb, %bb.bw ], [ %i.lc, %bb.bx ], [ %.pn204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %i.lh, %bb.ca ], [ %.pn206.pn.pn, %bb.cw ], [ %i.qc, %bb.dc ], [ %i.qd, %bb.dd ], [ %i.qe, %bb.de ], [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433 ], [ %i.qj, %bb.dh ], [ %.pn196.pn, %bb.du ], [ %i.tm, %bb.ea ], [ %i.tn, %bb.eb ], [ %i.wk, %bb.ey ], [ %i.wc, %bb.es ], [ %i.wd, %bb.et ], [ %i.we, %bb.eu ], [ %.pn167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ], [ %i.wj, %bb.ex ], [ %.pn171.pn.pn, %bb.fd ], [ %i.tu, %bb.eg ], [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ], [ %i.tt, %bb.ef ], [ %.pn184.pn.pn, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.s, %bb.fj, %bb.x, %bb.m
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn.pn, %bb.s ], [ %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fj ], [ %i.cq, %bb.x ]
  %i.yh = load ptr, ptr %27, align 8, !tbaa !32   ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473: ; preds = %bb.fk
  %i.yk = load i64, ptr %i.yi, align 8, !tbaa !33
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yh, i64 noundef %i.yl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  resume { ptr, i32 } %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr noundef dead_on_return, i1 noundef zeroext, ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef ptr @_ZN11OpenImageIO4v3_110Filesystem5fopenENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef i32 @_ZN11OpenImageIO4v3_17Sysutil16terminal_columnsEv() local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERKNS0_8ImageBufENS0_14ParamValueSpanENS0_3ROIEi(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ImageBufaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v125printIJRKiS3_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.115", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.a = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.a, ptr %7, align 16, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = load i32, ptr %4, align 4, !tbaa !3
  store i32 %i.c, ptr %i.b, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !152
  store i64 500, ptr %i.d, align 8, !tbaa !153
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %7, align 16, !tbaa !33
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66.i to i32
  %i.n = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull align 8 dereferenceable(32) %6, i32 noundef %i.m)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %bb.g ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8, !tbaa !154
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.p, align 8, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 17, ptr %i.q, align 8, !tbaa !160
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.r, align 8, !tbaa !162
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc5 unwind label %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ao = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !33
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.at, align 8, !tbaa !3
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.327.0..sroa_idx, align 8, !tbaa !808
  ret void

bb.g:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.h:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.i:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.u
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.az = load i64, ptr %i.u, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.e
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !33
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  %i.bf = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvE4growERNS1_6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @fflush_unlocked(ptr noundef nonnull %i.d) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre12 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !177
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre14, %bb.b ], [ %i.i, %bb.a ]
  %i.m = phi ptr [ %.pre12, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  store ptr %i.m, ptr %0, align 8, !tbaa !152
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !153
  store i64 0, ptr %i.b, align 8, !tbaa !163
  ret void
}

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #2

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #28 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { nounwind willreturn memory(none) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK11OpenImageIO4v3_112AttrDelegateINS0_9ImageSpecEE3getINS0_17basic_string_viewIcSt11char_traitsIcEEETnNSt9enable_ifIXsr3pvt9is_stringIT_EE5valueEiE4typeELi1EEESA_RKSA_: argument 0"}
!15 = distinct !{!15, !"_ZNK11OpenImageIO4v3_112AttrDelegateINS0_9ImageSpecEE3getINS0_17basic_string_viewIcSt11char_traitsIcEEETnNSt9enable_ifIXsr3pvt9is_stringIT_EE5valueEiE4typeELi1EEESA_RKSA_"}
!16 = !{!17, !9, i64 0}
!17 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !9, i64 0}
!18 = !{!19, !14}
!19 = distinct !{!19, !20, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!20 = distinct !{!20, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN11OpenImageIO4v3_17Strutil5lowerB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE: argument 0:thread"}
!23 = distinct !{!23, !"_ZN11OpenImageIO4v3_17Strutil5lowerB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE"}
!24 = !{!25, !9, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !11, i64 40}
!28 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !11, i64 0, !29, i64 8, !11, i64 40, !11, i64 48, !4, i64 56}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !11, i64 8, !5, i64 16}
!30 = !{!31}
!31 = distinct !{!31, !23, !"_ZN11OpenImageIO4v3_17Strutil5lowerB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE: argument 0"}
!32 = !{!29, !9, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!29, !11, i64 8}
!35 = !{!36, !50, i64 264}
!36 = !{!"_ZTSN11OpenImageIO4v3_18term_pvt10TermOutputE", !37, i64 0, !66, i64 184, !29, i64 200, !29, i64 232, !50, i64 264}
!37 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !38, i64 8, !57, i64 168}
!38 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !39, i64 64, !40, i64 72, !45, i64 96, !4, i64 120, !4, i64 124, !50, i64 128, !51, i64 136}
!39 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!40 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !10, i64 0}
!45 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!50 = !{!"bool", !5, i64 0}
!51 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !52, i64 0}
!52 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !10, i64 0}
!57 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !60, i64 0}
!60 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !61, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !62, i64 0, !64, i64 8}
!62 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !63, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !10, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !65, i64 0}
!65 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !10, i64 0}
!66 = !{!"_ZTSN11OpenImageIO4v3_18ImageBufE", !67, i64 0}
!67 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_112ImageBufImplEPFvPS2_EE", !68, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_112ImageBufImplEPFvPS2_ELb1ELb1EE", !69, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_112ImageBufImplEPFvPS2_EE", !70, i64 0}
!70 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_112ImageBufImplEPFvS3_EEE", !71, i64 0}
!71 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_112ImageBufImplEPFvS3_EEE", !72, i64 0, !74, i64 8}
!72 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_112ImageBufImplEEEE", !73, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_112ImageBufImplEELb0EE", !10, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_112ImageBufImplELb0EE", !75, i64 0}
!75 = !{!"p1 _ZTSN11OpenImageIO4v3_112ImageBufImplE", !10, i64 0}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTSN11OpenImageIO4v3_112AttrDelegateINS0_9ImageSpecEEE", !78, i64 0, !8, i64 8, !50, i64 24}
!78 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !10, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN11OpenImageIO4v3_19ImageSpecixENS0_17basic_string_viewIcSt11char_traitsIcEEE: argument 0"}
!81 = distinct !{!81, !"_ZN11OpenImageIO4v3_19ImageSpecixENS0_17basic_string_viewIcSt11char_traitsIcEEE"}
!82 = !{!77, !50, i64 24}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN11OpenImageIO4v3_112AttrDelegateINS0_9ImageSpecEEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!85 = distinct !{!85, !"_ZN11OpenImageIO4v3_112AttrDelegateINS0_9ImageSpecEEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!86 = !{!87, !4, i64 0}
!87 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!88 = !{!55, !56, i64 0}
!89 = !{!55, !56, i64 8}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!55, !56, i64 16}
!93 = !{!48, !49, i64 0}
!94 = !{!48, !49, i64 8}
!95 = distinct !{!95, !91}
!96 = !{!48, !49, i64 16}
!97 = !{!43, !44, i64 0}
!98 = !{!43, !44, i64 16}
!99 = !{!43, !44, i64 8}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = !{!44, !44, i64 0}
!102 = distinct !{!102, !91, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = distinct !{!105, !91, !103}
!106 = !{!49, !49, i64 0}
!107 = !{!37, !4, i64 24}
!108 = !{!37, !4, i64 8}
!109 = !{!37, !4, i64 20}
!110 = !{!37, !4, i64 68}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!114 = !{!37, !4, i64 56}
!115 = !{!37, !4, i64 60}
!116 = !{!37, !4, i64 12}
!117 = !{!37, !4, i64 64}
!118 = !{!37, !4, i64 16}
!119 = !{!37, !4, i64 28}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK11OpenImageIO4v3_112AttrDelegateIKNS0_9ImageSpecEE3getINS0_17basic_string_viewIcSt11char_traitsIcEEETnNSt9enable_ifIXsr3pvt9is_stringIT_EE5valueEiE4typeELi1EEESB_RKSB_: argument 0"}
!122 = distinct !{!122, !"_ZNK11OpenImageIO4v3_112AttrDelegateIKNS0_9ImageSpecEE3getINS0_17basic_string_viewIcSt11char_traitsIcEEETnNSt9enable_ifIXsr3pvt9is_stringIT_EE5valueEiE4typeELi1EEESB_RKSB_"}
!123 = !{!124, !121}
!124 = distinct !{!124, !125, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!125 = distinct !{!125, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!128 = distinct !{!128, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!131 = !{!132, !50, i64 0}
!132 = !{!"_ZTSN11OpenImageIO4v3_17Sysutil4TermE", !50, i64 0}
!133 = !{!38, !4, i64 12}
!134 = !{!38, !4, i64 16}
!135 = !{i8 0, i8 2}
!136 = !{}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!139 = distinct !{!139, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!142 = distinct !{!142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!143 = !{!141, !138}
!144 = !{!145, !9, i64 40}
!145 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !146, i64 56}
!146 = !{!"_ZTSSt6locale", !147, i64 0}
!147 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!148 = !{!145, !9, i64 32}
!149 = distinct !{!149, !91}
!150 = !{!151, !10, i64 24}
!151 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !9, i64 0, !11, i64 8, !11, i64 16, !10, i64 24}
!152 = !{!151, !9, i64 0}
!153 = !{!151, !11, i64 16}
!154 = !{!9, !9, i64 0}
end_hunk_1
