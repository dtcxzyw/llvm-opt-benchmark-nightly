Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined:bb.a
  %bound1 = icmp ult ptr %i.id, %i.ia
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ig = and i64 %i.df, 7                        ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 0
  %i.ii = select i1 %i.ih, i64 8, i64 %i.ig
  %n.vec = sub i64 %i.df, %i.ii                   ; 2 uses
  %i.ij = add i64 %i.cv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ik = add nuw i64 %i.cv, %index               ; 8 uses
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ik
  %i.im = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.in = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.io = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.ip = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.iq = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.ir = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.is = getelementptr [12 x i8], ptr %.val, i64 %i.ik
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = getelementptr i8, ptr %i.im, i64 20
  %i.iv = getelementptr i8, ptr %i.in, i64 32
  %i.iw = getelementptr i8, ptr %i.io, i64 44
  %i.ix = getelementptr i8, ptr %i.ip, i64 56
  %i.iy = getelementptr i8, ptr %i.iq, i64 68
  %i.iz = getelementptr i8, ptr %i.ir, i64 80
  %i.ja = getelementptr i8, ptr %i.is, i64 92
  %i.jb = load i32, ptr %i.it, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jc = load i32, ptr %i.iu, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jd = load i32, ptr %i.iv, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.je = load i32, ptr %i.iw, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jf = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %i.jg = insertelement <4 x i32> %i.jf, i32 %i.jc, i64 1
  %i.jh = insertelement <4 x i32> %i.jg, i32 %i.jd, i64 2
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 3
  %i.jj = load i32, ptr %i.ix, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jk = load i32, ptr %i.iy, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jl = load i32, ptr %i.iz, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jm = load i32, ptr %i.ja, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jn = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 1
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 2
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 3
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %index ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store <4 x i32> %i.ji, ptr %i.jr, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  store <4 x i32> %i.jq, ptr %i.js, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !345

._crit_edge259:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ju = load ptr, ptr %i.ap, align 8, !tbaa !25, !llvm.access.group !338
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !llvm.access.group !338
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i64 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0111257 = phi i64 [ %i.ku, %scalar.ph ], [ %.0111257.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111257
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !372, !llvm.access.group !338
  %i.ka = sub nuw i64 %.0111257, %i.cv
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !100, !llvm.access.group !338
  %i.kc = add nuw i64 %.0111257, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !372, !llvm.access.group !338
  %i.kg = sub nuw i64 %i.kc, %i.cv
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.kg
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !100, !llvm.access.group !338
  %i.ki = add nuw i64 %.0111257, 2                ; 2 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !372, !llvm.access.group !338
  %i.km = sub nuw i64 %i.ki, %i.cv
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.km
  store i32 %i.kl, ptr %i.kn, align 4, !tbaa !100, !llvm.access.group !338
  %i.ko = add nuw i64 %.0111257, 3                ; 2 uses
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !372, !llvm.access.group !338
  %i.ks = sub nuw i64 %i.ko, %i.cv
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ks
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !100, !llvm.access.group !338
  %i.ku = add nuw i64 %.0111257, 4                ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %i.ku, %i.cx
  br i1 %exitcond293.not.3, label %._crit_edge259, label %scalar.ph, !llvm.loop !346

bb.ag:                                            ; preds = %._crit_edge259
  %i.kv = load ptr, ptr %24, align 8, !tbaa !127, !llvm.access.group !338 ; 2 uses
  %i.kw = load i64, ptr %i.cl, align 8, !tbaa !81, !llvm.access.group !338
  %i.kx = load i32, ptr %8, align 8, !tbaa !142, !llvm.access.group !338
  %i.ky = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

bb.ah:                                            ; preds = %bb.ag
  %i.kz = trunc i64 %i.kw to i32
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !25, !llvm.access.group !338
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !llvm.access.group !338
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.kv, i32 noundef %i.ea, i64 noundef %i.cz, i32 noundef %i.kz, ptr noundef %i.ga, ptr noundef %.sroa.0202.0, i32 noundef %i.kx, i64 noundef %i.ky)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

