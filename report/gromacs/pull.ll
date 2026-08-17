inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_Z9init_pullP8_IO_FILEPK13pull_params_tPK10t_inputrecRK10gmx_mtop_tRKN3gmx7MpiCommEP12gmx_domdec_tPNSA_19LocalAtomSetManagerEf:bb.a
  %i.uv = load ptr, ptr %i.nw, align 8, !tbaa !393 ; 2 uses
  %i.uw = load ptr, ptr %i.nx, align 8, !tbaa !393
  %i.ux = icmp eq ptr %i.uv, %i.uw
  %i.uy = load double, ptr %i.ny, align 8, !tbaa !392 ; 2 uses
  %i.uz = load ptr, ptr %i.nz, align 8, !tbaa !394 ; 2 uses
  br i1 %i.ux, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.va = load float, ptr %i.uz, align 4, !tbaa !68
  %i.vb = fpext float %i.va to double
  %i.vc = fdiv double %i.uy, %i.vb
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.vd = sext i32 %i.sd to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !17
  %i.vg = zext i8 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.vg
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !68
  %i.vj = fpext float %i.vi to double
  %i.vk = fdiv double %i.uy, %i.vj
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dn
  %.0108.in.i = phi double [ %i.uu, %bb.dn ], [ %i.vc, %bb.dp ], [ %i.vk, %bb.dq ]
  %.0108.i = fptrunc double %.0108.in.i to float  ; 2 uses
  %i.vl = fdiv float %.0109.i, %.0108.i
  %i.vm = fmul float %storemerge.i, %i.vl
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dl, %bb.dk
  %.05.i = phi float [ %storemerge.i, %bb.dk ], [ %i.up, %bb.dl ], [ %i.vm, %bb.dr ] ; 4 uses
  %.1110.i = phi float [ %.0109.i, %bb.dk ], [ 1.000000e+00, %bb.dl ], [ %.0108.i, %bb.dr ] ; 2 uses
  br i1 %i.ri, label %bb.dt, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

bb.dt:                                            ; preds = %bb.ds
  %i.vn = load ptr, ptr %i.rr, align 8, !tbaa !64 ; 4 uses
  %i.vo = load ptr, ptr %i.rs, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.vn, %i.vo
  br i1 %.not.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store float %.05.i, ptr %i.vn, align 4, !tbaa !68
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  store ptr %i.vp, ptr %i.rr, align 8, !tbaa !64
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

bb.dv:                                            ; preds = %bb.dt
  %i.vq = load ptr, ptr %i.rk, align 8, !tbaa !65 ; 4 uses
  %i.vr = ptrtoint ptr %i.vn to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs                    ; 6 uses
  %i.vu = icmp eq i64 %i.vt, 9223372036854775804
  br i1 %i.vu, label %bb.dw, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #28
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dv
  %i.vv = ashr exact i64 %i.vt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vv, i64 1)
  %i.vw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.vv ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.vv
  %i.vy = call i64 @llvm.umin.i64(i64 %i.vw, i64 2305843009213693951)
  %i.vz = select i1 %i.vx, i64 2305843009213693951, i64 %i.vy ; 3 uses
  %.not.i.i.i.i267 = icmp ne i64 %i.vz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i267)
  %i.wa = shl nuw nsw i64 %i.vz, 2
  %i.wb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wa) #30 ; 4 uses
  %i.wc = getelementptr inbounds i8, ptr %i.wb, i64 %i.vt ; 2 uses
  store float %.05.i, ptr %i.wc, align 4, !tbaa !68
  %i.wd = icmp sgt i64 %i.vt, 0
  br i1 %i.wd, label %bb.dx, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.dx:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wb, ptr align 4 %i.vq, i64 %i.vt, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dx, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.vt) #31
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.dy, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.wb, ptr %i.rk, align 8, !tbaa !65
  store ptr %i.we, ptr %i.rr, align 8, !tbaa !64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.vz
  store ptr %i.wf, ptr %i.rs, align 8, !tbaa !66
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.du, %bb.ds
  %i.wg = fmul float %.05.i, %.1110.i             ; 2 uses
  %i.wh = insertelement <2 x float> poison, float %.1110.i, i64 0
  %i.wi = insertelement <2 x float> %i.wh, float %i.wg, i64 1
  %i.wj = fpext <2 x float> %i.wi to <2 x double>
  %i.wk = fadd <2 x double> %i.sb, %i.wj          ; 3 uses
  %i.wl = fmul float %.05.i, %i.wg
  %i.wm = fpext float %i.wl to double
  %i.wn = fadd double %.011324.i, %i.wm           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.wo = load ptr, ptr %i.oh, align 8, !tbaa !19
  %i.wp = load ptr, ptr %i.of, align 8, !tbaa !22 ; 2 uses
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = sub i64 %i.wq, %i.wr                    ; 3 uses
  %sext.i = shl i64 %i.ws, 30
  %i.wt = ashr i64 %sext.i, 32
  %i.wu = icmp slt i64 %indvars.iv.next.i, %i.wt
  br i1 %i.wu, label %bb.cz, label %._crit_edge.i, !llvm.loop !395

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %switch.edge.i
  %.lcssa1071.i = phi i64 [ %i.rw, %._crit_edge.i ], [ %i.ro, %switch.edge.i ]
  %.lcssa1269.i = phi i64 [ %i.ws, %._crit_edge.i ], [ %i.rn, %switch.edge.i ]
  %.0106.lcssa68.i = phi i32 [ %.3.i, %._crit_edge.i ], [ 0, %switch.edge.i ]
  %.0107.lcssa66.i = phi double [ %i.rz, %._crit_edge.i ], [ 0.000000e+00, %switch.edge.i ]
  %.0111.lcssa64.i = phi double [ %i.rx, %._crit_edge.i ], [ 0.000000e+00, %switch.edge.i ]
  %i.wv = icmp ne i64 %.lcssa1269.i, 4
  %or.cond.i = or i1 %.0237.lcssa, %i.wv
  br i1 %or.cond.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %._crit_edge.thread.i
  %i.ww = load i32, ptr %i.pq, align 8, !tbaa !23
  %.not.i266 = icmp eq i32 %i.ww, 2
  br i1 %.not.i266, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.wx = load ptr, ptr %i.rb, align 8, !tbaa !67
  %i.wy = load ptr, ptr %i.rd, align 8, !tbaa !67
  %i.wz = icmp eq ptr %i.wx, %i.wy
  %i.xa = select i1 %i.wz, ptr @.str.12, ptr @.str.84
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef 1971, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.xa, i32 noundef %i.ra) #28
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  unreachable

