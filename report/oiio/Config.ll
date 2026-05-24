inline.NumInlined: 10698
inline.NumDeleted: 2974
begin_hunk_0_@_ZNK16OpenColorIO_v2_56Config8validateEv:bb.a
bb.fg:                                            ; preds = %bb.ff
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %bb.gb, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wc = load ptr, ptr %i.vo, align 8, !tbaa !31
  %i.wd = load ptr, ptr @_ZN16OpenColorIO_v2_522ROLE_INTERCHANGE_SCENEE, align 8, !tbaa !30
  %i.we = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.wc, ptr noundef %i.wd)
          to label %bb.fi unwind label %bb.fc

bb.fi:                                            ; preds = %bb.fh
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %bb.fj, label %bb.fr

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.01601.02176, i64 64
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !31
  %i.wi = load ptr, ptr %0, align 8, !tbaa !36, !noalias !322
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.77") align 8 %31, ptr noundef nonnull align 8 dereferenceable(1120) %i.wi, ptr noundef %i.wh)
          to label %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit829 unwind label %bb.fq

_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit829: ; preds = %bb.fj
  %i.wj = load ptr, ptr %31, align 8, !tbaa !313
  %i.wk = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wj) #33
  %i.wl = icmp eq i32 %i.wk, 0
  %i.wm = load ptr, ptr %i.vn, align 8, !tbaa !14 ; 8 uses
  %.not.i.i830 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i830, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834, label %bb.fk

bb.fk:                                            ; preds = %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit829
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.wn, align 8, !tbaa !15
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !17
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !18
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #33, !inline_history !319
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !18
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #33, !inline_history !319
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834

bb.fm:                                            ; preds = %bb.fk
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i831 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i831, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i832

bb.fo:                                            ; preds = %bb.fm
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i832

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i832: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i833 = phi i32 [ %i.wq, %bb.fn ], [ %i.xa, %bb.fo ]
  %i.xb = icmp eq i32 %.0.i.i.i.i833, 1
  br i1 %i.xb, label %bb.fp, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834, !prof !22

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i832
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834: ; preds = %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit829, %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i832, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %bb.gb

bb.fq:                                            ; preds = %bb.fj
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %bb.abr

bb.fr:                                            ; preds = %bb.fi
  %i.xd = load ptr, ptr %i.vo, align 8, !tbaa !31
  %i.xe = load ptr, ptr @_ZN16OpenColorIO_v2_524ROLE_INTERCHANGE_DISPLAYE, align 8, !tbaa !30
  %i.xf = invoke noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef %i.xd, ptr noundef %i.xe)
          to label %bb.fs unwind label %bb.fc

bb.fs:                                            ; preds = %bb.fr
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %bb.ft, label %bb.gb

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.01601.02176, i64 64
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !31
  %i.xj = load ptr, ptr %0, align 8, !tbaa !36, !noalias !325
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.77") align 8 %32, ptr noundef nonnull align 8 dereferenceable(1120) %i.xj, ptr noundef %i.xi)
          to label %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit836 unwind label %bb.ga

_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit836: ; preds = %bb.ft
  %i.xk = load ptr, ptr %32, align 8, !tbaa !313
  %i.xl = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xk) #33
  %i.xm = icmp eq i32 %i.xl, 1
  %i.xn = load ptr, ptr %i.vm, align 8, !tbaa !14 ; 8 uses
  %.not.i.i837 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i837, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841, label %bb.fu

bb.fu:                                            ; preds = %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit836
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 4 uses
  %i.xp = load atomic i64, ptr %i.xo acquire, align 8 ; 2 uses
  %i.xq = icmp eq i64 %i.xp, 4294967297
  %i.xr = trunc i64 %i.xp to i32                  ; 2 uses
  br i1 %i.xq, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.xo, align 8, !tbaa !15
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  store i32 0, ptr %i.xs, align 4, !tbaa !17
  %i.xt = load ptr, ptr %i.xn, align 8, !tbaa !18
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #33, !inline_history !319
  %i.xw = load ptr, ptr %i.xn, align 8, !tbaa !18
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #33, !inline_history !319
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841

bb.fw:                                            ; preds = %bb.fu
  %i.xz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i838 = icmp eq i8 %i.xz, 0
  br i1 %.not.i.i.i838, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ya = add nsw i32 %i.xr, -1
  store i32 %i.ya, ptr %i.xo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i839

bb.fy:                                            ; preds = %bb.fw
  %i.yb = atomicrmw volatile add ptr %i.xo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i839

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i839: ; preds = %bb.fy, %bb.fx
  %.0.i.i.i.i840 = phi i32 [ %i.xr, %bb.fx ], [ %i.yb, %bb.fy ]
  %i.yc = icmp eq i32 %.0.i.i.i.i840, 1
  br i1 %i.yc, label %bb.fz, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841, !prof !22

bb.fz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i839
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841: ; preds = %_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc.exit836, %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i839, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.gb

bb.ga:                                            ; preds = %bb.ft
  %i.yd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.abr

bb.gb:                                            ; preds = %bb.fg, %bb.fe, %bb.fb, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841, %bb.fs
  %.1354 = phi i1 [ %.03532177, %bb.fs ], [ %.03532177, %bb.fb ], [ %.03532177, %bb.fe ], [ %.03532177, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %i.xm, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03532177, %bb.fg ] ; 4 uses
  %.1352 = phi i1 [ %.03512178, %bb.fs ], [ %.03512178, %bb.fb ], [ %.03512178, %bb.fe ], [ %.03512178, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ true, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03512178, %bb.fg ] ; 4 uses
  %.1350 = phi i1 [ %.03492179, %bb.fs ], [ %.03492179, %bb.fb ], [ %.03492179, %bb.fe ], [ %i.wl, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %.03492179, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03492179, %bb.fg ] ; 4 uses
  %.1348 = phi i1 [ %.03472180, %bb.fs ], [ %.03472180, %bb.fb ], [ %.03472180, %bb.fe ], [ true, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %.03472180, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03472180, %bb.fg ] ; 4 uses
  %.1346 = phi i1 [ %.03452181, %bb.fs ], [ %.03452181, %bb.fb ], [ %.03452181, %bb.fe ], [ %.03452181, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %.03452181, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ true, %bb.fg ] ; 4 uses
  %.1343 = phi i1 [ %.03422182, %bb.fs ], [ %.03422182, %bb.fb ], [ true, %bb.fe ], [ %.03422182, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %.03422182, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03422182, %bb.fg ] ; 3 uses
  %.1341 = phi i1 [ %.03402183, %bb.fs ], [ true, %bb.fb ], [ %.03402183, %bb.fe ], [ %.03402183, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit834 ], [ %.03402183, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit841 ], [ %.03402183, %bb.fg ] ; 2 uses
  %i.ye = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01601.02176) #38 ; 2 uses
  %.not1646.a = icmp eq ptr %i.ye, %i.vl
  br i1 %.not1646.a, label %._crit_edge2186, label %bb.fa

._crit_edge2186.thread:                           ; preds = %bb.ez, %._crit_edge2186
  %.0342.lcssa2858 = phi i1 [ %.1343, %._crit_edge2186 ], [ false, %bb.ez ]
  %.0345.lcssa2856 = phi i1 [ %.1346, %._crit_edge2186 ], [ false, %bb.ez ] ; 2 uses
  %.0347.lcssa2854 = phi i1 [ %.1348, %._crit_edge2186 ], [ false, %bb.ez ] ; 2 uses
  %.0349.lcssa2852 = phi i1 [ %.1350, %._crit_edge2186 ], [ false, %bb.ez ] ; 2 uses
  %.0351.lcssa2850 = phi i1 [ %.1352, %._crit_edge2186 ], [ false, %bb.ez ] ; 2 uses
  %.0353.lcssa2848 = phi i1 [ %.1354, %._crit_edge2186 ], [ false, %bb.ez ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %33)
          to label %bb.gc unwind label %bb.gh

bb.gc:                                            ; preds = %._crit_edge2186.thread
  %i.yf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.48, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843 unwind label %bb.gi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843: ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.yg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.yg, ptr %34, align 8, !tbaa !24, !alias.scope !334
  %i.yh = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.yh, align 8, !tbaa !27, !alias.scope !334
  store i8 0, ptr %i.yg, align 8, !tbaa !21, !alias.scope !334
  %i.yi = getelementptr inbounds nuw i8, ptr %33, i64 48
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !335, !noalias !334 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.yj, null
  br i1 %.not5.i.i, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843
  %121 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %122 = load ptr, ptr %121, align 8, !noalias !334 ; 2 uses
  %123 = icmp ugt ptr %i.yj, %122
  %.08.i.i.i = select i1 %123, ptr %i.yj, ptr %122
  %i.yk = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !336, !noalias !334 ; 2 uses
  %i.ym = ptrtoint ptr %.08.i.i.i to i64
  %i.yn = ptrtoint ptr %i.yl to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 0, i64 noundef 0, ptr noundef %i.yl, i64 noundef %i.yo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ge ; 0 uses

bb.ge:                                            ; preds = %bb.gf, %bb.gd
  %i.yq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yr = load ptr, ptr %34, align 8, !tbaa !31, !alias.scope !334 ; 2 uses
  %i.ys = icmp eq ptr %i.yr, %i.yg
  br i1 %i.ys, label %.body, label %.body.sink.split

bb.gf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit843
  %i.yt = getelementptr inbounds nuw i8, ptr %33, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.yt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ge

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.gf, %bb.gd
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.gg unwind label %bb.gj

bb.gg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.yu = load ptr, ptr %34, align 8, !tbaa !31   ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.yg
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845: ; preds = %bb.gg
  %i.yw = load i64, ptr %i.yg, align 8, !tbaa !21
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i845
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  %i.yy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.yy, ptr %33, align 8, !tbaa !18
  %i.yz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.za = getelementptr i8, ptr %i.yy, i64 -24
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = getelementptr inbounds i8, ptr %33, i64 %i.zb
  store ptr %i.yz, ptr %i.zc, align 8, !tbaa !18
  %i.zd = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.zd, align 8, !tbaa !18
  %i.ze = getelementptr inbounds nuw i8, ptr %33, i64 80
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !31 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %33, i64 96 ; 2 uses
  %i.zh = icmp eq ptr %i.zf, %i.zg
  br i1 %i.zh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847
  %i.zi = load i64, ptr %i.zg, align 8, !tbaa !21
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zj) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit847, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.zd, align 8, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %33, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.zk) #33
  %i.zl = getelementptr inbounds nuw i8, ptr %33, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.zl) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br i1 %.0342.lcssa2858, label %bb.gy, label %bb.gn

bb.gh:                                            ; preds = %._crit_edge2186.thread
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gi:                                            ; preds = %bb.gc
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gj:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.zo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zp = load ptr, ptr %34, align 8, !tbaa !31   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.yg
  br i1 %i.zq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.gj, %bb.ge
  %.sink = phi ptr [ %i.yr, %bb.ge ], [ %i.zp, %bb.gj ]
  %.pn.ph = phi { ptr, i32 } [ %i.yq, %bb.ge ], [ %i.zo, %bb.gj ]
  %i.zr = load i64, ptr %i.yg, align 8, !tbaa !21
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.zs) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.gj, %bb.ge
  %.pn = phi { ptr, i32 } [ %i.yq, %bb.ge ], [ %i.zo, %bb.gj ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #33
  br label %bb.gk

bb.gk:                                            ; preds = %.body, %bb.gi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.zn, %bb.gi ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %33) #33
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gh
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gk ], [ %i.zm, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br label %bb.abr

bb.gm:                                            ; preds = %._crit_edge2186
  br i1 %.1343, label %bb.gy, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.gm
  %.0353.lcssa28492868 = phi i1 [ %.0353.lcssa2848, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1354, %bb.gm ] ; 2 uses
  %.0351.lcssa28512866 = phi i1 [ %.0351.lcssa2850, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1352, %bb.gm ] ; 2 uses
  %.0349.lcssa28532864 = phi i1 [ %.0349.lcssa2852, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1350, %bb.gm ] ; 2 uses
  %.0347.lcssa28552862 = phi i1 [ %.0347.lcssa2854, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1348, %bb.gm ] ; 2 uses
  %.0345.lcssa28572860 = phi i1 [ %.0345.lcssa2856, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1346, %bb.gm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %35)
          to label %bb.go unwind label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull @.str.49, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit852 unwind label %bb.gu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit852: ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.zu = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.zu, ptr %36, align 8, !tbaa !24, !alias.scope !343
  %i.zv = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.zv, align 8, !tbaa !27, !alias.scope !343
  store i8 0, ptr %i.zu, align 8, !tbaa !21, !alias.scope !343
  %i.zw = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !335, !noalias !343 ; 3 uses
  %.not5.i.i855 = icmp eq ptr %i.zx, null
  br i1 %.not5.i.i855, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit852
  %124 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %125 = load ptr, ptr %124, align 8, !noalias !343 ; 2 uses
  %126 = icmp ugt ptr %i.zx, %125
  %.08.i.i.i853 = select i1 %126, ptr %i.zx, ptr %125
  %i.zy = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !336, !noalias !343 ; 2 uses
  %i.aaa = ptrtoint ptr %.08.i.i.i853 to i64
  %i.aab = ptrtoint ptr %i.zz to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  %i.aad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.zz, i64 noundef %i.aac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit862 unwind label %bb.gq ; 0 uses

bb.gq:                                            ; preds = %bb.gr, %bb.gp
  %i.aae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaf = load ptr, ptr %36, align 8, !tbaa !31, !alias.scope !343 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.zu
  br i1 %i.aag, label %.body860, label %.body860.sink.split

bb.gr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit852
  %i.aah = getelementptr inbounds nuw i8, ptr %35, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.aah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit862 unwind label %bb.gq

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit862: ; preds = %bb.gr, %bb.gp
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit862
  %i.aai = load ptr, ptr %36, align 8, !tbaa !31  ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.zu
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863: ; preds = %bb.gs
  %i.aak = load i64, ptr %i.zu, align 8, !tbaa !21
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  %i.aam = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aam, ptr %35, align 8, !tbaa !18
  %i.aan = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aao = getelementptr i8, ptr %i.aam, i64 -24
  %i.aap = load i64, ptr %i.aao, align 8
  %i.aaq = getelementptr inbounds i8, ptr %35, i64 %i.aap
  store ptr %i.aan, ptr %i.aaq, align 8, !tbaa !18
  %i.aar = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aar, align 8, !tbaa !18
  %i.aas = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !31 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %35, i64 96 ; 2 uses
  %i.aav = icmp eq ptr %i.aat, %i.aau
  br i1 %i.aav, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i866: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865
  %i.aaw = load i64, ptr %i.aau, align 8, !tbaa !21
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aax) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i866
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aar, align 8, !tbaa !18
  %i.aay = getelementptr inbounds nuw i8, ptr %35, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aay) #33
  %i.aaz = getelementptr inbounds nuw i8, ptr %35, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aaz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br i1 %.0345.lcssa28572860, label %bb.hk, label %bb.gz

