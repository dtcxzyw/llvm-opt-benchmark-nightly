Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_cache?download=true
inline.NumInlined: 2350
inline.NumDeleted: 911
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN3jxl18PassesDecoderState15PreparePipelineERKNS_11FrameHeaderEPKNS_13ImageMetadataEPNS_11ImageBundleENS0_15PipelineOptionsE:bb.a

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i271: ; preds = %bb.ah
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !177
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(40) %i.iy) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit272

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit272: ; preds = %bb.ah, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i271
  %i.jc = icmp eq i32 %i.ix, 0
  br i1 %i.jc, label %bb.ai, label %.critedge241

bb.ai:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit272
  %i.jd = load ptr, ptr %i.a, align 8, !tbaa !284 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1312
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 1272
  call void @_ZN3jxl16GetAddNoiseStageERKNS_11NoiseParamsERKNS_16ColorCorrelationEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %18, ptr noundef nonnull align 4 dereferenceable(32) %i.je, ptr noundef nonnull align 4 dereferenceable(40) %i.jf, i64 noundef %i.i) #21
  %i.jg = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #21 ; 2 uses
  %i.jh = load ptr, ptr %18, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %18, align 8, !tbaa !329
  %.not.i.i273 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i273, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit275, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i274

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i274: ; preds = %bb.ai
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !177
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(40) %i.jh) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit275

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit275: ; preds = %bb.ai, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i274
  %i.jl = icmp eq i32 %i.jg, 0
  br i1 %i.jl, label %bb.aj, label %.critedge241

bb.aj:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit275, %.critedge226
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !334 ; 2 uses
  %.not213 = icmp eq i32 %i.jn, 0
  br i1 %.not213, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.jp = add i32 %i.jn, -1
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [168 x i8], ptr %i.jo, i64 %i.jq
  call void @_ZN3jxl22GetWriteToImage3FStageEP22JxlMemoryManagerStructPNS_6Image3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %19, ptr noundef %i.c, ptr noundef nonnull %i.jr) #21
  %i.js = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %19) #21 ; 2 uses
  %i.jt = load ptr, ptr %19, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %19, align 8, !tbaa !329
  %.not.i.i276 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i276, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit278, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i277

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i277: ; preds = %bb.ak
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !177
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(40) %i.jt) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit278

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit278: ; preds = %bb.ak, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i277
  %i.jx = icmp eq i32 %i.js, 0
  br i1 %i.jx, label %bb.al, label %.critedge241

bb.al:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit278, %bb.aj
  %i.jy = load i8, ptr %i.l, align 8, !tbaa !313, !range !171, !noundef !172
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = load i32, ptr %i.o, align 8
  %.not.i279 = icmp eq i32 %i.ka, 1
  %or.cond.i280 = select i1 %i.jz, i1 true, i1 %.not.i279
  br i1 %or.cond.i280, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !314
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281: ; preds = %bb.am
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !315
  %.not493 = icmp eq i32 %i.kf, 0
  br i1 %.not493, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread: ; preds = %bb.am, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !335, !range !171, !noundef !172
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.an, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467

bb.an:                                            ; preds = %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @_ZN3jxl26GetWriteToImageBundleStageEPNS_11ImageBundleERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %20, ptr noundef nonnull %i.kj, ptr noundef nonnull align 8 dereferenceable(936) %i.kk) #21
  %i.kl = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %20) #21 ; 2 uses
  %i.km = load ptr, ptr %20, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %20, align 8, !tbaa !329
  %.not.i.i282 = icmp eq ptr %i.km, null
  br i1 %.not.i.i282, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit284, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i283

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i283: ; preds = %bb.an
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !177
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(40) %i.km) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit284

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit284: ; preds = %bb.an, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i283
  %i.kq = icmp eq i32 %i.kl, 0
  br i1 %i.kq, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467, label %.critedge241

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467: ; preds = %bb.al, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit284, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !336 ; 2 uses
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !337 ; 3 uses
  %.not542 = icmp eq ptr %i.kt, %i.ku
  br i1 %.not542, label %.loopexit, label %.lr.ph535.preheader

.lr.ph535.preheader:                              ; preds = %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 96
  br label %.lr.ph535

