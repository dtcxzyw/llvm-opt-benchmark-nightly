inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bv, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.tv, ptr %i.td, align 8
  store ptr %i.ty, ptr %i.te, align 8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.tt
  store ptr %i.tz, ptr %i.tg, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.br
  %i.ua = load ptr, ptr %i.a, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 204 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4            ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sv, i64 1104
  store i32 %i.uc, ptr %i.ud, align 8
  %i.ue = zext i32 %i.uc to i64
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.uf) #26
          to label %bb.bw unwind label %bb.bz     ; 2 uses

bb.bw:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sv, i64 1112
  store ptr %i.ug, ptr %i.uh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ui = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 16 uses
  store i32 0, ptr %i.ui, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr null, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  store ptr %i.ui, ptr %i.uk, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  store ptr %i.ui, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 6 uses
  store i64 0, ptr %i.um, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.un = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 9 uses
  store i32 0, ptr %i.un, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr null, ptr %i.uo, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  store ptr %i.un, ptr %i.up, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.un, ptr %i.uq, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 3 uses
  store i64 0, ptr %i.ur, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store ptr %22, ptr %26, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %20, ptr %i.us, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %23, ptr %i.ut, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %21, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %25, ptr %i.uv, align 8
  %i.uw = load i32, ptr %i.ub, align 4
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %.lr.ph2416, label %._crit_edge2417.thread

.lr.ph2416:                                       ; preds = %bb.bw
  %i.uy = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 8 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 15 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %27, i64 20
  br label %bb.cb

._crit_edge2417:                                  ; preds = %._crit_edge2387
  %i.vn = icmp sgt i32 %.1235.lcssa, 20000
  br i1 %i.vn, label %bb.gx, label %._crit_edge2417.thread

bb.bx:                                            ; preds = %._crit_edge2297, %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit408
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.by:                                            ; preds = %bb.bp, %bb.bo
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.bz:                                            ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.bt, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_12Bodypart_HL1EEEPKT_ii.exit414
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.ca:                                            ; preds = %._crit_edge.i.i415
  %i.vr = landingpad { ptr, i32 }
          cleanup
  %i.vs = load ptr, ptr %19, align 8              ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.sw
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %bb.ca
  %i.vu = load i64, ptr %i.sw, align 8
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef 1144) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit609

bb.cb:                                            ; preds = %.lr.ph2416, %._crit_edge2387
  %indvars.iv3407 = phi i64 [ 0, %.lr.ph2416 ], [ %indvars.iv.next3408, %._crit_edge2387 ] ; 2 uses
  %.02342414 = phi i32 [ 0, %.lr.ph2416 ], [ %.1235.lcssa, %._crit_edge2387 ] ; 2 uses
  %.22392413 = phi ptr [ %i.su, %.lr.ph2416 ], [ %i.wx, %._crit_edge2387 ] ; 4 uses
  %.22962412 = phi i32 [ 0, %.lr.ph2416 ], [ %.3297.lcssa, %._crit_edge2387 ] ; 2 uses
  %.03002411 = phi i32 [ 0, %.lr.ph2416 ], [ %.1301.lcssa, %._crit_edge2387 ] ; 2 uses
  %.03032410 = phi ptr [ %i.ug, %.lr.ph2416 ], [ %i.wy, %._crit_edge2387 ] ; 2 uses
  %.sroa.0765.02408 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0765.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.12772.02407 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.12772.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.18775.02406 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.18775.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.0753.02405 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0753.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.12760.02404 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.12760.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.18.02403 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.18.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.0729.02402 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.0729.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %.sroa.19.02401 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.19.1.lcssa, %._crit_edge2387 ] ; 2 uses
  %.sroa.36.02400 = phi ptr [ null, %.lr.ph2416 ], [ %.sroa.36.1.lcssa, %._crit_edge2387 ] ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.22392413, i64 72
  %i.vx = load i32, ptr %i.vw, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.22392413, i64 64 ; 4 uses
  %i.vz = load i32, ptr %i.vy, align 1
  %i.wa = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_9Model_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.vx, i32 noundef %i.vz)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429 unwind label %bb.cf

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429: ; preds = %bb.cb
  %i.wb = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.cc unwind label %bb.cg     ; 8 uses

bb.cc:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429
  %i.wc = load ptr, ptr %14, align 8
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.wc, i64 %indvars.iv3407
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %i.wd)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.wb, ptr %.03032410, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 1096
  store ptr %i.sv, ptr %i.we, align 8
  %i.wf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc430 unwind label %bb.cg ; 4 uses

.noexc430:                                        ; preds = %bb.cd
  store i32 1, ptr %i.wf, align 8
  %i.wg = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znam(i64 noundef 1028) #26
          to label %.noexc431 unwind label %bb.cg ; 5 uses

.noexc431:                                        ; preds = %.noexc430
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %i.wg, i8 0, i64 1028, i1 false)
  store ptr %i.wg, ptr %i.wh, align 8
  %i.wi = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #26
          to label %.thread28.i unwind label %bb.cg ; 3 uses

.thread28.i:                                      ; preds = %.noexc431
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 2 uses
  store ptr null, ptr %i.wj, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store ptr %i.wi, ptr %i.wk, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 1136
  store ptr %i.wf, ptr %i.wl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.uy, ptr %27, align 8
  store i32 1702060354, ptr %i.uy, align 8
  store i64 4, ptr %i.uz, align 8
  store i8 0, ptr %i.vm, align 4
  %i.wm = getelementptr inbounds nuw i8, ptr %.22392413, i64 68
  store i32 4, ptr %i.wg, align 4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i32 1702060354, ptr %i.wn, align 4
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store i8 0, ptr %i.wo, align 4
  store i32 1, ptr %i.wi, align 8
  %.pre.i = load i32, ptr %i.wm, align 4
  %i.wp = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %.thread28.i
  store i32 %.pre.i, ptr %i.wp, align 4
  store ptr %i.wp, ptr %i.wj, align 8
  %.pre3415 = load i32, ptr %i.vy, align 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wb, i64 1104
  store i32 %.pre3415, ptr %i.wq, align 8
  %i.wr = zext i32 %.pre3415 to i64
  %i.ws = shl nuw nsw i64 %i.wr, 3
  %i.wt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ws) #26
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wb, i64 1112
  store ptr %i.wt, ptr %i.wu, align 8
  %i.wv = load i32, ptr %i.vy, align 1
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.lr.ph2386, label %._crit_edge2387

._crit_edge2387:                                  ; preds = %._crit_edge2364, %bb.ce
  %.sroa.36.1.lcssa = phi ptr [ %.sroa.36.02400, %bb.ce ], [ %.sroa.36.2.lcssa, %._crit_edge2364 ] ; 4 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.02401, %bb.ce ], [ %.sroa.19.2.lcssa, %._crit_edge2364 ]
  %.sroa.0729.1.lcssa = phi ptr [ %.sroa.0729.02402, %bb.ce ], [ %.sroa.0729.2.lcssa, %._crit_edge2364 ] ; 4 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.02403, %bb.ce ], [ %.sroa.18.3, %._crit_edge2364 ] ; 4 uses
  %.sroa.12760.1.lcssa = phi ptr [ %.sroa.12760.02404, %bb.ce ], [ %.sroa.12760.2, %._crit_edge2364 ]
  %.sroa.0753.1.lcssa = phi ptr [ %.sroa.0753.02405, %bb.ce ], [ %.sroa.0753.3, %._crit_edge2364 ] ; 4 uses
  %.sroa.18775.1.lcssa = phi ptr [ %.sroa.18775.02406, %bb.ce ], [ %.sroa.18775.4, %._crit_edge2364 ] ; 4 uses
  %.sroa.12772.1.lcssa = phi ptr [ %.sroa.12772.02407, %bb.ce ], [ %.sroa.12772.2, %._crit_edge2364 ]
  %.sroa.0765.1.lcssa = phi ptr [ %.sroa.0765.02408, %bb.ce ], [ %.sroa.0765.4, %._crit_edge2364 ] ; 4 uses
  %.1301.lcssa = phi i32 [ %.03002411, %bb.ce ], [ %.2302.lcssa, %._crit_edge2364 ]
  %.3297.lcssa = phi i32 [ %.22962412, %bb.ce ], [ %i.afk, %._crit_edge2364 ]
  %.1235.lcssa = phi i32 [ %.02342414, %bb.ce ], [ %.2.lcssa, %._crit_edge2364 ] ; 3 uses
  %indvars.iv.next3408 = add nuw nsw i64 %indvars.iv3407, 1 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.22392413, i64 76
  %i.wy = getelementptr inbounds nuw i8, ptr %.03032410, i64 8
  %i.wz = load ptr, ptr %i.a, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 204
  %i.xb = load i32, ptr %i.xa, align 4
  %i.xc = sext i32 %i.xb to i64
  %i.xd = icmp slt i64 %indvars.iv.next3408, %i.xc
  br i1 %i.xd, label %bb.cb, label %._crit_edge2417, !llvm.loop !193

bb.cf:                                            ; preds = %bb.cb
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cg:                                            ; preds = %.noexc431, %.noexc430, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_9Model_HL1EEEPKT_ii.exit429
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ch:                                            ; preds = %bb.cc
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef 1144) #24
  br label %.body661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444: ; preds = %.thread28.i
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.body661

.lr.ph2386:                                       ; preds = %bb.ce, %._crit_edge2364
  %.12352384 = phi i32 [ %.2.lcssa, %._crit_edge2364 ], [ %.02342414, %bb.ce ] ; 2 uses
  %.22432383 = phi ptr [ %i.afi, %._crit_edge2364 ], [ %i.wa, %bb.ce ] ; 9 uses
  %.32972382 = phi i32 [ %i.afk, %._crit_edge2364 ], [ %.22962412, %bb.ce ] ; 2 uses
  %.13012381 = phi i32 [ %.2302.lcssa, %._crit_edge2364 ], [ %.03002411, %bb.ce ] ; 2 uses
  %.03062380 = phi ptr [ %i.afj, %._crit_edge2364 ], [ %i.wt, %bb.ce ] ; 2 uses
  %.03072379 = phi i32 [ %i.afh, %._crit_edge2364 ], [ 0, %bb.ce ]
  %.sroa.0765.12378 = phi ptr [ %.sroa.0765.4, %._crit_edge2364 ], [ %.sroa.0765.02408, %bb.ce ] ; 16 uses
  %.sroa.12772.12377 = phi ptr [ %.sroa.12772.2, %._crit_edge2364 ], [ %.sroa.12772.02407, %bb.ce ] ; 8 uses
  %.sroa.18775.12376 = phi ptr [ %.sroa.18775.4, %._crit_edge2364 ], [ %.sroa.18775.02406, %bb.ce ] ; 11 uses
  %.sroa.0753.12375 = phi ptr [ %.sroa.0753.3, %._crit_edge2364 ], [ %.sroa.0753.02405, %bb.ce ] ; 15 uses
  %.sroa.12760.12374 = phi ptr [ %.sroa.12760.2, %._crit_edge2364 ], [ %.sroa.12760.02404, %bb.ce ] ; 8 uses
  %.sroa.18.12373 = phi ptr [ %.sroa.18.3, %._crit_edge2364 ], [ %.sroa.18.02403, %bb.ce ] ; 10 uses
  %.sroa.0729.12372 = phi ptr [ %.sroa.0729.2.lcssa, %._crit_edge2364 ], [ %.sroa.0729.02402, %bb.ce ] ; 11 uses
  %.sroa.19.12371 = phi ptr [ %.sroa.19.2.lcssa, %._crit_edge2364 ], [ %.sroa.19.02401, %bb.ce ] ; 2 uses
  %.sroa.36.12370 = phi ptr [ %.sroa.36.2.lcssa, %._crit_edge2364 ], [ %.sroa.36.02400, %bb.ce ] ; 11 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.22432383, i64 76
  %i.xj = load i32, ptr %i.xi, align 1
  %i.xk = getelementptr inbounds nuw i8, ptr %.22432383, i64 72 ; 4 uses
  %i.xl = load i32, ptr %i.xk, align 1
  %i.xm = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Mesh_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.xj, i32 noundef %i.xl)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit unwind label %bb.cu

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit: ; preds = %.lr.ph2386
  %i.xn = getelementptr inbounds nuw i8, ptr %.22432383, i64 84
  %i.xo = load i32, ptr %i.xn, align 1
  %i.xp = getelementptr inbounds nuw i8, ptr %.22432383, i64 80 ; 4 uses
  %i.xq = load i32, ptr %i.xp, align 1
  %i.xr = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIhEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.xo, i32 noundef %i.xq)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit unwind label %bb.cv ; 2 uses

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit
  %i.xs = getelementptr inbounds nuw i8, ptr %.22432383, i64 96
  %i.xt = load i32, ptr %i.xs, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.22432383, i64 92 ; 3 uses
  %i.xv = load i32, ptr %i.xu, align 1
  %i.xw = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIhEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.xt, i32 noundef %i.xv)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448 unwind label %bb.cw

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.xx = getelementptr inbounds nuw i8, ptr %.22432383, i64 88
  %i.xy = load i32, ptr %i.xx, align 1
  %i.xz = load i32, ptr %i.xp, align 1
  %i.ya = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIA3_fEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.xy, i32 noundef %i.xz)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit unwind label %bb.cx

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.yb = getelementptr inbounds nuw i8, ptr %.22432383, i64 100
  %i.yc = load i32, ptr %i.yb, align 1
  %i.yd = load i32, ptr %i.xu, align 1
  %i.ye = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIA3_fEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.yc, i32 noundef %i.yd)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451 unwind label %.loopexit842

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451: ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit
  %i.yf = load i32, ptr %i.xp, align 1            ; 2 uses
  %i.yg = sext i32 %i.yf to i64                   ; 4 uses
  %i.yh = ptrtoint ptr %.sroa.12772.12377 to i64  ; 2 uses
  %i.yi = ptrtoint ptr %.sroa.0765.12378 to i64   ; 2 uses
  %i.yj = sub i64 %i.yh, %i.yi                    ; 2 uses
  %i.yk = sdiv exact i64 %i.yj, 12                ; 7 uses
  %i.yl = icmp ult i64 %i.yk, %i.yg
  br i1 %i.yl, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.ym = sub nuw nsw i64 %i.yg, %i.yk            ; 5 uses
  %i.yn = ptrtoint ptr %.sroa.18775.12376 to i64  ; 2 uses
  %i.yo = sub i64 %i.yn, %i.yh
  %i.yp = sdiv exact i64 %i.yo, 12                ; 2 uses
  %i.yq = icmp ult i64 %i.yk, 768614336404564651
  call void @llvm.assume(i1 %i.yq)
  %i.yr = sub nuw nsw i64 768614336404564650, %i.yk
  %i.ys = icmp ule i64 %i.yp, %i.yr
  call void @llvm.assume(i1 %i.ys)
  %.not28.i = icmp ult i64 %i.yp, %i.ym
  br i1 %.not28.i, label %bb.cj, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.ci
  %i.yt = mul nuw nsw i64 %i.ym, 12               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12772.12377, i8 0, i64 %i.yt, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.12772.12377, i64 %i.yt
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cj:                                            ; preds = %bb.ci
  %i.yu = icmp slt i32 %i.yf, 0
  br i1 %i.yu, label %bb.ck, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc639 unwind label %.loopexit.split-lp843

.noexc639:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cj
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.yk, i64 %i.ym)
  %i.yv = add nuw nsw i64 %.sroa.speculated.i.i, %i.yk
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yv, i64 768614336404564650) ; 2 uses
  %i.yx = mul nuw nsw i64 %i.yw, 12
  %i.yy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #26
          to label %.noexc640 unwind label %.loopexit842 ; 4 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yj ; 2 uses
  %i.za = mul nuw nsw i64 %i.ym, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yz, i8 0, i64 %i.za, i1 false)
  %.not10.i.i.i.i635 = icmp eq ptr %.sroa.0765.12378, %.sroa.12772.12377
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc640, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.zc, %.lr.ph.i.i.i.i636 ], [ %i.yy, %.noexc640 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.zb, %.lr.ph.i.i.i.i636 ], [ %.sroa.0765.12378, %.noexc640 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i637, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !194
  %i.zb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 12
  %.not.i.i.i.i638 = icmp eq ptr %i.zb, %.sroa.12772.12377
  br i1 %.not.i.i.i.i638, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636, !llvm.loop !198

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i636, %.noexc640
  %.not.i36.i = icmp eq ptr %.sroa.0765.12378, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zd = sub i64 %i.yn, %i.yi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0765.12378, i64 noundef %i.zd) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.cl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ze = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %i.ym
  %i.zf = getelementptr inbounds nuw [12 x i8], ptr %i.yy, i64 %i.yw
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cm:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.zg = icmp ugt i64 %i.yk, %i.yg
  br i1 %i.zg, label %bb.cn, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cn:                                            ; preds = %bb.cm
  %i.zh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.12378, i64 %i.yg ; 2 uses
  %.not.i.i452 = icmp eq ptr %.sroa.12772.12377, %i.zh
  %spec.select793 = select i1 %.not.i.i452, ptr %.sroa.12772.12377, ptr %i.zh
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.cn, %bb.cm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i
  %.sroa.18775.4 = phi ptr [ %.sroa.18775.12376, %bb.cm ], [ %.sroa.18775.12376, %bb.cn ], [ %.sroa.18775.12376, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.zf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 28 uses
  %.sroa.12772.2 = phi ptr [ %.sroa.12772.12377, %bb.cm ], [ %spec.select793, %bb.cn ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.ze, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 4 uses
  %.sroa.0765.4 = phi ptr [ %.sroa.0765.12378, %bb.cm ], [ %.sroa.0765.12378, %bb.cn ], [ %.sroa.0765.12378, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.yy, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 32 uses
  %i.zi = load i32, ptr %i.xu, align 1            ; 2 uses
  %i.zj = sext i32 %i.zi to i64                   ; 4 uses
  %i.zk = ptrtoint ptr %.sroa.12760.12374 to i64  ; 2 uses
  %i.zl = ptrtoint ptr %.sroa.0753.12375 to i64   ; 2 uses
  %i.zm = sub i64 %i.zk, %i.zl                    ; 2 uses
  %i.zn = sdiv exact i64 %i.zm, 12                ; 7 uses
  %i.zo = icmp ult i64 %i.zn, %i.zj
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %lpad.loopexit846 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp843:                            ; preds = %bb.ck, %bb.cq
  %.sroa.18775.2.ph844 = phi ptr [ %.sroa.18775.12376, %bb.ck ], [ %.sroa.18775.4, %bb.cq ]
  %.sroa.0765.2.ph845 = phi ptr [ %.sroa.0765.12378, %bb.ck ], [ %.sroa.0765.4, %bb.cq ]
  %lpad.loopexit.split-lp847 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2299:                                       ; preds = %.lr.ph2299.preheader, %.lr.ph2299
  %.03082298 = phi i64 [ %i.act, %.lr.ph2299 ], [ 0, %.lr.ph2299.preheader ] ; 4 uses
  %i.aax = getelementptr inbounds nuw [12 x i8], ptr %i.ya, i64 %.03082298 ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.xr, i64 %.03082298
  %i.aaz = load i8, ptr %i.aay, align 1
  %i.aba = zext i8 %i.aaz to i64
  %i.abb = load ptr, ptr %i.va, align 8
  %i.abc = getelementptr inbounds nuw [160 x i8], ptr %i.abb, i64 %i.aba ; 12 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = load float, ptr %i.aax, align 4        ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abg = load float, ptr %i.abf, align 4        ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abi = load float, ptr %i.abh, align 4        ; 3 uses
  %i.abj = load float, ptr %i.abd, align 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abc, i64 12
  %i.abl = load float, ptr %i.abk, align 4
  %i.abm = fmul float %i.abg, %i.abl
  %i.abn = call float @llvm.fmuladd.f32(float %i.abj, float %i.abe, float %i.abm)
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abp = load float, ptr %i.abo, align 4
  %i.abq = call float @llvm.fmuladd.f32(float %i.abp, float %i.abi, float %i.abn)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abc, i64 20
  %i.abs = load float, ptr %i.abr, align 4
  %i.abt = fadd float %i.abs, %i.abq
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.abt, i64 0
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  %i.abv = load float, ptr %i.abu, align 4
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abc, i64 28
  %i.abx = load float, ptr %i.abw, align 4
  %i.aby = fmul float %i.abg, %i.abx
  %i.abz = call float @llvm.fmuladd.f32(float %i.abv, float %i.abe, float %i.aby)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.acb = load float, ptr %i.aca, align 4
  %i.acc = call float @llvm.fmuladd.f32(float %i.acb, float %i.abi, float %i.abz)
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abc, i64 36
  %i.ace = load float, ptr %i.acd, align 4
  %i.acf = fadd float %i.ace, %i.acc
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.acf, i64 1
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abc, i64 40
  %i.ach = load float, ptr %i.acg, align 4
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abc, i64 44
  %i.acj = load float, ptr %i.aci, align 4
  %i.ack = fmul float %i.abg, %i.acj
  %i.acl = call float @llvm.fmuladd.f32(float %i.ach, float %i.abe, float %i.ack)
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abc, i64 48
  %i.acn = load float, ptr %i.acm, align 4
  %i.aco = call float @llvm.fmuladd.f32(float %i.acn, float %i.abi, float %i.acl)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abc, i64 52
  %i.acq = load float, ptr %i.acp, align 4
  %i.acr = fadd float %i.acq, %i.aco
  %i.acs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0765.4, i64 %.03082298 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.acs, align 4
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store float %i.acr, ptr %.sroa.4128.0..sroa_idx, align 4
  %i.act = add nuw i64 %.03082298, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.act, %i.aao
  br i1 %exitcond.not, label %.preheader841, label %.lr.ph2299, !llvm.loop !203

._crit_edge2302:                                  ; preds = %bb.cy, %.preheader841
  %i.acu = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.da unwind label %bb.dd     ; 6 uses

.lr.ph2301:                                       ; preds = %.lr.ph2301.preheader, %bb.cy
  %.03042300 = phi i64 [ %i.aet, %bb.cy ], [ 0, %.lr.ph2301.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.acv = getelementptr inbounds nuw i8, ptr %i.xw, i64 %.03042300
  %i.acw = load i8, ptr %i.acv, align 1
  %i.acx = zext i8 %i.acw to i64
  %i.acy = load ptr, ptr %i.va, align 8
  %i.acz = getelementptr inbounds nuw [160 x i8], ptr %i.acy, i64 %i.acx
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %i.ada, i64 64, i1 false)
  %i.adb = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %28)
          to label %bb.cy unwind label %bb.cz     ; 15 uses

bb.cy:                                            ; preds = %.lr.ph2301
  %i.adc = getelementptr inbounds nuw [12 x i8], ptr %i.ye, i64 %.03042300 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adb, i64 16 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 4 ; 2 uses
  %i.adf = load float, ptr %i.add, align 4        ; 2 uses
  %i.adg = load float, ptr %i.ade, align 4        ; 2 uses
  store float %i.adg, ptr %i.add, align 4
  store float %i.adf, ptr %i.ade, align 4
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 32 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adb, i64 8 ; 2 uses
  %i.adj = load float, ptr %i.adh, align 4        ; 2 uses
  %i.adk = load float, ptr %i.adi, align 4        ; 2 uses
  store float %i.adk, ptr %i.adh, align 4
  store float %i.adj, ptr %i.adi, align 4
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adb, i64 36 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adb, i64 24 ; 2 uses
  %i.adn = load float, ptr %i.adl, align 4        ; 2 uses
  %i.ado = load float, ptr %i.adm, align 4        ; 2 uses
  store float %i.ado, ptr %i.adl, align 4
  store float %i.adn, ptr %i.adm, align 4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adb, i64 48 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adb, i64 12 ; 2 uses
  %i.adr = load float, ptr %i.adp, align 4        ; 2 uses
  %i.ads = load float, ptr %i.adq, align 4
  store float %i.ads, ptr %i.adp, align 4
  store float %i.adr, ptr %i.adq, align 4
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adb, i64 52 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adb, i64 28 ; 2 uses
  %i.adv = load float, ptr %i.adt, align 4        ; 2 uses
  %i.adw = load float, ptr %i.adu, align 4
  store float %i.adw, ptr %i.adt, align 4
  store float %i.adv, ptr %i.adu, align 4
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adb, i64 56 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adb, i64 44 ; 2 uses
  %i.adz = load float, ptr %i.adx, align 4        ; 2 uses
  %i.aea = load float, ptr %i.ady, align 4
  store float %i.aea, ptr %i.adx, align 4
  store float %i.adz, ptr %i.ady, align 4
  %.sroa.0715.0.copyload = load float, ptr %i.adb, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 20
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.aeb = load float, ptr %i.adc, align 4        ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  %i.aed = load float, ptr %i.aec, align 4        ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.aef = load float, ptr %i.aee, align 4        ; 3 uses
  %i.aeg = fmul float %i.adf, %i.aed
  %i.aeh = call float @llvm.fmuladd.f32(float %.sroa.0715.0.copyload, float %i.aeb, float %i.aeg)
  %i.aei = call float @llvm.fmuladd.f32(float %i.adj, float %i.aef, float %i.aeh)
  %i.aej = fadd float %i.adr, %i.aei
  %.sroa.0.0.vec.insert.i458 = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.aek = fmul float %.sroa.9.0.copyload, %i.aed
  %i.ael = call float @llvm.fmuladd.f32(float %i.adg, float %i.aeb, float %i.aek)
  %i.aem = call float @llvm.fmuladd.f32(float %i.adn, float %i.aef, float %i.ael)
  %i.aen = fadd float %i.adv, %i.aem
  %.sroa.0.4.vec.insert.i459 = insertelement <2 x float> %.sroa.0.0.vec.insert.i458, float %i.aen, i64 1
  %i.aeo = fmul float %i.ado, %i.aed
  %i.aep = call float @llvm.fmuladd.f32(float %i.adk, float %i.aeb, float %i.aeo)
  %i.aeq = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.aef, float %i.aep)
  %i.aer = fadd float %i.adz, %i.aeq
  %i.aes = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0753.3, i64 %.03042300 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i459, ptr %i.aes, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  store float %i.aer, ptr %.sroa.4.0..sroa_idx, align 4
  %i.aet = add nuw i64 %.03042300, 1              ; 2 uses
  %exitcond3390.not = icmp eq i64 %i.aet, %i.aas
  br i1 %exitcond3390.not, label %._crit_edge2302, label %.lr.ph2301, !llvm.loop !204

bb.cz:                                            ; preds = %.lr.ph2301
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.da:                                            ; preds = %._crit_edge2302
  %i.aev = zext i32 %.32972382 to i64
  %i.aew = load ptr, ptr %18, align 8
  %i.aex = getelementptr inbounds nuw [32 x i8], ptr %i.aew, i64 %i.aev
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %i.aex)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  store ptr %i.acu, ptr %.03062380, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.acu, i64 1096
  store ptr %i.wb, ptr %i.aey, align 8
  %i.aez = load i32, ptr %i.xk, align 1           ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.acu, i64 1120
  store i32 %i.aez, ptr %i.afa, align 8
  %i.afb = zext i32 %i.aez to i64
  %i.afc = shl nuw nsw i64 %i.afb, 2
  %i.afd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afc) #26
          to label %bb.dc unwind label %bb.dd     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.afe = getelementptr inbounds nuw i8, ptr %i.acu, i64 1128
  store ptr %i.afd, ptr %i.afe, align 8
  %i.aff = load i32, ptr %i.xk, align 1
  %i.afg = icmp sgt i32 %i.aff, 0
  br i1 %i.afg, label %.lr.ph2363, label %._crit_edge2364

