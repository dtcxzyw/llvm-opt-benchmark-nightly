Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotsplines?download=true
inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dot_splines_:bb.a
  %i.cwq = load ptr, ptr %19, align 8, !tbaa !79
  %i.cwr = getelementptr inbounds nuw [16 x i8], ptr %i.cwq, i64 %i.cwn ; 2 uses
  %i.cws = load double, ptr %i.cwr, align 8
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwr, i64 8
  %i.cwu = load double, ptr %i.cwt, align 8
  call void %i.cwo(double %i.cws, double %i.cwu) #24, !inline_history !207
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %.lr.ph719.i
  %i.cwv = add nuw i64 %.0717.i, 1                ; 2 uses
  %.val.i399 = load i64, ptr %i.or, align 8, !tbaa !90
  %i.cww = icmp ult i64 %i.cwv, %.val.i399
  br i1 %i.cww, label %.lr.ph719.i, label %._crit_edge720.i, !llvm.loop !235

make_regular_edge.exit:                           ; preds = %.loopexit.i, %._crit_edge730.i, %._crit_edge720.i, %._crit_edge669.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.loopexit581

.loopexit581:                                     ; preds = %bb.cl, %bb.cj, %make_flat_edge.exit.thread, %make_flat_edge.exit, %._crit_edge757, %make_regular_edge.exit
  %.1264.lcssa1038 = phi i32 [ %.1264.lcssa1039, %make_regular_edge.exit ], [ %.1264.lcssa1039, %bb.cj ], [ %.1264.lcssa1039, %make_flat_edge.exit.thread ], [ %.1264.lcssa1039, %make_flat_edge.exit ], [ %.1264.lcssa10401045, %._crit_edge757 ], [ %.1264.lcssa1039, %bb.cl ] ; 2 uses
  %i.cwx = zext i32 %.1264.lcssa1038 to i64       ; 2 uses
  %.val350 = load i64, ptr %i.nm, align 8, !tbaa !90
  %.not319 = icmp ugt i64 %.val350, %i.cwx
  br i1 %.not319, label %bb.bd, label %.thread562, !llvm.loop !236

._crit_edge772:                                   ; preds = %bb.gf, %bb.gb
  call void @gv_list_clear_(ptr noundef nonnull %35, i64 noundef 8) #24
  call void @gv_list_free_(ptr noundef nonnull %35) #24
  %i.cwy = load ptr, ptr %i.lh, align 8, !tbaa !88
  call void @free(ptr noundef %i.cwy) #24
  br label %bb.ld

.thread562:                                       ; preds = %.loopexit581, %.loopexit585
  %i.cwz = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwz, i64 256
  %.1266763 = load ptr, ptr %i.cxa, align 8, !tbaa !54 ; 2 uses
  %.not320764 = icmp eq ptr %.1266763, null
  br i1 %.not320764, label %._crit_edge767, label %.lr.ph766

.lr.ph766:                                        ; preds = %.thread562, %bb.kk
  %.1266765 = phi ptr [ %.1266, %bb.kk ], [ %.1266763, %.thread562 ] ; 2 uses
  %i.cxb = getelementptr inbounds nuw i8, ptr %.1266765, i64 16 ; 3 uses
  %i.cxc = load ptr, ptr %i.cxb, align 8, !tbaa !22 ; 6 uses
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 216
  %i.cxe = load i8, ptr %i.cxd, align 8, !tbaa !55
  %i.cxf = icmp eq i8 %i.cxe, 1
  br i1 %i.cxf, label %bb.kf, label %bb.kk

bb.kf:                                            ; preds = %.lr.ph766
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxc, i64 136
  %i.cxh = load ptr, ptr %i.cxg, align 8, !tbaa !62 ; 2 uses
  %.not322 = icmp eq ptr %i.cxh, null
  br i1 %.not322, label %bb.kk, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cxc, i64 264
  %i.cxj = load i64, ptr %i.cxi, align 8, !tbaa !63
  %i.cxk = icmp eq i64 %i.cxj, 0
  br i1 %i.cxk, label %place_vnlabel.exit415, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxc, i64 272
  %i.cxm = load ptr, ptr %i.cxl, align 8, !tbaa !64
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %bb.kh
  %.0.in.i408 = phi ptr [ %i.cxm, %bb.kh ], [ %i.cxr, %bb.ki ]
  %.0.i409 = load ptr, ptr %.0.in.i408, align 8, !tbaa !65 ; 2 uses
  %i.cxn = getelementptr inbounds nuw i8, ptr %.0.i409, i64 16
  %i.cxo = load ptr, ptr %i.cxn, align 8, !tbaa !22 ; 3 uses
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxo, i64 152
  %i.cxq = load i8, ptr %i.cxp, align 8, !tbaa !66
  %.not.i410 = icmp eq i8 %i.cxq, 0
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxo, i64 160
  br i1 %.not.i410, label %bb.kj, label %bb.ki, !llvm.loop !174

