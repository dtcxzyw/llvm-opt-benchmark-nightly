inline.NumInlined: 149
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dot_splines_:bb.a
  br i1 %i.xw, label %bb.bj, label %portcmp.exit.thread, !llvm.loop !142

portcmp.exit.thread:                              ; preds = %bb.bx, %getmainedge.exit376, %bb.bv, %bb.bw, %bb.br, %bb.bt, %.split, %.split1033
  %.0262.lcssa = phi i32 [ %.0262679, %.split1033 ], [ %i.xu, %bb.bx ], [ %.0262679, %getmainedge.exit376 ], [ %.0262679, %.split ], [ %.0262679, %bb.bt ], [ %.0262679, %bb.bv ], [ %.0262679, %bb.bw ], [ %.0262679, %bb.br ] ; 4 uses
  %.1264.lcssa = phi i32 [ %.1264680, %.split1033 ], [ %.1264, %bb.bx ], [ %.1264680, %getmainedge.exit376 ], [ %.1264680, %.split ], [ %.1264680, %bb.bt ], [ %.1264680, %bb.bv ], [ %.1264680, %bb.bw ], [ %.1264680, %bb.br ] ; 3 uses
  br i1 %i.r, label %bb.by, label %bb.cb

portcmp.exit.thread.thread:                       ; preds = %bb.bi
  br i1 %i.r, label %.thread1041, label %bb.cb

bb.by:                                            ; preds = %portcmp.exit.thread
  %i.xx = zext i32 %.0262.lcssa to i64
  %.not.i382 = icmp eq i32 %.0262.lcssa, 0
  br i1 %.not.i382, label %.thread.i385, label %.thread1041

.thread.i385:                                     ; preds = %bb.by
  %i.xy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #25
  br label %gv_calloc.exit386

.thread1041:                                      ; preds = %portcmp.exit.thread.thread, %bb.by
  %i.xz = phi i64 [ %i.xx, %bb.by ], [ 1, %portcmp.exit.thread.thread ] ; 3 uses
  %.0262.lcssa10361048 = phi i32 [ %.0262.lcssa, %bb.by ], [ 1, %portcmp.exit.thread.thread ]
  %.1264.lcssa10401046 = phi i32 [ %.1264.lcssa, %bb.by ], [ %.1264677, %portcmp.exit.thread.thread ]
  %i.ya = call noalias ptr @calloc(i64 noundef %i.xz, i64 noundef 8) #25 ; 2 uses
  %i.yb = icmp eq ptr %i.ya, null
  br i1 %i.yb, label %bb.bz, label %gv_calloc.exit386

bb.bz:                                            ; preds = %.thread1041
  %i.yc = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.yd = shl nuw nsw i64 %i.xz, 3
  %i.ye = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yc, ptr noundef nonnull @.str.3, i64 noundef %i.yd) #26 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

gv_calloc.exit386:                                ; preds = %.thread.i385, %.thread1041
  %i.yf = phi i64 [ 0, %.thread.i385 ], [ %i.xz, %.thread1041 ] ; 2 uses
  %.0262.lcssa10361047 = phi i32 [ 0, %.thread.i385 ], [ %.0262.lcssa10361048, %.thread1041 ]
  %.1264.lcssa10401045 = phi i32 [ %.1264.lcssa, %.thread.i385 ], [ %.1264.lcssa10401046, %.thread1041 ]
  %i.yg = phi ptr [ %i.xy, %.thread.i385 ], [ %i.ya, %.thread1041 ] ; 4 uses
  %i.yh = load ptr, ptr %35, align 8, !tbaa !104
  %i.yi = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.sm) #24
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yi
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !78
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %gv_calloc.exit386
  %.0.i387 = phi ptr [ %i.yk, %gv_calloc.exit386 ], [ %i.yo, %bb.ca ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0.i387, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !19
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 232
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !122 ; 2 uses
  %.not.i388 = icmp eq ptr %i.yo, null
  br i1 %.not.i388, label %.preheader.i389, label %bb.ca, !llvm.loop !123

.preheader.i389:                                  ; preds = %bb.ca, %.preheader.i389
  %.1.i390 = phi ptr [ %i.ys, %.preheader.i389 ], [ %.0.i387, %bb.ca ] ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.1.i390, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !19
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 160
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !124 ; 2 uses
  %.not8.i391 = icmp eq ptr %i.ys, null
  br i1 %.not8.i391, label %getmainedge.exit392, label %.preheader.i389, !llvm.loop !125

getmainedge.exit392:                              ; preds = %.preheader.i389
  store ptr %.1.i390, ptr %i.yg, align 8, !tbaa !78
  %i.yt = icmp ugt i32 %.0262.lcssa10361047, 1
  br i1 %i.yt, label %.lr.ph756, label %._crit_edge757

._crit_edge757:                                   ; preds = %.lr.ph756, %getmainedge.exit392
  call void @makeStraightEdges(ptr noundef %0, ptr noundef nonnull %i.yg, i64 noundef %i.yf, i32 noundef %i.o, ptr noundef nonnull @sinfo) #24
  call void @free(ptr noundef nonnull %i.yg) #24
  br label %.loopexit581

.lr.ph756:                                        ; preds = %getmainedge.exit392, %.lr.ph756
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %.lr.ph756 ], [ 1, %getmainedge.exit392 ] ; 3 uses
  %i.yu = load ptr, ptr %35, align 8, !tbaa !104
  %i.yv = trunc nuw i64 %indvars.iv884 to i32
  %i.yw = add i32 %.0263760, %i.yv
  %i.yx = zext i32 %i.yw to i64
  %i.yy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.yx) #24
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yy
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !78
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv884
  store ptr %i.za, ptr %i.zb, align 8, !tbaa !78
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %exitcond888.not = icmp eq i64 %indvars.iv.next885, %i.yf
  br i1 %exitcond888.not, label %._crit_edge757, label %.lr.ph756, !llvm.loop !143