common.resume:                                    ; preds = %bb.fk, %bb.ew, %bb.ec
  %common.resume.op = phi { ptr, i32 } [ %i.xb, %bb.ec ], [ %i.zk, %bb.ew ], [ %.pn258.pn, %bb.fk ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.ea
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume

bb.ed:                                            ; preds = %bb.dz, %._crit_edge.i
  %.lcssa1070.i = phi i64 [ %i.rw, %._crit_edge.i ], [ %.lcssa1071.i, %bb.dz ]
  %.0106.lcssa67.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.0106.lcssa68.i, %bb.dz ] ; 3 uses
  %.0107.lcssa65.i = phi double [ %i.rz, %._crit_edge.i ], [ %.0107.lcssa66.i, %bb.dz ]
  %.0111.lcssa63.i = phi double [ %i.rx, %._crit_edge.i ], [ %.0111.lcssa64.i, %bb.dz ] ; 2 uses
  %.1114.i = phi double [ %i.wn, %._crit_edge.i ], [ 1.000000e+00, %bb.dz ]
  br i1 %i.oa, label %bb.ee, label %bb.ek

bb.ee:                                            ; preds = %bb.ed
  %i.xc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, i32 noundef %i.ra, i64 noundef %.lcssa1070.i, double noundef %.0107.lcssa65.i) #20 ; 0 uses
  %i.xd = load ptr, ptr %i.rb, align 8, !tbaa !67
  %i.xe = load ptr, ptr %i.rd, align 8, !tbaa !67
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.xg = load i32, ptr %i.nm, align 4, !tbaa !355
  switch i32 %i.xg, label %bb.eh [
    i32 1, label %bb.eg
    i32 2, label %bb.eg
    i32 6, label %bb.eg
    i32 3, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.ef, %bb.ef, %bb.ef, %bb.ef, %bb.ee
  %i.xh = fmul double %.0111.lcssa63.i, %.0111.lcssa63.i
  %i.xi = fdiv double %i.xh, %.1114.i
  %i.xj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.86, double noundef %i.xi) #20 ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.xk = load i32, ptr %i.pq, align 8, !tbaa !23
  %i.xl = icmp eq i32 %i.xk, 2
  br i1 %i.xl, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.xm = call i64 @fwrite(ptr nonnull @.str.87, i64 31, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ed
  %i.xn = icmp eq i32 %.0106.lcssa67.i, 0
  br i1 %i.xn, label %_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ek
  %i.xo = load ptr, ptr %i.oh, align 8, !tbaa !19
  %i.xp = load ptr, ptr %i.of, align 8, !tbaa !22
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = lshr exact i64 %i.xs, 2
  %i.xu = trunc i64 %i.xt to i32
  %i.xv = add nuw nsw i32 %.sroa.7.1, %.sroa.0.1
  %i.xw = add nuw nsw i32 %i.xv, %.sroa.11.1
  %i.xx = mul i32 %i.xw, %i.xu
  %i.xy = icmp sgt i32 %.0106.lcssa67.i, 0
  %or.cond3.i = select i1 %i.oa, i1 %i.xy, i1 false
  %i.xz = icmp slt i32 %.0106.lcssa67.i, %i.xx
  %or.cond124.i = select i1 %or.cond3.i, i1 %i.xz, i1 false
  br i1 %or.cond124.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.preheader.i
  %i.ya = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.88, i32 noundef %i.ra) #20 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.preheader.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.of, i64 144
  store float 0.000000e+00, ptr %i.yb, align 8, !tbaa !208
  br label %_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit

