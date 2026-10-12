Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/termoutput?download=true
inline.NumInlined: 3127
inline.NumDeleted: 880
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %.body419
  %i.si = load i64, ptr %i.pv, align 8, !tbaa !61
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %.body419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425, %bb.ds
  %.pn196 = phi { ptr, i32 } [ %i.se, %bb.ds ], [ %eh.lpad-body420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425 ], [ %eh.lpad-body420, %.body419 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  br label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %bb.dr
  %.pn196.pn = phi { ptr, i32 } [ %.pn196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %i.sd, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %bb.fj

.noexc238:                                        ; preds = %._crit_edge754
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.sk = load ptr, ptr %56, align 8, !tbaa !60
  %i.sl = load i64, ptr %i.px, align 8, !tbaa !62
  store ptr %i.sk, ptr %24, align 16, !tbaa !61
  store i64 %i.sl, ptr %i.py, align 8, !tbaa !61
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %24)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %.noexc238
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %i.sm = load ptr, ptr %56, align 8, !tbaa !60   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.pz
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.dv
  %i.so = load i64, ptr %i.pz, align 8, !tbaa !61
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  %i.sq = add i32 %.0153755, 1                    ; 2 uses
  %exitcond782.not = icmp eq i32 %i.sq, %i.pc
  br i1 %exitcond782.not, label %.loopexit, label %bb.df, !llvm.loop !339

bb.dw:                                            ; preds = %._crit_edge754
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

bb.dx:                                            ; preds = %.noexc238
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.st = load ptr, ptr %56, align 8, !tbaa !60   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.pz
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %bb.dx
  %i.sv = load i64, ptr %i.pz, align 8, !tbaa !61
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.dw
  %.pn194 = phi { ptr, i32 } [ %i.sr, %bb.dw ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ], [ %i.ss, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  br label %bb.fj

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i346, %bb.bs
  %bcmp.i435 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0630.1, ptr noundef nonnull dereferenceable(1) @.str.30, i64 %.sroa.14637.1)
  %.not.i.i436 = icmp eq i32 %bcmp.i435, 0
  br i1 %.not.i.i436, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438, label %bb.ep

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434
  %i.sx = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load <4 x i32>, ptr %i.sy, align 8
  %i.ta = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.dz unwind label %bb.eb     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.tb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader732 unwind label %bb.ec ; 2 uses

.preheader732:                                    ; preds = %bb.dz
  %i.tc = icmp slt i32 %i.ta, %i.tb
  br i1 %i.tc, label %.lr.ph751, label %.loopexit

.lr.ph751:                                        ; preds = %.preheader732
  %i.td = shufflevector <4 x i32> %i.sz, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.te = add nsw <2 x i32> %i.td, <i32 0, i32 1>
  %.sroa.2526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.3527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.7531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.8532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.tf = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  br label %bb.ed

bb.ea:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit438
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eb:                                            ; preds = %bb.dy
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ec:                                            ; preds = %bb.dz
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ed:                                            ; preds = %.lr.ph751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %.093750 = phi i32 [ %i.ta, %.lr.ph751 ], [ %i.vk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443 ] ; 3 uses
  %i.tm = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ee unwind label %bb.ef     ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %i.tn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader731 unwind label %bb.eg ; 2 uses

.preheader731:                                    ; preds = %bb.ee
  %i.to = icmp slt i32 %i.tm, %i.tn
  br i1 %i.to, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader731
  %i.tp = add nsw i32 %.093750, 1
  br label %bb.eh

._crit_edge:                                      ; preds = %bb.ei, %.preheader731
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #32
  store ptr @.str.27, ptr %60, align 8, !tbaa !50
  store i64 7, ptr %i.tf, align 8, !tbaa !51
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %60)
          to label %.noexc235 unwind label %bb.en

