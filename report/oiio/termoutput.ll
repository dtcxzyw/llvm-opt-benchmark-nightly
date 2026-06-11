inline.NumInlined: 3127
inline.NumDeleted: 880
begin_hunk_0_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  br i1 %exitcond783.not, label %._crit_edge756, label %bb.di, !llvm.loop !181

bb.dq:                                            ; preds = %bb.di
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dj
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

bb.ds:                                            ; preds = %putc_unlocked.exit.i.i.i413, %.critedge.i412
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body421

.body421:                                         ; preds = %bb.do, %bb.ds
  %eh.lpad-body422 = phi { ptr, i32 } [ %i.sh, %bb.ds ], [ %i.sa, %bb.do ] ; 2 uses
  %i.si = load ptr, ptr %55, align 8, !tbaa !32   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.pv
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %.body421
  %i.sk = load i64, ptr %i.pv, align 8, !tbaa !33
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %.body421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427, %bb.dr
  %.pn196 = phi { ptr, i32 } [ %i.sg, %bb.dr ], [ %eh.lpad-body422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %eh.lpad-body422, %.body421 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %bb.dq
  %.pn196.pn = phi { ptr, i32 } [ %.pn196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %i.sf, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %bb.fi

.noexc240:                                        ; preds = %._crit_edge756
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.sm = load ptr, ptr %56, align 8, !tbaa !32
  %i.sn = load i64, ptr %i.px, align 8, !tbaa !34
  store ptr %i.sm, ptr %24, align 16, !tbaa !33
  store i64 %i.sn, ptr %i.py, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %24)
          to label %bb.du unwind label %bb.dw

bb.du:                                            ; preds = %.noexc240
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.so = load ptr, ptr %56, align 8, !tbaa !32   ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.pz
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %bb.du
  %i.sq = load i64, ptr %i.pz, align 8, !tbaa !33
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  %i.ss = add i32 %.0155757, 1                    ; 2 uses
  %exitcond784.not = icmp eq i32 %i.ss, %i.pd
  br i1 %exitcond784.not, label %.loopexit, label %bb.de, !llvm.loop !182

bb.dv:                                            ; preds = %._crit_edge756
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

bb.dw:                                            ; preds = %.noexc240
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = load ptr, ptr %56, align 8, !tbaa !32   ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.pz
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %bb.dw
  %i.sx = load i64, ptr %i.pz, align 8, !tbaa !33
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433, %bb.dv
  %.pn194 = phi { ptr, i32 } [ %i.st, %bb.dv ], [ %i.su, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433 ], [ %i.su, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  br label %bb.fi

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i436: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i348, %bb.br
  %bcmp.i437 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0632.1, ptr noundef nonnull dereferenceable(1) @.str.30, i64 %.sroa.14639.1)
  %.not.i.i438 = icmp eq i32 %bcmp.i437, 0
  br i1 %.not.i.i438, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit440, label %bb.eo

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit440: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i436
  %i.sz = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit440
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !167 ; 2 uses
  %i.tc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dy unwind label %bb.ea     ; 2 uses

bb.dy:                                            ; preds = %bb.dx
  %i.td = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader734 unwind label %bb.eb ; 2 uses

.preheader734:                                    ; preds = %bb.dy
  %i.te = icmp slt i32 %i.tc, %i.td
  br i1 %i.te, label %.lr.ph753, label %.loopexit

.lr.ph753:                                        ; preds = %.preheader734
  %i.tf = add nsw i32 %i.tb, 1
  %.sroa.2528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.3529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %i.tk = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.tb, i64 0
  %i.tl = insertelement <4 x i32> %i.tk, i32 %i.tf, i64 1
  br label %bb.ec

bb.dz:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit440
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ea:                                            ; preds = %bb.dx
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.eb:                                            ; preds = %bb.dy
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ec:                                            ; preds = %.lr.ph753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %.0157752 = phi i32 [ %i.tc, %.lr.ph753 ], [ %i.vl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445 ] ; 3 uses
  %i.tp = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ed unwind label %bb.ee     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.tq = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader733 unwind label %bb.ef ; 2 uses

.preheader733:                                    ; preds = %bb.ed
  %i.tr = icmp slt i32 %i.tp, %i.tq
  br i1 %i.tr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader733
  %i.ts = add nsw i32 %.0157752, 1
  br label %bb.eg

._crit_edge:                                      ; preds = %bb.eh, %.preheader733
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #32
  store ptr @.str.27, ptr %60, align 8, !tbaa !7
  store i64 7, ptr %i.tg, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %60)
          to label %.noexc237 unwind label %bb.em

