inline.NumInlined: 2390
inline.NumDeleted: 693
begin_hunk_0_@main:bb.a
  %i.xu = icmp ne i32 %i.xt, 980972897
  %i.xv = zext i1 %i.xu to i32
  %i.xw = icmp eq i32 %i.xv, 0
  br i1 %i.xw, label %bb.fh, label %bb.ft

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.xx = load ptr, ptr %i.wb, align 8, !tbaa !15
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4 ; 3 uses
  store ptr %i.vt, ptr %17, align 8, !tbaa !9
  %i.xz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xy) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 %i.xz, ptr %i.m, align 8, !tbaa !13
  %i.ya = icmp ugt i64 %i.xz, 15
  br i1 %i.ya, label %.noexc.i198.i, label %._crit_edge.i.i197.i

.noexc.i198.i:                                    ; preds = %bb.fh
  %i.yb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc199.i unwind label %bb.fr ; 2 uses

.noexc199.i:                                      ; preds = %.noexc.i198.i
  store ptr %i.yb, ptr %17, align 8, !tbaa !15
  %i.yc = load i64, ptr %i.m, align 8, !tbaa !13
  store i64 %i.yc, ptr %i.vt, align 8, !tbaa !17
  br label %._crit_edge.i.i197.i

._crit_edge.i.i197.i:                             ; preds = %.noexc199.i, %bb.fh
  %i.yd = phi ptr [ %i.yb, %.noexc199.i ], [ %i.vt, %bb.fh ] ; 2 uses
  switch i64 %i.xz, label %bb.fj [
    i64 1, label %bb.fi
    i64 0, label %bb.fk
  ]

bb.fi:                                            ; preds = %._crit_edge.i.i197.i
  %i.ye = load i8, ptr %i.xy, align 1, !tbaa !17
  store i8 %i.ye, ptr %i.yd, align 1, !tbaa !17
  br label %bb.fk

bb.fj:                                            ; preds = %._crit_edge.i.i197.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yd, ptr nonnull align 1 %i.xy, i64 %i.xz, i1 false)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %._crit_edge.i.i197.i
  %i.yf = load i64, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  store i64 %i.yf, ptr %i.vu, align 8, !tbaa !18
  %i.yg = load ptr, ptr %17, align 8, !tbaa !15
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yf
  store i8 0, ptr %i.yh, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  %i.yi = load ptr, ptr %i.wb, align 8, !tbaa !15 ; 6 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 4 uses
  %i.yk = icmp eq ptr %i.yi, %i.yj
  %i.yl = load ptr, ptr %17, align 8, !tbaa !15   ; 6 uses
  %i.ym = icmp eq ptr %i.yl, %i.vt                ; 2 uses
  br i1 %i.yk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i201.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207.i: ; preds = %bb.fk
  br i1 %i.ym, label %bb.fl, label %.thread.i208.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i201.i: ; preds = %bb.fk
  br i1 %i.ym, label %bb.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i202.i

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i201.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207.i
  %i.yn = load i64, ptr %i.vu, align 8, !tbaa !18 ; 3 uses
  %i.yo = icmp ult i64 %i.yn, 16
  call void @llvm.assume(i1 %i.yo)
  %.not21.i204.i = icmp eq ptr %17, %i.wb
  br i1 %.not21.i204.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i, label %bb.fm, !prof !65

bb.fm:                                            ; preds = %bb.fl
  switch i64 %i.yn, label %bb.fo [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i
    i64 1, label %bb.fn
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.yp = load i8, ptr %i.yl, align 1, !tbaa !17
  store i8 %i.yp, ptr %i.yi, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yi, ptr align 1 %i.yl, i64 %i.yn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i: ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.yq = load i64, ptr %i.vu, align 8, !tbaa !18 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.yq, ptr %i.yr, align 8, !tbaa !18
  %i.ys = load ptr, ptr %i.wb, align 8, !tbaa !15
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yq
  store i8 0, ptr %i.yt, align 1, !tbaa !17
  %.pre.i206.i = load ptr, ptr %17, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i

.thread.i208.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %i.yl, ptr %i.wb, align 8, !tbaa !15
  %i.yv = load i64, ptr %i.vu, align 8, !tbaa !18
  store i64 %i.yv, ptr %i.yu, align 8, !tbaa !18
  %i.yw = load i64, ptr %i.vt, align 8, !tbaa !17
  store i64 %i.yw, ptr %i.yj, align 8, !tbaa !17
  br label %bb.fq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i202.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i201.i
  %i.yx = load i64, ptr %i.yj, align 8, !tbaa !17
  store ptr %i.yl, ptr %i.wb, align 8, !tbaa !15
  %i.yy = load i64, ptr %i.vu, align 8, !tbaa !18
  %i.yz = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.yy, ptr %i.yz, align 8, !tbaa !18
  %i.za = load i64, ptr %i.vt, align 8, !tbaa !17
  store i64 %i.za, ptr %i.yj, align 8, !tbaa !17
  %.not.i203.i = icmp eq ptr %i.yi, null
  br i1 %.not.i203.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i202.i
  store ptr %i.yi, ptr %17, align 8, !tbaa !15
  store i64 %i.yx, ptr %i.vt, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i

bb.fq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i202.i, %.thread.i208.i
  store ptr %i.vt, ptr %17, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i: ; preds = %bb.fq, %bb.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i, %bb.fl
  %i.zb = phi ptr [ %i.yi, %bb.fp ], [ %i.vt, %bb.fq ], [ %i.yl, %bb.fl ], [ %.pre.i206.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205.i ]
  store i64 0, ptr %i.vu, align 8, !tbaa !18
  store i8 0, ptr %i.zb, align 1, !tbaa !17
  %i.zc = load ptr, ptr %17, align 8, !tbaa !15   ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.vt
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i
  call void @_ZdlPv(ptr noundef %i.zc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ft

bb.fr:                                            ; preds = %.noexc.i198.i
  %i.ze = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.fu

bb.fs:                                            ; preds = %.noexc
  %i.zf = load ptr, ptr @stderr, align 8, !tbaa !68
  %i.zg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zf, ptr noundef nonnull @.str.344, i64 noundef %i.we) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #23
  br label %bb.fv

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #23
  %indvars.iv.next489.i = add nuw nsw i64 %indvars.iv488.i, 1 ; 2 uses
  %i.zh = load i64, ptr %i.x, align 8, !tbaa !13
  %sext.i = shl i64 %i.zh, 32
  %i.zi = ashr exact i64 %sext.i, 32
  %.not155.i = icmp slt i64 %indvars.iv.next489.i, %i.zi
  br i1 %.not155.i, label %bb.es, label %.critedge163.i, !llvm.loop !84

bb.fu:                                            ; preds = %bb.fr, %bb.ff
  %.pn152.i = phi { ptr, i32 } [ %i.ze, %bb.fr ], [ %i.xr, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #23
  br label %bb.fw

.critedge163.i:                                   ; preds = %bb.ft, %.preheader.i
  %i.zj = call i32 @fclose(ptr noundef nonnull %i.pz) ; 0 uses
  br label %bb.fv

bb.fv:                                            ; preds = %.critedge163.i, %bb.fs, %.critedge161.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #23
  br label %.loopexit349.i

.loopexit349.i:                                   ; preds = %_ZN10MXNetParamD2Ev.exit.i, %bb.fv, %.critedge167.i, %_ZNSt6vectorIlSaIlEED2Ev.exit192.i, %.critedge169.i, %.critedge157.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %_ZNSt6vectorIlSaIlEED2Ev.exit190.i
  %.pn152.pn.i = phi { ptr, i32 } [ %.pn152.i, %bb.fu ], [ %.pn332.i, %_ZNSt6vectorIlSaIlEED2Ev.exit190.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  br label %.body

bb.fx:                                            ; preds = %.loopexit349.i, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  br label %_ZL16read_mxnet_paramPKcRSt6vectorI10MXNetParamSaIS2_EE.exit

_ZL16read_mxnet_paramPKcRSt6vectorI10MXNetParamSaIS2_EE.exit: ; preds = %bb.fx, %bb.dh
  %i.zk = call noalias ptr @fopen(ptr noundef %i.bp, ptr noundef nonnull @.str.18) ; 319 uses
  %i.zl = call noalias ptr @fopen(ptr noundef %i.bq, ptr noundef nonnull @.str.18) ; 22 uses
  %i.zm = call i64 @fwrite(ptr nonnull @.str.19, i64 8, i64 1, ptr %i.zk) ; 0 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !75 ; 2 uses
  %i.zp = load ptr, ptr %26, align 8, !tbaa !60   ; 2 uses
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = ptrtoint ptr %i.zp to i64
  %i.zs = sub i64 %i.zq, %i.zr
  %i.zt = sdiv i64 %i.zs, 208                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.zu = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 61 uses
  store i32 0, ptr %i.zu, align 8, !tbaa !71
  %i.zv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 13 uses
  store ptr null, ptr %i.zv, align 8, !tbaa !19
  %i.zw = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  store ptr %i.zu, ptr %i.zw, align 8, !tbaa !72
  %i.zx = getelementptr inbounds nuw i8, ptr %28, i64 32
  store ptr %i.zu, ptr %i.zx, align 8, !tbaa !73
  %i.zy = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 16 uses
  store i64 0, ptr %i.zy, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.zz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  store i32 0, ptr %i.zz, align 8, !tbaa !71
  %i.aaa = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr null, ptr %i.aaa, align 8, !tbaa !19
  %i.aab = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %i.zz, ptr %i.aab, align 8, !tbaa !72
  %i.aac = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %i.zz, ptr %i.aac, align 8, !tbaa !73
  %i.aad = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 0, ptr %i.aad, align 8, !tbaa !85
  %.not3343 = icmp eq ptr %i.zo, %i.zp            ; 3 uses
  br i1 %.not3343, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL16read_mxnet_paramPKcRSt6vectorI10MXNetParamSaIS2_EE.exit
  %i.aae = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 10 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 6 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.zt, i64 1)
  br label %bb.ga

._crit_edge.loopexit:                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.pre = load ptr, ptr %i.aaa, align 8, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL16read_mxnet_paramPKcRSt6vectorI10MXNetParamSaIS2_EE.exit
  %i.aai = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %_ZL16read_mxnet_paramPKcRSt6vectorI10MXNetParamSaIS2_EE.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %i.aai)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.fy

bb.fy:                                            ; preds = %._crit_edge
  %i.aaj = landingpad { ptr, i32 }
          catch ptr null
  %i.aak = extractvalue { ptr, i32 } %i.aaj, 0
  call void @__clang_call_terminate(ptr %i.aak) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.aal = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 9 uses
  store i32 0, ptr %i.aal, align 8, !tbaa !71
  %i.aam = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr null, ptr %i.aam, align 8, !tbaa !19
  %i.aan = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 3 uses
  store ptr %i.aal, ptr %i.aan, align 8, !tbaa !72
  %i.aao = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %i.aal, ptr %i.aao, align 8, !tbaa !73
  %i.aap = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 6 uses
  store i64 0, ptr %i.aap, align 8, !tbaa !85
  br i1 %.not3343, label %._crit_edge3255, label %.lr.ph3254

.lr.ph3254:                                       ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.aat = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 6 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %33, i64 72 ; 5 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 5 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 5 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.aba = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 8 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 8 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 8 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 6 uses
  %umax3521 = call i64 @llvm.umax.i64(i64 %i.zt, i64 1)
  br label %bb.iq

bb.fz:                                            ; preds = %bb.et
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ga:                                            ; preds = %.lr.ph, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.011623228 = phi i64 [ 0, %.lr.ph ], [ %i.aec, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ] ; 3 uses
  %i.abl = load ptr, ptr %26, align 8, !tbaa !60
  %i.abm = getelementptr inbounds nuw [208 x i8], ptr %i.abl, i64 %.011623228 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 48 ; 8 uses
  %i.abo = load ptr, ptr %i.aaa, align 8, !tbaa !19 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.abo, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ga
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 56 ; 5 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !18 ; 4 uses
  %i.abr = load ptr, ptr %i.abn, align 8          ; 2 uses
  br label %bb.gb

bb.gb:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.abo, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.zz, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !18 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.abq, i64 %i.abt) ; 2 uses
  %i.abu = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.abu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.gb
  %i.abv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !15
  %i.abx = call i32 @memcmp(ptr noundef %i.abw, ptr noundef %i.abr, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.abx, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.gb
  %i.aby = sub i64 %i.abt, %i.abq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aby, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.abx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.abz = icmp slt i32 %.0.i.i.i.i.i.i, 0        ; 4 uses
  %.19.i.i.i = select i1 %i.abz, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.abz, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i1380 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i1380, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.gb, !llvm.loop !86

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aca = icmp eq ptr %.19.i.i.i, %i.zz
  br i1 %i.aca, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.abz, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.acb = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !18 ; 2 uses
  %.sroa.speculated.i.i.i.i.i1381 = call i64 @llvm.umin.i64(i64 %i.acb, i64 %i.abq) ; 2 uses
  %i.acc = icmp eq i64 %.sroa.speculated.i.i.i.i.i1381, 0
  br i1 %i.acc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.gc
  %.19.i.i.i.sroa.sel2804.v.sroa.sel.v.sroa.sel.v = select i1 %i.abz, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel2804.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel2804.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.acd = load ptr, ptr %.19.i.i.i.sroa.sel2804.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %i.ace = call i32 @memcmp(ptr noundef %i.abr, ptr noundef %i.acd, i64 noundef %.sroa.speculated.i.i.i.i.i1381) #23 ; 2 uses
  %.not.i.i.i.i.i1382 = icmp eq i32 %i.ace, 0
  br i1 %.not.i.i.i.i.i1382, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.gc
  %i.acf = sub i64 %i.abq, %i.acb
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.acf, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ace, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.acg = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.acg, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ge

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.ga, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.ach = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.abn)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.gd ; 0 uses

bb.gd:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.thread2903

bb.ge:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #23
  %i.acj = trunc i64 %.011623228 to i32
  %i.ack = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aq, i64 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.acj) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  store ptr %i.aae, ptr %31, align 8, !tbaa !9
  %i.acl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i64 %i.acl, ptr %i.l, align 8, !tbaa !13
  %i.acm = icmp ugt i64 %i.acl, 15
  br i1 %i.acm, label %.noexc.i1385, label %._crit_edge.i.i1384

.noexc.i1385:                                     ; preds = %bb.ge
  %i.acn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc1386 unwind label %bb.gq ; 2 uses

.noexc1386:                                       ; preds = %.noexc.i1385
  store ptr %i.acn, ptr %31, align 8, !tbaa !15
  %i.aco = load i64, ptr %i.l, align 8, !tbaa !13
  store i64 %i.aco, ptr %i.aae, align 8, !tbaa !17
  br label %._crit_edge.i.i1384

._crit_edge.i.i1384:                              ; preds = %.noexc1386, %bb.ge
  %i.acp = phi ptr [ %i.acn, %.noexc1386 ], [ %i.aae, %bb.ge ] ; 2 uses
  switch i64 %i.acl, label %bb.gg [
    i64 1, label %bb.gf
    i64 0, label %bb.gh
  ]

