Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/multipartExamples?download=true
inline.NumInlined: 740
inline.NumDeleted: 417
begin_hunk_0_@_Z15modifyMultipartv:bb.a
  %exitcond44.not.i258 = icmp eq i64 %indvars.iv.next42.i257, %i.qz
  br i1 %exitcond44.not.i258, label %.loopexit.i240, label %.preheader.i244, !llvm.loop !163

bb.dh:                                            ; preds = %._crit_edge.i253, %.preheader.i244
  %indvars.iv37.i246 = phi i64 [ 0, %.preheader.i244 ], [ %indvars.iv.next38.i254, %._crit_edge.i253 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv37.i246
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !42 ; 3 uses
  %.not35.i247 = icmp eq i32 %i.rj, 0
  br i1 %.not35.i247, label %._crit_edge.i253, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %bb.dh
  %i.rk = load ptr, ptr %i.re, align 8, !tbaa !86
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.rh
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv37.i246
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !189 ; 2 uses
  %wide.trip.count.i249 = zext i32 %i.rj to i64   ; 3 uses
  %min.iters.check565 = icmp ult i32 %i.rj, 8
  br i1 %min.iters.check565, label %scalar.ph564.preheader, label %vector.ph566

vector.ph566:                                     ; preds = %.lr.ph.i248
  %n.vec567 = and i64 %wide.trip.count.i249, 4294967288 ; 3 uses
  br label %vector.body568

vector.body568:                                   ; preds = %vector.body568, %vector.ph566
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next572, %vector.body568 ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %index569 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16 ; 2 uses
  %wide.load570 = load <4 x float>, ptr %i.ro, align 4, !tbaa !89
  %wide.load571 = load <4 x float>, ptr %i.rp, align 4, !tbaa !89
  %i.rq = fadd <4 x float> %wide.load570, splat (float 5.000000e-01)
  %i.rr = fadd <4 x float> %wide.load571, splat (float 5.000000e-01)
  store <4 x float> %i.rq, ptr %i.ro, align 4, !tbaa !89
  store <4 x float> %i.rr, ptr %i.rp, align 4, !tbaa !89
  %index.next572 = add nuw i64 %index569, 8       ; 2 uses
  %i.rs = icmp eq i64 %index.next572, %n.vec567
  br i1 %i.rs, label %middle.block573, label %vector.body568, !llvm.loop !164

middle.block573:                                  ; preds = %vector.body568
  %cmp.n574 = icmp eq i64 %n.vec567, %wide.trip.count.i249
  br i1 %cmp.n574, label %._crit_edge.i253, label %scalar.ph564.preheader

scalar.ph564.preheader:                           ; preds = %.lr.ph.i248, %middle.block573
  %indvars.iv.i250.ph = phi i64 [ 0, %.lr.ph.i248 ], [ %n.vec567, %middle.block573 ]
  br label %scalar.ph564

._crit_edge.i253:                                 ; preds = %scalar.ph564, %middle.block573, %bb.dh
  %indvars.iv.next38.i254 = add nuw nsw i64 %indvars.iv37.i246, 1 ; 2 uses
  %exitcond40.not.i255 = icmp eq i64 %indvars.iv.next38.i254, %i.rc
  br i1 %exitcond40.not.i255, label %._crit_edge27.i256, label %bb.dh, !llvm.loop !165

scalar.ph564:                                     ; preds = %scalar.ph564.preheader, %scalar.ph564
  %indvars.iv.i250 = phi i64 [ %indvars.iv.next.i251, %scalar.ph564 ], [ %indvars.iv.i250.ph, %scalar.ph564.preheader ] ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv.i250 ; 2 uses
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !89
  %i.rv = fadd float %i.ru, 5.000000e-01
  store float %i.rv, ptr %i.rt, align 4, !tbaa !89
  %indvars.iv.next.i251 = add nuw nsw i64 %indvars.iv.i250, 1 ; 2 uses
  %exitcond.not.i252 = icmp eq i64 %indvars.iv.next.i251, %wide.trip.count.i249
  br i1 %exitcond.not.i252, label %._crit_edge.i253, label %scalar.ph564, !llvm.loop !166

_Z18modifyDeepChannelsIfEvRN7Imf_3_47Array2DIjEERNSt7__cxx114listINS1_IPT_EESaIS8_EEES6_.exit: ; preds = %.loopexit.i240, %_Z18modifyDeepChannelsIjEvRN7Imf_3_47Array2DIjEERNSt7__cxx114listINS1_IPT_EESaIS8_EEES6_.exit
  %i.rw = load i64, ptr %i.cn, align 8, !tbaa !23 ; 3 uses
  %i.rx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !23
  %i.ry = icmp eq i64 %i.rw, %i.rx
  br i1 %i.ry, label %bb.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread338

bb.di:                                            ; preds = %_Z18modifyDeepChannelsIfEvRN7Imf_3_47Array2DIjEERNSt7__cxx114listINS1_IPT_EESaIS8_EEES6_.exit
  %i.rz = icmp eq i64 %i.rw, 0
  br i1 %i.rz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260: ; preds = %bb.di
  %i.sa = load ptr, ptr @_ZN7Imf_3_4L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !24
  %i.sb = load ptr, ptr %i.cm, align 8, !tbaa !24
  %bcmp.i259 = call i32 @bcmp(ptr %i.sb, ptr %i.sa, i64 %i.rw)
  %i.sc = icmp eq i32 %bcmp.i259, 0
  br i1 %i.sc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread338

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread: ; preds = %bb.di, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260
  %i.sd = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.cl)
          to label %bb.dj unwind label %bb.dn     ; 2 uses