bb.ee:                                            ; preds = %bb.ec
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ef:                                            ; preds = %bb.ed
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.eg:                                            ; preds = %.lr.ph, %bb.eh
  %.0158751 = phi i32 [ %i.tp, %.lr.ph ], [ %i.tw, %bb.eh ] ; 2 uses
  %i.tv = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.vc, %bb.eh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #32
  %i.tw = add i32 %.0158751, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 %.0158751, ptr %6, align 8
  store i32 %i.tw, ptr %.sroa.2528.0..sroa_idx, align 4
  store i32 %.0157752, ptr %.sroa.3529.0..sroa_idx, align 8
  store i32 %i.ts, ptr %.sroa.4530.0..sroa_idx, align 4
  store <4 x i32> %i.tl, ptr %.sroa.5531.0..sroa_idx, align 8
  %i.tx = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i64 267, ptr nonnull %58, i64 16, ptr noundef nonnull %58, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc262 unwind label %bb.ei ; 0 uses

.noexc262:                                        ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ty = load <4 x float>, ptr %58, align 16, !tbaa !33
  %i.tz = fadd <4 x float> %i.tv, %i.ty           ; 3 uses
  store <4 x float> %i.tz, ptr %58, align 16, !tbaa !33
  %i.ua = fmul <4 x float> %i.tz, splat (float 5.000000e+00)
  %bc717 = bitcast <4 x float> %i.ua to <2 x double> ; 2 uses
  %i.ub = extractelement <2 x double> %bc717, i64 0
  %i.uc = extractelement <2 x double> %bc717, i64 1
  %bc719 = bitcast double %i.ub to <2 x float>    ; 2 uses
  %i.ud = extractelement <2 x float> %bc719, i64 0
  %64 = call float @llvm.floor.f32(float %i.ud)
  %65 = extractelement <2 x float> %bc719, i64 1
  %66 = call float @llvm.floor.f32(float %65)
  %bc721 = bitcast double %i.uc to <2 x float>    ; 2 uses
  %67 = extractelement <2 x float> %bc721, i64 0
  %i.ue = call float @llvm.floor.f32(float %67)
  %68 = extractelement <2 x float> %bc721, i64 1
  %i.uf = call float @llvm.floor.f32(float %68)
  %i.ug = insertelement <2 x float> poison, float %64, i64 0
  %i.uh = insertelement <2 x float> %i.ug, float %i.ue, i64 1
  %i.ui = bitcast <2 x float> %i.uh to <2 x i32>
  %i.uj = insertelement <2 x float> poison, float %66, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.uf, i64 1
  %i.ul = bitcast <2 x float> %i.uk to <2 x i32>
  %i.um = zext <2 x i32> %i.ul to <2 x i64>
  %i.un = shl nuw <2 x i64> %i.um, splat (i64 32)
  %i.uo = zext <2 x i32> %i.ui to <2 x i64>
  %i.up = or disjoint <2 x i64> %i.un, %i.uo
  %i.uq = bitcast <2 x i64> %i.up to <4 x float>
  %i.ur = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.uq) ; 4 uses
  %.sroa.0810.0.vec.extract813 = extractelement <4 x i32> %i.ur, i64 0
  %.sroa.speculated696 = call i32 @llvm.smax.i32(i32 %.sroa.0810.0.vec.extract813, i32 0)
  %.sroa.0810.4.vec.extract815 = extractelement <4 x i32> %i.ur, i64 1
  %.sroa.speculated696.1 = call i32 @llvm.smax.i32(i32 %.sroa.0810.4.vec.extract815, i32 0)
  %.sroa.0810.8.vec.extract818 = extractelement <4 x i32> %i.ur, i64 2
  %.sroa.speculated696.2 = call i32 @llvm.smax.i32(i32 %.sroa.0810.8.vec.extract818, i32 0)
  %i.us = call i32 @llvm.umin.i32(i32 %.sroa.speculated696, i32 5)
  %i.ut = call i32 @llvm.umin.i32(i32 %.sroa.speculated696.1, i32 5)
  %i.uu = call i32 @llvm.umin.i32(i32 %.sroa.speculated696.2, i32 5)
  %i.uv = mul nuw nsw i32 %i.us, 36
  %i.uw = add nuw nsw i32 %i.uv, 16
  %i.ux = mul nuw nsw i32 %i.ut, 6
  %i.uy = add nuw nsw i32 %i.uw, %i.ux
  %i.uz = add nuw nsw i32 %i.uy, %i.uu
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  store i32 %i.uz, ptr %18, align 16, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %18)
          to label %bb.eh unwind label %bb.ej

