Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdAugSystemSolver?download=true
inline.NumInlined: 776
inline.NumDeleted: 262
begin_hunk_0_@_ZN5Ipopt18StdAugSystemSolver21CreateAugmentedSystemEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_:bb.a

_ZNK5Ipopt6Vector7MakeNewEv.exit191:              ; preds = %bb.dn
  %.not.i.i192 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i192, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit193, label %bb.do

bb.do:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit191
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !15
  %i.sy = add nsw i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !15
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit193

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit193:   ; preds = %bb.do, %_ZNK5Ipopt6Vector7MakeNewEv.exit191
  %i.sz = fneg double %9
  %i.ta = load ptr, ptr %i.sv, align 8, !tbaa !17
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 72
  %i.tc = load ptr, ptr %i.tb, align 8
  invoke void %i.tc(ptr noundef nonnull align 8 dereferenceable(205) %i.sv, double noundef %i.sz)
          to label %.noexc194 unwind label %bb.dt, !inline_history !200

.noexc194:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit193
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.sv)
          to label %_ZN5Ipopt6Vector3SetEd.exit196 unwind label %bb.dt

_ZN5Ipopt6Vector3SetEd.exit196:                   ; preds = %.noexc194
  %i.td = getelementptr inbounds nuw i8, ptr %i.nt, i64 80 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 4 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !15
  %i.tg = add nsw i32 %i.tf, 1
  store i32 %i.tg, ptr %i.te, align 8, !tbaa !15
  %i.th = load ptr, ptr %i.td, align 8, !tbaa !81 ; 4 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i.i197, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit196
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !15
  %i.tk = add nsw i32 %i.tj, -1                   ; 2 uses
  store i32 %i.tk, ptr %i.ti, align 8, !tbaa !15
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.tm = load ptr, ptr %i.th, align 8, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8
  tail call void %i.to(ptr noundef nonnull align 8 dereferenceable(205) %i.th) #14, !inline_history !194
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit196, %bb.dp, %bb.dq
  store ptr %i.sv, ptr %i.td, align 8, !tbaa !81
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.tp, align 4, !tbaa !95
  %i.tq = load i32, ptr %i.te, align 8, !tbaa !15
  %i.tr = add nsw i32 %i.tq, -1                   ; 2 uses
  store i32 %i.tr, ptr %i.te, align 8, !tbaa !15
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %bb.ds, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit200

bb.ds:                                            ; preds = %bb.dr
  %i.tt = load ptr, ptr %i.sv, align 8, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8
  tail call void %i.tv(ptr noundef nonnull align 8 dereferenceable(205) %i.sv) #14, !inline_history !198
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit200

bb.dt:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit193, %.noexc194
  %i.tw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !15
  %i.tz = add nsw i32 %i.ty, -1                   ; 2 uses
  store i32 %i.tz, ptr %i.tx, align 8, !tbaa !15
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.du, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

bb.du:                                            ; preds = %bb.dt
  %i.ub = load ptr, ptr %i.sv, align 8, !tbaa !17
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  tail call void %i.ud(ptr noundef nonnull align 8 dereferenceable(205) %i.sv) #14, !inline_history !198
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit200:      ; preds = %bb.ds, %bb.dr, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit187
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %9, ptr %i.ue, align 8, !tbaa !96
  %i.uf = load ptr, ptr %i.d, align 8, !tbaa !53
  invoke void @_ZN5Ipopt17CompoundSymMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(137) %i.uf, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(69) %i.nt)
          to label %bb.dv unwind label %bb.eg

bb.dv:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit200
  %i.ug = load ptr, ptr %i.d, align 8, !tbaa !53
  invoke void @_ZN5Ipopt17CompoundSymMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(137) %i.ug, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(69) %10)
          to label %bb.dw unwind label %bb.eg

bb.dw:                                            ; preds = %bb.dv
  %i.uh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !90
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.ui, ptr %i.uj, align 8, !tbaa !97
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !56
  %i.um = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #17
          to label %.noexc203 unwind label %bb.eg ; 9 uses