bb.dj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !74
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.si = trunc nuw nsw i64 %indvars.iv387 to i32
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.si)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(104) %15)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %reass.sub = sub i32 %i.sh, %i.sf
  %i.sj = add i32 %reass.sub, 1
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPart11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %i.sj)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.dv

bb.dn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.do:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.eh

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread338: ; preds = %_Z18modifyDeepChannelsIfEvRN7Imf_3_47Array2DIjEERNSt7__cxx114listINS1_IPT_EESaIS8_EEES6_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.sm = trunc nuw nsw i64 %indvars.iv387 to i32
  invoke void @_ZN7Imf_3_419DeepTiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.sm)
          to label %bb.dp unwind label %bb.du

bb.dp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread338
  invoke void @_ZN7Imf_3_419DeepTiledOutputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(104) %15)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.sn = invoke noundef i32 @_ZNK7Imf_3_419DeepTiledOutputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.so = invoke noundef i32 @_ZNK7Imf_3_419DeepTiledOutputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.sp = add nsw i32 %i.sn, -1
  %i.sq = add nsw i32 %i.so, -1
  invoke void @_ZN7Imf_3_419DeepTiledOutputPart10writeTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0, i32 noundef %i.sp, i32 noundef 0, i32 noundef %i.sq, i32 noundef 0)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit260.thread338
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.eh

bb.dv:                                            ; preds = %bb.dt, %bb.dm
  %.sroa.014.018.i261 = load ptr, ptr %12, align 8, !tbaa !87 ; 2 uses
  %.not19.i262 = icmp eq ptr %.sroa.014.018.i261, %12
  br i1 %.not19.i262, label %_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit, label %.lr.ph22.i

.loopexit.i264:                                   ; preds = %._crit_edge.i269, %.preheader.lr.ph.i267, %.lr.ph22.i
  %.sroa.014.0.i265 = load ptr, ptr %.sroa.014.020.i263, align 8, !tbaa !87 ; 2 uses
  %.not.i266 = icmp eq ptr %.sroa.014.0.i265, %12
  br i1 %.not.i266, label %_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit, label %.lr.ph22.i, !llvm.loop !167

.lr.ph22.i:                                       ; preds = %bb.dv, %.loopexit.i264
  %.sroa.014.020.i263 = phi ptr [ %.sroa.014.0.i265, %.loopexit.i264 ], [ %.sroa.014.018.i261, %bb.dv ] ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i263, i64 16 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !183 ; 2 uses
  %i.su = icmp sgt i64 %i.st, 0
  br i1 %i.su, label %.preheader.lr.ph.i267, label %.loopexit.i264