bb.gt:                                            ; preds = %bb.gn
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gu:                                            ; preds = %bb.go
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gv:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit862
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abd = load ptr, ptr %36, align 8, !tbaa !31  ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.zu
  br i1 %i.abe, label %.body860, label %.body860.sink.split

.body860.sink.split:                              ; preds = %bb.gv, %bb.gq
  %.sink3253 = phi ptr [ %i.aaf, %bb.gq ], [ %i.abd, %bb.gv ]
  %.pn367.ph = phi { ptr, i32 } [ %i.aae, %bb.gq ], [ %i.abc, %bb.gv ]
  %i.abf = load i64, ptr %i.zu, align 8, !tbaa !21
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %.sink3253, i64 noundef %i.abg) #35
  br label %.body860

.body860:                                         ; preds = %.body860.sink.split, %bb.gv, %bb.gq
  %.pn367 = phi { ptr, i32 } [ %i.aae, %bb.gq ], [ %i.abc, %bb.gv ], [ %.pn367.ph, %.body860.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  br label %bb.gw

bb.gw:                                            ; preds = %.body860, %bb.gu
  %.pn367.pn = phi { ptr, i32 } [ %.pn367, %.body860 ], [ %i.abb, %bb.gu ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %35) #33
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gt
  %.pn367.pn.pn = phi { ptr, i32 } [ %.pn367.pn, %bb.gw ], [ %i.aba, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  br label %bb.abr

bb.gy:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.gm
  %.0353.lcssa28492869 = phi i1 [ %.0353.lcssa2848, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1354, %bb.gm ] ; 2 uses
  %.0351.lcssa28512867 = phi i1 [ %.0351.lcssa2850, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1352, %bb.gm ] ; 2 uses
  %.0349.lcssa28532865 = phi i1 [ %.0349.lcssa2852, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1350, %bb.gm ] ; 2 uses
  %.0347.lcssa28552863 = phi i1 [ %.0347.lcssa2854, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1348, %bb.gm ] ; 2 uses
  %.0345.lcssa28572861 = phi i1 [ %.0345.lcssa2856, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.1346, %bb.gm ]
  br i1 %.0345.lcssa28572861, label %bb.hk, label %bb.gz

bb.gz:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868, %bb.gy
  %.0347.lcssa285528632876 = phi i1 [ %.0347.lcssa28552862, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0347.lcssa28552863, %bb.gy ]
  %.0349.lcssa285328652874 = phi i1 [ %.0349.lcssa28532864, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0349.lcssa28532865, %bb.gy ]
  %.0351.lcssa285128672872 = phi i1 [ %.0351.lcssa28512866, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0351.lcssa28512867, %bb.gy ]
  %.0353.lcssa284928692870 = phi i1 [ %.0353.lcssa28492868, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0353.lcssa28492869, %bb.gy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37)
          to label %bb.ha unwind label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.abh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.50, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit873 unwind label %bb.hg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit873: ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.abi = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  store ptr %i.abi, ptr %38, align 8, !tbaa !24, !alias.scope !350
  %i.abj = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.abj, align 8, !tbaa !27, !alias.scope !350
  store i8 0, ptr %i.abi, align 8, !tbaa !21, !alias.scope !350
  %i.abk = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !335, !noalias !350 ; 3 uses
  %.not5.i.i876 = icmp eq ptr %i.abl, null
  br i1 %.not5.i.i876, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit873
  %127 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %128 = load ptr, ptr %127, align 8, !noalias !350 ; 2 uses
  %129 = icmp ugt ptr %i.abl, %128
  %.08.i.i.i872 = select i1 %129, ptr %i.abl, ptr %128
  %i.abm = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !336, !noalias !350 ; 2 uses
  %i.abo = ptrtoint ptr %.08.i.i.i872 to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef 0, i64 noundef 0, ptr noundef %i.abn, i64 noundef %i.abq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit883 unwind label %bb.hc ; 0 uses

bb.hc:                                            ; preds = %bb.hd, %bb.hb
  %i.abs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abt = load ptr, ptr %38, align 8, !tbaa !31, !alias.scope !350 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.abi
  br i1 %i.abu, label %.body881, label %.body881.sink.split

bb.hd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit873
  %i.abv = getelementptr inbounds nuw i8, ptr %37, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %i.abv)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit883 unwind label %bb.hc

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit883: ; preds = %bb.hd, %bb.hb
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.he unwind label %bb.hh

bb.he:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit883
  %i.abw = load ptr, ptr %38, align 8, !tbaa !31  ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.abi
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884: ; preds = %bb.he
  %i.aby = load i64, ptr %i.abi, align 8, !tbaa !21
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i884
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  %i.aca = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aca, ptr %37, align 8, !tbaa !18
  %i.acb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.acc = getelementptr i8, ptr %i.aca, i64 -24
  %i.acd = load i64, ptr %i.acc, align 8
  %i.ace = getelementptr inbounds i8, ptr %37, i64 %i.acd
  store ptr %i.acb, ptr %i.ace, align 8, !tbaa !18
  %i.acf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.acf, align 8, !tbaa !18
  %i.acg = getelementptr inbounds nuw i8, ptr %37, i64 80
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !31 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 2 uses
  %i.acj = icmp eq ptr %i.ach, %i.aci
  br i1 %i.acj, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i887

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i887: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886
  %i.ack = load i64, ptr %i.aci, align 8, !tbaa !21
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acl) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit886, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i887
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.acf, align 8, !tbaa !18
  %i.acm = getelementptr inbounds nuw i8, ptr %37, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acm) #33
  %i.acn = getelementptr inbounds nuw i8, ptr %37, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.acn) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %bb.hk

bb.hf:                                            ; preds = %bb.gz
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.hg:                                            ; preds = %bb.ha
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.hh:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit883
  %i.acq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acr = load ptr, ptr %38, align 8, !tbaa !31  ; 2 uses
  %i.acs = icmp eq ptr %i.acr, %i.abi
  br i1 %i.acs, label %.body881, label %.body881.sink.split

.body881.sink.split:                              ; preds = %bb.hh, %bb.hc
  %.sink3256 = phi ptr [ %i.abt, %bb.hc ], [ %i.acr, %bb.hh ]
  %.pn371.ph = phi { ptr, i32 } [ %i.abs, %bb.hc ], [ %i.acq, %bb.hh ]
  %i.act = load i64, ptr %i.abi, align 8, !tbaa !21
  %i.acu = add i64 %i.act, 1
  call void @_ZdlPvm(ptr noundef %.sink3256, i64 noundef %i.acu) #35
  br label %.body881

.body881:                                         ; preds = %.body881.sink.split, %bb.hh, %bb.hc
  %.pn371 = phi { ptr, i32 } [ %i.abs, %bb.hc ], [ %i.acq, %bb.hh ], [ %.pn371.ph, %.body881.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  br label %bb.hi

bb.hi:                                            ; preds = %.body881, %bb.hg
  %.pn371.pn = phi { ptr, i32 } [ %.pn371, %.body881 ], [ %i.acp, %bb.hg ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37) #33
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hf
  %.pn371.pn.pn = phi { ptr, i32 } [ %.pn371.pn, %bb.hi ], [ %i.aco, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %bb.abr

bb.hk:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889, %bb.gy
  %.0347.lcssa285528632877 = phi i1 [ %.0347.lcssa28552862, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0347.lcssa285528632876, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889 ], [ %.0347.lcssa28552863, %bb.gy ] ; 2 uses
  %.0349.lcssa285328652875 = phi i1 [ %.0349.lcssa28532864, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0349.lcssa285328652874, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889 ], [ %.0349.lcssa28532865, %bb.gy ]
  %.0351.lcssa285128672873 = phi i1 [ %.0351.lcssa28512866, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0351.lcssa285128672872, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889 ], [ %.0351.lcssa28512867, %bb.gy ] ; 2 uses
  %.0353.lcssa284928692871 = phi i1 [ %.0353.lcssa28492868, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit868 ], [ %.0353.lcssa284928692870, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit889 ], [ %.0353.lcssa28492869, %bb.gy ]
  %.not = xor i1 %.0325, true
  %or.cond = select i1 %.not, i1 true, i1 %.0347.lcssa285528632877
  br i1 %or.cond, label %bb.hw, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %39)
          to label %bb.hm unwind label %bb.hr

bb.hm:                                            ; preds = %bb.hl
  %i.acv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.51, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit894 unwind label %bb.hs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit894: ; preds = %bb.hm
  %i.acw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.52, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit896 unwind label %bb.hs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit896: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit894
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.acx = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 7 uses
  store ptr %i.acx, ptr %40, align 8, !tbaa !24, !alias.scope !357
  %i.acy = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.acy, align 8, !tbaa !27, !alias.scope !357
  store i8 0, ptr %i.acx, align 8, !tbaa !21, !alias.scope !357
  %i.acz = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !335, !noalias !357 ; 3 uses
  %.not5.i.i899 = icmp eq ptr %i.ada, null
  br i1 %.not5.i.i899, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit896
  %130 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %131 = load ptr, ptr %130, align 8, !noalias !357 ; 2 uses
  %132 = icmp ugt ptr %i.ada, %131
  %.08.i.i.i893 = select i1 %132, ptr %i.ada, ptr %131
  %i.adb = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !336, !noalias !357 ; 2 uses
  %i.add = ptrtoint ptr %.08.i.i.i893 to i64
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = sub i64 %i.add, %i.ade
  %i.adg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef 0, i64 noundef 0, ptr noundef %i.adc, i64 noundef %i.adf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit906 unwind label %bb.ho ; 0 uses

bb.ho:                                            ; preds = %bb.hp, %bb.hn
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %40, align 8, !tbaa !31, !alias.scope !357 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.acx
  br i1 %i.adj, label %.body904, label %.body904.sink.split

bb.hp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit896
  %i.adk = getelementptr inbounds nuw i8, ptr %39, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.adk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit906 unwind label %bb.ho

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit906: ; preds = %bb.hp, %bb.hn
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.hq unwind label %bb.ht

bb.hq:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit906
  %i.adl = load ptr, ptr %40, align 8, !tbaa !31  ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.acx
  br i1 %i.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907: ; preds = %bb.hq
  %i.adn = load i64, ptr %i.acx, align 8, !tbaa !21
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.ado) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i907
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  %i.adp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.adp, ptr %39, align 8, !tbaa !18
  %i.adq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.adr = getelementptr i8, ptr %i.adp, i64 -24
  %i.ads = load i64, ptr %i.adr, align 8
  %i.adt = getelementptr inbounds i8, ptr %39, i64 %i.ads
  store ptr %i.adq, ptr %i.adt, align 8, !tbaa !18
  %i.adu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.adu, align 8, !tbaa !18
  %i.adv = getelementptr inbounds nuw i8, ptr %39, i64 80
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !31 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %39, i64 96 ; 2 uses
  %i.ady = icmp eq ptr %i.adw, %i.adx
  br i1 %i.ady, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit912, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i910

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i910: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909
  %i.adz = load i64, ptr %i.adx, align 8, !tbaa !21
  %i.aea = add i64 %i.adz, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.aea) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit912

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit912: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i910
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.adu, align 8, !tbaa !18
  %i.aeb = getelementptr inbounds nuw i8, ptr %39, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aeb) #33
  %i.aec = getelementptr inbounds nuw i8, ptr %39, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aec) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %bb.ii

