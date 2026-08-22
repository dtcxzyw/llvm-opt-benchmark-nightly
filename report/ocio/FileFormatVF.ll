Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatVF?download=true
inline.NumInlined: 978
inline.NumDeleted: 386
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  ]

bb.df:                                            ; preds = %._crit_edge.i.i387
  %i.vs = load i8, ptr %i.vk, align 1, !tbaa !17
  store i8 %i.vs, ptr %i.vr, align 1, !tbaa !17
  br label %._crit_edge.i.i392

bb.dg:                                            ; preds = %._crit_edge.i.i387
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vr, ptr nonnull align 1 %i.vk, i64 %i.vn, i1 false)
  br label %._crit_edge.i.i392

._crit_edge.i.i392:                               ; preds = %bb.dg, %bb.df, %._crit_edge.i.i387
  %i.vt = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.vt, ptr %i.vu, align 8, !tbaa !14
  %i.vv = load ptr, ptr %29, align 8, !tbaa !27
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vt
  store i8 0, ptr %i.vw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.vx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  store ptr %i.vx, ptr %31, align 8, !tbaa !10
  %i.vy = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.vy, align 8, !tbaa !14
  store i8 0, ptr %i.vx, align 8, !tbaa !17
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %.unreachable491 unwind label %bb.dl

.unreachable491:                                  ; preds = %._crit_edge.i.i392
  unreachable

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %.pn140 = phi { ptr, i32 } [ %.pn114.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ], [ %.pn133.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %.pn129.pn.pn, %bb.ba ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.pp, %bb.bz ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit500, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp501, %.loopexit.loopexit.split-lp ]
  %i.vz = load ptr, ptr %13, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i408 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i408, label %_ZNSt6vectorIfSaIfEED2Ev.exit409, label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.wa = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !86
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = ptrtoint ptr %i.vz to i64
  %i.we = sub i64 %i.wc, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %i.vz, i64 noundef %i.we) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit409

_ZNSt6vectorIfSaIfEED2Ev.exit409:                 ; preds = %.loopexit, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body439

bb.di:                                            ; preds = %bb.cx
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dj:                                            ; preds = %bb.cz, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit371, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369, %bb.cy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %.noexc.i388, %bb.dd
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

bb.dl:                                            ; preds = %._crit_edge.i.i392
  %i.wi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wj = load ptr, ptr %31, align 8, !tbaa !27   ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.vx
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.dl
  %i.wl = load i64, ptr %i.vx, align 8, !tbaa !17
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.wn = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.vl
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.wp = load i64, ptr %i.vl, align 8, !tbaa !17
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413, %bb.dk
  %.pn102.pn = phi { ptr, i32 } [ %i.wh, %bb.dk ], [ %i.wi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413 ], [ %i.wi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412 ] ; 2 uses
  %i.wr = load ptr, ptr %30, align 8, !tbaa !27   ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.ut
  br i1 %i.ws, label %.body384, label %.body384.sink.split

.body384.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %bb.db
  %.sink800 = phi ptr [ %i.vh, %bb.db ], [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  %.pn102.pn.pn.ph = phi { ptr, i32 } [ %i.vg, %bb.db ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ]
  %i.wt = load i64, ptr %i.ut, align 8, !tbaa !17
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %.sink800, i64 noundef %i.wu) #24
  br label %.body384