._crit_edge2364:                                  ; preds = %.loopexit828, %bb.dc
  %.sroa.36.2.lcssa = phi ptr [ %.sroa.36.12370, %bb.dc ], [ %.sroa.36.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.12371, %bb.dc ], [ %.sroa.19.3.lcssa, %.loopexit828 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12372, %bb.dc ], [ %.sroa.0729.3.lcssa, %.loopexit828 ] ; 2 uses
  %.2302.lcssa = phi i32 [ %.13012381, %bb.dc ], [ %i.bbg, %.loopexit828 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12352384, %bb.dc ], [ %.3.lcssa, %.loopexit828 ] ; 2 uses
  %i.afh = add nuw nsw i32 %.03072379, 1          ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.22432383, i64 112
  %i.afj = getelementptr inbounds nuw i8, ptr %.03062380, i64 8
  %i.afk = add i32 %.32972382, 1                  ; 2 uses
  %i.afl = load i32, ptr %i.vy, align 1
  %i.afm = icmp slt i32 %i.afh, %i.afl
  br i1 %i.afm, label %.lr.ph2386, label %._crit_edge2387, !llvm.loop !205

bb.dd:                                            ; preds = %bb.db, %._crit_edge2302
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.de:                                            ; preds = %bb.da
  %i.afo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef 1144) #24
  br label %.body661

.lr.ph2363:                                       ; preds = %bb.dc, %.loopexit828
  %.22361 = phi i32 [ %.3.lcssa, %.loopexit828 ], [ %.12352384, %bb.dc ] ; 2 uses
  %.02462360 = phi ptr [ %i.bbf, %.loopexit828 ], [ %i.xm, %bb.dc ] ; 3 uses
  %.02922359 = phi i32 [ %i.bbe, %.loopexit828 ], [ 0, %bb.dc ]
  %.02932358 = phi ptr [ %i.bbh, %.loopexit828 ], [ %i.afd, %bb.dc ] ; 2 uses
  %.23022357 = phi i32 [ %i.bbg, %.loopexit828 ], [ %.13012381, %bb.dc ] ; 3 uses
  %.sroa.0729.22356 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit828 ], [ %.sroa.0729.12372, %bb.dc ] ; 5 uses
  %.sroa.19.22355 = phi ptr [ %.sroa.19.3.lcssa, %.loopexit828 ], [ %.sroa.19.12371, %bb.dc ] ; 2 uses
  %.sroa.36.22354 = phi ptr [ %.sroa.36.3.lcssa, %.loopexit828 ], [ %.sroa.36.12370, %bb.dc ] ; 3 uses
  store i32 %.23022357, ptr %.02932358, align 4
  %i.afp = load ptr, ptr %i.a, align 8
  %i.afq = getelementptr inbounds nuw i8, ptr %.02462360, i64 4
  %i.afr = load i32, ptr %i.afq, align 1
  %i.afs = getelementptr inbounds nuw i8, ptr %.02462360, i64 8 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 1
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.afu
  %i.afw = load i16, ptr %i.afv, align 2
  %i.afx = sext i16 %i.afw to i64
  %i.afy = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.afx ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 68
  %i.aga = load i32, ptr %i.afz, align 1
  %i.agb = sitofp i32 %i.aga to float
  %i.agc = fdiv nnan float 1.000000e+00, %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afy, i64 72
  %i.age = load i32, ptr %i.agd, align 1
  %i.agf = sitofp i32 %i.age to float
  %i.agg = load ptr, ptr %20, align 8             ; 2 uses
  %i.agh = load ptr, ptr %i.vb, align 8
  %.not.i.i462 = icmp eq ptr %i.agh, %i.agg
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2363
  store ptr %i.agg, ptr %i.vb, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2363, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.agi = load i32, ptr %i.xp, align 1           ; 2 uses
  %.not3624 = icmp eq i32 %i.agi, 0
  br i1 %.not3624, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.agj = sext i32 %i.agi to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.agj)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.di

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.df
  %i.agk = sext i32 %i.afr to i64
  %i.agl = getelementptr inbounds i8, ptr %i.afp, i64 %i.agk ; 2 uses
  %i.agm = load ptr, ptr %22, align 8             ; 2 uses
  %i.agn = load ptr, ptr %i.vc, align 8
  %.not.i.i466 = icmp eq ptr %i.agn, %i.agm
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.agm, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.19.22355, %.sroa.0729.22356
  %spec.select795 = select i1 %.not.i.i467, ptr %.sroa.19.22355, ptr %.sroa.0729.22356 ; 2 uses
  %i.ago = load ptr, ptr %i.uj, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.ago)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.agp = landingpad { ptr, i32 }
          catch ptr null
  %i.agq = extractvalue { ptr, i32 } %i.agp, 0
  call void @__clang_call_terminate(ptr %i.agq) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.uj, align 8
  store ptr %i.ui, ptr %i.uk, align 8
  store ptr %i.ui, ptr %i.ul, align 8
  store i64 0, ptr %i.um, align 8
  %i.agr = load ptr, ptr %i.uo, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.agr)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dh

bb.dh:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.ags = landingpad { ptr, i32 }
          catch ptr null
  %i.agt = extractvalue { ptr, i32 } %i.ags, 0
  call void @__clang_call_terminate(ptr %i.agt) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.uo, align 8
  store ptr %i.un, ptr %i.up, align 8
  store ptr %i.un, ptr %i.uq, align 8
  store i64 0, ptr %i.ur, align 8
  %i.agu = load i16, ptr %i.agl, align 2          ; 2 uses
  %.not3292323 = icmp eq i16 %i.agu, 0
  br i1 %.not3292323, label %._crit_edge2329, label %.lr.ph2328

.lr.ph2328:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit804
  %i.agv = phi i16 [ %i.atq, %.loopexit804 ], [ %i.agu, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1291.lcssa.pn = phi ptr [ %i.aqf, %.loopexit804 ], [ %i.agl, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32327 = phi i32 [ %i.atp, %.loopexit804 ], [ %.22361, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32326 = phi ptr [ %.sroa.0729.7, %.loopexit804 ], [ %.sroa.0729.22356, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.19.32325 = phi ptr [ %.sroa.19.7, %.loopexit804 ], [ %spec.select795, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.sroa.36.32324 = phi ptr [ %.sroa.36.7, %.loopexit804 ], [ %.sroa.36.22354, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.1291.lcssa.pn, i64 2
  %i.agx = icmp slt i16 %i.agv, 0
  %i.agy = call i16 @llvm.abs.i16(i16 %i.agv, i1 false)
  %spec.select = zext i16 %i.agy to i32
  %i.agz = load ptr, ptr %21, align 8             ; 2 uses
  %i.aha = load ptr, ptr %i.vd, align 8
  %.not.i.i468 = icmp eq ptr %i.aha, %i.agz
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2328
  store ptr %i.agz, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2328, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.di:                                            ; preds = %bb.df
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12882306 = phi i32 [ %i.aqe, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12912304 = phi ptr [ %i.aqf, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.agw, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.ahc = load i16, ptr %.12912304, align 1      ; 7 uses
  %i.ahd = sext i16 %i.ahc to i64                 ; 2 uses
  %i.ahe = getelementptr inbounds i8, ptr %i.xr, i64 %i.ahd
  %i.ahf = load i8, ptr %i.ahe, align 1
  %i.ahg = zext i8 %i.ahf to i32                  ; 3 uses
  %i.ahh = load ptr, ptr %20, align 8
  %i.ahi = getelementptr inbounds nuw [10 x i8], ptr %i.ahh, i64 %i.ahd ; 9 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 6 uses
  %i.ahk = load i16, ptr %i.ahj, align 2          ; 2 uses
  %i.ahl = icmp eq i16 %i.ahk, -1
  br i1 %i.ahl, label %bb.dj, label %bb.ds

bb.dj:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470
  store i16 %i.ahc, ptr %i.ahi, align 2
  %i.ahm = getelementptr inbounds nuw i8, ptr %.12912304, i64 2
  %i.ahn = load i16, ptr %i.ahm, align 1
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2
  store i16 %i.ahn, ptr %i.aho, align 2
  %i.ahp = getelementptr inbounds nuw i8, ptr %.12912304, i64 4
  %i.ahq = load i16, ptr %i.ahp, align 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  store i16 %i.ahq, ptr %i.ahr, align 2
  %i.ahs = getelementptr inbounds nuw i8, ptr %.12912304, i64 6
  %i.aht = load i16, ptr %i.ahs, align 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahi, i64 6
  store i16 %i.aht, ptr %i.ahu, align 2
  %i.ahv = load ptr, ptr %i.vc, align 8
  %i.ahw = load ptr, ptr %22, align 8
  %i.ahx = ptrtoint ptr %i.ahv to i64
  %i.ahy = ptrtoint ptr %i.ahw to i64
  %i.ahz = sub i64 %i.ahx, %i.ahy
  %i.aia = lshr exact i64 %i.ahz, 1
  %i.aib = trunc i64 %i.aia to i16
  store i16 %i.aib, ptr %i.ahj, align 2
  %i.aic = load ptr, ptr %i.vc, align 8           ; 3 uses
  %i.aid = load ptr, ptr %i.vg, align 8
  %.not.i471 = icmp eq ptr %i.aic, %i.aid
  br i1 %.not.i471, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aie = load i16, ptr %.12912304, align 2
  store i16 %i.aie, ptr %i.aic, align 2
  %i.aif = load ptr, ptr %i.vc, align 8
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 2
  store ptr %i.aig, ptr %i.vc, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.dl:                                            ; preds = %bb.dj
  %i.aih = load ptr, ptr %22, align 8             ; 4 uses
  %i.aii = ptrtoint ptr %i.aic to i64
  %i.aij = ptrtoint ptr %i.aih to i64
  %i.aik = sub i64 %i.aii, %i.aij                 ; 6 uses
  %i.ail = icmp eq i64 %i.aik, 9223372036854775806
  br i1 %i.ail, label %.invoke, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.dp, %bb.dl, %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp824
end_hunk_1
begin_hunk_2_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
_ZNSt6vectorIsSaIsEE9push_backERKs.exit486:       ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i483, %bb.do
  %i.aju = load i16, ptr %i.ahj, align 2
  %.val = load ptr, ptr %25, align 8
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_0clEis"(ptr %.val, i32 noundef %i.ahg, i16 noundef signext %i.aju)
          to label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 unwind label %.loopexit823

.loopexit823:                                     ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit486, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i478, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i488
  %lpad.loopexit825 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp824:                            ; preds = %.invoke
  %lpad.loopexit.split-lp826 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ds:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470
  %i.ajv = load i16, ptr %i.ahi, align 2
  %i.ajw = icmp eq i16 %i.ajv, %i.ahc
  br i1 %i.ajw, label %bb.dt, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread

bb.dt:                                            ; preds = %bb.ds
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2
  %i.ajy = load i16, ptr %i.ajx, align 2
  %i.ajz = getelementptr inbounds nuw i8, ptr %.12912304, i64 2
  %i.aka = load i16, ptr %i.ajz, align 1
  %i.akb = icmp eq i16 %i.ajy, %i.aka
  br i1 %i.akb, label %bb.du, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread

bb.du:                                            ; preds = %bb.dt
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.akd = load i16, ptr %i.akc, align 2
  %i.ake = getelementptr inbounds nuw i8, ptr %.12912304, i64 4
  %i.akf = load i16, ptr %i.ake, align 1
  %i.akg = icmp eq i16 %i.akd, %i.akf
  br i1 %i.akg, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit: ; preds = %bb.du
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ahi, i64 6
  %i.aki = load i16, ptr %i.akh, align 2
  %i.akj = getelementptr inbounds nuw i8, ptr %.12912304, i64 6
  %i.akk = load i16, ptr %i.akj, align 1
  %i.akl = icmp eq i16 %i.aki, %i.akk
  br i1 %i.akl, label %bb.dv, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread

bb.dv:                                            ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit
  %i.akm = load ptr, ptr %i.vd, align 8           ; 3 uses
  %i.akn = load ptr, ptr %i.vf, align 8
  %.not.i487 = icmp eq ptr %i.akm, %i.akn
  br i1 %.not.i487, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i16 %i.ahk, ptr %i.akm, align 2
  %i.ako = load ptr, ptr %i.vd, align 8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 2
  store ptr %i.akp, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

bb.dx:                                            ; preds = %bb.dv
  %i.akq = load ptr, ptr %21, align 8             ; 4 uses
  %i.akr = ptrtoint ptr %i.akm to i64
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = sub i64 %i.akr, %i.aks                 ; 6 uses
  %i.aku = icmp eq i64 %i.akt, 9223372036854775806
  br i1 %i.aku, label %.invoke, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i488

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i488: ; preds = %bb.dx
  %i.akv = ashr exact i64 %i.akt, 1               ; 3 uses
  %.sroa.speculated.i.i.i489 = call i64 @llvm.umax.i64(i64 %i.akv, i64 1)
  %i.akw = add i64 %.sroa.speculated.i.i.i489, %i.akv ; 2 uses
  %i.akx = icmp ult i64 %i.akw, %i.akv
  %i.aky = call i64 @llvm.umin.i64(i64 %i.akw, i64 4611686018427387903)
  %i.akz = select i1 %i.akx, i64 4611686018427387903, i64 %i.aky ; 3 uses
  %.not.i.i.i490 = icmp ne i64 %i.akz, 0
  call void @llvm.assume(i1 %.not.i.i.i490)
  %i.ala = shl nuw nsw i64 %i.akz, 1
  %i.alb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ala) #26
          to label %.noexc495 unwind label %.loopexit823 ; 4 uses

.noexc495:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i488
  %i.alc = getelementptr inbounds i8, ptr %i.alb, i64 %i.akt ; 2 uses
  %i.ald = load i16, ptr %i.ahj, align 2
  store i16 %i.ald, ptr %i.alc, align 2
  %i.ale = icmp sgt i64 %i.akt, 0
  br i1 %i.ale, label %bb.dy, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i491

bb.dy:                                            ; preds = %.noexc495
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.alb, ptr align 2 %i.akq, i64 %i.akt, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i491

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i491: ; preds = %bb.dy, %.noexc495
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 2
  %.not.i17.i.i492 = icmp eq ptr %i.akq, null
  br i1 %.not.i17.i.i492, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i493, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i491
  call void @_ZdlPvm(ptr noundef nonnull %i.akq, i64 noundef %i.akt) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i493

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i493: ; preds = %bb.dz, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i491
  store ptr %i.alb, ptr %21, align 8
  store ptr %i.alf, ptr %i.vd, align 8
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.alb, i64 %i.akz
  store ptr %i.alg, ptr %i.vf, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread: ; preds = %bb.ds, %bb.dt, %bb.du, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit
  %i.alh = load ptr, ptr %i.uj, align 8           ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.alh, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.alh, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ui, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.alj = load i16, ptr %i.ali, align 2
  %i.alk = icmp slt i16 %i.alj, %i.ahc            ; 3 uses
  %.19.i.i.i = select i1 %i.alk, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.alk, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i497 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i497, label %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.all = icmp eq ptr %.19.i.i.i, %i.ui
  br i1 %i.all, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.alk, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.alm = load i16, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %.not800 = icmp slt i16 %i.ahc, %i.alm
  br i1 %.not800, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i.i498

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit.thread, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_1clERKNS1_7TrivertEi"(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(8) %.12912304, i32 noundef %i.ahg)
          to label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 unwind label %.loopexit823

.lr.ph.i.i.i.i498:                                ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit, %.lr.ph.i.i.i.i498
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i498 ], [ %i.alh, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i498 ], [ %i.ui, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ] ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.alo = load i16, ptr %i.aln, align 2
  %i.alp = icmp slt i16 %i.alo, %i.ahc            ; 3 uses
  %.19.i.i.i.i = select i1 %i.alp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.alp, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i499 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i499, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i498, !llvm.loop !207

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i498
  %i.alq = icmp eq ptr %.19.i.i.i.i, %i.ui
  br i1 %i.alq, label %.critedge.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.alp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.alr = load i16, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.als = icmp slt i16 %i.ahc, %i.alr
  br i1 %i.als, label %.critedge.i, label %bb.eh

.critedge.i:                                      ; preds = %bb.ea, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %23, ptr %1, align 8
  %i.alt = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc660 unwind label %bb.et ; 11 uses

.noexc660:                                        ; preds = %.critedge.i
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 32 ; 3 uses
  %i.alv = load i16, ptr %.12912304, align 2
  store i16 %i.alv, ptr %i.alu, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alt, i64 40 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alt, i64 48 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alt, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alw, i8 0, i64 24, i1 false)
  store ptr %i.alx, ptr %i.aly, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alt, i64 72
  store ptr %i.alx, ptr %i.alz, align 8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alt, i64 80
  store i64 0, ptr %i.ama, align 8
  store ptr %i.alt, ptr %i.ve, align 8
  %i.amb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr %.19.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.alu)
          to label %bb.eb unwind label %bb.ee     ; 2 uses

bb.eb:                                            ; preds = %.noexc660
  %i.amc = extractvalue { ptr, ptr } %i.amb, 0    ; 2 uses
  %i.amd = extractvalue { ptr, ptr } %i.amb, 1    ; 4 uses
  %.not.i658 = icmp eq ptr %i.amd, null
  br i1 %.not.i658, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not.i.i.i659 = icmp ne ptr %i.amc, null
  %i.ame = icmp eq ptr %i.amd, %i.ui
  %or.cond.i.i.i = or i1 %.not.i.i.i659, %i.ame
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 32
  %i.amg = load i16, ptr %i.alu, align 2
  %i.amh = load i16, ptr %i.amf, align 2
  %i.ami = icmp slt i16 %i.amg, %i.amh
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ed, %bb.ec
  %i.amj = phi i1 [ %i.ami, %bb.ed ], [ true, %bb.ec ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.amj, ptr noundef nonnull %i.alt, ptr noundef nonnull %i.amd, ptr noundef nonnull align 8 dereferenceable(32) %i.ui) #23
  %i.amk = load i64, ptr %i.um, align 8
  %i.aml = add i64 %i.amk, 1
  store i64 %i.aml, ptr %i.um, align 8
  br label %.noexc500

bb.ee:                                            ; preds = %.noexc660
  %i.amm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.body661

bb.ef:                                            ; preds = %bb.eb
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alt, i64 56
  %i.amo = load ptr, ptr %i.amn, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.alw, ptr noundef %i.amo)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.amp = landingpad { ptr, i32 }
          catch ptr null
  %i.amq = extractvalue { ptr, i32 } %i.amp, 0
  call void @__clang_call_terminate(ptr %i.amq) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i: ; preds = %bb.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.alt, i64 noundef 88) #24
  br label %.noexc500

.noexc500:                                        ; preds = %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.alt, %.thread.i ], [ %i.amc, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.eh

bb.eh:                                            ; preds = %.noexc500, %bb.ea
  %.sroa.06.0.i = phi ptr [ %.sroa.0.010.i, %.noexc500 ], [ %.19.i.i.i.i, %bb.ea ]
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.ams = load ptr, ptr %i.amr, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %.12912304, i64 2
  %i.amu = getelementptr inbounds nuw i8, ptr %.12912304, i64 4
  %i.amv = getelementptr inbounds nuw i8, ptr %.12912304, i64 6
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread
  %.sroa.0708.02303 = phi ptr [ %i.ams, %bb.eh ], [ %i.apd, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread ] ; 3 uses
  %i.amw = load ptr, ptr %i.uj, align 8           ; 2 uses
  %.not10.i.i.i.i501 = icmp eq ptr %i.amw, null
  br i1 %.not10.i.i.i.i501, label %.critedge.i512, label %.lr.ph.i.i.i.i502

.lr.ph.i.i.i.i502:                                ; preds = %bb.ei
  %i.amx = load i16, ptr %.12912304, align 2      ; 2 uses
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ej, %.lr.ph.i.i.i.i502
  %.012.i.i.i.i503 = phi ptr [ %i.amw, %.lr.ph.i.i.i.i502 ], [ %.1.i.i.i.i508, %bb.ej ] ; 4 uses
  %.0811.i.i.i.i504 = phi ptr [ %i.ui, %.lr.ph.i.i.i.i502 ], [ %.19.i.i.i.i505, %bb.ej ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 32
  %i.amz = load i16, ptr %i.amy, align 2
  %i.ana = icmp slt i16 %i.amz, %i.amx            ; 3 uses
  %.19.i.i.i.i505 = select i1 %i.ana, ptr %.0811.i.i.i.i504, ptr %.012.i.i.i.i503 ; 5 uses
  %.1.in.v.i.i.i.i506 = select i1 %i.ana, i64 24, i64 16
  %.1.in.i.i.i.i507 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i503, i64 %.1.in.v.i.i.i.i506
  %.1.i.i.i.i508 = load ptr, ptr %.1.in.i.i.i.i507, align 8 ; 2 uses
  %.not.i.i.i.i509 = icmp eq ptr %.1.i.i.i.i508, null
  br i1 %.not.i.i.i.i509, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510, label %bb.ej, !llvm.loop !207

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510: ; preds = %bb.ej
  %i.anb = icmp eq ptr %.19.i.i.i.i505, %i.ui
  br i1 %i.anb, label %.critedge.i512, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510
  %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ana, ptr %.0811.i.i.i.i504, ptr %.012.i.i.i.i503
  %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.anc = load i16, ptr %.19.i.i.i.i505.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.and = icmp slt i16 %i.amx, %i.anc
  br i1 %i.and, label %.critedge.i512, label %bb.es

.critedge.i512:                                   ; preds = %bb.ek, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510, %bb.ei
  %.08.lcssa.i.i.i11.i513 = phi ptr [ %.19.i.i.i.i505, %bb.ek ], [ %.19.i.i.i.i505, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i510 ], [ %i.ui, %bb.ei ]
  %i.ane = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26
          to label %.noexc669 unwind label %bb.eu ; 12 uses

.noexc669:                                        ; preds = %.critedge.i512
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 32 ; 3 uses
  %i.ang = load i16, ptr %.12912304, align 2
  store i16 %i.ang, ptr %i.anf, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 40 ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ane, i64 48 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ane, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anh, i8 0, i64 24, i1 false)
  store ptr %i.ani, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ane, i64 72
  store ptr %i.ani, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ane, i64 80
  store i64 0, ptr %i.anl, align 8
  %i.anm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr %.08.lcssa.i.i.i11.i513, ptr noundef nonnull align 2 dereferenceable(2) %i.anf)
          to label %bb.el unwind label %bb.eo     ; 2 uses

bb.el:                                            ; preds = %.noexc669
  %i.ann = extractvalue { ptr, ptr } %i.anm, 0    ; 2 uses
  %i.ano = extractvalue { ptr, ptr } %i.anm, 1    ; 4 uses
  %.not.i663 = icmp eq ptr %i.ano, null
  br i1 %.not.i663, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.not.i.i.i664 = icmp ne ptr %i.ann, null
  %i.anp = icmp eq ptr %i.ano, %i.ui
  %or.cond.i.i.i665 = or i1 %.not.i.i.i664, %i.anp
  br i1 %or.cond.i.i.i665, label %.thread.i666, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 32
  %i.anr = load i16, ptr %i.anf, align 2
  %i.ans = load i16, ptr %i.anq, align 2
  %i.ant = icmp slt i16 %i.anr, %i.ans
  br label %.thread.i666

.thread.i666:                                     ; preds = %bb.en, %bb.em
  %i.anu = phi i1 [ %i.ant, %bb.en ], [ true, %bb.em ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.anu, ptr noundef nonnull %i.ane, ptr noundef nonnull %i.ano, ptr noundef nonnull align 8 dereferenceable(32) %i.ui) #23
  %i.anv = load i64, ptr %i.um, align 8
  %i.anw = add i64 %i.anv, 1
  store i64 %i.anw, ptr %i.um, align 8
  br label %bb.es

bb.eo:                                            ; preds = %.noexc669
  %i.anx = landingpad { ptr, i32 }
          cleanup
  %i.any = getelementptr inbounds nuw i8, ptr %i.ane, i64 56
  %i.anz = load ptr, ptr %i.any, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.anh, ptr noundef %i.anz)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aoa = landingpad { ptr, i32 }
          catch ptr null
  %i.aob = extractvalue { ptr, i32 } %i.aoa, 0
  call void @__clang_call_terminate(ptr %i.aob) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef 88) #24
  br label %.body661