.noexc203:                                        ; preds = %bb.dw
  invoke void @_ZN5Ipopt14IdentityMatrixC1EPKNS_14SymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(88) %i.um, ptr noundef nonnull align 8 dereferenceable(20) %i.ul)
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %.noexc203
  %i.un = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.um, i64 noundef 88) #15
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

bb.dy:                                            ; preds = %.noexc203
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8 ; 6 uses
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !15
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.uo, align 8, !tbaa !15
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 80
  store double -1.000000e+00, ptr %i.ur, align 8, !tbaa !222
  %i.us = load ptr, ptr %i.d, align 8, !tbaa !53
  invoke void @_ZN5Ipopt17CompoundSymMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(137) %i.us, i32 noundef 3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(69) %i.um)
          to label %bb.dz unwind label %bb.eh

bb.dz:                                            ; preds = %bb.dy
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !55
  %i.uv = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #17
          to label %.noexc207 unwind label %bb.eh ; 11 uses

.noexc207:                                        ; preds = %bb.dz
  invoke void @_ZN5Ipopt10DiagMatrixC1EPKNS_14SymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(88) %i.uv, ptr noundef nonnull align 8 dereferenceable(20) %i.uu)
          to label %bb.eb unwind label %bb.ea

bb.ea:                                            ; preds = %.noexc207
  %i.uw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef 88) #15
  br label %.body208

bb.eb:                                            ; preds = %.noexc207
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 6 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !15
  %i.uz = add nsw i32 %i.uy, 1
  store i32 %i.uz, ptr %i.ux, align 8, !tbaa !15
  %.not90 = icmp eq ptr %11, null
  br i1 %.not90, label %bb.fc, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.va = fcmp oeq double %12, 0.000000e+00
  br i1 %i.va, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 80 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !15
  %i.ve = add nsw i32 %i.vd, 1
  store i32 %i.ve, ptr %i.vc, align 8, !tbaa !15
  %i.vf = load ptr, ptr %i.vb, align 8, !tbaa !81 ; 4 uses
  %.not.i.i.i.i212 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i.i212, label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit213, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !15
  %i.vi = add nsw i32 %i.vh, -1                   ; 2 uses
  store i32 %i.vi, ptr %i.vg, align 8, !tbaa !15
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.ef, label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit213

bb.ef:                                            ; preds = %bb.ee
  %i.vk = load ptr, ptr %i.vf, align 8, !tbaa !17
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8
  tail call void %i.vm(ptr noundef nonnull align 8 dereferenceable(205) %i.vf) #14, !inline_history !194
  br label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit213

_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit213: ; preds = %bb.ed, %bb.ee, %bb.ef
  store ptr %11, ptr %i.vb, align 8, !tbaa !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit226

bb.eg:                                            ; preds = %bb.dn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit200, %bb.dv, %.noexc176, %.noexc175, %bb.cs, %bb.dw
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

bb.eh:                                            ; preds = %bb.dy, %bb.dz
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %.body208

bb.ei:                                            ; preds = %bb.ec
  %i.vp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !116 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !17
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = invoke noundef ptr %i.vt(ptr noundef nonnull align 8 dereferenceable(16) %i.vq)
          to label %.noexc214 unwind label %bb.fi, !inline_history !195 ; 32 uses

.noexc214:                                        ; preds = %bb.ei
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !17
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8
  invoke void %i.vx(ptr noundef nonnull align 8 dereferenceable(205) %i.vu, ptr noundef nonnull align 8 dereferenceable(205) %11)
          to label %.noexc215 unwind label %bb.fi, !inline_history !196

.noexc215:                                        ; preds = %.noexc214
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.vu)
          to label %.noexc216 unwind label %bb.fi

