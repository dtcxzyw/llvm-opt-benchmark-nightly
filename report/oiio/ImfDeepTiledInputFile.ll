inline.NumInlined: 777
inline.NumDeleted: 367
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile12getTileOrderEPiS1_S1_S1_:bb.a
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %common.resume

bb.u:                                             ; preds = %bb.q
  unreachable

bb.v:                                             ; preds = %bb.g
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, ptr noundef nonnull @.str.25)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bm) #26
  br label %common.resume

.loopexit176:                                     ; preds = %._crit_edge.us, %.lr.ph
  %.3110 = phi i64 [ %i.au, %.lr.ph ], [ %i.al, %._crit_edge.us ] ; 6 uses
  %.not = icmp eq i64 %.3110, 0
  br i1 %.not, label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit176
  %i.bo = icmp ugt i64 %.3110, 384307168202282325
  br i1 %i.bo, label %.noexc, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.noexc:                                           ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #27
  unreachable

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.bp = mul nuw nsw i64 %.3110, 24
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %i.br = add nsw i64 %.3110, -1                  ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %.idx.i.i.i.i.i32.i.i = mul nuw nsw i64 %i.br, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i.i.i.i32.i.i
  br label %.lr.ph.i.i.i.i.i.i.i33.i.i

.lr.ph.i.i.i.i.i.i.i33.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i, %bb.z
  %.06.i.i.i.i.i.i.i34.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i33.i.i ], [ %i.bt, %bb.z ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i34.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !192
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i34.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i35.i.i = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i.i.i.i.i.i.i35.i.i, label %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i, label %.lr.ph.i.i.i.i.i.i.i33.i.i, !llvm.loop !193

_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i33.i.i, %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.3110
  br label %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit: ; preds = %.preheader178, %bb.i, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i, %.loopexit176
  %.not311 = phi i1 [ false, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i ], [ true, %.loopexit176 ], [ true, %bb.i ], [ true, %.preheader178 ]
  %.3110310 = phi i64 [ %.3110, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i ], [ 0, %.loopexit176 ], [ 0, %bb.i ], [ 0, %.preheader178 ]
  %.sroa.0.1 = phi ptr [ %i.bq, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i ], [ null, %.loopexit176 ], [ null, %bb.i ], [ null, %.preheader178 ] ; 25 uses
  %.sroa.12.0 = phi ptr [ %i.bw, %_ZNSt12_Vector_baseIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE13_M_deallocateEPS2_m.exit40.i.i ], [ null, %.loopexit176 ], [ null, %bb.i ], [ null, %.preheader178 ] ; 9 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !107
  switch i32 %i.bz, label %bb.ar [
    i32 0, label %bb.ad
    i32 1, label %bb.ad
    i32 2, label %.preheader174
  ]

.preheader174:                                    ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit
  %i.ca = icmp sgt i32 %i.p, 0
  br i1 %i.ca, label %.lr.ph232, label %.loopexit165

.lr.ph232:                                        ; preds = %.preheader174
  %i.cb = icmp sgt i32 %.fr263, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 24
  br i1 %i.cb, label %.lr.ph232.split.us, label %.lr.ph232.split

.lr.ph232.split.us:                               ; preds = %.lr.ph232, %._crit_edge.us237
  %.0116230.us = phi i32 [ %i.ch, %._crit_edge.us237 ], [ 0, %.lr.ph232 ] ; 4 uses
  %.3123229.us = phi i64 [ %.us-phi227.us, %._crit_edge.us237 ], [ 0, %.lr.ph232 ] ; 2 uses
  %i.cd = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0116230.us)
          to label %.preheader173.us unwind label %.split239.us ; 2 uses

.lr.ph219.split.us236:                            ; preds = %.preheader173.us, %.preheader172.us234
  %.0115217.us233 = phi i32 [ %i.cf, %.preheader172.us234 ], [ 0, %.preheader173.us ] ; 2 uses
  %i.ce = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0115217.us233)
          to label %.preheader172.us234 unwind label %.split.split.us ; 0 uses

.preheader172.us234:                              ; preds = %.lr.ph219.split.us236
  %i.cf = add nuw nsw i32 %.0115217.us233, 1      ; 2 uses
  %exitcond279.not = icmp eq i32 %i.cf, %.fr263
  br i1 %exitcond279.not, label %._crit_edge.us237, label %.lr.ph219.split.us236, !llvm.loop !194

