Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined:bb.a
  %bound1 = icmp ult ptr %scevgep375, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ic = and i64 %i.df, 7                        ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  %i.ie = select i1 %i.id, i64 8, i64 %i.ic
  %n.vec = sub i64 %i.df, %i.ie                   ; 2 uses
  %i.if = add i64 %i.cv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ig = add nuw i64 %i.cv, %index               ; 8 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ig
  %i.ii = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.ij = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.ik = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.il = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.im = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.in = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.io = getelementptr [12 x i8], ptr %.val, i64 %i.ig
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iq = getelementptr i8, ptr %i.ii, i64 20
  %i.ir = getelementptr i8, ptr %i.ij, i64 32
  %i.is = getelementptr i8, ptr %i.ik, i64 44
  %i.it = getelementptr i8, ptr %i.il, i64 56
  %i.iu = getelementptr i8, ptr %i.im, i64 68
  %i.iv = getelementptr i8, ptr %i.in, i64 80
  %i.iw = getelementptr i8, ptr %i.io, i64 92
  %i.ix = load i32, ptr %i.ip, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iy = load i32, ptr %i.iq, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iz = load i32, ptr %i.ir, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ja = load i32, ptr %i.is, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jb = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 1
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 2
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ja, i64 3
  %i.jf = load i32, ptr %i.it, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jg = load i32, ptr %i.iu, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jh = load i32, ptr %i.iv, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ji = load i32, ptr %i.iw, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jj = insertelement <4 x i32> poison, i32 %i.jf, i64 0
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 1
  %i.jl = insertelement <4 x i32> %i.jk, i32 %i.jh, i64 2
  %i.jm = insertelement <4 x i32> %i.jl, i32 %i.ji, i64 3
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %index ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store <4 x i32> %i.je, ptr %i.jn, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  store <4 x i32> %i.jm, ptr %i.jo, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jp = icmp eq i64 %index.next, %n.vec
  br i1 %i.jp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !345

._crit_edge259:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.jq = load ptr, ptr %i.ap, align 8, !tbaa !25, !llvm.access.group !338
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !llvm.access.group !338
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i64 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0111257 = phi i64 [ %i.kq, %scalar.ph ], [ %.0111257.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111257
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !372, !llvm.access.group !338
  %i.jw = sub nuw i64 %.0111257, %i.cv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.jw
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !100, !llvm.access.group !338
  %i.jy = add nuw i64 %.0111257, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !372, !llvm.access.group !338
  %i.kc = sub nuw i64 %i.jy, %i.cv
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.kc
  store i32 %i.kb, ptr %i.kd, align 4, !tbaa !100, !llvm.access.group !338
  %i.ke = add nuw i64 %.0111257, 2                ; 2 uses
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !372, !llvm.access.group !338
  %i.ki = sub nuw i64 %i.ke, %i.cv
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ki
  store i32 %i.kh, ptr %i.kj, align 4, !tbaa !100, !llvm.access.group !338
  %i.kk = add nuw i64 %.0111257, 3                ; 2 uses
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !372, !llvm.access.group !338
  %i.ko = sub nuw i64 %i.kk, %i.cv
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ko
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !100, !llvm.access.group !338
  %i.kq = add nuw i64 %.0111257, 4                ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %i.kq, %i.cx
  br i1 %exitcond293.not.3, label %._crit_edge259, label %scalar.ph, !llvm.loop !346

bb.ag:                                            ; preds = %._crit_edge259
  %i.kr = load ptr, ptr %24, align 8, !tbaa !127, !llvm.access.group !338 ; 2 uses
  %i.ks = load i64, ptr %i.cl, align 8, !tbaa !81, !llvm.access.group !338
  %i.kt = load i32, ptr %8, align 8, !tbaa !142, !llvm.access.group !338
  %i.ku = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

bb.ah:                                            ; preds = %bb.ag
  %i.kv = trunc i64 %i.ks to i32
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !25, !llvm.access.group !338
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !llvm.access.group !338
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, i32 noundef %i.ea, i64 noundef %i.cz, i32 noundef %i.kv, ptr noundef %i.ga, ptr noundef %.sroa.0202.0, i32 noundef %i.kt, i64 noundef %i.ku)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !338