bb.cb:                                            ; preds = %portcmp.exit.thread.thread, %portcmp.exit.thread
  %.1264.lcssa1039 = phi i32 [ %.1264677, %portcmp.exit.thread.thread ], [ %.1264.lcssa, %portcmp.exit.thread ] ; 5 uses
  %.0262.lcssa1037 = phi i32 [ 1, %portcmp.exit.thread.thread ], [ %.0262.lcssa, %portcmp.exit.thread ] ; 22 uses
  %i.zc = load i32, ptr %i.sq, align 8
  %i.zd = and i32 %i.zc, 3                        ; 2 uses
  %i.ze = icmp eq i32 %i.zd, 3
  %i.zf = select i1 %i.ze, i64 56, i64 120
  %i.zg = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.zf
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !106 ; 2 uses
  %i.zi = icmp eq i32 %i.zd, 2
  %i.zj = select i1 %i.zi, i64 56, i64 -8
  %i.zk = getelementptr inbounds i8, ptr %i.sq, i64 %i.zj
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !106 ; 2 uses
  %i.zm = icmp eq ptr %i.zh, %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !19 ; 5 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 360
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !111 ; 7 uses
  br i1 %i.zm, label %bb.cc, label %bb.cm

bb.cc:                                            ; preds = %bb.cb
  %i.zr = load ptr, ptr %i.j, align 8, !tbaa !19  ; 5 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 340
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !91
  %i.zu = icmp eq i32 %i.zq, %i.zt
  br i1 %i.zu, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.zv = icmp sgt i32 %i.zq, 0
  br i1 %i.zv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 264
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !92
  %i.zy = zext nneg i32 %i.zq to i64
  %i.zz = getelementptr [88 x i8], ptr %i.zx, i64 %i.zy
  %i.aaa = getelementptr i8, ptr %i.zz, i64 -80
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !96
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !65
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !19
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 40
  %i.aag = load double, ptr %i.aaf, align 8, !tbaa !85
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zo, i64 40
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !85
  %i.aaj = fsub double %i.aag, %i.aai
  br label %bb.cj

bb.cf:                                            ; preds = %bb.cd
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zo, i64 96
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !144
  br label %bb.cj

bb.cg:                                            ; preds = %bb.cc
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zr, i64 336
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !90
  %i.aao = icmp eq i32 %i.zq, %i.aan
  br i1 %i.aao, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zo, i64 40
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !85
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zr, i64 264
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !92
  %i.aat = sext i32 %i.zq to i64
  %i.aau = getelementptr [88 x i8], ptr %i.aas, i64 %i.aat
  %i.aav = getelementptr i8, ptr %i.aau, i64 96
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !96
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !65
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !19
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 40
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !85
  %i.abc = fsub double %i.aaq, %i.abb
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zr, i64 264
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !92
  %i.abf = sext i32 %i.zq to i64
  %i.abg = getelementptr [88 x i8], ptr %i.abe, i64 %i.abf ; 2 uses
  %i.abh = getelementptr i8, ptr %i.abg, i64 -80
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !96
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !65
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !19
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 40
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !85
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zo, i64 40
  %i.abp = load double, ptr %i.abo, align 8, !tbaa !85 ; 2 uses
  %i.abq = fsub double %i.abn, %i.abp
  %i.abr = getelementptr i8, ptr %i.abg, i64 96
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !96
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !65
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !19
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 40
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !85
  %i.aby = fsub double %i.abp, %i.abx
  %i.abz = call nsz double @llvm.minnum.f64(double %i.abq, double %i.aby)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.ce, %bb.cf
  %.0260 = phi double [ %i.aaj, %bb.ce ], [ %i.aal, %bb.cf ], [ %i.abc, %bb.ch ], [ %i.abz, %bb.ci ]
  %i.aca = load ptr, ptr %35, align 8, !tbaa !104
  %i.acb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.sm) #24
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.acb
  %i.acd = zext i32 %.0262.lcssa1037 to i64       ; 2 uses
  %i.ace = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %i.acf = fmul double %.0260, 5.000000e-01
  call void @makeSelfEdge(ptr noundef %i.acc, i64 noundef %i.acd, double noundef %i.ace, double noundef %i.acf, ptr noundef nonnull @sinfo) #24
  %.not795 = icmp eq i32 %.0262.lcssa1037, 0
  br i1 %.not795, label %.loopexit581, label %.lr.ph754.preheader

.lr.ph754.preheader:                              ; preds = %bb.cj
  %36 = zext i32 %.0263760 to i64
  br label %.lr.ph754

.lr.ph754:                                        ; preds = %.lr.ph754.preheader, %bb.cl
  %indvars.iv879 = phi i64 [ 0, %.lr.ph754.preheader ], [ %indvars.iv.next880, %bb.cl ] ; 2 uses
  %i.acg = load ptr, ptr %35, align 8, !tbaa !104
  %37 = add nuw nsw i64 %indvars.iv879, %36
  %i.ach = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %37) #24
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.ach
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !78
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !19
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 120
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !68 ; 2 uses
  %.not318 = icmp eq ptr %i.acn, null
  br i1 %.not318, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph754
  call void @updateBB(ptr noundef %0, ptr noundef nonnull %i.acn) #24
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph754, %bb.ck
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1 ; 2 uses
  %exitcond883.not = icmp eq i64 %indvars.iv.next880, %i.acd
  br i1 %exitcond883.not, label %.loopexit581, label %.lr.ph754, !llvm.loop !145

bb.cm:                                            ; preds = %bb.cb
  %i.aco = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !19
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 360
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !111
  %i.acs = icmp eq i32 %i.zq, %i.acr
  %i.act = load ptr, ptr %35, align 8, !tbaa !104
  %i.acu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %35, i64 noundef %i.sm) #24
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acu ; 15 uses
  br i1 %i.acs, label %bb.cn, label %bb.gg