bb.ef:                                            ; preds = %bb.ed
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eg:                                            ; preds = %bb.ee
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eh:                                            ; preds = %.lr.ph, %bb.ei
  %.092749 = phi i32 [ %i.tm, %.lr.ph ], [ %i.tt, %bb.ei ] ; 2 uses
  %i.ts = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.vb, %bb.ei ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #32
  %i.tt = add i32 %.092749, 1                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 %.092749, ptr %6, align 8
  store i32 %i.tt, ptr %.sroa.2526.0..sroa_idx, align 4
  store i32 %.093750, ptr %.sroa.3527.0..sroa_idx, align 8
  store i32 %i.tp, ptr %.sroa.4528.0..sroa_idx, align 4
  store <2 x i32> %i.te, ptr %.sroa.5529.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.7531.0..sroa_idx, align 8
  store i32 3, ptr %.sroa.8532.0..sroa_idx, align 4
  %i.tu = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i64 267, ptr nonnull %58, i64 16, ptr noundef nonnull %58, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc260 unwind label %bb.ej ; 0 uses

.noexc260:                                        ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.tv = load <4 x float>, ptr %58, align 16, !tbaa !61
  %i.tw = fadd <4 x float> %i.ts, %i.tv           ; 3 uses
  store <4 x float> %i.tw, ptr %58, align 16, !tbaa !61
  %i.tx = fmul <4 x float> %i.tw, splat (float 5.000000e+00)
  %bc715 = bitcast <4 x float> %i.tx to <2 x double> ; 2 uses
  %i.ty = extractelement <2 x double> %bc715, i64 0
  %i.tz = extractelement <2 x double> %bc715, i64 1
  %bc717 = bitcast double %i.ty to <2 x float>    ; 2 uses
  %i.ua = extractelement <2 x float> %bc717, i64 0
  %i.ub = extractelement <2 x float> %bc717, i64 1
  %bc719 = bitcast double %i.tz to <2 x float>    ; 2 uses
  %i.uc = extractelement <2 x float> %bc719, i64 0
  %i.ud = extractelement <2 x float> %bc719, i64 1
  %i.ue = call float @llvm.floor.f32(float %i.ua)
  %i.uf = call float @llvm.floor.f32(float %i.ub)
  %i.ug = call float @llvm.floor.f32(float %i.uc)
  %i.uh = call float @llvm.floor.f32(float %i.ud)
  %i.ui = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.uj = insertelement <2 x float> %i.ui, float %i.ug, i64 1
  %i.uk = bitcast <2 x float> %i.uj to <2 x i32>
  %i.ul = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.um = insertelement <2 x float> %i.ul, float %i.uh, i64 1
  %i.un = bitcast <2 x float> %i.um to <2 x i32>
  %i.uo = zext <2 x i32> %i.un to <2 x i64>
  %i.up = shl nuw <2 x i64> %i.uo, splat (i64 32)
  %i.uq = zext <2 x i32> %i.uk to <2 x i64>
  %i.ur = or disjoint <2 x i64> %i.up, %i.uq
  %i.us = bitcast <2 x i64> %i.ur to <4 x float>
  %i.ut = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.us) ; 2 uses
  %i.uu = insertelement <4 x i32> %i.ut, i32 -2147483648, i64 3
  %i.uv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.uu, <4 x i32> <i32 0, i32 0, i32 0, i32 -1>)
  %i.uw = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.uv, <4 x i32> <i32 5, i32 5, i32 5, i32 1>)
  %i.ux = mul nuw nsw <4 x i32> %i.uw, <i32 36, i32 6, i32 1, i32 16>
  %i.uy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ux)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  store i32 %i.uy, ptr %18, align 16, !tbaa !61
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %18)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %.noexc260
  %i.uz = sitofp <4 x i32> %i.ut to <4 x float>
  %i.va = fmul nnan <4 x float> %i.uz, splat (float 2.000000e-01)
  %i.vb = fsub <4 x float> %i.tw, %i.va
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  %exitcond.not = icmp eq i32 %i.tt, %i.tn
  br i1 %exitcond.not, label %._crit_edge, label %bb.eh, !llvm.loop !340