bb.gf:                                            ; preds = %._crit_edge.i.i1384
  %i.acq = load i8, ptr %i.aq, align 16, !tbaa !17
  store i8 %i.acq, ptr %i.acp, align 1, !tbaa !17
  br label %bb.gh

bb.gg:                                            ; preds = %._crit_edge.i.i1384
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acp, ptr nonnull align 16 %i.aq, i64 %i.acl, i1 false)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %._crit_edge.i.i1384
  %i.acr = load i64, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  store i64 %i.acr, ptr %i.aaf, align 8, !tbaa !18
  %i.acs = load ptr, ptr %31, align 8, !tbaa !15
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acr
  store i8 0, ptr %i.act, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.acu = load i64, ptr %i.abp, align 8, !tbaa !18, !noalias !87
  %i.acv = load ptr, ptr %i.abn, align 8, !tbaa !15, !noalias !87
  %i.acw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef %i.acv, i64 noundef %i.acu)
          to label %.noexc1389 unwind label %bb.gr ; 6 uses

.noexc1389:                                       ; preds = %bb.gh
  store ptr %i.aag, ptr %30, align 8, !tbaa !9, !alias.scope !87
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !15 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 16 ; 5 uses
  %i.acz = icmp eq ptr %i.acx, %i.acy
  br i1 %i.acz, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1387

bb.gi:                                            ; preds = %.noexc1389
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !18 ; 3 uses
  %i.adc = icmp ult i64 %i.adb, 16
  call void @llvm.assume(i1 %i.adc)
  %i.add = add nuw nsw i64 %i.adb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aag, ptr noundef nonnull align 8 dereferenceable(1) %i.acy, i64 %i.add, i1 false)
  br label %bb.gj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1387: ; preds = %.noexc1389
  store ptr %i.acx, ptr %30, align 8, !tbaa !15, !alias.scope !87
  %i.ade = load i64, ptr %i.acy, align 8, !tbaa !17
  store i64 %i.ade, ptr %i.aag, align 8, !tbaa !17, !alias.scope !87
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %.pre.i1388 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  br label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1387, %bb.gi
  %i.adf = phi i64 [ %i.adb, %bb.gi ], [ %.pre.i1388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1387 ]
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store i64 %i.adf, ptr %i.aah, align 8, !tbaa !18, !alias.scope !87
  store ptr %i.acy, ptr %i.acw, align 8, !tbaa !15
  store i64 0, ptr %i.adg, align 8, !tbaa !18
  store i8 0, ptr %i.acy, align 8, !tbaa !17
  %i.adh = load ptr, ptr %i.abn, align 8, !tbaa !15 ; 6 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abm, i64 64 ; 4 uses
  %i.adj = icmp eq ptr %i.adh, %i.adi
  %i.adk = load ptr, ptr %30, align 8, !tbaa !15  ; 6 uses
  %i.adl = icmp eq ptr %i.adk, %i.aag             ; 2 uses
  br i1 %i.adj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.gj
  br i1 %i.adl, label %bb.gk, label %.thread.i1392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.gj
  br i1 %i.adl, label %bb.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.gk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.adm = load i64, ptr %i.aah, align 8, !tbaa !18 ; 3 uses
  %i.adn = icmp ult i64 %i.adm, 16
  call void @llvm.assume(i1 %i.adn)
  %.not21.i = icmp eq ptr %30, %i.abn
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.gl, !prof !65

bb.gl:                                            ; preds = %bb.gk
  switch i64 %i.adm, label %bb.gn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.gm
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.ado = load i8, ptr %i.adk, align 1, !tbaa !17
  store i8 %i.ado, ptr %i.adh, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adh, ptr align 1 %i.adk, i64 %i.adm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.gn, %bb.gm, %bb.gl
  %i.adp = load i64, ptr %i.aah, align 8, !tbaa !18 ; 2 uses
  store i64 %i.adp, ptr %i.abp, align 8, !tbaa !18
  %i.adq = load ptr, ptr %i.abn, align 8, !tbaa !15
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adp
  store i8 0, ptr %i.adr, align 1, !tbaa !17
  %.pre.i1391 = load ptr, ptr %30, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i1392:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.adk, ptr %i.abn, align 8, !tbaa !15
  %i.ads = load i64, ptr %i.aah, align 8, !tbaa !18
  store i64 %i.ads, ptr %i.abp, align 8, !tbaa !18
  %i.adt = load i64, ptr %i.aag, align 8, !tbaa !17
  store i64 %i.adt, ptr %i.adi, align 8, !tbaa !17
  br label %bb.gp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.adu = load i64, ptr %i.adi, align 8, !tbaa !17
  store ptr %i.adk, ptr %i.abn, align 8, !tbaa !15
  %i.adv = load i64, ptr %i.aah, align 8, !tbaa !18
  store i64 %i.adv, ptr %i.abp, align 8, !tbaa !18
  %i.adw = load i64, ptr %i.aag, align 8, !tbaa !17
  store i64 %i.adw, ptr %i.adi, align 8, !tbaa !17
  %.not.i1390 = icmp eq ptr %i.adh, null
  br i1 %.not.i1390, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.adh, ptr %30, align 8, !tbaa !15
  store i64 %i.adu, ptr %i.aag, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i1392
  store ptr %i.aag, ptr %30, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.go, %bb.gp
  %i.adx = phi ptr [ %i.adh, %bb.go ], [ %i.aag, %bb.gp ], [ %i.adk, %bb.gk ], [ %.pre.i1391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aah, align 8, !tbaa !18
  store i8 0, ptr %i.adx, align 1, !tbaa !17
  %i.ady = load ptr, ptr %30, align 8, !tbaa !15  ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.aag
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1393: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ady) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1393
  %i.aea = load ptr, ptr %31, align 8, !tbaa !15  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.aae
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397
  %i.aec = add nuw i64 %.011623228, 1             ; 2 uses
  %exitcond3516.not = icmp eq i64 %i.aec, %umax
  br i1 %exitcond3516.not, label %._crit_edge.loopexit, label %bb.ga, !llvm.loop !90

bb.gq:                                            ; preds = %.noexc.i1385
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400

bb.gr:                                            ; preds = %bb.gh
  %i.aee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aef = load ptr, ptr %31, align 8, !tbaa !15  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.aae
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398: ; preds = %bb.gr
  call void @_ZdlPv(ptr noundef %i.aef) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398, %bb.gq
  %.pn1348 = phi { ptr, i32 } [ %i.aed, %bb.gq ], [ %i.aee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1398 ], [ %i.aee, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  br label %.thread2903

.thread2903:                                      ; preds = %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400
  %.pn1350 = phi { ptr, i32 } [ %i.aci, %bb.gd ], [ %.pn1348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1400 ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2480

._crit_edge3255.loopexit:                         ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.aeh = ptrtoint ptr %.sroa.11.1 to i64
  br label %._crit_edge3255

._crit_edge3255:                                  ; preds = %._crit_edge3255.loopexit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %.sroa.11.0.lcssa = phi i64 [ 0, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit ], [ %i.aeh, %._crit_edge3255.loopexit ]
  %.sroa.02805.0.lcssa = phi ptr [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit ], [ %.sroa.02805.1, %._crit_edge3255.loopexit ] ; 91 uses
  %i.aei = load ptr, ptr %i.zn, align 8, !tbaa !75 ; 2 uses
  %i.aej = load ptr, ptr %26, align 8, !tbaa !60  ; 2 uses
  %i.aek = ptrtoint ptr %i.aei to i64
  %i.ael = ptrtoint ptr %i.aej to i64
  %i.aem = sub i64 %i.aek, %i.ael
  %i.aen = sdiv exact i64 %i.aem, 208             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 0, ptr %i.i, align 8, !tbaa !13
  %.not162.i = icmp eq ptr %i.aei, %i.aej
  br i1 %.not162.i, label %.loopexit2944.thread, label %.lr.ph.i1401

.loopexit2944.thread:                             ; preds = %._crit_edge3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit

.lr.ph.i1401:                                     ; preds = %._crit_edge3255
  %i.aeo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aep = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aet = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aew = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.aey = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.aez = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.afa = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.afb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.afc = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.afd = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.afe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.afg = getelementptr inbounds nuw i8, ptr %12, i64 160
  br label %bb.gs

bb.gs:                                            ; preds = %.critedge.i, %.lr.ph.i1401
  %.02813 = phi i32 [ 0, %.lr.ph.i1401 ], [ %.1, %.critedge.i ] ; 25 uses
  %storemerge161.i = phi i64 [ 0, %.lr.ph.i1401 ], [ %i.alr, %.critedge.i ] ; 3 uses
  %i.afh = load ptr, ptr %26, align 8, !tbaa !60
  %i.afi = getelementptr inbounds nuw [208 x i8], ptr %i.afh, i64 %storemerge161.i ; 9 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !42 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !54
  %i.afn = load ptr, ptr %i.afk, align 8, !tbaa !57 ; 3 uses
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = sdiv exact i64 %i.afq, 88              ; 2 uses
  %i.afs = trunc i64 %i.afr to i32
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph.i.i1409, label %_ZNK9MXNetNode9is_weightEv.exit.i

.lr.ph.i.i1409:                                   ; preds = %bb.gs
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afi, i64 48
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afi, i64 56
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !18
  %.fr163.i = freeze i64 %i.afw                   ; 3 uses
  %i.afx = load ptr, ptr %i.afu, align 8
  %wide.trip.count.i.i = and i64 %i.afr, 2147483647 ; 2 uses
  %i.afy = icmp eq i64 %.fr163.i, 0
  br i1 %i.afy, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i1409, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i ], [ 0, %.lr.ph.i.i1409 ] ; 2 uses
  %i.afz = getelementptr inbounds nuw [88 x i8], ptr %i.afn, i64 %indvars.iv.i.us.i
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !18
  %i.agc = icmp eq i64 %i.agb, 0
  br i1 %i.agc, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK9MXNetNode9is_weightEv.exit.i, label %.lr.ph.i.split.us.i, !llvm.loop !58

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i1409, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i ], [ 0, %.lr.ph.i.i1409 ] ; 2 uses
  %i.agd = getelementptr inbounds nuw [88 x i8], ptr %i.afn, i64 %indvars.iv.i.i ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !18
  %i.agg = icmp eq i64 %i.agf, %.fr163.i
  br i1 %i.agg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.agh = load ptr, ptr %i.agd, align 8, !tbaa !15
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.agh, ptr %i.afx, i64 %.fr163.i)
  %i.agi = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.agi, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %.lr.ph.i.split.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK9MXNetNode9is_weightEv.exit.i, label %.lr.ph.i.split.i, !llvm.loop !58

_ZNK9MXNetNode9is_weightEv.exit.i:                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i, %bb.gs
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afi, i64 24
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !18
  %i.agl = icmp eq i64 %i.agk, 7
  br i1 %i.agl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK9MXNetNode9is_weightEv.exit.i
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !15 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 1
  %i.agp = xor i32 %i.ago, 1752393042
  %i.agq = getelementptr i8, ptr %i.agn, i64 3
  %i.agr = load i32, ptr %i.agq, align 1
  %i.ags = xor i32 %i.agr, 1701863784
  %i.agt = or i32 %i.agp, %i.ags
  %i.agu = icmp ne i32 %i.agt, 0                  ; 2 uses
  %i.agv = zext i1 %i.agu to i32                  ; 0 uses
  %i.agw = load ptr, ptr %i.zv, align 8           ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.agw, null
  %or.cond = select i1 %i.agu, i1 true, i1 %.not10.i.i.i.i
  br i1 %or.cond, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.agw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.zu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !13
  %i.agz = icmp ult i64 %i.agy, %storemerge161.i  ; 3 uses
  %.19.i.i.i.i = select i1 %i.agz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.agz, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i1402 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1402, label %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !91

_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aha = icmp eq ptr %.19.i.i.i.i, %i.zu
  br i1 %i.aha, label %.critedge.i, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.i

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.i: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.agz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ahb = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !13
  %i.ahc = icmp ult i64 %storemerge161.i, %i.ahb
  br i1 %i.ahc, label %.critedge.i, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit.i
  %i.ahd = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1410 unwind label %.loopexit.split-lp2938

.noexc1410:                                       ; preds = %bb.gt
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !27
  %.not.i1403 = icmp eq i32 %i.ahe, 1
  br i1 %.not.i1403, label %bb.gu, label %.critedge.i

bb.gu:                                            ; preds = %.noexc1410
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK9MXNetNode7attr_aiEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %i.afi, ptr noundef nonnull @.str.270)
          to label %.noexc1411 unwind label %.loopexit.split-lp2938

.noexc1411:                                       ; preds = %bb.gu
  %i.ahf = load ptr, ptr %i.aeo, align 8, !tbaa !33
  %i.ahg = load ptr, ptr %10, align 8, !tbaa !30  ; 9 uses
  %i.ahh = ptrtoint ptr %i.ahf to i64
  %i.ahi = ptrtoint ptr %i.ahg to i64
end_hunk_0
begin_hunk_1_@main:bb.a
.cont.i.i1606:                                    ; preds = %.invoke.i.i1605
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i1603
  %i.bbt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %i.as, i64 noundef %i.bbk)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1609 unwind label %.loopexit2945 ; 0 uses

.loopexit2945:                                    ; preds = %bb.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i1602, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1604
  %lpad.loopexit2947 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

.loopexit.split-lp2946:                           ; preds = %.invoke.i.i1605
  %lpad.loopexit.split-lp2948 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.lv:                                            ; preds = %.loopexit.split-lp2946, %.loopexit2945
  %lpad.phi2949 = phi { ptr, i32 } [ %lpad.loopexit2947, %.loopexit2945 ], [ %lpad.loopexit.split-lp2948, %.loopexit.split-lp2946 ] ; 2 uses
  %i.bbu = load ptr, ptr %39, align 8, !tbaa !15, !alias.scope !109 ; 2 uses
  %i.bbv = icmp eq ptr %i.bbu, %i.abi
  br i1 %i.bbv, label %.body1607, label %.body1607.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1609: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1604
  %.02931.i2526 = load ptr, ptr %i.aam, align 8, !tbaa !24 ; 2 uses
  %.not32.i2527 = icmp eq ptr %.02931.i2526, null
  br i1 %.not32.i2527, label %._crit_edge.thread.i2557, label %.lr.ph.i2528

.lr.ph.i2528:                                     ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1609
  %i.bbw = load i64, ptr %i.abj, align 8, !tbaa !18 ; 3 uses
  %i.bbx = load ptr, ptr %39, align 8
  br label %bb.lw