.noexc216:                                        ; preds = %.noexc215
  %i.vy = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !90 ; 7 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !207
  %i.wc = icmp eq i32 %i.vz, %i.wb
  br i1 %i.wc, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.noexc216
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !90
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vu, i64 88
  store i32 %i.we, ptr %i.wf, align 8, !tbaa !207
  %i.wg = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !208
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vu, i64 96
  store double %i.wh, ptr %i.wi, align 8, !tbaa !208
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.noexc216
  %i.wj = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !209
  %i.wl = icmp eq i32 %i.vz, %i.wk
  br i1 %i.wl, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !90
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vu, i64 104
  store i32 %i.wn, ptr %i.wo, align 8, !tbaa !209
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !210
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vu, i64 112
  store double %i.wq, ptr %i.wr, align 8, !tbaa !210
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.ws = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !211
  %i.wu = icmp eq i32 %i.vz, %i.wt
  br i1 %i.wu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !90
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vu, i64 120
  store i32 %i.ww, ptr %i.wx, align 8, !tbaa !211
  %i.wy = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !212
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vu, i64 128
  store double %i.wz, ptr %i.xa, align 8, !tbaa !212
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.xb = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !213
  %i.xd = icmp eq i32 %i.vz, %i.xc
  br i1 %i.xd, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !90
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vu, i64 136
  store i32 %i.xf, ptr %i.xg, align 8, !tbaa !213
  %i.xh = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !214
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vu, i64 144
  store double %i.xi, ptr %i.xj, align 8, !tbaa !214
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.xk = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !215
  %i.xm = icmp eq i32 %i.vz, %i.xl
  br i1 %i.xm, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !90
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vu, i64 152
  store i32 %i.xo, ptr %i.xp, align 8, !tbaa !215
  %i.xq = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !216
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vu, i64 160
  store double %i.xr, ptr %i.xs, align 8, !tbaa !216
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.xt = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !217
  %i.xv = icmp eq i32 %i.vz, %i.xu
  br i1 %i.xv, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.xw = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !90
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vu, i64 168
  store i32 %i.xx, ptr %i.xy, align 8, !tbaa !217
  %i.xz = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !218
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vu, i64 176
  store double %i.ya, ptr %i.yb, align 8, !tbaa !218
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.yc = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !219
  %i.ye = icmp eq i32 %i.vz, %i.yd
  br i1 %i.ye, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !90
  %i.yh = getelementptr inbounds nuw i8, ptr %i.vu, i64 184
  store i32 %i.yg, ptr %i.yh, align 8, !tbaa !219
  %i.yi = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !220
  %i.yk = getelementptr inbounds nuw i8, ptr %i.vu, i64 192
  store double %i.yj, ptr %i.yk, align 8, !tbaa !220
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.yl = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 8 uses
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !15
  %i.yn = add nsw i32 %i.ym, 1
  store i32 %i.yn, ptr %i.yl, align 8, !tbaa !15
  %i.yo = fneg double %12
  %i.yp = load ptr, ptr %i.vu, align 8, !tbaa !17
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 152
  %i.yr = load ptr, ptr %i.yq, align 8
  invoke void %i.yr(ptr noundef nonnull align 8 dereferenceable(205) %i.vu, double noundef %i.yo)
          to label %.noexc220 unwind label %bb.fb, !inline_history !197

.noexc220:                                        ; preds = %bb.ew
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.vu)
          to label %_ZN5Ipopt6Vector9AddScalarEd.exit222 unwind label %bb.fb