bb.eq:                                            ; preds = %bb.el
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ane, i64 56
  %i.aod = load ptr, ptr %i.aoc, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.anh, ptr noundef %i.aod)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aoe = landingpad { ptr, i32 }
          catch ptr null
  %i.aof = extractvalue { ptr, i32 } %i.aoe, 0
  call void @__clang_call_terminate(ptr %i.aof) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668: ; preds = %bb.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.ane, i64 noundef 88) #24
  br label %bb.es

bb.es:                                            ; preds = %bb.ek, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668, %.thread.i666
  %.sroa.06.0.i511 = phi ptr [ %.19.i.i.i.i505, %bb.ek ], [ %i.ane, %.thread.i666 ], [ %i.ann, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i668 ]
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i511, i64 48
  %.not801 = icmp eq ptr %.sroa.0708.02303, %i.aog
  br i1 %.not801, label %bb.ey, label %bb.ev

bb.et:                                            ; preds = %.critedge.i
  %i.aoh = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.eu:                                            ; preds = %.critedge.i512
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.ev:                                            ; preds = %bb.es
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.0708.02303, i64 32
  %i.aok = load i16, ptr %i.aoj, align 2          ; 2 uses
  %i.aol = sext i16 %i.aok to i64
  %i.aom = load ptr, ptr %20, align 8             ; 2 uses
  %i.aon = getelementptr inbounds nuw [10 x i8], ptr %i.aom, i64 %i.aol ; 4 uses
  %i.aoo = load i16, ptr %i.aon, align 2
  %i.aop = load i16, ptr %.12912304, align 1
  %i.aoq = icmp eq i16 %i.aoo, %i.aop
  br i1 %i.aoq, label %bb.ew, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

bb.ew:                                            ; preds = %bb.ev
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aon, i64 2
  %i.aos = load i16, ptr %i.aor, align 2
  %i.aot = load i16, ptr %i.amt, align 1
  %i.aou = icmp eq i16 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ex, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

bb.ex:                                            ; preds = %bb.ew
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  %i.aow = load i16, ptr %i.aov, align 2
  %i.aox = load i16, ptr %i.amu, align 1
  %i.aoy = icmp eq i16 %i.aow, %i.aox
  br i1 %i.aoy, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516, label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516: ; preds = %bb.ex
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aon, i64 6
  %i.apa = load i16, ptr %i.aoz, align 2
  %i.apb = load i16, ptr %i.amv, align 1
  %i.apc = icmp eq i16 %i.apa, %i.apb
  %spec.select4601 = select i1 %i.apc, i16 %i.aok, i16 -1
  br label %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread

_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread: ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516, %bb.ev, %bb.ew, %bb.ex
  %.1248 = phi i16 [ -1, %bb.ev ], [ %spec.select4601, %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516 ], [ -1, %bb.ex ], [ -1, %bb.ew ] ; 2 uses
  %i.apd = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0708.02303) #28
  %i.ape = icmp eq i16 %.1248, -1
  br i1 %i.ape, label %bb.ei, label %.critedge, !llvm.loop !208

bb.ey:                                            ; preds = %bb.es
  invoke fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_1clERKNS1_7TrivertEi"(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(8) %.12912304, i32 noundef %i.ahg)
          to label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 unwind label %.loopexit818

.loopexit818:                                     ; preds = %bb.ey, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518
  %lpad.loopexit820 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp819:                            ; preds = %bb.fb
  %lpad.loopexit.split-lp821 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.critedge:                                        ; preds = %_ZNK6Assimp3MDL8HalfLife14HL1MeshTriverteqERKNS1_7TrivertE.exit516.thread
  %i.apf = sext i16 %.1248 to i64
  %i.apg = getelementptr inbounds nuw [10 x i8], ptr %i.aom, i64 %i.apf
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8 ; 2 uses
  %i.api = load ptr, ptr %i.vd, align 8           ; 3 uses
  %i.apj = load ptr, ptr %i.vf, align 8
  %.not.i517 = icmp eq ptr %i.api, %i.apj
  br i1 %.not.i517, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.critedge
  %i.apk = load i16, ptr %i.aph, align 2
  store i16 %i.apk, ptr %i.api, align 2
  %i.apl = load ptr, ptr %i.vd, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 2
  store ptr %i.apm, ptr %i.vd, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

bb.fa:                                            ; preds = %.critedge
  %i.apn = load ptr, ptr %21, align 8             ; 4 uses
  %i.apo = ptrtoint ptr %i.api to i64
  %i.app = ptrtoint ptr %i.apn to i64
  %i.apq = sub i64 %i.apo, %i.app                 ; 6 uses
  %i.apr = icmp eq i64 %i.apq, 9223372036854775806
  br i1 %i.apr, label %bb.fb, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc524 unwind label %.loopexit.split-lp819

.noexc524:                                        ; preds = %bb.fb
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518: ; preds = %bb.fa
  %i.aps = ashr exact i64 %i.apq, 1               ; 3 uses
  %.sroa.speculated.i.i.i519 = call i64 @llvm.umax.i64(i64 %i.aps, i64 1)
  %i.apt = add i64 %.sroa.speculated.i.i.i519, %i.aps ; 2 uses
  %i.apu = icmp ult i64 %i.apt, %i.aps
  %i.apv = call i64 @llvm.umin.i64(i64 %i.apt, i64 4611686018427387903)
  %i.apw = select i1 %i.apu, i64 4611686018427387903, i64 %i.apv ; 3 uses
  %.not.i.i.i520 = icmp ne i64 %i.apw, 0
  call void @llvm.assume(i1 %.not.i.i.i520)
  %i.apx = shl nuw nsw i64 %i.apw, 1
  %i.apy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apx) #26
          to label %.noexc525 unwind label %.loopexit818 ; 4 uses

.noexc525:                                        ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i518
  %i.apz = getelementptr inbounds i8, ptr %i.apy, i64 %i.apq ; 2 uses
  %i.aqa = load i16, ptr %i.aph, align 2
  store i16 %i.aqa, ptr %i.apz, align 2
  %i.aqb = icmp sgt i64 %i.apq, 0
  br i1 %i.aqb, label %bb.fc, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521

bb.fc:                                            ; preds = %.noexc525
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.apy, ptr align 2 %i.apn, i64 %i.apq, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521: ; preds = %bb.fc, %.noexc525
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 2
  %.not.i17.i.i522 = icmp eq ptr %i.apn, null
  br i1 %.not.i17.i.i522, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521
  call void @_ZdlPvm(ptr noundef nonnull %i.apn, i64 noundef %i.apq) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523: ; preds = %bb.fd, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i521
  store ptr %i.apy, ptr %21, align 8
  store ptr %i.aqc, ptr %i.vd, align 8
  %i.aqd = getelementptr inbounds nuw [2 x i8], ptr %i.apy, i64 %i.apw
  store ptr %i.aqd, ptr %i.vf, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496

_ZNSt6vectorIsSaIsEE9push_backERKs.exit496:       ; preds = %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i523, %bb.ez, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i493, %bb.dw, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit486, %bb.ey, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  %i.aqe = add nsw i32 %.12882306, -1
  %i.aqf = getelementptr inbounds nuw i8, ptr %.12912304, i64 8 ; 3 uses
  %i.aqg = icmp sgt i32 %.12882306, 1
  br i1 %i.aqg, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470, label %bb.fe, !llvm.loop !209

bb.fe:                                            ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %i.aqh = load ptr, ptr %i.vd, align 8
  %i.aqi = load ptr, ptr %21, align 8
  %i.aqj = ptrtoint ptr %i.aqh to i64
  %i.aqk = ptrtoint ptr %i.aqi to i64
  %i.aql = sub i64 %i.aqj, %i.aqk
  %i.aqm = lshr exact i64 %i.aql, 1
  %i.aqn = trunc i64 %i.aqm to i32
  %i.aqo = add i32 %i.aqn, -2                     ; 6 uses
  %i.aqp = sext i32 %i.aqo to i64                 ; 3 uses
  %i.aqq = icmp slt i32 %i.aqo, 0
  br i1 %i.aqq, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #25
          to label %.noexc527 unwind label %.loopexit.split-lp837

.noexc527:                                        ; preds = %bb.ff
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %i.aqr = ptrtoint ptr %.sroa.36.32324 to i64
  %i.aqs = ptrtoint ptr %.sroa.0729.32326 to i64  ; 2 uses
  %i.aqt = sub i64 %i.aqr, %i.aqs                 ; 2 uses
  %i.aqu = sdiv exact i64 %i.aqt, 6
  %i.aqv = icmp ult i64 %i.aqu, %i.aqp
  br i1 %i.aqv, label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.fg
  %i.aqw = ptrtoint ptr %.sroa.19.32325 to i64
  %i.aqx = sub i64 %i.aqw, %i.aqs                 ; 3 uses
  %i.aqy = mul nuw nsw i64 %i.aqp, 6
  %i.aqz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqy) #26
          to label %.noexc528 unwind label %.loopexit836 ; 4 uses

.noexc528:                                        ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i
  %i.ara = icmp sgt i64 %i.aqx, 0
  br i1 %i.ara, label %bb.fh, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.fh:                                            ; preds = %.noexc528
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aqz, ptr align 2 %.sroa.0729.32326, i64 %i.aqx, i1 false)
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.fh, %.noexc528
  %.not.i8.i = icmp eq ptr %.sroa.0729.32326, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0729.32326, i64 noundef %i.aqt) #24
  br label %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.fi, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.aqx
  %i.arc = getelementptr inbounds nuw [6 x i8], ptr %i.aqz, i64 %i.aqp
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.fg
  %.sroa.36.9 = phi ptr [ %i.arc, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.36.32324, %bb.fg ] ; 4 uses
  %.sroa.19.9 = phi ptr [ %i.arb, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.19.32325, %bb.fg ] ; 4 uses
  %.sroa.0729.9 = phi ptr [ %i.aqz, %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %.sroa.0729.32326, %bb.fg ] ; 4 uses
  %.not2428 = icmp eq i32 %i.aqo, 0               ; 2 uses
  br i1 %i.agx, label %.preheader, label %.preheader806

.preheader806:                                    ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit
  br i1 %.not2428, label %.loopexit804, label %.lr.ph2311.preheader

.lr.ph2311.preheader:                             ; preds = %.preheader806
  %wide.trip.count = zext nneg i32 %i.aqo to i64
  br label %.lr.ph2311

.preheader:                                       ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE7reserveEm.exit
  br i1 %.not2428, label %.loopexit804, label %.lr.ph2319.preheader

.lr.ph2319.preheader:                             ; preds = %.preheader
  %wide.trip.count3399 = zext nneg i32 %i.aqo to i64
  br label %.lr.ph2319

.loopexit836:                                     ; preds = %_ZNSt12_Vector_baseIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE11_M_allocateEm.exit.i
  %lpad.loopexit838 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp837:                            ; preds = %bb.ff
  %lpad.loopexit.split-lp839 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2319:                                       ; preds = %.lr.ph2319.preheader, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit
  %indvars.iv3395 = phi i64 [ 0, %.lr.ph2319.preheader ], [ %indvars.iv.next3396, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.0729.42317 = phi ptr [ %.sroa.0729.9, %.lr.ph2319.preheader ], [ %.sroa.0729.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 7 uses
  %.sroa.19.42316 = phi ptr [ %.sroa.19.9, %.lr.ph2319.preheader ], [ %.sroa.19.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.36.42315 = phi ptr [ %.sroa.36.9, %.lr.ph2319.preheader ], [ %.sroa.36.10, %_ZNSt6vectorIN6Assimp3MDL8HalfLife11HL1MeshFaceESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.ard = load ptr, ptr %21, align 8             ; 3 uses
  %i.are = load i16, ptr %i.ard, align 2          ; 2 uses
  %indvars.iv.next3396 = add nuw nsw i64 %indvars.iv3395, 1 ; 3 uses
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv.next3396
  %i.arg = load i16, ptr %i.arf, align 2          ; 2 uses
  %i.arh = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv3395
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 4
  %i.arj = load i16, ptr %i.ari, align 2          ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15read_animationsEv:bb.a
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = load ptr, ptr %0, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = add i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.cj, align 8
  %i.cm = load i32, ptr %i.cg, align 4
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %.0141150) ; 3 uses
  %i.cn = add nuw nsw i32 %.0105151, 1            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.095152, i64 176
  %i.cp = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 164
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp slt i32 %i.cn, %i.cr
  br i1 %i.cs, label %.lr.ph154, label %._crit_edge155, !llvm.loop !225

bb.j:                                             ; preds = %.lr.ph177, %._crit_edge172
  %indvars.iv193 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next194, %._crit_edge172 ] ; 2 uses
  %i.ct = phi ptr [ %i.by, %.lr.ph177 ], [ %i.ek, %._crit_edge172 ]
  %.1176 = phi ptr [ %i.bq, %.lr.ph177 ], [ %i.el, %._crit_edge172 ] ; 9 uses
  %.0103174 = phi ptr [ %i.bw, %.lr.ph177 ], [ %.1104.lcssa, %._crit_edge172 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.1176, i64 156 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = mul i32 %i.cx, 104
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_17SequenceGroup_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.cz, i32 noundef 1)
  %i.db = load i32, ptr %i.cw, align 1            ; 5 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 100
  %i.de = load i32, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.1176, i64 124
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = add nsw i32 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.1176, i64 120
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = load ptr, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 140
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = mul nsw i32 %i.dm, %i.dj
  %i.do = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_19AnimValueOffset_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.dh, i32 noundef %i.dn)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %.1176, i64 124
  %i.dq = load i32, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.1176, i64 120
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 140
  %i.dv = load i32, ptr %i.du, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.db, ptr %i.a, align 4
  %i.dw = icmp sgt i32 %i.db, -1
  %i.dx = load i32, ptr %i.cc, align 8
  %.not.i = icmp slt i32 %i.db, %i.dx
  %or.cond.i = select i1 %i.dw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader20get_anim_buffer_dataINS1_19AnimValueOffset_HL1EEEPKT_iii.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA49_KcRiRA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 1 dereferenceable(49) @.str.99, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.81)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.y, %bb.o
  %.sink.i.sink = phi ptr [ %i.dy, %bb.o ], [ %i.ff, %bb.y ], [ %i.ew, %bb.t ]
  %common.resume.op = phi { ptr, i32 } [ %i.dz, %bb.o ], [ %i.fg, %bb.y ], [ %i.ex, %bb.t ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i.sink) #23
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader20get_anim_buffer_dataINS1_19AnimValueOffset_HL1EEEPKT_iii.exit: ; preds = %bb.l
  %i.ea = mul nsw i32 %i.dv, %i.ds
  %i.eb = zext nneg i32 %i.db to i64
  %i.ec = load ptr, ptr %i.cd, align 8
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_19AnimValueOffset_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i32 noundef %i.dq, i32 noundef %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader20get_anim_buffer_dataINS1_19AnimValueOffset_HL1EEEPKT_iii.exit, %bb.k
  %.097 = phi ptr [ %i.do, %bb.k ], [ %i.ee, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader20get_anim_buffer_dataINS1_19AnimValueOffset_HL1EEEPKT_iii.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.1176, i64 120 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = icmp sgt i32 %i.eg, 0
  %.pre197 = load ptr, ptr %i.c, align 8          ; 2 uses
  br i1 %i.eh, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %.1176, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1176, i64 56 ; 4 uses
  br label %bb.q

._crit_edge172:                                   ; preds = %._crit_edge165, %bb.p
  %i.ek = phi ptr [ %.pre197, %bb.p ], [ %i.gq, %._crit_edge165 ] ; 2 uses
  %.1104.lcssa = phi ptr [ %.0103174, %bb.p ], [ %i.gs, %._crit_edge165 ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1176, i64 176
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 164
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next194, %i.eo
  br i1 %i.ep, label %bb.j, label %.loopexit143, !llvm.loop !226

bb.q:                                             ; preds = %.lr.ph171, %._crit_edge165
  %i.eq = phi ptr [ %.pre197, %.lr.ph171 ], [ %i.gq, %._crit_edge165 ] ; 2 uses
  %.198169 = phi ptr [ %.097, %.lr.ph171 ], [ %.2.lcssa, %._crit_edge165 ] ; 2 uses
  %.0101168 = phi i32 [ 0, %.lr.ph171 ], [ %i.gr, %._crit_edge165 ]
  %.1104167 = phi ptr [ %.0103174, %.lr.ph171 ], [ %i.gs, %._crit_edge165 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 140
  %i.eu = load i32, ptr %i.et, align 4            ; 2 uses
  %i.ev = or i32 %i.eu, %i.es
  %or.cond.not.i = icmp sgt i32 %i.ev, -1
  br i1 %or.cond.not.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.86)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.u:                                             ; preds = %bb.q
  %i.ey = zext nneg i32 %i.es to i64              ; 3 uses
  %i.ez = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  br i1 %i.fa, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = zext nneg i32 %i.eu to i64
  %i.fc = sub nuw i64 %i.ez, %i.ey
  %i.fd = udiv i64 %i.fc, 112
  %i.fe = icmp samesign ult i64 %i.fd, %i.fb
  br i1 %i.fe, label %bb.w, label %_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Bone_HL1EEEPKT_ii.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ff = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull @.str.86)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Bone_HL1EEEPKT_ii.exit: ; preds = %bb.v
  %i.fh = load ptr, ptr %i.i, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ey
  %i.fj = call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #26 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.fj, i8 0, i64 1028, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1032 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1040
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1048 ; 2 uses
  store i32 0, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 1056 ; 3 uses
  store ptr null, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 1064
  store i32 0, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 1072
  store ptr null, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 1080
  store i32 0, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 1088
  store ptr null, ptr %i.fr, align 8
  store ptr %i.fj, ptr %.1104167, align 8
  %i.fs = load ptr, ptr %i.k, align 8
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %indvars.iv193 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8            ; 4 uses
  %i.fw = icmp ugt i64 %i.fv, 1023
  br i1 %i.fw, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Bone_HL1EEEPKT_ii.exit
  %i.fx = trunc nuw nsw i64 %i.fv to i32
  store i32 %i.fx, ptr %i.fj, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fz = load ptr, ptr %i.ft, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 1 %i.fz, i64 %i.fv, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fv
  store i8 0, ptr %i.ga, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_8Bone_HL1EEEPKT_ii.exit, %bb.z
  %i.gb = load float, ptr %i.ei, align 1
  %i.gc = fpext float %i.gb to double
  store double %i.gc, ptr %i.fl, align 8
  %i.gd = load float, ptr %i.ei, align 1
  %i.ge = fpext float %i.gd to double
  %i.gf = load i32, ptr %i.ej, align 1
  %i.gg = sitofp i32 %i.gf to double
  %i.gh = fmul double %i.ge, %i.gg
  store double %i.gh, ptr %i.fk, align 8
  %i.gi = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 140 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  store i32 %i.gk, ptr %i.fm, align 8
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gm) #26
  store ptr %i.gn, ptr %i.fn, align 8
  %i.go = load i32, ptr %i.gj, align 4
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph164, label %._crit_edge165