bb.hr:                                            ; preds = %bb.hl
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit894, %bb.hm
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.ht:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit906
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeg = load ptr, ptr %40, align 8, !tbaa !31  ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.acx
  br i1 %i.aeh, label %.body904, label %.body904.sink.split

.body904.sink.split:                              ; preds = %bb.ht, %bb.ho
  %.sink3259 = phi ptr [ %i.adi, %bb.ho ], [ %i.aeg, %bb.ht ]
  %.pn375.ph = phi { ptr, i32 } [ %i.adh, %bb.ho ], [ %i.aef, %bb.ht ]
  %i.aei = load i64, ptr %i.acx, align 8, !tbaa !21
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %.sink3259, i64 noundef %i.aej) #35
  br label %.body904

.body904:                                         ; preds = %.body904.sink.split, %bb.ht, %bb.ho
  %.pn375 = phi { ptr, i32 } [ %i.adh, %bb.ho ], [ %i.aef, %bb.ht ], [ %.pn375.ph, %.body904.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  br label %bb.hu

bb.hu:                                            ; preds = %.body904, %bb.hs
  %.pn375.pn = phi { ptr, i32 } [ %.pn375, %.body904 ], [ %i.aee, %bb.hs ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %39) #33
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.hr
  %.pn375.pn.pn = phi { ptr, i32 } [ %.pn375.pn, %bb.hu ], [ %i.aed, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %bb.abr

bb.hw:                                            ; preds = %bb.hk
  %.not2 = xor i1 %.0347.lcssa285528632877, true
  %or.cond4 = select i1 %.not2, i1 true, i1 %.0349.lcssa285328652875
  br i1 %or.cond4, label %bb.ii, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %41)
          to label %bb.hy unwind label %bb.id

bb.hy:                                            ; preds = %bb.hx
  %i.aek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull @.str.53, i64 noundef 63)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit917 unwind label %bb.ie ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit917: ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.ael = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  store ptr %i.ael, ptr %42, align 8, !tbaa !24, !alias.scope !364
  %i.aem = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 0, ptr %i.aem, align 8, !tbaa !27, !alias.scope !364
  store i8 0, ptr %i.ael, align 8, !tbaa !21, !alias.scope !364
  %i.aen = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !335, !noalias !364 ; 3 uses
  %.not5.i.i920 = icmp eq ptr %i.aeo, null
  br i1 %.not5.i.i920, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit917
  %133 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %134 = load ptr, ptr %133, align 8, !noalias !364 ; 2 uses
  %135 = icmp ugt ptr %i.aeo, %134
  %.08.i.i.i912 = select i1 %135, ptr %i.aeo, ptr %134
  %i.aep = getelementptr inbounds nuw i8, ptr %41, i64 40
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !336, !noalias !364 ; 2 uses
  %i.aer = ptrtoint ptr %.08.i.i.i912 to i64
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 noundef 0, i64 noundef 0, ptr noundef %i.aeq, i64 noundef %i.aet)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit927 unwind label %bb.ia ; 0 uses

bb.ia:                                            ; preds = %bb.ib, %bb.hz
  %i.aev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aew = load ptr, ptr %42, align 8, !tbaa !31, !alias.scope !364 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.ael
  br i1 %i.aex, label %.body925, label %.body925.sink.split

bb.ib:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit917
  %i.aey = getelementptr inbounds nuw i8, ptr %41, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %i.aey)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit927 unwind label %bb.ia

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit927: ; preds = %bb.ib, %bb.hz
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.ic unwind label %bb.if

bb.ic:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit927
  %i.aez = load ptr, ptr %42, align 8, !tbaa !31  ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.ael
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928: ; preds = %bb.ic
  %i.afb = load i64, ptr %i.ael, align 8, !tbaa !21
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aez, i64 noundef %i.afc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930: ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  %i.afd = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.afd, ptr %41, align 8, !tbaa !18
  %i.afe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aff = getelementptr i8, ptr %i.afd, i64 -24
  %i.afg = load i64, ptr %i.aff, align 8
  %i.afh = getelementptr inbounds i8, ptr %41, i64 %i.afg
  store ptr %i.afe, ptr %i.afh, align 8, !tbaa !18
  %i.afi = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.afi, align 8, !tbaa !18
  %i.afj = getelementptr inbounds nuw i8, ptr %41, i64 80
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !31 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %41, i64 96 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit933, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i931: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !21
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit933

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit933: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit930, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i931
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.afi, align 8, !tbaa !18
  %i.afp = getelementptr inbounds nuw i8, ptr %41, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.afp) #33
  %i.afq = getelementptr inbounds nuw i8, ptr %41, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.afq) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %bb.ii

bb.id:                                            ; preds = %bb.hx
  %i.afr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ie:                                            ; preds = %bb.hy
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.if:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit927
  %i.aft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afu = load ptr, ptr %42, align 8, !tbaa !31  ; 2 uses
  %i.afv = icmp eq ptr %i.afu, %i.ael
  br i1 %i.afv, label %.body925, label %.body925.sink.split

.body925.sink.split:                              ; preds = %bb.if, %bb.ia
  %.sink3262 = phi ptr [ %i.aew, %bb.ia ], [ %i.afu, %bb.if ]
  %.pn379.ph = phi { ptr, i32 } [ %i.aev, %bb.ia ], [ %i.aft, %bb.if ]
  %i.afw = load i64, ptr %i.ael, align 8, !tbaa !21
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %.sink3262, i64 noundef %i.afx) #35
  br label %.body925

.body925:                                         ; preds = %.body925.sink.split, %bb.if, %bb.ia
  %.pn379 = phi { ptr, i32 } [ %i.aev, %bb.ia ], [ %i.aft, %bb.if ], [ %.pn379.ph, %.body925.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #33
  br label %bb.ig

bb.ig:                                            ; preds = %.body925, %bb.ie
  %.pn379.pn = phi { ptr, i32 } [ %.pn379, %.body925 ], [ %i.afs, %bb.ie ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %41) #33
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.id
  %.pn379.pn.pn = phi { ptr, i32 } [ %.pn379.pn, %bb.ig ], [ %i.afr, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %bb.abr

bb.ii:                                            ; preds = %bb.hw, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit933, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit912
  %i.afy = trunc nuw i8 %.0323 to i1
  %.not5 = xor i1 %i.afy, true
  %or.cond7 = select i1 %.not5, i1 true, i1 %.0351.lcssa285128672873
  br i1 %or.cond7, label %bb.iu, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %43)
          to label %bb.ik unwind label %bb.ip

bb.ik:                                            ; preds = %bb.ij
  %i.afz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull @.str.54, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit938 unwind label %bb.iq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit938: ; preds = %bb.ik
  %i.aga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull @.str.55, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit940 unwind label %bb.iq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit940: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit938
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.agb = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  store ptr %i.agb, ptr %44, align 8, !tbaa !24, !alias.scope !371
  %i.agc = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.agc, align 8, !tbaa !27, !alias.scope !371
  store i8 0, ptr %i.agb, align 8, !tbaa !21, !alias.scope !371
  %i.agd = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !335, !noalias !371 ; 3 uses
  %.not5.i.i943 = icmp eq ptr %i.age, null
  br i1 %.not5.i.i943, label %bb.in, label %bb.il

bb.il:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit940
  %136 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %137 = load ptr, ptr %136, align 8, !noalias !371 ; 2 uses
  %138 = icmp ugt ptr %i.age, %137
  %.08.i.i.i933 = select i1 %138, ptr %i.age, ptr %137
  %i.agf = getelementptr inbounds nuw i8, ptr %43, i64 40
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !336, !noalias !371 ; 2 uses
  %i.agh = ptrtoint ptr %.08.i.i.i933 to i64
  %i.agi = ptrtoint ptr %i.agg to i64
  %i.agj = sub i64 %i.agh, %i.agi
  %i.agk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef %i.agg, i64 noundef %i.agj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit950 unwind label %bb.im ; 0 uses

bb.im:                                            ; preds = %bb.in, %bb.il
  %i.agl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agm = load ptr, ptr %44, align 8, !tbaa !31, !alias.scope !371 ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.agb
  br i1 %i.agn, label %.body948, label %.body948.sink.split

bb.in:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit940
  %i.ago = getelementptr inbounds nuw i8, ptr %43, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.ago)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit950 unwind label %bb.im

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit950: ; preds = %bb.in, %bb.il
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.io unwind label %bb.ir

bb.io:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit950
  %i.agp = load ptr, ptr %44, align 8, !tbaa !31  ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.agb
  br i1 %i.agq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951: ; preds = %bb.io
  %i.agr = load i64, ptr %i.agb, align 8, !tbaa !21
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953: ; preds = %bb.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  %i.agt = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.agt, ptr %43, align 8, !tbaa !18
  %i.agu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.agv = getelementptr i8, ptr %i.agt, i64 -24
  %i.agw = load i64, ptr %i.agv, align 8
  %i.agx = getelementptr inbounds i8, ptr %43, i64 %i.agw
  store ptr %i.agu, ptr %i.agx, align 8, !tbaa !18
  %i.agy = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.agy, align 8, !tbaa !18
  %i.agz = getelementptr inbounds nuw i8, ptr %43, i64 80
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !31 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %43, i64 96 ; 2 uses
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit956, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i954

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i954: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953
  %i.ahd = load i64, ptr %i.ahb, align 8, !tbaa !21
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahe) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit956

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit956: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i954
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.agy, align 8, !tbaa !18
  %i.ahf = getelementptr inbounds nuw i8, ptr %43, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ahf) #33
  %i.ahg = getelementptr inbounds nuw i8, ptr %43, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ahg) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %bb.jg

bb.ip:                                            ; preds = %bb.ij
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.iq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit938, %bb.ik
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.ir:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit950
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = load ptr, ptr %44, align 8, !tbaa !31  ; 2 uses
  %i.ahl = icmp eq ptr %i.ahk, %i.agb
  br i1 %i.ahl, label %.body948, label %.body948.sink.split

.body948.sink.split:                              ; preds = %bb.ir, %bb.im
  %.sink3265 = phi ptr [ %i.agm, %bb.im ], [ %i.ahk, %bb.ir ]
  %.pn383.ph = phi { ptr, i32 } [ %i.agl, %bb.im ], [ %i.ahj, %bb.ir ]
  %i.ahm = load i64, ptr %i.agb, align 8, !tbaa !21
  %i.ahn = add i64 %i.ahm, 1
  call void @_ZdlPvm(ptr noundef %.sink3265, i64 noundef %i.ahn) #35
  br label %.body948

.body948:                                         ; preds = %.body948.sink.split, %bb.ir, %bb.im
  %.pn383 = phi { ptr, i32 } [ %i.agl, %bb.im ], [ %i.ahj, %bb.ir ], [ %.pn383.ph, %.body948.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  br label %bb.is

bb.is:                                            ; preds = %.body948, %bb.iq
  %.pn383.pn = phi { ptr, i32 } [ %.pn383, %.body948 ], [ %i.ahi, %bb.iq ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %43) #33
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ip
  %.pn383.pn.pn = phi { ptr, i32 } [ %.pn383.pn, %bb.is ], [ %i.ahh, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #33
  br label %bb.abr

bb.iu:                                            ; preds = %bb.ii
  %.not8 = xor i1 %.0351.lcssa285128672873, true
  %or.cond10 = select i1 %.not8, i1 true, i1 %.0353.lcssa284928692871
  br i1 %or.cond10, label %bb.jg, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %45)
          to label %bb.iw unwind label %bb.jb

bb.iw:                                            ; preds = %bb.iv
  %i.aho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.56, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961 unwind label %bb.jc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961: ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.ahp = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  store ptr %i.ahp, ptr %46, align 8, !tbaa !24, !alias.scope !378
  %i.ahq = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 0, ptr %i.ahq, align 8, !tbaa !27, !alias.scope !378
  store i8 0, ptr %i.ahp, align 8, !tbaa !21, !alias.scope !378
  %i.ahr = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !335, !noalias !378 ; 3 uses
  %.not5.i.i964 = icmp eq ptr %i.ahs, null
  br i1 %.not5.i.i964, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961
  %139 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %140 = load ptr, ptr %139, align 8, !noalias !378 ; 2 uses
  %141 = icmp ugt ptr %i.ahs, %140
  %.08.i.i.i952 = select i1 %141, ptr %i.ahs, ptr %140
  %i.aht = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !336, !noalias !378 ; 2 uses
  %i.ahv = ptrtoint ptr %.08.i.i.i952 to i64
  %i.ahw = ptrtoint ptr %i.ahu to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  %i.ahy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %46, i64 noundef 0, i64 noundef 0, ptr noundef %i.ahu, i64 noundef %i.ahx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit971 unwind label %bb.iy ; 0 uses

bb.iy:                                            ; preds = %bb.iz, %bb.ix
  %i.ahz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aia = load ptr, ptr %46, align 8, !tbaa !31, !alias.scope !378 ; 2 uses
  %i.aib = icmp eq ptr %i.aia, %i.ahp
  br i1 %i.aib, label %.body969, label %.body969.sink.split

bb.iz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961
  %i.aic = getelementptr inbounds nuw i8, ptr %45, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %i.aic)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit971 unwind label %bb.iy

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit971: ; preds = %bb.iz, %bb.ix
  invoke void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.ja unwind label %bb.jd