bb.cn:                                            ; preds = %bb.cm
  %.sroa.5.0.copyload = load <2 x double>, ptr %.sroa.5.0..sroa_idx1229, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  store ptr %26, ptr %i.ov, align 8, !tbaa !42
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !78 ; 8 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 16 ; 3 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !19 ; 4 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 154
  %i.ada = load i8, ptr %i.acz, align 2, !tbaa !141
  %.not575 = icmp eq i8 %i.ada, 0
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 220
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !101
  %i.add = and i32 %i.adc, 32
  %.not.i393 = icmp eq i32 %i.add, 0
  br i1 %.not.i393, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %26, ptr noundef nonnull align 8 dereferenceable(240) %i.acy, i64 240, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 8 dereferenceable(64) %i.acw, i64 64, i1 false), !tbaa.struct !138
  store ptr %26, ptr %i.ov, align 8, !tbaa !126
  %i.ade = load i32, ptr %i.acw, align 8
  %i.adf = and i32 %i.ade, 3
  %i.adg = icmp eq i32 %i.adf, 2
  %i.adh = select i1 %i.adg, i64 56, i64 -8
  %i.adi = getelementptr inbounds i8, ptr %i.acw, i64 %i.adh
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !106
  %i.adk = load i32, ptr %27, align 8
  %i.adl = and i32 %i.adk, 3                      ; 2 uses
  %i.adm = icmp eq i32 %i.adl, 3
  %.sroa.sel505 = select i1 %i.adm, ptr %.sroa.gep503, ptr %.sroa.gep504
  store ptr %i.adj, ptr %.sroa.sel505, align 8, !tbaa !106
  %i.adn = load i32, ptr %i.acw, align 8
  %i.ado = and i32 %i.adn, 3
  %i.adp = icmp eq i32 %i.ado, 3
  %i.adq = select i1 %i.adp, i64 56, i64 120
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acw, i64 %i.adq
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !106
  %i.adt = icmp eq i32 %i.adl, 2
  %.sroa.sel508 = select i1 %i.adt, ptr %.sroa.gep503, ptr %.sroa.gep507
  store ptr %i.ads, ptr %.sroa.sel508, align 8, !tbaa !106
  %i.adu = load ptr, ptr %i.acx, align 8, !tbaa !19
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ow, ptr noundef nonnull align 8 dereferenceable(48) %i.adv, i64 48, i1 false), !tbaa.struct !140
  %i.adw = load ptr, ptr %i.acx, align 8, !tbaa !19
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ox, ptr noundef nonnull align 8 dereferenceable(48) %i.adx, i64 48, i1 false), !tbaa.struct !140
  store i8 1, ptr %i.oy, align 8, !tbaa !79
  store ptr %i.acw, ptr %i.oz, align 8, !tbaa !124
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ady = phi ptr [ %26, %bb.co ], [ %i.acy, %bb.cn ] ; 3 uses
  %.0150.i = phi ptr [ %27, %bb.co ], [ %i.acw, %bb.cn ] ; 26 uses
  %i.adz = icmp ugt i32 %.0262.lcssa1037, 1
  br i1 %i.adz, label %.lr.ph712.preheader, label %._crit_edge713

.lr.ph712.preheader:                              ; preds = %bb.cp
  %wide.trip.count = zext i32 %.0262.lcssa1037 to i64
  br label %.lr.ph712

bb.cq:                                            ; preds = %.lr.ph712
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next851, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge713, label %.lr.ph712, !llvm.loop !146

.lr.ph712:                                        ; preds = %.lr.ph712.preheader, %bb.cq
  %indvars.iv850 = phi i64 [ 1, %.lr.ph712.preheader ], [ %indvars.iv.next851, %bb.cq ] ; 2 uses
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv850
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !78
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !19
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 154
  %i.aef = load i8, ptr %i.aee, align 2, !tbaa !141
  %.not169.i = icmp eq i8 %i.aef, 0
  br i1 %.not169.i, label %bb.cq, label %.critedge.i

._crit_edge713:                                   ; preds = %bb.cq, %bb.cp
  br i1 %.not575, label %bb.fa, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph712, %._crit_edge713
  %i.aeg = load i32, ptr %.0150.i, align 8
  %i.aeh = and i32 %i.aeg, 3                      ; 2 uses
  %i.aei = icmp eq i32 %i.aeh, 3
  %.sroa.gep497 = getelementptr inbounds nuw i8, ptr %.0150.i, i64 56 ; 2 uses
  %.sroa.gep498 = getelementptr inbounds nuw i8, ptr %.0150.i, i64 120
  %.sroa.sel499 = select i1 %i.aei, ptr %.sroa.gep497, ptr %.sroa.gep498
  %i.aej = load ptr, ptr %.sroa.sel499, align 8, !tbaa !106 ; 7 uses
  %i.aek = icmp eq i32 %i.aeh, 2
  %.sroa.gep501 = getelementptr inbounds i8, ptr %.0150.i, i64 -8
  %.sroa.sel502 = select i1 %i.aek, ptr %.sroa.gep497, ptr %.sroa.gep501
  %i.ael = load ptr, ptr %.sroa.sel502, align 8, !tbaa !106 ; 7 uses
  %i.aem = call i32 @shapeOf(ptr noundef %i.aej) #24, !inline_history !147
  %i.aen = icmp eq i32 %i.aem, 2
  br i1 %i.aen, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.critedge.i
  %i.aeo = call i32 @shapeOf(ptr noundef %i.ael) #24, !inline_history !147
  %i.aep = icmp eq i32 %i.aeo, 2
  br i1 %i.aep, label %bb.cs, label %.preheader582

.preheader582:                                    ; preds = %bb.cr
  %.not790 = icmp eq i32 %.0262.lcssa1037, 0
  br i1 %.not790, label %.thread1052, label %.lr.ph729.preheader

.lr.ph729.preheader:                              ; preds = %.preheader582
  %wide.trip.count855 = zext i32 %.0262.lcssa1037 to i64 ; 2 uses
  %xtraiter1219 = and i64 %wide.trip.count855, 1
  %i.aeq = icmp eq i32 %.0262.lcssa1037, 1
  br i1 %i.aeq, label %.lr.ph729.epil.preheader, label %.lr.ph729.preheader.new

.lr.ph729.preheader.new:                          ; preds = %.lr.ph729.preheader
  %unroll_iter = and i64 %wide.trip.count855, 4294967294
  br label %.lr.ph729

bb.cs:                                            ; preds = %bb.cr, %.critedge.i
  %i.aer = atomicrmw xchg ptr @make_flat_adj_edges.warned, i8 1 seq_cst, align 1
  %i.aes = trunc i8 %i.aer to i1
  br i1 %i.aes, label %make_flat_edge.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.4) #24, !inline_history !147
  %i.aet = call ptr @agnameof(ptr noundef %i.aej) #24, !inline_history !147
  %i.aeu = call i32 @agisdirected(ptr noundef %0) #24, !inline_history !147
  %.not257.i = icmp eq i32 %i.aeu, 0
  %i.aev = select i1 %.not257.i, ptr @.str.7, ptr @.str.6
  %i.aew = call ptr @agnameof(ptr noundef %i.ael) #24, !inline_history !147
  %i.aex = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef %i.aet, ptr noundef nonnull %i.aev, ptr noundef %i.aew) #24, !inline_history !147 ; 0 uses
  br label %make_flat_edge.exit.thread