.preheader173.us:                                 ; preds = %.lr.ph232.split.us
  %i.cg = icmp sgt i32 %i.cd, 0
  br i1 %i.cg, label %.lr.ph219.split.us.us, label %.lr.ph219.split.us236

._crit_edge.us237:                                ; preds = %.preheader172.us234, %._crit_edge210.us.us
  %.us-phi227.us = phi i64 [ %.us-phi213.us.us, %._crit_edge210.us.us ], [ %.3123229.us, %.preheader172.us234 ]
  %i.ch = add nuw nsw i32 %.0116230.us, 1         ; 2 uses
  %exitcond283.not = icmp eq i32 %i.ch, %i.p
  br i1 %exitcond283.not, label %.loopexit165, label %.lr.ph232.split.us, !llvm.loop !195

.lr.ph219.split.us.us:                            ; preds = %.preheader173.us, %._crit_edge210.us.us
  %.0115217.us.us = phi i32 [ %i.ck, %._crit_edge210.us.us ], [ 0, %.preheader173.us ] ; 4 uses
  %.4124216.us.us = phi i64 [ %.us-phi213.us.us, %._crit_edge210.us.us ], [ %.3123229.us, %.preheader173.us ] ; 2 uses
  %i.ci = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0115217.us.us)
          to label %.preheader172.us.us unwind label %.split.us225.split.us ; 2 uses

.preheader172.us.us:                              ; preds = %.lr.ph219.split.us.us
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.preheader166.us.us.us, label %._crit_edge210.us.us

._crit_edge210.us.us:                             ; preds = %._crit_edge.us212.us.us, %.preheader172.us.us
  %.us-phi213.us.us = phi i64 [ %.4124216.us.us, %.preheader172.us.us ], [ %i.cs, %._crit_edge.us212.us.us ] ; 2 uses
  %i.ck = add nuw nsw i32 %.0115217.us.us, 1      ; 2 uses
  %exitcond282.not = icmp eq i32 %i.ck, %.fr263
  br i1 %exitcond282.not, label %._crit_edge.us237, label %.lr.ph219.split.us.us, !llvm.loop !194

.preheader166.us.us.us:                           ; preds = %.preheader172.us.us, %._crit_edge.us212.us.us
  %.0113209.us.us.us = phi i32 [ %i.da, %._crit_edge.us212.us.us ], [ 0, %.preheader172.us.us ] ; 3 uses
  %.5125208.us.us.us = phi i64 [ %i.cs, %._crit_edge.us212.us.us ], [ %.4124216.us.us, %.preheader172.us.us ]
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.preheader166.us.us.us
  %.0112205.us.us.us = phi i32 [ 0, %.preheader166.us.us.us ], [ %i.cz, %bb.ac ] ; 3 uses
  %.6126204.us.us.us = phi i64 [ %.5125208.us.us.us, %.preheader166.us.us.us ], [ %i.cs, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cl = load ptr, ptr %0, align 8, !tbaa !56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !60
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  %i.cq = invoke i32 @exr_read_tile_chunk_info(ptr noundef %i.cm, i32 noundef %i.cp, i32 noundef %.0112205.us.us.us, i32 noundef %.0113209.us.us.us, i32 noundef %.0115217.us.us, i32 noundef %.0116230.us, ptr noundef nonnull %10)
          to label %bb.ab unwind label %.loopexit167.split.us.split.us.split.us

bb.ab:                                            ; preds = %bb.aa
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ac, label %.split.us215

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add i64 %.6126204.us.us.us, 1           ; 3 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.1, i64 %.6126204.us.us.us ; 5 uses
  %i.cu = load i64, ptr %i.cc, align 8, !tbaa !196
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !197
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %.0112205.us.us.us, ptr %i.cv, align 8, !tbaa !199
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 %.0113209.us.us.us, ptr %i.cw, align 4, !tbaa !200
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 %.0115217.us.us, ptr %i.cx, align 8, !tbaa !201
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %.0116230.us, ptr %i.cy, align 4, !tbaa !202
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cz = add nuw nsw i32 %.0112205.us.us.us, 1   ; 2 uses
  %exitcond280.not = icmp eq i32 %i.cz, %i.ci
  br i1 %exitcond280.not, label %._crit_edge.us212.us.us, label %bb.aa, !llvm.loop !203

._crit_edge.us212.us.us:                          ; preds = %bb.ac
  %i.da = add nuw nsw i32 %.0113209.us.us.us, 1   ; 2 uses
  %exitcond281.not = icmp eq i32 %i.da, %i.cd
  br i1 %exitcond281.not, label %._crit_edge210.us.us, label %.preheader166.us.us.us, !llvm.loop !204

.split239.us:                                     ; preds = %.lr.ph232.split.us
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.split.split.us:                                  ; preds = %.lr.ph219.split.us236
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.split.us225.split.us:                            ; preds = %.lr.ph219.split.us.us
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit167.split.us.split.us.split.us:          ; preds = %bb.aa
  %lpad.loopexit169.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit, %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit
  %i.de = icmp sgt i32 %i.p, 0
  br i1 %i.de, label %.lr.ph260, label %.loopexit165

.lr.ph260:                                        ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph260, %._crit_edge250
  %.0120259 = phi i64 [ 0, %.lr.ph260 ], [ %.1121.lcssa, %._crit_edge250 ] ; 2 uses
  %.0127257 = phi i32 [ 0, %.lr.ph260 ], [ %i.dz, %._crit_edge250 ] ; 6 uses
  %i.dg = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0127257)
          to label %bb.af unwind label %bb.aj     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dh = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0127257)
          to label %.preheader164 unwind label %bb.ak ; 2 uses