bb.lw:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533, %.lr.ph.i2528
  %.02933.i2529 = phi ptr [ %.02931.i2526, %.lr.ph.i2528 ], [ %.029.i2537, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533 ] ; 6 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %.02933.i2529, i64 40
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !18 ; 3 uses
  %.sroa.speculated.i.i.i.i2530 = call i64 @llvm.umin.i64(i64 %i.bbz, i64 %i.bbw) ; 3 uses
  %i.bca = icmp eq i64 %.sroa.speculated.i.i.i.i2530, 0
  br i1 %i.bca, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2559, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2531

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2531: ; preds = %bb.lw
  %i.bcb = getelementptr inbounds nuw i8, ptr %.02933.i2529, i64 32
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !15
  %i.bcd = call i32 @memcmp(ptr noundef %i.bbx, ptr noundef %i.bcc, i64 noundef %.sroa.speculated.i.i.i.i2530) #23 ; 2 uses
  %.not.i.i.i.i2532 = icmp eq i32 %i.bcd, 0
  br i1 %.not.i.i.i.i2532, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2559, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2559: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2531, %bb.lw
  %i.bce = sub i64 %i.bbw, %i.bbz
  %spec.select7.i.i.i.i.i2560 = call i64 @llvm.smax.i64(i64 %i.bce, i64 -2147483648)
  %.08.i.i.i.i.i2561 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i2560, i64 2147483647)
  %.0.i6.i.i.i.i2562 = trunc nsw i64 %.08.i.i.i.i.i2561 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2559, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2531
  %.0.i.i.i.i2534 = phi i32 [ %i.bcd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i2531 ], [ %.0.i6.i.i.i.i2562, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i2559 ]
  %i.bcf = icmp slt i32 %.0.i.i.i.i2534, 0        ; 2 uses
  %.in.v.i2535 = select i1 %i.bcf, i64 16, i64 24
  %.in.i2536 = getelementptr inbounds nuw i8, ptr %.02933.i2529, i64 %.in.v.i2535
  %.029.i2537 = load ptr, ptr %.in.i2536, align 8, !tbaa !24 ; 2 uses
  %.not.i2538 = icmp eq ptr %.029.i2537, null
  br i1 %.not.i2538, label %._crit_edge.i2539, label %bb.lw, !llvm.loop !101

._crit_edge.i2539:                                ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i2533
  br i1 %i.bcf, label %._crit_edge.thread.i2557, label %bb.ly

._crit_edge.thread.i2557:                         ; preds = %._crit_edge.i2539, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1609
  %.028.lcssa39.i2558 = phi ptr [ %.02933.i2529, %._crit_edge.i2539 ], [ %i.aal, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit1609 ] ; 4 uses
  %i.bcg = load ptr, ptr %i.aan, align 8, !tbaa !72
  %i.bch = icmp eq ptr %.028.lcssa39.i2558, %i.bcg
  br i1 %i.bch, label %select.unfold2829, label %bb.lx

bb.lx:                                            ; preds = %._crit_edge.thread.i2557
  %i.bci = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i2558) #27 ; 2 uses
  %.phi.trans.insert3583 = getelementptr inbounds nuw i8, ptr %i.bci, i64 40
  %.pre3584.a = load i64, ptr %.phi.trans.insert3583, align 8, !tbaa !18 ; 2 uses
  %.pre3585.a = load i64, ptr %i.abj, align 8, !tbaa !18 ; 2 uses
  %.pre3618 = call i64 @llvm.umin.i64(i64 %.pre3585.a, i64 %.pre3584.a)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %._crit_edge.i2539
  %.sroa.speculated.i.i.i5.i2542.pre-phi = phi i64 [ %.pre3618, %bb.lx ], [ %.sroa.speculated.i.i.i.i2530, %._crit_edge.i2539 ] ; 2 uses
  %i.bcj = phi i64 [ %.pre3585.a, %bb.lx ], [ %i.bbw, %._crit_edge.i2539 ]
  %i.bck = phi i64 [ %.pre3584.a, %bb.lx ], [ %i.bbz, %._crit_edge.i2539 ]
  %.028.lcssa38.i2540 = phi ptr [ %.028.lcssa39.i2558, %bb.lx ], [ %.02933.i2529, %._crit_edge.i2539 ]
  %.sroa.014.0.i2541 = phi ptr [ %i.bci, %bb.lx ], [ %.02933.i2529, %._crit_edge.i2539 ]
  %i.bcl = icmp eq i64 %.sroa.speculated.i.i.i5.i2542.pre-phi, 0
  br i1 %i.bcl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2553, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2543

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2543: ; preds = %bb.ly
  %i.bcm = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i2541, i64 32
  %i.bcn = load ptr, ptr %39, align 8, !tbaa !15
  %i.bco = load ptr, ptr %i.bcm, align 8, !tbaa !15
  %i.bcp = call i32 @memcmp(ptr noundef %i.bco, ptr noundef %i.bcn, i64 noundef %.sroa.speculated.i.i.i5.i2542.pre-phi) #23 ; 2 uses
  %.not.i.i.i7.i2544 = icmp eq i32 %i.bcp, 0
  br i1 %.not.i.i.i7.i2544, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2553, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2553: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2543, %bb.ly
  %i.bcq = sub i64 %i.bck, %i.bcj
  %spec.select7.i.i.i.i10.i2554 = call i64 @llvm.smax.i64(i64 %i.bcq, i64 -2147483648)
  %.08.i.i.i.i11.i2555 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i2554, i64 2147483647)
  %.0.i6.i.i.i12.i2556 = trunc nsw i64 %.08.i.i.i.i11.i2555 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2553, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2543
  %.0.i.i.i8.i2546 = phi i32 [ %i.bcp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i2543 ], [ %.0.i6.i.i.i12.i2556, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i2553 ]
  %i.bcr = icmp slt i32 %.0.i.i.i8.i2546, 0
  br i1 %i.bcr, label %select.unfold2829, label %.noexc2516

select.unfold2829:                                ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545, %._crit_edge.thread.i2557
  %.sroa.4.0.i2550.ph = phi ptr [ %.028.lcssa39.i2558, %._crit_edge.thread.i2557 ], [ %.028.lcssa38.i2540, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545 ] ; 4 uses
  %i.bcs = icmp eq ptr %.sroa.4.0.i2550.ph, %i.aal
  br i1 %i.bcs, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2507, label %bb.lz

bb.lz:                                            ; preds = %select.unfold2829
  %i.bct = load i64, ptr %i.abj, align 8, !tbaa !18 ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i2550.ph, i64 40
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !18 ; 2 uses
  %.sroa.speculated.i.i.i.i.i2502 = call i64 @llvm.umin.i64(i64 %i.bcv, i64 %i.bct) ; 2 uses
  %i.bcw = icmp eq i64 %.sroa.speculated.i.i.i.i.i2502, 0
  br i1 %i.bcw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2512, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2503

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2503: ; preds = %bb.lz
  %i.bcx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i2550.ph, i64 32
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !15
  %i.bcz = load ptr, ptr %39, align 8, !tbaa !15
  %i.bda = call i32 @memcmp(ptr noundef %i.bcz, ptr noundef %i.bcy, i64 noundef %.sroa.speculated.i.i.i.i.i2502) #23 ; 2 uses
  %.not.i.i.i.i.i2504 = icmp eq i32 %i.bda, 0
  br i1 %.not.i.i.i.i.i2504, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2512, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2505

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2512: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2503, %bb.lz
  %i.bdb = sub i64 %i.bct, %i.bcv
  %spec.select7.i.i.i.i.i.i2513 = call i64 @llvm.smax.i64(i64 %i.bdb, i64 -2147483648)
  %.08.i.i.i.i.i.i2514 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i2513, i64 2147483647)
  %.0.i6.i.i.i.i.i2515 = trunc nsw i64 %.08.i.i.i.i.i.i2514 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2505

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2505: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2512, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2503
  %.0.i.i.i.i.i2506 = phi i32 [ %i.bda, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i2503 ], [ %.0.i6.i.i.i.i.i2515, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i2512 ]
  %i.bdc = icmp slt i32 %.0.i.i.i.i.i2506, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2507

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2507: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2505, %select.unfold2829
  %i.bdd = phi i1 [ %i.bdc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i2505 ], [ true, %select.unfold2829 ]
  %i.bde = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc2517 unwind label %bb.ma ; 2 uses

.noexc2517:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2507
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull %i.bde, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %.noexc2518 unwind label %bb.ma

.noexc2518:                                       ; preds = %.noexc2517
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bdd, ptr noundef nonnull %i.bde, ptr noundef nonnull %.sroa.4.0.i2550.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.aal) #23
  %i.bdf = load i64, ptr %i.aap, align 8, !tbaa !85
  %i.bdg = add i64 %i.bdf, 1
  store i64 %i.bdg, ptr %i.aap, align 8, !tbaa !85
  br label %.noexc2516