bb.ja:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit971
  %i.aid = load ptr, ptr %46, align 8, !tbaa !31  ; 2 uses
  %i.aie = icmp eq ptr %i.aid, %i.ahp
  br i1 %i.aie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972: ; preds = %bb.ja
  %i.aif = load i64, ptr %i.ahp, align 8, !tbaa !21
  %i.aig = add i64 %i.aif, 1
  call void @_ZdlPvm(ptr noundef %i.aid, i64 noundef %i.aig) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974: ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  %i.aih = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aih, ptr %45, align 8, !tbaa !18
  %i.aii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aij = getelementptr i8, ptr %i.aih, i64 -24
  %i.aik = load i64, ptr %i.aij, align 8
  %i.ail = getelementptr inbounds i8, ptr %45, i64 %i.aik
  store ptr %i.aii, ptr %i.ail, align 8, !tbaa !18
  %i.aim = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aim, align 8, !tbaa !18
  %i.ain = getelementptr inbounds nuw i8, ptr %45, i64 80
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !31 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %45, i64 96 ; 2 uses
  %i.aiq = icmp eq ptr %i.aio, %i.aip
  br i1 %i.aiq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit977, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i975

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i975: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974
  %i.air = load i64, ptr %i.aip, align 8, !tbaa !21
  %i.ais = add i64 %i.air, 1
  call void @_ZdlPvm(ptr noundef %i.aio, i64 noundef %i.ais) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit977

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit977: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i975
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aim, align 8, !tbaa !18
  %i.ait = getelementptr inbounds nuw i8, ptr %45, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ait) #33
  %i.aiu = getelementptr inbounds nuw i8, ptr %45, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aiu) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  br label %bb.jg

bb.jb:                                            ; preds = %bb.iv
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.jc:                                            ; preds = %bb.iw
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jd:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit971
  %i.aix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aiy = load ptr, ptr %46, align 8, !tbaa !31  ; 2 uses
  %i.aiz = icmp eq ptr %i.aiy, %i.ahp
  br i1 %i.aiz, label %.body969, label %.body969.sink.split

.body969.sink.split:                              ; preds = %bb.jd, %bb.iy
  %.sink3268 = phi ptr [ %i.aia, %bb.iy ], [ %i.aiy, %bb.jd ]
  %.pn387.ph = phi { ptr, i32 } [ %i.ahz, %bb.iy ], [ %i.aix, %bb.jd ]
  %i.aja = load i64, ptr %i.ahp, align 8, !tbaa !21
  %i.ajb = add i64 %i.aja, 1
  call void @_ZdlPvm(ptr noundef %.sink3268, i64 noundef %i.ajb) #35
  br label %.body969

.body969:                                         ; preds = %.body969.sink.split, %bb.jd, %bb.iy
  %.pn387 = phi { ptr, i32 } [ %i.ahz, %bb.iy ], [ %i.aix, %bb.jd ], [ %.pn387.ph, %.body969.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #33
  br label %bb.je

bb.je:                                            ; preds = %.body969, %bb.jc
  %.pn387.pn = phi { ptr, i32 } [ %.pn387, %.body969 ], [ %i.aiw, %bb.jc ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %45) #33
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jb
  %.pn387.pn.pn = phi { ptr, i32 } [ %.pn387.pn, %bb.je ], [ %i.aiv, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #33
  br label %bb.abr

bb.jg:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit956, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit977, %bb.iu, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #33
  %i.ajc = load ptr, ptr %0, align 8, !tbaa !36
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl22buildInactiveNamesListB5cxx11ENS1_12InactiveTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.26") align 8 %47, ptr noundef nonnull align 8 dereferenceable(1120) %i.ajc, i32 noundef 2)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.ajd = load ptr, ptr %47, align 8, !tbaa !215 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !215 ; 2 uses
  %.not16472193 = icmp eq ptr %i.ajd, %i.ajf
  br i1 %.not16472193, label %._crit_edge2197, label %.lr.ph2196

.lr.ph2196:                                       ; preds = %bb.jh
  %i.ajg = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %49, i64 48
  %i.ajk = getelementptr inbounds nuw i8, ptr %49, i64 32
  %i.ajl = getelementptr inbounds nuw i8, ptr %49, i64 40
  %i.ajm = getelementptr inbounds nuw i8, ptr %49, i64 80 ; 2 uses
  %i.ajn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ajo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 -24
  %i.ajq = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %49, i64 96 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %49, i64 64
  %i.ajt = getelementptr inbounds nuw i8, ptr %49, i64 112
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.abq

bb.jj:                                            ; preds = %.lr.ph2196, %bb.kn
  %.sroa.01597.02194 = phi ptr [ %i.ajd, %.lr.ph2196 ], [ %i.and, %bb.kn ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #33
  %i.ajv = load ptr, ptr %0, align 8, !tbaa !36
  %i.ajw = load ptr, ptr %.sroa.01597.02194, align 8, !tbaa !31
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.77") align 8 %48, ptr noundef nonnull align 8 dereferenceable(1120) %i.ajv, ptr noundef %i.ajw)
          to label %bb.jk unwind label %bb.kh

bb.jk:                                            ; preds = %bb.jj
  %i.ajx = load ptr, ptr %48, align 8, !tbaa !313
  %.not1668 = icmp eq ptr %i.ajx, null
  %i.ajy = load ptr, ptr %i.ajg, align 8, !tbaa !14 ; 8 uses
  %.not.i.i981 = icmp eq ptr %i.ajy, null
  br i1 %.not.i.i981, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8 ; 4 uses
  %i.aka = load atomic i64, ptr %i.ajz acquire, align 8 ; 2 uses
  %i.akb = icmp eq i64 %i.aka, 4294967297
  %i.akc = trunc i64 %i.aka to i32                ; 2 uses
  br i1 %i.akb, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  store i32 0, ptr %i.ajz, align 8, !tbaa !15
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajy, i64 12
  store i32 0, ptr %i.akd, align 4, !tbaa !17
  %i.ake = load ptr, ptr %i.ajy, align 8, !tbaa !18
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %i.akg = load ptr, ptr %i.akf, align 8
  call void %i.akg(ptr noundef nonnull align 8 dereferenceable(16) %i.ajy) #33, !inline_history !319
  %i.akh = load ptr, ptr %i.ajy, align 8, !tbaa !18
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 24
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(16) %i.ajy) #33, !inline_history !319
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985

bb.jn:                                            ; preds = %bb.jl
  %i.akk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i982 = icmp eq i8 %i.akk, 0
  br i1 %.not.i.i.i982, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.akl = add nsw i32 %i.akc, -1
  store i32 %i.akl, ptr %i.ajz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i983

bb.jp:                                            ; preds = %bb.jn
  %i.akm = atomicrmw volatile add ptr %i.ajz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i983

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i983: ; preds = %bb.jp, %bb.jo
  %.0.i.i.i.i984 = phi i32 [ %i.akc, %bb.jo ], [ %i.akm, %bb.jp ]
  %i.akn = icmp eq i32 %.0.i.i.i.i984, 1
  br i1 %i.akn, label %bb.jq, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985, !prof !22

bb.jq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i983
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajy) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985: ; preds = %bb.jk, %bb.jm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i983, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  br i1 %.not1668, label %bb.jr, label %bb.kn

bb.jr:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985
  %i.ako = load ptr, ptr %0, align 8, !tbaa !36   ; 3 uses
  %i.akp = load ptr, ptr %.sroa.01597.02194, align 8, !tbaa !31
  %i.akq = call noundef i64 @_ZNK16OpenColorIO_v2_56Config4Impl22getNamedTransformIndexEPKc(ptr noundef nonnull align 8 dereferenceable(1120) %i.ako, ptr noundef %i.akp) #33, !noalias !379 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 736
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ako, i64 744
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !227, !noalias !379
  %i.aku = load ptr, ptr %i.akr, align 8, !tbaa !226, !noalias !379 ; 2 uses
  %i.akv = ptrtoint ptr %i.akt to i64
  %i.akw = ptrtoint ptr %i.aku to i64
  %i.akx = sub i64 %i.akv, %i.akw
  %i.aky = ashr exact i64 %i.akx, 4
  %.not.i986 = icmp ult i64 %i.akq, %i.aky
  br i1 %.not.i986, label %bb.js, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread

bb.js:                                            ; preds = %bb.jr
  %i.akz = getelementptr inbounds nuw [16 x i8], ptr %i.aku, i64 %i.akq ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !272, !noalias !379 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !14, !noalias !379 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.i.i, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 8 ; 7 uses
  %i.ale = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !379
  %.not.i.i.i.i.i = icmp eq i8 %i.ale, 0
  br i1 %.not.i.i.i.i.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !3, !noalias !379
  %i.alg = add nsw i32 %i.alf, 1
  store i32 %i.alg, ptr %i.ald, align 4, !tbaa !3, !noalias !379
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt
  %i.alh = atomicrmw volatile add ptr %i.ald, i32 1 acq_rel, align 4, !noalias !379 ; 0 uses
  br label %bb.jw

_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread: ; preds = %bb.js
  %.not1670 = icmp eq ptr %i.ala, null
  br i1 %.not1670, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread, label %bb.kn

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.not1669 = icmp eq ptr %i.ala, null            ; 3 uses
  %i.ali = load atomic i64, ptr %i.ald acquire, align 8 ; 2 uses
  %i.alj = icmp eq i64 %i.ali, 4294967297
  %i.alk = trunc i64 %i.ali to i32                ; 2 uses
  br i1 %i.alj, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  store i32 0, ptr %i.ald, align 8, !tbaa !15
  %i.all = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  store i32 0, ptr %i.all, align 4, !tbaa !17
  %i.alm = load ptr, ptr %i.alc, align 8, !tbaa !18
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 16
  %i.alo = load ptr, ptr %i.aln, align 8
  call void %i.alo(ptr noundef nonnull align 8 dereferenceable(16) %i.alc) #33, !inline_history !293
  %i.alp = load ptr, ptr %i.alc, align 8, !tbaa !18
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 24
  %i.alr = load ptr, ptr %i.alq, align 8
  call void %i.alr(ptr noundef nonnull align 8 dereferenceable(16) %i.alc) #33, !inline_history !293
  br i1 %.not1669, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread, label %bb.kn

bb.jy:                                            ; preds = %bb.jw
  %i.als = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i988 = icmp eq i8 %i.als, 0
  br i1 %.not.i.i.i988, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.alt = add nsw i32 %i.alk, -1
  store i32 %i.alt, ptr %i.ald, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i989

bb.ka:                                            ; preds = %bb.jy
  %i.alu = atomicrmw volatile add ptr %i.ald, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i989

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i989: ; preds = %bb.ka, %bb.jz
  %.0.i.i.i.i990 = phi i32 [ %i.alk, %bb.jz ], [ %i.alu, %bb.ka ]
  %i.alv = icmp eq i32 %.0.i.i.i.i990, 1
  br i1 %i.alv, label %bb.kb, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.kb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i989
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alc) #33
  br i1 %.not1669, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread, label %bb.kn

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i989
  br i1 %.not1669, label %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread, label %bb.kn

_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread: ; preds = %bb.jr, %bb.jx, %bb.kb, %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %49)
          to label %bb.kc unwind label %bb.ki

bb.kc:                                            ; preds = %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread
  %i.alw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull @.str.57, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992 unwind label %bb.kj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992: ; preds = %bb.kc
  %i.alx = load ptr, ptr %.sroa.01597.02194, align 8, !tbaa !31
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.01597.02194, i64 8
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !27
  %i.ama = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %i.alx, i64 noundef %i.alz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994 unwind label %bb.kj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992
  %i.amb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ama, ptr noundef nonnull @.str.58, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit996 unwind label %bb.kj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit996: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  store ptr %i.ajh, ptr %50, align 8, !tbaa !24, !alias.scope !388
  store i64 0, ptr %i.aji, align 8, !tbaa !27, !alias.scope !388
  store i8 0, ptr %i.ajh, align 8, !tbaa !21, !alias.scope !388
  %i.amc = load ptr, ptr %i.ajj, align 8, !tbaa !335, !noalias !388 ; 3 uses
  %.not5.i.i999 = icmp eq ptr %i.amc, null
  br i1 %.not5.i.i999, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit996
  %142 = load ptr, ptr %i.ajk, align 8, !noalias !388 ; 2 uses
  %143 = icmp ugt ptr %i.amc, %142
  %.08.i.i.i985 = select i1 %143, ptr %i.amc, ptr %142
  %i.amd = load ptr, ptr %i.ajl, align 8, !tbaa !336, !noalias !388 ; 2 uses
  %i.ame = ptrtoint ptr %.08.i.i.i985 to i64
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = sub i64 %i.ame, %i.amf
  %i.amh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef 0, i64 noundef 0, ptr noundef %i.amd, i64 noundef %i.amg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1006 unwind label %bb.ke ; 0 uses

