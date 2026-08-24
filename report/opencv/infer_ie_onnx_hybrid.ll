Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/infer_ie_onnx_hybrid?download=true
inline.NumInlined: 4108
inline.NumDeleted: 2200
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@main:._crit_edge.i.i
  %i.ri = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #29
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #29
  br label %bb.if

bb.dg:                                            ; preds = %_ZN2cv6GArrayINS_5Rect_IiEEEC2ERKS3_.exit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv6GArrayINS_5Rect_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %45) #29
  br label %bb.ie

bb.dh:                                            ; preds = %bb.bo
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.di:                                            ; preds = %bb.bp
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dj:                                            ; preds = %bb.bq
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.br
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #29
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn66 = phi { ptr, i32 } [ %i.rn, %bb.dk ], [ %i.rm, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @_ZN2cv12GComputationD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #29
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %bb.dl ], [ %i.rl, %bb.di ]
  call void @_ZN2cv12GIOProtoArgsINS_7Out_TagEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %49) #29
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dh
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %bb.dm ], [ %i.rk, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  call void @_ZN2cv12GIOProtoArgsINS_6In_TagEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %48) #29
  br label %.body212

.body212:                                         ; preds = %bb.bn, %bb.dn
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %.pn66.pn.pn, %bb.dn ], [ %i.kl, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.id

bb.do:                                            ; preds = %_ZN2cv12GIOProtoArgsINS_6In_TagEED2Ev.exit
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.dp:                                            ; preds = %bb.cg
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %bb.ch
  %i.rq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv7GRunArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %52) #29
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn71 = phi { ptr, i32 } [ %i.rq, %bb.dq ], [ %i.rp, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  br label %bb.ib

bb.ds:                                            ; preds = %_ZNSt6vectorIN2cv7GRunArgESaIS1_EED2Ev.exit
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

.loopexit:                                        ; preds = %.lr.ph.i.i.i280
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.ey, %bb.ex, %bb.el, %bb.dx, %bb.cx, %bb.cs
  %lpad.loopexit399 = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc384, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc382, %bb.fg, %bb.fe, %_ZNSolsEd.exit, %bb.fd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.noexc298, %bb.fc, %bb.cl, %_ZN2cv9TickMeter5startEv.exit
  %lpad.loopexit.split-lp400 = landingpad { ptr, i32 }
          cleanup
  br label %.body241

bb.dt:                                            ; preds = %bb.cm
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.cn
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv4util7variantIJPNS1_8optionalINS0_3MatEEEPNS3_INS0_4RMatEEEPNS3_INS0_10MediaFrameEEEPNS3_INS0_7Scalar_IdEEEENS0_6detail6OptRefINSH_9VectorRefEEENSI_INSH_9OpaqueRefEEEEEESaISN_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %60) #29
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn73 = phi { ptr, i32 } [ %i.rt, %bb.du ], [ %i.rs, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  br label %.body241

bb.dw:                                            ; preds = %bb.cx, %bb.cr
  %i.ru = load i64, ptr %53, align 8, !tbaa !161
  %i.rv = icmp eq i64 %i.ru, 1
  br i1 %i.rv, label %bb.dx, label %bb.ey

bb.dx:                                            ; preds = %bb.dw
  %i.rw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %56, ptr noundef nonnull align 8 dereferenceable(208) %i.nx)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.rx = load ptr, ptr %i.ny, align 8, !tbaa !175 ; 2 uses
  %i.ry = load ptr, ptr %57, align 8, !tbaa !178  ; 3 uses
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = ashr exact i64 %i.sb, 4
  %i.sd = load ptr, ptr %i.nz, align 8, !tbaa !179
  %i.se = load ptr, ptr %58, align 8, !tbaa !182
  %i.sf = ptrtoint ptr %i.sd to i64
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = sub i64 %i.sf, %i.sg
  %i.si = sdiv exact i64 %i.sh, 208
  %i.sj = icmp eq i64 %i.sc, %i.si
  br i1 %i.sj, label %.preheader.i, label %bb.dz