.noexc2516:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i2545, %.noexc2518
  %i.bdh = load ptr, ptr %39, align 8, !tbaa !15  ; 2 uses
  %i.bdi = icmp eq ptr %i.bdh, %i.abi
  br i1 %i.bdi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1612: ; preds = %.noexc2516
  call void @_ZdlPv(ptr noundef %i.bdh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1614: ; preds = %.noexc2516, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1612
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  %i.bdj = add nuw nsw i32 %.011753238, 1         ; 2 uses
  %i.bdk = load i32, ptr %i.alx, align 8, !tbaa !92
  %i.bdl = icmp slt i32 %i.bdj, %i.bdk
  br i1 %i.bdl, label %bb.lt, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit1495._crit_edge, !llvm.loop !112

bb.ma:                                            ; preds = %.noexc2517, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i2507
  %i.bdm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdn = load ptr, ptr %39, align 8, !tbaa !15  ; 2 uses
  %i.bdo = icmp eq ptr %i.bdn, %i.abi
  br i1 %i.bdo, label %.body1607, label %.body1607.sink.split

.body1607.sink.split:                             ; preds = %bb.ma, %bb.lv
  %.sink4448 = phi ptr [ %i.bbu, %bb.lv ], [ %i.bdn, %bb.ma ]
  %.pn1332.ph = phi { ptr, i32 } [ %lpad.phi2949, %bb.lv ], [ %i.bdm, %bb.ma ]
  call void @_ZdlPv(ptr noundef %.sink4448) #25
  br label %.body1607

.body1607:                                        ; preds = %.body1607.sink.split, %bb.ma, %bb.lv
  %.pn1332 = phi { ptr, i32 } [ %lpad.phi2949, %bb.lv ], [ %i.bdm, %bb.ma ], [ %.pn1332.ph, %.body1607.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  br label %bb.mb

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.ix, %_ZN10MXNetParamD2Ev.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit1598
  %.sroa.18.1 = phi ptr [ %.sroa.18.03240, %_ZNSt6vectorIiSaIiEED2Ev.exit1598 ], [ %.sroa.18.3, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.18.03240, %bb.ix ], [ %i.ans, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.18.03240, %bb.ir ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.03244, %_ZNSt6vectorIiSaIiEED2Ev.exit1598 ], [ %.sroa.11.3, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.11.03244, %bb.ix ], [ %i.anr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.and, %bb.ir ] ; 2 uses
  %.sroa.02805.1 = phi ptr [ %.sroa.02805.03247, %_ZNSt6vectorIiSaIiEED2Ev.exit1598 ], [ %.sroa.02805.4, %_ZN10MXNetParamD2Ev.exit ], [ %.sroa.02805.03247, %bb.ix ], [ %i.ano, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.02805.03247, %bb.ir ] ; 2 uses
  %i.bdp = add nuw i64 %.011653249, 1             ; 2 uses
  %exitcond3522.not = icmp eq i64 %i.bdp, %umax3521
  br i1 %exitcond3522.not, label %._crit_edge3255.loopexit, label %bb.iq, !llvm.loop !113

bb.mb:                                            ; preds = %.loopexit2955, %.loopexit.split-lp2956, %.body1607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1595, %bb.kb
  %.pn1341 = phi { ptr, i32 } [ %i.atp, %bb.kb ], [ %.pn1337.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1595 ], [ %.pn1332, %.body1607 ], [ %lpad.loopexit2957, %.loopexit2955 ], [ %lpad.loopexit.split-lp2958, %.loopexit.split-lp2956 ]
  %i.bdq = load ptr, ptr %36, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i1618 = icmp eq ptr %i.bdq, null
  br i1 %.not.i.i.i1618, label %_ZNSt6vectorIiSaIiEED2Ev.exit1619, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @_ZdlPv(ptr noundef nonnull %i.bdq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1619

_ZNSt6vectorIiSaIiEED2Ev.exit1619:                ; preds = %bb.mb, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.bdr = load ptr, ptr %35, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i1620 = icmp eq ptr %i.bdr, null
  br i1 %.not.i.i.i1620, label %_ZNSt6vectorIiSaIiEED2Ev.exit1621, label %bb.md

bb.md:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1619
  call void @_ZdlPv(ptr noundef nonnull %i.bdr) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1621

_ZNSt6vectorIiSaIiEED2Ev.exit1621:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1619, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.asd

.loopexit2944:                                    ; preds = %.critedge.i
  %.pre3586.a = load ptr, ptr %i.zn, align 8, !tbaa !75 ; 2 uses
  %.pre3587.a = load ptr, ptr %26, align 8, !tbaa !60 ; 2 uses
  %.pre3613 = ptrtoint ptr %.pre3586.a to i64
  %.pre3614.a = ptrtoint ptr %.pre3587.a to i64
  %i.bds = icmp eq ptr %.pre3586.a, %.pre3587.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.bdt = sub i64 %.pre3613, %.pre3614.a
  %i.bdu = sdiv exact i64 %i.bdt, 208
  br i1 %i.bds, label %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, label %.lr.ph.i1622

.lr.ph.i1622:                                     ; preds = %.loopexit2944
  %i.bdv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bdy = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.beb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bee = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bef = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.beg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.beh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bel = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ben = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bet = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bew = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bey = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bez = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.bfa = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bfb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bfc = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bfd = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bfh = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.bfi = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.bfj = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %bb.me

bb.me:                                            ; preds = %.critedge84.i, %.lr.ph.i1622
  %.7 = phi i32 [ %.1, %.lr.ph.i1622 ], [ %.8, %.critedge84.i ] ; 14 uses
  %storemerge203.i = phi i64 [ 0, %.lr.ph.i1622 ], [ %i.bou, %.critedge84.i ] ; 20 uses
  %i.bfk = load ptr, ptr %26, align 8, !tbaa !60  ; 4 uses
  %i.bfl = getelementptr inbounds nuw [208 x i8], ptr %i.bfk, i64 %storemerge203.i ; 11 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !42 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !54
  %i.bfq = load ptr, ptr %i.bfn, align 8, !tbaa !57 ; 3 uses
  %i.bfr = ptrtoint ptr %i.bfp to i64
  %i.bfs = ptrtoint ptr %i.bfq to i64
  %i.bft = sub i64 %i.bfr, %i.bfs
  %i.bfu = sdiv exact i64 %i.bft, 88              ; 2 uses
  %i.bfv = trunc i64 %i.bfu to i32
  %i.bfw = icmp sgt i32 %i.bfv, 0
  br i1 %i.bfw, label %.lr.ph.i.i1658, label %_ZNK9MXNetNode9is_weightEv.exit.i1623

.lr.ph.i.i1658:                                   ; preds = %bb.me
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfl, i64 48
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfl, i64 56
  %i.bfz = load i64, ptr %i.bfy, align 8, !tbaa !18
  %.fr206.i = freeze i64 %i.bfz                   ; 3 uses
  %i.bga = load ptr, ptr %i.bfx, align 8
  %wide.trip.count.i.i1659 = and i64 %i.bfu, 2147483647 ; 2 uses
  %i.bgb = icmp eq i64 %.fr206.i, 0
  br i1 %i.bgb, label %.lr.ph.i.split.us.i1667, label %.lr.ph.i.split.i1660

.lr.ph.i.split.us.i1667:                          ; preds = %.lr.ph.i.i1658, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1669
  %indvars.iv.i.us.i1668 = phi i64 [ %indvars.iv.next.i.us.i1670, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1669 ], [ 0, %.lr.ph.i.i1658 ] ; 2 uses
  %i.bgc = getelementptr inbounds nuw [88 x i8], ptr %i.bfq, i64 %indvars.iv.i.us.i1668
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bgc, i64 8
  %i.bge = load i64, ptr %i.bgd, align 8, !tbaa !18
  %i.bgf = icmp eq i64 %i.bge, 0
  br i1 %i.bgf, label %.critedge84.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1669

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1669: ; preds = %.lr.ph.i.split.us.i1667
  %indvars.iv.next.i.us.i1670 = add nuw nsw i64 %indvars.iv.i.us.i1668, 1 ; 2 uses
  %exitcond.not.i.us.i1671 = icmp eq i64 %indvars.iv.next.i.us.i1670, %wide.trip.count.i.i1659
  br i1 %exitcond.not.i.us.i1671, label %_ZNK9MXNetNode9is_weightEv.exit.i1623, label %.lr.ph.i.split.us.i1667, !llvm.loop !58

.lr.ph.i.split.i1660:                             ; preds = %.lr.ph.i.i1658, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662
  %indvars.iv.i.i1661 = phi i64 [ %indvars.iv.next.i.i1663, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662 ], [ 0, %.lr.ph.i.i1658 ] ; 2 uses
  %i.bgg = getelementptr inbounds nuw [88 x i8], ptr %i.bfq, i64 %indvars.iv.i.i1661 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8
  %i.bgi = load i64, ptr %i.bgh, align 8, !tbaa !18
  %i.bgj = icmp eq i64 %i.bgi, %.fr206.i
  br i1 %i.bgj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665: ; preds = %.lr.ph.i.split.i1660
  %i.bgk = load ptr, ptr %i.bgg, align 8, !tbaa !15
  %bcmp.i.i.i1666 = call i32 @bcmp(ptr %i.bgk, ptr %i.bga, i64 %.fr206.i)
  %i.bgl = icmp eq i32 %bcmp.i.i.i1666, 0
  br i1 %i.bgl, label %.critedge84.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665, %.lr.ph.i.split.i1660
  %indvars.iv.next.i.i1663 = add nuw nsw i64 %indvars.iv.i.i1661, 1 ; 2 uses
  %exitcond.not.i.i1664 = icmp eq i64 %indvars.iv.next.i.i1663, %wide.trip.count.i.i1659
  br i1 %exitcond.not.i.i1664, label %_ZNK9MXNetNode9is_weightEv.exit.i1623, label %.lr.ph.i.split.i1660, !llvm.loop !58

_ZNK9MXNetNode9is_weightEv.exit.i1623:            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.i1662, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i.us.i1669, %bb.me
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 24
  %i.bgn = load i64, ptr %i.bgm, align 8, !tbaa !18
  %i.bgo = icmp eq i64 %i.bgn, 12
  br i1 %i.bgo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624, label %.critedge84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624: ; preds = %_ZNK9MXNetNode9is_weightEv.exit.i1623
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfl, i64 16
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !15 ; 2 uses
  %i.bgr = load i64, ptr %i.bgq, align 1
  %i.bgs = xor i64 %i.bgr, 7166176381572509791
  %i.bgt = getelementptr i8, ptr %i.bgq, i64 8
  %i.bgu = load i32, ptr %i.bgt, align 1
  %i.bgv = zext i32 %i.bgu to i64
  %i.bgw = xor i64 %i.bgv, 1918987361
  %i.bgx = or i64 %i.bgs, %i.bgw
  %i.bgy = icmp ne i64 %i.bgx, 0
  %i.bgz = zext i1 %i.bgy to i32
  %i.bha = icmp eq i32 %i.bgz, 0
  br i1 %i.bha, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1626, label %.critedge84.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1626: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624
  %i.bhb = add i64 %storemerge203.i, 1            ; 4 uses
  %i.bhc = getelementptr inbounds nuw [208 x i8], ptr %i.bfk, i64 %i.bhb ; 5 uses
  %i.bhd = add i64 %storemerge203.i, 2            ; 6 uses
  %i.bhe = getelementptr inbounds nuw [208 x i8], ptr %i.bfk, i64 %i.bhd ; 6 uses
  %i.bhf = add i64 %storemerge203.i, 3            ; 3 uses
  %i.bhg = getelementptr inbounds nuw [208 x i8], ptr %i.bfk, i64 %i.bhf ; 5 uses
  %i.bhh = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bfl, ptr noundef nonnull @.str.203)
          to label %.noexc1672 unwind label %.loopexit2937

.noexc1672:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1626
  %i.bhi = fcmp une float %i.bhh, 3.000000e+00
  br i1 %i.bhi, label %.critedge84.i, label %bb.mf

bb.mf:                                            ; preds = %.noexc1672
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhc, i64 24
  %i.bhk = load i64, ptr %i.bhj, align 8, !tbaa !18
  %i.bhl = icmp eq i64 %i.bhk, 4
  br i1 %i.bhl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.mf
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhc, i64 16
  %i.bhn = load ptr, ptr %i.bhm, align 8, !tbaa !15
  %i.bho = load i32, ptr %i.bhn, align 1
  %i.bhp = icmp ne i32 %i.bho, 1885957219
  %i.bhq = zext i1 %i.bhp to i32
  %.not187.i = icmp eq i32 %i.bhq, 0
  br i1 %.not187.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i, label %.critedge84.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.bhr = invoke noundef float @_ZNK9MXNetNode6attr_fEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.bhc, ptr noundef nonnull @.str.208)
          to label %.noexc1673 unwind label %.loopexit2937

.noexc1673:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i
  %i.bhs = fcmp une float %i.bhr, 0.000000e+00
  br i1 %i.bhs, label %.critedge84.i, label %bb.mg

bb.mg:                                            ; preds = %.noexc1673
end_hunk_1
begin_hunk_2_@main:bb.a
bb.nl:                                            ; preds = %bb.nb, %.noexc1685
  %i.bok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.nm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit146.i
  %i.bol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

bb.nn:                                            ; preds = %bb.nd, %bb.nc
  %i.bom = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bon = load ptr, ptr %6, align 8, !tbaa !15   ; 2 uses
  %i.boo = icmp eq ptr %i.bon, %i.bfe
  br i1 %i.boo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i: ; preds = %bb.nn
  call void @_ZdlPv(ptr noundef %i.bon) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i: ; preds = %bb.nn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i, %bb.nm
  %.pn.i1657 = phi { ptr, i32 } [ %i.bol, %bb.nm ], [ %i.bom, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %i.bom, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.nr

bb.no:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.i
  %i.bop = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

bb.np:                                            ; preds = %bb.ng, %bb.nf
  %i.boq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bor = load ptr, ptr %8, align 8, !tbaa !15   ; 2 uses
  %i.bos = icmp eq ptr %i.bor, %i.bff
  br i1 %i.bos, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i: ; preds = %bb.np
  call void @_ZdlPv(ptr noundef %i.bor) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i: ; preds = %bb.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i, %bb.no
  %.pn70.i = phi { ptr, i32 } [ %i.bop, %bb.no ], [ %i.boq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i ], [ %i.boq, %bb.np ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nj, %bb.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i
  %i.bot = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i
  %.pn72.i = phi { ptr, i32 } [ %i.bot, %bb.nq ], [ %.pn70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i ], [ %.pn.i1657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nl
  %.pn72.pn.i = phi { ptr, i32 } [ %.pn72.i, %bb.nr ], [ %i.bok, %bb.nl ]
  call void @_ZN9MXNetNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.asd

.critedge84.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665, %.lr.ph.i.split.us.i1667, %bb.nk, %_ZN9MXNetNodeD2Ev.exit.i1652, %.noexc1675, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i, %bb.mh, %.noexc1674, %.noexc1673, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.mf, %.noexc1672, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624, %_ZNK9MXNetNode9is_weightEv.exit.i1623
  %.8 = phi i32 [ %.7, %.lr.ph.i.split.us.i1667 ], [ %.7, %.noexc1672 ], [ %.7, %.noexc1673 ], [ %.7, %.noexc1674 ], [ %.7, %.noexc1675 ], [ %i.boj, %bb.nk ], [ %i.bme, %_ZN9MXNetNodeD2Ev.exit.i1652 ], [ %.7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i ], [ %.7, %bb.mh ], [ %.7, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %.7, %bb.mf ], [ %.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624 ], [ %.7, %_ZNK9MXNetNode9is_weightEv.exit.i1623 ], [ %.7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665 ] ; 2 uses
  %.0.i = phi i64 [ %storemerge203.i, %.lr.ph.i.split.us.i1667 ], [ %storemerge203.i, %.noexc1672 ], [ %storemerge203.i, %.noexc1673 ], [ %storemerge203.i, %.noexc1674 ], [ %storemerge203.i, %.noexc1675 ], [ %i.bhf, %bb.nk ], [ %i.bhd, %_ZN9MXNetNodeD2Ev.exit.i1652 ], [ %storemerge203.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.i ], [ %storemerge203.i, %bb.mh ], [ %storemerge203.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %storemerge203.i, %bb.mf ], [ %storemerge203.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1624 ], [ %storemerge203.i, %_ZNK9MXNetNode9is_weightEv.exit.i1623 ], [ %storemerge203.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i1665 ]
  %i.bou = add i64 %.0.i, 1                       ; 2 uses
  %i.bov = icmp ult i64 %i.bou, %i.bdu
  br i1 %i.bov, label %bb.me, label %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, !llvm.loop !114

_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit: ; preds = %.critedge84.i, %.loopexit2944.thread, %.loopexit2944
  %.9 = phi i32 [ %.1, %.loopexit2944 ], [ 0, %.loopexit2944.thread ], [ %.8, %.critedge84.i ]
  %i.bow = load ptr, ptr %i.zw, align 8, !tbaa !72 ; 2 uses
  %.not29163257 = icmp eq ptr %i.bow, %i.zu
  br i1 %.not29163257, label %._crit_edge3261, label %.lr.ph3260

.lr.ph3260:                                       ; preds = %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit, %bb.nv
  %.011783259 = phi i32 [ %.11179, %bb.nv ], [ 0, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ] ; 2 uses
  %.sroa.02773.03258 = phi ptr [ %.sroa.02773.1, %bb.nv ], [ %i.bow, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ] ; 4 uses
  %i.box = getelementptr inbounds nuw i8, ptr %.sroa.02773.03258, i64 40
  %i.boy = load i32, ptr %i.box, align 8, !tbaa !104 ; 2 uses
  %i.boz = icmp eq i32 %i.boy, 1
  br i1 %i.boz, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %.lr.ph3260
  %i.bpa = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02773.03258) #27
  %i.bpb = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.02773.03258, ptr noundef nonnull align 8 dereferenceable(32) %i.zu) #23
  call void @_ZdlPv(ptr noundef nonnull %i.bpb) #25
  %i.bpc = load i64, ptr %i.zy, align 8, !tbaa !85
  %i.bpd = add i64 %i.bpc, -1
  store i64 %i.bpd, ptr %i.zy, align 8, !tbaa !85
  br label %bb.nv

.loopexit2937:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1626, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread184.i, %bb.mg, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread185.i, %bb.mi, %.noexc1676, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit106.i, %.noexc1678, %.noexc1679, %.noexc1680, %bb.mz, %.noexc1682, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit144.i, %.noexc1684
  %lpad.loopexit2939 = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

.loopexit.split-lp2938:                           ; preds = %bb.gt, %bb.gu
  %lpad.loopexit.split-lp2940 = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.nu:                                            ; preds = %.lr.ph3260
  %i.bpe = add nsw i32 %i.boy, %.011783259
  %i.bpf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02773.03258) #27
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nt, %bb.nu
  %.sroa.02773.1 = phi ptr [ %i.bpa, %bb.nt ], [ %i.bpf, %bb.nu ] ; 2 uses
  %.11179 = phi i32 [ %.011783259, %bb.nt ], [ %i.bpe, %bb.nu ] ; 2 uses
  %.not2916 = icmp eq ptr %.sroa.02773.1, %i.zu
  br i1 %.not2916, label %._crit_edge3261.loopexit, label %.lr.ph3260, !llvm.loop !115

._crit_edge3261.loopexit:                         ; preds = %bb.nv
  %i.bpg = sext i32 %.11179 to i64
  br label %._crit_edge3261

._crit_edge3261:                                  ; preds = %._crit_edge3261.loopexit, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit
  %.01178.lcssa = phi i64 [ 0, %_ZL26fuse_hardsigmoid_hardswishRSt6vectorI9MXNetNodeSaIS0_EERS_I10MXNetParamSaIS4_EERSt3mapImiSt4lessImESaISt4pairIKmiEEERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ISN_ESaISN_EERi.exit ], [ %i.bpg, %._crit_edge3261.loopexit ]
  %i.bph = sext i32 %.9 to i64
  %i.bpi = load i64, ptr %i.zy, align 8, !tbaa !85
  %i.bpj = ptrtoint ptr %.sroa.02805.0.lcssa to i64
  %i.bpk = sub i64 %.sroa.11.0.lcssa, %i.bpj
  %i.bpl = ashr exact i64 %i.bpk, 2
  %i.bpm = add nsw i64 %i.bpl, %i.bph
  %i.bpn = sub nsw i64 %i.zt, %i.bpm
  %i.bpo = add i64 %i.bpn, %i.bpi
  %i.bpp = load i64, ptr %i.aap, align 8, !tbaa !85
  %i.bpq = add i64 %i.bpp, %.01178.lcssa
  %i.bpr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.28, i64 noundef %i.bpo, i64 noundef %i.bpq) #23 ; 0 uses
  br i1 %.not3343, label %._crit_edge3340, label %.lr.ph3339

.lr.ph3339:                                       ; preds = %._crit_edge3261
  %i.bps = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.bpt = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bpu = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bpv = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bpw = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 9 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 9 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 8 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 8 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 8 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 8 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bqd = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.bqe = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bqf = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bqg = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bqh = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 2 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.bqk = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.bql = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.bqm = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.bqo = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.bqp = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.bqq = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.bqr = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.bqs = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.bqt = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.bqw = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.bqy = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.bqz = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.bre = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.brg = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.bri = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.brj = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.brk = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.brl = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.brm = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.brn = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.brp = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.brq = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.brr = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.brs = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.brt = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.bru = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.brw = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.bry = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.brz = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.bsa = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.bsb = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 4 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %97, i64 8
  %umax3571 = call i64 @llvm.umax.i64(i64 %i.zt, i64 1)
  br label %bb.od

._crit_edge3340:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread, %._crit_edge3261
  %i.bsd = call i32 @fclose(ptr noundef %i.zk)    ; 0 uses
  %i.bse = call i32 @fclose(ptr noundef %i.zl)    ; 0 uses
  %i.bsf = load ptr, ptr %i.aam, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %i.bsf)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1688 unwind label %bb.nw