bb.eh:                                            ; preds = %.noexc262
  %i.va = sitofp <4 x i32> %i.ur to <4 x float>
  %i.vb = fmul nnan <4 x float> %i.va, splat (float 2.000000e-01)
  %i.vc = fsub <4 x float> %i.tz, %i.vb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  %exitcond.not = icmp eq i32 %i.tw, %i.tq
  br i1 %exitcond.not, label %._crit_edge, label %bb.eg, !llvm.loop !183

bb.ei:                                            ; preds = %bb.eg
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %.noexc262
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn184.pn.pn = phi { ptr, i32 } [ %i.vd, %bb.ei ], [ %i.ve, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  br label %bb.fi

.noexc237:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.vf = load ptr, ptr %59, align 8, !tbaa !32
  %i.vg = load i64, ptr %i.th, align 8, !tbaa !34
  store ptr %i.vf, ptr %25, align 16, !tbaa !33
  store i64 %i.vg, ptr %i.ti, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %25)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.vh = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.tj
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %bb.el
  %i.vj = load i64, ptr %i.tj, align 8, !tbaa !33
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  %i.vl = add i32 %.0157752, 1                    ; 2 uses
  %exitcond782.not = icmp eq i32 %i.vl, %i.td
  br i1 %exitcond782.not, label %.loopexit, label %bb.ec, !llvm.loop !184

bb.em:                                            ; preds = %._crit_edge
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

bb.en:                                            ; preds = %.noexc237
  %i.vn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vo = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.tj
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %bb.en
  %i.vq = load i64, ptr %i.tj, align 8, !tbaa !33
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446, %bb.em
  %.pn180 = phi { ptr, i32 } [ %i.vm, %bb.em ], [ %i.vn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446 ], [ %i.vn, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  br label %bb.fi

bb.eo:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i403, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i371, %bb.br, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i436
  %i.vs = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ep unwind label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !167 ; 2 uses
  %i.vv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.eq unwind label %bb.es     ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.vw = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader725 unwind label %bb.et ; 2 uses

.preheader725:                                    ; preds = %bb.eq
  %i.vx = icmp slt i32 %i.vv, %i.vw
  br i1 %i.vx, label %.lr.ph770, label %.loopexit

.lr.ph770:                                        ; preds = %.preheader725
  %i.vy = add nsw i32 %i.vu, 1
  %.sroa.2511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %i.wd = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.vu, i64 0
  %i.we = insertelement <4 x i32> %i.wd, i32 %i.vy, i64 1
  br label %bb.eu

bb.er:                                            ; preds = %bb.eo
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.es:                                            ; preds = %bb.ep
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.et:                                            ; preds = %bb.eq
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.eu:                                            ; preds = %.lr.ph770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468
  %.0151769 = phi i32 [ %i.vv, %.lr.ph770 ], [ %i.xz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468 ] ; 3 uses
  %i.wi = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ev unwind label %bb.ew     ; 2 uses

bb.ev:                                            ; preds = %bb.eu
  %i.wj = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader724 unwind label %bb.ex ; 2 uses

.preheader724:                                    ; preds = %bb.ev
  %i.wk = icmp slt i32 %i.wi, %i.wj
  br i1 %i.wk, label %.lr.ph767, label %._crit_edge768

.lr.ph767:                                        ; preds = %.preheader724
  %i.wl = add nsw i32 %.0151769, 1
  br label %bb.ey

._crit_edge768:                                   ; preds = %bb.ez, %.preheader724
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #32
  store ptr @.str.27, ptr %63, align 8, !tbaa !7
  store i64 7, ptr %i.vz, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %63)
          to label %.noexc unwind label %bb.fe