.preheader.i:                                     ; preds = %bb.dy
  %.not76.i = icmp eq ptr %i.ry, %i.rx
  br i1 %.not76.i, label %.loopexit398, label %.lr.ph.i.i.i280

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN6labels12_GLOBAL__N_111DrawResultsERN2cv3MatERKSt6vectorINS1_5Rect_IiEESaIS6_EERKS4_IS2_SaIS2_EE, ptr noundef nonnull @.str.18, i32 noundef 99) #28
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  unreachable

bb.ec:                                            ; preds = %bb.dz
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277

bb.ed:                                            ; preds = %bb.ea
  %i.sl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sm = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278: ; preds = %bb.ed
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !17
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i277: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278, %bb.ec
  %.pn.i = phi { ptr, i32 } [ %i.sk, %bb.ec ], [ %i.sl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i278 ], [ %i.sl, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.body241

.lr.ph.i.i.i280:                                  ; preds = %.preheader.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %.sroa.064.077.i = phi ptr [ %i.wt, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %i.ry, %.preheader.i ] ; 8 uses
  %i.sr = load ptr, ptr %57, align 8, !tbaa !183
  %i.ss = ptrtoint ptr %.sroa.064.077.i to i64
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = ashr exact i64 %i.su, 4
  %i.sw = load ptr, ptr %58, align 8, !tbaa !182
  %i.sx = getelementptr inbounds nuw [208 x i8], ptr %i.sw, i64 %i.sv
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !184 ; 8 uses
  %i.ta = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc282 unwind label %.loopexit ; 14 uses

.noexc282:                                        ; preds = %.lr.ph.i.i.i280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ta, i8 0, i64 32, i1 false), !tbaa !191, !noalias !192
  %i.tb = load float, ptr %i.sz, align 4, !tbaa !191, !noalias !192
  %i.tc = call noundef float @expf(float noundef %i.tb) #29, !noalias !192 ; 3 uses
  store float %i.tc, ptr %i.ta, align 4, !tbaa !191, !noalias !192
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 3 uses
  %.07.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.te = load float, ptr %.07.i.i.ptr.1.i, align 4, !tbaa !191, !noalias !192
  %i.tf = call noundef float @expf(float noundef %i.te) #29, !noalias !192 ; 3 uses
  store float %i.tf, ptr %i.td, align 4, !tbaa !191, !noalias !192
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 3 uses
  %.07.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.th = load float, ptr %.07.i.i.ptr.2.i, align 4, !tbaa !191, !noalias !192
  %i.ti = call noundef float @expf(float noundef %i.th) #29, !noalias !192 ; 3 uses
  store float %i.ti, ptr %i.tg, align 4, !tbaa !191, !noalias !192
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 12 ; 3 uses
  %.07.i.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 12
  %i.tk = load float, ptr %.07.i.i.ptr.3.i, align 4, !tbaa !191, !noalias !192
  %i.tl = call noundef float @expf(float noundef %i.tk) #29, !noalias !192 ; 3 uses
  store float %i.tl, ptr %i.tj, align 4, !tbaa !191, !noalias !192
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 3 uses
  %.07.i.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tn = load float, ptr %.07.i.i.ptr.4.i, align 4, !tbaa !191, !noalias !192
  %i.to = call noundef float @expf(float noundef %i.tn) #29, !noalias !192 ; 3 uses
  store float %i.to, ptr %i.tm, align 4, !tbaa !191, !noalias !192
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ta, i64 20 ; 2 uses
  %.07.i.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 20
  %i.tq = load float, ptr %.07.i.i.ptr.5.i, align 4, !tbaa !191, !noalias !192
  %i.tr = call noundef float @expf(float noundef %i.tq) #29, !noalias !192 ; 3 uses
  store float %i.tr, ptr %i.tp, align 4, !tbaa !191, !noalias !192
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ta, i64 24 ; 2 uses
  %.07.i.i.ptr.6.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tt = load float, ptr %.07.i.i.ptr.6.i, align 4, !tbaa !191, !noalias !192
  %i.tu = call noundef float @expf(float noundef %i.tt) #29, !noalias !192 ; 3 uses
  store float %i.tu, ptr %i.ts, align 4, !tbaa !191, !noalias !192
  %.07.i.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 28
  %i.tv = load float, ptr %.07.i.i.ptr.7.i, align 4, !tbaa !191, !noalias !192
  %i.tw = call noundef float @expf(float noundef %i.tv) #29, !noalias !192 ; 2 uses
  %i.tx = fadd float %i.tc, 0.000000e+00
  %i.ty = fadd float %i.tx, %i.tf
  %i.tz = fadd float %i.ty, %i.ti
  %i.ua = fadd float %i.tz, %i.tl
  %i.ub = fadd float %i.ua, %i.to
  %i.uc = fadd float %i.ub, %i.tr
  %i.ud = fadd float %i.uc, %i.tu
  %i.ue = fadd float %i.ud, %i.tw                 ; 5 uses
  %65 = fdiv float %i.tc, %i.ue                   ; 3 uses
  store float %65, ptr %i.ta, align 4, !tbaa !191, !noalias !192
  %66 = fdiv float %i.tf, %i.ue                   ; 3 uses
  store float %66, ptr %i.td, align 4, !tbaa !191, !noalias !192
  %67 = fdiv float %i.ti, %i.ue                   ; 3 uses
  store float %67, ptr %i.tg, align 4, !tbaa !191, !noalias !192
  %68 = fdiv float %i.tl, %i.ue                   ; 3 uses
  store float %68, ptr %i.tj, align 4, !tbaa !191, !noalias !192
  %69 = insertelement <4 x float> poison, float %i.to, i64 0
  %i.uf = insertelement <4 x float> %69, float %i.tr, i64 1
  %i.ug = insertelement <4 x float> %i.uf, float %i.tu, i64 2
  %i.uh = insertelement <4 x float> %i.ug, float %i.tw, i64 3
  %i.ui = insertelement <4 x float> poison, float %i.ue, i64 0
  %70 = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uj = fdiv <4 x float> %i.uh, %70             ; 5 uses
  store <4 x float> %i.uj, ptr %i.tm, align 4, !tbaa !191, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i64 0, ptr %i.ob, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !195
  store ptr %56, ptr %i.oa, align 8, !tbaa !198
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.064.077.i, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.064.077.i, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %11, align 16, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oc, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 4, i32 noundef 8, i32 noundef 0)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %.noexc282
  %.sroa.02.06.i.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %i.ta, i64 28
  %i.uk = ptrtoint ptr %i.ta to i64
  %i.ul = fcmp olt float %65, %66                 ; 2 uses
  %i.um = select i1 %i.ul, float %66, float %65   ; 2 uses
  %i.un = fcmp olt float %i.um, %67               ; 2 uses
  %i.uo = select i1 %i.un, float %67, float %i.um ; 2 uses
  %i.up = fcmp olt float %i.uo, %68               ; 2 uses
  %i.uq = select i1 %i.up, float %68, float %i.uo ; 2 uses
  %i.ur = extractelement <4 x float> %i.uj, i64 0 ; 2 uses
  %i.us = fcmp olt float %i.uq, %i.ur             ; 2 uses
  %i.ut = select i1 %i.us, float %i.ur, float %i.uq ; 2 uses
  %i.uu = extractelement <4 x float> %i.uj, i64 1 ; 2 uses
  %i.uv = fcmp olt float %i.ut, %i.uu             ; 2 uses
  %i.uw = select i1 %i.uv, float %i.uu, float %i.ut ; 2 uses
  %i.ux = extractelement <4 x float> %i.uj, i64 2 ; 2 uses
  %i.uy = fcmp olt float %i.uw, %i.ux             ; 2 uses
  %i.uz = select i1 %i.uy, float %i.ux, float %i.uw
  %i.va = extractelement <4 x float> %i.uj, i64 3
  %i.vb = fcmp olt float %i.uz, %i.va
  %spec.select.i.i.i = select i1 %i.ul, ptr %i.td, ptr %i.ta
  %spec.select.i.i.1.i = select i1 %i.un, ptr %i.tg, ptr %spec.select.i.i.i
  %spec.select.i.i.2.i = select i1 %i.up, ptr %i.tj, ptr %spec.select.i.i.1.i
  %spec.select.i.i.3.i = select i1 %i.us, ptr %i.tm, ptr %spec.select.i.i.2.i
  %spec.select.i.i.4.i = select i1 %i.uv, ptr %i.tp, ptr %spec.select.i.i.3.i
  %spec.select.i.i.5.i = select i1 %i.uy, ptr %i.ts, ptr %spec.select.i.i.4.i
  %spec.select.i.i.6.i = select i1 %i.vb, ptr %.sroa.02.06.i.i.ptr.7.i, ptr %spec.select.i.i.5.i
  %i.vc = ptrtoint ptr %spec.select.i.i.6.i to i64
  %i.vd = sub i64 %i.vc, %i.uk
  %i.ve = ashr exact i64 %i.vd, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 0, ptr %i.oe, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !195
  store ptr %56, ptr %i.od, align 8, !tbaa !198
  %i.vf = getelementptr inbounds [32 x i8], ptr @_ZN6labelsL8emotionsB5cxx11E, i64 %i.ve ; 3 uses
  %i.vg = load i32, ptr %.sroa.064.077.i, align 4, !tbaa !201
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.064.077.i, i64 4 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !203
  %i.vj = add nsw i32 %i.vi, -15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.of, align 8, !tbaa !199
  %.sroa.2.0.insert.ext.i = zext i32 %i.vj to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.vg to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.vf, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5, double noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %13, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
          to label %bb.ef unwind label %bb.ek

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.vk = load ptr, ptr %i.vf, align 16, !tbaa !15
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !18
  %i.vn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.vk, i64 noundef %i.vm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.i ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.ef
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef nonnull @.str.27, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %.noexc.i281 unwind label %.loopexit.i ; 0 uses