.body384:                                         ; preds = %.body384.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %bb.db
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.vg, %bb.db ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415 ], [ %.pn102.pn.pn.ph, %.body384.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.dm

bb.dm:                                            ; preds = %.body384, %bb.dj
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %.body384 ], [ %i.wg, %bb.dj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %28) #23
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di
  %.pn102.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn.pn, %bb.dm ], [ %i.wf, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body439

bb.do:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit367
  %i.wv = icmp eq i32 %i.ub, 0
  br i1 %i.wv, label %.noexc.i420, label %bb.dr

.noexc.i420:                                      ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.ww = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr %i.ww, ptr %32, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 24, ptr %i.a, align 8, !tbaa !37
  %i.wx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc421 unwind label %bb.dp ; 2 uses

.noexc421:                                        ; preds = %.noexc.i420
  store ptr %i.wx, ptr %32, align 8, !tbaa !27
  %i.wy = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.wx, ptr noundef nonnull align 1 dereferenceable(24) @.str.22, i64 24, i1 false)
  %i.wz = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !14
  %i.xa = load ptr, ptr %32, align 8, !tbaa !27
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.wy
  store i8 0, ptr %i.xb, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.xc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 4 uses
  store ptr %i.xc, ptr %33, align 8, !tbaa !10
  %i.xd = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.xd, align 8, !tbaa !14
  store i8 0, ptr %i.xc, align 8, !tbaa !17
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %.unreachable492 unwind label %bb.dq

.unreachable492:                                  ; preds = %.noexc421
  unreachable

bb.dp:                                            ; preds = %.noexc.i420
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

bb.dq:                                            ; preds = %.noexc421
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xg = load ptr, ptr %33, align 8, !tbaa !27   ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.xc
  br i1 %i.xh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %bb.dq
  %i.xi = load i64, ptr %i.xc, align 8, !tbaa !17
  %i.xj = add i64 %i.xi, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.xk = load ptr, ptr %32, align 8, !tbaa !27   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.ww
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.xm = load i64, ptr %i.ww, align 8, !tbaa !17
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %bb.dp
  %.pn108.pn = phi { ptr, i32 } [ %i.xe, %bb.dp ], [ %i.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %.body439

bb.dr:                                            ; preds = %bb.do
  %i.xo = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22
          to label %bb.ds unwind label %bb.dy     ; 17 uses

bb.ds:                                            ; preds = %bb.dr
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.xp, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.xo, align 8, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.xq, i8 0, i64 145, i1 false)
  %i.xr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.dx unwind label %bb.dt     ; 6 uses

bb.dt:                                            ; preds = %bb.ds
  %i.xs = landingpad { ptr, i32 }
          catch ptr null
  %i.xt = extractvalue { ptr, i32 } %i.xs, 0
  %i.xu = call ptr @__cxa_begin_catch(ptr %i.xt) #23 ; 0 uses
  %i.xv = load ptr, ptr %i.xo, align 8, !tbaa !8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8
  call void %i.xx(ptr noundef nonnull align 8 dereferenceable(153) %i.xo) #23, !inline_history !96
  invoke void @__cxa_rethrow() #25
          to label %bb.dw unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body439 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xz = landingpad { ptr, i32 }
          catch ptr null
  %i.ya = extractvalue { ptr, i32 } %i.xz, 0
  call void @__clang_call_terminate(ptr %i.ya) #26
  unreachable

bb.dw:                                            ; preds = %bb.dt
  unreachable

bb.dx:                                            ; preds = %bb.ds
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i32 1, ptr %i.yb, align 8, !tbaa !97
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  store i32 1, ptr %i.yc, align 4, !tbaa !99
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.xr, align 8, !tbaa !8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store ptr %i.xo, ptr %i.yd, align 8, !tbaa !100
  %i.ye = load ptr, ptr %i.dn, align 8, !tbaa !85
  %i.yf = load ptr, ptr %11, align 8, !tbaa !82   ; 18 uses
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = icmp eq i64 %i.yi, 64
  br i1 %i.yj, label %.preheader, label %bb.dz