bb.ej:                                            ; preds = %bb.eh
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %.noexc260
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn184.pn.pn = phi { ptr, i32 } [ %i.vc, %bb.ej ], [ %i.vd, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  br label %bb.fj

.noexc235:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.ve = load ptr, ptr %59, align 8, !tbaa !60
  %i.vf = load i64, ptr %i.tg, align 8, !tbaa !62
  store ptr %i.ve, ptr %25, align 16, !tbaa !61
  store i64 %i.vf, ptr %i.th, align 8, !tbaa !61
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %25)
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %.noexc235
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.vg = load ptr, ptr %59, align 8, !tbaa !60   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.ti
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %bb.em
  %i.vi = load i64, ptr %i.ti, align 8, !tbaa !61
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  %i.vk = add i32 %.093750, 1                     ; 2 uses
  %exitcond780.not = icmp eq i32 %i.vk, %i.tb
  br i1 %exitcond780.not, label %.loopexit, label %bb.ed, !llvm.loop !341

bb.en:                                            ; preds = %._crit_edge
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.eo:                                            ; preds = %.noexc235
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vn = load ptr, ptr %59, align 8, !tbaa !60   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.ti
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.eo
  %i.vp = load i64, ptr %i.ti, align 8, !tbaa !61
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444, %bb.en
  %.pn180 = phi { ptr, i32 } [ %i.vl, %bb.en ], [ %i.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444 ], [ %i.vm, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  br label %bb.fj

bb.ep:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i401, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i369, %bb.bs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i434
  %i.vr = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.eq unwind label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load <4 x i32>, ptr %i.vs, align 8
  %i.vu = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.er unwind label %bb.et     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.vv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader723 unwind label %bb.eu ; 2 uses

.preheader723:                                    ; preds = %bb.er
  %i.vw = icmp slt i32 %i.vu, %i.vv
  br i1 %i.vw, label %.lr.ph768, label %.loopexit

.lr.ph768:                                        ; preds = %.preheader723
  %i.vx = shufflevector <4 x i32> %i.vt, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.vy = add nsw <2 x i32> %i.vx, <i32 0, i32 1>
  %.sroa.2509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.vz = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  br label %bb.ev

bb.es:                                            ; preds = %bb.ep
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.et:                                            ; preds = %bb.eq
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.eu:                                            ; preds = %bb.er
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ev:                                            ; preds = %.lr.ph768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %.091767 = phi i32 [ %i.vu, %.lr.ph768 ], [ %i.xz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ] ; 3 uses
  %i.wg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.ew unwind label %bb.ex     ; 2 uses

bb.ew:                                            ; preds = %bb.ev
  %i.wh = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.preheader722 unwind label %bb.ey ; 2 uses

.preheader722:                                    ; preds = %bb.ew
  %i.wi = icmp slt i32 %i.wg, %i.wh
  br i1 %i.wi, label %.lr.ph765, label %._crit_edge766

.lr.ph765:                                        ; preds = %.preheader722
  %i.wj = add nsw i32 %.091767, 1
  br label %bb.ez

._crit_edge766:                                   ; preds = %bb.fa, %.preheader722
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #32
  store ptr @.str.27, ptr %63, align 8, !tbaa !50
  store i64 7, ptr %i.vz, align 8, !tbaa !51
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %63)
          to label %.noexc unwind label %bb.ff