.preheader.lr.ph.i267:                            ; preds = %.lr.ph22.i
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i263, i64 24 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i263, i64 32
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !184 ; 3 uses
  %i.sy = icmp sgt i64 %i.sx, 0
  br i1 %i.sy, label %.preheader.i268, label %.loopexit.i264

.preheader.i268:                                  ; preds = %.preheader.lr.ph.i267, %._crit_edge.i269
  %i.sz = phi i64 [ %i.td, %._crit_edge.i269 ], [ %i.st, %.preheader.lr.ph.i267 ]
  %i.ta = phi i64 [ %i.te, %._crit_edge.i269 ], [ %i.sx, %.preheader.lr.ph.i267 ] ; 2 uses
  %i.tb = phi i64 [ %i.tf, %._crit_edge.i269 ], [ %i.sx, %.preheader.lr.ph.i267 ] ; 3 uses
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i269 ], [ 0, %.preheader.lr.ph.i267 ] ; 2 uses
  %i.tc = icmp sgt i64 %i.tb, 0
  br i1 %i.tc, label %.lr.ph.i270, label %._crit_edge.i269

._crit_edge.loopexit.i274:                        ; preds = %bb.dx
  %.pre30.i = load i64, ptr %i.ss, align 8, !tbaa !183
  br label %._crit_edge.i269

._crit_edge.i269:                                 ; preds = %._crit_edge.loopexit.i274, %.preheader.i268
  %i.td = phi i64 [ %.pre30.i, %._crit_edge.loopexit.i274 ], [ %i.sz, %.preheader.i268 ] ; 2 uses
  %i.te = phi i64 [ %i.tp, %._crit_edge.loopexit.i274 ], [ %i.ta, %.preheader.i268 ]
  %i.tf = phi i64 [ %i.tp, %._crit_edge.loopexit.i274 ], [ %i.tb, %.preheader.i268 ]
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.tg = icmp sgt i64 %i.td, %indvars.iv.next28.i
  br i1 %i.tg, label %.preheader.i268, label %.loopexit.i264, !llvm.loop !168

.lr.ph.i270:                                      ; preds = %.preheader.i268, %bb.dx
  %i.th = phi i64 [ %i.tp, %bb.dx ], [ %i.ta, %.preheader.i268 ]
  %indvars.iv.i271 = phi i64 [ %indvars.iv.next.i273, %bb.dx ], [ 0, %.preheader.i268 ] ; 2 uses
  %i.ti = phi i64 [ %i.tp, %bb.dx ], [ %i.tb, %.preheader.i268 ]
  %i.tj = load ptr, ptr %i.sw, align 8, !tbaa !80
  %i.tk = mul nuw nsw i64 %i.ti, %indvars.iv27.i
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %indvars.iv.i271
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !186 ; 2 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i270
  call void @_ZdaPv(ptr noundef nonnull %i.tn) #23
  %.pre.i272 = load i64, ptr %i.sv, align 8, !tbaa !184
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i270
  %i.tp = phi i64 [ %i.th, %.lr.ph.i270 ], [ %.pre.i272, %bb.dw ] ; 5 uses
  %indvars.iv.next.i273 = add nuw nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %i.tq = icmp sgt i64 %i.tp, %indvars.iv.next.i273
  br i1 %i.tq, label %.lr.ph.i270, label %._crit_edge.loopexit.i274, !llvm.loop !169

_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit: ; preds = %.loopexit.i264, %bb.dv
  %.sroa.014.018.i275 = load ptr, ptr %13, align 8, !tbaa !87 ; 2 uses
  %.not19.i276 = icmp eq ptr %.sroa.014.018.i275, %13
  br i1 %.not19.i276, label %_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit, label %.lr.ph22.i277

.loopexit.i279:                                   ; preds = %._crit_edge.i285, %.preheader.lr.ph.i282, %.lr.ph22.i277
  %.sroa.014.0.i280 = load ptr, ptr %.sroa.014.020.i278, align 8, !tbaa !87 ; 2 uses
  %.not.i281 = icmp eq ptr %.sroa.014.0.i280, %13
  br i1 %.not.i281, label %_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit, label %.lr.ph22.i277, !llvm.loop !170