_ZN5Ipopt6Vector9AddScalarEd.exit222:             ; preds = %.noexc220
  %i.ys = getelementptr inbounds nuw i8, ptr %i.uv, i64 80 ; 2 uses
  %i.yt = load i32, ptr %i.yl, align 8, !tbaa !15
  %i.yu = add nsw i32 %i.yt, 1
  store i32 %i.yu, ptr %i.yl, align 8, !tbaa !15
  %i.yv = load ptr, ptr %i.ys, align 8, !tbaa !81 ; 4 uses
  %.not.i.i.i.i223 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i.i223, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %_ZN5Ipopt6Vector9AddScalarEd.exit222
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8 ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !15
  %i.yy = add nsw i32 %i.yx, -1                   ; 2 uses
  store i32 %i.yy, ptr %i.yw, align 8, !tbaa !15
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.za = load ptr, ptr %i.yv, align 8, !tbaa !17
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  tail call void %i.zc(ptr noundef nonnull align 8 dereferenceable(205) %i.yv) #14, !inline_history !194
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN5Ipopt6Vector9AddScalarEd.exit222, %bb.ex, %bb.ey
  store ptr %i.vu, ptr %i.ys, align 8, !tbaa !81
  %i.zd = load i32, ptr %i.yl, align 8, !tbaa !15
  %i.ze = add nsw i32 %i.zd, -1                   ; 2 uses
  store i32 %i.ze, ptr %i.yl, align 8, !tbaa !15
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %bb.fa, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit226

bb.fa:                                            ; preds = %bb.ez
  %i.zg = load ptr, ptr %i.vu, align 8, !tbaa !17
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8
  tail call void %i.zi(ptr noundef nonnull align 8 dereferenceable(205) %i.vu) #14, !inline_history !198
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit226

bb.fb:                                            ; preds = %bb.ew, %.noexc220
  %i.zj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zk = load i32, ptr %i.yl, align 8, !tbaa !15
  %i.zl = add nsw i32 %i.zk, -1                   ; 2 uses
  store i32 %i.zl, ptr %i.yl, align 8, !tbaa !15
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228.sink.split, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit226:      ; preds = %bb.fa, %bb.ez, %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit213
  %i.zn = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !90
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !98
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239

bb.fc:                                            ; preds = %bb.eb
  %i.zq = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !116 ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !17
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8
  %i.zv = invoke noundef ptr %i.zu(ptr noundef nonnull align 8 dereferenceable(16) %i.zr)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit230 unwind label %bb.fi, !inline_history !199 ; 11 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit230:              ; preds = %bb.fc
  %.not.i.i231 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i231, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit232, label %bb.fd

bb.fd:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit230
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !15
  %i.zy = add nsw i32 %i.zx, 1
  store i32 %i.zy, ptr %i.zw, align 8, !tbaa !15
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit232

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit232:   ; preds = %bb.fd, %_ZNK5Ipopt6Vector7MakeNewEv.exit230
  %i.zz = fneg double %12
  %i.aaa = load ptr, ptr %i.zv, align 8, !tbaa !17
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 72
  %i.aac = load ptr, ptr %i.aab, align 8
  invoke void %i.aac(ptr noundef nonnull align 8 dereferenceable(205) %i.zv, double noundef %i.zz)
          to label %.noexc233 unwind label %bb.fj, !inline_history !200

.noexc233:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit232
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.zv)
          to label %_ZN5Ipopt6Vector3SetEd.exit235 unwind label %bb.fj

_ZN5Ipopt6Vector3SetEd.exit235:                   ; preds = %.noexc233
  %i.aad = getelementptr inbounds nuw i8, ptr %i.uv, i64 80 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 4 uses
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !15
  %i.aag = add nsw i32 %i.aaf, 1
  store i32 %i.aag, ptr %i.aae, align 8, !tbaa !15
  %i.aah = load ptr, ptr %i.aad, align 8, !tbaa !81 ; 4 uses
  %.not.i.i.i.i236 = icmp eq ptr %i.aah, null
  br i1 %.not.i.i.i.i236, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit235
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !15
  %i.aak = add nsw i32 %i.aaj, -1                 ; 2 uses
  store i32 %i.aak, ptr %i.aai, align 8, !tbaa !15
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aam = load ptr, ptr %i.aah, align 8, !tbaa !17
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8
  tail call void %i.aao(ptr noundef nonnull align 8 dereferenceable(205) %i.aah) #14, !inline_history !194
  br label %bb.fg