._crit_edge165:                                   ; preds = %._crit_edge160, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.gq = phi ptr [ %i.gi, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.kh, %._crit_edge160 ] ; 2 uses
  %.2.lcssa = phi ptr [ %.198169, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.kg, %._crit_edge160 ]
  %i.gr = add nuw nsw i32 %.0101168, 1            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1104167, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.ef, align 1
  %i.gu = icmp slt i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.q, label %._crit_edge172, !llvm.loop !227

.lr.ph164:                                        ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %._crit_edge160
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %._crit_edge160 ], [ 0, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %.2163 = phi ptr [ %i.kg, %._crit_edge160 ], [ %.198169, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 13 uses
  %.0100161 = phi ptr [ %i.kf, %._crit_edge160 ], [ %i.fi, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 13 uses
  %i.gv = call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #26 ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1048 ; 3 uses
  store ptr null, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1056 ; 2 uses
  store i32 0, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.gv, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  %i.gz = load ptr, ptr %i.fn, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv190
  store ptr %i.gv, ptr %i.ha, align 8
  %i.hb = load ptr, ptr %i.cf, align 8
  %i.hc = getelementptr inbounds nuw [160 x i8], ptr %i.hb, i64 %indvars.iv190
  %i.hd = load ptr, ptr %i.hc, align 8            ; 3 uses
  %i.he = icmp eq ptr %i.gv, %i.hd
  br i1 %i.he, label %_ZN8aiStringaSERKS_.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph164
  %i.hf = load i32, ptr %i.hd, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.hf, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.gv, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hi = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr nonnull align 4 %i.hh, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  store i8 0, ptr %i.hj, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %.lr.ph164, %bb.aa
  %i.hk = load i32, ptr %i.ej, align 1            ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 1028
  store i32 %i.hk, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 1040
  store i32 %i.hk, ptr %i.hm, align 8
  store i32 0, ptr %i.gx, align 8
  %i.hn = zext i32 %i.hk to i64                   ; 4 uses
  %i.ho = mul nuw nsw i64 %i.hn, 24
  %i.hp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ho) #26 ; 4 uses
  %i.hq = icmp eq i32 %i.hk, 0
  br i1 %i.hq, label %.loopexit142.thread, label %bb.ab

.loopexit142.thread:                              ; preds = %_ZN8aiStringaSERKS_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 1032 ; 2 uses
  store ptr %i.hp, ptr %i.hr, align 8
  %i.hs = call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #26
  br label %.loopexit

bb.ab:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hp, i64 %i.hn
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.hu = phi ptr [ %i.hp, %bb.ab ], [ %i.hw, %bb.ac ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 24 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.ht
  br i1 %i.hx, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1032 ; 3 uses
  store ptr %i.hp, ptr %i.hy, align 8
  %i.hz = shl nuw nsw i64 %i.hn, 5                ; 2 uses
  %i.ia = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hz) #26 ; 5 uses
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.hn
  %i.ic = add nsw i64 %i.hz, -32                  ; 2 uses
  %i.id = lshr exact i64 %i.ic, 5
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter = and i64 %i.ie, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ad, %.prol.preheader
  %i.if = phi ptr [ %i.ii, %.prol.preheader ], [ %i.ia, %bb.ad ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ad ]
  store double 0.000000e+00, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store i32 1, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !228

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ad
  %.unr = phi ptr [ %i.ia, %bb.ad ], [ %i.ii, %.prol.preheader ]
  %i.ij = icmp ult i64 %i.ic, 224
  br i1 %i.ij, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ik = phi ptr [ %i.ji, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i32 1, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store double 0.000000e+00, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  store i32 1, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store double 0.000000e+00, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  store i32 1, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 96
  store double 0.000000e+00, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  store i32 1, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  store double 0.000000e+00, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 152
  store i32 1, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 160
  store double 0.000000e+00, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ik, i64 184
  store i32 1, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 192
  store double 0.000000e+00, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ik, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 216
  store i32 1, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  store double 0.000000e+00, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ik, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ik, i64 248
  store i32 1, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ik, i64 256 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ib
  br i1 %i.jj, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %.loopexit142.thread
  %i.jk = phi ptr [ %i.hs, %.loopexit142.thread ], [ %i.ia, %.new ], [ %i.ia, %.prol.loopexit ]
  %i.jl = phi ptr [ %i.hr, %.loopexit142.thread ], [ %i.hy, %.new ], [ %i.hy, %.prol.loopexit ]
  store ptr %i.jk, ptr %i.gw, align 8
  %i.jm = load i32, ptr %i.ej, align 1
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %.0100161, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %.0100161, i64 88
  %i.jq = getelementptr inbounds nuw i8, ptr %.2163, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %.0100161, i64 100
  %i.js = getelementptr inbounds nuw i8, ptr %.0100161, i64 76
  %i.jt = getelementptr inbounds nuw i8, ptr %.2163, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.0100161, i64 104
  %i.jv = getelementptr inbounds nuw i8, ptr %.0100161, i64 80
  %i.jw = getelementptr inbounds nuw i8, ptr %.2163, i64 2
  %i.jx = getelementptr inbounds nuw i8, ptr %.0100161, i64 92
  %i.jy = getelementptr inbounds nuw i8, ptr %.0100161, i64 68
  %i.jz = getelementptr inbounds nuw i8, ptr %.2163, i64 10
  %i.ka = getelementptr inbounds nuw i8, ptr %.0100161, i64 108
  %i.kb = getelementptr inbounds nuw i8, ptr %.0100161, i64 84
  %i.kc = getelementptr inbounds nuw i8, ptr %.2163, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %.0100161, i64 96
  %i.ke = getelementptr inbounds nuw i8, ptr %.0100161, i64 72
  br label %bb.ae

._crit_edge160:                                   ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %.loopexit
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0100161, i64 112
  %i.kg = getelementptr inbounds nuw i8, ptr %.2163, i64 12 ; 2 uses
  %i.kh = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 140
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next191, %i.kk
  br i1 %i.kl, label %.lr.ph164, label %._crit_edge165, !llvm.loop !229

bb.ae:                                            ; preds = %.lr.ph159, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv187 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next188, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ] ; 16 uses
  %i.km = load ptr, ptr %i.jl, align 8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %indvars.iv187 ; 4 uses
  %i.ko = load ptr, ptr %i.gw, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 12 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 3 uses
  %i.ks = load i16, ptr %i.jq, align 1            ; 2 uses
  %.not113 = icmp eq i16 %i.ks, 0
  br i1 %.not113, label %_ZN10aiVector3tIfEixEj.exit118, label %_ZN10aiVector3tIfEixEj.exit

bb.af:                                            ; preds = %_ZN10aiVector3tIfEixEj.exit134.2
  %sqrt.i = call float @llvm.sqrt.f32(float %i.tf)
  %i.kt = fdiv float 1.000000e+00, %sqrt.i
  %i.ku = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = fmul <4 x float> %i.sx, %i.kv
  store <4 x float> %i.kw, ptr %i.sy, align 4
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %_ZN10aiVector3tIfEixEj.exit134.2, %bb.af
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kx = load i32, ptr %i.ej, align 1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next188, %i.ky
  br i1 %i.kz, label %bb.ae, label %._crit_edge160, !llvm.loop !230

_ZN10aiVector3tIfEixEj.exit:                      ; preds = %bb.ae
  %i.la = zext i16 %i.ks to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.la ; 3 uses
  %i.lc = load float, ptr %i.jr, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.le = load i8, ptr %i.ld, align 1             ; 2 uses
  %i.lf = zext i8 %i.le to i64
  %.not18.i = icmp samesign ult i64 %indvars.iv187, %i.lf
  %i.lg = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN10aiVector3tIfEixEj.exit
  %i.lh = zext i8 %i.le to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.li = phi i32 [ %i.lq, %.lr.ph.i ], [ %i.lh, %.lr.ph.i.preheader ]
  %.020.i = phi i32 [ %i.lj, %.lr.ph.i ], [ %i.lg, %.lr.ph.i.preheader ]
  %.01619.i = phi ptr [ %i.ln, %.lr.ph.i ], [ %i.lb, %.lr.ph.i.preheader ] ; 2 uses
  %i.lj = sub nsw i32 %.020.i, %i.li              ; 3 uses
  %i.lk = load i8, ptr %.01619.i, align 1
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.01619.i, i64 %i.ll ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = zext i8 %i.lp to i32                    ; 2 uses
  %.not.i116 = icmp slt i32 %i.lj, %i.lq
  br i1 %.not.i116, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit, label %.lr.ph.i, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit: ; preds = %.lr.ph.i, %_ZN10aiVector3tIfEixEj.exit
  %.016.lcssa.i = phi ptr [ %i.lb, %_ZN10aiVector3tIfEixEj.exit ], [ %i.ln, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.lg, %_ZN10aiVector3tIfEixEj.exit ], [ %i.lj, %.lr.ph.i ] ; 2 uses
  %i.lr = load i8, ptr %.016.lcssa.i, align 1     ; 2 uses
  %i.ls = zext i8 %i.lr to i32
  %i.lt = icmp slt i32 %.0.lcssa.i, %i.ls
  %i.lu = zext i8 %i.lr to i64
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i, i64 %i.lu
  %i.lw = sext i32 %.0.lcssa.i to i64
  %i.lx = getelementptr [2 x i8], ptr %.016.lcssa.i, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 2
  %.pn.in.in.i = select i1 %i.lt, ptr %i.ly, ptr %i.lv
  %.pn.in.i = load i16, ptr %.pn.in.in.i, align 1
  %.pn.i = sitofp i16 %.pn.in.i to float
  %storemerge.i = fmul float %i.lc, %.pn.i
  br label %_ZN10aiVector3tIfEixEj.exit118

_ZN10aiVector3tIfEixEj.exit118:                   ; preds = %bb.ae, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit
  %.sroa.0136.0 = phi float [ 0.000000e+00, %bb.ae ], [ %storemerge.i, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit ]
  %i.lz = load float, ptr %i.js, align 1
  %i.ma = fadd float %i.lz, %.sroa.0136.0
  %i.mb = load i16, ptr %.2163, align 1           ; 2 uses
  %.not114 = icmp eq i16 %i.mb, 0
  br i1 %.not114, label %_ZN10aiVector3tIfEixEj.exit134, label %_ZN10aiVector3tIfEixEj.exit120

_ZN10aiVector3tIfEixEj.exit120:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118
  %i.mc = zext i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.mc ; 3 uses
  %i.me = load float, ptr %i.jp, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mg = load i8, ptr %i.mf, align 1             ; 2 uses
  %i.mh = zext i8 %i.mg to i64
  %.not18.i121 = icmp samesign ult i64 %indvars.iv187, %i.mh
  %i.mi = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %_ZN10aiVector3tIfEixEj.exit120
  %i.mj = zext i8 %i.mg to i32
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122
  %i.mk = phi i32 [ %i.ms, %.lr.ph.i122 ], [ %i.mj, %.lr.ph.i122.preheader ]
  %.020.i123 = phi i32 [ %i.ml, %.lr.ph.i122 ], [ %i.mi, %.lr.ph.i122.preheader ]
  %.01619.i124 = phi ptr [ %i.mp, %.lr.ph.i122 ], [ %i.md, %.lr.ph.i122.preheader ] ; 2 uses
  %i.ml = sub nsw i32 %.020.i123, %i.mk           ; 3 uses
  %i.mm = load i8, ptr %.01619.i124, align 1
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 2 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 3
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = zext i8 %i.mr to i32                    ; 2 uses
  %.not.i125 = icmp slt i32 %i.ml, %i.ms
  br i1 %.not.i125, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132, label %.lr.ph.i122, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132: ; preds = %.lr.ph.i122, %_ZN10aiVector3tIfEixEj.exit120
  %.016.lcssa.i126 = phi ptr [ %i.md, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.mp, %.lr.ph.i122 ] ; 3 uses
  %.0.lcssa.i127 = phi i32 [ %i.mi, %_ZN10aiVector3tIfEixEj.exit120 ], [ %i.ml, %.lr.ph.i122 ] ; 2 uses
  %i.mt = load i8, ptr %.016.lcssa.i126, align 1  ; 2 uses
  %i.mu = zext i8 %i.mt to i32
  %i.mv = icmp slt i32 %.0.lcssa.i127, %i.mu
  %i.mw = zext i8 %i.mt to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126, i64 %i.mw
  %i.my = sext i32 %.0.lcssa.i127 to i64
  %i.mz = getelementptr [2 x i8], ptr %.016.lcssa.i126, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 2
  %.pn.in.in.i128 = select i1 %i.mv, ptr %i.na, ptr %i.mx
  %.pn.in.i129 = load i16, ptr %.pn.in.in.i128, align 1
  %.pn.i130 = sitofp i16 %.pn.in.i129 to float
  %storemerge.i131 = fmul float %i.me, %.pn.i130
  store float %storemerge.i131, ptr %i.kp, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134

_ZN10aiVector3tIfEixEj.exit134:                   ; preds = %_ZN10aiVector3tIfEixEj.exit118, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132
  %i.nb = load float, ptr %i.jo, align 1
  %i.nc = load float, ptr %i.kp, align 4
  %i.nd = fadd float %i.nb, %i.nc
  store float %i.nd, ptr %i.kp, align 4
  %i.ne = load i16, ptr %i.jt, align 1            ; 2 uses
  %.not113.1 = icmp eq i16 %i.ne, 0
  br i1 %.not113.1, label %_ZN10aiVector3tIfEixEj.exit118.1, label %_ZN10aiVector3tIfEixEj.exit.1

_ZN10aiVector3tIfEixEj.exit.1:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134
  %i.nf = zext i16 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.nf ; 3 uses
  %i.nh = load float, ptr %i.ju, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.nj = load i8, ptr %i.ni, align 1             ; 2 uses
  %i.nk = zext i8 %i.nj to i64
  %.not18.i.1 = icmp samesign ult i64 %indvars.iv187, %i.nk
  %i.nl = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.1
  %i.nm = zext i8 %i.nj to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.i.preheader.1
  %i.nn = phi i32 [ %i.nv, %.lr.ph.i.1 ], [ %i.nm, %.lr.ph.i.preheader.1 ]
  %.020.i.1 = phi i32 [ %i.no, %.lr.ph.i.1 ], [ %i.nl, %.lr.ph.i.preheader.1 ]
  %.01619.i.1 = phi ptr [ %i.ns, %.lr.ph.i.1 ], [ %i.ng, %.lr.ph.i.preheader.1 ] ; 2 uses
  %i.no = sub nsw i32 %.020.i.1, %i.nn            ; 3 uses
  %i.np = load i8, ptr %.01619.i.1, align 1
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.1, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 3
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i32                    ; 2 uses
  %.not.i116.1 = icmp slt i32 %i.no, %i.nv
  br i1 %.not.i116.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, label %.lr.ph.i.1, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1: ; preds = %.lr.ph.i.1, %_ZN10aiVector3tIfEixEj.exit.1
  %.016.lcssa.i.1 = phi ptr [ %i.ng, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.ns, %.lr.ph.i.1 ] ; 3 uses
  %.0.lcssa.i.1 = phi i32 [ %i.nl, %_ZN10aiVector3tIfEixEj.exit.1 ], [ %i.no, %.lr.ph.i.1 ] ; 2 uses
  %i.nw = load i8, ptr %.016.lcssa.i.1, align 1   ; 2 uses
  %i.nx = zext i8 %i.nw to i32
  %i.ny = icmp slt i32 %.0.lcssa.i.1, %i.nx
  %i.nz = zext i8 %i.nw to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.1, i64 %i.nz
  %i.ob = sext i32 %.0.lcssa.i.1 to i64
  %i.oc = getelementptr [2 x i8], ptr %.016.lcssa.i.1, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.oc, i64 2
  %.pn.in.in.i.1 = select i1 %i.ny, ptr %i.od, ptr %i.oa
  %.pn.in.i.1 = load i16, ptr %.pn.in.in.i.1, align 1
  %.pn.i.1 = sitofp i16 %.pn.in.i.1 to float
  %storemerge.i.1 = fmul float %i.nh, %.pn.i.1
  br label %_ZN10aiVector3tIfEixEj.exit118.1

_ZN10aiVector3tIfEixEj.exit118.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1, %_ZN10aiVector3tIfEixEj.exit134
  %.sroa.6137.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134 ], [ %storemerge.i.1, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.1 ]
  %i.oe = load float, ptr %i.jv, align 1
  %i.of = fadd float %i.oe, %.sroa.6137.0
  %i.og = load i16, ptr %i.jw, align 1            ; 2 uses
  %.not114.1 = icmp eq i16 %i.og, 0
  br i1 %.not114.1, label %_ZN10aiVector3tIfEixEj.exit134.1, label %_ZN10aiVector3tIfEixEj.exit120.1

_ZN10aiVector3tIfEixEj.exit120.1:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.1
  %i.oh = zext i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.oh ; 3 uses
  %i.oj = load float, ptr %i.jx, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.ol = load i8, ptr %i.ok, align 1             ; 2 uses
  %i.om = zext i8 %i.ol to i64
  %.not18.i121.1 = icmp samesign ult i64 %indvars.iv187, %i.om
  %i.on = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.preheader.1

.lr.ph.i122.preheader.1:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.1
  %i.oo = zext i8 %i.ol to i32
  br label %.lr.ph.i122.1

.lr.ph.i122.1:                                    ; preds = %.lr.ph.i122.1, %.lr.ph.i122.preheader.1
  %i.op = phi i32 [ %i.ox, %.lr.ph.i122.1 ], [ %i.oo, %.lr.ph.i122.preheader.1 ]
  %.020.i123.1 = phi i32 [ %i.oq, %.lr.ph.i122.1 ], [ %i.on, %.lr.ph.i122.preheader.1 ]
  %.01619.i124.1 = phi ptr [ %i.ou, %.lr.ph.i122.1 ], [ %i.oi, %.lr.ph.i122.preheader.1 ] ; 2 uses
  %i.oq = sub nsw i32 %.020.i123.1, %i.op         ; 3 uses
  %i.or = load i8, ptr %.01619.i124.1, align 1
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.1, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %.not.i125.1 = icmp slt i32 %i.oq, %i.ox
  br i1 %.not.i125.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, label %.lr.ph.i122.1, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1: ; preds = %.lr.ph.i122.1, %_ZN10aiVector3tIfEixEj.exit120.1
  %.016.lcssa.i126.1 = phi ptr [ %i.oi, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.ou, %.lr.ph.i122.1 ] ; 3 uses
  %.0.lcssa.i127.1 = phi i32 [ %i.on, %_ZN10aiVector3tIfEixEj.exit120.1 ], [ %i.oq, %.lr.ph.i122.1 ] ; 2 uses
  %i.oy = load i8, ptr %.016.lcssa.i126.1, align 1 ; 2 uses
  %i.oz = zext i8 %i.oy to i32
  %i.pa = icmp slt i32 %.0.lcssa.i127.1, %i.oz
  %i.pb = zext i8 %i.oy to i64
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.1, i64 %i.pb
  %i.pd = sext i32 %.0.lcssa.i127.1 to i64
  %i.pe = getelementptr [2 x i8], ptr %.016.lcssa.i126.1, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 2
  %.pn.in.in.i128.1 = select i1 %i.pa, ptr %i.pf, ptr %i.pc
  %.pn.in.i129.1 = load i16, ptr %.pn.in.in.i128.1, align 1
  %.pn.i130.1 = sitofp i16 %.pn.in.i129.1 to float
  %storemerge.i131.1 = fmul float %i.oj, %.pn.i130.1
  store float %storemerge.i131.1, ptr %i.kq, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.1

_ZN10aiVector3tIfEixEj.exit134.1:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.1, %_ZN10aiVector3tIfEixEj.exit118.1
  %i.pg = load float, ptr %i.jy, align 1
  %i.ph = load float, ptr %i.kq, align 4
  %i.pi = fadd float %i.pg, %i.ph
  store float %i.pi, ptr %i.kq, align 4
  %i.pj = load i16, ptr %i.jz, align 1            ; 2 uses
  %.not113.2 = icmp eq i16 %i.pj, 0
  br i1 %.not113.2, label %_ZN10aiVector3tIfEixEj.exit118.2, label %_ZN10aiVector3tIfEixEj.exit.2

_ZN10aiVector3tIfEixEj.exit.2:                    ; preds = %_ZN10aiVector3tIfEixEj.exit134.1
  %i.pk = zext i16 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.pk ; 3 uses
  %i.pm = load float, ptr %i.ka, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
  %i.po = load i8, ptr %i.pn, align 1             ; 2 uses
  %i.pp = zext i8 %i.po to i64
  %.not18.i.2 = icmp samesign ult i64 %indvars.iv187, %i.pp
  %i.pq = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %_ZN10aiVector3tIfEixEj.exit.2
  %i.pr = zext i8 %i.po to i32
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2, %.lr.ph.i.preheader.2
  %i.ps = phi i32 [ %i.qa, %.lr.ph.i.2 ], [ %i.pr, %.lr.ph.i.preheader.2 ]
  %.020.i.2 = phi i32 [ %i.pt, %.lr.ph.i.2 ], [ %i.pq, %.lr.ph.i.preheader.2 ]
  %.01619.i.2 = phi ptr [ %i.px, %.lr.ph.i.2 ], [ %i.pl, %.lr.ph.i.preheader.2 ] ; 2 uses
  %i.pt = sub nsw i32 %.020.i.2, %i.ps            ; 3 uses
  %i.pu = load i8, ptr %.01619.i.2, align 1
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.2, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 2 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = zext i8 %i.pz to i32                    ; 2 uses
  %.not.i116.2 = icmp slt i32 %i.pt, %i.qa
  br i1 %.not.i116.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, label %.lr.ph.i.2, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2: ; preds = %.lr.ph.i.2, %_ZN10aiVector3tIfEixEj.exit.2
  %.016.lcssa.i.2 = phi ptr [ %i.pl, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.px, %.lr.ph.i.2 ] ; 3 uses
  %.0.lcssa.i.2 = phi i32 [ %i.pq, %_ZN10aiVector3tIfEixEj.exit.2 ], [ %i.pt, %.lr.ph.i.2 ] ; 2 uses
  %i.qb = load i8, ptr %.016.lcssa.i.2, align 1   ; 2 uses
  %i.qc = zext i8 %i.qb to i32
  %i.qd = icmp slt i32 %.0.lcssa.i.2, %i.qc
  %i.qe = zext i8 %i.qb to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i.2, i64 %i.qe
  %i.qg = sext i32 %.0.lcssa.i.2 to i64
  %i.qh = getelementptr [2 x i8], ptr %.016.lcssa.i.2, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 2
  %.pn.in.in.i.2 = select i1 %i.qd, ptr %i.qi, ptr %i.qf
  %.pn.in.i.2 = load i16, ptr %.pn.in.in.i.2, align 1
  %.pn.i.2 = sitofp i16 %.pn.in.i.2 to float
  %storemerge.i.2 = fmul float %i.pm, %.pn.i.2
  br label %_ZN10aiVector3tIfEixEj.exit118.2

_ZN10aiVector3tIfEixEj.exit118.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2, %_ZN10aiVector3tIfEixEj.exit134.1
  %.sroa.10.0 = phi float [ 0.000000e+00, %_ZN10aiVector3tIfEixEj.exit134.1 ], [ %storemerge.i.2, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit.2 ]
  %i.qj = load float, ptr %i.kb, align 1
  %i.qk = fadd float %i.qj, %.sroa.10.0
  %i.ql = load i16, ptr %i.kc, align 1            ; 2 uses
  %.not114.2 = icmp eq i16 %i.ql, 0
  br i1 %.not114.2, label %_ZN10aiVector3tIfEixEj.exit134.2, label %_ZN10aiVector3tIfEixEj.exit120.2

_ZN10aiVector3tIfEixEj.exit120.2:                 ; preds = %_ZN10aiVector3tIfEixEj.exit118.2
  %i.qm = zext i16 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %.2163, i64 %i.qm ; 3 uses
  %i.qo = load float, ptr %i.kd, align 1
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qq = load i8, ptr %i.qp, align 1             ; 2 uses
  %i.qr = zext i8 %i.qq to i64
  %.not18.i121.2 = icmp samesign ult i64 %indvars.iv187, %i.qr
  %i.qs = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %.not18.i121.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.preheader.2

.lr.ph.i122.preheader.2:                          ; preds = %_ZN10aiVector3tIfEixEj.exit120.2
  %i.qt = zext i8 %i.qq to i32
  br label %.lr.ph.i122.2

.lr.ph.i122.2:                                    ; preds = %.lr.ph.i122.2, %.lr.ph.i122.preheader.2
  %i.qu = phi i32 [ %i.rc, %.lr.ph.i122.2 ], [ %i.qt, %.lr.ph.i122.preheader.2 ]
  %.020.i123.2 = phi i32 [ %i.qv, %.lr.ph.i122.2 ], [ %i.qs, %.lr.ph.i122.preheader.2 ]
  %.01619.i124.2 = phi ptr [ %i.qz, %.lr.ph.i122.2 ], [ %i.qn, %.lr.ph.i122.preheader.2 ] ; 2 uses
  %i.qv = sub nsw i32 %.020.i123.2, %i.qu         ; 3 uses
  %i.qw = load i8, ptr %.01619.i124.2, align 1
  %i.qx = zext i8 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.01619.i124.2, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 2 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = zext i8 %i.rb to i32                    ; 2 uses
  %.not.i125.2 = icmp slt i32 %i.qv, %i.rc
  br i1 %.not.i125.2, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, label %.lr.ph.i122.2, !llvm.loop !231

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2: ; preds = %.lr.ph.i122.2, %_ZN10aiVector3tIfEixEj.exit120.2
  %.016.lcssa.i126.2 = phi ptr [ %i.qn, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qz, %.lr.ph.i122.2 ] ; 3 uses
  %.0.lcssa.i127.2 = phi i32 [ %i.qs, %_ZN10aiVector3tIfEixEj.exit120.2 ], [ %i.qv, %.lr.ph.i122.2 ] ; 2 uses
  %i.rd = load i8, ptr %.016.lcssa.i126.2, align 1 ; 2 uses
  %i.re = zext i8 %i.rd to i32
  %i.rf = icmp slt i32 %.0.lcssa.i127.2, %i.re
  %i.rg = zext i8 %i.rd to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %.016.lcssa.i126.2, i64 %i.rg
  %i.ri = sext i32 %.0.lcssa.i127.2 to i64
  %i.rj = getelementptr [2 x i8], ptr %.016.lcssa.i126.2, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 2
  %.pn.in.in.i128.2 = select i1 %i.rf, ptr %i.rk, ptr %i.rh
  %.pn.in.i129.2 = load i16, ptr %.pn.in.in.i128.2, align 1
  %.pn.i130.2 = sitofp i16 %.pn.in.i129.2 to float
  %storemerge.i131.2 = fmul float %i.qo, %.pn.i130.2
  store float %storemerge.i131.2, ptr %i.kr, align 4
  br label %_ZN10aiVector3tIfEixEj.exit134.2

_ZN10aiVector3tIfEixEj.exit134.2:                 ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader18extract_anim_valueEPKNS1_13AnimValue_HL1EifRf.exit132.2, %_ZN10aiVector3tIfEixEj.exit118.2
  %i.rl = load float, ptr %i.ke, align 1
  %i.rm = load float, ptr %i.kr, align 4
  %i.rn = fadd float %i.rl, %i.rm
  store float %i.rn, ptr %i.kr, align 4
  %i.ro = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %indvars.iv187 ; 2 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.rq = uitofp nneg i32 %i.rp to double         ; 2 uses
  store double %i.rq, ptr %i.ro, align 8
  store double %i.rq, ptr %i.kn, align 8
  %i.rr = fmul float %i.of, 5.000000e-01          ; 2 uses
  %i.rs = call noundef float @sinf(float noundef %i.rr) #23 ; 3 uses
  %i.rt = call noundef float @cosf(float noundef %i.rr) #23 ; 2 uses
  %i.ru = fmul float %i.qk, 5.000000e-01          ; 2 uses
  %i.rv = call noundef float @sinf(float noundef %i.ru) #23 ; 3 uses
  %i.rw = call noundef float @cosf(float noundef %i.ru) #23 ; 2 uses
  %i.rx = fmul float %i.ma, 5.000000e-01          ; 2 uses
  %i.ry = call noundef float @sinf(float noundef %i.rx) #23 ; 3 uses
  %i.rz = call noundef float @cosf(float noundef %i.rx) #23 ; 2 uses
  %i.sa = fmul float %i.rs, %i.rv                 ; 2 uses
  %i.sb = fneg float %i.sa
  %i.sc = fmul float %i.rt, %i.ry
  %i.sd = fmul float %i.rs, %i.ry
  %i.se = fneg float %i.rw
  %i.sf = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.sg = insertelement <4 x float> %i.sf, float %i.rs, i64 1
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.si = insertelement <4 x float> poison, float %i.rw, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %i.rz, i64 1 ; 2 uses
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sl = fmul <4 x float> %i.sh, %i.sk
  %i.sm = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rz, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.rv, i64 2
  %i.sp = insertelement <4 x float> %i.so, float %i.sd, i64 3
  %i.sq = insertelement <4 x float> poison, float %i.ry, i64 0 ; 2 uses
  %i.sr = insertelement <4 x float> %i.sq, float %i.sb, i64 1
  %i.ss = insertelement <4 x float> %i.sr, float %i.sc, i64 2
  %i.st = insertelement <4 x float> %i.ss, float %i.se, i64 3
  %i.su = fmul <4 x float> %i.sp, %i.st
  %i.sv = shufflevector <4 x float> %i.sj, <4 x float> %i.sq, <4 x i32> <i32 1, i32 4, i32 0, i32 poison>
  %i.sw = insertelement <4 x float> %i.sv, float %i.rv, i64 3
  %i.sx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sw, <4 x float> %i.sl, <4 x float> %i.su) ; 7 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 2 uses
  %i.sz = extractelement <4 x float> %i.sx, i64 0 ; 2 uses
  %i.ta = extractelement <4 x float> %i.sx, i64 1 ; 2 uses
  store <4 x float> %i.sx, ptr %i.sy, align 8
  %foldExtExtBinop = fmul <4 x float> %i.sx, %i.sx
  %i.tb = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.tc = call float @llvm.fmuladd.f32(float %i.ta, float %i.ta, float %i.tb)
  %i.td = extractelement <4 x float> %i.sx, i64 3 ; 2 uses
  %i.te = call float @llvm.fmuladd.f32(float %i.td, float %i.td, float %i.tc)
  %i.tf = call float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %i.te) ; 2 uses
  %i.tg = fcmp une float %i.tf, 0.000000e+00
  br i1 %i.tg, label %bb.af, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