bb.ke:                                            ; preds = %bb.kf, %bb.kd
  %i.ami = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amj = load ptr, ptr %50, align 8, !tbaa !31, !alias.scope !388 ; 2 uses
  %i.amk = icmp eq ptr %i.amj, %i.ajh
  br i1 %i.amk, label %.body1004, label %.body1004.sink.split

bb.kf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit996
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.ajm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1006 unwind label %bb.ke

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1006: ; preds = %bb.kf, %bb.kd
  invoke void @_ZN16OpenColorIO_v2_57LogInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.kg unwind label %bb.kk

bb.kg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1006
  %i.aml = load ptr, ptr %50, align 8, !tbaa !31  ; 2 uses
  %i.amm = icmp eq ptr %i.aml, %i.ajh
  br i1 %i.amm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1007.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1007.a: ; preds = %bb.kg
  %i.amn = load i64, ptr %i.ajh, align 8, !tbaa !21
  %i.amo = add i64 %i.amn, 1
  call void @_ZdlPvm(ptr noundef %i.aml, i64 noundef %i.amo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009.a: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1007.a
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #33
  store ptr %i.ajn, ptr %49, align 8, !tbaa !18
  %i.amp = load i64, ptr %i.ajp, align 8
  %i.amq = getelementptr inbounds i8, ptr %49, i64 %i.amp
  store ptr %i.ajo, ptr %i.amq, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ajq, align 8, !tbaa !18
  %i.amr = load ptr, ptr %i.ajm, align 8, !tbaa !31 ; 2 uses
  %i.ams = icmp eq ptr %i.amr, %i.ajr
  br i1 %i.ams, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1012, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1010

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1010: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009.a
  %i.amt = load i64, ptr %i.ajr, align 8, !tbaa !21
  %i.amu = add i64 %i.amt, 1
  call void @_ZdlPvm(ptr noundef %i.amr, i64 noundef %i.amu) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1012

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1012: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1009.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1010
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ajq, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ajs) #33
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ajt) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #33
  br label %bb.kn

bb.kh:                                            ; preds = %bb.jj
  %i.amv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #33
  br label %bb.abp

bb.ki:                                            ; preds = %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread.thread
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit994, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit992, %bb.kc
  %i.amx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.kk:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1006
  %i.amy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amz = load ptr, ptr %50, align 8, !tbaa !31  ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.ajh
  br i1 %i.ana, label %.body1004, label %.body1004.sink.split

.body1004.sink.split:                             ; preds = %bb.kk, %bb.ke
  %.sink3271 = phi ptr [ %i.amj, %bb.ke ], [ %i.amz, %bb.kk ]
  %.pn517.ph = phi { ptr, i32 } [ %i.ami, %bb.ke ], [ %i.amy, %bb.kk ]
  %i.anb = load i64, ptr %i.ajh, align 8, !tbaa !21
  %i.anc = add i64 %i.anb, 1
  call void @_ZdlPvm(ptr noundef %.sink3271, i64 noundef %i.anc) #35
  br label %.body1004

.body1004:                                        ; preds = %.body1004.sink.split, %bb.kk, %bb.ke
  %.pn517 = phi { ptr, i32 } [ %i.ami, %bb.ke ], [ %i.amy, %bb.kk ], [ %.pn517.ph, %.body1004.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #33
  br label %bb.kl

bb.kl:                                            ; preds = %.body1004, %bb.kj
  %.pn517.pn = phi { ptr, i32 } [ %.pn517, %.body1004 ], [ %i.amx, %bb.kj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %49) #33
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.ki
  %.pn517.pn.pn = phi { ptr, i32 } [ %.pn517.pn, %bb.kl ], [ %i.amw, %bb.ki ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #33
  br label %bb.abp

bb.kn:                                            ; preds = %bb.jx, %bb.kb, %_ZNK16OpenColorIO_v2_56Config4Impl17getNamedTransformEPKc.exit.thread, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514NamedTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1012, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit985
  %i.and = getelementptr inbounds nuw i8, ptr %.sroa.01597.02194, i64 32 ; 2 uses
  %.not1647.a = icmp eq ptr %i.and, %i.ajf
  br i1 %.not1647.a, label %._crit_edge2197, label %bb.jj

._crit_edge2197:                                  ; preds = %bb.kn, %bb.jh
  %i.ane = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 520
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !278
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !389
  %i.anj = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  %i.ank = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %bb.ko unwind label %bb.ks     ; 4 uses

bb.ko:                                            ; preds = %._crit_edge2197
  %i.anl = getelementptr inbounds nuw i8, ptr %51, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc to i64), ptr %i.ank, align 16
  %.sroa.51593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store i64 0, ptr %.sroa.51593.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store ptr %0, ptr %.sroa.6.0..sroa_idx, align 16
  store ptr %i.ank, ptr %51, align 8, !tbaa !392
  store ptr @_ZNSt17_Function_handlerIFSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEPKcESt5_BindIFMNS1_6ConfigEKFS4_S6_EPKS9_St12_PlaceholderILi1EEEEE9_M_invokeERKSt9_Any_dataOS6_, ptr %i.anl, align 8, !tbaa !394
  store ptr @_ZNSt17_Function_handlerIFSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEPKcESt5_BindIFMNS1_6ConfigEKFS4_S6_EPKS9_St12_PlaceholderILi1EEEEE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.anj, align 8, !tbaa !397
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ane, i64 144
  invoke void @_ZNK16OpenColorIO_v2_512ViewingRules4Impl8validateESt8functionIFSt10shared_ptrIKNS_10ColorSpaceEEPKcEERKS3_INS_13ColorSpaceSetEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ani, ptr noundef nonnull %51, ptr noundef nonnull align 8 dereferenceable(16) %i.anm)
          to label %bb.kp unwind label %bb.kt

bb.kp:                                            ; preds = %bb.ko
  %i.ann = load ptr, ptr %i.anj, align 8, !tbaa !397 ; 2 uses
  %.not.i1017 = icmp eq ptr %i.ann, null
  br i1 %.not.i1017, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ano = invoke noundef zeroext i1 %i.ann(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.kr ; 0 uses

bb.kr:                                            ; preds = %bb.kq
  %i.anp = landingpad { ptr, i32 }
          catch ptr null
  %i.anq = extractvalue { ptr, i32 } %i.anp, 0
  call void @__clang_call_terminate(ptr %i.anq) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.kp, %bb.kq
  %i.anr = load ptr, ptr %0, align 8, !tbaa !36   ; 3 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 496
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !398 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 504
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !398 ; 2 uses
  %.not16482198 = icmp eq ptr %i.ant, %i.anv
  br i1 %.not16482198, label %._crit_edge2200, label %._crit_edge.i.i1025.lr.ph

._crit_edge.i.i1025.lr.ph:                        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.anw = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 6 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %._crit_edge.i.i1025

bb.ks:                                            ; preds = %._crit_edge2197
  %i.any = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %_ZNSt14_Function_baseD2Ev.exit1019

bb.kt:                                            ; preds = %bb.ko
  %i.anz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 2 uses
  %i.aoa = load ptr, ptr %i.anj, align 8, !tbaa !397 ; 2 uses
  %.not.i1018 = icmp eq ptr %i.aoa, null
  br i1 %.not.i1018, label %_ZNSt14_Function_baseD2Ev.exit1019, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.aob = invoke noundef zeroext i1 %i.aoa(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit1019 unwind label %bb.kv ; 0 uses

bb.kv:                                            ; preds = %bb.ku
  %i.aoc = landingpad { ptr, i32 }
          catch ptr null
  %i.aod = extractvalue { ptr, i32 } %i.aoc, 0
  call void @__clang_call_terminate(ptr %i.aod) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit1019:               ; preds = %bb.ku, %bb.kt, %bb.ks
  %.pn391 = phi { ptr, i32 } [ %i.anz, %bb.ku ], [ %i.any, %bb.ks ], [ %i.anz, %bb.kt ] ; 3 uses
  %.62233 = extractvalue { ptr, i32 } %.pn391, 1
  %i.aoe = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #33
  %i.aof = icmp eq i32 %.62233, %i.aoe
  br i1 %i.aof, label %bb.kw, label %bb.abp

bb.kw:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit1019
  %.62 = extractvalue { ptr, i32 } %.pn391, 0
  %i.aog = call ptr @__cxa_begin_catch(ptr %.62) #33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %52)
          to label %bb.kx unwind label %bb.lb

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_56Config8validateEv:bb.a
  %i.can = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1416

bb.xa:                                            ; preds = %bb.ww
  %i.cao = landingpad { ptr, i32 }
          cleanup
  br label %bb.yk

bb.xb:                                            ; preds = %bb.wx
  %i.cap = load ptr, ptr %0, align 8, !tbaa !36
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 56
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !251
  %i.cas = invoke noundef ptr @_ZNK16OpenColorIO_v2_57Context13getSearchPathEi(ptr noundef nonnull align 8 dereferenceable(8) %i.car, i32 noundef %.0328)
          to label %bb.xc unwind label %.loopexit1673 ; 7 uses

bb.xc:                                            ; preds = %bb.xb
  %.not435 = icmp eq ptr %i.cas, null
  br i1 %.not435, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.cat = load i8, ptr %i.cas, align 1, !tbaa !21
  %.not436 = icmp eq i8 %i.cat, 0
  br i1 %.not436, label %bb.xe, label %bb.xg

bb.xe:                                            ; preds = %bb.xd, %bb.xc
  %i.cau = load i64, ptr %i.bzr, align 8, !tbaa !27
  %i.cav = add i64 %i.cau, -4611686018427387831
  %i.caw = icmp ult i64 %i.cav, 73
  br i1 %i.caw, label %bb.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.xf:                                            ; preds = %bb.xe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.319) #34
          to label %.noexc1359 unwind label %.loopexit.split-lp1674

.noexc1359:                                       ; preds = %bb.xf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.xe
  %i.cax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.91, i64 noundef 73)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit1673 ; 0 uses

.loopexit1673:                                    ; preds = %bb.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit1675 = landingpad { ptr, i32 }
          cleanup
  br label %bb.yk

.loopexit.split-lp1674:                           ; preds = %bb.xf
  %lpad.loopexit.split-lp1676 = landingpad { ptr, i32 }
          cleanup
  br label %bb.yk

bb.xg:                                            ; preds = %bb.xd
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #33
  %i.cay = load ptr, ptr %0, align 8, !tbaa !36
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cay, i64 56
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !251
  %i.cbb = call noundef ptr @_ZNK16OpenColorIO_v2_57Context16resolveStringVarEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cba, ptr noundef nonnull %i.cas) #33 ; 4 uses
  store ptr %i.bzt, ptr %104, align 8, !tbaa !24
  %i.cbc = icmp eq ptr %i.cbb, null
  br i1 %i.cbc, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.326) #34
          to label %.noexc1363 unwind label %.loopexit.split-lp1679

.noexc1363:                                       ; preds = %bb.xh
  unreachable

bb.xi:                                            ; preds = %bb.xg
  %i.cbd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cbb) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.cbd, ptr %i.b, align 8, !tbaa !32
  %i.cbe = icmp ugt i64 %i.cbd, 15
  br i1 %i.cbe, label %.noexc.i1362, label %._crit_edge.i.i1361

.noexc.i1362:                                     ; preds = %bb.xi
  %i.cbf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %104, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc1364 unwind label %.loopexit1678 ; 2 uses

.noexc1364:                                       ; preds = %.noexc.i1362
  store ptr %i.cbf, ptr %104, align 8, !tbaa !31
  %i.cbg = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.cbg, ptr %i.bzt, align 8, !tbaa !21
  br label %._crit_edge.i.i1361

._crit_edge.i.i1361:                              ; preds = %.noexc1364, %bb.xi
  %i.cbh = phi ptr [ %i.cbf, %.noexc1364 ], [ %i.bzt, %bb.xi ] ; 2 uses
  switch i64 %i.cbd, label %bb.xk [
    i64 1, label %bb.xj
    i64 0, label %bb.xl
  ]

bb.xj:                                            ; preds = %._crit_edge.i.i1361
  %i.cbi = load i8, ptr %i.cbb, align 1, !tbaa !21
  store i8 %i.cbi, ptr %i.cbh, align 1, !tbaa !21
  br label %bb.xl

bb.xk:                                            ; preds = %._crit_edge.i.i1361
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cbh, ptr nonnull align 1 %i.cbb, i64 %i.cbd, i1 false)
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj, %._crit_edge.i.i1361
  %i.cbj = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  store i64 %i.cbj, ptr %i.bzu, align 8, !tbaa !27
  %i.cbk = load ptr, ptr %104, align 8, !tbaa !31
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbk, i64 %i.cbj
  store i8 0, ptr %i.cbl, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cbm = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_524ContainsContextVariablesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %104)
          to label %bb.xm unwind label %bb.xq

bb.xm:                                            ; preds = %bb.xl
  br i1 %i.cbm, label %bb.xn, label %bb.ya

bb.xn:                                            ; preds = %bb.xm
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %105)
          to label %bb.xo unwind label %bb.xr