bb.ai:                                            ; preds = %bb.ah
  %i.ld = load ptr, ptr %i.gb, align 8, !tbaa !25, !llvm.access.group !338
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !llvm.access.group !338
  invoke void %i.lf(ptr noundef nonnull align 8 dereferenceable(25) %i.gb, i64 noundef %i.fw, ptr noundef %i.gf)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.aj, !llvm.access.group !338

bb.aj:                                            ; preds = %bb.ai
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %bb.ai
  %i.li = load ptr, ptr %i.fv, align 8, !tbaa !25, !llvm.access.group !338
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.lk = load ptr, ptr %i.lj, align 8, !llvm.access.group !338
  invoke void %i.lk(ptr noundef nonnull align 8 dereferenceable(25) %i.fv, i64 noundef %i.fw, ptr noundef %i.ga)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ak, !llvm.access.group !338

bb.ak:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  call void @free(ptr noundef %.sroa.0202.0) #27, !llvm.access.group !338
  %.not.i.i.i164 = icmp eq ptr %.sroa.0207.0, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.ln = ptrtoint ptr %.sroa.9210.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0207.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0, i64 noundef %i.lp) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.al
  %.not.i.i.i165 = icmp eq ptr %.sroa.0212.0240, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.lq = ptrtoint ptr %.sroa.9216.0242 to i64
  %i.lr = ptrtoint ptr %.sroa.0212.0240 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0212.0240, i64 noundef %i.ls) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.am
  %i.lt = add nsw i64 %.0113261, 1
  %i.lu = load i64, ptr %i.e, align 8, !tbaa !72, !llvm.access.group !338
  %.not120.not = icmp slt i64 %.0113261, %i.lu
  br i1 %.not120.not, label %.lr.ph263, label %.loopexit252, !llvm.loop !347

._crit_edge267:                                   ; preds = %.loopexit252, %bb.m
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %.pre294)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge267, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre294)
  %i.lv = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(88) %i.ap)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.ly = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre294)
  %.not118 = icmp eq i32 %i.ly, 0
  br i1 %.not118, label %bb.ap, label %.preheader247

.preheader247:                                    ; preds = %bb.ao
  %i.lz = load i64, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.ma = icmp sgt i64 %i.lz, 0
  br i1 %i.ma, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader247
  %i.mb = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.mc = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %.val129 = load ptr, ptr %19, align 8, !tbaa !377
  %i.md = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %.val129.val = load i8, ptr %.val129, align 1, !tbaa !105, !range !38, !noundef !39
  %i.me = trunc nuw i8 %.val129.val to i1
  %i.mf = load ptr, ptr %i.md, align 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !72
  %i.mh = icmp eq i64 %i.mg, 0                    ; 2 uses
  br i1 %i.me, label %.lr.ph269.split.us, label %.lr.ph269.split

.lr.ph269.split.us:                               ; preds = %.lr.ph269
  br i1 %i.mh, label %._crit_edge270, label %.lr.ph269.split.us.split

.lr.ph269.split.us.split:                         ; preds = %.lr.ph269.split.us, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"
  %i.mi = phi i64 [ %i.mv, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ %i.lz, %.lr.ph269.split.us ]
  %.0110268.us.a = phi i64 [ %i.mw, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ 0, %.lr.ph269.split.us ] ; 2 uses
  %27 = load i64, ptr %2, align 8, !tbaa !72
  %i.mj = mul nsw i64 %27, %.0110268.us.a         ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mj ; 2 uses
  %.val130.us = load ptr, ptr %i.md, align 8
  %i.mm = load i64, ptr %.val130.us, align 8, !tbaa !72 ; 5 uses
  %.not1.i.us = icmp eq i64 %i.mm, 0
  br i1 %.not1.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", label %.lr.ph46.i5.i.us.preheader