_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit: ; preds = %bb.ek, %bb.em
  %.sink79.i = phi i64 [ 140, %bb.em ], [ 144, %bb.ek ]
  %.sink.i = phi float [ 1.000000e+00, %bb.em ], [ -1.000000e+00, %bb.ek ]
  %15 = getelementptr inbounds nuw i8, ptr %i.of, i64 %.sink79.i
  store float %.sink.i, ptr %15, align 4, !tbaa !68
  %.pre466 = load ptr, ptr %i.nf, align 8, !tbaa !203
  %.pre467 = load ptr, ptr %i.d, align 8, !tbaa !108
  br label %bb.eo

bb.en:                                            ; preds = %bb.bz
  %i.yc = getelementptr inbounds nuw i8, ptr %i.of, i64 140
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.yc, align 4, !tbaa !68
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit
  %i.yd = phi ptr [ %i.od, %bb.en ], [ %.pre467, %_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit ] ; 2 uses
  %i.ye = phi ptr [ %i.oe, %bb.en ], [ %.pre466, %_ZL21init_pull_group_indexP8_IO_FILERKN3gmx7MpiCommEiP17pull_group_work_tbPKiRK10gmx_mtop_tPK10t_inputrecf.exit ] ; 2 uses
  %i.yf = add nuw i64 %.0241384, 1                ; 2 uses
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = ptrtoint ptr %i.yd to i64
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = sdiv exact i64 %i.yi, 272
  %i.yk = icmp ult i64 %i.yf, %i.yj
  br i1 %i.yk, label %bb.bz, label %._crit_edge387, !llvm.loop !396

bb.ep:                                            ; preds = %._crit_edge387
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !151 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !151 ; 2 uses
  %.not305388 = icmp eq ptr %i.ym, %i.yo
  br i1 %.not305388, label %.loopexit, label %.lr.ph391

.lr.ph391:                                        ; preds = %bb.ep
  %i.yp = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  br label %bb.eq

bb.eq:                                            ; preds = %.lr.ph391, %_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit
  %.sroa.0274.0389 = phi ptr [ %i.ym, %.lr.ph391 ], [ %i.zn, %_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit ] ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.0274.0389, i64 40
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !105
  %i.ys = icmp eq i32 %i.yr, 2
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0274.0389, i64 92
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !63 ; 2 uses
  br i1 %i.ys, label %bb.er, label %._crit_edge468

._crit_edge468:                                   ; preds = %bb.eq
  %.pre470 = load ptr, ptr %i.d, align 8, !tbaa !108
  %.pre471 = sext i32 %i.yu to i64
  br label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.yv = sext i32 %i.yu to i64                   ; 2 uses
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.yx = getelementptr inbounds nuw [272 x i8], ptr %i.yw, i64 %i.yv ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !61
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !61
  %i.zb = icmp eq ptr %i.yy, %i.za
  br i1 %i.zb, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 2381, ptr noundef nonnull @.str.68) #28
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.zc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.fk

bb.ev:                                            ; preds = %._crit_edge468, %bb.er
  %.pre-phi = phi i64 [ %.pre471, %._crit_edge468 ], [ %i.yv, %bb.er ]
  %i.zd = phi ptr [ %.pre470, %._crit_edge468 ], [ %i.yw, %bb.er ]
  %i.ze = getelementptr inbounds nuw [272 x i8], ptr %i.zd, i64 %.pre-phi ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 96
  %i.zg = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #30, !noalias !397 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.zf, align 8, !tbaa !58, !noalias !397
  %i.zh = load i8, ptr %i.yp, align 1, !tbaa !77, !range !78, !noalias !397, !noundef !79
  %i.zi = trunc nuw i8 %i.zh to i1
  %i.zj = load i32, ptr %i.a, align 4, !tbaa !63, !noalias !397
  invoke void @_ZN17pull_group_work_tC1ERK12t_pull_groupN3gmx12LocalAtomSetEbi(ptr noundef nonnull align 8 dereferenceable(272) %i.zg, ptr noundef nonnull align 8 dereferenceable(56) %i.ze, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext %i.zi, i32 noundef %i.zj)
          to label %_ZSt11make_uniqueI17pull_group_work_tJRK12t_pull_groupRKN3gmx12LocalAtomSetERbRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ew, !noalias !397