bb.xo:                                            ; preds = %bb.xn
  %i.cbn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.92, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1367 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1367: ; preds = %bb.xo
  %i.cbo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cas) #33
  %i.cbp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull %i.cas, i64 noundef %i.cbo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1371 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1371: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1367
  %i.cbq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.93, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1373 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1373: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1371
  %i.cbr = load i64, ptr %i.bzu, align 8, !tbaa !27 ; 3 uses
  %i.cbs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cas) #33
  %i.cbt = icmp eq i64 %i.cbr, %i.cbs
  br i1 %i.cbt, label %bb.xp, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread

bb.xp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1373
  %i.cbu = icmp eq i64 %i.cbr, 0
  br i1 %i.cbu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.xp
  %i.cbv = load ptr, ptr %104, align 8, !tbaa !31
  %bcmp.i.i = call i32 @bcmp(ptr %i.cbv, ptr nonnull %i.cas, i64 %i.cbr)
  %.not1658 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not1658, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379, label %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1373, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.cbw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.94, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1375 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1375: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.cbx = load ptr, ptr %104, align 8, !tbaa !31
  %i.cby = load i64, ptr %i.bzu, align 8, !tbaa !27
  %i.cbz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %i.cbx, i64 noundef %i.cby)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1377 unwind label %bb.xs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1377: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1375
  %i.cca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cbz, ptr noundef nonnull @.str.95, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379 unwind label %bb.xs ; 0 uses

.loopexit1678:                                    ; preds = %.noexc.i1362
  %lpad.loopexit1680 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409

.loopexit.split-lp1679:                           ; preds = %bb.xh
  %lpad.loopexit.split-lp1681 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409

bb.xq:                                            ; preds = %bb.xl
  %i.ccb = landingpad { ptr, i32 }
          cleanup
  br label %bb.yb

bb.xr:                                            ; preds = %bb.xn
  %i.ccc = landingpad { ptr, i32 }
          cleanup
  br label %bb.xz

bb.xs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1377, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1375, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1371, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1367, %bb.xo
  %i.ccd = landingpad { ptr, i32 }
          cleanup
  br label %bb.xy

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379: ; preds = %bb.xp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1377, %_ZStneIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.cce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1381 unwind label %bb.xs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1381: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1379
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  store ptr %i.bzv, ptr %106, align 8, !tbaa !24, !alias.scope !433
  store i64 0, ptr %i.bzw, align 8, !tbaa !27, !alias.scope !433
  store i8 0, ptr %i.bzv, align 8, !tbaa !21, !alias.scope !433
  %i.ccf = load ptr, ptr %i.bzx, align 8, !tbaa !335, !noalias !433 ; 3 uses
  %.not5.i.i1384 = icmp eq ptr %i.ccf, null
  br i1 %.not5.i.i1384, label %bb.xv, label %bb.xt

bb.xt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1381
  %144 = load ptr, ptr %i.bzy, align 8, !noalias !433 ; 2 uses
  %145 = icmp ugt ptr %i.ccf, %144
  %.08.i.i.i1368 = select i1 %145, ptr %i.ccf, ptr %144
  %i.ccg = load ptr, ptr %i.bzz, align 8, !tbaa !336, !noalias !433 ; 2 uses
  %i.cch = ptrtoint ptr %.08.i.i.i1368 to i64
  %i.cci = ptrtoint ptr %i.ccg to i64
  %i.ccj = sub i64 %i.cch, %i.cci
  %i.cck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %106, i64 noundef 0, i64 noundef 0, ptr noundef %i.ccg, i64 noundef %i.ccj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1391 unwind label %bb.xu ; 0 uses

bb.xu:                                            ; preds = %bb.xv, %bb.xt
  %i.ccl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ccm = load ptr, ptr %106, align 8, !tbaa !31, !alias.scope !433 ; 2 uses
  %i.ccn = icmp eq ptr %i.ccm, %i.bzv
  br i1 %i.ccn, label %.body1389, label %.body1389.sink.split

bb.xv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %106, ptr noundef nonnull align 8 dereferenceable(32) %i.caa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1391 unwind label %bb.xu

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1391: ; preds = %bb.xv, %bb.xt
  %i.cco = load i64, ptr %i.bzw, align 8, !tbaa !27 ; 2 uses
  %i.ccp = load i64, ptr %i.bzr, align 8, !tbaa !27
  %i.ccq = sub i64 4611686018427387903, %i.ccp
  %i.ccr = icmp ult i64 %i.ccq, %i.cco
  br i1 %i.ccr, label %bb.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1392

bb.xw:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1391
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.319) #34
          to label %.noexc1393 unwind label %.loopexit.split-lp1684

.noexc1393:                                       ; preds = %bb.xw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1392: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit1391
  %i.ccs = load ptr, ptr %106, align 8, !tbaa !31
  %i.cct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef %i.ccs, i64 noundef %i.cco)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit1683 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1392
  %i.ccu = load ptr, ptr %106, align 8, !tbaa !31 ; 2 uses
  %i.ccv = icmp eq ptr %i.ccu, %i.bzv
  br i1 %i.ccv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ccw = load i64, ptr %i.bzv, align 8, !tbaa !21
  %i.ccx = add i64 %i.ccw, 1
  call void @_ZdlPvm(ptr noundef %i.ccu, i64 noundef %i.ccx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1395
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #33
  store ptr %i.cab, ptr %105, align 8, !tbaa !18
  %i.ccy = load i64, ptr %i.cad, align 8
  %i.ccz = getelementptr inbounds i8, ptr %105, i64 %i.ccy
  store ptr %i.cac, ptr %i.ccz, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cae, align 8, !tbaa !18
  %i.cda = load ptr, ptr %i.caa, align 8, !tbaa !31 ; 2 uses
  %i.cdb = icmp eq ptr %i.cda, %i.caf
  br i1 %i.cdb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397
  %i.cdc = load i64, ptr %i.caf, align 8, !tbaa !21
  %i.cdd = add i64 %i.cdc, 1
  call void @_ZdlPvm(ptr noundef %i.cda, i64 noundef %i.cdd) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1400

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1398
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cae, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cag) #33
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cah) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #33
  br label %bb.ya

.loopexit1683:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1392
  %lpad.loopexit1685 = landingpad { ptr, i32 }
          cleanup
  br label %bb.xx

.loopexit.split-lp1684:                           ; preds = %bb.xw
  %lpad.loopexit.split-lp1686 = landingpad { ptr, i32 }
          cleanup
  br label %bb.xx

bb.xx:                                            ; preds = %.loopexit.split-lp1684, %.loopexit1683
  %lpad.phi1687 = phi { ptr, i32 } [ %lpad.loopexit1685, %.loopexit1683 ], [ %lpad.loopexit.split-lp1686, %.loopexit.split-lp1684 ] ; 2 uses
  %i.cde = load ptr, ptr %106, align 8, !tbaa !31 ; 2 uses
  %i.cdf = icmp eq ptr %i.cde, %i.bzv
  br i1 %i.cdf, label %.body1389, label %.body1389.sink.split

.body1389.sink.split:                             ; preds = %bb.xx, %bb.xu
  %.sink3274 = phi ptr [ %i.ccm, %bb.xu ], [ %i.cde, %bb.xx ]
  %.pn437.ph = phi { ptr, i32 } [ %i.ccl, %bb.xu ], [ %lpad.phi1687, %bb.xx ]
  %i.cdg = load i64, ptr %i.bzv, align 8, !tbaa !21
  %i.cdh = add i64 %i.cdg, 1
  call void @_ZdlPvm(ptr noundef %.sink3274, i64 noundef %i.cdh) #35
  br label %.body1389

.body1389:                                        ; preds = %.body1389.sink.split, %bb.xx, %bb.xu
  %.pn437 = phi { ptr, i32 } [ %i.ccl, %bb.xu ], [ %lpad.phi1687, %bb.xx ], [ %.pn437.ph, %.body1389.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #33
  br label %bb.xy

bb.xy:                                            ; preds = %.body1389, %bb.xs
  %.pn437.pn = phi { ptr, i32 } [ %.pn437, %.body1389 ], [ %i.ccd, %bb.xs ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %105) #33
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xr
  %.pn437.pn.pn = phi { ptr, i32 } [ %.pn437.pn, %bb.xy ], [ %i.ccc, %bb.xr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #33
  br label %bb.yb

bb.ya:                                            ; preds = %bb.xm, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1400
  %.1330 = phi i1 [ %.0329, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit1400 ], [ true, %bb.xm ]
  %i.cdi = load ptr, ptr %104, align 8, !tbaa !31 ; 2 uses
  %i.cdj = icmp eq ptr %i.cdi, %i.bzt
  br i1 %i.cdj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404: ; preds = %bb.ya
  %i.cdk = load i64, ptr %i.bzt, align 8, !tbaa !21
  %i.cdl = add i64 %i.cdk, 1
  call void @_ZdlPvm(ptr noundef %i.cdi, i64 noundef %i.cdl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406: ; preds = %bb.ya, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1404
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406
  %.2331 = phi i1 [ %.1330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1406 ], [ %.0329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ]
  %i.cdm = add nuw nsw i32 %.0328, 1
  br label %bb.ww, !llvm.loop !434

bb.yb:                                            ; preds = %bb.xz, %bb.xq
  %.pn437.pn.pn.pn = phi { ptr, i32 } [ %.pn437.pn.pn, %bb.xz ], [ %i.ccb, %bb.xq ] ; 2 uses
  %i.cdn = load ptr, ptr %104, align 8, !tbaa !31 ; 2 uses
  %i.cdo = icmp eq ptr %i.cdn, %i.bzt
  br i1 %i.cdo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407: ; preds = %bb.yb
  %i.cdp = load i64, ptr %i.bzt, align 8, !tbaa !21
  %i.cdq = add i64 %i.cdp, 1
  call void @_ZdlPvm(ptr noundef %i.cdn, i64 noundef %i.cdq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1409: ; preds = %bb.yb, %.loopexit1678, %.loopexit.split-lp1679, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407
  %.pn437.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn437.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1407 ], [ %lpad.loopexit.split-lp1681, %.loopexit.split-lp1679 ], [ %lpad.loopexit1680, %.loopexit1678 ], [ %.pn437.pn.pn.pn, %bb.yb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #33
  br label %bb.yk

bb.yc:                                            ; preds = %bb.wy
  %i.cdr = load ptr, ptr %0, align 8, !tbaa !36
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 56
  %i.cdt = load ptr, ptr %i.cds, align 8, !tbaa !251
  %i.cdu = invoke noundef i32 @_ZNK16OpenColorIO_v2_57Context17getNumSearchPathsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cdt)
          to label %bb.yd unwind label %bb.yf

bb.yd:                                            ; preds = %bb.yc
  %i.cdv = icmp eq i32 %i.cdu, 0
  br i1 %i.cdv, label %bb.ye, label %bb.yg

bb.ye:                                            ; preds = %bb.yd
  %i.cdw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef nonnull @.str.96)
          to label %bb.yg unwind label %bb.yf     ; 0 uses

bb.yf:                                            ; preds = %bb.yg, %bb.yh, %bb.ye, %bb.yc
  %i.cdx = landingpad { ptr, i32 }
          cleanup
  br label %bb.yk

bb.yg:                                            ; preds = %bb.ye, %bb.yd
  %i.cdy = load ptr, ptr %0, align 8, !tbaa !36
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdy, i64 840
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cdz, ptr noundef nonnull align 8 dereferenceable(32) %103)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.yf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.yg
  %i.cea = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  %i.ceb = load ptr, ptr %103, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cea, ptr noundef %i.ceb)
          to label %bb.yh unwind label %bb.yi

bb.yh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @__cxa_throw(ptr nonnull %i.cea, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #34
          to label %bb.abu unwind label %bb.yf

bb.yi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cec = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cea) #33
  br label %bb.yk

bb.yj:                                            ; preds = %bb.wy
  %i.ced = load ptr, ptr %103, align 8, !tbaa !31 ; 2 uses
  %i.cee = icmp eq ptr %i.ced, %i.bzo
  br i1 %i.cee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411: ; preds = %bb.yj
  %i.cef = load i64, ptr %i.bzo, align 8, !tbaa !21
  %i.ceg = add i64 %i.cef, 1
  call void @_ZdlPvm(ptr noundef %i.ced, i64 noundef %i.ceg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_56Config4Impl18instantiateDisplayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_:bb.a
  br label %._crit_edge.i.i160

._crit_edge.i.i160:                               ; preds = %.noexc163, %bb.av
  %i.gx = phi ptr [ %i.gv, %.noexc163 ], [ %i.gr, %bb.av ] ; 2 uses
  switch i64 %i.gt, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i160
  %i.gy = load i8, ptr %i.gq, align 1, !tbaa !21
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !21
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr nonnull align 1 %i.gq, i64 %i.gt, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i160
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !27
  %i.hb = load ptr, ptr %15, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 0, ptr %i.hc, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.hd = invoke ptr @_ZN16OpenColorIO_v2_511FindDisplayERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7DisplayEESaIS9_EERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.az unwind label %bb.bf     ; 6 uses

bb.az:                                            ; preds = %bb.ay
  %i.he = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gr
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.az
  %i.hg = load i64, ptr %i.gr, align 8, !tbaa !21
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !399 ; 2 uses
  %i.hk = icmp eq ptr %i.hd, %i.hj
  br i1 %i.hk, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.hl = load ptr, ptr %i.gp, align 8, !tbaa !241 ; 3 uses
  %i.hm = ptrtoint ptr %i.hd to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 4 uses
  %.not277.a = icmp eq i64 %i.ho, -88
  br i1 %.not277.a, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i64 noundef 1)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE6resizeEm.exit unwind label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEEEEvT_SD_(ptr noundef %i.hl, ptr noundef %i.hj)
          to label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEES9_EvT_SB_RSaIT0_E.exit.i.i unwind label %bb.bd

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %bb.bc
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !242
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE6resizeEm.exit