bb.fg:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit235, %bb.fe, %bb.ff
  store ptr %i.zv, ptr %i.aad, align 8, !tbaa !81
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.aap, align 4, !tbaa !98
  %i.aaq = load i32, ptr %i.aae, align 8, !tbaa !15
  %i.aar = add nsw i32 %i.aaq, -1                 ; 2 uses
  store i32 %i.aar, ptr %i.aae, align 8, !tbaa !15
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.fh, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239

bb.fh:                                            ; preds = %bb.fg
  %i.aat = load ptr, ptr %i.zv, align 8, !tbaa !17
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8
  tail call void %i.aav(ptr noundef nonnull align 8 dereferenceable(205) %i.zv) #14, !inline_history !198
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239

bb.fi:                                            ; preds = %bb.ei, %.noexc214, %.noexc215, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239, %bb.fc
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228

bb.fj:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit232, %.noexc233
  %i.aax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !15
  %i.aba = add nsw i32 %i.aaz, -1                 ; 2 uses
  store i32 %i.aba, ptr %i.aay, align 8, !tbaa !15
  %i.abb = icmp eq i32 %i.aba, 0
  br i1 %i.abb, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228.sink.split, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239:      ; preds = %bb.fh, %bb.fg, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit226
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %12, ptr %i.abc, align 8, !tbaa !99
  %i.abd = load ptr, ptr %i.d, align 8, !tbaa !53
  invoke void @_ZN5Ipopt17CompoundSymMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(137) %i.abd, i32 noundef 3, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(69) %i.uv)
          to label %bb.fk unwind label %bb.fi

bb.fk:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit239
  %i.abe = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 48
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !90
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.abg, ptr %i.abh, align 8, !tbaa !74
  %i.abi = load i32, ptr %i.ux, align 8, !tbaa !15
  %i.abj = add nsw i32 %i.abi, -1                 ; 2 uses
  store i32 %i.abj, ptr %i.ux, align 8, !tbaa !15
  %i.abk = icmp eq i32 %i.abj, 0
  br i1 %i.abk, label %bb.fl, label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit

bb.fl:                                            ; preds = %bb.fk
  %i.abl = load ptr, ptr %i.uv, align 8, !tbaa !17
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8
  tail call void %i.abn(ptr noundef nonnull align 8 dereferenceable(88) %i.uv) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit:    ; preds = %bb.fl, %bb.fk
  %i.abo = load i32, ptr %i.uo, align 8, !tbaa !15
  %i.abp = add nsw i32 %i.abo, -1                 ; 2 uses
  store i32 %i.abp, ptr %i.uo, align 8, !tbaa !15
  %i.abq = icmp eq i32 %i.abp, 0
  br i1 %i.abq, label %bb.fm, label %_ZN5Ipopt8SmartPtrINS_14IdentityMatrixEED2Ev.exit

bb.fm:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit
  %i.abr = load ptr, ptr %i.um, align 8, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8
  tail call void %i.abt(ptr noundef nonnull align 8 dereferenceable(88) %i.um) #14, !inline_history !202
  br label %_ZN5Ipopt8SmartPtrINS_14IdentityMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14IdentityMatrixEED2Ev.exit: ; preds = %bb.fm, %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit
  %i.abu = load i32, ptr %i.nv, align 8, !tbaa !15
  %i.abv = add nsw i32 %i.abu, -1                 ; 2 uses
  store i32 %i.abv, ptr %i.nv, align 8, !tbaa !15
  %i.abw = icmp eq i32 %i.abv, 0
  br i1 %i.abw, label %bb.fn, label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit245

bb.fn:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14IdentityMatrixEED2Ev.exit
  %i.abx = load ptr, ptr %i.nt, align 8, !tbaa !17
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8
  tail call void %i.abz(ptr noundef nonnull align 8 dereferenceable(88) %i.nt) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit245

_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit245: ; preds = %bb.fn, %_ZN5Ipopt8SmartPtrINS_14IdentityMatrixEED2Ev.exit
  %i.aca = load i32, ptr %i.he, align 8, !tbaa !15
  %i.acb = add nsw i32 %i.aca, -1                 ; 2 uses
  store i32 %i.acb, ptr %i.he, align 8, !tbaa !15
  %i.acc = icmp eq i32 %i.acb, 0
  br i1 %i.acc, label %bb.fo, label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit247