.lr.ph535:                                        ; preds = %.lr.ph535.preheader, %bb.ap
  %.0191534 = phi i64 [ %i.le, %bb.ap ], [ 0, %.lr.ph535.preheader ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [96 x i8], ptr %i.ku, i64 %.0191534
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !340
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph535
  %i.ld = add i64 %.0191534, 3
  br label %.loopexit

bb.ap:                                            ; preds = %.lr.ph535
  %i.le = add nuw i64 %.0191534, 1                ; 2 uses
  %exitcond551.not = icmp eq i64 %i.le, %i.ky
  br i1 %exitcond551.not, label %.loopexit, label %.lr.ph535, !llvm.loop !275

.loopexit:                                        ; preds = %bb.ap, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467, %bb.ao
  %i.lf = phi i1 [ true, %bb.ao ], [ false, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467 ], [ false, %bb.ap ]
  %.0190 = phi i64 [ %i.ld, %bb.ao ], [ 0, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit281.thread467 ], [ 0, %bb.ap ]
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !341, !range !171, !noundef !172
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.ci, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !342
  switch i32 %i.lk, label %bb.au [
    i32 2, label %bb.ar
    i32 0, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN3jxl13GetYCbCrStageEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %21) #21
  %i.ll = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %21) #21 ; 2 uses
  %i.lm = load ptr, ptr %21, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %21, align 8, !tbaa !329
  %.not.i.i285 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i285, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i286

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i286: ; preds = %bb.ar
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !177
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(40) %i.lm) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287: ; preds = %bb.ar, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i286
  %i.lq = icmp eq i32 %i.ll, 0
  br i1 %i.lq, label %bb.au, label %.critedge241

bb.as:                                            ; preds = %bb.aq
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @_ZN3jxl11GetXYBStageERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %22, ptr noundef nonnull align 8 dereferenceable(936) %i.lr) #21
  %i.ls = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %22) #21 ; 2 uses
  %i.lt = load ptr, ptr %22, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %22, align 8, !tbaa !329
  %.not.i.i288 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i288, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit290, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i289

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i289: ; preds = %bb.as
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !177
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(40) %i.lt) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit290

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit290: ; preds = %bb.as, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i289
  %i.lx = icmp eq i32 %i.ls, 0
  br i1 %i.lx, label %bb.at, label %.critedge241

bb.at:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit290
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !343
  %.not214 = icmp ne i32 %i.lz, 2                 ; 2 uses
  %spec.select227 = zext i1 %.not214 to i8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287
  %42 = phi i1 [ false, %bb.aq ], [ false, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287 ], [ %.not214, %bb.at ]
  %.0192 = phi i8 [ 0, %bb.aq ], [ 0, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit287 ], [ %spec.select227, %bb.at ] ; 3 uses
  %i.ma = and i32 %4, 256
  %.not215 = icmp eq i32 %i.ma, 0
  br i1 %.not215, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mb = call noundef zeroext i1 @_ZN3jxl13NeedsBlendingERKNS_11FrameHeaderE(ptr noundef nonnull align 8 dereferenceable(576) %1) #21
  br i1 %i.mb, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  br i1 %42, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @_ZN3jxl18GetFromLinearStageERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %23, ptr noundef nonnull align 8 dereferenceable(936) %i.mc) #21
  %i.md = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %23) #21 ; 2 uses
  %i.me = load ptr, ptr %23, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %23, align 8, !tbaa !329
  %.not.i.i291 = icmp eq ptr %i.me, null
  br i1 %.not.i.i291, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit293, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i292

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i292: ; preds = %bb.ax
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !177
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(40) %i.me) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit293

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit293: ; preds = %bb.ax, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i292
  %i.mi = icmp eq i32 %i.md, 0
  br i1 %i.mi, label %bb.ay, label %.critedge241

bb.ay:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit293, %bb.aw
  %.1193 = phi i8 [ %.0192, %bb.aw ], [ 0, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit293 ]
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 3864
  call void @_ZN3jxl16GetBlendingStageERKNS_11FrameHeaderEPKNS_18PassesDecoderStateERKNS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %24, ptr noundef nonnull align 8 dereferenceable(576) %1, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(200) %i.mj) #21
  %i.mk = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %24) #21 ; 2 uses
  %i.ml = load ptr, ptr %24, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %24, align 8, !tbaa !329
  %.not.i.i294 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i294, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit296, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i295

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i295: ; preds = %bb.ay
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !177
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(40) %i.ml) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit296

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit296: ; preds = %bb.ay, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i295
  %i.mp = icmp eq i32 %i.mk, 0
  br i1 %i.mp, label %bb.az, label %.critedge241