.lr.ph22.i277:                                    ; preds = %_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit, %.loopexit.i279
  %.sroa.014.020.i278 = phi ptr [ %.sroa.014.0.i280, %.loopexit.i279 ], [ %.sroa.014.018.i275, %_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit ] ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i278, i64 16 ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !90 ; 2 uses
  %i.tt = icmp sgt i64 %i.ts, 0
  br i1 %i.tt, label %.preheader.lr.ph.i282, label %.loopexit.i279

.preheader.lr.ph.i282:                            ; preds = %.lr.ph22.i277
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i278, i64 24 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i278, i64 32
  %i.tw = load i64, ptr %i.tu, align 8, !tbaa !91 ; 3 uses
  %i.tx = icmp sgt i64 %i.tw, 0
  br i1 %i.tx, label %.preheader.i283, label %.loopexit.i279

.preheader.i283:                                  ; preds = %.preheader.lr.ph.i282, %._crit_edge.i285
  %i.ty = phi i64 [ %i.uc, %._crit_edge.i285 ], [ %i.ts, %.preheader.lr.ph.i282 ]
  %i.tz = phi i64 [ %i.ud, %._crit_edge.i285 ], [ %i.tw, %.preheader.lr.ph.i282 ] ; 2 uses
  %i.ua = phi i64 [ %i.ue, %._crit_edge.i285 ], [ %i.tw, %.preheader.lr.ph.i282 ] ; 3 uses
  %indvars.iv27.i284 = phi i64 [ %indvars.iv.next28.i286, %._crit_edge.i285 ], [ 0, %.preheader.lr.ph.i282 ] ; 2 uses
  %i.ub = icmp sgt i64 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i287, label %._crit_edge.i285

._crit_edge.loopexit.i291:                        ; preds = %bb.dz
  %.pre30.i292 = load i64, ptr %i.tr, align 8, !tbaa !90
  br label %._crit_edge.i285

._crit_edge.i285:                                 ; preds = %._crit_edge.loopexit.i291, %.preheader.i283
  %i.uc = phi i64 [ %.pre30.i292, %._crit_edge.loopexit.i291 ], [ %i.ty, %.preheader.i283 ] ; 2 uses
  %i.ud = phi i64 [ %i.uo, %._crit_edge.loopexit.i291 ], [ %i.tz, %.preheader.i283 ]
  %i.ue = phi i64 [ %i.uo, %._crit_edge.loopexit.i291 ], [ %i.ua, %.preheader.i283 ]
  %indvars.iv.next28.i286 = add nuw nsw i64 %indvars.iv27.i284, 1 ; 2 uses
  %i.uf = icmp sgt i64 %i.uc, %indvars.iv.next28.i286
  br i1 %i.uf, label %.preheader.i283, label %.loopexit.i279, !llvm.loop !171

.lr.ph.i287:                                      ; preds = %.preheader.i283, %bb.dz
  %i.ug = phi i64 [ %i.uo, %bb.dz ], [ %i.tz, %.preheader.i283 ]
  %indvars.iv.i288 = phi i64 [ %indvars.iv.next.i290, %bb.dz ], [ 0, %.preheader.i283 ] ; 2 uses
  %i.uh = phi i64 [ %i.uo, %bb.dz ], [ %i.ua, %.preheader.i283 ]
  %i.ui = load ptr, ptr %i.tv, align 8, !tbaa !83
  %i.uj = mul nuw nsw i64 %i.uh, %indvars.iv27.i284
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uj
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv.i288
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !92 ; 2 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i287
  call void @_ZdaPv(ptr noundef nonnull %i.um) #23
  %.pre.i289 = load i64, ptr %i.tu, align 8, !tbaa !91
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i287
  %i.uo = phi i64 [ %i.ug, %.lr.ph.i287 ], [ %.pre.i289, %bb.dy ] ; 5 uses
  %indvars.iv.next.i290 = add nuw nsw i64 %indvars.iv.i288, 1 ; 2 uses
  %i.up = icmp sgt i64 %i.uo, %indvars.iv.next.i290
  br i1 %i.up, label %.lr.ph.i287, label %._crit_edge.loopexit.i291, !llvm.loop !172