._crit_edge730.unr-lcssa:                         ; preds = %bb.cz
  %lcmp.mod1220.not = icmp eq i64 %xtraiter1219, 0
  br i1 %lcmp.mod1220.not, label %._crit_edge730, label %.lr.ph729.epil.preheader

.lr.ph729.epil.preheader:                         ; preds = %._crit_edge730.unr-lcssa, %.lr.ph729.preheader
  %indvars.iv853.epil.init = phi i64 [ 0, %.lr.ph729.preheader ], [ %indvars.iv.next854.1, %._crit_edge730.unr-lcssa ]
  %.0230.i727.epil.init = phi i1 [ false, %.lr.ph729.preheader ], [ %.1231.i.1, %._crit_edge730.unr-lcssa ]
  %.0232.i726.epil.init = phi i32 [ 0, %.lr.ph729.preheader ], [ %spec.select.i443.1, %._crit_edge730.unr-lcssa ]
  %lcmp.mod1223 = trunc i32 %.0262.lcssa1037 to i1
  call void @llvm.assume(i1 %lcmp.mod1223)
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv853.epil.init
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !78
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !19 ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 120
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !68
  %.not256.i.epil = icmp ne ptr %i.afd, null
  %i.afe = zext i1 %.not256.i.epil to i32
  %spec.select.i443.epil = add i32 %.0232.i726.epil.init, %i.afe
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 56
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !109, !range !15, !noundef !16
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %.critedge, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph729.epil.preheader
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afb, i64 104
  %i.afj = load i8, ptr %i.afi, align 8, !tbaa !110, !range !15, !noundef !16
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %.critedge, label %._crit_edge730

._crit_edge730:                                   ; preds = %bb.cu, %._crit_edge730.unr-lcssa
  %.1231.i.lcssa = phi i1 [ %.1231.i.1, %._crit_edge730.unr-lcssa ], [ %.0230.i727.epil.init, %bb.cu ]
  %spec.select.i443.lcssa = phi i32 [ %spec.select.i443.1, %._crit_edge730.unr-lcssa ], [ %spec.select.i443.epil, %bb.cu ] ; 6 uses
  br i1 %.1231.i.lcssa, label %.critedge, label %bb.da

.lr.ph729:                                        ; preds = %bb.cz, %.lr.ph729.preheader.new
  %indvars.iv853 = phi i64 [ 0, %.lr.ph729.preheader.new ], [ %indvars.iv.next854.1, %bb.cz ] ; 3 uses
  %.0230.i727 = phi i1 [ false, %.lr.ph729.preheader.new ], [ %.1231.i.1, %bb.cz ]
  %.0232.i726 = phi i32 [ 0, %.lr.ph729.preheader.new ], [ %spec.select.i443.1, %bb.cz ]
  %niter = phi i64 [ 0, %.lr.ph729.preheader.new ], [ %niter.next.1, %bb.cz ]
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv853
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !78
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !19 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 120
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !68
  %.not256.i = icmp ne ptr %i.afq, null
  %i.afr = zext i1 %.not256.i to i32
  %spec.select.i443 = add i32 %.0232.i726, %i.afr
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 56
  %i.aft = load i8, ptr %i.afs, align 8, !tbaa !109, !range !15, !noundef !16
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph729
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 104
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !110, !range !15, !noundef !16
  %i.afx = trunc nuw i8 %i.afw to i1
  br i1 %i.afx, label %bb.cw, label %.lr.ph729.1

bb.cw:                                            ; preds = %bb.cv, %.lr.ph729
  br label %.lr.ph729.1

.lr.ph729.1:                                      ; preds = %bb.cw, %bb.cv
  %.1231.i = phi i1 [ true, %bb.cw ], [ %.0230.i727, %bb.cv ]
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv853
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !78
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !19 ; 3 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 120
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !68
  %.not256.i.1 = icmp ne ptr %i.age, null
  %i.agf = zext i1 %.not256.i.1 to i32
  %spec.select.i443.1 = add i32 %spec.select.i443, %i.agf ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agc, i64 56
  %i.agh = load i8, ptr %i.agg, align 8, !tbaa !109, !range !15, !noundef !16
  %i.agi = trunc nuw i8 %i.agh to i1
  br i1 %i.agi, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph729.1
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agc, i64 104
  %i.agk = load i8, ptr %i.agj, align 8, !tbaa !110, !range !15, !noundef !16
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %.lr.ph729.1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.1231.i.1 = phi i1 [ true, %bb.cy ], [ %.1231.i, %bb.cx ] ; 3 uses
  %indvars.iv.next854.1 = add nuw nsw i64 %indvars.iv853, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge730.unr-lcssa, label %.lr.ph729, !llvm.loop !148

bb.da:                                            ; preds = %._crit_edge730
  %i.agm = icmp eq i32 %spec.select.i443.lcssa, 0
  br i1 %i.agm, label %.thread1052, label %bb.db

.thread1052:                                      ; preds = %.preheader582, %bb.da
  %i.agn = getelementptr i8, ptr %i.aej, i64 16
  %.val.i439 = load ptr, ptr %i.agn, align 8, !tbaa !19
  %i.ago = getelementptr i8, ptr %i.ael, i64 16
  %.val260.i = load ptr, ptr %i.ago, align 8, !tbaa !19 ; 2 uses
  %i.agp = getelementptr i8, ptr %.val260.i, i64 32
  %.val260.val.i = load double, ptr %i.agp, align 8
  %i.agq = getelementptr i8, ptr %.val260.i, i64 40
  %.val260.val261.i = load double, ptr %i.agq, align 8
  call fastcc void @makeSimpleFlat(ptr %.val.i439, double %.val260.val.i, double %.val260.val261.i, ptr noundef nonnull %i.acv, i32 noundef %.0262.lcssa1037, i32 noundef range(i32 1, 15) %i.o), !inline_history !147
  br label %make_flat_edge.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.agr = load ptr, ptr %i.acv, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ags = zext i32 %.0262.lcssa1037 to i64       ; 5 uses
  %i.agt = call noalias ptr @calloc(i64 noundef %i.ags, i64 noundef 8) #25, !inline_history !147 ; 10 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %bb.dc, label %.lr.ph.preheader.i.i