bb.kj:                                            ; preds = %bb.ki
  %i.cxs = getelementptr inbounds nuw i8, ptr %.0.i409, i64 16
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxo, i64 120
  %i.cxu = load ptr, ptr %i.cxt, align 8, !tbaa !60 ; 2 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 40
  %.sroa.0.0.copyload.i411 = load double, ptr %i.cxv, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.cxu, i64 48
  %.sroa.4.0.copyload.i413 = load double, ptr %.sroa.4.0..sroa_idx.i412, align 8, !tbaa !61
  %i.cxw = call ptr @agraphof(ptr noundef nonnull %.1266765) #24
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxw, i64 16
  %i.cxy = load ptr, ptr %i.cxx, align 8, !tbaa !22
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 132
  %i.cya = load i32, ptr %i.cxz, align 4, !tbaa !259
  %i.cyb = and i32 %i.cya, 1
  %.not12.i414 = icmp eq i32 %i.cyb, 0
  %i.cyc = select i1 %.not12.i414, double %.sroa.0.0.copyload.i411, double %.sroa.4.0.copyload.i413
  %i.cyd = load ptr, ptr %i.cxb, align 8, !tbaa !22 ; 3 uses
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cyd, i64 32
  %i.cyf = load double, ptr %i.cye, align 8, !tbaa !67
  %i.cyg = fmul double %i.cyc, 5.000000e-01
  %i.cyh = fadd double %i.cyf, %i.cyg
  %i.cyi = load ptr, ptr %i.cxs, align 8, !tbaa !22
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyi, i64 120
  %i.cyk = load ptr, ptr %i.cyj, align 8, !tbaa !60 ; 3 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 72
  store double %i.cyh, ptr %i.cyl, align 8, !tbaa !260
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyd, i64 40
  %i.cyn = load double, ptr %i.cym, align 8, !tbaa !69
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyk, i64 80
  store double %i.cyn, ptr %i.cyo, align 8, !tbaa !261
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyk, i64 105
  store i8 1, ptr %i.cyp, align 1, !tbaa !262
  %.phi.trans.insert923 = getelementptr inbounds nuw i8, ptr %i.cyd, i64 136
  %.pre924 = load ptr, ptr %.phi.trans.insert923, align 8, !tbaa !62
  br label %place_vnlabel.exit415

place_vnlabel.exit415:                            ; preds = %bb.kg, %bb.kj
  %i.cyq = phi ptr [ %i.cxh, %bb.kg ], [ %.pre924, %bb.kj ]
  call void @updateBB(ptr noundef %0, ptr noundef %i.cyq) #24
  %.pre925 = load ptr, ptr %i.cxb, align 8, !tbaa !22
  br label %bb.kk

bb.kk:                                            ; preds = %.lr.ph766, %bb.kf, %place_vnlabel.exit415
  %i.cyr = phi ptr [ %i.cxc, %.lr.ph766 ], [ %i.cxc, %bb.kf ], [ %.pre925, %place_vnlabel.exit415 ]
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyr, i64 240
  %.1266 = load ptr, ptr %i.cys, align 8, !tbaa !54 ; 2 uses
  %.not320 = icmp eq ptr %.1266, null
  br i1 %.not320, label %._crit_edge767, label %.lr.ph766, !llvm.loop !237

._crit_edge767:                                   ; preds = %bb.kk, %.thread562
  %.not321 = icmp eq i32 %1, 0
  br i1 %.not321, label %edge_normalize.exit, label %bb.kl