bb.ex:                                            ; preds = %bb.ev
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ey:                                            ; preds = %bb.ew
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ez:                                            ; preds = %.lr.ph765, %bb.fa
  %.0764 = phi i32 [ %i.wg, %.lr.ph765 ], [ %i.wm, %bb.fa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #32
  %i.wm = add i32 %.0764, 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.0764, ptr %5, align 8
  store i32 %i.wm, ptr %.sroa.2509.0..sroa_idx, align 4
  store i32 %.091767, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 %i.wj, ptr %.sroa.4.0..sroa_idx, align 4
  store <2 x i32> %i.vy, ptr %.sroa.5.0..sroa_idx510, align 8
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  store i32 3, ptr %.sroa.8.0..sroa_idx, align 4
  %i.wn = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i64 267, ptr nonnull %61, i64 16, ptr noundef nonnull %61, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc258 unwind label %bb.fb ; 0 uses

.noexc258:                                        ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.wo = load <4 x float>, ptr %61, align 16, !tbaa !61
  %i.wp = fmul <4 x float> %i.wo, splat (float 5.000000e+00)
  %bc = bitcast <4 x float> %i.wp to <2 x double> ; 2 uses
  %i.wq = extractelement <2 x double> %bc, i64 0
  %i.wr = extractelement <2 x double> %bc, i64 1
  %bc711 = bitcast double %i.wq to <2 x float>    ; 2 uses
  %i.ws = extractelement <2 x float> %bc711, i64 0
  %i.wt = extractelement <2 x float> %bc711, i64 1
  %bc713 = bitcast double %i.wr to <2 x float>    ; 2 uses
  %i.wu = extractelement <2 x float> %bc713, i64 0
  %i.wv = extractelement <2 x float> %bc713, i64 1
  %i.ww = call float @llvm.floor.f32(float %i.ws)
  %i.wx = call float @llvm.floor.f32(float %i.wt)
  %i.wy = call float @llvm.floor.f32(float %i.wu)
  %i.wz = call float @llvm.floor.f32(float %i.wv)
  %i.xa = insertelement <2 x float> poison, float %i.ww, i64 0
  %i.xb = insertelement <2 x float> %i.xa, float %i.wy, i64 1
  %i.xc = bitcast <2 x float> %i.xb to <2 x i32>
  %i.xd = insertelement <2 x float> poison, float %i.wx, i64 0
  %i.xe = insertelement <2 x float> %i.xd, float %i.wz, i64 1
  %i.xf = bitcast <2 x float> %i.xe to <2 x i32>
  %i.xg = zext <2 x i32> %i.xf to <2 x i64>
  %i.xh = shl nuw <2 x i64> %i.xg, splat (i64 32)
  %i.xi = zext <2 x i32> %i.xc to <2 x i64>
  %i.xj = or disjoint <2 x i64> %i.xh, %i.xi
  %i.xk = bitcast <2 x i64> %i.xj to <4 x float>
  %i.xl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.xk)
  %i.xm = insertelement <4 x i32> %i.xl, i32 -2147483648, i64 3
  %i.xn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xm, <4 x i32> <i32 0, i32 0, i32 0, i32 -1>)
  %i.xo = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.xn, <4 x i32> <i32 5, i32 5, i32 5, i32 1>)
  %i.xp = mul nuw nsw <4 x i32> %i.xo, <i32 36, i32 6, i32 1, i32 16>
  %i.xq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.xp)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i32 %i.xq, ptr %19, align 16, !tbaa !61
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.31, i64 11, i64 1, ptr nonnull %19)
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  %exitcond788.not = icmp eq i32 %i.wm, %i.wh
  br i1 %exitcond788.not, label %._crit_edge766, label %bb.ez, !llvm.loop !342

bb.fb:                                            ; preds = %bb.ez
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fc:                                            ; preds = %.noexc258
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.pn171.pn.pn = phi { ptr, i32 } [ %i.xr, %bb.fb ], [ %i.xs, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  br label %bb.fj

.noexc:                                           ; preds = %._crit_edge766
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.xt = load ptr, ptr %62, align 8, !tbaa !60
  %i.xu = load i64, ptr %i.wa, align 8, !tbaa !62
  store ptr %i.xt, ptr %26, align 16, !tbaa !61
  store i64 %i.xu, ptr %i.wb, align 8, !tbaa !61
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %26)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  %i.xv = load ptr, ptr %62, align 8, !tbaa !60   ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.wc
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %bb.fe
  %i.xx = load i64, ptr %i.wc, align 8, !tbaa !61
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  %i.xz = add i32 %.091767, 1                     ; 2 uses
  %exitcond789.not = icmp eq i32 %i.xz, %i.vv
  br i1 %exitcond789.not, label %.loopexit, label %bb.ev, !llvm.loop !343