bb.dc:                                            ; preds = %bb.db
  %i.agv = load ptr, ptr @stderr, align 8, !tbaa !115
  %i.agw = shl nuw nsw i64 %i.ags, 3
  %i.agx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agv, ptr noundef nonnull @.str.3, i64 noundef %i.agw) #26, !inline_history !147 ; 0 uses
  call fastcc void @graphviz_exit() #27
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.db
  %i.agy = shl nuw nsw i64 %i.ags, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.agt, ptr nonnull readonly align 8 %i.acv, i64 %i.agy, i1 false), !tbaa !78
  call void @qsort(ptr noundef nonnull %i.agt, i64 noundef %i.ags, i64 noundef 8, ptr noundef nonnull @edgelblcmpfn) #24, !inline_history !147
  %i.agz = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !19 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !19 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  %i.ahf = load <2 x double>, ptr %i.ahb, align 8
  %i.ahg = load <2 x double>, ptr %i.ahe, align 8
  %i.ahh = fadd <2 x double> %i.ahf, %i.ahg       ; 3 uses
  %i.ahi = extractelement <2 x double> %i.ahh, i64 1 ; 15 uses
  %i.ahj = extractelement <2 x double> %i.ahh, i64 0 ; 14 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !19 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahd, i64 72
  %i.aho = load <2 x double>, ptr %i.ahm, align 8
  %i.ahp = load <2 x double>, ptr %i.ahn, align 8
  %i.ahq = fadd <2 x double> %i.aho, %i.ahp       ; 4 uses
  %i.ahr = extractelement <2 x double> %i.ahq, i64 1 ; 13 uses
  %i.ahs = extractelement <2 x double> %i.ahq, i64 0 ; 13 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aha, i64 112
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !55
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 104
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !97
  %i.ahx = fadd double %i.ahj, %i.ahu             ; 3 uses
  %i.ahy = fsub double %i.ahs, %i.ahw             ; 3 uses
  %i.ahz = fadd double %i.ahx, %i.ahy
  %i.aia = fmul double %i.ahz, 5.000000e-01       ; 7 uses
  %i.aib = load ptr, ptr %i.agt, align 8, !tbaa !78 ; 4 uses
  store double %i.ahj, ptr %2, align 16, !tbaa !74
  store double %i.ahi, ptr %.sroa.16178.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ahj, ptr %i.pa, align 16, !tbaa !74
  store double %i.ahi, ptr %.sroa.16178.0..sroa_idx179.i.i, align 8, !tbaa !74
  store double %i.ahs, ptr %i.pb, align 16, !tbaa !74
  store double %i.ahr, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ahs, ptr %i.pc, align 16, !tbaa !74
  store double %i.ahr, ptr %.sroa.16.0..sroa_idx151.i.i, align 8, !tbaa !74
  %i.aic = load i32, ptr %i.aib, align 8
  %i.aid = and i32 %i.aic, 3
  %i.aie = icmp eq i32 %i.aid, 2
  %i.aif = select i1 %i.aie, i64 56, i64 -8
  %i.aig = getelementptr inbounds i8, ptr %i.aib, i64 %i.aif
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !106
  call void @clip_and_install(ptr noundef nonnull %i.aib, ptr noundef %i.aih, ptr noundef nonnull %2, i64 noundef 4, ptr noundef nonnull @sinfo) #24, !inline_history !147
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !19
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 120
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !68 ; 5 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 72
  store double %i.aia, ptr %i.aim, align 8, !tbaa !83
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 48
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !149 ; 2 uses
  %i.aip = fadd double %i.aio, 6.000000e+00
  %i.aiq = fmul double %i.aip, 5.000000e-01
  %i.air = fadd double %i.ahi, %i.aiq
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ail, i64 80
  store double %i.air, ptr %i.ais, align 8, !tbaa !86
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ail, i64 105
  store i8 1, ptr %i.ait, align 1, !tbaa !87
  %i.aiu = fadd double %i.ahi, 3.000000e+00       ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ail, i64 40
  %i.aiw = fadd double %i.aiu, %i.aio             ; 3 uses
  %i.aix = load double, ptr %i.aiv, align 8, !tbaa !150
  %i.aiy = fmul double %i.aix, 5.000000e-01       ; 2 uses
  %i.aiz = fsub double %i.aia, %i.aiy             ; 4 uses
  %i.aja = fadd double %i.aia, %i.aiy             ; 4 uses
  %.not576 = icmp eq i32 %spec.select.i443.lcssa, 1
  br i1 %.not576, label %.preheader.i.i434, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.preheader.i.i
  %wide.trip.count.i.i = zext i32 %spec.select.i443.lcssa to i64
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !78 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !19
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 120
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !68 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 40
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !150
  %i.ajj = fmul double %i.aji, 5.000000e-01       ; 2 uses
  %i.ajk = fsub double %i.aia, %i.ajj             ; 5 uses
  %i.ajl = fadd double %i.aia, %i.ajj             ; 5 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 48 ; 2 uses
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !149
  %i.ajo = fadd double %i.ajn, 6.000000e+00
  %i.ajp = fsub double %i.aiu, %i.ajo             ; 6 uses
  store double %i.ahj, ptr %2, align 16, !tbaa !74
  store double %i.ahi, ptr %.sroa.16178.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.ajq = fadd double %i.ajp, -6.000000e+00      ; 2 uses
  store double %i.ahj, ptr %i.pa, align 16, !tbaa !74
  store double %i.ajq, ptr %.sroa.16178.0..sroa_idx179.i.i, align 8, !tbaa !74
  store double %i.ahs, ptr %i.pb, align 16, !tbaa !74
  store double %i.ajq, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ahs, ptr %i.pc, align 16, !tbaa !74
  store double %i.ahr, ptr %.sroa.16.0..sroa_idx151.i.i, align 8, !tbaa !74
  store double %i.ajl, ptr %i.pd, align 16, !tbaa !74
  store double %i.ahr, ptr %.sroa.254.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ajl, ptr %i.pe, align 16, !tbaa !74
  store double %i.ajp, ptr %.sroa.252.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ajk, ptr %i.pf, align 16, !tbaa !74
  store double %i.ajp, ptr %.sroa.250.0..sroa_idx.i.i, align 8, !tbaa !74
  store double %i.ajk, ptr %i.pg, align 16, !tbaa !74
  store double %i.ahi, ptr %.sroa.248.0..sroa_idx.i.i, align 8, !tbaa !74
  %i.ajr = load double, ptr %i.ajm, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ajs = call ptr @simpleSplineRoute(double %i.ahj, double %i.ahi, double %i.ahs, double %i.ahr, ptr nonnull %2, i64 8, ptr noundef nonnull %i.a, i32 noundef %i.pi) #24, !inline_history !147 ; 4 uses
  %i.ajt = icmp ne ptr %i.ajs, null
  %i.aju = load i64, ptr %i.a, align 8            ; 2 uses
  %i.ajv = icmp ne i64 %i.aju, 0
  %or.cond.not.peel.i.i = select i1 %i.ajt, i1 %i.ajv, i1 false
  br i1 %or.cond.not.peel.i.i, label %bb.de, label %.loopexit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.ajw = fmul double %i.ajr, 5.000000e-01
  %i.ajx = fadd double %i.ajp, %i.ajw
  %i.ajy = load ptr, ptr %i.ajd, align 8, !tbaa !19
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 120
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !68 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 72
  store double %i.aia, ptr %i.akb, align 8, !tbaa !83
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aka, i64 80
  store double %i.ajx, ptr %i.akc, align 8, !tbaa !86
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 105
  store i8 1, ptr %i.akd, align 1, !tbaa !87
  %i.ake = load i32, ptr %i.ajc, align 8
  %i.akf = and i32 %i.ake, 3
  %i.akg = icmp eq i32 %i.akf, 2
  %i.akh = select i1 %i.akg, i64 56, i64 -8
  %i.aki = getelementptr inbounds i8, ptr %i.ajc, i64 %i.akh
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !106
  call void @clip_and_install(ptr noundef nonnull %i.ajc, ptr noundef %i.akj, ptr noundef nonnull %i.ajs, i64 noundef %i.aju, ptr noundef nonnull @sinfo) #24, !inline_history !147
  call void @free(ptr noundef nonnull %i.ajs) #24, !inline_history !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %exitcond.peel.not.i.i = icmp eq i32 %spec.select.i443.lcssa, 2
  %i.akk = insertelement <2 x double> poison, double %i.ajl, i64 0
  %i.akl = insertelement <2 x double> %i.akk, double %i.ajk, i64 1 ; 2 uses
  br i1 %exitcond.peel.not.i.i, label %.preheader.i.i434, label %.peel.next.i.i