.loopexit143:                                     ; preds = %._crit_edge172, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader25get_num_blend_controllersEiRi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %struct.aiString, align 4          ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %struct.aiString, align 4          ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = tail call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_16SequenceDesc_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %i.l, i32 noundef %i.j)
  %i.o = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.p, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 20, ptr %i.f, align 8
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %11, align 8
  %i.r = load i64, ptr %i.f, align 8              ; 3 uses
  store i64 %i.r, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.q, ptr noundef nonnull align 1 dereferenceable(20) @.str.31, i64 20, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %11, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %11, align 8               ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.p, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.o, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.aa, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.z, align 8             ; 4 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.e, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.o, ptr %i.as, align 8
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.f, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ar, ptr %i.z, align 8
  store ptr %i.au, ptr %i.aa, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.av, ptr %i.ac, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 164 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 1104
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = zext i32 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 1112 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load i32, ptr %i.ax, align 4
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit.lr.ph: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv:bb.a
  store i32 10, ptr %.ptr.8, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 136
  store ptr null, ptr %i.ev, align 8
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.em, i64 144 ; 2 uses
  store i32 10, ptr %.ptr.9, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  store ptr null, ptr %i.ew, align 8
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.em, i64 160 ; 2 uses
  store i32 10, ptr %.ptr.10, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 168
  store ptr null, ptr %i.ex, align 8
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.em, i64 176 ; 2 uses
  store i32 10, ptr %.ptr.11, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 184
  store ptr null, ptr %i.ey, align 8
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.em, i64 192 ; 2 uses
  store i32 10, ptr %.ptr.12, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  store ptr null, ptr %i.ez, align 8
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.em, i64 208
  store i32 10, ptr %.ptr.13, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 216
  store ptr null, ptr %i.fa, align 8
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.em, i64 224
  store i32 10, ptr %.ptr.14, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 232
  store ptr null, ptr %i.fb, align 8
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.em, i64 240
  store i32 10, ptr %.ptr.15, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 248
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 7 uses
  store ptr %i.em, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 1136
  store ptr %i.ej, ptr %i.fe, align 8
  store i32 14, ptr %i.el, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.ff, ptr noundef nonnull align 1 dereferenceable(14) @.str.32, i64 14, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 18
  store i8 0, ptr %i.fg, align 2
  store i32 1, ptr %i.em, align 8
  %i.fh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread29.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473 ; 2 uses

.thread29.i:                                      ; preds = %.thread28.i
  store i32 %.08043351, ptr %i.fh, align 4
  store ptr %i.fh, ptr %i.en, align 8
  %.pre3721 = load ptr, ptr %i.bj, align 8
  %.phi.trans.insert3719 = getelementptr inbounds nuw i8, ptr %.03356, i64 156
  %.pre3720 = load i32, ptr %.phi.trans.insert3719, align 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.03356, i64 120
  %.pre = load i32, ptr %.phi.trans.insert, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %.03356, i64 120 ; 2 uses
  %i.fj = add nsw i32 %.pre, %.08043351
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %i.bh, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bh, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  store i64 13, ptr %i.bi, align 8
  store i8 0, ptr %i.dk, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.fk = sext i32 %.pre3720 to i64
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %.pre3721, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bk, i8 0, i64 1024, i1 false)
  %i.fp = and i64 %i.fn, 4294966272
  %.not.i222 = icmp eq i64 %i.fp, 0
  %spec.select.i = select i1 %.not.i222, i32 %i.fo, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %13, align 4
  %i.fq = load ptr, ptr %i.fl, align 8
  %i.fr = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 1 %i.fq, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.fr
  store i8 0, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.el, i64 1028
  store i32 13, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.el, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.fu, ptr noundef nonnull align 1 dereferenceable(13) @.str.29, i64 13, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.el, i64 1045
  store i8 0, ptr %i.fv, align 1
  store i32 5, ptr %.ptr.1, align 8
  %i.fw = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #26
          to label %.thread28.i242 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476 ; 3 uses

.thread28.i242:                                   ; preds = %.thread29.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.fy, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.fw, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr nonnull align 4 %i.bk, i64 %i.fr, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fr
  store i8 0, ptr %i.fz, align 1
  store ptr %i.fw, ptr %i.fx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ga = getelementptr inbounds nuw i8, ptr %.03356, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.el, i64 2056
  store i32 15, ptr %i.gb, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.el, i64 2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.gc, ptr noundef nonnull align 1 dereferenceable(15) @.str.33, i64 15, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.el, i64 2075
  store i8 0, ptr %i.gd, align 1
  store i32 3, ptr %.ptr.2, align 8
  %.pre.i243 = load float, ptr %i.ga, align 4
  %i.ge = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i257 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479 ; 2 uses

.thread28.i257:                                   ; preds = %.thread28.i242
  %i.gf = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store float %.pre.i243, ptr %i.ge, align 4
  store ptr %i.ge, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.03356, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.el, i64 3084
  store i32 9, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.el, i64 3088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.gi, ptr noundef nonnull align 1 dereferenceable(9) @.str.34, i64 9, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.el, i64 3097
  store i8 0, ptr %i.gj, align 1
  store i32 1, ptr %.ptr.3, align 8
  %.pre.i258 = load i32, ptr %i.gg, align 4
  %i.gk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i273 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482 ; 2 uses

.thread28.i273:                                   ; preds = %.thread28.i257
  %i.gl = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store i32 %.pre.i258, ptr %i.gk, align 4
  store ptr %i.gk, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.el, i64 4112
  store i32 9, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.el, i64 4116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.gn, ptr noundef nonnull align 1 dereferenceable(9) @.str.35, i64 9, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.el, i64 4125
  store i8 0, ptr %i.go, align 1
  store i32 1, ptr %.ptr.4, align 8
  %.pre.i274 = load i32, ptr %i.fi, align 4
  %i.gp = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i289 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485 ; 2 uses

.thread28.i289:                                   ; preds = %.thread28.i273
  %i.gq = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  store i32 %.pre.i274, ptr %i.gp, align 4
  store ptr %i.gp, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.bl, ptr %14, align 8
  store i64 8751735933184009025, ptr %i.bl, align 8
  store i64 8, ptr %i.bm, align 8
  store i8 0, ptr %i.dl, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.03356, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.el, i64 5140
  store i32 8, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.el, i64 5144
  %i.gu = load i64, ptr %i.bl, align 8
  store i64 %i.gu, ptr %i.gt, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.el, i64 5152
  store i8 0, ptr %i.gv, align 4
  store i32 1, ptr %.ptr.5, align 8
  %.pre.i290 = load i32, ptr %i.gr, align 4
  %i.gw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i305 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ; 2 uses

.thread28.i305:                                   ; preds = %.thread28.i289
  %i.gx = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  store i32 %.pre.i290, ptr %i.gw, align 4
  store ptr %i.gw, ptr %i.gx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.gy = getelementptr inbounds nuw i8, ptr %.03356, i64 44
  %i.gz = getelementptr inbounds nuw i8, ptr %i.el, i64 6168
  store i32 14, ptr %i.gz, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.el, i64 6172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.ha, ptr noundef nonnull align 1 dereferenceable(14) @.str.37, i64 14, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.el, i64 6186
  store i8 0, ptr %i.hb, align 2
  store i32 1, ptr %.ptr.6, align 8
  %.pre.i306 = load i32, ptr %i.gy, align 4
  %i.hc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i321 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491 ; 2 uses

.thread28.i321:                                   ; preds = %.thread28.i305
  %i.hd = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  store i32 %.pre.i306, ptr %i.hc, align 4
  store ptr %i.hc, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %.03356, i64 68
  %i.hf = getelementptr inbounds nuw i8, ptr %i.el, i64 7196
  store i32 11, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.el, i64 7200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.hg, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, i64 11, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.el, i64 7211
  store i8 0, ptr %i.hh, align 1
  store i32 1, ptr %.ptr.7, align 8
  %.pre.i322 = load i32, ptr %i.he, align 4
  %i.hi = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread29.i338 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494 ; 2 uses

.thread29.i338:                                   ; preds = %.thread28.i321
  %i.hj = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  store i32 %.pre.i322, ptr %i.hi, align 4
  store ptr %i.hi, ptr %i.hj, align 8
  %.pre3724 = load ptr, ptr %i.bp, align 8
  %.phi.trans.insert3722 = getelementptr inbounds nuw i8, ptr %.03356, i64 72
  %.pre3723 = load i32, ptr %.phi.trans.insert3722, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %i.bn, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bn, ptr noundef nonnull align 1 dereferenceable(10) @.str.39, i64 10, i1 false)
  store i64 10, ptr %i.bo, align 8
  store i8 0, ptr %i.dm, align 2
  %i.hk = sext i32 %.pre3723 to i64
  %i.hl = getelementptr inbounds nuw [160 x i8], ptr %.pre3724, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.el, i64 8224
  store i32 10, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.el, i64 8228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ho, ptr noundef nonnull align 1 dereferenceable(10) @.str.39, i64 10, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.el, i64 8238
  store i8 0, ptr %i.hp, align 2
  store i32 5, ptr %.ptr.8, align 8
  %.pre.i339 = load i32, ptr %i.hm, align 4
  %i.hq = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #26
          to label %.thread28.i354 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ; 3 uses

.thread28.i354:                                   ; preds = %.thread29.i338
  %i.hr = getelementptr inbounds nuw i8, ptr %i.em, i64 136
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.hs, i8 0, i64 1024, i1 false)
  %spec.select.i28.i340 = call i32 @llvm.umin.i32(i32 %.pre.i339, i32 1023) ; 2 uses
  store i32 %spec.select.i28.i340, ptr %i.hq, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hu = zext nneg i32 %spec.select.i28.i340 to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hs, ptr nonnull align 4 %i.ht, i64 %i.hu, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hu
  store i8 0, ptr %i.hv, align 1
  store ptr %i.hq, ptr %i.hr, align 8
  %.phi.trans.insert3726 = getelementptr inbounds nuw i8, ptr %.03356, i64 76
  %i.hw = load <2 x float>, ptr %.phi.trans.insert3726, align 1
  %.phi.trans.insert3730 = getelementptr inbounds nuw i8, ptr %.03356, i64 84
  %.pre3731 = load float, ptr %.phi.trans.insert3730, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.hx = getelementptr inbounds nuw i8, ptr %i.el, i64 9252
  store i32 14, ptr %i.hx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.el, i64 9256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.hy, ptr noundef nonnull align 1 dereferenceable(14) @.str.40, i64 14, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.el, i64 9270
  store i8 0, ptr %i.hz, align 2
  store i32 6, ptr %.ptr.9, align 8
  %i.ia = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #26
          to label %.thread28.i367 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500 ; 3 uses

.thread28.i367:                                   ; preds = %.thread28.i354
  %i.ib = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  store <2 x float> %i.hw, ptr %i.ia, align 8
  %.sroa.7765.0..sroa_idx766 = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store float %.pre3731, ptr %.sroa.7765.0..sroa_idx766, align 8
  store ptr %i.ia, ptr %i.ib, align 8
  %.phi.trans.insert3732 = getelementptr inbounds nuw i8, ptr %.03356, i64 96
  %i.ic = load <2 x float>, ptr %.phi.trans.insert3732, align 1
  %.phi.trans.insert3736 = getelementptr inbounds nuw i8, ptr %.03356, i64 104
  %.pre3737 = load float, ptr %.phi.trans.insert3736, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.el, i64 10280
  store i32 5, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.el, i64 10284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ie, ptr noundef nonnull align 1 dereferenceable(5) @.str.41, i64 5, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %i.el, i64 10289
  store i8 0, ptr %i.if, align 1
  store i32 6, ptr %.ptr.10, align 8
  %i.ig = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #26
          to label %.thread28.i381 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503 ; 3 uses