.preheader:                                       ; preds = %bb.dx
  %i.yk = sitofp <2 x i32> %i.tw to <2 x float>   ; 4 uses
  %i.yl = sitofp i32 %i.ua to float               ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yf, i64 8 ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !87
  %i.yq = fmul float %i.yp, %i.yl                 ; 2 uses
  store float %i.yq, ptr %i.yo, align 4, !tbaa !87
  %i.yr = load <2 x float>, ptr %i.yf, align 4, !tbaa !87
  %i.ys = fmul <2 x float> %i.yr, %i.yk           ; 3 uses
  %i.yt = extractelement <2 x float> %i.ys, i64 0
  store float %i.yt, ptr %i.yf, align 4, !tbaa !87
  %i.yu = extractelement <2 x float> %i.ys, i64 1
  store float %i.yu, ptr %i.yn, align 4, !tbaa !87
  %i.yv = fpext <2 x float> %i.ys to <2 x double>
  store <2 x double> %i.yv, ptr %i.ym, align 8, !tbaa !103
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yf, i64 12
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !87
  %i.yz = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.za = insertelement <2 x float> %i.yz, float %i.yy, i64 1
  %i.zb = fpext <2 x float> %i.za to <2 x double>
  store <2 x double> %i.zb, ptr %i.yw, align 8, !tbaa !103
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yf, i64 16 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yf, i64 20
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yf, i64 24 ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !87
  %i.zg = fmul float %i.zf, %i.yl                 ; 2 uses
  store float %i.zg, ptr %i.ze, align 4, !tbaa !87
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xo, i64 56
  %i.zi = load <2 x float>, ptr %i.zc, align 4, !tbaa !87
  %i.zj = fmul <2 x float> %i.zi, %i.yk           ; 3 uses
  %i.zk = extractelement <2 x float> %i.zj, i64 0
  store float %i.zk, ptr %i.zc, align 4, !tbaa !87
  %i.zl = extractelement <2 x float> %i.zj, i64 1
  store float %i.zl, ptr %i.zd, align 4, !tbaa !87
  %i.zm = fpext <2 x float> %i.zj to <2 x double>
  store <2 x double> %i.zm, ptr %i.zh, align 8, !tbaa !103
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xo, i64 72
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yf, i64 28
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !87
  %i.zq = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zr = insertelement <2 x float> %i.zq, float %i.zp, i64 1
  %i.zs = fpext <2 x float> %i.zr to <2 x double>
  store <2 x double> %i.zs, ptr %i.zn, align 8, !tbaa !103
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yf, i64 32 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yf, i64 36
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yf, i64 40 ; 2 uses
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !87
  %i.zx = fmul float %i.zw, %i.yl                 ; 2 uses
  store float %i.zx, ptr %i.zv, align 4, !tbaa !87
  %i.zy = getelementptr inbounds nuw i8, ptr %i.xo, i64 88
  %i.zz = load <2 x float>, ptr %i.zt, align 4, !tbaa !87
  %i.aaa = fmul <2 x float> %i.zz, %i.yk          ; 3 uses
  %i.aab = extractelement <2 x float> %i.aaa, i64 0
  store float %i.aab, ptr %i.zt, align 4, !tbaa !87
  %i.aac = extractelement <2 x float> %i.aaa, i64 1
  store float %i.aac, ptr %i.zu, align 4, !tbaa !87
  %i.aad = fpext <2 x float> %i.aaa to <2 x double>
  store <2 x double> %i.aad, ptr %i.zy, align 8, !tbaa !103
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xo, i64 104
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yf, i64 44
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !87
  %i.aah = insertelement <2 x float> poison, float %i.zx, i64 0
  %i.aai = insertelement <2 x float> %i.aah, float %i.aag, i64 1
  %i.aaj = fpext <2 x float> %i.aai to <2 x double>
  store <2 x double> %i.aaj, ptr %i.aae, align 8, !tbaa !103
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yf, i64 48 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.yf, i64 52
  %i.aam = getelementptr inbounds nuw i8, ptr %i.yf, i64 56 ; 2 uses
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !87
  %i.aao = fmul float %i.aan, %i.yl               ; 2 uses
  store float %i.aao, ptr %i.aam, align 4, !tbaa !87
  %i.aap = getelementptr inbounds nuw i8, ptr %i.xo, i64 120
  %i.aaq = load <2 x float>, ptr %i.aak, align 4, !tbaa !87
  %i.aar = fmul <2 x float> %i.aaq, %i.yk         ; 3 uses
  %i.aas = extractelement <2 x float> %i.aar, i64 0
  store float %i.aas, ptr %i.aak, align 4, !tbaa !87
  %i.aat = extractelement <2 x float> %i.aar, i64 1
  store float %i.aat, ptr %i.aal, align 4, !tbaa !87
  %i.aau = fpext <2 x float> %i.aar to <2 x double>
  store <2 x double> %i.aau, ptr %i.aap, align 8, !tbaa !103
  %i.aav = getelementptr inbounds nuw i8, ptr %i.xo, i64 136
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.yf, i64 60
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !87
  %i.aay = insertelement <2 x float> poison, float %i.aao, i64 0
  %i.aaz = insertelement <2 x float> %i.aay, float %i.aax, i64 1
  %i.aba = fpext <2 x float> %i.aaz to <2 x double>
  store <2 x double> %i.aba, ptr %i.aav, align 8, !tbaa !103
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xo, i64 152
  store i8 1, ptr %i.abb, align 8, !tbaa !105
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %.body439