.noexc.i281:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.vq = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !204
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, i32 noundef %i.vq)
          to label %.noexc39.i unwind label %.loopexit.i ; 2 uses

.noexc39.i:                                       ; preds = %.noexc.i281
  %i.vs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vr, ptr noundef nonnull @.str.30, i64 noundef 3)
          to label %.noexc40.i unwind label %.loopexit.i ; 0 uses

.noexc40.i:                                       ; preds = %.noexc39.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.064.077.i, i64 12
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !205
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vr, i32 noundef %i.vu)
          to label %.noexc41.i unwind label %.loopexit.i ; 2 uses

.noexc41.i:                                       ; preds = %.noexc40.i
  %i.vw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull @.str.31, i64 noundef 7)
          to label %.noexc42.i unwind label %.loopexit.i ; 0 uses

.noexc42.i:                                       ; preds = %.noexc41.i
  %i.vx = load i32, ptr %.sroa.064.077.i, align 4, !tbaa !201
  %i.vy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, i32 noundef %i.vx)
          to label %.noexc43.i unwind label %.loopexit.i ; 2 uses

.noexc43.i:                                       ; preds = %.noexc42.i
  %i.vz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vy, ptr noundef nonnull @.str.32, i64 noundef 2)
          to label %.noexc44.i unwind label %.loopexit.i ; 0 uses