.thread28.i381:                                   ; preds = %.thread28.i367
  %i.ih = getelementptr inbounds nuw i8, ptr %i.em, i64 168
  store <2 x float> %i.ic, ptr %i.ig, align 8
  %.sroa.7756.0..sroa_idx757 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store float %.pre3737, ptr %.sroa.7756.0..sroa_idx757, align 8
  store ptr %i.ig, ptr %i.ih, align 8
  %.phi.trans.insert3738 = getelementptr inbounds nuw i8, ptr %.03356, i64 108
  %i.ii = load <2 x float>, ptr %.phi.trans.insert3738, align 1
  %.phi.trans.insert3742 = getelementptr inbounds nuw i8, ptr %.03356, i64 116
  %.pre3743 = load float, ptr %.phi.trans.insert3742, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.el, i64 11308
  store i32 5, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.el, i64 11312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.ik, ptr noundef nonnull align 1 dereferenceable(5) @.str.42, i64 5, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %i.el, i64 11317
  store i8 0, ptr %i.il, align 1
  store i32 6, ptr %.ptr.11, align 8
  %i.im = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #26
          to label %.thread28.i396 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506 ; 3 uses

.thread28.i396:                                   ; preds = %.thread28.i381
  %i.in = getelementptr inbounds nuw i8, ptr %i.em, i64 184
  store <2 x float> %i.ii, ptr %i.im, align 8
  %.sroa.7.0..sroa_idx748 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store float %.pre3743, ptr %.sroa.7.0..sroa_idx748, align 8
  store ptr %i.im, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %.03356, i64 160
  %i.ip = getelementptr inbounds nuw i8, ptr %i.el, i64 12336
  store i32 9, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.el, i64 12340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.iq, ptr noundef nonnull align 1 dereferenceable(9) @.str.43, i64 9, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.el, i64 12349
  store i8 0, ptr %i.ir, align 1
  store i32 1, ptr %.ptr.12, align 8
  %.pre.i397 = load i32, ptr %i.io, align 4
  %i.is = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %.thread28.i396
  %i.it = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  store i32 %.pre.i397, ptr %i.is, align 4
  store ptr %i.is, ptr %i.it, align 8
  %.pre3744 = load i32, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.bq, ptr %16, align 8
  store i64 7306086878252988485, ptr %i.bq, align 8
  store i64 8, ptr %i.br, align 8
  store i8 0, ptr %i.dn, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.03356, i64 164 ; 2 uses
  %.not.i407 = icmp ugt i32 %.pre3744, 13
  br i1 %.not.i407, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i409, label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.iv = load ptr, ptr %i.ek, align 8            ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 13364
  store i32 8, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 13368
  %i.iy = load i64, ptr %i.bq, align 8
  store i64 %i.iy, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 13376
  store i8 0, ptr %i.iz, align 4
  %i.ja = load ptr, ptr %i.fd, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 208
  store i32 1, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 216 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8            ; 3 uses
  %.not24.i410 = icmp eq ptr %i.je, null
  br i1 %.not24.i410, label %.thread28.i412, label %bb.m

bb.m:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i409
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 208
  %i.jg = load i32, ptr %i.jf, align 8
  %.not25.i411 = icmp eq i32 %i.jg, 7
  %i.jh = load i32, ptr %i.iu, align 4            ; 2 uses
  br i1 %.not25.i411, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.jh, ptr %i.je, align 1
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415

bb.o:                                             ; preds = %bb.m
  store i32 %i.jh, ptr %i.je, align 4
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415

.thread28.i412:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i409
  %.pre.i413 = load i32, ptr %i.iu, align 4
  %i.ji = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc414 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512 ; 2 uses

.noexc414:                                        ; preds = %.thread28.i412
  store i32 %.pre.i413, ptr %i.ji, align 4
  store ptr %i.ji, ptr %i.jd, align 8
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415

_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415: ; preds = %.noexc414, %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.jj = load ptr, ptr %16, align 8              ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.bq
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415
  %i.jl = load i64, ptr %i.bq, align 8
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.bs, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bs, ptr noundef nonnull align 1 dereferenceable(9) @.str.45, i64 9, i1 false)
  store i64 9, ptr %i.bt, align 8
  store i8 0, ptr %i.do, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.03356, i64 168 ; 2 uses
  %i.jo = load i32, ptr %i.ej, align 8
  %.not.i423 = icmp ugt i32 %i.jo, 14
  br i1 %.not.i423, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i425, label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.jp = load ptr, ptr %i.ek, align 8            ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 14392
  store i32 9, ptr %i.jq, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 14396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.jr, ptr noundef nonnull align 1 dereferenceable(9) @.str.45, i64 9, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 14405
  store i8 0, ptr %i.js, align 1
  %i.jt = load ptr, ptr %i.fd, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 224
  store i32 1, ptr %i.ju, align 8
  %i.jv = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 232 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8            ; 3 uses
  %.not24.i426 = icmp eq ptr %i.jx, null
  br i1 %.not24.i426, label %.thread28.i428, label %bb.p

bb.p:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i425
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 224
  %i.jz = load i32, ptr %i.jy, align 8
  %.not25.i427 = icmp eq i32 %i.jz, 7
  %i.ka = load i32, ptr %i.jn, align 4            ; 2 uses
  br i1 %.not25.i427, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ka, ptr %i.jx, align 1
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431

bb.r:                                             ; preds = %bb.p
  store i32 %i.ka, ptr %i.jx, align 4
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431

.thread28.i428:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i425
  %.pre.i429 = load i32, ptr %i.jn, align 4
  %i.kb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc430 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ; 2 uses

.noexc430:                                        ; preds = %.thread28.i428
  store i32 %.pre.i429, ptr %i.kb, align 4
  store ptr %i.kb, ptr %i.jw, align 8
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431

_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431: ; preds = %.noexc430, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.kc = load ptr, ptr %17, align 8              ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.bs
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431
  %i.ke = load i64, ptr %i.bs, align 8
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.bu, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bu, ptr noundef nonnull align 1 dereferenceable(5) @.str.46, i64 5, i1 false)
  store i64 5, ptr %i.bv, align 8
  store i8 0, ptr %i.dp, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.03356, i64 36 ; 2 uses
  %i.kh = load i32, ptr %i.ej, align 8
  %.not.i439 = icmp ugt i32 %i.kh, 15
  br i1 %.not.i439, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i441, label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.ki = load ptr, ptr %i.ek, align 8            ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 15420
  store i32 5, ptr %i.kj, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 15424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.kk, ptr noundef nonnull align 1 dereferenceable(5) @.str.46, i64 5, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 15429
  store i8 0, ptr %i.kl, align 1
  %i.km = load ptr, ptr %i.fd, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 240
  store i32 1, ptr %i.kn, align 8
  %i.ko = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 248 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8            ; 3 uses
  %.not24.i442 = icmp eq ptr %i.kq, null
  br i1 %.not24.i442, label %.thread28.i444, label %bb.s

bb.s:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i441
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 240
  %i.ks = load i32, ptr %i.kr, align 8
  %.not25.i443 = icmp eq i32 %i.ks, 7
  %i.kt = load i32, ptr %i.kg, align 4            ; 2 uses
  br i1 %.not25.i443, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.kt, ptr %i.kq, align 1
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447

bb.u:                                             ; preds = %bb.s
  store i32 %i.kt, ptr %i.kq, align 4
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447

.thread28.i444:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i441
  %.pre.i445 = load i32, ptr %i.kg, align 4
  %i.ku = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.noexc446 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518 ; 2 uses

.noexc446:                                        ; preds = %.thread28.i444
  store i32 %.pre.i445, ptr %i.ku, align 4
  store ptr %i.ku, ptr %i.kp, align 8
  br label %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447

_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447: ; preds = %.noexc446, %bb.u, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434
  %i.kv = load ptr, ptr %18, align 8              ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.bu
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447
  %i.kx = load i64, ptr %i.bu, align 8
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %_ZN10aiMetadata3SetIiEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.kz = load ptr, ptr %i.bw, align 8, !nonnull !6
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !range !7, !noundef !6
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.v, label %.loopexit820

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.ld = load i32, ptr %i.fi, align 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.ld, ptr %i.e, align 4
  switch i32 %i.ld, label %bb.x [
    i32 1, label %.thread
    i32 2, label %bb.y
    i32 4, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.le = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc452 unwind label %bb.ai

.noexc452:                                        ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger4warnIJRA59_KcRKiRA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.le, ptr noundef nonnull align 1 dereferenceable(59) @.str.80, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(2) @.str.81)
          to label %.thread unwind label %bb.ai

.thread:                                          ; preds = %.noexc452, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit820

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.lf = phi i32 [ 2, %bb.w ], [ 1, %bb.v ]      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.lg = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %.noexc.i455 unwind label %.loopexit821 ; 8 uses

.noexc.i455:                                      ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.bx, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 16, ptr %i.d, align 8
  %i.lh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc456 unwind label %bb.aj ; 2 uses

.noexc456:                                        ; preds = %.noexc.i455
  store ptr %i.lh, ptr %19, align 8
  %i.li = load i64, ptr %i.d, align 8             ; 3 uses
  store i64 %i.li, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.lh, ptr noundef nonnull align 1 dereferenceable(16) @.str.47, i64 16, i1 false)
  store i64 %i.li, ptr %i.by, align 8
  %i.lj = load ptr, ptr %19, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.li
  store i8 0, ptr %i.lk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %.noexc456
  %i.ll = load ptr, ptr %19, align 8              ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.bx
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458: ; preds = %bb.z
  %i.ln = load i64, ptr %i.bx, align 8
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %.not.i461 = icmp eq ptr %spec.select, %.sroa.26.03352
  br i1 %.not.i461, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460
  store ptr %i.lg, ptr %spec.select, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460
  %i.lp = ptrtoint ptr %.sroa.26.03352 to i64
  %i.lq = ptrtoint ptr %.sroa.0781.03354 to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 6 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775800
  br i1 %i.ls, label %bb.ac, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc468 unwind label %.loopexit.split-lp

.noexc468:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462: ; preds = %bb.ab
  %i.lt = ashr exact i64 %i.lr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i463 = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i.i463, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = call i64 @llvm.umin.i64(i64 %i.lu, i64 1152921504606846975)
  %i.lx = select i1 %i.lv, i64 1152921504606846975, i64 %i.lw ; 3 uses
  %.not.i.i.i464 = icmp ne i64 %i.lx, 0
  call void @llvm.assume(i1 %.not.i.i.i464)
  %i.ly = shl nuw nsw i64 %i.lx, 3
  %i.lz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #26
          to label %.noexc469 unwind label %.loopexit821 ; 4 uses

.noexc469:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %i.lr ; 2 uses
  store ptr %i.lg, ptr %i.ma, align 8
  %i.mb = icmp sgt i64 %i.lr, 0
  br i1 %i.mb, label %bb.ad, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i465

bb.ad:                                            ; preds = %.noexc469
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lz, ptr align 8 %.sroa.0781.03354, i64 %i.lr, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i465

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i465: ; preds = %bb.ad, %.noexc469
  %.not.i17.i.i466 = icmp eq ptr %.sroa.0781.03354, null
  br i1 %.not.i17.i.i466, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i465
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0781.03354, i64 noundef %i.lr) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467: ; preds = %bb.ae, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i465
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.lx
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467, %bb.aa
  %.sroa.26.11 = phi ptr [ %i.mc, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467 ], [ %.sroa.26.03352, %bb.aa ] ; 8 uses
  %.pn810 = phi ptr [ %i.ma, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467 ], [ %spec.select, %bb.aa ]
  %.sroa.0781.11 = phi ptr [ %i.lz, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i467 ], [ %.sroa.0781.03354, %bb.aa ] ; 8 uses
  %.sroa.14.5 = getelementptr inbounds nuw i8, ptr %.pn810, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 1096
  store ptr %i.ed, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 1104 ; 2 uses
  store i32 %i.lf, ptr %i.me, align 8
  %i.mf = shl nuw nsw i32 %i.lf, 3
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mg) #26
          to label %.lr.ph unwind label %.loopexit821

.lr.ph:                                           ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lg, i64 1112 ; 2 uses
  store ptr %i.mh, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.03356, i64 136
  %i.mk = getelementptr inbounds nuw i8, ptr %.03356, i64 144
  %i.ml = getelementptr inbounds nuw i8, ptr %.03356, i64 128
  br label %bb.al

bb.af:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ag:                                            ; preds = %bb.k
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 1144) #24
  br label %bb.dt

bb.ah:                                            ; preds = %.noexc207, %.noexc206, %bb.l, %bb.dr
  %.sroa.26.1 = phi ptr [ %.sroa.26.9, %bb.dr ], [ %.sroa.26.03352, %.noexc207 ], [ %.sroa.26.03352, %.noexc206 ], [ %.sroa.26.03352, %bb.l ]
  %.sroa.0781.1 = phi ptr [ %.sroa.0781.9, %bb.dr ], [ %.sroa.0781.03354, %.noexc207 ], [ %.sroa.0781.03354, %.noexc206 ], [ %.sroa.0781.03354, %bb.l ]
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473: ; preds = %.thread28.i
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476: ; preds = %.thread29.i
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479: ; preds = %.thread28.i242
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482: ; preds = %.thread28.i257
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %.thread28.i273
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %.thread28.i289
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %.thread28.i305
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %.thread28.i321
  %i.mw = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512: ; preds = %.thread28.i412
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515: ; preds = %.thread28.i428
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518: ; preds = %.thread28.i444
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.dt

bb.ai:                                            ; preds = %.noexc452, %bb.x
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit821:                                     ; preds = %bb.y, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462
  %.sroa.26.2.ph = phi ptr [ %.sroa.26.03352, %bb.y ], [ %.sroa.26.03352, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462 ], [ %.sroa.26.11, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470 ]
  %.sroa.0781.2.ph = phi ptr [ %.sroa.0781.03354, %bb.y ], [ %.sroa.0781.03354, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i462 ], [ %.sroa.0781.11, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit470 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.aj:                                            ; preds = %.noexc.i455
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

bb.ak:                                            ; preds = %.noexc456
  %i.nh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ni = load ptr, ptr %19, align 8              ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.bx
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %bb.ak
  %i.nk = load i64, ptr %i.bx, align 8
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519, %bb.aj
  %.pn168 = phi { ptr, i32 } [ %i.ng, %bb.aj ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519 ], [ %i.nh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 1144) #24
  br label %bb.dt

bb.al:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ] ; 5 uses
  %i.nm = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.am unwind label %bb.ao     ; 5 uses

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.nm)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.nn = load ptr, ptr %i.mi, align 8
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv
  store ptr %i.nm, ptr %i.no, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 1096
  store ptr %i.lg, ptr %i.np, align 8
  %i.nq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc523 unwind label %bb.aq ; 4 uses

.noexc523:                                        ; preds = %bb.an
  store i32 3, ptr %i.nq, align 8
  %i.nr = invoke noalias noundef nonnull dereferenceable(3084) ptr @_Znam(i64 noundef 3084) #26
          to label %.noexc524 unwind label %bb.aq ; 11 uses

.noexc524:                                        ; preds = %.noexc523
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3084) %i.nr, i8 0, i64 3084, i1 false)
  store ptr %i.nr, ptr %i.ns, align 8
  %i.nt = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #26
          to label %.thread28.i536 unwind label %bb.aq ; 9 uses

.thread28.i536:                                   ; preds = %.noexc524
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  store ptr null, ptr %i.nu, align 8
  %.ptr813.1 = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  store i32 10, ptr %.ptr813.1, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  store ptr null, ptr %i.nv, align 8
  %.ptr813.2 = getelementptr inbounds nuw i8, ptr %i.nt, i64 32 ; 2 uses
  store i32 10, ptr %.ptr813.2, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  store ptr null, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store ptr %i.nt, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nm, i64 1136
  store ptr %i.nq, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv
  store i32 5, ptr %i.nr, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.oa, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 5, i1 false)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 9
  store i8 0, ptr %i.ob, align 1
  store i32 3, ptr %i.nt, align 8
  %.pre.i537 = load float, ptr %i.nz, align 4
  %i.oc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i552 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577 ; 2 uses

.thread28.i552:                                   ; preds = %.thread28.i536
  store float %.pre.i537, ptr %i.oc, align 4
  store ptr %i.oc, ptr %i.nu, align 8
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nr, i64 1028
  store i32 3, ptr %i.oe, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.nr, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.of, ptr noundef nonnull align 1 dereferenceable(3) @.str.49, i64 3, i1 false)
  %i.og = getelementptr inbounds nuw i8, ptr %i.nr, i64 1035
  store i8 0, ptr %i.og, align 1
  store i32 3, ptr %.ptr813.1, align 8
  %.pre.i553 = load float, ptr %i.od, align 4
  %i.oh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i568 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580 ; 2 uses

.thread28.i568:                                   ; preds = %.thread28.i552
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  store float %.pre.i553, ptr %i.oh, align 4
  store ptr %i.oh, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nr, i64 2056
  store i32 11, ptr %i.ok, align 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nr, i64 2060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ol, ptr noundef nonnull align 1 dereferenceable(11) @.str.38, i64 11, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %i.nr, i64 2071
  store i8 0, ptr %i.om, align 1
  store i32 1, ptr %.ptr813.2, align 8
  %.pre.i569 = load i32, ptr %i.oj, align 4
  %i.on = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %.thread28.i568
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  store i32 %.pre.i569, ptr %i.on, align 4
  store ptr %i.on, ptr %i.oo, align 8
  %.pre3745 = load i32, ptr %i.me, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.op = zext i32 %.pre3745 to i64
  %i.oq = icmp samesign ult i64 %indvars.iv.next, %i.op
  br i1 %i.oq, label %bb.al, label %.loopexit820, !llvm.loop !232

bb.ao:                                            ; preds = %bb.al
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ap:                                            ; preds = %bb.am
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef 1144) #24
  br label %bb.dt

bb.aq:                                            ; preds = %.noexc524, %.noexc523, %bb.an
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577: ; preds = %.thread28.i536
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit580: ; preds = %.thread28.i552
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583: ; preds = %.thread28.i568
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit820:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %.sroa.26.6 = phi ptr [ %.sroa.26.03352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ], [ %.sroa.26.03352, %.thread ], [ %.sroa.26.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ] ; 11 uses
  %.sroa.14.2 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ], [ %spec.select, %.thread ], [ %.sroa.14.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ] ; 5 uses
  %.sroa.0781.6 = phi ptr [ %.sroa.0781.03354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450 ], [ %.sroa.0781.03354, %.thread ], [ %.sroa.0781.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ] ; 13 uses
  %i.ox = load ptr, ptr %i.bw, align 8, !nonnull !6
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !range !7, !noundef !6
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.loopexit820
  %i.pb = getelementptr inbounds nuw i8, ptr %.03356, i64 48 ; 4 uses
  %i.pc = load i32, ptr %i.pb, align 1            ; 3 uses
  %.not170 = icmp eq i32 %i.pc, 0
  br i1 %.not170, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pd = icmp sgt i32 %i.pc, 1024
  br i1 %i.pd, label %bb.at, label %bb.cr

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  store ptr %i.bz, ptr %21, align 8
  %i.pe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03356) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.pe, ptr %i.c, align 8
  %i.pf = icmp ugt i64 %i.pe, 15
  br i1 %i.pf, label %.noexc.i585, label %._crit_edge.i.i584

.noexc.i585:                                      ; preds = %bb.at
  %i.pg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc587 unwind label %.loopexit822 ; 2 uses

.noexc587:                                        ; preds = %.noexc.i585
  store ptr %i.pg, ptr %21, align 8
  %i.ph = load i64, ptr %i.c, align 8
  store i64 %i.ph, ptr %i.bz, align 8
  br label %._crit_edge.i.i584

._crit_edge.i.i584:                               ; preds = %.noexc587, %bb.at
  %i.pi = phi ptr [ %i.pg, %.noexc587 ], [ %i.bz, %bb.at ] ; 2 uses
  switch i64 %i.pe, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i584
  %i.pj = load i8, ptr %.03356, align 1
  store i8 %i.pj, ptr %i.pi, align 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i584
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pi, ptr nonnull align 1 %.03356, i64 %i.pe, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i584
  %i.pk = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.pk, ptr %i.ca, align 8
  %i.pl = load ptr, ptr %21, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pk
  store i8 0, ptr %i.pm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.pn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.50, i64 noundef 9)
          to label %.noexc591 unwind label %bb.co ; 6 uses

.noexc591:                                        ; preds = %bb.aw
  store ptr %i.cb, ptr %20, align 8, !alias.scope !233
  %i.po = load ptr, ptr %i.pn, align 8            ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 16 ; 5 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589

bb.ax:                                            ; preds = %.noexc591
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.ps = load i64, ptr %i.pr, align 8            ; 3 uses
  %i.pt = icmp ult i64 %i.ps, 16
  call void @llvm.assume(i1 %i.pt)
  %i.pu = add nuw nsw i64 %i.ps, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.pp, i64 %i.pu, i1 false)
  br label %.noexc.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589: ; preds = %.noexc591
  store ptr %i.po, ptr %20, align 8, !alias.scope !233
  %i.pv = load i64, ptr %i.pp, align 8
  store i64 %i.pv, ptr %i.cb, align 8, !alias.scope !233
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %.pre.i590 = load i64, ptr %.phi.trans.insert.i, align 8
  br label %.noexc.i593

.noexc.i593:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589, %bb.ax
  %i.pw = phi i64 [ %i.ps, %bb.ax ], [ %.pre.i590, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589 ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i64 %i.pw, ptr %i.cc, align 8, !alias.scope !233
  store ptr %i.pp, ptr %i.pn, align 8
  store i64 0, ptr %i.px, align 8
  store i8 0, ptr %i.pp, align 8
  %i.py = load i32, ptr %i.pb, align 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.cd, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 16, ptr %i.b, align 8
  %i.pz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc594 unwind label %bb.cp ; 2 uses

.noexc594:                                        ; preds = %.noexc.i593
  store ptr %i.pz, ptr %22, align 8
  %i.qa = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.qa, ptr %i.cd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.pz, ptr noundef nonnull align 1 dereferenceable(16) @.str.51, i64 16, i1 false)
  store i64 %i.qa, ptr %i.ce, align 8
  %i.qb = load ptr, ptr %22, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.qa
  store i8 0, ptr %i.qc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.qd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc598 unwind label %bb.cq

.noexc598:                                        ; preds = %.noexc594
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.qe = load ptr, ptr %20, align 8, !noalias !236
  %i.qf = load i64, ptr %i.cc, align 8, !noalias !236 ; 3 uses
  store ptr %i.cf, ptr %8, align 8, !alias.scope !239
  store i64 0, ptr %i.cg, align 8, !alias.scope !239
  store i8 0, ptr %i.cf, align 8, !alias.scope !239
  %i.qg = add i64 %i.qf, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.qg)
          to label %bb.ay unwind label %.loopexit827