bb.dz:                                            ; preds = %.preheader, %bb.dx
  %i.abd = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc441 unwind label %bb.ei ; 6 uses

.noexc441:                                        ; preds = %bb.dz
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  store i32 1, ptr %i.abe, align 8, !tbaa !97, !noalias !114
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 12
  store i32 1, ptr %i.abf, align 4, !tbaa !99, !noalias !114
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.abd, align 8, !tbaa !8, !noalias !114
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 16 ; 2 uses
  %i.abh = load i32, ptr %i.k, align 8, !tbaa !62, !noalias !114
  %i.abi = sext i32 %i.abh to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.abg, i64 noundef %i.abi)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !114

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc441
  %i.abj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abd, i64 noundef 248) #24, !noalias !114
  br label %.body442

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc441
  store ptr %i.abg, ptr %i.xq, align 8, !tbaa !117
  %i.abk = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 2 uses
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !118 ; 8 uses
  store ptr %i.abd, ptr %i.abk, align 8, !tbaa !118
  %.not.i.i.i.i = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 8 ; 4 uses
  %i.abn = load atomic i64, ptr %i.abm acquire, align 8 ; 2 uses
  %i.abo = icmp eq i64 %i.abn, 4294967297
  %i.abp = trunc i64 %i.abn to i32                ; 2 uses
  br i1 %i.abo, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.abm, align 8, !tbaa !97
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abl, i64 12
  store i32 0, ptr %i.abq, align 4, !tbaa !99
  %i.abr = load ptr, ptr %i.abl, align 8, !tbaa !8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8
  call void %i.abt(ptr noundef nonnull align 8 dereferenceable(16) %i.abl) #23, !inline_history !119
  %i.abu = load ptr, ptr %i.abl, align 8, !tbaa !8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 24
  %i.abw = load ptr, ptr %i.abv, align 8
  call void %i.abw(ptr noundef nonnull align 8 dereferenceable(16) %i.abl) #23, !inline_history !119
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ec:                                            ; preds = %bb.ea
  %i.abx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i444 = icmp eq i8 %i.abx, 0
  br i1 %.not.i.i.i.i.i444, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aby = add nsw i32 %i.abp, -1
  store i32 %i.aby, ptr %i.abm, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.abz = atomicrmw volatile add ptr %i.abm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i = phi i32 [ %i.abp, %bb.ed ], [ %i.abz, %bb.ee ]
  %i.aca = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aca, label %bb.ef, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !120

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abl) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.eb, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.acb = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.acb, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.acc = load ptr, ptr %i.xq, align 8, !tbaa !121
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.acc, i32 noundef %4)
          to label %bb.ek unwind label %bb.ej

bb.ei:                                            ; preds = %bb.dz
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %.body442

bb.ej:                                            ; preds = %bb.ek, %bb.eh, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %.body442

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %i.acf = load ptr, ptr %i.xq, align 8, !tbaa !121 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 228
  store i32 8, ptr %i.acg, align 4, !tbaa !122
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 200
  %i.aci = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ach, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ej ; 0 uses

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ek
  store ptr %i.xo, ptr %0, align 8, !tbaa !148
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xr, ptr %i.acj, align 8, !tbaa !118
  %i.ack = load ptr, ptr %11, align 8, !tbaa !82  ; 3 uses
  %.not.i.i.i452 = icmp eq ptr %i.ack, null
  br i1 %.not.i.i.i452, label %_ZNSt6vectorIfSaIfEED2Ev.exit453, label %bb.el