.preheader164:                                    ; preds = %bb.af
  %i.di = icmp sgt i32 %i.dg, 0
  %i.dj = icmp sgt i32 %i.dh, 0
  %or.cond321 = and i1 %i.di, %i.dj
  br i1 %or.cond321, label %.preheader.us.preheader, label %._crit_edge250

.preheader.us.preheader:                          ; preds = %.preheader164
  %11 = insertelement <2 x i32> poison, i32 %.0127257, i64 0
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us252
  %.0119249.us = phi i32 [ %i.dy, %._crit_edge.us252 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.1121248.us = phi i64 [ %i.dr, %._crit_edge.us252 ], [ %.0120259, %.preheader.us.preheader ]
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader.us, %bb.ai
  %.0118245.us = phi i32 [ 0, %.preheader.us ], [ %i.dx, %bb.ai ] ; 3 uses
  %.2122244.us = phi i64 [ %.1121248.us, %.preheader.us ], [ %i.dr, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.dk = load ptr, ptr %0, align 8, !tbaa !56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !60
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !55
  %i.dp = invoke i32 @exr_read_tile_chunk_info(ptr noundef %i.dl, i32 noundef %i.do, i32 noundef %.0118245.us, i32 noundef %.0119249.us, i32 noundef %.0127257, i32 noundef %.0127257, ptr noundef nonnull %9)
          to label %bb.ah unwind label %.loopexit.split.us

bb.ah:                                            ; preds = %bb.ag
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ai, label %.split256.us

bb.ai:                                            ; preds = %bb.ah
  %i.dr = add i64 %.2122244.us, 1                 ; 3 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.1, i64 %.2122244.us ; 4 uses
  %i.dt = load i64, ptr %i.df, align 8, !tbaa !196
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !197
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %.0118245.us, ptr %i.du, align 8, !tbaa !199
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 %.0119249.us, ptr %i.dv, align 4, !tbaa !200
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i32> %12, ptr %i.dw, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dx = add nuw nsw i32 %.0118245.us, 1         ; 2 uses
  %exitcond284.not = icmp eq i32 %i.dx, %i.dh
  br i1 %exitcond284.not, label %._crit_edge.us252, label %bb.ag, !llvm.loop !205

._crit_edge.us252:                                ; preds = %bb.ai
  %i.dy = add nuw nsw i32 %.0119249.us, 1         ; 2 uses
  %exitcond285.not = icmp eq i32 %i.dy, %i.dg
  br i1 %exitcond285.not, label %._crit_edge250, label %.preheader.us, !llvm.loop !206

.loopexit.split.us:                               ; preds = %bb.ag
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

._crit_edge250:                                   ; preds = %._crit_edge.us252, %.preheader164
  %.1121.lcssa = phi i64 [ %.0120259, %.preheader164 ], [ %i.dr, %._crit_edge.us252 ]
  %i.dz = add nuw nsw i32 %.0127257, 1            ; 2 uses
  %exitcond286.not = icmp eq i32 %i.dz, %i.p
  br i1 %exitcond286.not, label %.loopexit165, label %bb.ae, !llvm.loop !207

bb.aj:                                            ; preds = %bb.ae
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ak:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.split256.us:                                     ; preds = %bb.ah
  %i.ec = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ec, ptr noundef nonnull @.str.27)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.split256.us
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bk unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %.split256.us
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ec) #26
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %bb.am
  %.pn131 = phi { ptr, i32 } [ %i.ed, %bb.am ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bi

.lr.ph232.split:                                  ; preds = %.lr.ph232, %.preheader173
  %.0116230 = phi i32 [ %i.ef, %.preheader173 ], [ 0, %.lr.ph232 ] ; 2 uses
  %i.ee = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0116230)
          to label %.preheader173 unwind label %.split239 ; 0 uses

