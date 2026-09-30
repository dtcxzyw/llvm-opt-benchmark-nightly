Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatVF?download=true
inline.NumInlined: 978
inline.NumDeleted: 386
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
          cleanup
  br label %bb.dn

bb.dj:                                            ; preds = %bb.cz, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit371, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369, %bb.cy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %.noexc.i388, %bb.dd
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

bb.dl:                                            ; preds = %._crit_edge.i.i392
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = load ptr, ptr %31, align 8, !tbaa !26   ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.vy
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.dl
  %i.wm = load i64, ptr %i.vy, align 8, !tbaa !21
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.wo = load ptr, ptr %29, align 8, !tbaa !26   ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.vm
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.wq = load i64, ptr %i.vm, align 8, !tbaa !21
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413, %bb.dk
  %.pn102.pn = phi { ptr, i32 } [ %i.wi, %bb.dk ], [ %i.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413 ], [ %i.wj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ] ; 2 uses
  %i.ws = load ptr, ptr %30, align 8, !tbaa !26   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.uu
  br i1 %i.wt, label %.body384, label %.body384.sink.split

.body384.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %bb.db
  %.sink799 = phi ptr [ %i.vi, %bb.db ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  %.pn102.pn.pn.ph = phi { ptr, i32 } [ %i.vh, %bb.db ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  %i.wu = load i64, ptr %i.uu, align 8, !tbaa !21
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %.sink799, i64 noundef %i.wv) #24
  br label %.body384

.body384:                                         ; preds = %.body384.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %bb.db
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.vh, %bb.db ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ], [ %.pn102.pn.pn.ph, %.body384.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.dm

bb.dm:                                            ; preds = %.body384, %bb.dj
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %.body384 ], [ %i.wh, %bb.dj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %28) #23
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di
  %.pn102.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.dm ], [ %i.wg, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body439

bb.do:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit367
  %i.ww = icmp eq i32 %i.uc, 0
  br i1 %i.ww, label %.noexc.i420, label %bb.dr

.noexc.i420:                                      ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr %i.wx, ptr %32, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 24, ptr %i.a, align 8, !tbaa !36
  %i.wy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc421 unwind label %bb.dp ; 2 uses

.noexc421:                                        ; preds = %.noexc.i420
  store ptr %i.wy, ptr %32, align 8, !tbaa !26
  %i.wz = load i64, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  store i64 %i.wz, ptr %i.wx, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.wy, ptr noundef nonnull align 1 dereferenceable(24) @.str.22, i64 24, i1 false)
  %i.xa = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.wz, ptr %i.xa, align 8, !tbaa !20
  %i.xb = load ptr, ptr %32, align 8, !tbaa !26
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wz
  store i8 0, ptr %i.xc, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.xd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  store ptr %i.xd, ptr %33, align 8, !tbaa !17
  %i.xe = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.xe, align 8, !tbaa !20
  store i8 0, ptr %i.xd, align 8, !tbaa !21
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %.unreachable492 unwind label %bb.dq

.unreachable492:                                  ; preds = %.noexc421
  unreachable

bb.dp:                                            ; preds = %.noexc.i420
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

bb.dq:                                            ; preds = %.noexc421
  %i.xg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xh = load ptr, ptr %33, align 8, !tbaa !26   ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.xd
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %bb.dq
  %i.xj = load i64, ptr %i.xd, align 8, !tbaa !21
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.xl = load ptr, ptr %32, align 8, !tbaa !26   ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.wx
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.xn = load i64, ptr %i.wx, align 8, !tbaa !21
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %bb.dp
  %.pn108.pn = phi { ptr, i32 } [ %i.xf, %bb.dp ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %.body439

bb.dr:                                            ; preds = %bb.do
  %i.xp = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22
          to label %bb.ds unwind label %bb.dy     ; 17 uses

bb.ds:                                            ; preds = %bb.dr
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.xq, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.xp, align 16, !tbaa !13
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.xr, i8 0, i64 145, i1 false)
  %i.xs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.dx unwind label %bb.dt     ; 6 uses