_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit: ; preds = %.loopexit.i279, %_Z15freeDeepBuffersIjEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit
  %.sroa.014.018.i293 = load ptr, ptr %14, align 8, !tbaa !87 ; 2 uses
  %.not19.i294 = icmp eq ptr %.sroa.014.018.i293, %14
  br i1 %.not19.i294, label %_Z15freeDeepBuffersIfEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit, label %.lr.ph22.i295

.loopexit.i297:                                   ; preds = %._crit_edge.i303, %.preheader.lr.ph.i300, %.lr.ph22.i295
  %.sroa.014.0.i298 = load ptr, ptr %.sroa.014.020.i296, align 8, !tbaa !87 ; 2 uses
  %.not.i299 = icmp eq ptr %.sroa.014.0.i298, %14
  br i1 %.not.i299, label %_Z15freeDeepBuffersIfEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit, label %.lr.ph22.i295, !llvm.loop !173

.lr.ph22.i295:                                    ; preds = %_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit, %.loopexit.i297
  %.sroa.014.020.i296 = phi ptr [ %.sroa.014.0.i298, %.loopexit.i297 ], [ %.sroa.014.018.i293, %_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit ] ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i296, i64 16 ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !187 ; 2 uses
  %i.us = icmp sgt i64 %i.ur, 0
  br i1 %i.us, label %.preheader.lr.ph.i300, label %.loopexit.i297

.preheader.lr.ph.i300:                            ; preds = %.lr.ph22.i295
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i296, i64 24 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.014.020.i296, i64 32
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !188 ; 3 uses
  %i.uw = icmp sgt i64 %i.uv, 0
  br i1 %i.uw, label %.preheader.i301, label %.loopexit.i297

.preheader.i301:                                  ; preds = %.preheader.lr.ph.i300, %._crit_edge.i303
  %i.ux = phi i64 [ %i.vb, %._crit_edge.i303 ], [ %i.ur, %.preheader.lr.ph.i300 ]
  %i.uy = phi i64 [ %i.vc, %._crit_edge.i303 ], [ %i.uv, %.preheader.lr.ph.i300 ] ; 2 uses
  %i.uz = phi i64 [ %i.vd, %._crit_edge.i303 ], [ %i.uv, %.preheader.lr.ph.i300 ] ; 3 uses
  %indvars.iv27.i302 = phi i64 [ %indvars.iv.next28.i304, %._crit_edge.i303 ], [ 0, %.preheader.lr.ph.i300 ] ; 2 uses
  %i.va = icmp sgt i64 %i.uz, 0
  br i1 %i.va, label %.lr.ph.i305, label %._crit_edge.i303

._crit_edge.loopexit.i309:                        ; preds = %bb.eb
  %.pre30.i310 = load i64, ptr %i.uq, align 8, !tbaa !187
  br label %._crit_edge.i303

._crit_edge.i303:                                 ; preds = %._crit_edge.loopexit.i309, %.preheader.i301
  %i.vb = phi i64 [ %.pre30.i310, %._crit_edge.loopexit.i309 ], [ %i.ux, %.preheader.i301 ] ; 2 uses
  %i.vc = phi i64 [ %i.vn, %._crit_edge.loopexit.i309 ], [ %i.uy, %.preheader.i301 ]
  %i.vd = phi i64 [ %i.vn, %._crit_edge.loopexit.i309 ], [ %i.uz, %.preheader.i301 ]
  %indvars.iv.next28.i304 = add nuw nsw i64 %indvars.iv27.i302, 1 ; 2 uses
  %i.ve = icmp sgt i64 %i.vb, %indvars.iv.next28.i304
  br i1 %i.ve, label %.preheader.i301, label %.loopexit.i297, !llvm.loop !174