bb.ay:                                            ; preds = %.noexc598
  %i.qh = load i64, ptr %i.cg, align 8, !alias.scope !239
  %i.qi = add i64 %i.qh, -4611686018427387886
  %i.qj = icmp ult i64 %i.qi, 18
  br i1 %i.qj, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.ay
  %i.qk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.87, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit827 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ql = load i64, ptr %i.cg, align 8, !alias.scope !239
  %i.qm = sub i64 4611686018427387903, %i.ql
  %i.qn = icmp ult i64 %i.qm, %i.qf
  br i1 %i.qn, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #25
          to label %.cont.i.i.i unwind label %.loopexit.split-lp828

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.qo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.qe, i64 noundef %i.qf)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i unwind label %.loopexit827 ; 0 uses

.loopexit827:                                     ; preds = %.noexc598, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %lpad.loopexit829 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp828:                            ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp830 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp828, %.loopexit827
  %lpad.phi831 = phi { ptr, i32 } [ %lpad.loopexit829, %.loopexit827 ], [ %lpad.loopexit.split-lp830, %.loopexit.split-lp828 ] ; 2 uses
  %i.qp = load ptr, ptr %8, align 8, !alias.scope !239 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.cf
  br i1 %i.qq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.az
  %i.qr = load i64, ptr %i.cf, align 8, !alias.scope !239
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #24
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.qt = load i64, ptr %i.cg, align 8, !noalias !242
  %i.qu = add i64 %i.qt, -4611686018427387899
  %i.qv = icmp ult i64 %i.qu, 5
  br i1 %i.qv, label %bb.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #25
          to label %.noexc.i597 unwind label %.loopexit.split-lp833

.noexc.i597:                                      ; preds = %bb.ba
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %i.qw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.88, i64 noundef 5)
          to label %.noexc18.i unwind label %.loopexit832 ; 6 uses

.noexc18.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.ch, ptr %7, align 8, !alias.scope !242
  %i.qx = load ptr, ptr %i.qw, align 8            ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 5 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bb:                                            ; preds = %.noexc18.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load i64, ptr %i.ra, align 8            ; 3 uses
  %i.rc = icmp ult i64 %i.rb, 16
  call void @llvm.assume(i1 %i.rc)
  %i.rd = add nuw nsw i64 %i.rb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.qy, i64 %i.rd, i1 false)
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc18.i
  store ptr %i.qx, ptr %7, align 8, !alias.scope !242
  %i.re = load i64, ptr %i.qy, align 8
  store i64 %i.re, ptr %i.ch, align 8, !alias.scope !242
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bb
  %i.rf = phi i64 [ %i.rb, %bb.bb ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i64 %i.rf, ptr %i.ci, align 8, !alias.scope !242
  store ptr %i.qy, ptr %i.qw, align 8
  store i64 0, ptr %i.rg, align 8
  store i8 0, ptr %i.qy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.rh = call i32 @llvm.abs.i32(i32 %i.py, i1 false) ; 5 uses
  %i.ri = icmp ult i32 %i.rh, 10
  br i1 %i.ri, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %bb.bi
  %.02230.i.i.i = phi i32 [ %i.rp, %bb.bi ], [ %i.rh, %bb.bc ] ; 5 uses
  %.02329.i.i.i = phi i32 [ %i.rq, %bb.bi ], [ 1, %bb.bc ] ; 4 uses
  %i.rj = icmp ult i32 %.02230.i.i.i, 100
  br i1 %i.rj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  %i.rk = add i32 %.02329.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.rl = icmp ult i32 %.02230.i.i.i, 1000
  br i1 %i.rl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rm = add i32 %.02329.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.rn = icmp ult i32 %.02230.i.i.i, 10000
  br i1 %i.rn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ro = add i32 %.02329.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.rp = udiv i32 %.02230.i.i.i, 10000
  %i.rq = add i32 %.02329.i.i.i, 4                ; 2 uses
  %i.rr = icmp ult i32 %.02230.i.i.i, 100000
  br i1 %i.rr, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.bd, %bb.bc
  %.0.i.i.i = phi i32 [ %i.ro, %bb.bh ], [ %i.rk, %bb.bd ], [ %i.rm, %bb.bf ], [ 1, %bb.bc ], [ %i.rq, %bb.bi ] ; 2 uses
  %.lobit.i.i = lshr i32 %i.py, 31                ; 2 uses
  %i.rs = add i32 %.0.i.i.i, %.lobit.i.i
  %i.rt = zext i32 %i.rs to i64
  store ptr %i.cj, ptr %9, align 8, !alias.scope !245
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.rt, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.ru = zext nneg i32 %.lobit.i.i to i64
  %i.rv = load ptr, ptr %9, align 8, !alias.scope !245
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ru ; 4 uses
  %i.rx = icmp ugt i32 %i.rh, 99
  br i1 %i.rx, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.ry = add i32 %.0.i.i.i, -1
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.sb, %.lr.ph.i11.i.i ], [ %i.rh, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.sm, %.lr.ph.i11.i.i ], [ %i.ry, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.rz = urem i32 %.020.i.i.i, 100
  %i.sa = shl nuw nsw i32 %i.rz, 1
end_hunk_5
begin_hunk_6_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader19read_sequence_infosEv:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

.loopexit857:                                     ; preds = %.critedge.i66.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i61.i
  %lpad.loopexit859 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

.loopexit.split-lp858:                            ; preds = %bb.ch
  %lpad.loopexit.split-lp860 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

.loopexit862:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i73.i
  %lpad.loopexit864 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

.loopexit.split-lp863:                            ; preds = %bb.cj
  %lpad.loopexit.split-lp865 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

bb.cn:                                            ; preds = %bb.cl
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = load ptr, ptr %1, align 8               ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.cx
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %bb.cn
  %i.zy = load i64, ptr %i.cx, align 8
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i: ; preds = %bb.cn, %.loopexit862, %.loopexit.split-lp863, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i
  %.pn.i = phi { ptr, i32 } [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %lpad.loopexit.split-lp865, %.loopexit.split-lp863 ], [ %lpad.loopexit864, %.loopexit862 ], [ %i.zv, %bb.cn ] ; 2 uses
  %i.aaa = load ptr, ptr %2, align 8              ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.cv
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i
  %i.aac = load i64, ptr %i.cv, align 8
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, %.loopexit857, %.loopexit.split-lp858, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i ], [ %lpad.loopexit.split-lp860, %.loopexit.split-lp858 ], [ %lpad.loopexit859, %.loopexit857 ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i ] ; 2 uses
  %i.aae = load ptr, ptr %10, align 8             ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.ct
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i
  %i.aag = load i64, ptr %i.ct, align 8
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aai = load ptr, ptr %3, align 8              ; 2 uses
  %i.aaj = icmp eq ptr %i.aai, %i.cr
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i
  %i.aak = load i64, ptr %i.cr, align 8
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aai, i64 noundef %i.aal) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, %.loopexit852, %.loopexit.split-lp853, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i ], [ %lpad.loopexit.split-lp855, %.loopexit.split-lp853 ], [ %lpad.loopexit854, %.loopexit852 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i ] ; 2 uses
  %i.aam = load ptr, ptr %4, align 8              ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.cp
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i
  %i.aao = load i64, ptr %i.cp, align 8
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, %.loopexit847, %.loopexit.split-lp848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121.i ], [ %lpad.loopexit.split-lp850, %.loopexit.split-lp848 ], [ %lpad.loopexit849, %.loopexit847 ], [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i ] ; 2 uses
  %i.aaq = load ptr, ptr %5, align 8              ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, %i.cn
  br i1 %i.aar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i
  %i.aas = load i64, ptr %i.cn, align 8
  %i.aat = add i64 %i.aas, 1
  call void @_ZdlPvm(ptr noundef %i.aaq, i64 noundef %i.aat) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, %.loopexit842, %.loopexit.split-lp843, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.i ], [ %lpad.loopexit.split-lp845, %.loopexit.split-lp843 ], [ %lpad.loopexit844, %.loopexit842 ], [ %.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i ] ; 2 uses
  %i.aau = load ptr, ptr %6, align 8              ; 2 uses
  %i.aav = icmp eq ptr %i.aau, %i.cl
  br i1 %i.aav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i
  %i.aaw = load i64, ptr %i.cl, align 8
  %i.aax = add i64 %i.aaw, 1
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i, %.loopexit837, %.loopexit.split-lp838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i ], [ %lpad.loopexit.split-lp840, %.loopexit.split-lp838 ], [ %lpad.loopexit839, %.loopexit837 ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.i ] ; 2 uses
  %i.aay = load ptr, ptr %9, align 8              ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.cj
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i
  %i.aba = load i64, ptr %i.cj, align 8
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.abc = load ptr, ptr %7, align 8              ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.ch
  br i1 %i.abd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i
  %i.abe = load i64, ptr %i.ch, align 8
  %i.abf = add i64 %i.abe, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, %.loopexit832, %.loopexit.split-lp833, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i ], [ %lpad.loopexit.split-lp835, %.loopexit.split-lp833 ], [ %lpad.loopexit834, %.loopexit832 ], [ %.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i ]
  %i.abg = load ptr, ptr %8, align 8              ; 2 uses
  %i.abh = icmp eq ptr %i.abg, %i.cf
  br i1 %i.abh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i
  %i.abi = load i64, ptr %i.cf, align 8
  %i.abj = add i64 %i.abi, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.abk = load ptr, ptr %22, align 8             ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.cd
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107.i
  %i.abm = load i64, ptr %i.cd, align 8
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.abo = load ptr, ptr %20, align 8             ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.cb
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601
  %i.abq = load i64, ptr %i.cb, align 8
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit601, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i602
  %i.abs = load ptr, ptr %21, align 8             ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.bz
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604
  %i.abu = load i64, ptr %i.bz, align 8
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit604, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i605
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %.pre3746 = load i32, ptr %i.pb, align 1
  br label %bb.cr

.loopexit822:                                     ; preds = %.noexc.i585
  %lpad.loopexit824 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616

bb.co:                                            ; preds = %bb.aw
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613

bb.cp:                                            ; preds = %.noexc.i593
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

bb.cq:                                            ; preds = %.noexc594
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, %bb.cq
  %eh.lpad-body = phi { ptr, i32 } [ %i.aby, %bb.cq ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i ], [ %lpad.phi831, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %lpad.phi831, %bb.az ] ; 2 uses
  %i.abz = load ptr, ptr %22, align 8             ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.cd
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608: ; preds = %.body
  %i.acb = load i64, ptr %i.cd, align 8
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608, %bb.cp
  %.pn171 = phi { ptr, i32 } [ %i.abx, %bb.cp ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i608 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.acd = load ptr, ptr %20, align 8             ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.cb
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %i.acf = load i64, ptr %i.cb, align 8
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611, %bb.co
  %.pn171.pn = phi { ptr, i32 } [ %i.abw, %bb.co ], [ %.pn171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i611 ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610 ] ; 2 uses
  %i.ach = load ptr, ptr %21, align 8             ; 2 uses
  %i.aci = icmp eq ptr %i.ach, %i.bz
  br i1 %i.aci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613
  %i.acj = load i64, ptr %i.bz, align 8
  %i.ack = add i64 %i.acj, 1
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.ack) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, %.loopexit822, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614 ], [ %lpad.loopexit824, %.loopexit822 ], [ %.pn171.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dt

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, %bb.as
  %i.acl = phi i32 [ %.pre3746, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607 ], [ %i.pc, %bb.as ]
  %i.acm = getelementptr inbounds nuw i8, ptr %.03356, i64 52
  %i.acn = load i32, ptr %i.acm, align 1
  %i.aco = invoke noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_13AnimEvent_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i32 noundef %i.acn, i32 noundef %i.acl)
          to label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit unwind label %bb.cz

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit: ; preds = %bb.cr
  %i.acp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %._crit_edge.i.i618 unwind label %.loopexit867 ; 8 uses

._crit_edge.i.i618:                               ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr %i.cz, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cz, ptr noundef nonnull align 1 dereferenceable(15) @.str.52, i64 15, i1 false)
  store i64 15, ptr %i.da, align 8
  store i8 0, ptr %i.dq, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.acp, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cs unwind label %bb.da

bb.cs:                                            ; preds = %._crit_edge.i.i618
  %i.acq = load ptr, ptr %23, align 8             ; 2 uses
  %i.acr = icmp eq ptr %i.acq, %i.cz
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %bb.cs
  %i.acs = load i64, ptr %i.cz, align 8
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acq, i64 noundef %i.act) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %.not.i625 = icmp eq ptr %.sroa.14.2, %.sroa.26.6
  br i1 %.not.i625, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
  store ptr %i.acp, ptr %.sroa.14.2, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
  %i.acu = ptrtoint ptr %.sroa.26.6 to i64
  %i.acv = ptrtoint ptr %.sroa.0781.6 to i64
  %i.acw = sub i64 %i.acu, %i.acv                 ; 6 uses
  %i.acx = icmp eq i64 %i.acw, 9223372036854775800
  br i1 %i.acx, label %bb.cv, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc632 unwind label %.loopexit.split-lp868

.noexc632:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626: ; preds = %bb.cu
  %i.acy = ashr exact i64 %i.acw, 3               ; 3 uses
  %.sroa.speculated.i.i.i627 = call i64 @llvm.umax.i64(i64 %i.acy, i64 1)
  %i.acz = add nsw i64 %.sroa.speculated.i.i.i627, %i.acy ; 2 uses
  %i.ada = icmp ult i64 %i.acz, %i.acy
  %i.adb = call i64 @llvm.umin.i64(i64 %i.acz, i64 1152921504606846975)
  %i.adc = select i1 %i.ada, i64 1152921504606846975, i64 %i.adb ; 3 uses
  %.not.i.i.i628 = icmp ne i64 %i.adc, 0
  call void @llvm.assume(i1 %.not.i.i.i628)
  %i.add = shl nuw nsw i64 %i.adc, 3
  %i.ade = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.add) #26
          to label %.noexc633 unwind label %.loopexit867 ; 4 uses

.noexc633:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626
  %i.adf = getelementptr inbounds i8, ptr %i.ade, i64 %i.acw ; 2 uses
  store ptr %i.acp, ptr %i.adf, align 8
  %i.adg = icmp sgt i64 %i.acw, 0
  br i1 %i.adg, label %bb.cw, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i629

bb.cw:                                            ; preds = %.noexc633
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ade, ptr align 8 %.sroa.0781.6, i64 %i.acw, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i629

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i629: ; preds = %bb.cw, %.noexc633
  %.not.i17.i.i630 = icmp eq ptr %.sroa.0781.6, null
  br i1 %.not.i17.i.i630, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i629
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0781.6, i64 noundef %i.acw) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631: ; preds = %bb.cx, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i629
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %i.adc
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631, %bb.ct
  %.sroa.26.12 = phi ptr [ %i.adh, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631 ], [ %.sroa.26.6, %bb.ct ] ; 9 uses
  %.pn815 = phi ptr [ %i.adf, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631 ], [ %.sroa.14.2, %bb.ct ]
  %.sroa.0781.12 = phi ptr [ %i.ade, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i631 ], [ %.sroa.0781.6, %bb.ct ] ; 9 uses
  %.sroa.14.6 = getelementptr inbounds nuw i8, ptr %.pn815, i64 8 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acp, i64 1096
  store ptr %i.ed, ptr %i.adi, align 8
  %i.adj = load i32, ptr %i.pb, align 1           ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acp, i64 1104 ; 2 uses
  store i32 %i.adj, ptr %i.adk, align 8
  %i.adl = zext i32 %i.adj to i64
  %i.adm = shl nuw nsw i64 %i.adl, 3
  %i.adn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.adm) #26
          to label %bb.cy unwind label %.loopexit867

bb.cy:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acp, i64 1112 ; 2 uses
  store ptr %i.adn, ptr %i.ado, align 8
  %.not3361 = icmp eq i32 %i.adj, 0
  br i1 %.not3361, label %.loopexit, label %.lr.ph3350

bb.cz:                                            ; preds = %bb.cr
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit867:                                     ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626
  %.sroa.26.7.ph = phi ptr [ %.sroa.26.6, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit ], [ %.sroa.26.6, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626 ], [ %.sroa.26.12, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634 ]
  %.sroa.0781.7.ph = phi ptr [ %.sroa.0781.6, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_13AnimEvent_HL1EEEPKT_ii.exit ], [ %.sroa.0781.6, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i626 ], [ %.sroa.0781.12, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit634 ]
  %lpad.loopexit869 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp868:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp870 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.da:                                            ; preds = %._crit_edge.i.i618
  %i.adq = landingpad { ptr, i32 }
          cleanup
  %i.adr = load ptr, ptr %23, align 8             ; 2 uses
  %i.ads = icmp eq ptr %i.adr, %i.cz
  br i1 %i.ads, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635: ; preds = %bb.da
  %i.adt = load i64, ptr %i.cz, align 8
  %i.adu = add i64 %i.adt, 1
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 1144) #24
  br label %bb.dt

.lr.ph3350:                                       ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701
  %indvars.iv3713 = phi i64 [ %indvars.iv.next3714, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ], [ 0, %bb.cy ] ; 2 uses
  %.0903348 = phi ptr [ %i.agl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ], [ %i.aco, %bb.cy ] ; 4 uses
  %i.adv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.db unwind label %bb.dm     ; 5 uses

bb.db:                                            ; preds = %.lr.ph3350
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.adv)
          to label %bb.dc unwind label %bb.dn

bb.dc:                                            ; preds = %bb.db
  %i.adw = load ptr, ptr %i.ado, align 8
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %indvars.iv3713
  store ptr %i.adv, ptr %i.adx, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 1096
  store ptr %i.acp, ptr %i.ady, align 8
  %i.adz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc639 unwind label %bb.do ; 5 uses

.noexc639:                                        ; preds = %bb.dc
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8 ; 2 uses
  store i32 3, ptr %i.adz, align 8
  %i.aeb = invoke noalias noundef nonnull dereferenceable(3084) ptr @_Znam(i64 noundef 3084) #26
          to label %.noexc640 unwind label %bb.do ; 8 uses

.noexc640:                                        ; preds = %.noexc639
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3084) %i.aeb, i8 0, i64 3084, i1 false)
  store ptr %i.aeb, ptr %i.aea, align 8
  %i.aec = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znam(i64 noundef 48) #26
          to label %.thread28.i652 unwind label %bb.do ; 8 uses

.thread28.i652:                                   ; preds = %.noexc640
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  store ptr null, ptr %i.aed, align 8
  %.ptr818.1 = getelementptr inbounds nuw i8, ptr %i.aec, i64 16 ; 2 uses
  store i32 10, ptr %.ptr818.1, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  store ptr null, ptr %i.aee, align 8
  %.ptr818.2 = getelementptr inbounds nuw i8, ptr %i.aec, i64 32
  store i32 10, ptr %.ptr818.2, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 40
  store ptr null, ptr %i.aef, align 8
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adz, i64 16 ; 3 uses
  store ptr %i.aec, ptr %i.aeg, align 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adv, i64 1136
  store ptr %i.adz, ptr %i.aeh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %i.db, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.db, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  store i64 5, ptr %i.dc, align 8
  store i8 0, ptr %i.dr, align 1
  store i32 5, ptr %i.aeb, align 4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.aei, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeb, i64 9
  store i8 0, ptr %i.aej, align 1
  store i32 1, ptr %i.aec, align 8
  %.pre.i653 = load i32, ptr %.0903348, align 4
  %i.aek = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.thread28.i668 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704 ; 2 uses

.thread28.i668:                                   ; preds = %.thread28.i652
  store i32 %.pre.i653, ptr %i.aek, align 4
  store ptr %i.aek, ptr %i.aed, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %i.dd, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dd, ptr noundef nonnull align 1 dereferenceable(11) @.str.54, i64 11, i1 false)
  store i64 11, ptr %i.de, align 8
  store i8 0, ptr %i.ds, align 1
  %i.ael = getelementptr inbounds nuw i8, ptr %.0903348, i64 4
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1028
  store i32 11, ptr %i.aem, align 4
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.aen, ptr noundef nonnull align 1 dereferenceable(11) @.str.54, i64 11, i1 false)
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1043
  store i8 0, ptr %i.aeo, align 1
  store i32 1, ptr %.ptr818.1, align 8
  %.pre.i669 = load i32, ptr %i.ael, align 4
  %i.aep = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674: ; preds = %.thread28.i668
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  store i32 %.pre.i669, ptr %i.aep, align 4
  store ptr %i.aep, ptr %i.aeq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store ptr %i.df, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.df, ptr noundef nonnull align 1 dereferenceable(7) @.str.55, i64 7, i1 false)
  store i64 7, ptr %i.dg, align 8
  store i8 0, ptr %i.dt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.aer = getelementptr inbounds nuw i8, ptr %.0903348, i64 12 ; 3 uses
  store ptr %i.dh, ptr %28, align 8
  %i.aes = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aer) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.aes, ptr %i.a, align 8
  %i.aet = icmp ugt i64 %i.aes, 15
  br i1 %i.aet, label %.noexc.i680, label %._crit_edge.i.i679

.noexc.i680:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674
  %i.aeu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc681 unwind label %bb.dp ; 2 uses

.noexc681:                                        ; preds = %.noexc.i680
  store ptr %i.aeu, ptr %28, align 8
  %i.aev = load i64, ptr %i.a, align 8
  store i64 %i.aev, ptr %i.dh, align 8
  br label %._crit_edge.i.i679

._crit_edge.i.i679:                               ; preds = %.noexc681, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674
  %i.aew = phi ptr [ %i.aeu, %.noexc681 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674 ] ; 2 uses
  switch i64 %i.aes, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %bb.df
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i679
  %i.aex = load i8, ptr %i.aer, align 1
  store i8 %i.aex, ptr %i.aew, align 1
  br label %bb.df

bb.de:                                            ; preds = %._crit_edge.i.i679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aew, ptr nonnull align 1 %i.aer, i64 %i.aes, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %._crit_edge.i.i679
  %i.aey = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.aey, ptr %i.di, align 8
  %i.aez = load ptr, ptr %28, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aey
  store i8 0, ptr %i.afa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.afb = load i64, ptr %i.di, align 8           ; 2 uses
  %i.afc = trunc i64 %i.afb to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.dj, i8 0, i64 1024, i1 false)
  %i.afd = and i64 %i.afb, 4294966272
  %.not.i683 = icmp eq i64 %i.afd, 0
  %spec.select.i684 = select i1 %.not.i683, i32 %i.afc, i32 1023 ; 4 uses
  store i32 %spec.select.i684, ptr %27, align 4
  %i.afe = load ptr, ptr %28, align 8
  %i.aff = zext i32 %spec.select.i684 to i64      ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr align 1 %i.afe, i64 %i.aff, i1 false)
  %i.afg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.aff
  store i8 0, ptr %i.afg, align 1
  %i.afh = load i32, ptr %i.adz, align 8
  %.not.i685 = icmp ugt i32 %i.afh, 2
  br i1 %.not.i685, label %bb.dg, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695