bb.kl:                                            ; preds = %._crit_edge767
  %i.cyt = call ptr @agfstnode(ptr noundef %0) #24 ; 2 uses
  %.not18.i416 = icmp eq ptr %i.cyt, null
  br i1 %.not18.i416, label %edge_normalize.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.kl, %._crit_edge.i418
  %.01219.i = phi ptr [ %i.cyv, %._crit_edge.i418 ], [ %i.cyt, %bb.kl ] ; 2 uses
  %i.cyu = call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.01219.i) #24 ; 2 uses
  %.not1416.i = icmp eq ptr %i.cyu, null
  br i1 %.not1416.i, label %._crit_edge.i418, label %.lr.ph.i417

._crit_edge.i418:                                 ; preds = %swap_spline.exit.i, %.lr.ph21.i
  %i.cyv = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01219.i) #24 ; 2 uses
  %.not.i419 = icmp eq ptr %i.cyv, null
  br i1 %.not.i419, label %edge_normalize.exit, label %.lr.ph21.i, !llvm.loop !238

.lr.ph.i417:                                      ; preds = %.lr.ph21.i, %swap_spline.exit.i
  %.017.i = phi ptr [ %i.dae, %swap_spline.exit.i ], [ %i.cyu, %.lr.ph21.i ] ; 3 uses
  %i.cyw = load ptr, ptr @sinfo, align 8, !tbaa !307
  %i.cyx = call zeroext i1 %i.cyw(ptr noundef nonnull %.017.i) #24, !inline_history !239
  br i1 %i.cyx, label %bb.km, label %swap_spline.exit.i

bb.km:                                            ; preds = %.lr.ph.i417
  %i.cyy = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.cyz = load ptr, ptr %i.cyy, align 8, !tbaa !22
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyz, i64 16
  %i.czb = load ptr, ptr %i.cza, align 8, !tbaa !152 ; 5 uses
  %.not15.i = icmp eq ptr %i.czb, null
  br i1 %.not15.i, label %swap_spline.exit.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 8
  %i.czd = load i64, ptr %i.czc, align 8, !tbaa !308 ; 4 uses
  %i.cze = lshr i64 %i.czd, 1                     ; 2 uses
  %.not.i.i420 = icmp eq i64 %i.cze, 0
  br i1 %.not.i.i420, label %.preheader.i.i422, label %.lr.ph.i.i421

.preheader.i.i422:                                ; preds = %.lr.ph.i.i421, %bb.kn
  %.not22.i.i = icmp eq i64 %i.czd, 0
  br i1 %.not22.i.i, label %swap_spline.exit.i, label %.lr.ph21.i.i

.lr.ph.i.i421:                                    ; preds = %bb.kn, %.lr.ph.i.i421
  %.01819.i.i = phi i64 [ %i.czm, %.lr.ph.i.i421 ], [ 0, %bb.kn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.czf = load ptr, ptr %i.czb, align 8, !tbaa !286 ; 2 uses
  %i.czg = getelementptr inbounds nuw [56 x i8], ptr %i.czf, i64 %.01819.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.czg, i64 56, i1 false)
  %i.czh = xor i64 %.01819.i.i, -1
  %i.czi = add i64 %i.czd, %i.czh                 ; 2 uses
  %i.czj = getelementptr inbounds nuw [56 x i8], ptr %i.czf, i64 %i.czi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.czg, ptr noundef nonnull align 8 dereferenceable(56) %i.czj, i64 56, i1 false), !tbaa.struct !309
  %i.czk = load ptr, ptr %i.czb, align 8, !tbaa !286
  %i.czl = getelementptr inbounds nuw [56 x i8], ptr %i.czk, i64 %i.czi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.czl, ptr noundef nonnull align 16 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.czm = add nuw nsw i64 %.01819.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.czm, %i.cze
  br i1 %exitcond.not.i.i, label %.preheader.i.i422, label %.lr.ph.i.i421, !llvm.loop !240