bb.nw:                                            ; preds = %._crit_edge3340
  %i.bsg = landingpad { ptr, i32 }
          catch ptr null
  %i.bsh = extractvalue { ptr, i32 } %i.bsg, 0
  call void @__clang_call_terminate(ptr %i.bsh) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1688: ; preds = %._crit_edge3340
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %.not.i.i.i1689 = icmp eq ptr %.sroa.02805.0.lcssa, null
  br i1 %.not.i.i.i1689, label %_ZNSt6vectorIiSaIiEED2Ev.exit1690, label %bb.nx

bb.nx:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1688
  call void @_ZdlPv(ptr noundef nonnull %.sroa.02805.0.lcssa) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1690

_ZNSt6vectorIiSaIiEED2Ev.exit1690:                ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit1688, %bb.nx
  %i.bsi = load ptr, ptr %i.zv, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %i.bsi)
          to label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit unwind label %bb.ny

bb.ny:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1690
  %i.bsj = landingpad { ptr, i32 }
          catch ptr null
  %i.bsk = extractvalue { ptr, i32 } %i.bsj, 0
  call void @__clang_call_terminate(ptr %i.bsk) #29
  unreachable

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit1690
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.bsl = load ptr, ptr %27, align 8, !tbaa !57  ; 3 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bsn = load ptr, ptr %i.bsm, align 8, !tbaa !54 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bsl, %i.bsn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1691

.lr.ph.i.i.i1691:                                 ; preds = %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit, %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bsx, %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i ], [ %i.bsl, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit ] ; 6 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !15 ; 2 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.bsr = icmp eq ptr %i.bsp, %i.bsq
  br i1 %i.bsr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1691
  call void @_ZdlPv(ptr noundef %i.bsp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1691, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bss = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bst, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, label %bb.nz

bb.nz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bst) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bsu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bsw = icmp eq ptr %i.bsu, %i.bsv
  br i1 %i.bsw, label %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bsu) #25
  br label %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i

_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bsx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i1692 = icmp eq ptr %i.bsx, %i.bsn
  br i1 %.not.i.i.i1692, label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1691, !llvm.loop !116

_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI10MXNetParamEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %27, align 8, !tbaa !57
  br label %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit
  %i.bsy = phi ptr [ %.pr.i, %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.bsl, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bsy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit, label %bb.oa

bb.oa:                                            ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bsy) #25
  br label %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit

_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIP10MXNetParamS0_EvT_S2_RSaIT0_E.exit.i, %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.bsz = load ptr, ptr %26, align 8, !tbaa !60
  %i.bta = load ptr, ptr %i.zn, align 8, !tbaa !75
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP9MXNetNodeEEvT_S4_(ptr noundef %i.bsz, ptr noundef %i.bta)
          to label %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i unwind label %bb.oc

_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit
  %i.btb = load ptr, ptr %26, align 8, !tbaa !60  ; 2 uses
  %.not.i.i.i1693 = icmp eq ptr %i.btb, null
  br i1 %.not.i.i.i1693, label %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit, label %bb.ob

bb.ob:                                            ; preds = %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.btb) #25
  br label %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit

bb.oc:                                            ; preds = %_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev.exit
  %i.btc = landingpad { ptr, i32 }
          catch ptr null
  %i.btd = extractvalue { ptr, i32 } %i.btc, 0
  call void @__clang_call_terminate(ptr %i.btd) #29
  unreachable

_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIP9MXNetNodeS0_EvT_S2_RSaIT0_E.exit.i, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.asf

bb.od:                                            ; preds = %.lr.ph3339, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread
  %.011803337 = phi i32 [ 0, %.lr.ph3339 ], [ %.41184, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread ] ; 5 uses
  %.011853335 = phi i64 [ 0, %.lr.ph3339 ], [ %i.enr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread ] ; 3 uses
  %i.bte = load ptr, ptr %26, align 8, !tbaa !60
  %i.btf = getelementptr inbounds nuw [208 x i8], ptr %i.bte, i64 %.011853335 ; 141 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 16 ; 196 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btf, i64 24 ; 4 uses
  %i.bti = load i64, ptr %i.bth, align 8, !tbaa !18 ; 10 uses
  switch i64 %i.bti, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1726.thread2848 [
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697
    i64 25, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1710
    i64 26, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1712
    i64 22, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1714
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1716
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1718
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1720
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1724
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695: ; preds = %bb.od
  %i.btj = load ptr, ptr %i.btg, align 8, !tbaa !15
  %i.btk = load i128, ptr %i.btj, align 1
  %i.btl = icmp ne i128 %i.btk, 146788248895499287312706996563455471470
  %i.btm = zext i1 %i.btl to i32
  %i.btn = icmp eq i32 %i.btm, 0
  br i1 %i.btn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1726.thread2848

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697: ; preds = %bb.od
  %.pre3588.a = load ptr, ptr %i.btg, align 8, !tbaa !15
  %bcmp.i1696 = call i32 @bcmp(ptr %.pre3588.a, ptr nonnull @.str.21, i64 %i.bti)
  %i.bto = icmp eq i32 %bcmp.i1696, 0
  br i1 %i.bto, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1726.thread2848

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697
  %i.btp = getelementptr inbounds nuw i8, ptr %i.btf, i64 8
  %i.btq = load ptr, ptr %i.btp, align 8, !tbaa !42 ; 2 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btq, i64 8
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !54
  %i.btt = load ptr, ptr %i.btq, align 8, !tbaa !57 ; 2 uses
  %i.btu = ptrtoint ptr %i.bts to i64
  %i.btv = ptrtoint ptr %i.btt to i64
  %i.btw = sub i64 %i.btu, %i.btv
  %i.btx = sdiv exact i64 %i.btw, 88              ; 2 uses
  %i.bty = trunc i64 %i.btx to i32
  %i.btz = icmp sgt i32 %i.bty, 0
  br i1 %i.btz, label %.lr.ph.i1700, label %_ZNK9MXNetNode9is_weightEv.exit1708

.lr.ph.i1700:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1697.thread
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btf, i64 48
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btf, i64 56
  %i.buc = load i64, ptr %i.bub, align 8, !tbaa !18 ; 3 uses
  %i.bud = load ptr, ptr %i.bua, align 8
  %wide.trip.count.i1701 = and i64 %i.btx, 2147483647
  %i.bue = icmp eq i64 %i.buc, 0
  br label %bb.oe

bb.oe:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i1703, %.lr.ph.i1700
  %indvars.iv.i1702 = phi i64 [ 0, %.lr.ph.i1700 ], [ %indvars.iv.next.i1704, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i1703 ] ; 2 uses
  %i.buf = getelementptr inbounds nuw [88 x i8], ptr %i.btt, i64 %indvars.iv.i1702 ; 2 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 8
  %i.buh = load i64, ptr %i.bug, align 8, !tbaa !18
  %i.bui = icmp eq i64 %i.buh, %i.buc
  br i1 %i.bui, label %bb.of, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i1703

bb.of:                                            ; preds = %bb.oe
  br i1 %i.bue, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i1706

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i1706: ; preds = %bb.of
  %i.buj = load ptr, ptr %i.buf, align 8, !tbaa !15
  %bcmp.i.i1707 = call i32 @bcmp(ptr %i.buj, ptr %i.bud, i64 %i.buc)
  %i.buk = icmp eq i32 %bcmp.i.i1707, 0
  br i1 %i.buk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i1703

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10.i1703: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i1706, %bb.oe
  %indvars.iv.next.i1704 = add nuw nsw i64 %indvars.iv.i1702, 1 ; 2 uses
  %exitcond.not.i1705 = icmp eq i64 %indvars.iv.next.i1704, %wide.trip.count.i1701
  br i1 %exitcond.not.i1705, label %_ZNK9MXNetNode9is_weightEv.exit1708, label %bb.oe, !llvm.loop !58
end_hunk_2
begin_hunk_3_@main:bb.a
bb.adq:                                           ; preds = %bb.adf
  %i.dep = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeu

bb.adr:                                           ; preds = %bb.adg
  %i.deq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeu

bb.ads:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2121
  %i.der = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2123

bb.adt:                                           ; preds = %bb.adh
  %i.des = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.det = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2122 = icmp eq ptr %i.det, null
  br i1 %.not.i.i.i2122, label %_ZNSt6vectorIfSaIfEED2Ev.exit2123, label %bb.adu

bb.adu:                                           ; preds = %bb.adt
  call void @_ZdlPv(ptr noundef nonnull %i.det) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2123

bb.adv:                                           ; preds = %bb.adi
  %i.deu = getelementptr inbounds nuw i8, ptr %i.ded, i64 4
  %i.dev = load i32, ptr %i.deu, align 4, !tbaa !27
  %i.dew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.205, i32 noundef %i.dev) #23 ; 0 uses
  br label %.sink.split4232.a

.sink.split4232.a:                                ; preds = %bb.adi, %bb.adv
  %.str.218.sink4233 = phi ptr [ @.str.218, %bb.adv ], [ @.str.205, %bb.adi ]
  %i.dex = load i32, ptr %i.ded, align 4, !tbaa !27
  %i.dey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.218.sink4233, i32 noundef %i.dex) #23 ; 0 uses
  br label %bb.adw

bb.adw:                                           ; preds = %.sink.split4232.a, %bb.adi
  %i.dez = load ptr, ptr %i.bri, align 8, !tbaa !33
  %i.dfa = load ptr, ptr %65, align 8, !tbaa !30  ; 5 uses
  %i.dfb = ptrtoint ptr %i.dez to i64
  %i.dfc = ptrtoint ptr %i.dfa to i64
  %i.dfd = sub i64 %i.dfb, %i.dfc
  %i.dfe = ashr exact i64 %i.dfd, 2
  switch i64 %i.dfe, label %bb.ady [
    i64 1, label %.sink.split4235.a
    i64 2, label %bb.adx
  ]

bb.adx:                                           ; preds = %bb.adw
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfa, i64 4
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !27
  %i.dfh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.175, i32 noundef %i.dfg) #23 ; 0 uses
  br label %.sink.split4235.a

.sink.split4235.a:                                ; preds = %bb.adw, %bb.adx
  %.str.219.sink4236 = phi ptr [ @.str.219, %bb.adx ], [ @.str.175, %bb.adw ]
  %i.dfi = load i32, ptr %i.dfa, align 4, !tbaa !27
  %i.dfj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.219.sink4236, i32 noundef %i.dfi) #23 ; 0 uses
  br label %bb.ady

bb.ady:                                           ; preds = %.sink.split4235.a, %bb.adw
  %i.dfk = load ptr, ptr %i.brj, align 8, !tbaa !33
  %i.dfl = load ptr, ptr %66, align 8, !tbaa !30  ; 5 uses
  %i.dfm = ptrtoint ptr %i.dfk to i64
  %i.dfn = ptrtoint ptr %i.dfl to i64
  %i.dfo = sub i64 %i.dfm, %i.dfn
  %i.dfp = ashr exact i64 %i.dfo, 2
  switch i64 %i.dfp, label %bb.aea [
    i64 1, label %.sink.split4238.a
    i64 2, label %bb.adz
  ]

bb.adz:                                           ; preds = %bb.ady
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfl, i64 4
  %i.dfr = load i32, ptr %i.dfq, align 4, !tbaa !27
  %i.dfs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.169, i32 noundef %i.dfr) #23 ; 0 uses
  br label %.sink.split4238.a

.sink.split4238.a:                                ; preds = %bb.ady, %bb.adz
  %.str.220.sink4239 = phi ptr [ @.str.220, %bb.adz ], [ @.str.169, %bb.ady ]
  %i.dft = load i32, ptr %i.dfl, align 4, !tbaa !27
  %i.dfu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.220.sink4239, i32 noundef %i.dft) #23 ; 0 uses
  br label %bb.aea

bb.aea:                                           ; preds = %.sink.split4238.a, %bb.ady
  %i.dfv = load ptr, ptr %i.brk, align 8, !tbaa !33 ; 2 uses
  %i.dfw = load ptr, ptr %69, align 8, !tbaa !30  ; 6 uses
  %i.dfx = icmp eq ptr %i.dfv, %i.dfw
  br i1 %i.dfx, label %bb.aeb, label %bb.aee

bb.aeb:                                           ; preds = %bb.aea
  %i.dfy = load ptr, ptr %i.brl, align 8, !tbaa !33
  %i.dfz = load ptr, ptr %67, align 8, !tbaa !30  ; 3 uses
  %i.dga = ptrtoint ptr %i.dfy to i64
  %i.dgb = ptrtoint ptr %i.dfz to i64
  %i.dgc = sub i64 %i.dga, %i.dgb
  %i.dgd = ashr exact i64 %i.dgc, 2
  switch i64 %i.dgd, label %bb.aed [
    i64 1, label %.sink.split4241.a
    i64 2, label %bb.aec
  ]

bb.aec:                                           ; preds = %bb.aeb
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dfz, i64 4
  %i.dgf = load i32, ptr %i.dge, align 4, !tbaa !27
  %i.dgg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.170, i32 noundef %i.dgf) #23 ; 0 uses
  br label %.sink.split4241.a

.sink.split4241.a:                                ; preds = %bb.aeb, %bb.aec
  %.str.221.sink4242 = phi ptr [ @.str.221, %bb.aec ], [ @.str.170, %bb.aeb ]
  %i.dgh = load i32, ptr %i.dfz, align 4, !tbaa !27
  %i.dgi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.221.sink4242, i32 noundef %i.dgh) #23 ; 0 uses
  br label %bb.aed

bb.aed:                                           ; preds = %.sink.split4241.a, %bb.aeb
  %i.dgj = load ptr, ptr %i.brm, align 8, !tbaa !33
  %i.dgk = load ptr, ptr %68, align 8, !tbaa !30  ; 3 uses
  %i.dgl = ptrtoint ptr %i.dgj to i64
  %i.dgm = ptrtoint ptr %i.dgk to i64
  %i.dgn = sub i64 %i.dgl, %i.dgm
  %i.dgo = ashr exact i64 %i.dgn, 2
  switch i64 %i.dgo, label %bb.aef [
    i64 1, label %.sink.split4244.a
    i64 2, label %.sink.split4244.sink.split
  ]

bb.aee:                                           ; preds = %bb.aea
  %i.dgp = ptrtoint ptr %i.dfw to i64
  %i.dgq = ptrtoint ptr %i.dfv to i64
  %i.dgr = sub i64 %i.dgq, %i.dgp
  %i.dgs = ashr exact i64 %i.dgr, 2
  %i.dgt = call i64 @fwrite(ptr nonnull @.str.233, i64 7, i64 1, ptr %i.zk) ; 0 uses
  switch i64 %i.dgs, label %bb.aef [
    i64 1, label %.sink.split4244.a
    i64 2, label %.sink.split4244.sink.split
  ]

.sink.split4244.sink.split:                       ; preds = %bb.aee, %bb.aed
  %.sink4258 = phi ptr [ %i.dgk, %bb.aed ], [ %i.dfw, %bb.aee ] ; 2 uses
  %.str.231.sink = phi ptr [ @.str.231, %bb.aed ], [ @.str.234, %bb.aee ]
  %.str.234.sink.ph = phi ptr [ @.str.232, %bb.aed ], [ @.str.235, %bb.aee ]
  %i.dgu = getelementptr inbounds nuw i8, ptr %.sink4258, i64 4
  %i.dgv = load i32, ptr %i.dgu, align 4, !tbaa !27
  %i.dgw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.231.sink, i32 noundef %i.dgv) #23 ; 0 uses
  br label %.sink.split4244.a