bb.dt:                                            ; preds = %bb.ds
  %i.xt = landingpad { ptr, i32 }
          catch ptr null
  %i.xu = extractvalue { ptr, i32 } %i.xt, 0
  %i.xv = call ptr @__cxa_begin_catch(ptr %i.xu) #23 ; 0 uses
  %i.xw = load ptr, ptr %i.xp, align 16, !tbaa !13
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(153) %i.xp) #23, !inline_history !112
  invoke void @__cxa_rethrow() #25
          to label %bb.dw unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body439 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ya = landingpad { ptr, i32 }
          catch ptr null
  %i.yb = extractvalue { ptr, i32 } %i.ya, 0
  call void @__clang_call_terminate(ptr %i.yb) #26
  unreachable

bb.dw:                                            ; preds = %bb.dt
  unreachable

bb.dx:                                            ; preds = %bb.ds
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  store i32 1, ptr %i.yc, align 8, !tbaa !56
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 12
  store i32 1, ptr %i.yd, align 4, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.xs, align 8, !tbaa !13
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  store ptr %i.xp, ptr %i.ye, align 8, !tbaa !60
  %i.yf = load ptr, ptr %i.dn, align 8, !tbaa !51
  %i.yg = load ptr, ptr %11, align 8, !tbaa !50   ; 14 uses
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = icmp eq i64 %i.yj, 64
  br i1 %i.yk, label %.preheader, label %bb.dz

.preheader:                                       ; preds = %bb.dx
  %i.yl = load i32, ptr %i.dp, align 8, !tbaa !44
  %i.ym = sitofp i32 %i.yl to float               ; 4 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %34 = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %35 = load float, ptr %34, align 4, !tbaa !54
  %36 = fmul float %35, %i.ym                     ; 2 uses
  store float %36, ptr %34, align 4, !tbaa !54
  %37 = load <2 x i32>, ptr %i.k, align 8, !tbaa !44
  %38 = sitofp <2 x i32> %37 to <2 x float>       ; 4 uses
  %39 = load <2 x float>, ptr %i.yg, align 4, !tbaa !54
  %40 = fmul <2 x float> %39, %38                 ; 2 uses
  store <2 x float> %40, ptr %i.yg, align 4, !tbaa !54
  %i.yo = fpext <2 x float> %40 to <2 x double>
  store <2 x double> %i.yo, ptr %i.yn, align 8, !tbaa !130
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xp, i64 40
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !54
  %i.ys = insertelement <2 x float> poison, float %36, i64 0
  %i.yt = insertelement <2 x float> %i.ys, float %i.yr, i64 1
  %i.yu = fpext <2 x float> %i.yt to <2 x double>
  store <2 x double> %i.yu, ptr %i.yp, align 8, !tbaa !130
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %i.yg, i64 24 ; 2 uses
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = fmul float %42, %i.ym                     ; 2 uses
  store float %43, ptr %41, align 4, !tbaa !54
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xp, i64 56
  %44 = load <2 x float>, ptr %i.yv, align 4, !tbaa !54
  %45 = fmul <2 x float> %44, %38                 ; 2 uses
  store <2 x float> %45, ptr %i.yv, align 4, !tbaa !54
  %i.yx = fpext <2 x float> %45 to <2 x double>
  store <2 x double> %i.yx, ptr %i.yw, align 8, !tbaa !130
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yg, i64 28
  %i.za = load float, ptr %i.yz, align 4, !tbaa !54
  %i.zb = insertelement <2 x float> poison, float %43, i64 0
  %i.zc = insertelement <2 x float> %i.zb, float %i.za, i64 1
  %i.zd = fpext <2 x float> %i.zc to <2 x double>
  store <2 x double> %i.zd, ptr %i.yy, align 8, !tbaa !130
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yg, i64 32 ; 2 uses
  %46 = getelementptr inbounds nuw i8, ptr %i.yg, i64 40 ; 2 uses
  %47 = load float, ptr %46, align 4, !tbaa !54
  %48 = fmul float %47, %i.ym                     ; 2 uses
  store float %48, ptr %46, align 4, !tbaa !54
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xp, i64 88
  %49 = load <2 x float>, ptr %i.ze, align 4, !tbaa !54
  %50 = fmul <2 x float> %49, %38                 ; 2 uses
  store <2 x float> %50, ptr %i.ze, align 4, !tbaa !54
  %i.zg = fpext <2 x float> %50 to <2 x double>
  store <2 x double> %i.zg, ptr %i.zf, align 8, !tbaa !130
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xp, i64 104
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yg, i64 44
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !54
  %i.zk = insertelement <2 x float> poison, float %48, i64 0
  %i.zl = insertelement <2 x float> %i.zk, float %i.zj, i64 1
  %i.zm = fpext <2 x float> %i.zl to <2 x double>
  store <2 x double> %i.zm, ptr %i.zh, align 8, !tbaa !130
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yg, i64 48 ; 2 uses
  %51 = getelementptr inbounds nuw i8, ptr %i.yg, i64 56 ; 2 uses
  %52 = load float, ptr %51, align 4, !tbaa !54
  %53 = fmul float %52, %i.ym                     ; 2 uses
  store float %53, ptr %51, align 4, !tbaa !54
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xp, i64 120
  %54 = load <2 x float>, ptr %i.zn, align 4, !tbaa !54
  %55 = fmul <2 x float> %54, %38                 ; 2 uses
  store <2 x float> %55, ptr %i.zn, align 4, !tbaa !54
  %i.zp = fpext <2 x float> %55 to <2 x double>
  store <2 x double> %i.zp, ptr %i.zo, align 8, !tbaa !130
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xp, i64 136
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yg, i64 60
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !54
  %i.zt = insertelement <2 x float> poison, float %53, i64 0
  %i.zu = insertelement <2 x float> %i.zt, float %i.zs, i64 1
  %i.zv = fpext <2 x float> %i.zu to <2 x double>
  store <2 x double> %i.zv, ptr %i.zq, align 8, !tbaa !130
  %i.zw = getelementptr inbounds nuw i8, ptr %i.xp, i64 152
  store i8 1, ptr %i.zw, align 8, !tbaa !69
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %.body439