.lr.ph21.i.i:                                     ; preds = %.preheader.i.i422, %swap_bezier.exit.i.i
  %.020.i.i = phi i64 [ %i.dad, %swap_bezier.exit.i.i ], [ 0, %.preheader.i.i422 ] ; 2 uses
  %i.czn = load ptr, ptr %i.czb, align 8, !tbaa !286
  %i.czo = getelementptr inbounds nuw [56 x i8], ptr %i.czn, i64 %.020.i.i ; 7 uses
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 8
  %i.czq = load i64, ptr %i.czp, align 8, !tbaa !288 ; 2 uses
  %i.czr = lshr i64 %i.czq, 1                     ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.czr, 0
  br i1 %.not.i.i.i, label %swap_bezier.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph21.i.i, %.lr.ph.i.i.i
  %.022.i.i.i = phi i64 [ %i.czz, %.lr.ph.i.i.i ], [ 0, %.lr.ph21.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.czs = load ptr, ptr %i.czo, align 8, !tbaa !291 ; 2 uses
  %i.czt = getelementptr inbounds nuw [16 x i8], ptr %i.czs, i64 %.022.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.czt, i64 16, i1 false)
  %i.czu = xor i64 %.022.i.i.i, -1
  %i.czv = add i64 %i.czq, %i.czu                 ; 2 uses
  %i.czw = getelementptr inbounds nuw [16 x i8], ptr %i.czs, i64 %i.czv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.czt, ptr noundef nonnull align 8 dereferenceable(16) %i.czw, i64 16, i1 false), !tbaa.struct !258
  %i.czx = load ptr, ptr %i.czo, align 8, !tbaa !291
  %i.czy = getelementptr inbounds nuw [16 x i8], ptr %i.czx, i64 %i.czv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.czy, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.czz = add nuw nsw i64 %.022.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.czz, %i.czr
  br i1 %exitcond.not.i.i.i, label %swap_bezier.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !241

swap_bezier.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph21.i.i
  %i.daa = getelementptr inbounds nuw i8, ptr %i.czo, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.daa, align 8
  %36 = getelementptr inbounds nuw i8, ptr %i.czo, i64 20
  %37 = load i32, ptr %36, align 4, !tbaa !290
  %38 = freeze i32 %37
  %39 = zext i32 %38 to i64
  %40 = freeze i32 %.sroa.0.0.copyload.i.i.i
  %41 = zext i32 %40 to i64
  %42 = shl nuw i64 %41, 32
  %43 = or disjoint i64 %42, %39
  store i64 %43, ptr %i.daa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czo, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.dab, i64 16, i1 false)
  %i.dac = getelementptr inbounds nuw i8, ptr %i.czo, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dab, ptr noundef nonnull align 8 dereferenceable(16) %i.dac, i64 16, i1 false), !tbaa.struct !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dac, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dad = add nuw i64 %.020.i.i, 1               ; 2 uses
  %exitcond23.not.i.i = icmp eq i64 %i.dad, %i.czd
  br i1 %exitcond23.not.i.i, label %swap_spline.exit.i, label %.lr.ph21.i.i, !llvm.loop !242

swap_spline.exit.i:                               ; preds = %swap_bezier.exit.i.i, %.preheader.i.i422, %bb.km, %.lr.ph.i417
  %i.dae = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.017.i) #24 ; 2 uses
  %.not14.i = icmp eq ptr %i.dae, null
  br i1 %.not14.i, label %._crit_edge.i418, label %.lr.ph.i417, !llvm.loop !243

edge_normalize.exit.sink.split:                   ; preds = %place_vnlabel.exit.i, %resetRW.exit357, %bb.k
  call void @orthoEdges(ptr noundef %0, i1 noundef zeroext %.not334) #24
  br label %edge_normalize.exit

edge_normalize.exit:                              ; preds = %._crit_edge.i418, %edge_normalize.exit.sink.split, %bb.kl, %._crit_edge767
  %i.daf = load ptr, ptr @E_headlabel, align 8, !tbaa !110
  %i.dag = icmp ne ptr %i.daf, null
  %i.dah = load ptr, ptr @E_taillabel, align 8
  %i.dai = icmp ne ptr %i.dah, null
  %or.cond = select i1 %i.dag, i1 true, i1 %i.dai
  br i1 %or.cond, label %bb.ko, label %.loopexit578

bb.ko:                                            ; preds = %edge_normalize.exit
  %i.daj = load ptr, ptr @E_labelangle, align 8, !tbaa !110
  %i.dak = icmp ne ptr %i.daj, null
  %i.dal = load ptr, ptr @E_labeldistance, align 8
  %i.dam = icmp ne ptr %i.dal, null
  %or.cond5 = select i1 %i.dak, i1 true, i1 %i.dam
  br i1 %or.cond5, label %bb.kp, label %.loopexit578

bb.kp:                                            ; preds = %bb.ko
  %i.dan = call ptr @agfstnode(ptr noundef %0) #24 ; 2 uses
  %.not335781 = icmp eq ptr %i.dan, null
  br i1 %.not335781, label %.loopexit578, label %.lr.ph784