.noexc44.i:                                       ; preds = %.noexc43.i
  %i.wa = load i32, ptr %i.vh, align 4, !tbaa !203
  %i.wb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.vy, i32 noundef %i.wa)
          to label %.noexc45.i unwind label %.loopexit.i ; 4 uses

.noexc45.i:                                       ; preds = %.noexc44.i
  %i.wc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wb, ptr noundef nonnull @.str.33, i64 noundef 2)
          to label %_ZN2cvlsIiEERSoS1_RKNS_5Rect_IT_EE.exit.i unwind label %.loopexit.i ; 0 uses

_ZN2cvlsIiEERSoS1_RKNS_5Rect_IT_EE.exit.i:        ; preds = %.noexc45.i
  %i.wd = load ptr, ptr %i.wb, align 8, !tbaa !125
  %i.we = getelementptr i8, ptr %i.wd, i64 -24
  %i.wf = load i64, ptr %i.we, align 8
  %i.wg = getelementptr inbounds i8, ptr %i.wb, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 240
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i50.i = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i50.i, label %bb.eg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.eg:                                            ; preds = %_ZN2cvlsIiEERSoS1_RKNS_5Rect_IT_EE.exit.i
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc51.i unwind label %.loopexit.split-lp.i

.noexc51.i:                                       ; preds = %bb.eg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZN2cvlsIiEERSoS1_RKNS_5Rect_IT_EE.exit.i
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 56
  %i.wk = load i8, ptr %i.wj, align 8, !tbaa !221
  %.not.i1.i.i.i = icmp eq i8 %i.wk, 0
  br i1 %.not.i1.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 67
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.ei:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wi)
          to label %.noexc52.i unwind label %.loopexit.i