bb.fo:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit245
  %i.acd = load ptr, ptr %i.hc, align 8, !tbaa !17
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  tail call void %i.acf(ptr noundef nonnull align 8 dereferenceable(88) %i.hc) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit247

_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit247: ; preds = %bb.fo, %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit245
  %i.acg = load i32, ptr %i.ar, align 8, !tbaa !15
  %i.ach = add nsw i32 %i.acg, -1                 ; 2 uses
  store i32 %i.ach, ptr %i.ar, align 8, !tbaa !15
  %i.aci = icmp eq i32 %i.ach, 0
  br i1 %i.aci, label %bb.fp, label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit249

bb.fp:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit247
  %i.acj = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acl = load ptr, ptr %i.ack, align 8
  tail call void %i.acl(ptr noundef nonnull align 8 dereferenceable(88) %i.ap) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit249

_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit249: ; preds = %bb.fp, %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit247
  %i.acm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !15
  %i.aco = add nsw i32 %i.acn, -1                 ; 2 uses
  store i32 %i.aco, ptr %i.acm, align 8, !tbaa !15
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %bb.fq, label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit

bb.fq:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit249
  %i.acq = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acs = load ptr, ptr %i.acr, align 8
  tail call void %i.acs(ptr noundef nonnull align 8 dereferenceable(136) %i.r) #14, !inline_history !203
  br label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit:  ; preds = %_ZN5Ipopt8SmartPtrINS_10DiagMatrixEED2Ev.exit249, %bb.fq
  ret void

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228.sink.split: ; preds = %bb.fj, %bb.fb
  %.sink361 = phi ptr [ %i.vu, %bb.fb ], [ %i.zv, %bb.fj ] ; 2 uses
  %.pn95.ph = phi { ptr, i32 } [ %i.zj, %bb.fb ], [ %i.aax, %bb.fj ]
  %17 = load ptr, ptr %.sink361, align 8, !tbaa !17
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(205) %.sink361) #14
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228.sink.split, %bb.fb, %bb.fj, %bb.fi
  %.pn95 = phi { ptr, i32 } [ %i.zj, %bb.fb ], [ %i.aaw, %bb.fi ], [ %i.aax, %bb.fj ], [ %.pn95.ph, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228.sink.split ] ; 2 uses
  %i.act = load i32, ptr %i.ux, align 8, !tbaa !15
  %i.acu = add nsw i32 %i.act, -1                 ; 2 uses
  store i32 %i.acu, ptr %i.ux, align 8, !tbaa !15
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.fr, label %.body208

bb.fr:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228
  %i.acw = load ptr, ptr %i.uv, align 8, !tbaa !17
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8
  tail call void %i.acy(ptr noundef nonnull align 8 dereferenceable(88) %i.uv) #14, !inline_history !201
  br label %.body208

.body208:                                         ; preds = %bb.fr, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228, %bb.eh, %bb.ea
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95, %bb.fr ], [ %i.uw, %bb.ea ], [ %i.vo, %bb.eh ], [ %.pn95, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit228 ] ; 2 uses
  %i.acz = load i32, ptr %i.uo, align 8, !tbaa !15
  %i.ada = add nsw i32 %i.acz, -1                 ; 2 uses
  store i32 %i.ada, ptr %i.uo, align 8, !tbaa !15
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.fs, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