.lr.ph784:                                        ; preds = %bb.kp, %.loopexit
  %.2267782 = phi ptr [ %i.dbu, %.loopexit ], [ %i.dan, %bb.kp ] ; 3 uses
  %i.dao = load ptr, ptr @E_headlabel, align 8, !tbaa !110
  %.not337 = icmp eq ptr %i.dao, null
  br i1 %.not337, label %.loopexit577, label %bb.kq

bb.kq:                                            ; preds = %.lr.ph784
  %i.dap = call ptr @agfstin(ptr noundef %0, ptr noundef nonnull %.2267782) #24 ; 2 uses
  %.not338773 = icmp eq ptr %i.dap, null
  br i1 %.not338773, label %.loopexit577, label %.lr.ph776

.lr.ph776:                                        ; preds = %bb.kq, %bb.ks
  %.0269774 = phi ptr [ %i.dbi, %bb.ks ], [ %i.dap, %bb.kq ] ; 6 uses
  %i.daq = load i32, ptr %.0269774, align 8
  %i.dar = and i32 %i.daq, 3
  %i.das = icmp eq i32 %i.dar, 2
  %i.dat = getelementptr inbounds i8, ptr %.0269774, i64 -64 ; 2 uses
  %i.dau = select i1 %i.das, ptr %.0269774, ptr %i.dat ; 2 uses
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 16
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !22
  %i.dax = getelementptr inbounds nuw i8, ptr %i.daw, i64 128
  %i.day = load ptr, ptr %i.dax, align 8, !tbaa !310
  %.not343 = icmp eq ptr %i.day, null
  br i1 %.not343, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph776
  %i.daz = call i32 @place_portlabel(ptr noundef nonnull %i.dau, i1 noundef zeroext true) #24 ; 0 uses
  %i.dba = load i32, ptr %.0269774, align 8
  %i.dbb = and i32 %i.dba, 3
  %i.dbc = icmp eq i32 %i.dbb, 2
  %i.dbd = select i1 %i.dbc, ptr %.0269774, ptr %i.dat
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 16
  %i.dbf = load ptr, ptr %i.dbe, align 8, !tbaa !22
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 128
  %i.dbh = load ptr, ptr %i.dbg, align 8, !tbaa !310
  call void @updateBB(ptr noundef %0, ptr noundef %i.dbh) #24
  br label %bb.ks

bb.ks:                                            ; preds = %.lr.ph776, %bb.kr
  %i.dbi = call ptr @agnxtin(ptr noundef %0, ptr noundef nonnull %.0269774) #24 ; 2 uses
  %.not338 = icmp eq ptr %i.dbi, null
  br i1 %.not338, label %.loopexit577, label %.lr.ph776, !llvm.loop !244

.loopexit577:                                     ; preds = %bb.ks, %bb.kq, %.lr.ph784
  %i.dbj = load ptr, ptr @E_taillabel, align 8, !tbaa !110
  %.not339 = icmp eq ptr %i.dbj, null
  br i1 %.not339, label %.loopexit, label %bb.kt

bb.kt:                                            ; preds = %.loopexit577
  %i.dbk = call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.2267782) #24 ; 2 uses
  %.not340777 = icmp eq ptr %i.dbk, null
  br i1 %.not340777, label %.loopexit, label %.lr.ph780

.lr.ph780:                                        ; preds = %bb.kt, %bb.kw
  %.1270778 = phi ptr [ %i.dbt, %bb.kw ], [ %i.dbk, %bb.kt ] ; 3 uses
  %i.dbl = getelementptr inbounds nuw i8, ptr %.1270778, i64 16 ; 2 uses
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !22
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbm, i64 136
  %i.dbo = load ptr, ptr %i.dbn, align 8, !tbaa !311
  %.not341 = icmp eq ptr %i.dbo, null
  br i1 %.not341, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph780
  %i.dbp = call i32 @place_portlabel(ptr noundef nonnull %.1270778, i1 noundef zeroext false) #24
  %.not342 = icmp eq i32 %i.dbp, 0
  br i1 %.not342, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.dbq = load ptr, ptr %i.dbl, align 8, !tbaa !22
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 136
  %i.dbs = load ptr, ptr %i.dbr, align 8, !tbaa !311
  call void @updateBB(ptr noundef %0, ptr noundef %i.dbs) #24
  br label %bb.kw