.preheader.i.i434:                                ; preds = %bb.dh, %bb.de, %.lr.ph.preheader.i.i
  %.0243.lcssa.i.i = phi double [ %i.aiw, %.lr.ph.preheader.i.i ], [ %i.aiw, %bb.de ], [ %.1244.i.i, %bb.dh ]
  %.0242.lcssa.i.i = phi double [ %i.aiu, %.lr.ph.preheader.i.i ], [ %i.ajp, %bb.de ], [ %.1.i.i436, %bb.dh ]
  %i.akm = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i.i ], [ %i.akl, %bb.de ], [ %i.akl, %bb.dh ]
  %i.akn = icmp ult i32 %spec.select.i443.lcssa, %.0262.lcssa1037
  br i1 %i.akn, label %.lr.ph298.i.i, label %._crit_edge299.i.i

.lr.ph298.i.i:                                    ; preds = %.preheader.i.i434
  %i.ako = insertelement <2 x double> poison, double %i.ahy, i64 0
  %i.akp = insertelement <2 x double> %i.ako, double %i.ahx, i64 1
  %i.akq = insertelement <2 x double> poison, double %i.ahx, i64 0
  %i.akr = insertelement <2 x double> %i.akq, double %i.ahy, i64 1
  %i.aks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akp, <2 x double> splat (double 2.000000e+00), <2 x double> %i.akr)
  %i.akt = fdiv <2 x double> %i.aks, splat (double 3.000000e+00)
  %i.aku = zext i32 %spec.select.i443.lcssa to i64
  %i.akv = insertelement <2 x double> poison, double %i.aja, i64 0
  %i.akw = shufflevector <2 x double> %i.ahq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.di