.noexc52.i:                                       ; preds = %bb.ei
  %i.wn = load ptr, ptr %i.wi, align 8, !tbaa !125
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 48
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = invoke noundef signext i8 %i.wp(ptr noundef nonnull align 8 dereferenceable(570) %i.wi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !inline_history !227

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc52.i, %bb.eh
  %.0.i.i.i.i = phi i8 [ %i.wm, %bb.eh ], [ %i.wq, %.noexc52.i ]
  %i.wr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wb, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc54.i unwind label %.loopexit.i

.noexc54.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.ws = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wr)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit.i unwind label %.loopexit.i ; 0 uses

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %.noexc54.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef 32) #30
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.064.077.i, i64 16 ; 2 uses
  %i.wu = load ptr, ptr %i.ny, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.wt, %i.wu
  br i1 %.not.i, label %.loopexit398, label %.lr.ph.i.i.i280, !llvm.loop !228

bb.ej:                                            ; preds = %.noexc282
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

bb.ek:                                            ; preds = %bb.ee
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

.loopexit.i:                                      ; preds = %.noexc54.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc52.i, %bb.ei, %.noexc45.i, %.noexc44.i, %.noexc43.i, %.noexc42.i, %.noexc41.i, %.noexc40.i, %.noexc39.i, %.noexc.i281, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %bb.ef
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

.loopexit.split-lp.i:                             ; preds = %bb.eg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49.i

_ZNSt6vectorIfSaIfEED2Ev.exit49.i:                ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.ek, %bb.ej
  %.pn33.pn.i = phi { ptr, i32 } [ %i.wv, %bb.ej ], [ %i.ww, %bb.ek ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef 32) #30
  br label %.body241

.loopexit398:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.wx = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.wy = icmp eq i64 %i.wx, 0
  br i1 %i.wy, label %bb.ey, label %bb.el

bb.el:                                            ; preds = %.loopexit398
  %i.wz = invoke noundef zeroext i1 @_ZNK2cv11VideoWriter8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(24) %59)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit

bb.em:                                            ; preds = %bb.el
  br i1 %i.wz, label %bb.ex, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xa = load i32, ptr %i.og, align 4, !tbaa !229
  %i.xb = load i32, ptr %i.oh, align 8, !tbaa !230
  %i.xc = invoke noundef i32 @_ZN2cv11VideoWriter6fourccEcccc(i8 noundef signext 77, i8 noundef signext 74, i8 noundef signext 80, i8 noundef signext 71)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  %.sroa.5.0.insert.ext = zext i32 %i.xb to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0386.0.insert.ext = zext i32 %i.xa to i64
end_hunk_0