bb.az:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit296, %bb.av
  %.2194.ph = phi i8 [ %.0192, %bb.av ], [ %.1193, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit296 ] ; 4 uses
  %i.mq = load i8, ptr %i.l, align 8, !tbaa !313, !range !171, !noundef !172
  %i.mr = trunc nuw i8 %i.mq to i1
  %i.ms = load i32, ptr %i.o, align 8
  %.not.i297 = icmp eq i32 %i.ms, 1
  %or.cond.i298 = select i1 %i.mr, i1 true, i1 %.not.i297
  br i1 %or.cond.i298, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !314
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299: ; preds = %bb.ba
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !315
  %.not494 = icmp eq i32 %i.mx, 0
  br i1 %.not494, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread: ; preds = %bb.ba, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !335, !range !171, !noundef !172
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472, label %bb.bb

bb.bb:                                            ; preds = %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread
  %i.nb = trunc nuw i8 %.2194.ph to i1
  br i1 %i.nb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @_ZN3jxl18GetFromLinearStageERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %25, ptr noundef nonnull align 8 dereferenceable(936) %i.nc) #21
  %i.nd = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %25) #21 ; 2 uses
  %i.ne = load ptr, ptr %25, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %25, align 8, !tbaa !329
  %.not.i.i300 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i300, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit302, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i301

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i301: ; preds = %bb.bc
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !177
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(40) %i.ne) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit302

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit302: ; preds = %bb.bc, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i301
  %i.ni = icmp eq i32 %i.nd, 0
  br i1 %i.ni, label %bb.bd, label %.critedge241

bb.bd:                                            ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit302, %bb.bb
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 3616
  call void @_ZN3jxl26GetWriteToImageBundleStageEPNS_11ImageBundleERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %26, ptr noundef nonnull %i.nj, ptr noundef nonnull align 8 dereferenceable(936) %i.nk) #21
  %i.nl = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %26) #21 ; 2 uses
  %i.nm = load ptr, ptr %26, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %26, align 8, !tbaa !329
  %.not.i.i303 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i303, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit305, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i304

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i304: ; preds = %bb.bd
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !177
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(40) %i.nm) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit305

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit305: ; preds = %bb.bd, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i304
  %i.nq = icmp eq i32 %i.nl, 0
  br i1 %i.nq, label %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472, label %.critedge241

_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472: ; preds = %bb.az, %bb.au, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit305, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299
  %.4196 = phi i8 [ %.2194.ph, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299 ], [ %.2194.ph, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread ], [ 0, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit305 ], [ %.0192, %bb.au ], [ %.2194.ph, %bb.az ] ; 2 uses
  %i.nr = and i32 %4, 65536
  %.not216 = icmp eq i32 %i.nr, 0
  br i1 %.not216, label %.critedge231, label %bb.be

bb.be:                                            ; preds = %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472
  %i.ns = load ptr, ptr %i.d, align 8, !tbaa !298 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 328
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !337 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 336
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !336 ; 2 uses
  %.not1516.i = icmp eq ptr %i.nu, %i.nw
  br i1 %.not1516.i, label %.critedge231, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bf
  %.sroa.010.017.i = phi ptr [ %i.ob, %bb.bf ], [ %i.nu, %bb.be ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 12
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !340
  %.not.i306 = icmp eq i32 %i.ny, 2
  br i1 %.not.i306, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader, label %bb.bf

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader: ; preds = %.lr.ph.i
  %i.nz = load ptr, ptr %i.ks, align 8, !tbaa !336 ; 2 uses
  %i.oa = load ptr, ptr %i.kr, align 8, !tbaa !337 ; 2 uses
  %.not218537.not = icmp eq ptr %i.nz, %i.oa
  br i1 %.not218537.not, label %.critedge231, label %.lr.ph540

bb.bf:                                            ; preds = %.lr.ph.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i, i64 96 ; 2 uses
  %.not15.i = icmp eq ptr %i.ob, %i.nw
  br i1 %.not15.i, label %.critedge231, label %.lr.ph.i

.lr.ph540:                                        ; preds = %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit
  %i.oc = phi ptr [ %i.op, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ %i.oa, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader ] ; 2 uses
  %i.od = phi ptr [ %i.oq, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ %i.nz, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader ]
  %.0200539 = phi i64 [ %i.or, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit ], [ 0, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader ] ; 3 uses
  %i.oe = getelementptr inbounds nuw [96 x i8], ptr %i.oc, i64 %.0200539 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !340
  %i.oh = icmp eq i32 %i.og, 2
  br i1 %i.oh, label %bb.bg, label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit

bb.bg:                                            ; preds = %.lr.ph540
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 76
  call void @_ZN3jxl17GetSpotColorStageEmPKf(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %27, i64 noundef %.0200539, ptr noundef nonnull %i.oi) #21
  %i.oj = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %27) #21 ; 2 uses
  %i.ok = load ptr, ptr %27, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %27, align 8, !tbaa !329
  %.not.i.i307 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i307, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i308

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i308: ; preds = %bb.bg
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !177
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(40) %i.ok) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309: ; preds = %bb.bg, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i308
  %i.oo = icmp eq i32 %i.oj, 0
  br i1 %i.oo, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309._ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit_crit_edge, label %.critedge241

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309._ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit_crit_edge: ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309
  %.pre558 = load ptr, ptr %i.ks, align 8, !tbaa !336
  %.pre559 = load ptr, ptr %i.kr, align 8, !tbaa !337
  br label %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit

_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit: ; preds = %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309._ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit_crit_edge, %.lr.ph540
  %i.op = phi ptr [ %.pre559, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309._ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit_crit_edge ], [ %i.oc, %.lr.ph540 ] ; 2 uses
  %i.oq = phi ptr [ %.pre558, %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit309._ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit_crit_edge ], [ %i.od, %.lr.ph540 ] ; 2 uses
  %i.or = add nuw i64 %.0200539, 1                ; 2 uses
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = sdiv exact i64 %i.ou, 96
  %.not218 = icmp ult i64 %i.or, %i.ov
  br i1 %.not218, label %.lr.ph540, label %.critedge231, !llvm.loop !276

.critedge231:                                     ; preds = %bb.bf, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit, %_ZNK3jxl13ImageMetadata4FindENS_12ExtraChannelE.exit.preheader, %bb.be, %_ZNK3jxl11FrameHeader15CanBeReferencedEv.exit299.thread472
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 7 uses
  call void @_ZN3jxl19GetToneMappingStageERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %28, ptr noundef nonnull align 8 dereferenceable(936) %i.ow) #21
  %i.ox = load ptr, ptr %28, align 8, !tbaa !329  ; 2 uses
  %.not495 = icmp eq ptr %i.ox, null
  br i1 %.not495, label %bb.br, label %bb.bh

bb.bh:                                            ; preds = %.critedge231
  %i.oy = trunc nuw i8 %.4196 to i1
  br i1 %i.oy, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @_ZN3jxl16GetToLinearStageERKNS_18OutputEncodingInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %29, ptr noundef nonnull align 8 dereferenceable(936) %i.ow) #21
  %i.oz = load ptr, ptr %29, align 8, !tbaa !329  ; 2 uses
  %.not496 = icmp eq ptr %i.oz, null
  br i1 %.not496, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 4484
  %i.pb = load i8, ptr %i.pa, align 4, !tbaa !344, !range !171, !noundef !172
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @_ZN3jxl11GetCmsStageERKNS_18OutputEncodingInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::unique_ptr.95") align 8 %30, ptr noundef nonnull align 8 dereferenceable(936) %i.ow, i1 noundef zeroext true) #21
  %i.pd = load ptr, ptr %30, align 8, !tbaa !329  ; 2 uses
  %.not497 = icmp eq ptr %i.pd, null
  br i1 %.not497, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit318, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr null, ptr %30, align 8, !tbaa !329
  store ptr %i.pd, ptr %31, align 8, !tbaa !345
  %i.pe = call i32 @_ZN3jxl14RenderPipeline7Builder8AddStageENSt3__110unique_ptrINS_19RenderPipelineStageENS2_14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %31) #21 ; 2 uses
  %i.pf = load ptr, ptr %31, align 8, !tbaa !329  ; 3 uses
  store ptr null, ptr %31, align 8, !tbaa !329
  %.not.i.i310 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i310, label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit312, label %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i311

_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i311: ; preds = %bb.bl
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !177
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(40) %i.pf) #21, !inline_history !270
  br label %_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit312

_ZNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEED2B8nn180100Ev.exit312: ; preds = %bb.bl, %_ZNKSt3__114default_deleteIN3jxl19RenderPipelineStageEEclB8nn180100EPS2_.exit.i.i311
  %i.pj = icmp eq i32 %i.pe, 0
  %.pr475 = load ptr, ptr %30, align 8, !tbaa !329 ; 5 uses
end_hunk_0