bb.dz:                                            ; preds = %.preheader, %bb.dx
  %i.zy = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc441 unwind label %bb.ei ; 6 uses

.noexc441:                                        ; preds = %bb.dz
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  store i32 1, ptr %i.zz, align 8, !tbaa !56, !noalias !131
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  store i32 1, ptr %i.aaa, align 4, !tbaa !57, !noalias !131
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.zy, align 8, !tbaa !13, !noalias !131
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 16 ; 2 uses
  %i.aac = load i32, ptr %i.k, align 8, !tbaa !44, !noalias !131
  %i.aad = sext i32 %i.aac to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.aab, i64 noundef %i.aad)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !131

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc441
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef 248) #24, !noalias !131
  br label %.body442

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc441
  store ptr %i.aab, ptr %i.xr, align 8, !tbaa !132
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.xp, i64 16 ; 2 uses
  %i.aag = load ptr, ptr %i.aaf, align 16, !tbaa !70 ; 8 uses
  store ptr %i.zy, ptr %i.aaf, align 16, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8 ; 4 uses
  %i.aai = load atomic i64, ptr %i.aah acquire, align 8 ; 2 uses
  %i.aaj = icmp eq i64 %i.aai, 4294967297
  %i.aak = trunc i64 %i.aai to i32                ; 2 uses
  br i1 %i.aaj, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.aah, align 8, !tbaa !56
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 12
  store i32 0, ptr %i.aal, align 4, !tbaa !57
  %i.aam = load ptr, ptr %i.aag, align 8, !tbaa !13
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8
  call void %i.aao(ptr noundef nonnull align 8 dereferenceable(16) %i.aag) #23, !inline_history !1
  %i.aap = load ptr, ptr %i.aag, align 8, !tbaa !13
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aar = load ptr, ptr %i.aaq, align 8
  call void %i.aar(ptr noundef nonnull align 8 dereferenceable(16) %i.aag) #23, !inline_history !1
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ec:                                            ; preds = %bb.ea
  %i.aas = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i444 = icmp eq i8 %i.aas, 0
  br i1 %.not.i.i.i.i.i444, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aat = add nsw i32 %i.aak, -1
  store i32 %i.aat, ptr %i.aah, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.aau = atomicrmw volatile add ptr %i.aah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i = phi i32 [ %i.aak, %bb.ed ], [ %i.aau, %bb.ee ]
  %i.aav = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aav, label %bb.ef, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aag) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.eb, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.aaw = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.aaw, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.aax = load ptr, ptr %i.xr, align 8, !tbaa !72
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.aax, i32 noundef %4)
          to label %bb.ek unwind label %bb.ej