bb.ai:                                            ; preds = %bb.ah
  %i.kz = load ptr, ptr %i.gb, align 8, !tbaa !25, !llvm.access.group !338
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !llvm.access.group !338
  invoke void %i.lb(ptr noundef nonnull align 8 dereferenceable(25) %i.gb, i64 noundef %i.fw, ptr noundef %i.gf)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.aj, !llvm.access.group !338

bb.aj:                                            ; preds = %bb.ai
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %bb.ai
  %i.le = load ptr, ptr %i.fv, align 8, !tbaa !25, !llvm.access.group !338
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !llvm.access.group !338
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(25) %i.fv, i64 noundef %i.fw, ptr noundef %i.ga)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ak, !llvm.access.group !338

bb.ak:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  call void @free(ptr noundef %.sroa.0202.0) #27, !llvm.access.group !338
  %.not.i.i.i164 = icmp eq ptr %.sroa.0207.0, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.lj = ptrtoint ptr %.sroa.9210.0 to i64
  %i.lk = ptrtoint ptr %.sroa.0207.0 to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0, i64 noundef %i.ll) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.al
  %.not.i.i.i165 = icmp eq ptr %.sroa.0212.0240, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.lm = ptrtoint ptr %.sroa.9216.0242 to i64
  %i.ln = ptrtoint ptr %.sroa.0212.0240 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0212.0240, i64 noundef %i.lo) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.am
  %i.lp = add nsw i64 %.0113261, 1
  %i.lq = load i64, ptr %i.e, align 8, !tbaa !72, !llvm.access.group !338
  %.not120.not = icmp slt i64 %.0113261, %i.lq
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
  %i.lr = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  invoke void %i.lt(ptr noundef nonnull align 8 dereferenceable(88) %i.ap)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.lu = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre294)
  %.not118 = icmp eq i32 %i.lu, 0
  br i1 %.not118, label %bb.ap, label %.preheader247

.preheader247:                                    ; preds = %bb.ao
  %i.lv = load i64, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.lw = icmp sgt i64 %i.lv, 0
  br i1 %i.lw, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader247
  %i.lx = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.ly = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %.val129 = load ptr, ptr %19, align 8, !tbaa !377
  %i.lz = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %.val129.val = load i8, ptr %.val129, align 1, !tbaa !105, !range !38, !noundef !39
  %i.ma = trunc nuw i8 %.val129.val to i1
  %i.mb = load ptr, ptr %i.lz, align 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !72
  %i.md = icmp eq i64 %i.mc, 0                    ; 2 uses
  br i1 %i.ma, label %.lr.ph269.split.us, label %.lr.ph269.split

.lr.ph269.split.us:                               ; preds = %.lr.ph269
  br i1 %i.md, label %._crit_edge270, label %.lr.ph269.split.us.split

.lr.ph269.split.us.split:                         ; preds = %.lr.ph269.split.us, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"
  %i.me = phi i64 [ %i.mr, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ %i.lv, %.lr.ph269.split.us ]
  %.0110268.us.a = phi i64 [ %i.ms, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ 0, %.lr.ph269.split.us ] ; 2 uses
  %27 = load i64, ptr %2, align 8, !tbaa !72
  %i.mf = mul nsw i64 %27, %.0110268.us.a         ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.mf ; 2 uses
  %.val130.us = load ptr, ptr %i.lz, align 8
  %i.mi = load i64, ptr %.val130.us, align 8, !tbaa !72 ; 5 uses
  %.not1.i.us = icmp eq i64 %i.mi, 0
  br i1 %.not1.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", label %.lr.ph46.i5.i.us.preheader