bb.el:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.acl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !86
  %i.acn = ptrtoint ptr %i.acm to i64
  %i.aco = ptrtoint ptr %i.ack to i64
  %i.acp = sub i64 %i.acn, %i.aco
  call void @_ZdlPvm(ptr noundef nonnull %i.ack, i64 noundef %i.acp) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit453

_ZNSt6vectorIfSaIfEED2Ev.exit453:                 ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.acq = load ptr, ptr %10, align 8, !tbaa !82  ; 3 uses
  %.not.i.i.i454 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorIfSaIfEED2Ev.exit455, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit453
  %i.acr = load ptr, ptr %i.dq, align 8, !tbaa !86
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @_ZdlPvm(ptr noundef nonnull %i.acq, i64 noundef %i.acu) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit455

_ZNSt6vectorIfSaIfEED2Ev.exit455:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit453, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.acv = load ptr, ptr %5, align 8, !tbaa !27   ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.u
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455
  %i.acx = load i64, ptr %i.u, align 8, !tbaa !17
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

.body442:                                         ; preds = %bb.ei, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.ej
  %.pn111 = phi { ptr, i32 } [ %i.ace, %bb.ej ], [ %i.acd, %bb.ei ], [ %i.abj, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.xr) #23
  br label %.body439

.body439:                                         ; preds = %.body442, %bb.du, %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %bb.dn, %_ZNSt6vectorIfSaIfEED2Ev.exit409
  %.pn140.pn = phi { ptr, i32 } [ %.pn140, %_ZNSt6vectorIfSaIfEED2Ev.exit409 ], [ %.pn102.pn.pn.pn.pn, %bb.dn ], [ %.pn108.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn111, %.body442 ], [ %i.xy, %bb.du ], [ %i.abc, %bb.dy ]
  %i.acz = load ptr, ptr %11, align 8, !tbaa !82  ; 3 uses
  %.not.i.i.i459 = icmp eq ptr %i.acz, null
  br i1 %.not.i.i.i459, label %_ZNSt6vectorIfSaIfEED2Ev.exit460, label %bb.en

bb.en:                                            ; preds = %.body439
  %i.ada = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !86
  %i.adc = ptrtoint ptr %i.adb to i64
  %i.add = ptrtoint ptr %i.acz to i64
  %i.ade = sub i64 %i.adc, %i.add
  call void @_ZdlPvm(ptr noundef nonnull %i.acz, i64 noundef %i.ade) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit460

_ZNSt6vectorIfSaIfEED2Ev.exit460:                 ; preds = %.body439, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.adf = load ptr, ptr %10, align 8, !tbaa !82  ; 3 uses
  %.not.i.i.i461 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i.i461, label %_ZNSt6vectorIfSaIfEED2Ev.exit462, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit460
  %i.adg = load ptr, ptr %i.dq, align 8, !tbaa !86
  %i.adh = ptrtoint ptr %i.adg to i64
  %i.adi = ptrtoint ptr %i.adf to i64
  %i.adj = sub i64 %i.adh, %i.adi
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef %i.adj) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit462

_ZNSt6vectorIfSaIfEED2Ev.exit462:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit460, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt6vectorIfSaIfEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.l
  %.pn140.pn.pn = phi { ptr, i32 } [ %.pn140.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit462 ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.cv, %bb.l ]
  %i.adk = load ptr, ptr %5, align 8, !tbaa !27   ; 2 uses
  %i.adl = icmp eq ptr %i.adk, %i.u
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.ep
  %i.adm = load i64, ptr %i.u, align 8, !tbaa !17
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %i.adk, i64 noundef %i.adn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %bb.d
  %.pn144 = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn140.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465 ]
  resume { ptr, i32 } %.pn144
}