bb.bd:                                            ; preds = %bb.bc
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #37
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.bb
  %i.hr = load ptr, ptr %i.gp, align 8, !tbaa !241
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ho
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE6resizeEm.exit
  %i.ht = load ptr, ptr %i.gp, align 8, !tbaa !241
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ho ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load i8, ptr %i.fl, align 8, !tbaa !206, !range !129, !noundef !131
  store i8 %i.hw, ptr %i.hv, align 8, !tbaa !206
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_54ViewESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %.noexc170 unwind label %bb.bg ; 0 uses

.noexc170:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ib = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %i.ia)
          to label %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit unwind label %bb.bg ; 0 uses

bb.be:                                            ; preds = %.noexc.i161, %bb.au
  %i.ic = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bf:                                            ; preds = %bb.ay
  %i.id = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 2 uses
  %i.ie = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.gr
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bf
  %i.ig = load i64, ptr %i.gr, align 8, !tbaa !21
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.be
  %.pn70 = phi { ptr, i32 } [ %i.ic, %bb.be ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.id, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %bb.dl

bb.bg:                                            ; preds = %.noexc170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN16OpenColorIO_v2_57DisplayEESaIS9_EE6resizeEm.exit, %bb.bb
  %i.ii = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.dl

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.ik = load i8, ptr %i.fl, align 8, !tbaa !206, !range !129, !noundef !131
  store i8 %i.ik, ptr %i.ij, align 8, !tbaa !206
  %i.il = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.im = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_54ViewESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %.noexc175 unwind label %bb.bi ; 0 uses

.noexc175:                                        ; preds = %bb.bh
  %i.in = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ip = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit177 unwind label %bb.bi ; 0 uses

_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit177:    ; preds = %.noexc175
  %i.iq = load ptr, ptr %i.gp, align 8, !tbaa !399
  %i.ir = ptrtoint ptr %i.hd to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  br label %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit

bb.bi:                                            ; preds = %.noexc175, %bb.bh
  %i.iu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.dl

_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit:       ; preds = %.noexc170, %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit177
  %.061.in.in = phi i64 [ %i.it, %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit177 ], [ %i.ho, %.noexc170 ]
  %.061.in = sdiv exact i64 %.061.in.in, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  invoke void @_ZN16OpenColorIO_v2_510ColorSpace6CreateENS_18ReferenceSpaceTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.296") align 8 %16, i32 noundef 1)
          to label %bb.bj unwind label %bb.cy

bb.bj:                                            ; preds = %_ZN16OpenColorIO_v2_57DisplayaSERKS0_.exit
  %i.iv = load ptr, ptr %16, align 16, !tbaa !720
  %i.iw = load ptr, ptr %8, align 8, !tbaa !31
  call void @_ZN16OpenColorIO_v2_510ColorSpace7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef %i.iw) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  invoke void @_ZN16OpenColorIO_v2_513FileTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.299") align 8 %17)
          to label %bb.bk unwind label %bb.cz

bb.bk:                                            ; preds = %bb.bj
  %i.ix = load ptr, ptr %17, align 16, !tbaa !722
  %i.iy = load ptr, ptr %3, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_513FileTransform6setSrcEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef %i.iy)
          to label %bb.bl unwind label %bb.da

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.bm unwind label %bb.db

bb.bm:                                            ; preds = %bb.bl
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.317, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %bb.bm
  %i.ja = load ptr, ptr %2, align 8, !tbaa !31
  %i.jb = load i64, ptr %i.l, align 8, !tbaa !27
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %i.ja, i64 noundef %i.jb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181 unwind label %bb.dc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %i.jd = load ptr, ptr %16, align 16, !tbaa !720
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.je, ptr %19, align 8, !tbaa !24, !alias.scope !730
  %i.jf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.jf, align 8, !tbaa !27, !alias.scope !730
  store i8 0, ptr %i.je, align 8, !tbaa !21, !alias.scope !730
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !335, !noalias !730 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.jh, null
  br i1 %.not5.i.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %23 = load ptr, ptr %22, align 8, !noalias !730 ; 2 uses
  %24 = icmp ugt ptr %i.jh, %23
  %.08.i.i.i = select i1 %24, ptr %i.jh, ptr %23
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !336, !noalias !730 ; 2 uses
  %i.jk = ptrtoint ptr %.08.i.i.i to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.jj, i64 noundef %i.jm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %i.jo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE ; 2 uses
  %i.jp = load ptr, ptr %19, align 8, !tbaa !31, !alias.scope !730 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.je
  br i1 %i.jq, label %.body185, label %.body185.sink.split

bb.bp:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.jr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bo

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bp, %bb.bn
  %i.js = load ptr, ptr %19, align 8, !tbaa !31
  invoke void @_ZN16OpenColorIO_v2_510ColorSpace14setDescriptionEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef %i.js)
          to label %bb.bq unwind label %bb.dd

bb.bq:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.jt = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.je
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.bq
  %i.jv = load i64, ptr %i.je, align 8, !tbaa !21
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %i.jx = load ptr, ptr %16, align 16, !tbaa !720
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.jy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !14 ; 2 uses
  %i.kb = load <2 x ptr>, ptr %17, align 16, !tbaa !13
  store <2 x ptr> %i.kb, ptr %20, align 16, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !3
  %i.kf = add nsw i32 %i.ke, 1
  store i32 %i.kf, ptr %i.kc, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit

bb.bt:                                            ; preds = %bb.br
  %i.kg = atomicrmw volatile add ptr %i.kc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.bs, %bb.bt
  invoke void @_ZN16OpenColorIO_v2_510ColorSpace12setTransformERKSt10shared_ptrIKNS_9TransformEENS_19ColorSpaceDirectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 1)
          to label %bb.bu unwind label %bb.de

bb.bu:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !14 ; 8 uses
  %.not.i.i190 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i190, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.ki, align 8, !tbaa !15
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !17
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #33, !inline_history !482
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #33, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i191.a = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i191.a, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i = phi i32 [ %i.kl, %bb.by ], [ %i.kv, %bb.bz ]
  %i.kw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.kw, label %bb.ca, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bu, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.kx = load ptr, ptr %16, align 16, !tbaa !720
  invoke void @_ZN16OpenColorIO_v2_510ColorSpace11setEncodingEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.318)
          to label %bb.cb unwind label %bb.dc

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.la = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !14 ; 2 uses
  %i.ld = load <2 x ptr>, ptr %16, align 16, !tbaa !13
  store <2 x ptr> %i.ld, ptr %21, align 16, !tbaa !13
  %.not.i.i.i192 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i192, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 3 uses
  %i.lf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i193 = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i193, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit

bb.ce:                                            ; preds = %bb.cc
  %i.li = atomicrmw volatile add ptr %i.le, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.cb, %bb.cd, %bb.ce
  invoke void @_ZN16OpenColorIO_v2_513ColorSpaceSet13addColorSpaceERKSt10shared_ptrIKNS_10ColorSpaceEE(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.cf unwind label %bb.df

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEC2IS1_vEERKS_IT_E.exit
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !14 ; 8 uses
  %.not.i.i194 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i194, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 4 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 4294967297
  %i.ln = trunc i64 %i.ll to i32                  ; 2 uses
  br i1 %i.lm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lk, align 8, !tbaa !15
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !17
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #33, !inline_history !319
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #33, !inline_history !319
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ci:                                            ; preds = %bb.cg
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i195 = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i195, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lw = add nsw i32 %i.ln, -1
  store i32 %i.lw, ptr %i.lk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i196

bb.ck:                                            ; preds = %bb.ci
  %i.lx = atomicrmw volatile add ptr %i.lk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i196

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i196: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i197 = phi i32 [ %i.ln, %bb.cj ], [ %i.lx, %bb.ck ]
  %i.ly = icmp eq i32 %.0.i.i.i.i197, 1
  br i1 %i.ly, label %bb.cl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionE:bb.a
bb.x:                                             ; preds = %bb.v
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.w, %bb.x
  %i.ar = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_523CollectContextVariablesERKNS_6ConfigERKNS_7ContextESt10shared_ptrIKNS_9TransformEERS6_IS3_E(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.y unwind label %bb.bc

bb.y:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.as, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.at, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !17
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #33, !inline_history !482
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #33, !inline_history !482
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i88 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i88, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

bb.ad:                                            ; preds = %bb.ab
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i90 = phi i32 [ %i.aw, %bb.ac ], [ %i.bg, %bb.ad ]
  %i.bh = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.bh, label %bb.ae, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.ae
  %i.bi = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1024
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !210, !range !129, !noundef !131
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1025
  %i.bn = load i8, ptr %i.bm, align 1, !range !129
  %i.bo = trunc nuw i8 %i.bn to i1
  %not..i = xor i1 %i.bl, true
  %i.bp = select i1 %not..i, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.af, label %bb.cx

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 1032 ; 3 uses
  %i.br = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #33 ; 2 uses
  %.not.i.i91 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i91, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.br) #34
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %bb.ag
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.ah unwind label %bb.be

bb.ah:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  br i1 %i.ar, label %bb.ai, label %._crit_edge.i.i94

bb.ai:                                            ; preds = %bb.ah
  %i.bs = load ptr, ptr %5, align 8, !tbaa !251
  %i.bt = invoke noundef ptr @_ZNK16OpenColorIO_v2_57Context10getCacheIDEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %bb.aj unwind label %bb.bf     ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.bu, ptr %9, align 8, !tbaa !24
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.326) #34
          to label %.noexc92 unwind label %.critedge80.thread

.noexc92:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !32
  %i.bx = icmp ugt i64 %i.bw, 15
  br i1 %i.bx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.al
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc93 unwind label %.critedge80.thread ; 2 uses

.noexc93:                                         ; preds = %.noexc.i
  store ptr %i.by, ptr %9, align 8, !tbaa !31
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.bz, ptr %i.bu, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc93, %bb.al
  %i.ca = phi ptr [ %i.by, %.noexc93 ], [ %i.bu, %bb.al ] ; 2 uses
  switch i64 %i.bw, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !21
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.an:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr nonnull align 1 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.am, %bb.an
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !27
  %i.ce = load ptr, ptr %9, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.pre = load ptr, ptr %9, align 8, !tbaa !31
  %.pre173.a = load i64, ptr %i.cd, align 8, !tbaa !27
  br label %bb.ao

._crit_edge.i.i94:                                ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.cg, ptr %9, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ch, align 8, !tbaa !27
  store i8 0, ptr %i.cg, align 8, !tbaa !21
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ci = phi i64 [ 0, %._crit_edge.i.i94 ], [ %.pre173.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ]
  %i.cj = phi ptr [ %i.cg, %._crit_edge.i.i94 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ]
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.cj, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bg

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ao
  %i.cl = load ptr, ptr %3, align 8, !tbaa !407
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_9TransformE(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %bb.ap unwind label %bb.bg

bb.ap:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i32 noundef %4)
          to label %bb.aq unwind label %bb.bg     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.co = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.critedge78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #35
  br label %.critedge78

.critedge78:                                      ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ct, ptr %10, align 8, !tbaa !24, !alias.scope !766
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.cu, align 8, !tbaa !27, !alias.scope !766
  store i8 0, ptr %i.ct, align 8, !tbaa !21, !alias.scope !766
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !335, !noalias !766 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.cw, null
  br i1 %.not5.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.critedge78
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %14 = load ptr, ptr %13, align 8, !noalias !766 ; 2 uses
  %15 = icmp ugt ptr %i.cw, %14
  %.08.i.i.i = select i1 %15, ptr %i.cw, ptr %14
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !336, !noalias !766 ; 2 uses
  %i.cz = ptrtoint ptr %.08.i.i.i to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.cy, i64 noundef %i.db)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %10, align 8, !tbaa !31, !alias.scope !766 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ct
  br i1 %i.df, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  %i.dg = load i64, ptr %i.ct, align 8, !tbaa !21, !alias.scope !766
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #35
  br label %.body

bb.at:                                            ; preds = %.critedge78
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.at, %bb.ar
  %i.dj = load ptr, ptr %10, align 8, !tbaa !31
  %i.dk = load i64, ptr %i.cu, align 8, !tbaa !27
  %i.dl = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.dj, i64 noundef %i.dk, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #37
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.do = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ct
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.dq = load i64, ptr %i.ct, align 8, !tbaa !21
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !32
  %i.ds = load ptr, ptr %1, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1016
  %i.du = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN16OpenColorIO_v2_512GenericCacheImSt10shared_ptrINS_9ProcessorEEEixERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #33 ; 8 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !767 ; 2 uses
  %.not162.a = icmp eq ptr %i.dv, null
  br i1 %.not162.a, label %bb.av, label %bb.cq

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  invoke void @_ZN16OpenColorIO_v2_59Processor6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.160") align 8 %11)
          to label %.noexc103 unwind label %bb.bh