.sink.split4244.a:                                ; preds = %.sink.split4244.sink.split, %bb.aee, %bb.aed
  %.sink4246 = phi ptr [ %i.dgk, %bb.aed ], [ %i.dfw, %bb.aee ], [ %.sink4258, %.sink.split4244.sink.split ]
  %.str.234.sink = phi ptr [ @.str.231, %bb.aed ], [ @.str.234, %bb.aee ], [ %.str.234.sink.ph, %.sink.split4244.sink.split ]
  %i.dgx = load i32, ptr %.sink4246, align 4, !tbaa !27
  %i.dgy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.234.sink, i32 noundef %i.dgx) #23 ; 0 uses
  br label %bb.aef

bb.aef:                                           ; preds = %.sink.split4244.a, %bb.aee, %bb.aed
  %i.dgz = icmp ne i32 %i.ddz, 1
  %i.dha = zext i1 %i.dgz to i32
  %i.dhb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.222, i32 noundef %i.dha) #23 ; 0 uses
  %i.dhc = load ptr, ptr %i.brn, align 8, !tbaa !39
  %i.dhd = load ptr, ptr %70, align 8, !tbaa !36
  %i.dhe = ptrtoint ptr %i.dhc to i64
  %i.dhf = ptrtoint ptr %i.dhd to i64
  %i.dhg = sub i64 %i.dhe, %i.dhf
  %i.dhh = lshr exact i64 %i.dhg, 2
  %i.dhi = trunc i64 %i.dhh to i32
  %i.dhj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.223, i32 noundef %i.dhi) #23 ; 0 uses
  %i.dhk = icmp sgt i32 %i.dea, 1
  br i1 %i.dhk, label %bb.aeg, label %bb.aeh

bb.aeg:                                           ; preds = %bb.aef
  %i.dhl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.191, i32 noundef %i.dea) #23 ; 0 uses
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.aef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #23
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.dhm = call i64 @fwrite(ptr noundef nonnull %i.ay, i64 noundef 4, i64 noundef 1, ptr noundef %i.zl) ; 0 uses
  %i.dhn = icmp eq i64 %i.deg, 8
  br i1 %i.dhn, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  %i.dho = getelementptr inbounds nuw i8, ptr %i.ded, i64 4
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !27
  %i.dhq = load i32, ptr %i.ded, align 4, !tbaa !27
  %i.dhr = mul nsw i32 %i.dhq, %i.dhp
  br label %bb.aek

bb.aej:                                           ; preds = %bb.aeh
  %i.dhs = load i32, ptr %i.ded, align 4, !tbaa !27 ; 2 uses
  %i.dht = mul nsw i32 %i.dhs, %i.dhs
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aej, %bb.aei
  %.01189 = phi i32 [ %i.dhr, %bb.aei ], [ %i.dht, %bb.aej ] ; 2 uses
  %i.dhu = icmp sgt i32 %i.dea, 0
  br i1 %i.dhu, label %.lr.ph3318, label %._crit_edge3319.split

.lr.ph3318:                                       ; preds = %bb.aek
  %i.dhv = sdiv i32 %i.ddy, %i.dea                ; 3 uses
  %i.dhw = sext i32 %.01189 to i64                ; 3 uses
  %i.dhx = sext i32 %i.dhv to i64                 ; 3 uses
  %factor.op.mul = mul i32 %.01189, %i.dhv
  %i.dhy = icmp sgt i32 %i.dhv, 0
  br i1 %i.dhy, label %.preheader.lr.ph.preheader, label %._crit_edge3319.split

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph3318
  %i.dhz = zext nneg i32 %i.dea to i64
  %i.dia = mul nuw nsw i64 %i.dhx, %i.dhz
  br label %.preheader.lr.ph

._crit_edge3319.split:                            ; preds = %._crit_edge3315.split, %.lr.ph3318, %bb.aek
  %i.dib = load ptr, ptr %71, align 8, !tbaa !36  ; 2 uses
  %i.dic = load ptr, ptr %i.bro, align 8, !tbaa !39
  %i.did = ptrtoint ptr %i.dic to i64
  %i.die = ptrtoint ptr %i.dib to i64
  %i.dif = sub i64 %i.did, %i.die
  %i.dig = ashr exact i64 %i.dif, 2
  %i.dih = call i64 @fwrite(ptr noundef %i.dib, i64 noundef 4, i64 noundef %i.dig, ptr noundef %i.zl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  %i.dii = load ptr, ptr %71, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2124 = icmp eq ptr %i.dii, null
  br i1 %.not.i.i.i2124, label %_ZNSt6vectorIfSaIfEED2Ev.exit2125, label %bb.ael

bb.ael:                                           ; preds = %._crit_edge3319.split
  call void @_ZdlPv(ptr noundef nonnull %i.dii) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2125

_ZNSt6vectorIfSaIfEED2Ev.exit2125:                ; preds = %._crit_edge3319.split, %bb.ael
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.dij = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2126 = icmp eq ptr %i.dij, null
  br i1 %.not.i.i.i2126, label %_ZNSt6vectorIfSaIfEED2Ev.exit2127, label %bb.aem

bb.aem:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2125
  call void @_ZdlPv(ptr noundef nonnull %i.dij) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2127

_ZNSt6vectorIfSaIfEED2Ev.exit2127:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2125, %bb.aem
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  %.not.i.i.i2128 = icmp eq ptr %i.dfw, null
  br i1 %.not.i.i.i2128, label %_ZNSt6vectorIiSaIiEED2Ev.exit2129, label %bb.aen

bb.aen:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2127
  call void @_ZdlPv(ptr noundef nonnull %i.dfw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2129

_ZNSt6vectorIiSaIiEED2Ev.exit2129:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2127, %bb.aen
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  %i.dik = load ptr, ptr %68, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2130 = icmp eq ptr %i.dik, null
  br i1 %.not.i.i.i2130, label %_ZNSt6vectorIiSaIiEED2Ev.exit2131, label %bb.aeo

bb.aeo:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2129
  call void @_ZdlPv(ptr noundef nonnull %i.dik) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2131

_ZNSt6vectorIiSaIiEED2Ev.exit2131:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2129, %bb.aeo
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %i.dil = load ptr, ptr %67, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2132 = icmp eq ptr %i.dil, null
  br i1 %.not.i.i.i2132, label %_ZNSt6vectorIiSaIiEED2Ev.exit2133, label %bb.aep

bb.aep:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2131
  call void @_ZdlPv(ptr noundef nonnull %i.dil) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2133

_ZNSt6vectorIiSaIiEED2Ev.exit2133:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2131, %bb.aep
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %.not.i.i.i2134 = icmp eq ptr %i.dfl, null
  br i1 %.not.i.i.i2134, label %_ZNSt6vectorIiSaIiEED2Ev.exit2135, label %bb.aeq

bb.aeq:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2133
  call void @_ZdlPv(ptr noundef nonnull %i.dfl) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2135

_ZNSt6vectorIiSaIiEED2Ev.exit2135:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2133, %bb.aeq
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  %.not.i.i.i2136 = icmp eq ptr %i.dfa, null
  br i1 %.not.i.i.i2136, label %_ZNSt6vectorIiSaIiEED2Ev.exit2137, label %bb.aer

bb.aer:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2135
  call void @_ZdlPv(ptr noundef nonnull %i.dfa) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2137

_ZNSt6vectorIiSaIiEED2Ev.exit2137:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2135, %bb.aer
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  %.not.i.i.i2138 = icmp eq ptr %i.ded, null
  br i1 %.not.i.i.i2138, label %_ZNSt6vectorIiSaIiEED2Ev.exit2139, label %bb.aes

bb.aes:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2137
  call void @_ZdlPv(ptr noundef nonnull %i.ded) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2139

_ZNSt6vectorIiSaIiEED2Ev.exit2139:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2137, %bb.aes
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge3315.split
  %.011883316 = phi i32 [ %i.dja, %._crit_edge3315.split ], [ 0, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.dim = load ptr, ptr %i.brn, align 8, !tbaa !39
  %i.din = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %i.dio = ptrtoint ptr %i.dim to i64
  %i.dip = ptrtoint ptr %i.din to i64
  %i.diq = sub i64 %i.dio, %i.dip
  %i.dir = ashr exact i64 %i.diq, 2
  %i.dis = udiv i64 %i.dir, %i.dhw
  %i.dit = udiv i64 %i.dis, %i.dia                ; 2 uses
  %i.diu = trunc i64 %i.dit to i32                ; 2 uses
  %.reass = mul i32 %.011883316, %factor.op.mul
  %i.div = mul nsw i32 %.reass, %i.diu
  %i.diw = sext i32 %i.div to i64
  %i.dix = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.diw
  %i.diy = icmp sgt i32 %i.diu, 0
  br i1 %i.diy, label %.preheader.preheader, label %._crit_edge3315.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.diz = and i64 %i.dit, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge3313
  %indvars.iv3554 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next3555, %._crit_edge3313 ] ; 2 uses
  br label %bb.aet

._crit_edge3315.split:                            ; preds = %._crit_edge3313, %.preheader.lr.ph
  %i.dja = add nuw nsw i32 %.011883316, 1         ; 2 uses
  %exitcond3559.not = icmp eq i32 %i.dja, %i.dea
  br i1 %exitcond3559.not, label %._crit_edge3319.split, label %.preheader.lr.ph, !llvm.loop !138

._crit_edge3313:                                  ; preds = %bb.aet
  %indvars.iv.next3555 = add nuw nsw i64 %indvars.iv3554, 1 ; 2 uses
  %98 = icmp slt i64 %indvars.iv.next3555, %i.dhx
  br i1 %98, label %.preheader, label %._crit_edge3315.split, !llvm.loop !139

bb.aet:                                           ; preds = %.preheader, %bb.aet
  %indvars.iv3551 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next3552, %bb.aet ] ; 2 uses
  %i.djb = mul nuw nsw i64 %indvars.iv3551, %i.dhx
  %i.djc = add nuw nsw i64 %i.djb, %indvars.iv3554
  %i.djd = mul nsw i64 %i.djc, %i.dhw
  %i.dje = getelementptr inbounds [4 x i8], ptr %i.dix, i64 %i.djd
  %i.djf = call i64 @fwrite(ptr noundef %i.dje, i64 noundef 4, i64 noundef %i.dhw, ptr noundef %i.zl) ; 0 uses
  %indvars.iv.next3552 = add nuw nsw i64 %indvars.iv3551, 1 ; 2 uses
  %i.djg = icmp samesign ult i64 %indvars.iv.next3552, %i.diz
  br i1 %i.djg, label %bb.aet, label %._crit_edge3313, !llvm.loop !140

_ZNSt6vectorIfSaIfEED2Ev.exit2123:                ; preds = %bb.adu, %bb.adt, %bb.ads
  %.pn1268 = phi { ptr, i32 } [ %i.der, %bb.ads ], [ %i.des, %bb.adt ], [ %i.des, %bb.adu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %bb.aeu

bb.aeu:                                           ; preds = %bb.adr, %_ZNSt6vectorIfSaIfEED2Ev.exit2123, %bb.adq
  %.pn1268.pn.pn = phi { ptr, i32 } [ %i.dep, %bb.adq ], [ %.pn1268, %_ZNSt6vectorIfSaIfEED2Ev.exit2123 ], [ %i.deq, %bb.adr ] ; 2 uses
  %i.djh = load ptr, ptr %69, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2140 = icmp eq ptr %i.djh, null
  br i1 %.not.i.i.i2140, label %_ZNSt6vectorIiSaIiEED2Ev.exit2141, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  call void @_ZdlPv(ptr noundef nonnull %i.djh) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2141

_ZNSt6vectorIiSaIiEED2Ev.exit2141:                ; preds = %bb.aev, %bb.aeu, %bb.adp
  %.pn1268.pn.pn.pn = phi { ptr, i32 } [ %i.deo, %bb.adp ], [ %.pn1268.pn.pn, %bb.aeu ], [ %.pn1268.pn.pn, %bb.aev ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  %i.dji = load ptr, ptr %68, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2142 = icmp eq ptr %i.dji, null
  br i1 %.not.i.i.i2142, label %_ZNSt6vectorIiSaIiEED2Ev.exit2143, label %bb.aew

bb.aew:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2141
  call void @_ZdlPv(ptr noundef nonnull %i.dji) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2143

_ZNSt6vectorIiSaIiEED2Ev.exit2143:                ; preds = %bb.aew, %_ZNSt6vectorIiSaIiEED2Ev.exit2141, %bb.ado
  %.pn1268.pn.pn.pn.pn = phi { ptr, i32 } [ %i.den, %bb.ado ], [ %.pn1268.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2141 ], [ %.pn1268.pn.pn.pn, %bb.aew ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %i.djj = load ptr, ptr %67, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2144 = icmp eq ptr %i.djj, null
  br i1 %.not.i.i.i2144, label %_ZNSt6vectorIiSaIiEED2Ev.exit2145, label %bb.aex

bb.aex:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2143
  call void @_ZdlPv(ptr noundef nonnull %i.djj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2145

_ZNSt6vectorIiSaIiEED2Ev.exit2145:                ; preds = %bb.aex, %_ZNSt6vectorIiSaIiEED2Ev.exit2143, %bb.adn
  %.pn1268.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dem, %bb.adn ], [ %.pn1268.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2143 ], [ %.pn1268.pn.pn.pn.pn, %bb.aex ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %i.djk = load ptr, ptr %66, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2146 = icmp eq ptr %i.djk, null
  br i1 %.not.i.i.i2146, label %_ZNSt6vectorIiSaIiEED2Ev.exit2147, label %bb.aey

bb.aey:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2145
  call void @_ZdlPv(ptr noundef nonnull %i.djk) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2147

_ZNSt6vectorIiSaIiEED2Ev.exit2147:                ; preds = %bb.aey, %_ZNSt6vectorIiSaIiEED2Ev.exit2145, %bb.adm
  %.pn1268.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.del, %bb.adm ], [ %.pn1268.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2145 ], [ %.pn1268.pn.pn.pn.pn.pn, %bb.aey ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  %i.djl = load ptr, ptr %65, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2148 = icmp eq ptr %i.djl, null
  br i1 %.not.i.i.i2148, label %_ZNSt6vectorIiSaIiEED2Ev.exit2149, label %bb.aez

bb.aez:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2147
  call void @_ZdlPv(ptr noundef nonnull %i.djl) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2149

_ZNSt6vectorIiSaIiEED2Ev.exit2149:                ; preds = %bb.aez, %_ZNSt6vectorIiSaIiEED2Ev.exit2147, %bb.adl
  %.pn1268.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dek, %bb.adl ], [ %.pn1268.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2147 ], [ %.pn1268.pn.pn.pn.pn.pn.pn, %bb.aez ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  %i.djm = load ptr, ptr %64, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2150 = icmp eq ptr %i.djm, null
  br i1 %.not.i.i.i2150, label %_ZNSt6vectorIiSaIiEED2Ev.exit2151, label %bb.afa

bb.afa:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2149
  call void @_ZdlPv(ptr noundef nonnull %i.djm) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2151

_ZNSt6vectorIiSaIiEED2Ev.exit2151:                ; preds = %bb.afa, %_ZNSt6vectorIiSaIiEED2Ev.exit2149, %bb.adk
  %.pn1268.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dej, %bb.adk ], [ %.pn1268.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2149 ], [ %.pn1268.pn.pn.pn.pn.pn.pn.pn, %bb.afa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %bb.asd

bb.afb:                                           ; preds = %bb.acx
  %i.djn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.81)
  br i1 %i.djn, label %bb.afc, label %bb.afg

bb.afc:                                           ; preds = %bb.afb
  %i.djo = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btf, ptr noundef nonnull @.str.236)
          to label %bb.afd unwind label %bb.afe

bb.afd:                                           ; preds = %bb.afc
  %i.djp = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btf, ptr noundef nonnull @.str.237)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2159 unwind label %bb.aff

_ZNK9MXNetNode9AttrProxycviEv.exit2159:           ; preds = %bb.afd
  %i.djq = call i64 @fwrite(ptr nonnull @.str.238, i64 6, i64 1, ptr %i.zk) ; 0 uses
  %i.djr = call i64 @fwrite(ptr nonnull @.str.239, i64 6, i64 1, ptr %i.zk) ; 0 uses
  %i.djs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.175, i32 noundef %i.djo) #23 ; 0 uses
  %i.djt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.169, i32 noundef %i.djp) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afe:                                           ; preds = %bb.afc
  %i.dju = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.aff:                                           ; preds = %bb.afd
  %i.djv = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.afg:                                           ; preds = %bb.afb
  %i.djw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.83)
  br i1 %i.djw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  %i.djx = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.84)
  br i1 %i.djx, label %bb.afl, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.djy = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.85)
  br i1 %i.djy, label %bb.afl, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.djz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.86)
  br i1 %i.djz, label %bb.afl, label %bb.afk