bb.fs:                                            ; preds = %.body208
  %i.adc = load ptr, ptr %i.um, align 8, !tbaa !17
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.ade = load ptr, ptr %i.add, align 8
  tail call void %i.ade(ptr noundef nonnull align 8 dereferenceable(88) %i.um) #14, !inline_history !202
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189:      ; preds = %bb.dm, %bb.dl, %bb.du, %bb.dt, %bb.fs, %.body208, %bb.eg, %bb.dx
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tw, %bb.du ], [ %.pn95.pn.pn, %bb.fs ], [ %i.sg, %bb.dm ], [ %.pn95.pn.pn, %.body208 ], [ %i.sg, %bb.dl ], [ %i.vn, %bb.eg ], [ %i.tw, %bb.dt ], [ %i.un, %bb.dx ] ; 2 uses
  %i.adf = load i32, ptr %i.nv, align 8, !tbaa !15
  %i.adg = add nsw i32 %i.adf, -1                 ; 2 uses
  store i32 %i.adg, ptr %i.nv, align 8, !tbaa !15
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.ft, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154

bb.ft:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189
  %i.adi = load ptr, ptr %i.nt, align 8, !tbaa !17
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8
  tail call void %i.adk(ptr noundef nonnull align 8 dereferenceable(88) %i.nt) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154:      ; preds = %bb.ca, %bb.bz, %bb.ci, %bb.ch, %bb.ft, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189, %bb.cr, %bb.cl
  %.pn95.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nd, %bb.ci ], [ %.pn95.pn.pn.pn.pn, %bb.ft ], [ %i.lo, %bb.ca ], [ %.pn95.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189 ], [ %i.lo, %bb.bz ], [ %i.ol, %bb.cr ], [ %i.nd, %bb.ch ], [ %i.nu, %bb.cl ] ; 2 uses
  %i.adl = load i32, ptr %i.he, align 8, !tbaa !15
  %i.adm = add nsw i32 %i.adl, -1                 ; 2 uses
  store i32 %i.adm, ptr %i.he, align 8, !tbaa !15
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.fu, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121

bb.fu:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154
  %i.ado = load ptr, ptr %i.hc, align 8, !tbaa !17
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8
  tail call void %i.adq(ptr noundef nonnull align 8 dereferenceable(88) %i.hc) #14, !inline_history !201
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121:      ; preds = %bb.ao, %bb.an, %bb.aw, %bb.av, %bb.fu, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154, %bb.bf, %bb.az
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %bb.aw ], [ %.pn95.pn.pn.pn.pn.pn.pn, %bb.fu ], [ %i.fb, %bb.ao ], [ %.pn95.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154 ], [ %i.fb, %bb.an ], [ %i.hu, %bb.bf ], [ %i.gq, %bb.av ], [ %i.hd, %bb.az ] ; 2 uses
  %i.adr = load i32, ptr %i.ar, align 8, !tbaa !15
  %i.ads = add nsw i32 %i.adr, -1                 ; 2 uses
  store i32 %i.ads, ptr %i.ar, align 8, !tbaa !15
  %i.adt = icmp eq i32 %i.ads, 0
  br i1 %i.adt, label %bb.fv, label %.body

bb.fv:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121
  %i.adu = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8
  tail call void %i.adw(ptr noundef nonnull align 8 dereferenceable(88) %i.ap) #14, !inline_history !201
  br label %.body

.body:                                            ; preds = %bb.fv, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121, %bb.t, %bb.n
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %i.aq, %bb.n ], [ %i.bh, %bb.t ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121 ]
  %i.adx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !15
  %i.adz = add nsw i32 %i.ady, -1                 ; 2 uses
  store i32 %i.adz, ptr %i.adx, align 8, !tbaa !15
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %bb.fw, label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262

bb.fw:                                            ; preds = %.body
  %i.aeb = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8
  tail call void %i.aed(ptr noundef nonnull align 8 dereferenceable(136) %i.r) #14, !inline_history !203
  br label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262

_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262: ; preds = %.body, %bb.fw
  resume { ptr, i32 } %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.r

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8, !tbaa !92
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.r

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !49
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load double, ptr %i.p, align 8, !tbaa !50
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.r

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load i32, ptr %i.w, align 8, !tbaa !51
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load double, ptr %i.y, align 8, !tbaa !93
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !94
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !95
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.r

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !95
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load double, ptr %i.al, align 8, !tbaa !96
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