bb.dg:                                            ; preds = %bb.df
  %i.afi = load i64, ptr %i.dg, align 8           ; 5 uses
  %i.afj = icmp eq i64 %i.afi, 0
  br i1 %i.afj, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.afk = icmp ugt i64 %i.afi, 1023
  br i1 %i.afk, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i687, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.afl = load ptr, ptr %i.aea, align 8          ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 2056
  %i.afn = trunc nuw nsw i64 %i.afi to i32
  store i32 %i.afn, ptr %i.afm, align 4
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 2060 ; 2 uses
  %i.afp = load ptr, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.afo, ptr align 1 %i.afp, i64 %i.afi, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afi
  store i8 0, ptr %i.afq, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i687

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i687: ; preds = %bb.di, %bb.dh
  %i.afr = load ptr, ptr %i.aeg, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  store i32 5, ptr %i.afs, align 8
  %i.aft = load ptr, ptr %i.aeg, align 8          ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 40 ; 2 uses
  %i.afv = load ptr, ptr %i.afu, align 8          ; 4 uses
  %.not24.i688 = icmp eq ptr %i.afv, null
  br i1 %.not24.i688, label %.thread29.i691, label %bb.dj

bb.dj:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i687
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 32
  %i.afx = load i32, ptr %i.afw, align 8
  %.not25.i689 = icmp eq i32 %i.afx, 7
  br i1 %.not25.i689, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.afv, ptr noundef nonnull align 4 dereferenceable(1028) %27, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695

bb.dl:                                            ; preds = %bb.dj
  store i32 %spec.select.i684, ptr %i.afv, align 4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.afy, ptr nonnull align 4 %i.dj, i64 %i.aff, i1 false)
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 %i.aff
  store i8 0, ptr %i.afz, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695

.thread29.i691:                                   ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i687
  %i.aga = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #26
          to label %.noexc694 unwind label %bb.dq ; 3 uses

.noexc694:                                        ; preds = %.thread29.i691
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.agb, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i684, ptr %i.aga, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.agb, ptr nonnull align 4 %i.dj, i64 %i.aff, i1 false)
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.aff
  store i8 0, ptr %i.agc, align 1
  store ptr %i.aga, ptr %i.afu, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695: ; preds = %.noexc694, %bb.dl, %bb.dk, %bb.dg, %bb.df
  %i.agd = load ptr, ptr %28, align 8             ; 2 uses
  %i.age = icmp eq ptr %i.agd, %i.dh
  br i1 %i.age, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696: ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695
  %i.agf = load i64, ptr %i.dh, align 8
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agd, i64 noundef %i.agg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698: ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit695, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.agh = load ptr, ptr %26, align 8             ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.df
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698
  %i.agj = load i64, ptr %i.df, align 8
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i699
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %indvars.iv.next3714 = add nuw nsw i64 %indvars.iv3713, 1 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.0903348, i64 76
  %i.agm = load i32, ptr %i.adk, align 8
  %i.agn = zext i32 %i.agm to i64
  %i.ago = icmp samesign ult i64 %indvars.iv.next3714, %i.agn
  br i1 %i.ago, label %.lr.ph3350, label %.loopexit, !llvm.loop !269

bb.dm:                                            ; preds = %.lr.ph3350
  %i.agp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dn:                                            ; preds = %bb.db
  %i.agq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef 1144) #24
  br label %bb.dt

bb.do:                                            ; preds = %.noexc640, %.noexc639, %bb.dc
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704: ; preds = %.thread28.i652
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.dt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707: ; preds = %.thread28.i668
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.dt

bb.dp:                                            ; preds = %.noexc.i680
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

bb.dq:                                            ; preds = %.thread29.i691
  %i.agv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agw = load ptr, ptr %28, align 8             ; 2 uses
  %i.agx = icmp eq ptr %i.agw, %i.dh
  br i1 %i.agx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708: ; preds = %bb.dq
  %i.agy = load i64, ptr %i.dh, align 8
  %i.agz = add i64 %i.agy, 1
  call void @_ZdlPvm(ptr noundef %i.agw, i64 noundef %i.agz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708, %bb.dp
  %.pn182 = phi { ptr, i32 } [ %i.agu, %bb.dp ], [ %i.agv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708 ], [ %i.agv, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.aha = load ptr, ptr %26, align 8             ; 2 uses
  %i.ahb = icmp eq ptr %i.aha, %i.df
  br i1 %i.ahb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710
  %i.ahc = load i64, ptr %i.df, align 8
  %i.ahd = add i64 %i.ahc, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.dt

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701, %bb.cy, %bb.ar, %.loopexit820
  %.sroa.26.9 = phi ptr [ %.sroa.26.6, %bb.ar ], [ %.sroa.26.6, %.loopexit820 ], [ %.sroa.26.12, %bb.cy ], [ %.sroa.26.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ] ; 3 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.2, %bb.ar ], [ %.sroa.14.2, %.loopexit820 ], [ %.sroa.14.6, %bb.cy ], [ %.sroa.14.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ] ; 3 uses
  %.sroa.0781.9 = phi ptr [ %.sroa.0781.6, %bb.ar ], [ %.sroa.0781.6, %.loopexit820 ], [ %.sroa.0781.12, %bb.cy ], [ %.sroa.0781.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ] ; 8 uses
  %.not177 = icmp eq ptr %.sroa.14.3, %.sroa.0781.9
  br i1 %.not177, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.loopexit
  %i.ahe = ptrtoint ptr %.sroa.0781.9 to i64
  %i.ahf = ptrtoint ptr %.sroa.14.3 to i64
end_hunk_6
begin_hunk_7_@"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_0clEis":bb.a
  %7 = alloca %"class.std::allocator.43", align 1 ; 4 uses
  store i32 %0, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %i.g, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !383

_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit

_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp slt i32 %0, %i.k
  br i1 %.not, label %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread, label %.lr.ph.i.i.i.i

_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 %1, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  store i32 %0, ptr %4, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = load <2 x ptr>, ptr %i.r, align 8
  store <2 x ptr> %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  store ptr null, ptr %i.m, align 8
  store ptr %i.o, ptr %i.r, align 8
  store ptr %i.o, ptr %i.t, align 8
  store i64 0, ptr %i.w, align 8
  br label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.c:                                             ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit.thread
  store i32 0, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.l, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.l, ptr %i.aa, align 8
  br label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %i.x, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %.sink, ptr %i.ab, align 8
  %i.ac = invoke { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit unwind label %bb.f ; 0 uses

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit: ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.af)
          to label %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit:  ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE6insertEOS8_.exit
  %i.ai = load ptr, ptr %i.m, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ai)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

bb.f:                                             ; preds = %_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEEC2IRiS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.al

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNKSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5countERS7_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp slt i32 %i.an, %0                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !216

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.ap, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp slt i32 %0, %i.ar
  br i1 %i.as, label %.critedge.i, label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.g, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE11lower_boundERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit: ; preds = %bb.g, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.at, %.critedge.i ], [ %.19.i.i.i.i, %bb.g ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.au, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit, %.lr.ph.i.i.i7
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i7 ], [ %.02022.i.i.i, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  %i.ay = icmp slt i16 %1, %i.ax                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.ay, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i8, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i7, !llvm.loop !384

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i7
  br i1 %i.ay, label %._crit_edge.thread.i.i.i, label %bb.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.av, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEEixERS7_.exit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %.019.lcssa29.i.i.i, %i.ba
  br i1 %i.bb, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.bd = phi i16 [ %.pre.i.i, %bb.h ], [ %i.ax, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.h ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.be = icmp slt i16 %i.bd, %1
  br i1 %i.be, label %select.unfold.i.i, label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

select.unfold.i.i:                                ; preds = %bb.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.i ] ; 3 uses
  %i.bf = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.av
  br i1 %i.bf, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %select.unfold.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = icmp slt i16 %1, %i.bh
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.j, %select.unfold.i.i
  %i.bj = phi i1 [ %i.bi, %bb.j ], [ true, %select.unfold.i.i ]
  %i.bk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i16 %1, ptr %i.bl, align 2
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.av) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit:      ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.i, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEvENK3$_1clERKNS1_7TrivertEi"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.115", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %5 = alloca %"struct.std::pair.93", align 8     ; 15 uses
  %6 = alloca %"class.std::set", align 8          ; 11 uses
  %i.a = alloca [1 x i16], align 2                ; 5 uses
  %7 = alloca %"struct.std::less", align 1        ; 4 uses
  %8 = alloca %"class.std::allocator.43", align 1 ; 4 uses
  %i.b = load <4 x i16>, ptr %1, align 1          ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !114 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i16                    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !align !114 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 10
  %i.u = trunc i64 %i.t to i16                    ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.aa = extractelement <4 x i16> %i.b, i64 0    ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %.lr.ph.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp slt i16 %i.ac, %i.aa               ; 2 uses
  %.19.i.i.i = select i1 %i.ad, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ae = icmp eq ptr %.19.i.i.i, %i.z
  br i1 %i.ae, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ag = load i16, ptr %i.af, align 2
  %.not = icmp slt i16 %i.aa, %i.ag
  br i1 %.not, label %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread, label %.lr.ph.i.i.i.i

_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 %i.u, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull %i.a, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %i.ah = load i16, ptr %1, align 2
  store i16 %i.ah, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = load <2 x ptr>, ptr %i.ao, align 8
  store <2 x ptr> %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ai, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  store ptr null, ptr %i.aj, align 8
  store ptr %i.al, ptr %i.ao, align 8
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.at, align 8
  br label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

bb.c:                                             ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit.thread
  store i32 0, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ai, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ai, ptr %i.ax, align 8
  br label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit

_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %i.au, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sink, ptr %i.ay, align 8
  %i.az = invoke { ptr, i8 } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit unwind label %bb.f ; 0 uses

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit: ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef %i.bc)
          to label %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #27
  unreachable

_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit:  ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE6insertEOS7_.exit
  %i.bf = load ptr, ptr %i.aj, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.bf)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

bb.f:                                             ; preds = %_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEEC2IRS0_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #23
  call void @_ZNSt3setIsSt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.bi

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNKSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5countERS6_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = icmp slt i16 %i.bk, %i.aa               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bl, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bl, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !207

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bm = icmp eq ptr %.19.i.i.i.i, %i.z
  br i1 %i.bm, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = icmp slt i16 %i.aa, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit

.critedge.i:                                      ; preds = %bb.g, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE11lower_boundERS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bq = call ptr @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit: ; preds = %bb.g, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.bq, %.critedge.i ], [ %.19.i.i.i.i, %bb.g ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.br, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit, %.lr.ph.i.i.i12
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i12 ], [ %.02022.i.i.i, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bu = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.bv = icmp sgt i16 %i.bu, %i.u                ; 2 uses
  %.in.v.i.i.i = select i1 %i.bv, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i13, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i12, !llvm.loop !384

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i12
  br i1 %i.bv, label %._crit_edge.thread.i.i.i, label %bb.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bs, %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixERS6_.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %.019.lcssa29.i.i.i, %i.bx
  br i1 %i.by, label %select.unfold.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %i.ca = phi i16 [ %.pre.i.i, %bb.h ], [ %i.bu, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.h ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.cb = icmp slt i16 %i.ca, %i.u
  br i1 %i.cb, label %select.unfold.i.i, label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

select.unfold.i.i:                                ; preds = %bb.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.i ] ; 3 uses
  %i.cc = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bs
  br i1 %i.cc, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %select.unfold.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = icmp sgt i16 %i.ce, %i.u
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.j, %select.unfold.i.i
  %i.cg = phi i1 [ %i.cf, %bb.j ], [ true, %select.unfold.i.i ]
  %i.ch = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i16 %i.u, ptr %i.ci, align 2
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bs) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 80 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8
  br label %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit

_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit:      ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.i, %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit
  %i.cm = load ptr, ptr %i.l, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit
  store <4 x i16> %i.b, ptr %i.co, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i16 %i.k, ptr %.sroa.9.0..sroa_idx, align 2
  %i.cr = load ptr, ptr %i.cn, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 10
  store ptr %i.cs, ptr %i.cn, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %_ZNSt3setIsSt4lessIsESaIsEE6insertERKs.exit
  %i.ct = load ptr, ptr %i.cm, align 8            ; 5 uses
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.m, label %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.cy = sdiv exact i64 %i.cw, 10                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 922337203685477580)
  %i.dc = select i1 %i.da, i64 922337203685477580, i64 %i.db ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.dd = mul nuw nsw i64 %i.dc, 10
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #26 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 2 uses
  store <4 x i16> %i.b, ptr %i.df, align 2
  %.sroa.9.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i16 %i.k, ptr %.sroa.9.0..sroa_idx37, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.ct, %i.co
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %i.ct, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.0911.i.i.i.i.i, i64 10, i1 false), !alias.scope !385
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 10 ; 2 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.dg, %i.co
  br i1 %.not.i.i.i.i.i15, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !389

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.de, %_ZNKSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 10
  %.not.i23.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.de, ptr %i.cm, align 8
  store ptr %i.di, ptr %i.cn, align 8
  %i.dj = getelementptr inbounds nuw [10 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dj, ptr %i.cp, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.dk = load ptr, ptr %0, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %.not.i16 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit
  store i16 %i.u, ptr %i.dm, align 2
  %i.dp = load ptr, ptr %i.dl, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store ptr %i.dq, ptr %i.dl, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE9push_backERKS3_.exit
  %i.dr = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775806
  br i1 %i.dv, label %bb.q, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dw = ashr exact i64 %i.du, 1                 ; 3 uses
  %.sroa.speculated.i.i.i17 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add i64 %.sroa.speculated.i.i.i17, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 4611686018427387903)
  %i.ea = select i1 %i.dy, i64 4611686018427387903, i64 %i.dz ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i18)
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #26 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i16 %i.u, ptr %i.ed, align 2
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.r, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ec, ptr align 2 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #24
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.ec, ptr %i.dk, align 8
  store ptr %i.ef, ptr %i.dl, align 8
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.eg, ptr %i.dn, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

_ZNSt6vectorIsSaIsEE9push_backERKs.exit:          ; preds = %bb.o, %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !6, !align !114 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8            ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %.not.i19 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  store i16 %i.k, ptr %i.ek, align 2
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store ptr %i.eo, ptr %i.ej, align 8
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit26

bb.u:                                             ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %i.ep = load ptr, ptr %i.ei, align 8            ; 4 uses
  %i.eq = ptrtoint ptr %i.ek to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775806
  br i1 %i.et, label %bb.v, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i20

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.u
  %i.eu = ashr exact i64 %i.es, 1                 ; 3 uses
  %.sroa.speculated.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add i64 %.sroa.speculated.i.i.i21, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 4611686018427387903)
  %i.ey = select i1 %i.ew, i64 4611686018427387903, i64 %i.ex ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i22)
end_hunk_7
begin_hunk_8_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev:bb.a
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !432
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !432
  store i8 0, ptr %i.a, align 8, !alias.scope !432
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !432 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !432 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !432 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !432 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3setIsSt4lessIsESaIsEEC2ESt16initializer_listIsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %.idx = shl nuw nsw i64 %2, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ab, %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i ], [ %1, %bb.a ] ; 2 uses
  %.not.i7 = icmp eq i64 %.pr21, 0
  %.pre.i.i.i.pre.pre.pre = load i16, ptr %.08.i, align 2 ; 5 uses
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp slt i16 %i.i, %.pre.i.i.i.pre.pre.pre
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp slt i16 %.pre.i.i.i.pre.pre.pre, %i.l ; 2 uses
  %.in.v.i.i = select i1 %i.m, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !384

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.m, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = icmp eq ptr %.019.lcssa29.i.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #28
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre81.i = load i16, ptr %.phi.trans.insert80.i, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.q = phi i16 [ %.pre81.i, %bb.d ], [ %i.l, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.d ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.r = icmp slt i16 %i.q, %.pre.i.i.i.pre.pre.pre
  br i1 %i.r, label %select.unfold, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.e, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.e ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.s, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp slt i16 %.pre.i.i.i.pre.pre.pre, %i.u
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold
  %i.w = phi i1 [ %i.v, %bb.f ], [ true, %select.unfold ]
  %i.x = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc6 unwind label %bb.g    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i16 %.pre.i.i.i.pre.pre.pre, ptr %i.y, align 2
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #23
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.e, align 8
  br label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i: ; preds = %bb.e, %.noexc6
  %.pr = phi i64 [ %.pr21, %bb.e ], [ %i.aa, %.noexc6 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit, label %.lr.ph.i, !llvm.loop !433

_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE22_M_insert_range_uniqueIPKsEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESA_SA_.exit: ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE17_M_insert_unique_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsESt23_Rb_tree_const_iteratorIsEOT_RT0_.exit.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE10_M_insert_IRKsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIsEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKiSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e                  ; 2 uses
  %.in.v.i = select i1 %i.f, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !434

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i, %i.h
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre19 = load i32, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.k = phi i32 [ %.pre19, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.l = phi i32 [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.m = icmp slt i32 %i.l, %i.k
  br i1 %i.m, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.n, label %._crit_edge.i6, label %bb.e

._crit_edge.i6:                                   ; preds = %select.unfold
  %.pre.i = load i32, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = load i32, ptr %i.o, align 4
  %i.r = icmp slt i32 %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i6
  %i.s = phi i32 [ %i.p, %bb.e ], [ %.pre.i, %._crit_edge.i6 ]
  %i.t = phi i1 [ %i.r, %bb.e ], [ true, %._crit_edge.i6 ]
  %i.u = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  store ptr null, ptr %i.x, align 8
  store ptr %i.z, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store i64 0, ptr %i.ah, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.w, ptr %i.al, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i64 %.sink.i.i.i, ptr %i.am, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.u, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_M_insert_IS7_NSC_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !435

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::set<short>>, std::_Select1st<std::pair<const int, std::set<short>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.k, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i32, ptr %i.c, align 4
  %i.s = load i32, ptr %i.q, align 4
  %i.t = icmp slt i32 %i.r, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.u = phi i1 [ %i.t, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.aa)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #24
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.m, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !434

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !434

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #28 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !434

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKsSt3setIsSt4lessIsESaIsEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3setIsSt4lessIsESaIsEED2Ev.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = icmp slt i16 %i.c, %i.e                  ; 2 uses
  %.in.v.i = select i1 %i.f, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !436

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i, %i.h
  br i1 %i.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2
  %.pre19 = load i16, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.k = phi i16 [ %.pre19, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.l = phi i16 [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.m = icmp slt i16 %i.l, %i.k
  br i1 %i.m, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.n, label %._crit_edge.i6, label %bb.e

._crit_edge.i6:                                   ; preds = %select.unfold
  %.pre.i = load i16, ptr %1, align 8
  br label %bb.f

bb.e:                                             ; preds = %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.p = load i16, ptr %1, align 8                ; 2 uses
  %i.q = load i16, ptr %i.o, align 2
  %i.r = icmp slt i16 %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i6
  %i.s = phi i16 [ %i.p, %bb.e ], [ %.pre.i, %._crit_edge.i6 ]
  %i.t = phi i1 [ %i.r, %bb.e ], [ true, %._crit_edge.i6 ]
  %i.u = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i16 %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load <2 x ptr>, ptr %i.ac, align 8
  store <2 x ptr> %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  store ptr null, ptr %i.x, align 8
  store ptr %i.z, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.ae, align 8
  store i64 0, ptr %i.ah, align 8
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.w, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.w, ptr %i.al, align 8
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i64 %.sink.i.i.i, ptr %i.am, align 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.u, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_M_insert_IS7_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i16, ptr %i.a, align 2
  store i16 %i.d, ptr %i.c, align 2
  %i.e = load i32, ptr %1, align 8
  store i32 %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.036 = load ptr, ptr %.0.in35, align 8         ; 2 uses
  %.not3237 = icmp eq ptr %.036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.039 = phi ptr [ %.0, %bb.l ], [ %.036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.m, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.039, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i16, ptr %i.n, align 2
  store i16 %i.p, ptr %i.o, align 2
  %i.q = load i32, ptr %.039, align 8
  store i32 %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.m, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03138, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.039, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIsESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.w, ptr %i.x, align 8
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.d ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.030) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #25
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.0.in = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !437

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_8
begin_hunk_9_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16 ; 2 uses
  store ptr %i.as, ptr %.08.i.i.i31, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 0, ptr %i.at, align 8
  store i8 0, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !152

_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bs, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bf, ptr %.012.i.i.i, align 8, !alias.scope !480, !noalias !483
  %i.bg = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !483, !noalias !480 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !483, !noalias !480 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !485
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.bg, ptr %.012.i.i.i, align 8, !alias.scope !480, !noalias !483
  %i.bn = load i64, ptr %i.bh, align 8, !alias.scope !483, !noalias !480
  store i64 %i.bn, ptr %i.bf, align 8, !alias.scope !480, !noalias !483
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !483, !noalias !480
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.bo = phi i64 [ %i.bk, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !alias.scope !480, !noalias !483
  store ptr %i.bh, ptr %.0911.i.i.i, align 8, !alias.scope !483, !noalias !480
  store i64 0, ptr %i.bp, align 8, !alias.scope !483, !noalias !480
  store i8 0, ptr %i.bh, align 8, !alias.scope !483, !noalias !480
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i37, !llvm.loop !486

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.f
  store ptr %i.al, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_9Model_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.86)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64
  %i.i = sub nuw i64 %i.f, %i.d
  %i.j = udiv i64 %i.i, 112
  %i.k = icmp samesign ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.86)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o

bb.k:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<short, std::pair<const short, std::set<short>>, std::_Select1st<std::pair<const short, std::set<short>>>, std::less<short>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #26 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i16, ptr %i.e, align 2
  store i16 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.k, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.l = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.p
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = load i16, ptr %i.c, align 2
  %i.s = load i16, ptr %i.q, align 2
  %i.t = icmp slt i16 %i.r, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.u = phi i1 [ %i.t, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void @_ZNSt8_Rb_treeIssSt9_IdentityIsESt4lessIsESaIsEE8_M_eraseEPSt13_Rb_tree_nodeIsE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.aa)
          to label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #24
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.m, %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2
  %i.i = load i16, ptr %2, align 2
  %i.j = icmp slt i16 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i16, ptr %2, align 2                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = icmp slt i16 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !436

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i16, ptr %.phi.trans.insert80, align 2
  %.pre82 = load i16, ptr %2, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i16 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i16 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i16 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i16, ptr %2, align 2                ; 8 uses
  %i.y = load i16, ptr %i.w, align 2              ; 2 uses
  %i.z = icmp slt i16 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp slt i16 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = icmp slt i16 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !436

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #28 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i16, ptr %.phi.trans.insert78, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i16 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i16 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i16 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = icmp slt i16 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_9