declare void @_ZNK16OpenColorIO_v2_510FileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNK16OpenColorIO_v2_510FileFormat5writeERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEERKNS_14GroupTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 1 captures(none) %3, ptr nofree noundef readonly align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.19", align 16 ; 12 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %10 = alloca %"class.std::shared_ptr.19", align 16 ; 7 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !148   ; 2 uses
  %i.b = getelementptr i8, ptr %4, i64 8
  %.val39 = load ptr, ptr %i.b, align 8           ; 12 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %.val, ptr nonnull @_ZTIN16OpenColorIO_v2_510CachedFileE, ptr nonnull @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 0) #23, !noalias !151 ; 6 uses
  %.not.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.not.i.i, label %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %.val39, null     ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val39, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !151
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !62, !noalias !151
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !62, !noalias !151
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !151 ; 0 uses
  br label %bb.p

_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.35, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr %8, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.l)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.bm unwind label %bb.l

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_514DynamicPtrCastINS_12_GLOBAL__N_115LocalCachedFileENS_10CachedFileEEESt10shared_ptrIT_ERKS4_IT0_E.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !27     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.t = load i64, ptr %i.r, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn67, %bb.m ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.k ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.m, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bl

bb.p:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.v = load ptr, ptr %5, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  %i.z = invoke noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef %6, i32 noundef %i.y)
          to label %bb.q unwind label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.aa = invoke noundef i32 @_ZNK16OpenColorIO_v2_513FileTransform16getInterpolationEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.ai      ; 2 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !121
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.an, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN16OpenColorIO_v2_511HandleLUT3DERKSt10shared_ptrINS_11Lut3DOpDataEENS_13InterpolationERb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 noundef %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.t unwind label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load <2 x ptr>, ptr %10, align 16, !tbaa !157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 8 uses
  store <2 x ptr> %i.af, ptr %9, align 16, !tbaa !157
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ah, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !99
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23, !inline_history !119
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23, !inline_history !119
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit

bb.w:                                             ; preds = %bb.u
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i49 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i49, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.x ], [ %i.au, %bb.y ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.av, label %bb.z, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit, !prof !120

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #23
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ax, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !99
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #23, !inline_history !158
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #23, !inline_history !158
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ba, %bb.ad ], [ %i.bk, %bb.ae ]
  %i.bl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bl, label %bb.af, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !120

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataEEaSEOS2_.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !156, !range !159, !noundef !160
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN16OpenColorIO_v2_530LogWarningInterpolationNotUsedENS_13InterpolationERKNS_13FileTransformE(i32 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.al unwind label %bb.ak

bb.ah:                                            ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ai:                                            ; preds = %bb.q
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.aj:                                            ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ag, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.pn32 = phi { ptr, i32 } [ %i.br, %bb.ak ], [ %i.bq, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bk

bb.an:                                            ; preds = %bb.al, %bb.r
  switch i32 %i.z, label %bb.ax [
    i32 0, label %bb.ao
    i32 1, label %bb.at
  ]

bb.ao:                                            ; preds = %bb.an
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !105, !range !159, !noundef !160
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %i.bv, i32 noundef 0)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.aw, %bb.au, %bb.as, %bb.ap
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.bx = load ptr, ptr %9, align 16, !tbaa !121
  %.not69 = icmp eq ptr %i.bx, null
  br i1 %.not69, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0)
          to label %bb.ax unwind label %bb.aq

bb.at:                                            ; preds = %bb.an
  %i.by = load ptr, ptr %9, align 16, !tbaa !121
  %.not68 = icmp eq ptr %i.by, null
  br i1 %.not68, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN16OpenColorIO_v2_513CreateLut3DOpERNS_10OpRcPtrVecERSt10shared_ptrINS_11Lut3DOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 1)
          to label %bb.av unwind label %bb.aq

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !105, !range !159, !noundef !160
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %i.cc, i32 noundef 1)
          to label %bb.ax unwind label %bb.aq

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.ar, %bb.as, %bb.an
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !118 ; 8 uses
  %.not.i.i50 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i50, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
end_hunk_0