.peel.next.i.i:                                   ; preds = %bb.de, %bb.dh
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.dh ], [ 2, %bb.de ] ; 3 uses
  %.0242286.i.i = phi double [ %.1.i.i436, %bb.dh ], [ %i.ajp, %bb.de ] ; 2 uses
  %.0243285.i.i = phi double [ %.1244.i.i, %bb.dh ], [ %i.aiw, %bb.de ] ; 6 uses
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %indvars.iv.i.i
end_hunk_0
begin_hunk_1_@maximal_bbox:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !320
  %i.q = fadd double %i.n, %i.p
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  %i.w = load double, ptr %i.v, align 8, !tbaa !54
  %i.x = fadd double %i.u, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.z = load i8, ptr %i.y, align 8, !tbaa !66
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.val68, i64 352
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !89
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e-01
  %i.af = fadd double %i.x, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !320
  %i.ai = fadd double %i.x, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi double [ %i.q, %bb.c ], [ %i.af, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aj = fcmp olt double %.0, %i.f
  %.055 = select i1 %i.aj, double %.0, double %i.f
  %i.ak = tail call double @llvm.round.f64(double %.055)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.al = tail call nsz double @llvm.round.f64(double %i.f)
  %i.am = load double, ptr %2, align 8, !tbaa !321
  %i.an = tail call nsz double @llvm.minnum.f64(double %i.al, double %i.am)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi double [ %i.an, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  store double %storemerge, ptr %0, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %.16.val, i64 216
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !66
  %i.aq = icmp eq i8 %i.ap, 1                     ; 2 uses
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %.not63 = icmp eq ptr %i.as, null
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = fadd double %i.b, 1.000000e+01
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.16.val, i64 112
  %i.av = load double, ptr %i.au, align 8, !tbaa !55
  %i.aw = fadd double %i.b, %i.av
  %i.ax = fadd double %i.aw, 4.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.156 = phi double [ %i.at, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %i.ay = tail call fastcc ptr @neighbor(ptr %.val68.val, ptr nonnull %.16.val, ptr noundef %3, ptr noundef %4, i32 noundef 1) ; 3 uses
  %.not64 = icmp eq ptr %i.ay, null
  br i1 %.not64, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = tail call fastcc ptr @cl_bound(ptr noundef nonnull %1, ptr nonnull %.16.val, ptr noundef %i.ay) ; 2 uses
  %.not65 = icmp eq ptr %i.az, null
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !322
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !320
  %i.bg = fsub double %i.bd, %i.bf
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !97
  %i.bn = fsub double %i.bk, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !66
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.val68, i64 352
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !89
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = fmul nnan double %i.bt, 5.000000e-01
  %i.bv = fsub double %i.bn, %i.bu
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !320
  %i.by = fsub double %i.bn, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.1 = phi double [ %i.bg, %bb.o ], [ %i.bv, %bb.q ], [ %i.by, %bb.r ] ; 2 uses
  %i.bz = fcmp ogt double %.1, %.156
  %.2 = select i1 %i.bz, double %.1, double %.156
  %i.ca = tail call double @llvm.round.f64(double %.2)
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.cb = tail call nsz double @llvm.round.f64(double %.156)
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !323
  %i.ce = tail call nsz double @llvm.maxnum.f64(double %i.cb, double %i.cd)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi double [ %i.ce, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %i.cf, align 8, !tbaa !234
  br i1 %i.aq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !75
  %.not66 = icmp eq ptr %i.ch, null
  br i1 %.not66, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.16.val, i64 112
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = fsub double %.sink, %i.cj               ; 2 uses
  store double %i.cl, ptr %i.ck, align 8, !tbaa !234
  %i.cm = fcmp olt double %i.cl, %storemerge
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %i.b, ptr %i.ck, align 8, !tbaa !234
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.16.val, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !85 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.16.val, i64 360
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !111
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [88 x i8], ptr %.val68.val, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !225
  %i.cv = fsub double %i.co, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.cv, ptr %i.cw, align 8, !tbaa !241
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !226
  %i.cz = fadd double %i.co, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.cz, ptr %i.da, align 8, !tbaa !230
  ret void
}

declare void @beginpath(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @endpath(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @neighbor(ptr nofree readonly captures(none) %.16.val.264.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val1, i64 364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val1, i64 280
  %.0212 = add nsw i32 %i.b, %2                   ; 2 uses
  %i.d = icmp sgt i32 %.0212, -1
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val1, i64 360
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [88 x i8], ptr %.16.val.264.val, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not5.i = icmp eq ptr %1, null
  %i.k = icmp ne ptr %0, null
  %3 = zext nneg i32 %.0212 to i64
  %4 = sext i32 %2 to i64
  %5 = sext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 3 uses
  %i.l = icmp slt i64 %indvars.iv, %5
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.s = load i8, ptr %i.r, align 8, !tbaa !66
  switch i8 %i.s, label %.thread [
    i8 1, label %bb.d
    i8 0, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !107
  %i.x = icmp sgt i32 %i.w, %i.b                  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.z = load i64, ptr %i.y, align 8, !tbaa !251
  %.not.i = icmp eq i64 %i.z, 1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !251
  %.not60.i = icmp eq i64 %i.aa, 1
  br i1 %.not60.i, label %.thread.i, label %.critedge

bb.f:                                             ; preds = %.thread
  br i1 %.not5.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 3
  %i.ag = icmp eq i32 %i.af, 2
  %i.ah = select i1 %i.ag, i64 56, i64 -8
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106 ; 2 uses
  %i.ak = load i32, ptr %1, align 8
  %i.al = and i32 %i.ak, 3
  %i.am = icmp eq i32 %i.al, 2
  %i.an = select i1 %i.am, i64 56, i64 -8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.aq = icmp eq ptr %i.aj, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 364
  %i.au = load i32, ptr %i.at, align 4, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 364
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !107
  %i.az = icmp sle i32 %i.au, %i.ay
  %.not61.i = xor i1 %i.x, %i.az
  br i1 %.not61.i, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 280
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !251
  %.not62.i = icmp eq i64 %i.bc, 1
  br i1 %.not62.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !66
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !251
  %.not63.i = icmp eq i64 %i.bk, 1
  br i1 %.not63.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !66
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !77
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !78 ; 2 uses
  %i.bq = load i32, ptr %i.bh, align 8
  %i.br = and i32 %i.bq, 3
  %i.bs = icmp eq i32 %i.br, 2
  %i.bt = select i1 %i.bs, i64 56, i64 -8
  %i.bu = getelementptr inbounds i8, ptr %i.bh, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !106 ; 2 uses
  %i.bw = load i32, ptr %i.bp, align 8
  %i.bx = and i32 %i.bw, 3
  %i.by = icmp eq i32 %i.bx, 2
  %i.bz = select i1 %i.by, i64 56, i64 -8
  %i.ca = getelementptr inbounds i8, ptr %i.bp, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106 ; 2 uses
  %i.cc = icmp eq ptr %i.bv, %i.cb
  br i1 %i.cc, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 364
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !107
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 364
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !107
  %i.cl = icmp sle i32 %i.cg, %i.ck
  %.not61.1.i = xor i1 %i.x, %i.cl
  br i1 %.not61.1.i, label %.thread.i, label %.backedge

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !76
  %i.co = icmp eq i64 %i.cn, 1
  %or.cond3.i = and i1 %i.k, %i.co
  br i1 %or.cond3.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.thread.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !271
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = and i32 %i.cs, 3
  %i.cu = icmp eq i32 %i.ct, 3
  %i.cv = select i1 %i.cu, i64 56, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !106 ; 2 uses
  %i.cy = load i32, ptr %0, align 8
  %i.cz = and i32 %i.cy, 3
  %i.da = icmp eq i32 %i.cz, 3
  %i.db = select i1 %i.da, i64 56, i64 120
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !106 ; 2 uses
  %i.de = icmp eq ptr %i.cx, %i.dd
  br i1 %i.de, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 364
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !107
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !19 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 364
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !107
  %i.dn = icmp sle i32 %i.di, %i.dm
  %.not64.i = xor i1 %i.x, %i.dn
  br i1 %.not64.i, label %bb.q, label %.backedge

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 256
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 264
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !76
  %.not65.i = icmp eq i64 %i.dq, 1
  br i1 %.not65.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !66
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !271
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !78 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 256
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 264
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !76
  %.not66.i = icmp eq i64 %i.dy, 1
  br i1 %.not66.i, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 216
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !66
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !271
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !78 ; 2 uses
  %i.ee = load i32, ptr %i.dv, align 8
  %i.ef = and i32 %i.ee, 3
  %i.eg = icmp eq i32 %i.ef, 3
  %i.eh = select i1 %i.eg, i64 56, i64 120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !106 ; 2 uses
  %i.ek = load i32, ptr %i.ed, align 8
  %i.el = and i32 %i.ek, 3
  %i.em = icmp eq i32 %i.el, 3
  %i.en = select i1 %i.em, i64 56, i64 120
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !106 ; 2 uses
  %i.eq = icmp eq ptr %i.ej, %i.ep
  br i1 %i.eq, label %.critedge, label %.split

.split:                                           ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 364
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !107
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 364
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !107
  %i.ez = icmp sgt i32 %i.eu, %i.ey
  %not..not64.1.i = xor i1 %i.x, %i.ez
  br i1 %not..not64.1.i, label %.backedge, label %.critedge

.backedge:                                        ; preds = %bb.p, %bb.n, %bb.h, %.split
  %indvars.iv.next = add nsw i64 %indvars.iv, %4  ; 2 uses
  %i.fa = icmp sgt i64 %indvars.iv.next, -1
  br i1 %i.fa, label %bb.b, label %.critedge, !llvm.loop !324

.critedge:                                        ; preds = %bb.b, %.backedge, %bb.d, %.split, %bb.e, %.thread.i, %bb.o, %bb.r, %bb.q, %bb.t, %bb.s, %bb.u, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.o, %bb.d ], [ %i.o, %.split ], [ null, %.backedge ], [ %i.o, %bb.e ], [ %i.o, %.thread.i ], [ %i.o, %bb.o ], [ %i.o, %bb.r ], [ %i.o, %bb.q ], [ %i.o, %bb.t ], [ %i.o, %bb.s ], [ %i.o, %bb.u ], [ %i.o, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @cl_bound(ptr nofree noundef readnone captures(address) %0, ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !66
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 336
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !325  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !124  ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  %i.p = select i1 %i.o, i64 56, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !325
  %i.w = icmp eq i32 %i.n, 2
  %i.x = select i1 %i.w, i64 56, i64 -8
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !325
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.051 = phi ptr [ %i.e, %bb.b ], [ %i.v, %bb.c ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !66
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !325 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %0
  %spec.select = select i1 %i.al, ptr null, ptr %i.ak ; 4 uses
  %.not64 = icmp eq ptr %spec.select, null
  %.not65 = icmp eq ptr %spec.select, %.051
  %or.cond = select i1 %.not64, i1 true, i1 %.not65
  %.not66 = icmp eq ptr %spec.select, %.0
  %or.cond67 = select i1 %or.cond, i1 true, i1 %.not66
  %spec.select75 = select i1 %or.cond67, ptr null, ptr %spec.select
  br label %cl_vninside.exit77.thread

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 3                        ; 2 uses
  %i.av = icmp eq i32 %i.au, 3
  %i.aw = select i1 %i.av, i64 56, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 336
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !325 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, %0
  %spec.select68 = select i1 %i.bd, ptr null, ptr %i.bc ; 3 uses
  %.not = icmp eq ptr %spec.select68, null
  %.not59 = icmp eq ptr %spec.select68, %.051
  %or.cond69 = select i1 %.not, i1 true, i1 %.not59
  %.not60 = icmp eq ptr %spec.select68, %.0
  %or.cond70 = select i1 %or.cond69, i1 true, i1 %.not60
  br i1 %or.cond70, label %cl_vninside.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %i.bc, i64 16
  %spec.select68.val = load ptr, ptr %i.be, align 8, !tbaa !19 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select68.val, i64 32
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !322
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !82 ; 2 uses
  %i.bj = fcmp ugt double %i.bg, %i.bi
  br i1 %i.bj, label %cl_vninside.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %spec.select68.val, i64 48
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !319
  %i.bm = fcmp ugt double %i.bi, %i.bl
  br i1 %i.bm, label %cl_vninside.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select68.val, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !326
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !85 ; 2 uses
  %i.br = fcmp ugt double %i.bo, %i.bq
  br i1 %i.br, label %cl_vninside.exit.thread, label %cl_vninside.exit

cl_vninside.exit:                                 ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select68.val, i64 56
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !327
  %i.bu = fcmp ugt double %i.bq, %i.bt
  br i1 %i.bu, label %cl_vninside.exit.thread, label %cl_vninside.exit77.thread

cl_vninside.exit.thread:                          ; preds = %bb.i, %bb.g, %bb.h, %cl_vninside.exit, %bb.f
  %i.bv = icmp eq i32 %i.au, 2
  %i.bw = select i1 %i.bv, i64 56, i64 -8
  %i.bx = getelementptr inbounds i8, ptr %i.as, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 336
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !325 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, %0
  %spec.select71 = select i1 %i.cd, ptr null, ptr %i.cc ; 3 uses
  %.not61 = icmp eq ptr %spec.select71, null
  %.not62 = icmp eq ptr %spec.select71, %.051
  %or.cond72 = select i1 %.not61, i1 true, i1 %.not62
  %.not63 = icmp eq ptr %spec.select71, %.0
  %or.cond73 = select i1 %or.cond72, i1 true, i1 %.not63
  br i1 %or.cond73, label %cl_vninside.exit77.thread, label %bb.j

bb.j:                                             ; preds = %cl_vninside.exit.thread
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %spec.select71.val = load ptr, ptr %i.ce, align 8, !tbaa !19 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select71.val, i64 32
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !322
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !82 ; 2 uses
  %i.cj = fcmp ugt double %i.cg, %i.ci
  br i1 %i.cj, label %cl_vninside.exit77.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select71.val, i64 48
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !319
  %i.cm = fcmp ugt double %i.ci, %i.cl
  br i1 %i.cm, label %cl_vninside.exit77.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %spec.select71.val, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !326
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !85 ; 2 uses
  %i.cr = fcmp ugt double %i.co, %i.cq
  br i1 %i.cr, label %cl_vninside.exit77.thread, label %cl_vninside.exit77

cl_vninside.exit77:                               ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select71.val, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !327
  %i.cu = fcmp ole double %i.cq, %i.ct
  %cond.fr = freeze i1 %i.cu
  %spec.select2 = select i1 %cond.fr, ptr %i.cc, ptr null
  br label %cl_vninside.exit77.thread

cl_vninside.exit77.thread:                        ; preds = %cl_vninside.exit77, %bb.l, %bb.j, %bb.k, %bb.e, %cl_vninside.exit, %cl_vninside.exit.thread
  %.052 = phi ptr [ %spec.select75, %bb.e ], [ %i.bc, %cl_vninside.exit ], [ null, %cl_vninside.exit.thread ], [ null, %bb.l ], [ %spec.select2, %cl_vninside.exit77 ], [ null, %bb.k ], [ null, %bb.j ]
  ret ptr %.052
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @completeregularpath(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  %i.d = select i1 %i.c, i64 56, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
end_hunk_1