bb.ei:                                            ; preds = %bb.dz
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %.body442

bb.ej:                                            ; preds = %bb.ek, %bb.eh, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %.body442

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %i.aba = load ptr, ptr %i.xr, align 8, !tbaa !72 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 228
  store i32 8, ptr %i.abb, align 4, !tbaa !158
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 200
  %i.abd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.abc, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ej ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ek
  store ptr %i.xp, ptr %0, align 8, !tbaa !75
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xs, ptr %i.abe, align 8, !tbaa !70
  %i.abf = load ptr, ptr %11, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i452 = icmp eq ptr %i.abf, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIfSaIfEED2Ev.exit453, label %bb.el

bb.el:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.abg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !52
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abf to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abf, i64 noundef %i.abk) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit453

_ZNSt6vectorIfSaIfEED2Ev.exit453:                 ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.abl = load ptr, ptr %10, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i454 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorIfSaIfEED2Ev.exit455, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit453
  %i.abm = load ptr, ptr %i.dq, align 8, !tbaa !52
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.abl to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.abl, i64 noundef %i.abp) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit455

_ZNSt6vectorIfSaIfEED2Ev.exit455:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit453, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.abq = load ptr, ptr %5, align 8, !tbaa !26   ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.u
  br i1 %i.abr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455
  %i.abs = load i64, ptr %i.u, align 8, !tbaa !21
  %i.abt = add i64 %i.abs, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

.body442:                                         ; preds = %bb.ei, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ej
  %.pn111 = phi { ptr, i32 } [ %i.aaz, %bb.ej ], [ %i.aay, %bb.ei ], [ %i.aae, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.xs) #23
  br label %.body439

.body439:                                         ; preds = %.body442, %bb.du, %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %bb.dn, %_ZNSt6vectorIfSaIfEED2Ev.exit409
  %.pn140.pn = phi { ptr, i32 } [ %.pn140, %_ZNSt6vectorIfSaIfEED2Ev.exit409 ], [ %.pn102.pn.pn.pn.pn, %bb.dn ], [ %.pn108.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn111, %.body442 ], [ %i.xz, %bb.du ], [ %i.zx, %bb.dy ]
  %i.abu = load ptr, ptr %11, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i459 = icmp eq ptr %i.abu, null
  br i1 %.not.i.i.i459, label %_ZNSt6vectorIfSaIfEED2Ev.exit460, label %bb.en

bb.en:                                            ; preds = %.body439
  %i.abv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !52
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = ptrtoint ptr %i.abu to i64
  %i.abz = sub i64 %i.abx, %i.aby
  call void @_ZdlPvm(ptr noundef nonnull %i.abu, i64 noundef %i.abz) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit460

_ZNSt6vectorIfSaIfEED2Ev.exit460:                 ; preds = %.body439, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.aca = load ptr, ptr %10, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i461 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i461, label %_ZNSt6vectorIfSaIfEED2Ev.exit462, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit460
  %i.acb = load ptr, ptr %i.dq, align 8, !tbaa !52
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = ptrtoint ptr %i.aca to i64
  %i.ace = sub i64 %i.acc, %i.acd
  call void @_ZdlPvm(ptr noundef nonnull %i.aca, i64 noundef %i.ace) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit462

_ZNSt6vectorIfSaIfEED2Ev.exit462:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit460, %bb.eo
end_hunk_0