bb.ew:                                            ; preds = %bb.eu
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ex:                                            ; preds = %bb.ev
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ey:                                            ; preds = %.lr.ph767, %bb.ez
  %.0149766 = phi i32 [ %i.wi, %.lr.ph767 ], [ %i.wo, %bb.ez ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #32
  %i.wo = add i32 %.0149766, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.0149766, ptr %5, align 8
  store i32 %i.wo, ptr %.sroa.2511.0..sroa_idx, align 4
  store i32 %.0151769, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 %i.wl, ptr %.sroa.4.0..sroa_idx, align 4
  store <4 x i32> %i.we, ptr %.sroa.5.0..sroa_idx512, align 8
  %i.wp = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i64 267, ptr nonnull %61, i64 16, ptr noundef nonnull %61, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc260 unwind label %bb.fa ; 0 uses

.noexc260:                                        ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.wq = load <4 x float>, ptr %61, align 16, !tbaa !33
  %i.wr = fmul <4 x float> %i.wq, splat (float 5.000000e+00)
  %bc = bitcast <4 x float> %i.wr to <2 x double> ; 2 uses
  %i.ws = extractelement <2 x double> %bc, i64 0
  %i.wt = extractelement <2 x double> %bc, i64 1
  %bc713 = bitcast double %i.ws to <2 x float>    ; 2 uses
  %i.wu = extractelement <2 x float> %bc713, i64 0
  %69 = call float @llvm.floor.f32(float %i.wu)
  %70 = extractelement <2 x float> %bc713, i64 1
  %71 = call float @llvm.floor.f32(float %70)
  %bc715 = bitcast double %i.wt to <2 x float>    ; 2 uses
  %72 = extractelement <2 x float> %bc715, i64 0
  %i.wv = call float @llvm.floor.f32(float %72)
  %73 = extractelement <2 x float> %bc715, i64 1
  %i.ww = call float @llvm.floor.f32(float %73)
  %i.wx = insertelement <2 x float> poison, float %69, i64 0
  %i.wy = insertelement <2 x float> %i.wx, float %i.wv, i64 1
  %i.wz = bitcast <2 x float> %i.wy to <2 x i32>
  %i.xa = insertelement <2 x float> poison, float %71, i64 0
  %i.xb = insertelement <2 x float> %i.xa, float %i.ww, i64 1
  %i.xc = bitcast <2 x float> %i.xb to <2 x i32>
  %i.xd = zext <2 x i32> %i.xc to <2 x i64>
  %i.xe = shl nuw <2 x i64> %i.xd, splat (i64 32)
  %i.xf = zext <2 x i32> %i.wz to <2 x i64>
  %i.xg = or disjoint <2 x i64> %i.xe, %i.xf
  %i.xh = bitcast <2 x i64> %i.xg to <4 x float>
  %i.xi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.xh) ; 3 uses
  %.sroa.0797.0.vec.extract800 = extractelement <4 x i32> %i.xi, i64 0
  %.sroa.speculated701 = call i32 @llvm.smax.i32(i32 %.sroa.0797.0.vec.extract800, i32 0)
  %.sroa.0797.4.vec.extract802 = extractelement <4 x i32> %i.xi, i64 1
  %.sroa.speculated701.1 = call i32 @llvm.smax.i32(i32 %.sroa.0797.4.vec.extract802, i32 0)
  %.sroa.0797.8.vec.extract805 = extractelement <4 x i32> %i.xi, i64 2
  %.sroa.speculated701.2 = call i32 @llvm.smax.i32(i32 %.sroa.0797.8.vec.extract805, i32 0)
  %i.xj = call i32 @llvm.umin.i32(i32 %.sroa.speculated701, i32 5)
  %i.xk = call i32 @llvm.umin.i32(i32 %.sroa.speculated701.1, i32 5)
  %i.xl = call i32 @llvm.umin.i32(i32 %.sroa.speculated701.2, i32 5)
  %i.xm = mul nuw nsw i32 %i.xj, 36
  %i.xn = add nuw nsw i32 %i.xm, 16
  %i.xo = mul nuw nsw i32 %i.xk, 6
  %i.xp = add nuw nsw i32 %i.xn, %i.xo
  %i.xq = add nuw nsw i32 %i.xp, %i.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i32 %i.xq, ptr %19, align 16, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %19)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %.noexc260
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  %exitcond790.not = icmp eq i32 %i.wo, %i.wj
  br i1 %exitcond790.not, label %._crit_edge768, label %bb.ey, !llvm.loop !185