bb.kw:                                            ; preds = %.lr.ph780, %bb.kv, %bb.ku
  %i.dbt = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.1270778) #24 ; 2 uses
  %.not340 = icmp eq ptr %i.dbt, null
  br i1 %.not340, label %.loopexit, label %.lr.ph780, !llvm.loop !245

.loopexit:                                        ; preds = %bb.kw, %bb.kt, %.loopexit577
  %i.dbu = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2267782) #24 ; 2 uses
  %.not335 = icmp eq ptr %i.dbu, null
  br i1 %.not335, label %.loopexit578, label %.lr.ph784, !llvm.loop !246

.loopexit578:                                     ; preds = %.loopexit, %bb.kp, %bb.ko, %edge_normalize.exit
  switch i16 %i.n, label %bb.kx [
    i16 8, label %bb.ky
    i16 4, label %bb.ky
  ]

bb.kx:                                            ; preds = %.loopexit578
  call void @routesplinesterm() #24
  br label %bb.ky

bb.ky:                                            ; preds = %.loopexit578, %.loopexit578, %bb.kx
  %i.dbv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dbw = load ptr, ptr %i.dbv, align 8
  call void @free(ptr noundef %i.dbw) #24
  %i.dbx = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %.val785 = load i64, ptr %i.dbx, align 8, !tbaa !90
  %.not796 = icmp eq i64 %.val785, 0
  br i1 %.not796, label %._crit_edge789, label %.lr.ph788

.lr.ph788:                                        ; preds = %bb.ky
  %i.dby = getelementptr inbounds nuw i8, ptr %35, i64 32
  br label %bb.kz

._crit_edge789:                                   ; preds = %bb.lc, %bb.ky
  call void @gv_list_clear_(ptr noundef nonnull %35, i64 noundef 8) #24
  call void @gv_list_free_(ptr noundef nonnull %35) #24
  %i.dbz = getelementptr inbounds nuw i8, ptr %34, i64 104
  %i.dca = load ptr, ptr %i.dbz, align 8, !tbaa !88
  call void @free(ptr noundef %i.dca) #24
  store i32 1, ptr @State, align 4, !tbaa !103
  store i32 1, ptr @EdgeLabelsDone, align 4, !tbaa !103
  br label %bb.ld

bb.kz:                                            ; preds = %.lr.ph788, %bb.lc
  %.0254786 = phi i64 [ 0, %.lr.ph788 ], [ %i.dci, %bb.lc ] ; 2 uses
  %i.dcb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %.0254786) #24 ; 2 uses
  %i.dcc = load ptr, ptr %i.dby, align 8, !tbaa !296 ; 2 uses
  %magicptr345 = ptrtoint ptr %i.dcc to i64
  switch i64 %magicptr345, label %bb.lb [
    i64 1, label %bb.la
    i64 0, label %bb.lc
  ]

bb.la:                                            ; preds = %bb.kz
  %i.dcd = load ptr, ptr %35, align 8, !tbaa !79
  %i.dce = getelementptr inbounds nuw [8 x i8], ptr %i.dcd, i64 %i.dcb
  %.0.copyload = load ptr, ptr %i.dce, align 8
  call void @free(ptr noundef %.0.copyload) #24
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  %i.dcf = load ptr, ptr %35, align 8, !tbaa !79
  %i.dcg = getelementptr inbounds nuw [8 x i8], ptr %i.dcf, i64 %i.dcb
  %i.dch = load ptr, ptr %i.dcg, align 8, !tbaa !65
  call void %i.dcc(ptr noundef %i.dch) #24
  br label %bb.lc

bb.lc:                                            ; preds = %bb.kz, %bb.lb, %bb.la
  %i.dci = add nuw i64 %.0254786, 1               ; 2 uses
  %.val = load i64, ptr %i.dbx, align 8, !tbaa !90
  %i.dcj = icmp ult i64 %i.dci, %.val
  br i1 %i.dcj, label %bb.kz, label %._crit_edge789, !llvm.loop !247

bb.ld:                                            ; preds = %._crit_edge772, %bb.t, %._crit_edge789
  %.5 = phi i32 [ 0, %._crit_edge789 ], [ %.2.i.ph, %._crit_edge772 ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.le

bb.le:                                            ; preds = %bb.a, %bb.ld
  %.6 = phi i32 [ %.5, %bb.ld ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71224)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91225)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
end_hunk_0