.noexc103:                                        ; preds = %bb.av
  %i.dw = load ptr, ptr %11, align 8, !tbaa !767, !alias.scope !769
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !772
  %i.dy = load ptr, ptr %1, align 8, !tbaa !36, !noalias !769
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1008
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !209
  call void @_ZN16OpenColorIO_v2_59Processor4Impl22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(552) %i.dx, i32 noundef %i.ea) #33
  %i.eb = load ptr, ptr %11, align 8, !tbaa !767, !alias.scope !769
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !772
  invoke void @_ZN16OpenColorIO_v2_59Processor4Impl12setTransformERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_9TransformEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(552) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.noexc103
  %i.ed = load ptr, ptr %11, align 8, !tbaa !767, !alias.scope !769
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !772
  invoke void @_ZN16OpenColorIO_v2_59Processor4Impl15computeMetadataEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ee)
          to label %"_ZZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionEENK3$_0clERKS0_S6_SB_SC_.exit" unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.noexc103
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #33
  br label %.body104

"_ZZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionEENK3$_0clERKS0_S6_SB_SC_.exit": ; preds = %bb.aw
  %i.eg = load ptr, ptr @_ZN16OpenColorIO_v2_527OCIO_DISABLE_CACHE_FALLBACKE, align 8, !tbaa !30
  %i.eh = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_58Platform12isEnvPresentEPKc(ptr noundef %i.eg)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %"_ZZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionEENK3$_0clERKS0_S6_SB_SC_.exit"
  br i1 %i.eh, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59ProcessorEEaSERKS2_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ei = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1096
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !83 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1080 ; 2 uses
  %.not163169 = icmp eq ptr %i.ek, %i.el
  br i1 %.not163169, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59ProcessorEEaSERKS2_.exit, label %.lr.ph

bb.ba:                                            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bb:                                            ; preds = %bb.n
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #33
  br label %bb.di

bb.bc:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2ERKS3_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #33
  br label %bb.di

bb.bd:                                            ; preds = %bb.ag
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.be:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bf:                                            ; preds = %bb.ai
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.critedge82

.critedge80.thread:                               ; preds = %bb.ak, %.noexc.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.critedge82

bb.bg:                                            ; preds = %bb.ao, %bb.ap, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %.critedge82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.bg
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #35
  br label %.critedge82

.critedge82:                                      ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %.critedge80.thread, %bb.bf
  %.pn.pn.pn = phi { ptr, i32 } [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.es, %.critedge80.thread ], [ %i.er, %bb.bf ], [ %i.et, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.cv

.body:                                            ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cu

bb.bh:                                            ; preds = %bb.av
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.bi:                                            ; preds = %"_ZZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionEENK3$_0clERKS0_S6_SB_SC_.exit"
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.lr.ph:                                           ; preds = %bb.az, %bb.bx
  %.sroa.0141.0170 = phi ptr [ %i.gk, %bb.bx ], [ %i.ek, %bb.az ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0141.0170, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !767 ; 2 uses
  %.not164.a = icmp eq ptr %i.fc, null
  br i1 %.not164.a, label %bb.bx, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph
  %i.fd = invoke noundef ptr @_ZNK16OpenColorIO_v2_59Processor10getCacheIDEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bj
  %i.fe = load ptr, ptr %11, align 8, !tbaa !767
  %i.ff = invoke noundef ptr @_ZNK16OpenColorIO_v2_59Processor10getCacheIDEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %bb.bl unwind label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  %i.fg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fd, ptr noundef nonnull dereferenceable(1) %i.ff) #38
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.critedge84, label %bb.bx

.critedge84:                                      ; preds = %bb.bl
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0141.0170, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !767
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_56Config10getCacheIDEv:bb.a
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #33, !inline_history !410
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #33
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret ptr %i.l

bb.l:                                             ; preds = %_ZNK16OpenColorIO_v2_56Config17getCurrentContextEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_56Config10getCacheIDERKSt10shared_ptrIKNS_7ContextEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  %8 = alloca %"class.std::vector.98", align 8    ; 11 uses
  %9 = alloca %"class.std::set", align 8          ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 872 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store i8 0, ptr %i.e, align 8, !tbaa !21
  %i.g = load ptr, ptr %1, align 8, !tbaa !505    ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = invoke noundef ptr @_ZNK16OpenColorIO_v2_57Context10getCacheIDEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #33
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.h, i64 noundef %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 928
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 920 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = load i64, ptr %i.f, align 8, !tbaa !27   ; 4 uses
  %i.r = load ptr, ptr %2, align 8                ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.y = sub i64 %i.t, %i.q
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.z, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !539 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !574

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.aa, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.q) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ah = sub i64 %i.q, %i.ac
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ah, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  br label %bb.cl

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 968
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK16OpenColorIO_v2_56Config9serializeERSo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !24, !alias.scope !877
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !27, !alias.scope !877
  store i8 0, ptr %i.ao, align 8, !tbaa !21, !alias.scope !877
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !335, !noalias !877 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %17 = load ptr, ptr %16, align 8, !noalias !877 ; 2 uses
  %18 = icmp ugt ptr %i.ar, %17
  %.08.i.i.i = select i1 %18, ptr %i.ar, ptr %17
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !336, !noalias !877 ; 2 uses
  %i.au = ptrtoint ptr %.08.i.i.i to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.at, i64 noundef %i.aw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !31, !alias.scope !877 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ao
  br i1 %i.ba, label %.body, label %.body.sink.split

bb.n:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.bc = load ptr, ptr %4, align 8, !tbaa !31
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_511CacheIDHashB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %i.bc, i64 noundef %i.bd)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !36    ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 960 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 976 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  %i.bj = load ptr, ptr %5, align 8, !tbaa !31    ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk                ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.bl, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.bl, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !27 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i = icmp eq ptr %5, %i.bf
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bn, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !21
  store i8 %i.bp, ptr %i.bg, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bj, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 968
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !27
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 968
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !21
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !21
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !21
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 968
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !21
  store <2 x i64> %i.ca, ptr %i.bz, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bg, ptr %5, align 8, !tbaa !31
  store i64 %i.bx, ptr %i.bk, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bk, ptr %5, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.cb = phi ptr [ %i.bg, %bb.t ], [ %i.bk, %bb.u ], [ %i.bj, %bb.p ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !27
  store i8 0, ptr %i.cb, align 1, !tbaa !21
  %i.cd = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.ci = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ao
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cm, ptr %3, align 8, !tbaa !18
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cr, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !21
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cr, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cy) #33
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.aa

bb.v:                                             ; preds = %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.dd = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ao
  br i1 %i.de, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.m
  %.sink = phi ptr [ %i.az, %bb.m ], [ %i.dd, %bb.x ]
  %.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.dc, %bb.x ]
  %i.df = load i64, ptr %i.ao, align 8, !tbaa !21
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dg) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.dc, %bb.x ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.db, %bb.w ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %i.da, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.cm

bb.aa:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.dh, ptr %6, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.di, align 8, !tbaa !27
  store i8 0, ptr %i.dh, align 8, !tbaa !21
  %i.dj = load ptr, ptr %1, align 8, !tbaa !505
  %.not167 = icmp eq ptr %i.dj, null
  br i1 %.not167, label %bb.bt, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %0, align 8, !tbaa !36
  invoke void @_ZNK16OpenColorIO_v2_56Config4Impl24getAllInternalTransformsERSt6vectorISt10shared_ptrIKNS_9TransformEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(1120) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !204
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !83
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.dp, align 8, !tbaa !85
  %i.dq = load ptr, ptr %8, align 8, !tbaa !405   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !405 ; 2 uses
  %.not168170 = icmp eq ptr %i.dq, %i.ds
  br i1 %.not168170, label %._crit_edge176, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ag
  %.pre = load ptr, ptr %i.dn, align 8, !tbaa !83 ; 2 uses
  %.not169172 = icmp eq ptr %.pre, %i.dl
  br i1 %.not169172, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.al

bb.ae:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.af:                                            ; preds = %bb.ac
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph:                                           ; preds = %bb.ad, %bb.ag
  %.sroa.0155.0171 = phi ptr [ %i.dz, %bb.ag ], [ %i.dq, %bb.ad ] ; 2 uses
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetFileReferencesERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EERKSt10shared_ptrIKNS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0155.0171)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0155.0171, i64 16 ; 2 uses
  %.not168 = icmp eq ptr %i.dz, %i.ds
  br i1 %.not168, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

._crit_edge176:                                   ; preds = %bb.ba, %bb.ad, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.eb, ptr %12, align 8, !tbaa !24, !alias.scope !884
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.ec, align 8, !tbaa !27, !alias.scope !884
  store i8 0, ptr %i.eb, align 8, !tbaa !21, !alias.scope !884
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !335, !noalias !884 ; 3 uses
  %.not5.i.i58 = icmp eq ptr %i.ee, null
  br i1 %.not5.i.i58, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge176
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %20 = load ptr, ptr %19, align 8, !noalias !884 ; 2 uses
  %21 = icmp ugt ptr %i.ee, %20
  %.08.i.i.i56 = select i1 %21, ptr %i.ee, ptr %20
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !336, !noalias !884 ; 2 uses
  %i.eh = ptrtoint ptr %.08.i.i.i56 to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.eg, i64 noundef %i.ej)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit65 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %12, align 8, !tbaa !31, !alias.scope !884 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.eb
  br i1 %i.en, label %.body63, label %.body63.sink.split

bb.ak:                                            ; preds = %._crit_edge176
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.eo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit65 unwind label %bb.aj

bb.al:                                            ; preds = %.lr.ph175, %bb.ba
  %.sroa.0151.0173 = phi ptr [ %.pre, %.lr.ph175 ], [ %i.gm, %bb.ba ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0151.0173, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0151.0173, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !27 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.ba, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %i.ep, align 8, !tbaa !31
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.et, i64 noundef %i.er)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.au

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.am
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.192, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ew = load ptr, ptr %1, align 8, !tbaa !505
  %i.ex = load ptr, ptr %i.ep, align 8, !tbaa !31
  %i.ey = invoke noundef ptr @_ZNK16OpenColorIO_v2_57Context19resolveFileLocationEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.ex)
          to label %bb.an unwind label %bb.av     ; 4 uses

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.dt, ptr %10, align 8, !tbaa !24
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.326) #34
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !32
  %i.fb = icmp ugt i64 %i.fa, 15
  br i1 %i.fb, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ap
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %bb.aw  ; 2 uses

.noexc66:                                         ; preds = %.noexc.i
  store ptr %i.fc, ptr %10, align 8, !tbaa !31
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fd, ptr %i.dt, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc66, %bb.ap
  %i.fe = phi ptr [ %i.fc, %.noexc66 ], [ %i.dt, %bb.ap ] ; 2 uses
  switch i64 %i.fa, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !21
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !21
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr nonnull align 1 %i.ey, i64 %i.fa, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i64 %i.fg, ptr %i.du, align 8, !tbaa !27
  %i.fh = load ptr, ptr %10, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.fj = load ptr, ptr %1, align 8, !tbaa !505
  invoke void @_ZN16OpenColorIO_v2_515GetFastFileHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7ContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fk = load ptr, ptr %11, align 8, !tbaa !31
  %i.fl = load i64, ptr %i.dv, align 8, !tbaa !27
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.fk, i64 noundef %i.fl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68 unwind label %bb.ay

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68: ; preds = %bb.at
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.193, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68
  %i.fo = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.fq = load i64, ptr %i.dw, align 8, !tbaa !21
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.fs = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dt
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.a
  %i.fu = load i64, ptr %i.dt, align 8, !tbaa !21
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ba

bb.au:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.aw:                                            ; preds = %.noexc.i, %bb.ao
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ax:                                            ; preds = %bb.as
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit68, %bb.at
  %i.ga = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.gb = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.dw
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.a: ; preds = %bb.ay
  %i.gd = load i64, ptr %i.dw, align 8, !tbaa !21
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.a, %bb.ax
  %.pn39 = phi { ptr, i32 } [ %i.fz, %bb.ax ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.a ], [ %i.ga, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.gf = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.dt
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a
  %i.gh = load i64, ptr %i.dt, align 8, !tbaa !21
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.aw, %bb.av
  %.pn39.pn = phi { ptr, i32 } [ %i.fx, %bb.av ], [ %i.fy, %bb.aw ], [ %.pn39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.a ]
  %.4 = extractvalue { ptr, i32 } %.pn39.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.gj = call ptr @__cxa_begin_catch(ptr %.4) #33 ; 0 uses
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.194, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  invoke void @__cxa_end_catch()
          to label %bb.ba unwind label %bb.au

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bq unwind label %bb.cn

bb.ba:                                            ; preds = %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.a
end_hunk_4