.lr.ph46.i5.i.us.preheader:                       ; preds = %.lr.ph269.split.us.split
  %min.iters.check387 = icmp ult i64 %i.mm, 4
  br i1 %min.iters.check387, label %.lr.ph46.i5.i.us.preheader420, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph46.i5.i.us.preheader
  %n.vec389 = and i64 %i.mm, -4                   ; 3 uses
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next392, %vector.body390 ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index391 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mn, align 4, !tbaa !136
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mo, align 4, !tbaa !136
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %index391 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mp, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.mq, align 8, !tbaa !72
  %index.next392 = add nuw i64 %index391, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next392, %n.vec389
  br i1 %i.mr, label %middle.block393, label %vector.body390, !llvm.loop !348

middle.block393:                                  ; preds = %vector.body390
  %cmp.n394 = icmp eq i64 %i.mm, %n.vec389
  br i1 %cmp.n394, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us.preheader420

.lr.ph46.i5.i.us.preheader420:                    ; preds = %.lr.ph46.i5.i.us.preheader, %middle.block393
  %.045.i6.i.us.ph = phi i64 [ 0, %.lr.ph46.i5.i.us.preheader ], [ %n.vec389, %middle.block393 ]
  br label %.lr.ph46.i5.i.us

.lr.ph46.i5.i.us:                                 ; preds = %.lr.ph46.i5.i.us.preheader420, %.lr.ph46.i5.i.us
  %.045.i6.i.us = phi i64 [ %i.mu, %.lr.ph46.i5.i.us ], [ %.045.i6.i.us.ph, %.lr.ph46.i5.i.us.preheader420 ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.045.i6.i.us
  store float f0x7F7FFFFF, ptr %i.ms, align 4, !tbaa !136
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %.045.i6.i.us
  store i64 -1, ptr %i.mt, align 8, !tbaa !72
  %i.mu = add nuw i64 %.045.i6.i.us, 1            ; 2 uses
  %exitcond51.not.i7.i.us = icmp eq i64 %i.mu, %i.mm
  br i1 %exitcond51.not.i7.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us, !llvm.loop !349

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit": ; preds = %.lr.ph46.i5.i.us, %middle.block393
  %.pre296.a = load i64, ptr %3, align 8, !tbaa !72
  br label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us": ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", %.lr.ph269.split.us.split
  %i.mv = phi i64 [ %.pre296.a, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit" ], [ %i.mi, %.lr.ph269.split.us.split ] ; 2 uses
  %i.mw = add nuw nsw i64 %.0110268.us.a, 1       ; 2 uses
  %i.mx = icmp slt i64 %i.mw, %i.mv
  br i1 %i.mx, label %.lr.ph269.split.us.split, label %._crit_edge270, !llvm.loop !350

.lr.ph269.split:                                  ; preds = %.lr.ph269
  br i1 %i.mh, label %._crit_edge270, label %.lr.ph269.split.split

._crit_edge270:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", %.lr.ph269.split, %.lr.ph269.split.us, %.preheader247
  call void @__kmpc_end_single(ptr nonnull @2, i32 %.pre294)
  br label %bb.ap

.lr.ph269.split.split:                            ; preds = %.lr.ph269.split, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit"
  %i.my = phi i64 [ %i.nl, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ %i.lz, %.lr.ph269.split ]
  %.0110268.a = phi i64 [ %i.nm, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ 0, %.lr.ph269.split ] ; 2 uses
  %28 = load i64, ptr %2, align 8, !tbaa !72
  %i.mz = mul nsw i64 %28, %.0110268.a            ; 2 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mz ; 2 uses
  %.val130 = load ptr, ptr %i.md, align 8
  %i.nc = load i64, ptr %.val130, align 8, !tbaa !72 ; 5 uses
  %.not1.i = icmp eq i64 %i.nc, 0
  br i1 %.not1.i, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", label %.lr.ph46.i.i.preheader

.lr.ph46.i.i.preheader:                           ; preds = %.lr.ph269.split.split
  %min.iters.check378 = icmp ult i64 %i.nc, 4
  br i1 %min.iters.check378, label %.lr.ph46.i.i.preheader421, label %vector.ph379

vector.ph379:                                     ; preds = %.lr.ph46.i.i.preheader
  %n.vec380 = and i64 %i.nc, -4                   ; 3 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next383, %vector.body381 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index382 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.nd, align 4, !tbaa !136
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.ne, align 4, !tbaa !136
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %index382 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.nf, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.ng, align 8, !tbaa !72
  %index.next383 = add nuw i64 %index382, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next383, %n.vec380
  br i1 %i.nh, label %middle.block384, label %vector.body381, !llvm.loop !351

middle.block384:                                  ; preds = %vector.body381
  %cmp.n = icmp eq i64 %i.nc, %n.vec380
  br i1 %cmp.n, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", label %.lr.ph46.i.i.preheader421

.lr.ph46.i.i.preheader421:                        ; preds = %.lr.ph46.i.i.preheader, %middle.block384
  %.045.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.preheader ], [ %n.vec380, %middle.block384 ]
  br label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %.lr.ph46.i.i.preheader421, %.lr.ph46.i.i
  %.045.i.i = phi i64 [ %i.nk, %.lr.ph46.i.i ], [ %.045.i.i.ph, %.lr.ph46.i.i.preheader421 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %.045.i.i
  store float f0xFF7FFFFF, ptr %i.ni, align 4, !tbaa !136
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.045.i.i
  store i64 -1, ptr %i.nj, align 8, !tbaa !72
  %i.nk = add nuw i64 %.045.i.i, 1                ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.nk, %i.nc
  br i1 %exitcond51.not.i.i, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", label %.lr.ph46.i.i, !llvm.loop !352

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit": ; preds = %.lr.ph46.i.i, %middle.block384
  %.pre295.a = load i64, ptr %3, align 8, !tbaa !72
  br label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit"

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit": ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", %.lr.ph269.split.split
  %i.nl = phi i64 [ %.pre295.a, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit" ], [ %i.my, %.lr.ph269.split.split ] ; 2 uses
  %i.nm = add nuw nsw i64 %.0110268.a, 1          ; 2 uses
  %i.nn = icmp slt i64 %i.nm, %i.nl
  br i1 %i.nn, label %.lr.ph269.split.split, label %._crit_edge270, !llvm.loop !353

bb.ap:                                            ; preds = %._crit_edge270, %bb.ao
  call void @__kmpc_barrier(ptr nonnull @5, i32 %.pre294)
  call void @__kmpc_barrier(ptr nonnull @6, i32 %.pre294)
  call void @__kmpc_critical(ptr nonnull @2, i32 %.pre294, ptr nonnull @.gomp_critical_user_.var)
  %i.no = load ptr, ptr %i.bl, align 8, !tbaa !363 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.bj
  br i1 %i.np, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.ap
  %i.nq = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %bb.aq

._crit_edge278:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit", %bb.ap
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %.pre294, ptr nonnull @.gomp_critical_user_.var)
  call void @__kmpc_barrier(ptr nonnull @6, i32 %.pre294)
  %i.nr = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre294)
  %.not119 = icmp eq i32 %i.nr, 0
  br i1 %.not119, label %bb.be, label %.preheader

.preheader:                                       ; preds = %._crit_edge278
  %i.ns = load i64, ptr %3, align 8, !tbaa !72
  %i.nt = icmp sgt i64 %i.ns, 0
  br i1 %i.nt, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %.preheader
  %i.nu = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph277, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit"
  %.sroa.0190.0275 = phi ptr [ %i.no, %.lr.ph277 ], [ %i.oi, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0190.0275, i64 32
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !100
  %i.nx = sext i32 %i.nw to i64
  %i.ny = load i64, ptr %2, align 8, !tbaa !72
  %i.nz = mul nsw i64 %i.ny, %i.nx                ; 4 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %.sroa.0227.0, i64 %i.nz ; 2 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %.sroa.0233.0, i64 %i.nz ; 2 uses
  %i.oc = load ptr, ptr %20, align 8, !tbaa !99
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.nz ; 2 uses
  %i.oe = load ptr, ptr %21, align 8, !tbaa !45
  %i.of = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.nz ; 2 uses
  %.val131 = load ptr, ptr %22, align 8, !tbaa !379
  %.val132 = load ptr, ptr %i.nq, align 8
  %.val131.val = load i8, ptr %.val131, align 1, !tbaa !105, !range !38, !noundef !39
  %i.og = trunc nuw i8 %.val131.val to i1
  %i.oh = load i64, ptr %.val132, align 8, !tbaa !72 ; 4 uses
  br i1 %i.og, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5faiss9heap_addnINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m(i64 noundef %i.oh, ptr noundef %i.od, ptr noundef %i.of, ptr noundef %i.oa, ptr noundef %i.ob, i64 noundef %i.oh)
          to label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN5faiss9heap_addnINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m(i64 noundef %i.oh, ptr noundef %i.od, ptr noundef %i.of, ptr noundef %i.oa, ptr noundef %i.ob, i64 noundef %i.oh)
          to label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit": ; preds = %bb.ar, %bb.as
  %i.oi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0190.0275) #43 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.bj
  br i1 %i.oj, label %._crit_edge278, label %bb.aq, !llvm.loop !354

._crit_edge281:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit", %.preheader
  call void @__kmpc_end_single(ptr nonnull @2, i32 %.pre294)
  br label %bb.be

bb.at:                                            ; preds = %.lr.ph280, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit"
  %.0279 = phi i64 [ 0, %.lr.ph280 ], [ %i.uc, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit" ] ; 2 uses
  %i.ok = load ptr, ptr %20, align 8, !tbaa !99
  %i.ol = load i64, ptr %2, align 8, !tbaa !72
  %i.om = mul nsw i64 %i.ol, %.0279               ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.om ; 16 uses
  %i.oo = load ptr, ptr %21, align 8, !tbaa !45
  %i.op = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.om ; 16 uses
  %.val133 = load ptr, ptr %23, align 8, !tbaa !381
  %.val134 = load ptr, ptr %i.nu, align 8
  %.val133.val = load i8, ptr %.val133, align 1, !tbaa !105, !range !38, !noundef !39
  %i.oq = trunc nuw i8 %.val133.val to i1
  %i.or = load i64, ptr %.val134, align 8, !tbaa !72 ; 17 uses
  %.not46.i5.i = icmp eq i64 %i.or, 0             ; 2 uses
  br i1 %i.oq, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not46.i5.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.au
  %i.os = getelementptr inbounds i8, ptr %i.on, i64 -4 ; 4 uses
  %i.ot = getelementptr inbounds i8, ptr %i.op, i64 -8 ; 5 uses
  br label %bb.av

bb.av:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %.lr.ph.i.i
  %.041.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %.03740.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.qq, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %i.ou = load float, ptr %i.on, align 4, !tbaa !136
  %i.ov = load i64, ptr %i.op, align 8, !tbaa !72 ; 2 uses
  %i.ow = sub nuw i64 %i.or, %.03740.i.i          ; 5 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.ow ; 3 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !136 ; 5 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.ow ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !72 ; 3 uses
  %i.pb = icmp ult i64 %i.ow, 2
  br i1 %i.pb, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i169

.lr.ph.i.i.i169:                                  ; preds = %bb.av, %bb.ay
  %i.pc = phi i64 [ %i.qf, %bb.ay ], [ 3, %bb.av ]
  %i.pd = phi i64 [ %i.qe, %bb.ay ], [ 2, %bb.av ] ; 7 uses
  %.062.i.i.i = phi i64 [ %.1.i.i.i, %bb.ay ], [ 1, %bb.av ] ; 6 uses
  %i.pe = icmp eq i64 %i.pd, %i.ow
  br i1 %i.pe, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.aw

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i169
  %.pre.i.i.i171 = load float, ptr %i.ox, align 4, !tbaa !136
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i169
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.pd
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !136 ; 4 uses
  %i.ph = getelementptr [4 x i8], ptr %i.on, i64 %i.pd
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !136 ; 5 uses
  %i.pj = getelementptr [8 x i8], ptr %i.op, i64 %i.pd
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !72 ; 3 uses
  %i.pl = fcmp olt float %i.pg, %i.pi
  br i1 %i.pl, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.aw
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.pd
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !72
  %i.po = fcmp oeq float %i.pg, %i.pi
  %i.pp = icmp slt i64 %i.pn, %i.pk
  %i.pq = and i1 %i.po, %i.pp
  br i1 %i.pq, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %bb.ax

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %bb.aw, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.pr = phi float [ %.pre.i.i.i171, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.pg, %bb.aw ], [ %i.pg, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.ps = fcmp olt float %i.oy, %i.pr
  br i1 %i.ps, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.pd
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !72 ; 2 uses
  %i.pv = fcmp oeq float %i.oy, %i.pr
  %i.pw = icmp slt i64 %i.pa, %i.pu
  %i.px = and i1 %i.pv, %i.pw
  br i1 %i.px, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.ay

bb.ax:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i
  %i.py = fcmp olt float %i.oy, %i.pi
  br i1 %i.py, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.ax
  %i.pz = fcmp oeq float %i.oy, %i.pi
  %i.qa = icmp slt i64 %i.pa, %i.pk
  %i.qb = and i1 %i.pz, %i.qa
  br i1 %i.qb, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i = phi float [ %i.pr, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.pi, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.pu, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.pk, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.pd, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.pc, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.062.i.i.i
  store float %.sink79.i.i.i, ptr %i.qc, align 4, !tbaa !136
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.062.i.i.i
  store i64 %.sink.i.i.i, ptr %i.qd, align 8, !tbaa !72
  %i.qe = shl i64 %.1.i.i.i, 1                    ; 3 uses
  %i.qf = or disjoint i64 %i.qe, 1
  %i.qg = icmp ugt i64 %i.qe, %i.ow
  br i1 %i.qg, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i169, !llvm.loop !13

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.ay, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %bb.ax, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.ph.i.i.i = phi i64 [ %.1.i.i.i, %bb.ay ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %.062.i.i.i, %bb.ax ]
  %.pre68.i.i.i = load float, ptr %i.ox, align 4, !tbaa !136
  %.pre69.i.i.i = load i64, ptr %i.oz, align 8, !tbaa !72
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %bb.av
  %i.qh = phi i64 [ %i.pa, %bb.av ], [ %.pre69.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.qi = phi float [ %i.oy, %bb.av ], [ %.pre68.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.av ], [ %.0.lcssa.ph.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.0.lcssa.i.i.i
  store float %i.qi, ptr %i.qj, align 4, !tbaa !136
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.0.lcssa.i.i.i
  store i64 %i.qh, ptr %i.qk, align 8, !tbaa !72
  %i.ql = xor i64 %.041.i.i, -1
  %i.qm = add i64 %i.or, %i.ql                    ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.qm
  store float %i.ou, ptr %i.qn, align 4, !tbaa !136
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.qm
  store i64 %i.ov, ptr %i.qo, align 8, !tbaa !72
  %.not.i.i170 = icmp ne i64 %i.ov, -1
  %i.qp = zext i1 %.not.i.i170 to i64
  %spec.select.i.i = add i64 %.041.i.i, %i.qp     ; 2 uses
  %i.qq = add nuw i64 %.03740.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qq, %i.or
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.av, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %bb.au
  %.0.lcssa.i.i = phi i64 [ 0, %bb.au ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 8 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.or
end_hunk_0