.preheader173:                                    ; preds = %.lr.ph232.split
  %i.ef = add nuw nsw i32 %.0116230, 1            ; 2 uses
  %exitcond278.not = icmp eq i32 %i.ef, %i.p
  br i1 %exitcond278.not, label %.loopexit165, label %.lr.ph232.split, !llvm.loop !195

.split239:                                        ; preds = %.lr.ph232.split
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp168:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.us215:                                     ; preds = %bb.ab
  %i.eh = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull @.str.27)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.split.us215
  invoke void @__cxa_throw(ptr nonnull %i.eh, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bk unwind label %.loopexit.split-lp168

bb.ap:                                            ; preds = %.split.us215
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eh) #26
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit167.split.us.split.us.split.us, %.loopexit.split-lp168, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.ap ], [ %lpad.loopexit169.us.us.us, %.loopexit167.split.us.split.us.split.us ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bi

bb.ar:                                            ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit
  %i.ej = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull @.str.25)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.bk unwind label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ej) #26
  br label %bb.bi

bb.au:                                            ; preds = %bb.as
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit165:                                     ; preds = %.preheader173, %._crit_edge.us237, %._crit_edge250, %.preheader174, %bb.ad
  %.not.i.i = icmp eq ptr %.sroa.0.1, %.sroa.12.0
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit165
  %i.em = ptrtoint ptr %.sroa.12.0 to i64
  %i.en = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 2 uses
  %i.ep = sdiv exact i64 %i.eo, 24
  %i.eq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = shl nuw nsw i64 %i.eq, 1
  %i.es = xor i64 %i.er, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.0.1, ptr %.sroa.12.0, i64 noundef %i.es)
  %i.et = icmp sgt i64 %i.eo, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0.1, i64 24 ; 3 uses
  br i1 %i.et, label %.lr.ph.i.i.i.i, label %bb.bb

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.ba
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i, %bb.ba ], [ 24, %bb.av ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.ba ], [ %.sroa.0.1, %bb.av ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %.val2.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !197 ; 4 uses
  %.val3.i.i.i.i.i = load i64, ptr %.sroa.0.1, align 8, !tbaa !197
  %i.eu = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.eu, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !192
  %i.ev = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.ev, label %bb.ax, label %bb.ay, !prof !208

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.1, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.1, i64 24, i1 false), !tbaa.struct !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !192
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 32
  %.sroa.5.i.i.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 8
  %.val2.i10.i.i.i.i.i = load i64, ptr %.pn18.i.i.i.i, align 8, !tbaa !197
  %i.ex = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn18.i.i.i.i, %bb.az ] ; 4 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !192
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !197
  %i.ey = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.ey, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, !llvm.loop !209

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.az
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.az ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 8, !tbaa !103
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !210

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i: ; preds = %bb.ba
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 384 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ez, %.sroa.12.0
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.fc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i ], [ %i.ez, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i ] ; 6 uses
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !103 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.5.i.i9.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i, align 8
end_hunk_0