bb.afk:                                           ; preds = %bb.afj
  %i.dka = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.87)
  br i1 %i.dka, label %bb.afl, label %bb.afm

bb.afl:                                           ; preds = %bb.afk, %bb.afj, %bb.afi, %bb.afh
  %i.dkb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 0) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afm:                                           ; preds = %bb.afk
  %i.dkc = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.88)
  br i1 %i.dkc, label %bb.afp, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.dkd = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.89)
  br i1 %i.dkd, label %bb.afp, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  %i.dke = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.90)
  br i1 %i.dke, label %bb.afp, label %bb.afq

bb.afp:                                           ; preds = %bb.afo, %bb.afn, %bb.afm
  %i.dkf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 3) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afq:                                           ; preds = %bb.afo
  %i.dkg = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.91)
  br i1 %i.dkg, label %bb.aft, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %i.dkh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.92)
  br i1 %i.dkh, label %bb.aft, label %bb.afs

bb.afs:                                           ; preds = %bb.afr
  %i.dki = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.93)
  br i1 %i.dki, label %bb.aft, label %bb.afu

bb.aft:                                           ; preds = %bb.afs, %bb.afr, %bb.afq
  %i.dkj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 2) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afu:                                           ; preds = %bb.afs
  %i.dkk = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.94)
  br i1 %i.dkk, label %bb.afy, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.dkl = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.95)
  br i1 %i.dkl, label %bb.afy, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  %i.dkm = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.96)
  br i1 %i.dkm, label %bb.afy, label %bb.afx

bb.afx:                                           ; preds = %bb.afw
  %i.dkn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.97)
  br i1 %i.dkn, label %bb.afy, label %bb.afz

bb.afy:                                           ; preds = %bb.afx, %bb.afw, %bb.afv, %bb.afu
  %i.dko = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 1) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afz:                                           ; preds = %bb.afx
  %i.dkp = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.98)
  br i1 %i.dkp, label %bb.aga, label %bb.agh

bb.aga:                                           ; preds = %bb.afz
  %i.dkq = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btf, ptr noundef nonnull @.str.240)
          to label %bb.agb unwind label %bb.age

end_hunk_3
begin_hunk_4_@main:bb.a
  br i1 %i.elm, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2445
  %.19.i.i.i2440.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ell, ptr %.0811.i.i.i2439, ptr %.012.i.i.i2438
  %.19.i.i.i2440.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i2440.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.eln = load i64, ptr %.19.i.i.i2440.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !13
  %i.elo = icmp ugt i64 %i.eln, %i.elh
  br i1 %i.elo, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread, label %.lr.ph.i.i.i.i2451

.lr.ph.i.i.i.i2451:                               ; preds = %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448, %.lr.ph.i.i.i.i2451
  %.012.i.i.i.i2452 = phi ptr [ %.1.i.i.i.i2457, %.lr.ph.i.i.i.i2451 ], [ %i.eli, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448 ] ; 4 uses
  %.0811.i.i.i.i2453 = phi ptr [ %.19.i.i.i.i2454, %.lr.ph.i.i.i.i2451 ], [ %i.zu, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448 ] ; 2 uses
  %i.elp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i2452, i64 32
  %i.elq = load i64, ptr %i.elp, align 8, !tbaa !13
  %i.elr = icmp ult i64 %i.elq, %i.elh            ; 3 uses
  %.19.i.i.i.i2454 = select i1 %i.elr, ptr %.0811.i.i.i.i2453, ptr %.012.i.i.i.i2452 ; 4 uses
  %.1.in.v.i.i.i.i2455 = select i1 %i.elr, i64 24, i64 16
  %.1.in.i.i.i.i2456 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i2452, i64 %.1.in.v.i.i.i.i2455
  %.1.i.i.i.i2457 = load ptr, ptr %.1.in.i.i.i.i2456, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i2458 = icmp eq ptr %.1.i.i.i.i2457, null
  br i1 %.not.i.i.i.i2458, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE11lower_boundERS3_.exit.i2459, label %.lr.ph.i.i.i.i2451, !llvm.loop !91

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE11lower_boundERS3_.exit.i2459: ; preds = %.lr.ph.i.i.i.i2451
  %i.els = icmp eq ptr %.19.i.i.i.i2454, %i.zu
  br i1 %i.els, label %.critedge.i2461, label %bb.arr

bb.arr:                                           ; preds = %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE11lower_boundERS3_.exit.i2459
  %.19.i.i.i.i2454.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.elr, ptr %.0811.i.i.i.i2453, ptr %.012.i.i.i.i2452
  %.19.i.i.i.i2454.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i2454.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.elt = load i64, ptr %.19.i.i.i.i2454.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !13
  %i.elu = icmp ugt i64 %i.elt, %i.elh
  br i1 %i.elu, label %.critedge.i2461, label %bb.arw

.critedge.i2461:                                  ; preds = %bb.arr, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE11lower_boundERS3_.exit.i2459
  %i.elv = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc2468 unwind label %bb.asb ; 6 uses

.noexc2468:                                       ; preds = %.critedge.i2461
  %i.elw = getelementptr inbounds nuw i8, ptr %i.elv, i64 32 ; 3 uses
  store i64 %i.elh, ptr %i.elw, align 8, !tbaa !102
  %i.elx = getelementptr inbounds nuw i8, ptr %i.elv, i64 40
  store i32 0, ptr %i.elx, align 8, !tbaa !104
  %i.ely = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr %.19.i.i.i.i2454, ptr noundef nonnull align 8 dereferenceable(8) %i.elw)
          to label %bb.ars unwind label %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i2463 ; 2 uses

bb.ars:                                           ; preds = %.noexc2468
  %i.elz = extractvalue { ptr, ptr } %i.ely, 0    ; 2 uses
  %i.ema = extractvalue { ptr, ptr } %i.ely, 1    ; 4 uses
  %.not.i.i2464 = icmp eq ptr %i.ema, null
  br i1 %.not.i.i2464, label %bb.arv, label %bb.art

bb.art:                                           ; preds = %bb.ars
  %.not.i.i.i4.i2465 = icmp ne ptr %i.elz, null
  %i.emb = icmp eq ptr %i.ema, %i.zu
  %or.cond.i.i.i.i2466 = or i1 %.not.i.i.i4.i2465, %i.emb
  br i1 %or.cond.i.i.i.i2466, label %.thread.i.i2467, label %bb.aru

bb.aru:                                           ; preds = %bb.art
  %i.emc = getelementptr inbounds nuw i8, ptr %i.ema, i64 32
  %i.emd = load i64, ptr %i.elw, align 8, !tbaa !13
  %i.eme = load i64, ptr %i.emc, align 8, !tbaa !13
  %i.emf = icmp ult i64 %i.emd, %i.eme
  br label %.thread.i.i2467

.thread.i.i2467:                                  ; preds = %bb.aru, %bb.art
  %i.emg = phi i1 [ %i.emf, %bb.aru ], [ true, %bb.art ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.emg, ptr noundef nonnull %i.elv, ptr noundef nonnull %i.ema, ptr noundef nonnull align 8 dereferenceable(32) %i.zu) #23
  %i.emh = load i64, ptr %i.zy, align 8, !tbaa !85
  %i.emi = add i64 %i.emh, 1
  store i64 %i.emi, ptr %i.zy, align 8, !tbaa !85
  br label %bb.arw

_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i2463: ; preds = %.noexc2468
  %i.emj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.elv) #25
  br label %bb.asd

bb.arv:                                           ; preds = %bb.ars
  call void @_ZdlPv(ptr noundef nonnull %i.elv) #25
  br label %bb.arw

bb.arw:                                           ; preds = %bb.arv, %.thread.i.i2467, %bb.arr
  %.sroa.09.0.i2460 = phi ptr [ %.19.i.i.i.i2454, %bb.arr ], [ %i.elv, %.thread.i.i2467 ], [ %i.elz, %bb.arv ]
  %i.emk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i2460, i64 40
  %i.eml = load i32, ptr %i.emk, align 4, !tbaa !27 ; 4 uses
  %i.emm = icmp sgt i32 %i.eml, 1
  br i1 %i.emm, label %bb.arx, label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread

bb.arx:                                           ; preds = %bb.arw
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #23
  store ptr %i.bsb, ptr %97, align 8, !tbaa !9
  %i.emn = load ptr, ptr %i.cfc, align 8, !tbaa !15 ; 2 uses
  %i.emo = load i64, ptr %i.ele, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.emo, ptr %i.a, align 8, !tbaa !13
  %i.emp = icmp ugt i64 %i.emo, 15
  br i1 %i.emp, label %.noexc.i2473, label %._crit_edge.i.i2472

.noexc.i2473:                                     ; preds = %bb.arx
  %i.emq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2474 unwind label %bb.asc ; 2 uses

.noexc2474:                                       ; preds = %.noexc.i2473
  store ptr %i.emq, ptr %97, align 8, !tbaa !15
  %i.emr = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.emr, ptr %i.bsb, align 8, !tbaa !17
  br label %._crit_edge.i.i2472

._crit_edge.i.i2472:                              ; preds = %.noexc2474, %bb.arx
  %i.ems = phi ptr [ %i.emq, %.noexc2474 ], [ %i.bsb, %bb.arx ] ; 2 uses
  switch i64 %i.emo, label %bb.arz [
    i64 1, label %bb.ary
    i64 0, label %bb.asa
  ]

bb.ary:                                           ; preds = %._crit_edge.i.i2472
  %i.emt = load i8, ptr %i.emn, align 1, !tbaa !17
  store i8 %i.emt, ptr %i.ems, align 1, !tbaa !17
  br label %bb.asa

bb.arz:                                           ; preds = %._crit_edge.i.i2472
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ems, ptr align 1 %i.emn, i64 %i.emo, i1 false)
  br label %bb.asa

bb.asa:                                           ; preds = %bb.arz, %bb.ary, %._crit_edge.i.i2472
  %i.emu = load i64, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  store i64 %i.emu, ptr %i.bsc, align 8, !tbaa !18
  %i.emv = load ptr, ptr %97, align 8, !tbaa !15
  %i.emw = getelementptr inbounds nuw i8, ptr %i.emv, i64 %i.emu
  store i8 0, ptr %i.emw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #23
  %i.emx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bc, i64 noundef 256, ptr noundef nonnull @.str.298, i32 noundef %.111813329) #23 ; 0 uses
  %i.emy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.300, ptr noundef nonnull %i.bc, i32 noundef 1, i32 noundef %i.eml) #23 ; 0 uses
  %i.emz = icmp eq i32 %.010543330, 0
  %i.ena = load ptr, ptr %97, align 8, !tbaa !15  ; 2 uses
  br i1 %i.emz, label %.lr.ph3327.split.us.preheader, label %.lr.ph3327.split.preheader

bb.asb:                                           ; preds = %.critedge.i2461
  %i.enb = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.asc:                                           ; preds = %.noexc.i2473
  %i.enc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #23
  br label %bb.asd

.lr.ph3327.split.preheader:                       ; preds = %bb.asa
  %i.end = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.161, ptr noundef %i.ena, i32 noundef %.010543330) #23 ; 0 uses
  br label %.lr.ph3327.split

.lr.ph3327.split.us.preheader:                    ; preds = %bb.asa
  %i.ene = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.160, ptr noundef %i.ena) #23 ; 0 uses
  br label %.lr.ph3327.split.us

.lr.ph3327.split.us:                              ; preds = %.lr.ph3327.split.us.preheader, %.lr.ph3327.split.us
  %.03325.us = phi i32 [ %i.enh, %.lr.ph3327.split.us ], [ 0, %.lr.ph3327.split.us.preheader ] ; 2 uses
  %i.enf = load ptr, ptr %97, align 8, !tbaa !15
  %i.eng = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.301, ptr noundef %i.enf, i32 noundef %.03325.us) #23 ; 0 uses
  %i.enh = add nuw nsw i32 %.03325.us, 1          ; 2 uses
  %exitcond3572.not.a = icmp eq i32 %i.enh, %i.eml
  br i1 %exitcond3572.not.a, label %._crit_edge3328, label %.lr.ph3327.split.us, !llvm.loop !149

._crit_edge3328:                                  ; preds = %.lr.ph3327.split, %.lr.ph3327.split.us
  %fputc1320 = call i32 @fputc(i32 10, ptr %i.zk) ; 0 uses
  %i.eni = add nsw i32 %.111813329, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #23
  %i.enj = load ptr, ptr %97, align 8, !tbaa !15  ; 2 uses
  %i.enk = icmp eq ptr %i.enj, %i.bsb
  br i1 %i.enk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2476: ; preds = %._crit_edge3328
  call void @_ZdlPv(ptr noundef %i.enj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2478: ; preds = %._crit_edge3328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2476
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #23
  br label %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread

.lr.ph3327.split:                                 ; preds = %.lr.ph3327.split.preheader, %.lr.ph3327.split
  %.03325 = phi i32 [ %i.enn, %.lr.ph3327.split ], [ 0, %.lr.ph3327.split.preheader ] ; 2 uses
  %i.enl = load ptr, ptr %97, align 8, !tbaa !15
  %i.enm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.302, ptr noundef %i.enl, i32 noundef %.010543330, i32 noundef %.03325) #23 ; 0 uses
  %i.enn = add nuw nsw i32 %.03325, 1             ; 2 uses
  %exitcond3570.not = icmp eq i32 %i.enn, %i.eml
  br i1 %exitcond3570.not, label %._crit_edge3328, label %.lr.ph3327.split, !llvm.loop !149