bb.ew:                                            ; preds = %bb.ev
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zg, i64 noundef 272) #31, !noalias !397
  br label %common.resume

_ZSt11make_uniqueI17pull_group_work_tJRK12t_pull_groupRKN3gmx12LocalAtomSetERbRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.ev
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0274.0389, i64 176 ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !113 ; 3 uses
  store ptr %i.zg, ptr %i.zl, align 8, !tbaa !113
  %.not.i.i.i.i268 = icmp eq ptr %i.zm, null
  br i1 %.not.i.i.i.i268, label %_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17pull_group_work_tEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI17pull_group_work_tEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI17pull_group_work_tJRK12t_pull_groupRKN3gmx12LocalAtomSetERbRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN17pull_group_work_tD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.zm) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.zm, i64 noundef 272) #31
  br label %_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI17pull_group_work_tEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI17pull_group_work_tJRK12t_pull_groupRKN3gmx12LocalAtomSetERbRKiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0274.0389, i64 488 ; 2 uses
  %.not305 = icmp eq ptr %i.zn, %i.yo
  br i1 %.not305, label %.loopexit, label %bb.eq

.loopexit:                                        ; preds = %_ZNSt10unique_ptrI17pull_group_work_tSt14default_deleteIS0_EED2Ev.exit, %bb.ep, %._crit_edge387
  %i.zo = load i32, ptr %i.a, align 4, !tbaa !63
  %i.zp = sext i32 %i.zo to i64                   ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !400 ; 2 uses
  %i.zs = load ptr, ptr %i.e, align 8, !tbaa !401 ; 2 uses
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = sdiv exact i64 %i.zv, 248               ; 3 uses
  %i.zx = icmp ult i64 %i.zw, %i.zp
  br i1 %i.zx, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.loopexit
  %i.zy = sub nuw nsw i64 %i.zp, %i.zw
  call void @_ZNSt6vectorI7ComSumsSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.zy)
  br label %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit

bb.ey:                                            ; preds = %.loopexit
  %i.zz = icmp ugt i64 %i.zw, %i.zp
  br i1 %i.zz, label %bb.ez, label %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit

bb.ez:                                            ; preds = %bb.ey
  %i.aaa = getelementptr inbounds nuw [248 x i8], ptr %i.zs, i64 %i.zp ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.zr, %i.aaa
  br i1 %.not.i.i270, label %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP7ComSumsS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP7ComSumsS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.ez
  store ptr %i.aaa, ptr %i.zq, align 8, !tbaa !400
  br label %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit

_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit:      ; preds = %bb.ex, %bb.ey, %bb.ez, %_ZSt8_DestroyIP7ComSumsS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.aab = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aac = icmp eq ptr %5, null
  br i1 %i.aac, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit
  %i.aad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !402
  %i.aaf = icmp slt i32 %i.aae, 33
  br i1 %i.aaf, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aag = load i32, ptr %i.bt, align 8, !tbaa !179
  %i.aah = icmp sgt i32 %i.aag, 0
  br i1 %i.aah, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aai = call ptr @getenv(ptr noundef nonnull @.str.69) #20
  %i.aaj = icmp ne ptr %i.aai, null
  %i.aak = zext i1 %i.aaj to i8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit
  %i.aal = phi i8 [ 1, %bb.fb ], [ 1, %bb.fa ], [ 1, %_ZNSt6vectorI7ComSumsSaIS0_EE6resizeEm.exit ], [ %i.aak, %bb.fc ] ; 3 uses
  store i8 %i.aal, ptr %i.aab, align 8, !tbaa !216
  %i.aam = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr null, ptr %i.aam, align 8, !tbaa !224
  %i.aan = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.aan, align 8, !tbaa !223
  %i.aao = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !166
  %i.aaq = icmp eq i32 %i.aap, 0
  %i.aar = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.aas = zext i1 %i.aaq to i8
  store i8 %i.aas, ptr %i.aar, align 4, !tbaa !217
  %i.aat = getelementptr inbounds nuw i8, ptr %i.b, i64 193
  store i8 %i.aal, ptr %i.aat, align 1, !tbaa !222
  %i.aau = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.aav = trunc nuw i8 %i.aal to i1
  %or.cond3.not = or i1 %i.ci, %i.aav
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aau, i8 0, i64 16, i1 false)
  br i1 %or.cond3.not, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aaw = call i64 @fwrite(ptr nonnull @.str.70, i64 51, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.aax = load ptr, ptr %i.nf, align 8, !tbaa !203
  %i.aay = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = sdiv exact i64 %i.abb, 272
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.abc)
  %i.abd = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.abe = load ptr, ptr %i.nf, align 8, !tbaa !203
  %i.abf = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = sub i64 %i.abg, %i.abh
end_hunk_0