.lr.ph.i305:                                      ; preds = %.preheader.i301, %bb.eb
  %i.vf = phi i64 [ %i.vn, %bb.eb ], [ %i.uy, %.preheader.i301 ]
  %indvars.iv.i306 = phi i64 [ %indvars.iv.next.i308, %bb.eb ], [ 0, %.preheader.i301 ] ; 2 uses
  %i.vg = phi i64 [ %i.vn, %bb.eb ], [ %i.uz, %.preheader.i301 ]
  %i.vh = load ptr, ptr %i.uu, align 8, !tbaa !86
  %i.vi = mul nuw nsw i64 %i.vg, %indvars.iv27.i302
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vi
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.i306
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !189 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, null
  br i1 %i.vm, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i305
  call void @_ZdaPv(ptr noundef nonnull %i.vl) #23
  %.pre.i307 = load i64, ptr %i.ut, align 8, !tbaa !188
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph.i305
  %i.vn = phi i64 [ %i.vf, %.lr.ph.i305 ], [ %.pre.i307, %bb.ea ] ; 5 uses
  %indvars.iv.next.i308 = add nuw nsw i64 %indvars.iv.i306, 1 ; 2 uses
  %i.vo = icmp sgt i64 %i.vn, %indvars.iv.next.i308
  br i1 %i.vo, label %.lr.ph.i305, label %._crit_edge.loopexit.i309, !llvm.loop !175

_Z15freeDeepBuffersIfEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit: ; preds = %.loopexit.i297, %_Z15freeDeepBuffersIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS8_EEE.exit
  %i.vp = load ptr, ptr %i.aj, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %i.vp)
          to label %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit unwind label %bb.ec

bb.ec:                                            ; preds = %_Z15freeDeepBuffersIfEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit
  %i.vq = landingpad { ptr, i32 }
          catch ptr null
  %i.vr = extractvalue { ptr, i32 } %i.vq, 0
  call void @__clang_call_terminate(ptr %i.vr) #25
  unreachable

_ZN7Imf_3_415DeepFrameBufferD2Ev.exit:            ; preds = %_Z15freeDeepBuffersIfEvRNSt7__cxx114listIN7Imf_3_47Array2DIPT_EESaIS6_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.vs = load ptr, ptr %14, align 8, !tbaa !87   ; 2 uses
  %.not8.i.i311 = icmp eq ptr %i.vs, %14
  br i1 %.not8.i.i311, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit, label %.lr.ph.i.i312

.lr.ph.i.i312:                                    ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i
  %.09.i.i313 = phi ptr [ %i.vt, %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i ], [ %i.vs, %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit ] ; 3 uses
  %i.vt = load ptr, ptr %.09.i.i313, align 8, !tbaa !87 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.09.i.i313, i64 32
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !86 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i312
  call void @_ZdaPv(ptr noundef nonnull %i.vv) #23
  br label %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i

_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i:             ; preds = %bb.ed, %.lr.ph.i.i312
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i313, i64 noundef 40) #23
  %.not.i.i314 = icmp eq ptr %i.vt, %14
  br i1 %.not.i.i314, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit, label %.lr.ph.i.i312, !llvm.loop !6

_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit: ; preds = %_ZN7Imf_3_47Array2DIPfED2Ev.exit.i.i, %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.vx = load ptr, ptr %13, align 8, !tbaa !87   ; 2 uses
  %.not8.i.i315 = icmp eq ptr %i.vx, %13
  br i1 %.not8.i.i315, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit, label %.lr.ph.i.i316

.lr.ph.i.i316:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit, %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i
  %.09.i.i317 = phi ptr [ %i.vy, %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i ], [ %i.vx, %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.vy = load ptr, ptr %.09.i.i317, align 8, !tbaa !87 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.09.i.i317, i64 32
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !83 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i316
  call void @_ZdaPv(ptr noundef nonnull %i.wa) #23
  br label %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i

_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i: ; preds = %bb.ee, %.lr.ph.i.i316
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i317, i64 noundef 40) #23
  %.not.i.i318 = icmp eq ptr %i.vy, %13
  br i1 %.not.i.i318, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit, label %.lr.ph.i.i316, !llvm.loop !7