.lr.ph46.i5.i.us.preheader:                       ; preds = %.lr.ph269.split.us.split
  %min.iters.check387 = icmp ult i64 %i.mi, 4
  br i1 %min.iters.check387, label %.lr.ph46.i5.i.us.preheader420, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph46.i5.i.us.preheader
  %n.vec389 = and i64 %i.mi, -4                   ; 3 uses
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next392, %vector.body390 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index391 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mj, align 4, !tbaa !136
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mk, align 4, !tbaa !136
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %index391 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ml, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.mm, align 8, !tbaa !72
  %index.next392 = add nuw i64 %index391, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next392, %n.vec389
  br i1 %i.mn, label %middle.block393, label %vector.body390, !llvm.loop !348

middle.block393:                                  ; preds = %vector.body390
  %cmp.n394 = icmp eq i64 %i.mi, %n.vec389
  br i1 %cmp.n394, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us.preheader420

.lr.ph46.i5.i.us.preheader420:                    ; preds = %.lr.ph46.i5.i.us.preheader, %middle.block393
  %.045.i6.i.us.ph = phi i64 [ 0, %.lr.ph46.i5.i.us.preheader ], [ %n.vec389, %middle.block393 ]
  br label %.lr.ph46.i5.i.us

.lr.ph46.i5.i.us:                                 ; preds = %.lr.ph46.i5.i.us.preheader420, %.lr.ph46.i5.i.us
  %.045.i6.i.us = phi i64 [ %i.mq, %.lr.ph46.i5.i.us ], [ %.045.i6.i.us.ph, %.lr.ph46.i5.i.us.preheader420 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.045.i6.i.us
  store float f0x7F7FFFFF, ptr %i.mo, align 4, !tbaa !136
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %.045.i6.i.us
  store i64 -1, ptr %i.mp, align 8, !tbaa !72
  %i.mq = add nuw i64 %.045.i6.i.us, 1            ; 2 uses
  %exitcond51.not.i7.i.us = icmp eq i64 %i.mq, %i.mi
  br i1 %exitcond51.not.i7.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us, !llvm.loop !349

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit": ; preds = %.lr.ph46.i5.i.us, %middle.block393
  %.pre296.a = load i64, ptr %3, align 8, !tbaa !72
  br label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us": ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", %.lr.ph269.split.us.split
  %i.mr = phi i64 [ %.pre296.a, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit" ], [ %i.me, %.lr.ph269.split.us.split ] ; 2 uses
  %i.ms = add nuw nsw i64 %.0110268.us.a, 1       ; 2 uses
  %i.mt = icmp slt i64 %i.ms, %i.mr
  br i1 %i.mt, label %.lr.ph269.split.us.split, label %._crit_edge270, !llvm.loop !350

.lr.ph269.split:                                  ; preds = %.lr.ph269
  br i1 %i.md, label %._crit_edge270, label %.lr.ph269.split.split

._crit_edge270:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", %.lr.ph269.split, %.lr.ph269.split.us, %.preheader247
  call void @__kmpc_end_single(ptr nonnull @2, i32 %.pre294)
  br label %bb.ap

.lr.ph269.split.split:                            ; preds = %.lr.ph269.split, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit"
  %i.mu = phi i64 [ %i.nh, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ %i.lv, %.lr.ph269.split ]
  %.0110268.a = phi i64 [ %i.ni, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ 0, %.lr.ph269.split ] ; 2 uses
  %28 = load i64, ptr %2, align 8, !tbaa !72
  %i.mv = mul nsw i64 %28, %.0110268.a            ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.mv ; 2 uses
  %.val130 = load ptr, ptr %i.lz, align 8
  %i.my = load i64, ptr %.val130, align 8, !tbaa !72 ; 5 uses
  %.not1.i = icmp eq i64 %i.my, 0
  br i1 %.not1.i, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", label %.lr.ph46.i.i.preheader

.lr.ph46.i.i.preheader:                           ; preds = %.lr.ph269.split.split
  %min.iters.check378 = icmp ult i64 %i.my, 4
  br i1 %min.iters.check378, label %.lr.ph46.i.i.preheader421, label %vector.ph379

vector.ph379:                                     ; preds = %.lr.ph46.i.i.preheader
  %n.vec380 = and i64 %i.my, -4                   ; 3 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next383, %vector.body381 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index382 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.mz, align 4, !tbaa !136
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.na, align 4, !tbaa !136
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index382 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.nb, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.nc, align 8, !tbaa !72
  %index.next383 = add nuw i64 %index382, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next383, %n.vec380
  br i1 %i.nd, label %middle.block384, label %vector.body381, !llvm.loop !351

middle.block384:                                  ; preds = %vector.body381
  %cmp.n = icmp eq i64 %i.my, %n.vec380
  br i1 %cmp.n, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", label %.lr.ph46.i.i.preheader421

.lr.ph46.i.i.preheader421:                        ; preds = %.lr.ph46.i.i.preheader, %middle.block384
  %.045.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.preheader ], [ %n.vec380, %middle.block384 ]
  br label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %.lr.ph46.i.i.preheader421, %.lr.ph46.i.i
  %.045.i.i = phi i64 [ %i.ng, %.lr.ph46.i.i ], [ %.045.i.i.ph, %.lr.ph46.i.i.preheader421 ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.045.i.i
  store float f0xFF7FFFFF, ptr %i.ne, align 4, !tbaa !136
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.045.i.i
  store i64 -1, ptr %i.nf, align 8, !tbaa !72
  %i.ng = add nuw i64 %.045.i.i, 1                ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.ng, %i.my
  br i1 %exitcond51.not.i.i, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", label %.lr.ph46.i.i, !llvm.loop !352

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit": ; preds = %.lr.ph46.i.i, %middle.block384
  %.pre295.a = load i64, ptr %3, align 8, !tbaa !72
  br label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit"

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit": ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit", %.lr.ph269.split.split
  %i.nh = phi i64 [ %.pre295.a, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.loopexit" ], [ %i.mu, %.lr.ph269.split.split ] ; 2 uses
  %i.ni = add nuw nsw i64 %.0110268.a, 1          ; 2 uses
  %i.nj = icmp slt i64 %i.ni, %i.nh
  br i1 %i.nj, label %.lr.ph269.split.split, label %._crit_edge270, !llvm.loop !353

bb.ap:                                            ; preds = %._crit_edge270, %bb.ao
  call void @__kmpc_barrier(ptr nonnull @5, i32 %.pre294)
  call void @__kmpc_barrier(ptr nonnull @6, i32 %.pre294)
  call void @__kmpc_critical(ptr nonnull @2, i32 %.pre294, ptr nonnull @.gomp_critical_user_.var)
  %i.nk = load ptr, ptr %i.bl, align 8, !tbaa !363 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.bj
  br i1 %i.nl, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.ap
  %i.nm = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %bb.aq

._crit_edge278:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit", %bb.ap
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %.pre294, ptr nonnull @.gomp_critical_user_.var)
  call void @__kmpc_barrier(ptr nonnull @6, i32 %.pre294)
  %i.nn = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre294)
  %.not119 = icmp eq i32 %i.nn, 0
  br i1 %.not119, label %bb.be, label %.preheader

.preheader:                                       ; preds = %._crit_edge278
  %i.no = load i64, ptr %3, align 8, !tbaa !72
  %i.np = icmp sgt i64 %i.no, 0
  br i1 %i.np, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %.preheader
  %i.nq = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph277, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit"
  %.sroa.0190.0275 = phi ptr [ %i.nk, %.lr.ph277 ], [ %i.oe, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0190.0275, i64 32
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !100
  %i.nt = sext i32 %i.ns to i64
  %i.nu = load i64, ptr %2, align 8, !tbaa !72
  %i.nv = mul nsw i64 %i.nu, %i.nt                ; 4 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %.sroa.0227.0, i64 %i.nv ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %.sroa.0233.0, i64 %i.nv ; 2 uses
  %i.ny = load ptr, ptr %20, align 8, !tbaa !99
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.nv ; 2 uses
  %i.oa = load ptr, ptr %21, align 8, !tbaa !45
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.nv ; 2 uses
  %.val131 = load ptr, ptr %22, align 8, !tbaa !379
  %.val132 = load ptr, ptr %i.nm, align 8
  %.val131.val = load i8, ptr %.val131, align 1, !tbaa !105, !range !38, !noundef !39
  %i.oc = trunc nuw i8 %.val131.val to i1
  %i.od = load i64, ptr %.val132, align 8, !tbaa !72 ; 4 uses
  br i1 %i.oc, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5faiss9heap_addnINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m(i64 noundef %i.od, ptr noundef %i.nz, ptr noundef %i.ob, ptr noundef %i.nw, ptr noundef %i.nx, i64 noundef %i.od)
          to label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN5faiss9heap_addnINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m(i64 noundef %i.od, ptr noundef %i.nz, ptr noundef %i.ob, ptr noundef %i.nw, ptr noundef %i.nx, i64 noundef %i.od)
          to label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_2clES2_PKlS3_S4_.exit": ; preds = %bb.ar, %bb.as
  %i.oe = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0190.0275) #43 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.bj
  br i1 %i.of, label %._crit_edge278, label %bb.aq, !llvm.loop !354

._crit_edge281:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit", %.preheader
  call void @__kmpc_end_single(ptr nonnull @2, i32 %.pre294)
  br label %bb.be

bb.at:                                            ; preds = %.lr.ph280, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit"
  %.0279 = phi i64 [ 0, %.lr.ph280 ], [ %i.ty, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_3clES3_S4_.exit" ] ; 2 uses
  %i.og = load ptr, ptr %20, align 8, !tbaa !99
  %i.oh = load i64, ptr %2, align 8, !tbaa !72
  %i.oi = mul nsw i64 %i.oh, %.0279               ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.oi ; 16 uses
  %i.ok = load ptr, ptr %21, align 8, !tbaa !45
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ok, i64 %i.oi ; 16 uses
  %.val133 = load ptr, ptr %23, align 8, !tbaa !381
  %.val134 = load ptr, ptr %i.nq, align 8
  %.val133.val = load i8, ptr %.val133, align 1, !tbaa !105, !range !38, !noundef !39
  %i.om = trunc nuw i8 %.val133.val to i1
  %i.on = load i64, ptr %.val134, align 8, !tbaa !72 ; 17 uses
  %.not46.i5.i = icmp eq i64 %i.on, 0             ; 2 uses
  br i1 %i.om, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not46.i5.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.au
  %i.oo = getelementptr inbounds i8, ptr %i.oj, i64 -4 ; 4 uses
  %i.op = getelementptr inbounds i8, ptr %i.ol, i64 -8 ; 5 uses
  br label %bb.av

bb.av:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %.lr.ph.i.i
  %.041.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %.03740.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.qm, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %i.oq = load float, ptr %i.oj, align 4, !tbaa !136
  %i.or = load i64, ptr %i.ol, align 8, !tbaa !72 ; 2 uses
  %i.os = sub nuw i64 %i.on, %.03740.i.i          ; 5 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.os ; 3 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !136 ; 5 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.os ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !72 ; 3 uses
  %i.ox = icmp ult i64 %i.os, 2
  br i1 %i.ox, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i169

.lr.ph.i.i.i169:                                  ; preds = %bb.av, %bb.ay
  %i.oy = phi i64 [ %i.qb, %bb.ay ], [ 3, %bb.av ]
  %i.oz = phi i64 [ %i.qa, %bb.ay ], [ 2, %bb.av ] ; 7 uses
  %.062.i.i.i = phi i64 [ %.1.i.i.i, %bb.ay ], [ 1, %bb.av ] ; 6 uses
  %i.pa = icmp eq i64 %i.oz, %i.os
  br i1 %i.pa, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.aw

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i169
  %.pre.i.i.i171 = load float, ptr %i.ot, align 4, !tbaa !136
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i169
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.oz
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !136 ; 4 uses
  %i.pd = getelementptr [4 x i8], ptr %i.oj, i64 %i.oz
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !136 ; 5 uses
  %i.pf = getelementptr [8 x i8], ptr %i.ol, i64 %i.oz
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !72 ; 3 uses
  %i.ph = fcmp olt float %i.pc, %i.pe
  br i1 %i.ph, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.aw
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oz
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !72
  %i.pk = fcmp oeq float %i.pc, %i.pe
  %i.pl = icmp slt i64 %i.pj, %i.pg
  %i.pm = and i1 %i.pk, %i.pl
  br i1 %i.pm, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %bb.ax

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %bb.aw, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.pn = phi float [ %.pre.i.i.i171, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.pc, %bb.aw ], [ %i.pc, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.po = fcmp olt float %i.ou, %i.pn
  br i1 %i.po, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oz
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !72 ; 2 uses
  %i.pr = fcmp oeq float %i.ou, %i.pn
  %i.ps = icmp slt i64 %i.ow, %i.pq
  %i.pt = and i1 %i.pr, %i.ps
  br i1 %i.pt, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.ay

bb.ax:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i
  %i.pu = fcmp olt float %i.ou, %i.pe
  br i1 %i.pu, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.ax
  %i.pv = fcmp oeq float %i.ou, %i.pe
  %i.pw = icmp slt i64 %i.ow, %i.pg
  %i.px = and i1 %i.pv, %i.pw
  br i1 %i.px, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i = phi float [ %i.pn, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.pe, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.pq, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.pg, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i = phi i64 [ %i.oz, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.oy, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %.062.i.i.i
  store float %.sink79.i.i.i, ptr %i.py, align 4, !tbaa !136
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.062.i.i.i
  store i64 %.sink.i.i.i, ptr %i.pz, align 8, !tbaa !72
  %i.qa = shl i64 %.1.i.i.i, 1                    ; 3 uses
  %i.qb = or disjoint i64 %i.qa, 1
  %i.qc = icmp ugt i64 %i.qa, %i.os
  br i1 %i.qc, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i169, !llvm.loop !13

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.ay, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %bb.ax, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.ph.i.i.i = phi i64 [ %.1.i.i.i, %bb.ay ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %.062.i.i.i, %bb.ax ]
  %.pre68.i.i.i = load float, ptr %i.ot, align 4, !tbaa !136
  %.pre69.i.i.i = load i64, ptr %i.ov, align 8, !tbaa !72
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %bb.av
  %i.qd = phi i64 [ %i.ow, %bb.av ], [ %.pre69.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.qe = phi float [ %i.ou, %bb.av ], [ %.pre68.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.av ], [ %.0.lcssa.ph.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %.0.lcssa.i.i.i
  store float %i.qe, ptr %i.qf, align 4, !tbaa !136
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.0.lcssa.i.i.i
  store i64 %i.qd, ptr %i.qg, align 8, !tbaa !72
  %i.qh = xor i64 %.041.i.i, -1
  %i.qi = add i64 %i.on, %i.qh                    ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.qi
  store float %i.oq, ptr %i.qj, align 4, !tbaa !136
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.qi
  store i64 %i.or, ptr %i.qk, align 8, !tbaa !72
  %.not.i.i170 = icmp ne i64 %i.or, -1
  %i.ql = zext i1 %.not.i.i170 to i64
  %spec.select.i.i = add i64 %.041.i.i, %i.ql     ; 2 uses
  %i.qm = add nuw i64 %.03740.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qm, %i.on
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.av, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %bb.au
  %.0.lcssa.i.i = phi i64 [ 0, %bb.au ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 8 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.on
end_hunk_0