bb.ff:                                            ; preds = %._crit_edge766
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

bb.fg:                                            ; preds = %.noexc
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yc = load ptr, ptr %62, align 8, !tbaa !60   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.wc
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467: ; preds = %bb.fg
  %i.ye = load i64, ptr %i.wc, align 8, !tbaa !61
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467, %bb.ff
  %.pn167 = phi { ptr, i32 } [ %i.ya, %bb.ff ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467 ], [ %i.yb, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  br label %bb.fj

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %.preheader732, %.preheader729, %.preheader726, %.preheader723, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.yg = load ptr, ptr @stdout, align 8, !tbaa !347
  %.not218 = icmp eq ptr %spec.select, %i.yg
  br i1 %.not218, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.loopexit
  %i.yh = call i32 @fclose(ptr noundef %spec.select) ; 0 uses
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  %i.yi = load ptr, ptr %27, align 8, !tbaa !60   ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.yk = icmp eq ptr %i.yi, %i.yj
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470: ; preds = %bb.fi
  %i.yl = load i64, ptr %i.yj, align 8, !tbaa !61
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.ym) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  ret i1 true

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %bb.eg, %bb.el, %bb.ef, %bb.ai, %bb.am, %bb.br, %bb.bw, %bb.ca, %bb.cw, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %bb.bx, %bb.bv, %bb.dd, %bb.dh, %bb.du, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %bb.de, %bb.dc, %bb.eb, %bb.ec, %bb.ea, %bb.et, %bb.ex, %bb.fd, %bb.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %bb.eu, %bb.es, %bb.aj, %bb.ah
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %i.ek, %bb.ai ], [ %i.el, %bb.aj ], [ %.pn219.pn.pn.pn.pn.pn.pn, %bb.br ], [ %.pn165, %bb.am ], [ %i.lh, %bb.cb ], [ %i.qi, %bb.di ], [ %i.tl, %bb.ec ], [ %i.kz, %bb.bv ], [ %i.la, %bb.bw ], [ %i.lb, %bb.bx ], [ %.pn204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %i.lg, %bb.ca ], [ %.pn206.pn.pn, %bb.cw ], [ %i.qa, %bb.dc ], [ %i.qb, %bb.dd ], [ %i.qc, %bb.de ], [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433 ], [ %i.qh, %bb.dh ], [ %.pn196.pn, %bb.du ], [ %i.tj, %bb.ea ], [ %i.tk, %bb.eb ], [ %i.wl, %bb.ey ], [ %i.wd, %bb.es ], [ %i.we, %bb.et ], [ %i.wf, %bb.eu ], [ %.pn167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ], [ %i.wk, %bb.ex ], [ %.pn171.pn.pn, %bb.fd ], [ %i.tr, %bb.eg ], [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ], [ %i.tq, %bb.ef ], [ %.pn184.pn.pn, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.s, %bb.fj, %bb.x, %bb.m
  %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %.pn.pn, %bb.s ], [ %.pn219.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fj ], [ %i.cq, %bb.x ]
  %i.yn = load ptr, ptr %27, align 8, !tbaa !60   ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.yp = icmp eq ptr %i.yn, %i.yo
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473: ; preds = %bb.fk
  %i.yq = load i64, ptr %i.yo, align 8, !tbaa !61
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yn, i64 noundef %i.yr) #33
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
  %i.a = load i32, ptr %3, align 4, !tbaa !45
  store i32 %i.a, ptr %7, align 16, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = load i32, ptr %4, align 4, !tbaa !45
  store i32 %i.c, ptr %i.b, align 16, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !130
  store i64 500, ptr %i.d, align 8, !tbaa !131
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %7, align 16, !tbaa !61
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66.i to i32
  %i.n = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull align 8 dereferenceable(32) %6, i32 noundef %i.m)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %bb.g ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8, !tbaa !132
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.p, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 17, ptr %i.q, align 8, !tbaa !139
end_hunk_0