_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit: ; preds = %_ZN7Imf_3_47Array2DIPN9Imath_3_24halfEED2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.wc = load ptr, ptr %12, align 8, !tbaa !87   ; 2 uses
  %.not8.i.i319 = icmp eq ptr %i.wc, %12
  br i1 %.not8.i.i319, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev.exit, label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit, %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i
  %.09.i.i321 = phi ptr [ %i.wd, %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i ], [ %i.wc, %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit ] ; 3 uses
  %i.wd = load ptr, ptr %.09.i.i321, align 8, !tbaa !87 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.09.i.i321, i64 32
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !80 ; 2 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i320
  call void @_ZdaPv(ptr noundef nonnull %i.wf) #23
  br label %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i

_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i:             ; preds = %bb.ef, %.lr.ph.i.i320
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i321, i64 noundef 40) #23
  %.not.i.i322 = icmp eq ptr %i.wd, %12
  br i1 %.not.i.i322, label %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev.exit, label %.lr.ph.i.i320, !llvm.loop !8

_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev.exit: ; preds = %_ZN7Imf_3_47Array2DIPjED2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.wh = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %i.wi = icmp eq ptr %i.wh, null
  br i1 %i.wi, label %_ZN7Imf_3_47Array2DIjED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.wh) #23
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit

_ZN7Imf_3_47Array2DIjED2Ev.exit:                  ; preds = %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev.exit, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100.thread336

bb.eh:                                            ; preds = %bb.dn, %bb.do, %bb.du, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp600, %.loopexit.split-lp346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.sr, %bb.du ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.sl, %bb.do ], [ %i.sk, %bb.dn ]
  call void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %15) #21
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.co
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.eh ], [ %i.lu, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPfEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPN9Imath_3_24halfEEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIPjEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.wj = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %_ZN7Imf_3_47Array2DIjED2Ev.exit323, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZdaPv(ptr noundef nonnull %i.wj) #23
  br label %_ZN7Imf_3_47Array2DIjED2Ev.exit323

_ZN7Imf_3_47Array2DIjED2Ev.exit323:               ; preds = %bb.ei, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ek

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100.thread336: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit98.thread335, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit100, %_ZN7Imf_3_47Array2DIjED2Ev.exit, %_ZNSt7__cxx1110_List_baseIN7Imf_3_47Array2DIjEESaIS3_EED2Ev.exit
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1
  br label %bb.p, !llvm.loop !176

bb.ek:                                            ; preds = %bb.ar, %bb.bv, %_ZN7Imf_3_47Array2DIjED2Ev.exit323
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ar ], [ %.pn51.pn.pn, %bb.bv ], [ %.pn.pn.pn, %_ZN7Imf_3_47Array2DIjED2Ev.exit323 ]
  call void @_ZN7Imf_3_419MultiPartOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.af
  %.pn51.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn, %bb.ek ], [ %i.cj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.k
  %.pn58 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn51.pn.pn.pn.pn.pn, %bb.el ]
  call void @_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %bb.d, %bb.em
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.em ], [ %i.l, %bb.d ], [ %i.q, %bb.j ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @_ZN7Imf_3_418MultiPartInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  resume { ptr, i32 } %.pn58.pn
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZN7Imf_3_46HeaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5

declare void @_ZN7Imf_3_49InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_49InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

declare void @_ZN7Imf_3_414TiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5

declare void @_ZN7Imf_3_414TiledInputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN7Imf_3_414TiledInputPart9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK7Imf_3_414TiledInputPart9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z14modifyChannelsIN9Imath_3_24halfEEvRNSt7__cxx114listIN7Imf_3_47Array2DIT_EESaIS7_EEES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.015.019 = load ptr, ptr %0, align 8, !tbaa !87 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.015.019, %0
  br i1 %.not20, label %._crit_edge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = zext i16 %1 to i64
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  %.sroa.015.0 = load ptr, ptr %.sroa.015.021, align 8, !tbaa !87 ; 2 uses
  %.not = icmp eq ptr %.sroa.015.0, %0
  br i1 %.not, label %._crit_edge23, label %bb.b, !llvm.loop !190

end_hunk_0