bb.fa:                                            ; preds = %bb.ey
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %.noexc260
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.pn171.pn.pn = phi { ptr, i32 } [ %i.xr, %bb.fa ], [ %i.xs, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  br label %bb.fi

.noexc:                                           ; preds = %._crit_edge768
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.xt = load ptr, ptr %62, align 8, !tbaa !32
  %i.xu = load i64, ptr %i.wa, align 8, !tbaa !34
  store ptr %i.xt, ptr %26, align 16, !tbaa !33
  store i64 %i.xu, ptr %i.wb, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %26)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.xv = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.wc
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %bb.fd
  %i.xx = load i64, ptr %i.wc, align 8, !tbaa !33
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  %i.xz = add i32 %.0151769, 1                    ; 2 uses
  %exitcond791.not = icmp eq i32 %i.xz, %i.vw
  br i1 %exitcond791.not, label %.loopexit, label %bb.eu, !llvm.loop !186

bb.fe:                                            ; preds = %._crit_edge768
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.ff:                                            ; preds = %.noexc
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yc = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.wc
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %bb.ff
  %i.ye = load i64, ptr %i.wc, align 8, !tbaa !33
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.fe
  %.pn167 = phi { ptr, i32 } [ %i.ya, %bb.fe ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %i.yb, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  br label %bb.fi

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %.preheader734, %.preheader731, %.preheader728, %.preheader725, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.yg = load ptr, ptr @stdout, align 8, !tbaa !129
  %.not218 = icmp eq ptr %spec.select, %i.yg
  br i1 %.not218, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.loopexit
  %i.yh = call i32 @fclose(ptr noundef %spec.select) ; 0 uses
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  %i.yi = load ptr, ptr %27, align 8, !tbaa !32   ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.yk = icmp eq ptr %i.yi, %i.yj
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.fh
  %i.yl = load i64, ptr %i.yj, align 8, !tbaa !33
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.ym) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  ret i1 true

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %bb.ef, %bb.ek, %bb.ee, %bb.ah, %bb.al, %bb.bq, %bb.bv, %bb.bz, %bb.cv, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %bb.bw, %bb.bu, %bb.dc, %bb.dg, %bb.dt, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %bb.dd, %bb.db, %bb.ea, %bb.eb, %bb.dz, %bb.es, %bb.ew, %bb.fc, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %bb.et, %bb.er, %bb.ai, %bb.ag
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ag ], [ %i.ek, %bb.ah ], [ %i.el, %bb.ai ], [ %.pn219.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %.pn165, %bb.al ], [ %i.li, %bb.ca ], [ %i.qk, %bb.dh ], [ %i.to, %bb.eb ], [ %i.la, %bb.bu ], [ %i.lb, %bb.bv ], [ %i.lc, %bb.bw ], [ %.pn204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ], [ %i.lh, %bb.bz ], [ %.pn206.pn.pn, %bb.cv ], [ %i.qc, %bb.db ], [ %i.qd, %bb.dc ], [ %i.qe, %bb.dd ], [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ], [ %i.qj, %bb.dg ], [ %.pn196.pn, %bb.dt ], [ %i.tm, %bb.dz ], [ %i.tn, %bb.ea ], [ %i.wn, %bb.ex ], [ %i.wf, %bb.er ], [ %i.wg, %bb.es ], [ %i.wh, %bb.et ], [ %.pn167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ], [ %i.wm, %bb.ew ], [ %.pn171.pn.pn, %bb.fc ], [ %i.tu, %bb.ef ], [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ], [ %i.tt, %bb.ee ], [ %.pn184.pn.pn, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.s, %bb.fi, %bb.x, %bb.m
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn.pn, %bb.s ], [ %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fi ], [ %i.cq, %bb.x ]
  %i.yn = load ptr, ptr %27, align 8, !tbaa !32   ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.yp = icmp eq ptr %i.yn, %i.yo
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.fj
  %i.yq = load i64, ptr %i.yo, align 8, !tbaa !33
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yn, i64 noundef %i.yr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
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
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !151
  store i64 500, ptr %i.d, align 8, !tbaa !152
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

end_hunk_0