_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2445, %bb.arq, %bb.arw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2478, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448
  %.31183 = phi i32 [ %.111813329, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448 ], [ %i.eni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2478 ], [ %.111813329, %bb.arw ], [ %.111813329, %bb.arq ], [ %.111813329, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i2445 ] ; 2 uses
  %i.eno = add nuw nsw i32 %.010543330, 1         ; 2 uses
  %i.enp = load i32, ptr %i.cfe, align 8, !tbaa !92
  %i.enq = icmp slt i32 %i.eno, %i.enp
  br i1 %i.enq, label %bb.arq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread, !llvm.loop !150

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i1706, %bb.of, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695
  %.41184 = phi i32 [ %.31183, %_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEE4findERS3_.exit2448.thread ], [ %.011803337, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1695 ], [ %.011803337, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread ], [ %.011803337, %bb.of ], [ %.011803337, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i1706 ]
  %i.enr = add nuw i64 %.011853335, 1             ; 2 uses
  %exitcond3574.not = icmp eq i64 %i.enr, %umax3571
  br i1 %exitcond3574.not, label %._crit_edge3340, label %bb.od, !llvm.loop !151

bb.asd:                                           ; preds = %.loopexit2937, %.loopexit.split-lp2938, %.loopexit2965, %.loopexit.split-lp2966, %_ZNSt6vectorIiSaIiEED2Ev.exit1621, %bb.jq, %bb.jp, %bb.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854, %_ZNSt6vectorIfSaIfEED2Ev.exit1927, %bb.xv, %bb.xw, %bb.xx, %bb.xy, %bb.xz, %bb.yb, %bb.ye, %bb.yh, %bb.yk, %bb.yp, %bb.agl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2247, %_ZNSt6vectorIiSaIiEED2Ev.exit2257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333, %bb.amf, %bb.amn, %_ZNSt6vectorIiSaIiEED2Ev.exit2375, %bb.aoq, %bb.apc, %bb.apm, %bb.wg, %bb.wh, %bb.wk, %bb.wl, %bb.wj, %bb.wi, %bb.wf, %bb.we, %bb.wv, %bb.ww, %bb.wz, %bb.wy, %bb.wx, %bb.wu, %bb.wt, %_ZNSt6vectorIfSaIfEED2Ev.exit2006, %bb.ze, %bb.zd, %bb.aan, %bb.aam, %bb.aat, %bb.aas, %_ZNSt6vectorIiSaIiEED2Ev.exit2067, %bb.abe, %_ZNSt6vectorIiSaIiEED2Ev.exit2083, %bb.acp, %_ZNSt6vectorIiSaIiEED2Ev.exit2151, %bb.adj, %bb.aff, %bb.afe, %bb.agf, %bb.agg, %bb.age, %bb.agx, %_ZNSt6vectorIfSaIfEED2Ev.exit2187, %bb.agw, %bb.ahf, %bb.ahe, %bb.ahk, %bb.ahj, %_ZNSt6vectorIfSaIfEED2Ev.exit2213, %bb.ahu, %bb.aht, %bb.aoc, %bb.aoe, %bb.aod, %bb.aob, %bb.aol, %bb.aok, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2431, %bb.arf, %bb.asc, %bb.up, %bb.sa, %bb.qg, %bb.px, %bb.or, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i2463, %bb.asb, %_ZNSt6vectorIiSaIiEED2Ev.exit142.i, %bb.my, %bb.ns
  %.sroa.02805.03115 = phi ptr [ %.sroa.02805.03247, %bb.jq ], [ %.sroa.02805.0.lcssa, %bb.asc ], [ %.sroa.02805.03247, %bb.jp ], [ %.sroa.02805.03247, %bb.iw ], [ %.sroa.02805.03247, %_ZNSt6vectorIiSaIiEED2Ev.exit1621 ], [ %.sroa.02805.0.lcssa, %bb.ns ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit142.i ], [ %.sroa.02805.03247, %.loopexit.split-lp2966 ], [ %.sroa.02805.0.lcssa, %bb.my ], [ %.sroa.02805.0.lcssa, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i2463 ], [ %.sroa.02805.0.lcssa, %bb.up ], [ %.sroa.02805.0.lcssa, %bb.or ], [ %.sroa.02805.0.lcssa, %bb.px ], [ %.sroa.02805.0.lcssa, %bb.qg ], [ %.sroa.02805.0.lcssa, %bb.sa ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854 ], [ %.sroa.02805.0.lcssa, %bb.arf ], [ %.sroa.02805.0.lcssa, %bb.aok ], [ %.sroa.02805.0.lcssa, %bb.wk ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit1927 ], [ %.sroa.02805.0.lcssa, %bb.xv ], [ %.sroa.02805.0.lcssa, %bb.xw ], [ %.sroa.02805.0.lcssa, %bb.xx ], [ %.sroa.02805.0.lcssa, %bb.xy ], [ %.sroa.02805.0.lcssa, %bb.xz ], [ %.sroa.02805.0.lcssa, %bb.yb ], [ %.sroa.02805.0.lcssa, %bb.ye ], [ %.sroa.02805.0.lcssa, %bb.yh ], [ %.sroa.02805.0.lcssa, %bb.yk ], [ %.sroa.02805.0.lcssa, %bb.yp ], [ %.sroa.02805.0.lcssa, %bb.wx ], [ %.sroa.02805.0.lcssa, %bb.zd ], [ %.sroa.02805.0.lcssa, %bb.aam ], [ %.sroa.02805.0.lcssa, %bb.aas ], [ %.sroa.02805.0.lcssa, %bb.abe ], [ %.sroa.02805.0.lcssa, %bb.acp ], [ %.sroa.02805.0.lcssa, %bb.adj ], [ %.sroa.02805.0.lcssa, %bb.afe ], [ %.sroa.02805.0.lcssa, %bb.agl ], [ %.sroa.02805.0.lcssa, %bb.agf ], [ %.sroa.02805.0.lcssa, %bb.agx ], [ %.sroa.02805.0.lcssa, %bb.ahe ], [ %.sroa.02805.0.lcssa, %bb.ahj ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2227 ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2247 ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit2257 ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281 ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333 ], [ %.sroa.02805.0.lcssa, %bb.amf ], [ %.sroa.02805.0.lcssa, %bb.amn ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit2375 ], [ %.sroa.02805.0.lcssa, %bb.aht ], [ %.sroa.02805.0.lcssa, %bb.aod ], [ %.sroa.02805.0.lcssa, %bb.aoq ], [ %.sroa.02805.0.lcssa, %bb.apc ], [ %.sroa.02805.0.lcssa, %bb.apm ], [ %.sroa.02805.0.lcssa, %bb.we ], [ %.sroa.02805.0.lcssa, %bb.wf ], [ %.sroa.02805.0.lcssa, %bb.wg ], [ %.sroa.02805.0.lcssa, %bb.wh ], [ %.sroa.02805.0.lcssa, %bb.wi ], [ %.sroa.02805.0.lcssa, %bb.wj ], [ %.sroa.02805.0.lcssa, %bb.wl ], [ %.sroa.02805.0.lcssa, %bb.wt ], [ %.sroa.02805.0.lcssa, %bb.wu ], [ %.sroa.02805.0.lcssa, %bb.wv ], [ %.sroa.02805.0.lcssa, %bb.ww ], [ %.sroa.02805.0.lcssa, %bb.wz ], [ %.sroa.02805.0.lcssa, %bb.wy ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit2006 ], [ %.sroa.02805.0.lcssa, %bb.ze ], [ %.sroa.02805.0.lcssa, %bb.aan ], [ %.sroa.02805.0.lcssa, %bb.aat ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit2067 ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit2083 ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit2151 ], [ %.sroa.02805.0.lcssa, %bb.aff ], [ %.sroa.02805.0.lcssa, %bb.age ], [ %.sroa.02805.0.lcssa, %bb.agg ], [ %.sroa.02805.0.lcssa, %bb.agw ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit2187 ], [ %.sroa.02805.0.lcssa, %bb.ahf ], [ %.sroa.02805.0.lcssa, %bb.ahk ], [ %.sroa.02805.0.lcssa, %_ZNSt6vectorIfSaIfEED2Ev.exit2213 ], [ %.sroa.02805.0.lcssa, %bb.ahu ], [ %.sroa.02805.0.lcssa, %bb.aob ], [ %.sroa.02805.0.lcssa, %bb.aoc ], [ %.sroa.02805.0.lcssa, %bb.aoe ], [ %.sroa.02805.0.lcssa, %bb.aol ], [ %.sroa.02805.0.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2431 ], [ %.sroa.02805.0.lcssa, %bb.asb ], [ %.sroa.02805.03247, %.loopexit2965 ], [ %.sroa.02805.0.lcssa, %.loopexit.split-lp2938 ], [ %.sroa.02805.0.lcssa, %.loopexit2937 ] ; 2 uses
  %.pn1345.pn = phi { ptr, i32 } [ %i.apo, %bb.jq ], [ %i.enc, %bb.asc ], [ %.pn1343, %bb.jp ], [ %i.ant, %bb.iw ], [ %.pn1341, %_ZNSt6vectorIiSaIiEED2Ev.exit1621 ], [ %.pn72.pn.i, %bb.ns ], [ %.pn77.pn.pn.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit142.i ], [ %lpad.loopexit.split-lp2968, %.loopexit.split-lp2966 ], [ %.pn79.pn.i, %bb.my ], [ %i.emj, %_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i2463 ], [ %i.cce, %bb.up ], [ %i.bvy, %bb.or ], [ %i.bxh, %bb.px ], [ %i.bxr, %bb.qg ], [ %i.bzl, %bb.sa ], [ %.pn1322.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1854 ], [ %i.eje, %bb.arf ], [ %i.edf, %bb.aok ], [ %i.cnm, %bb.wk ], [ %.pn1303.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit1927 ], [ %i.csd, %bb.xv ], [ %i.csk, %bb.xw ], [ %i.csz, %bb.xx ], [ %i.ctg, %bb.xy ], [ %i.ctn, %bb.xz ], [ %i.ctu, %bb.yb ], [ %i.cub, %bb.ye ], [ %i.cui, %bb.yh ], [ %i.cup, %bb.yk ], [ %i.cuw, %bb.yp ], [ %i.com, %bb.wx ], [ %i.cvj, %bb.zd ], [ %i.cyx, %bb.aam ], [ %i.czf, %bb.aas ], [ %i.czs, %bb.abe ], [ %i.ddj, %bb.acp ], [ %i.dei, %bb.adj ], [ %i.dju, %bb.afe ], [ %i.dlt, %bb.agl ], [ %i.dlm, %bb.agf ], [ %i.dne, %bb.agx ], [ %i.dnp, %bb.ahe ], [ %i.dny, %bb.ahj ], [ %.pn1249.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2227 ], [ %.pn1245.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2247 ], [ %.pn1241, %_ZNSt6vectorIiSaIiEED2Ev.exit2257 ], [ %.pn1237.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2281 ], [ %.pn1229.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2333 ], [ %i.dyh, %bb.amf ], [ %i.dzp, %bb.amn ], [ %.pn1223.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2375 ], [ %i.dpe, %bb.aht ], [ %i.ect, %bb.aod ], [ %i.edp, %bb.aoq ], [ %i.eef, %bb.apc ], [ %i.efk, %bb.apm ], [ %i.cng, %bb.we ], [ %i.cnh, %bb.wf ], [ %i.cni, %bb.wg ], [ %i.cnj, %bb.wh ], [ %i.cnk, %bb.wi ], [ %i.cnl, %bb.wj ], [ %i.cnn, %bb.wl ], [ %i.coi, %bb.wt ], [ %i.coj, %bb.wu ], [ %i.cok, %bb.wv ], [ %i.col, %bb.ww ], [ %i.coo, %bb.wz ], [ %i.con, %bb.wy ], [ %.pn1295.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit2006 ], [ %i.cvk, %bb.ze ], [ %i.cyy, %bb.aan ], [ %i.czg, %bb.aat ], [ %.pn1282.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2067 ], [ %.pn1279, %_ZNSt6vectorIiSaIiEED2Ev.exit2083 ], [ %.pn1268.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2151 ], [ %i.djv, %bb.aff ], [ %i.dll, %bb.age ], [ %i.dln, %bb.agg ], [ %i.dnd, %bb.agw ], [ %.pn1259, %_ZNSt6vectorIfSaIfEED2Ev.exit2187 ], [ %i.dnq, %bb.ahf ], [ %i.dnz, %bb.ahk ], [ %.pn1252, %_ZNSt6vectorIfSaIfEED2Ev.exit2213 ], [ %i.dpf, %bb.ahu ], [ %i.ecr, %bb.aob ], [ %i.ecs, %bb.aoc ], [ %i.ecu, %bb.aoe ], [ %i.edg, %bb.aol ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2431 ], [ %i.enb, %bb.asb ], [ %lpad.loopexit2967, %.loopexit2965 ], [ %lpad.loopexit.split-lp2940, %.loopexit.split-lp2938 ], [ %lpad.loopexit2939, %.loopexit2937 ] ; 2 uses
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %.not.i.i.i2479 = icmp eq ptr %.sroa.02805.03115, null
  br i1 %.not.i.i.i2479, label %_ZNSt6vectorIiSaIiEED2Ev.exit2480, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  call void @_ZdlPv(ptr noundef nonnull %.sroa.02805.03115) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2480

_ZNSt6vectorIiSaIiEED2Ev.exit2480:                ; preds = %.thread2903, %bb.asd, %bb.ase
  %.pn1350.pn2907 = phi { ptr, i32 } [ %.pn1350, %.thread2903 ], [ %.pn1345.pn, %bb.asd ], [ %.pn1345.pn, %bb.ase ]
  call void @_ZNSt3mapImiSt4lessImESaISt4pairIKmiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body

.body:                                            ; preds = %bb.db, %bb.fw, %bb.fz, %_ZNSt6vectorIiSaIiEED2Ev.exit2480
  %.pn1350.pn.pn = phi { ptr, i32 } [ %.pn1350.pn2907, %_ZNSt6vectorIiSaIiEED2Ev.exit2480 ], [ %.pn105.i, %bb.db ], [ %i.abk, %bb.fz ], [ %.pn152.pn.i, %bb.fw ]
  call void @_ZNSt6vectorI10MXNetParamSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  resume { ptr, i32 } %.pn1350.pn.pn

bb.asf:                                           ; preds = %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit, %bb.b
  %.01055 = phi i32 [ 0, %_ZNSt6vectorI9MXNetNodeSaIS0_EED2Ev.exit ], [ -1, %bb.b ]
  ret i32 %.01055
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10MXNetParamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = load ptr, ptr %0, align 8, !tbaa !30     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !27
  store i32 %i.r, ptr %i.o, align 4, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !34
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4, !tbaa !27
  store i32 %i.z, ptr %i.i, align 4, !tbaa !27
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !66

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !30
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !33 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !30
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
end_hunk_4
