inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.ht = atomicrmw add ptr %i.hs, i32 -1 acq_rel, align 4
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit71

bb.am:                                            ; preds = %bb.al
  %i.hv = load ptr, ptr %i.fw, align 8, !tbaa !17 ; 3 uses
  %.not3.i74 = icmp eq ptr %i.hv, null
  %i.hw = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.hw)
          to label %_ZN4ncnn3MatD2Ev.exit71 unwind label %bb.aq, !inline_history !19

bb.ao:                                            ; preds = %bb.am
  %.not.i112 = icmp eq ptr %i.hw, null
  br i1 %.not.i112, label %_ZN4ncnn3MatD2Ev.exit71, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.hw) #10
  br label %_ZN4ncnn3MatD2Ev.exit71

bb.aq:                                            ; preds = %bb.an
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit71:                          ; preds = %bb.al, %bb.ak, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ic = load ptr, ptr %i.et, align 8, !tbaa !11 ; 2 uses
  %.not.i77 = icmp eq ptr %i.ic, null
  br i1 %.not.i77, label %_ZN4ncnn3MatD2Ev.exit70, label %bb.ar

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit71
  %i.id = atomicrmw add ptr %i.ic, i32 -1 acq_rel, align 4
  %i.ie = icmp eq i32 %i.id, 1
  br i1 %i.ie, label %bb.as, label %_ZN4ncnn3MatD2Ev.exit70

bb.as:                                            ; preds = %bb.ar
  %i.if = load ptr, ptr %i.fb, align 16, !tbaa !17 ; 3 uses
  %.not3.i78 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i78, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ig)
          to label %_ZN4ncnn3MatD2Ev.exit70 unwind label %bb.aw, !inline_history !19

bb.au:                                            ; preds = %bb.as
  %.not.i110 = icmp eq ptr %i.ig, null
  br i1 %.not.i110, label %_ZN4ncnn3MatD2Ev.exit70, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.ig) #10
  br label %_ZN4ncnn3MatD2Ev.exit70

bb.aw:                                            ; preds = %bb.at
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit70:                          ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit71, %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.em

bb.ax:                                            ; preds = %bb.s
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.io = load i32, ptr %i.al, align 4, !tbaa !295 ; 2 uses
  %i.ip = load i32, ptr %i.an, align 8, !tbaa !296 ; 2 uses
  %i.iq = load i32, ptr %i.ap, align 4, !tbaa !297
  %i.ir = load i32, ptr %i.as, align 8, !tbaa !298
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.it = load i32, ptr %i.is, align 4, !tbaa !38
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.en, ptr %i.a, align 4, !tbaa !69
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !69
  store i32 %i.io, ptr %i.c, align 4, !tbaa !69
  store i32 %i.ip, ptr %i.d, align 4, !tbaa !69
  store i32 %i.iq, ptr %i.e, align 4, !tbaa !69
  store i32 %i.ir, ptr %i.f, align 4, !tbaa !69
  store i32 %i.it, ptr %i.g, align 4, !tbaa !69
  %i.iv = load i32, ptr %i.cf, align 8, !tbaa !68 ; 2 uses
  %i.iw = mul nsw i32 %i.ej, %i.iv                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.ix = sext i32 %i.iv to i64
  %i.iy = mul i64 %i.ei, %i.ix
  store i64 %i.iy, ptr %i.h, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.iz = add nsw i32 %i.en, -1
  %i.ja = mul nsw i32 %i.io, %i.iz
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.i, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.jc = add nsw i32 %i.eo, -1
  %i.jd = mul nsw i32 %i.ip, %i.jc
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.j, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  store i32 %i.ep, ptr %i.k, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.jf = load ptr, ptr %i.in, align 8, !tbaa !18
  store ptr %i.jf, ptr %i.l, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !69
  %i.jg = sdiv i32 %i.iw, 8
  store i32 %i.jg, ptr %i.m, align 4, !tbaa !69
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !312
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.t, i32 %i.ji)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.im, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.iu, ptr nonnull %i.h)
  %i.jj = load i32, ptr %i.m, align 4, !tbaa !69
  %i.jk = shl nsw i32 %i.jj, 3
  %i.jl = load i32, ptr %i.n, align 4, !tbaa !69
  %i.jm = add nsw i32 %i.jl, %i.jk                ; 4 uses
  store i32 %i.jm, ptr %i.n, align 4, !tbaa !69
  %i.jn = sub nsw i32 %i.iw, %i.jm                ; 2 uses
  %i.jo = sdiv i32 %i.jn, 4                       ; 3 uses
  store i32 %i.jo, ptr %i.m, align 4, !tbaa !69
  %i.jp = icmp sgt i32 %i.jn, 3
  br i1 %i.jp, label %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i, label %._crit_edge2734.i

_ZN4ncnn3MatD2Ev.exit978.lr.ph.i:                 ; preds = %bb.ax
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.ju = load i32, ptr %i.cj, align 16, !tbaa !279
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %_ZN4ncnn3MatD2Ev.exit978.preheader.i, label %._crit_edge2734.i

_ZN4ncnn3MatD2Ev.exit978.preheader.i:             ; preds = %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i
  %i.jw = sext i32 %i.jm to i64
  %wide.trip.count3327.i = zext nneg i32 %i.jo to i64
  br label %_ZN4ncnn3MatD2Ev.exit978.i

._crit_edge2734.i:                                ; preds = %._crit_edge2732.split.i, %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i, %bb.ax
  %i.jx = shl nsw i32 %i.jo, 2
  %i.jy = add nsw i32 %i.jx, %i.jm                ; 5 uses
  store i32 %i.jy, ptr %i.n, align 4, !tbaa !69
  %i.jz = sub nsw i32 %i.iw, %i.jy                ; 2 uses
  %i.ka = sdiv i32 %i.jz, 2                       ; 3 uses
  store i32 %i.ka, ptr %i.m, align 4, !tbaa !69
  %i.kb = icmp sgt i32 %i.jz, 1
  br i1 %i.kb, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, label %._crit_edge2961.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.i:                 ; preds = %._crit_edge2734.i
  %i.kc = load i32, ptr %i.ak, align 8, !tbaa !68
  %.fr2811.i = freeze i32 %i.kc                   ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !70
  %i.kf = mul i32 %i.ke, %.fr2811.i               ; 14 uses
  %i.kg = load i32, ptr %i.ag, align 4, !tbaa !56 ; 6 uses
  %i.kh = load i32, ptr %i.ah, align 8, !tbaa !279 ; 5 uses
  %i.ki = load i32, ptr %i.ci, align 4, !tbaa !56 ; 2 uses
  %i.kj = load i32, ptr %i.cj, align 16, !tbaa !279 ; 2 uses
  %i.kk = load ptr, ptr %4, align 16, !tbaa !18, !noalias !316 ; 2 uses
  %i.kl = load i64, ptr %i.cl, align 16, !tbaa !20, !noalias !316
  %i.km = load i64, ptr %i.ce, align 16, !tbaa !57, !noalias !316
  %factor.op.mul.i = mul i64 %i.km, %i.kl         ; 2 uses
  %i.kn = icmp slt i32 %i.kj, 1
  %i.ko = icmp slt i32 %i.ki, 1
  %i.kp = icmp sgt i32 %i.kf, 7
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge.i = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %brmerge.i, label %._crit_edge2961.split.i, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kt = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !319
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !20, !noalias !319
  %i.kv = load i64, ptr %i.kr, align 8, !tbaa !57, !noalias !319
  %factor.op.mul2967.i = mul i64 %i.kv, %i.ku
  %i.kw = add i32 %i.kf, -8                       ; 2 uses
  %i.kx = lshr i32 %i.kw, 1
  %i.ky = and i32 %i.kx, 2147483644
  %narrow3571.i = add nuw i32 %i.ky, 4
  %i.kz = zext i32 %narrow3571.i to i64
  %i.la = and i32 %i.kw, -8
  %i.lb = add i32 %i.la, 8
  %i.lc = sext i32 %i.kf to i64
  %i.ld = sext i32 %i.jy to i64
  %wide.trip.count3414.i = zext nneg i32 %i.ka to i64
  %invariant.op3590.i = add nsw i64 %i.lc, -7
  %i.le = sext i32 %i.kg to i64                   ; 5 uses
  %i.lf = and i32 %i.kf, -8
  br label %_ZN4ncnn3MatD2Ev.exit957.i

_ZN4ncnn3MatD2Ev.exit978.i:                       ; preds = %._crit_edge2732.split.i, %_ZN4ncnn3MatD2Ev.exit978.preheader.i
  %indvars.iv3324.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit978.preheader.i ], [ %indvars.iv.next3325.i, %._crit_edge2732.split.i ] ; 2 uses
  %i.lg = load i32, ptr %i.ak, align 8, !tbaa !68
  %.fr2594.i = freeze i32 %i.lg                   ; 3 uses
  %i.lh = load i32, ptr %i.jq, align 8, !tbaa !70
  %i.li = mul i32 %i.lh, %.fr2594.i               ; 13 uses
  %i.lj = load i32, ptr %i.ag, align 4, !tbaa !56 ; 5 uses
  %i.lk = load i32, ptr %i.ah, align 8, !tbaa !279 ; 5 uses
  %i.ll = load i32, ptr %i.ci, align 4, !tbaa !56 ; 2 uses
  %i.lm = load i32, ptr %i.cj, align 16, !tbaa !279 ; 2 uses
  %i.ln = load i32, ptr %i.cf, align 8, !tbaa !68 ; 2 uses
  %i.lo = icmp sgt i32 %i.lm, 0
  br i1 %i.lo, label %.preheader2509.lr.ph.i, label %._crit_edge2732.split.i

.preheader2509.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit978.i
  %i.lp = shl nuw nsw i64 %indvars.iv3324.i, 2
  %i.lq = add nsw i64 %i.lp, %i.jw                ; 2 uses
  %i.lr = trunc nsw i64 %i.lq to i32              ; 3 uses
  %i.ls = icmp sgt i32 %i.ll, 0
  %i.lt = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not920.i = icmp eq ptr %i.lt, null
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = sdiv i32 %i.lr, 8
  %i.lw = srem i32 %i.lr, 8
  %.lhs.trunc.i = trunc nsw i32 %i.lw to i8
  %i.lx = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.lx to i32
  %i.ly = add nsw i32 %i.lv, %.sext.i
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp sgt i32 %i.li, 7
  %i.mb = load i32, ptr %i.g, align 4
  br i1 %i.ls, label %.preheader2509.preheader.i, label %._crit_edge2732.split.i

.preheader2509.preheader.i:                       ; preds = %.preheader2509.lr.ph.i
  %i.mc = load ptr, ptr %4, align 16, !tbaa !18, !noalias !322
  %i.md = load i64, ptr %i.cl, align 16, !tbaa !20, !noalias !322
  %i.me = sdiv i32 %i.lr, %i.ln
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul i64 %i.md, %i.mf
  %i.mh = load i64, ptr %i.ce, align 16, !tbaa !57, !noalias !322
  %i.mi = mul i64 %i.mg, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mi
  %i.mk = add i32 %i.li, -8                       ; 2 uses
  %i.ml = lshr i32 %i.mk, 1
  %i.mm = and i32 %i.ml, 2147483644
  %narrow.i = add nuw i32 %i.mm, 4
  %i.mn = zext i32 %narrow.i to i64
  %i.mo = and i32 %i.mk, -8
  %i.mp = add i32 %i.mo, 8                        ; 2 uses
  %i.mq = sext i32 %i.li to i64
  %invariant.op3589.i = add nsw i64 %i.mq, -7
  br label %.preheader2509.i

.preheader2509.i:                                 ; preds = %._crit_edge.i, %.preheader2509.preheader.i
  %.07392731.i = phi ptr [ %.3742.i, %._crit_edge.i ], [ %i.mj, %.preheader2509.preheader.i ]
  %.07462730.i = phi i32 [ %.neg2463.i, %._crit_edge.i ], [ 0, %.preheader2509.preheader.i ]
  %i.mr = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0                   ; 4 uses
  %.neg2463.i = add nuw nsw i32 %.07462730.i, 1   ; 6 uses
  %i.mt = load i32, ptr %i.k, align 4             ; 4 uses
  %i.mu = shl i32 %i.mt, 5
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = shl i32 %i.mt, 4
  %i.mx = sext i32 %i.mw to i64                   ; 3 uses
  %i.my = shl i32 %i.mt, 3
  %i.mz = sext i32 %i.my to i64                   ; 3 uses
  %i.na = shl nsw i32 %i.mt, 2
  %i.nb = sext i32 %i.na to i64
  %i.nc = load i64, ptr %i.h, align 8             ; 3 uses
  %.idx.i = shl i64 %i.nc, 3
  %.idx921.i = mul i64 %i.nc, 12
  %i.nd = mul nsw i64 %i.mv, %i.mn
  %wide.trip.count3266.i = zext nneg i32 %i.mr to i64 ; 5 uses
  br label %bb.ay

._crit_edge2732.split.i:                          ; preds = %._crit_edge.i, %.preheader2509.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit978.i
  %indvars.iv.next3325.i = add nuw nsw i64 %indvars.iv3324.i, 1 ; 2 uses
  %exitcond3328.not.i = icmp eq i64 %indvars.iv.next3325.i, %wide.trip.count3327.i
  br i1 %exitcond3328.not.i, label %._crit_edge2734.i, label %_ZN4ncnn3MatD2Ev.exit978.i, !llvm.loop !325

._crit_edge.i:                                    ; preds = %bb.cc
  %exitcond3323.not.i = icmp eq i32 %.neg2463.i, %i.lm
  br i1 %exitcond3323.not.i, label %._crit_edge2732.split.i, label %.preheader2509.i, !llvm.loop !327

bb.ay:                                            ; preds = %bb.cc, %.preheader2509.i
  %.17402729.i = phi ptr [ %.07392731.i, %.preheader2509.i ], [ %.3742.i, %bb.cc ] ; 8 uses
  %.07482728.i = phi i32 [ 0, %.preheader2509.i ], [ %i.amo, %bb.cc ] ; 5 uses
  br i1 %.not920.i, label %_ZN4ncnn3MatD2Ev.exit977.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ne = load <4 x float>, ptr %i.lu, align 1, !tbaa !310
  br label %_ZN4ncnn3MatD2Ev.exit977.i

_ZN4ncnn3MatD2Ev.exit977.i:                       ; preds = %bb.az, %bb.ay
  %.02317.i = phi nsz <4 x float> [ zeroinitializer, %bb.ay ], [ %i.ne, %bb.az ] ; 3 uses
  %i.nf = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !328 ; 2 uses
  %i.ng = load i64, ptr %i.jr, align 8, !tbaa !20, !noalias !328
  %i.nh = mul i64 %i.ng, %i.lz
  %i.ni = load i64, ptr %i.js, align 8, !tbaa !57, !noalias !328
  %i.nj = mul i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.nj ; 2 uses
  br i1 %i.ma, label %.preheader2505.lr.ph.i, label %.preheader2508.i

.preheader2505.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit977.i
  %i.nl = load i32, ptr %i.j, align 4
  %invariant.op2529.i = sub i32 %.neg2463.i, %i.nl
  %i.nm = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nn = load i32, ptr %i.a, align 4
  %.fr3162.i = freeze i32 %i.nn                   ; 2 uses
  %i.no = icmp sgt i32 %.fr3162.i, 0
  %i.np = load i32, ptr %i.i, align 4
  %.neg2465.i = add nuw nsw i32 %.07482728.i, 1
  %invariant.op.i = sub i32 %.neg2465.i, %i.np
  %i.nq = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ms, label %.preheader2505.us.preheader.i, label %.preheader2505.preheader.i

.preheader2505.preheader.i:                       ; preds = %.preheader2505.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.nf, i64 %i.nd
  %scevgep3261.i = getelementptr i8, ptr %scevgep.i, i64 %i.nj
  br label %.preheader2508.i

.preheader2505.us.preheader.i:                    ; preds = %.preheader2505.lr.ph.i
  %i.nr = load i32, ptr %i.c, align 4
  %i.ns = load i32, ptr %i.d, align 4
  %i.nt = zext i32 %.fr3162.i to i64              ; 2 uses
  br label %.preheader2505.us.i

.preheader2505.us.i:                              ; preds = %._crit_edge.us.i, %.preheader2505.us.preheader.i
  %indvars.iv3268.i = phi i64 [ 0, %.preheader2505.us.preheader.i ], [ %indvars.iv.next3269.i, %._crit_edge.us.i ] ; 11 uses
  %.07512539.us.i = phi ptr [ %i.nk, %.preheader2505.us.preheader.i ], [ %i.oe, %._crit_edge.us.i ] ; 2 uses
  %.123182537.us.i = phi <4 x float> [ %.02317.i, %.preheader2505.us.preheader.i ], [ %.us-phi2533.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023292536.us.i = phi <4 x float> [ zeroinitializer, %.preheader2505.us.preheader.i ], [ %.us-phi2532.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023442535.us.i = phi <4 x float> [ zeroinitializer, %.preheader2505.us.preheader.i ], [ %.us-phi2531.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023542534.us.i = phi <4 x float> [ zeroinitializer, %.preheader2505.us.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.nu = or disjoint i64 %indvars.iv3268.i, 7
  %i.nv = or disjoint i64 %indvars.iv3268.i, 1
  %i.nw = or disjoint i64 %indvars.iv3268.i, 2
  %i.nx = or disjoint i64 %indvars.iv3268.i, 3
  %i.ny = or disjoint i64 %indvars.iv3268.i, 4
  %i.nz = or disjoint i64 %indvars.iv3268.i, 5
  %i.oa = or disjoint i64 %indvars.iv3268.i, 6
  %i.ob = lshr exact i64 %indvars.iv3268.i, 2     ; 2 uses
  %i.oc = or disjoint i64 %i.ob, 1
  %i.od = lshr exact i64 %indvars.iv3268.i, 3
  br i1 %i.no, label %.lr.ph2524.split.us.us.i, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %..loopexit2501_crit_edge.us.us.i, %.preheader2505.us.i
  %.us-phi.us.i = phi <4 x float> [ %.023542534.us.i, %.preheader2505.us.i ], [ %.42358.us.us.i, %..loopexit2501_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2531.us.i = phi <4 x float> [ %.023442535.us.i, %.preheader2505.us.i ], [ %.42348.us.us.i, %..loopexit2501_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2532.us.i = phi <4 x float> [ %.023292536.us.i, %.preheader2505.us.i ], [ %.42333.us.us.i, %..loopexit2501_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2533.us.i = phi <4 x float> [ %.123182537.us.i, %.preheader2505.us.i ], [ %.5.us.us.i, %..loopexit2501_crit_edge.us.us.i ] ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %.07512539.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next3269.i = add nuw nsw i64 %indvars.iv3268.i, 8 ; 2 uses
  %i.of = icmp slt i64 %indvars.iv.next3269.i, %invariant.op3589.i
  br i1 %i.of, label %.preheader2505.us.i, label %.preheader2508.i, !llvm.loop !331

.lr.ph2524.split.us.us.i:                         ; preds = %.preheader2505.us.i, %..loopexit2501_crit_edge.us.us.i
  %indvars.iv3263.i = phi i64 [ %indvars.iv.next3264.i, %..loopexit2501_crit_edge.us.us.i ], [ 0, %.preheader2505.us.i ] ; 3 uses
  %.223192522.us.us.i = phi <4 x float> [ %.5.us.us.i, %..loopexit2501_crit_edge.us.us.i ], [ %.123182537.us.i, %.preheader2505.us.i ] ; 3 uses
  %.123302521.us.us.i = phi <4 x float> [ %.42333.us.us.i, %..loopexit2501_crit_edge.us.us.i ], [ %.023292536.us.i, %.preheader2505.us.i ] ; 3 uses
  %.123452520.us.us.i = phi <4 x float> [ %.42348.us.us.i, %..loopexit2501_crit_edge.us.us.i ], [ %.023442535.us.i, %.preheader2505.us.i ] ; 3 uses
  %.123552519.us.us.i = phi <4 x float> [ %.42358.us.us.i, %..loopexit2501_crit_edge.us.us.i ], [ %.023542534.us.i, %.preheader2505.us.i ] ; 3 uses
  %i.og = trunc i64 %indvars.iv3263.i to i32
  %i.oh = mul i32 %i.ns, %i.og
  %.reass2530.us.us.i = add i32 %i.oh, %invariant.op2529.i ; 3 uses
  %i.oi = icmp slt i32 %.reass2530.us.us.i, 0
  br i1 %i.oi, label %..loopexit2501_crit_edge.us.us.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph2524.split.us.us.i
  %i.oj = srem i32 %.reass2530.us.us.i, %i.nm
  %i.ok = sdiv i32 %.reass2530.us.us.i, %i.nm     ; 2 uses
  %.not934.us.us.i = icmp eq i32 %i.oj, 0
  %.not935.us.us.i = icmp slt i32 %i.ok, %i.lk
  %or.cond = select i1 %.not934.us.us.i, i1 %.not935.us.us.i, i1 false
  br i1 %or.cond, label %.preheader2500.us.us.i, label %..loopexit2501_crit_edge.us.us.i

bb.bb:                                            ; preds = %.preheader2500.us.us.i, %bb.be
  %indvars.iv.i = phi i64 [ 0, %.preheader2500.us.us.i ], [ %indvars.iv.next.i, %bb.be ] ; 3 uses
  %.323202514.us.us.i = phi <4 x float> [ %.223192522.us.us.i, %.preheader2500.us.us.i ], [ %.42321.us.us.i, %bb.be ] ; 4 uses
  %.223312513.us.us.i = phi <4 x float> [ %.123302521.us.us.i, %.preheader2500.us.us.i ], [ %.32332.us.us.i, %bb.be ] ; 4 uses
  %.223462512.us.us.i = phi <4 x float> [ %.123452520.us.us.i, %.preheader2500.us.us.i ], [ %.32347.us.us.i, %bb.be ] ; 4 uses
  %.223562511.us.us.i = phi <4 x float> [ %.123552519.us.us.i, %.preheader2500.us.us.i ], [ %.32357.us.us.i, %bb.be ] ; 4 uses
  %i.ol = trunc i64 %indvars.iv.i to i32
  %i.om = mul i32 %i.nr, %i.ol
  %.reass.us.us.i = add i32 %invariant.op.i, %i.om ; 3 uses
  %i.on = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.on, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oo = srem i32 %.reass.us.us.i, %i.nq
  %i.op = sdiv i32 %.reass.us.us.i, %i.nq         ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.oo, 0
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ahv = fneg fast <4 x float> %i.ahu           ; 2 uses
  %i.ahw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ahv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ahn)
  %i.ahx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ahv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ahw) ; 8 uses
  %i.ahy = fmul fast <4 x float> %i.ahx, %i.ahx
  %i.ahz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahz, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3C088908))
  %i.aib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aia, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3D2AA9C1))
  %i.aic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aib, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float f0x3E2AAAAA))
  %i.aid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aic, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> splat (float 5.000000e-01))
  %i.aie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> nofpclass(nan inf) %i.ahy, <4 x float> nofpclass(nan inf) %i.ahx)
  %i.aif = fadd fast <4 x float> %i.aie, splat (float 1.000000e+00)
  %i.aig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahu)
  %i.aih = shl <4 x i32> %i.aig, splat (i32 23)
  %i.aii = add <4 x i32> %i.aih, splat (i32 1065353216)
  %i.aij = bitcast <4 x i32> %i.aii to <4 x float>
  %i.aik = fmul fast <4 x float> %i.aif, %i.aij
  %i.ail = fadd fast <4 x float> %i.aik, splat (float 1.000000e+00)
  %i.aim = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ail
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bz:                                            ; preds = %._crit_edge2714.i
  %i.ain = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> splat (float f0x42B0C0A5))
  %i.aio = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ain, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aip = fmul fast <4 x float> %i.aio, splat (float f0x3FB8AA3B)
  %i.aiq = fadd fast <4 x float> %i.aip, splat (float 5.000000e-01) ; 2 uses
  %i.air = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiq)
  %i.ais = sitofp fast <4 x i32> %i.air to <4 x float> ; 2 uses
  %i.ait = fcmp fast olt <4 x float> %i.aiq, %i.ais
  %i.aiu = select <4 x i1> %i.ait, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aiv = fsub fast <4 x float> %i.ais, %i.aiu   ; 2 uses
  %i.aiw = fneg fast <4 x float> %i.aiv           ; 2 uses
  %i.aix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aiw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aio)
  %i.aiy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aiw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aix) ; 8 uses
  %i.aiz = fmul fast <4 x float> %i.aiy, %i.aiy
  %i.aja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aiy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ajb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aja, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3C088908))
  %i.ajc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajb, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3D2AA9C1))
  %i.ajd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajc, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float f0x3E2AAAAA))
  %i.aje = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> nofpclass(nan inf) %i.aiy, <4 x float> splat (float 5.000000e-01))
  %i.ajf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> nofpclass(nan inf) %i.aiz, <4 x float> nofpclass(nan inf) %i.aiy)
  %i.ajg = fadd fast <4 x float> %i.ajf, splat (float 1.000000e+00)
  %i.ajh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiv)
  %i.aji = shl <4 x i32> %i.ajh, splat (i32 23)
  %i.ajj = add <4 x i32> %i.aji, splat (i32 1065353216)
  %i.ajk = bitcast <4 x i32> %i.ajj to <4 x float>
  %i.ajl = fmul fast <4 x float> %i.ajg, %i.ajk
  %i.ajm = fadd fast <4 x float> %i.ajl, splat (float 1.000000e+00) ; 2 uses
  %i.ajn = fcmp fast ole <4 x float> %i.ajm, zeroinitializer
  %i.ajo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajm, <4 x float> splat (float f0x00800000))
  %i.ajp = bitcast <4 x float> %i.ajo to <4 x i32> ; 2 uses
  %i.ajq = lshr <4 x i32> %i.ajp, splat (i32 23)
  %i.ajr = and <4 x i32> %i.ajp, splat (i32 -2139095041)
  %i.ajs = or disjoint <4 x i32> %i.ajr, splat (i32 1056964608)
  %i.ajt = bitcast <4 x i32> %i.ajs to <4 x float> ; 3 uses
  %i.aju = add nsw <4 x i32> %i.ajq, splat (i32 -127)
  %i.ajv = sitofp fast <4 x i32> %i.aju to <4 x float> ; 2 uses
  %i.ajw = fadd fast <4 x float> %i.ajv, splat (float 1.000000e+00)
  %i.ajx = fcmp fast olt <4 x float> %i.ajt, splat (float f0x3F3504F3) ; 2 uses
  %i.ajy = select <4 x i1> %i.ajx, <4 x float> %i.ajt, <4 x float> zeroinitializer
  %i.ajz = fadd fast <4 x float> %i.ajt, splat (float -1.000000e+00)
  %i.aka = select fast <4 x i1> %i.ajx, <4 x float> %i.ajv, <4 x float> %i.ajw ; 2 uses
  %i.akb = fadd fast <4 x float> %i.ajz, %i.ajy   ; 12 uses
  %i.akc = fmul fast <4 x float> %i.akb, %i.akb   ; 2 uses
  %i.akd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ake = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akd, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3DEF251A))
  %i.akf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ake, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBDFE5D4F))
  %i.akg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akf, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3E11E9BF))
  %i.akh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akg, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBE2AAE50))
  %i.aki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akh, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3E4CCEAC))
  %i.akj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aki, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0xBE7FFFFC))
  %i.akk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akj, <4 x float> nofpclass(nan inf) %i.akb, <4 x float> splat (float f0x3EAAAAAA))
  %i.akl = fmul fast <4 x float> %i.akc, %i.akb
  %i.akm = fmul fast <4 x float> %i.akl, %i.akk
  %i.akn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aka, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.akm)
  %i.ako = fneg fast <4 x float> %i.akc
  %i.akp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ako, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.akn)
  %i.akq = fadd fast <4 x float> %i.akp, %i.akb
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aka, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.akq)
  %.neg.i = fmul fast <4 x float> %i.akr, splat (float -2.000000e+00)
  %i.aks = select fast <4 x i1> %i.ajn, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x42B0C0A5))
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akv = fmul fast <4 x float> %i.aku, splat (float f0x3FB8AA3B)
  %i.akw = fadd fast <4 x float> %i.akv, splat (float 5.000000e-01) ; 2 uses
  %i.akx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akw)
  %i.aky = sitofp fast <4 x i32> %i.akx to <4 x float> ; 2 uses
  %i.akz = fcmp fast olt <4 x float> %i.akw, %i.aky
  %i.ala = select <4 x i1> %i.akz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.alb = fsub fast <4 x float> %i.aky, %i.ala   ; 2 uses
  %i.alc = fneg fast <4 x float> %i.alb           ; 2 uses
  %i.ald = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aku)
  %i.ale = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ald) ; 8 uses
  %i.alf = fmul fast <4 x float> %i.ale, %i.ale
  %i.alg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ale, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.alh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alg, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3C088908))
  %i.ali = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alh, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3D2AA9C1))
  %i.alj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ali, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0x3E2AAAAA))
  %i.alk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alj, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float 5.000000e-01))
  %i.all = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alk, <4 x float> nofpclass(nan inf) %i.alf, <4 x float> nofpclass(nan inf) %i.ale)
  %i.alm = fadd fast <4 x float> %i.all, splat (float 1.000000e+00)
  %i.aln = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.alb)
  %i.alo = shl <4 x i32> %i.aln, splat (i32 23)
  %i.alp = add <4 x i32> %i.alo, splat (i32 1065353216)
  %i.alq = bitcast <4 x i32> %i.alp to <4 x float>
  %i.alr = fmul fast <4 x float> %i.alm, %i.alq
  %i.als = fadd fast <4 x float> %i.alr, splat (float 1.000000e+00)
  %i.alt = fdiv fast <4 x float> splat (float 2.000000e+00), %i.als
  %i.alu = fadd fast <4 x float> %i.alt, splat (float -1.000000e+00)
  %i.alv = fmul fast <4 x float> %i.alu, %i.agr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ca:                                            ; preds = %._crit_edge2714.i
  %i.alw = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !39
  %i.aly = insertelement <4 x float> poison, float %i.alx, i64 0
  %i.alz = shufflevector <4 x float> %i.aly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !39
  %i.amc = insertelement <4 x float> poison, float %i.amb, i64 0
  %i.amd = shufflevector <4 x float> %i.amc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ame = fmul fast <4 x float> %i.alz, %i.agr
  %i.amf = fadd fast <4 x float> %i.ame, %i.amd
  %i.amg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amf, <4 x float> zeroinitializer)
  %i.amh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amg, <4 x float> splat (float 1.000000e+00))
  %i.ami = fmul fast <4 x float> %i.amh, %i.agr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %._crit_edge2714.i
  %.0.i.i = phi nsz <4 x float> [ %i.ami, %bb.ca ], [ %i.ags, %bb.bv ], [ %i.aha, %bb.bw ], [ %i.ahk, %bb.bx ], [ %i.aim, %bb.by ], [ %i.alv, %bb.bz ], [ %i.agr, %._crit_edge2714.i ] ; 5 uses
  switch i32 %i.ln, label %bb.cc [
    i32 4, label %.thread.i
    i32 1, label %bb.cb
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i.i, ptr %.17402729.i, align 1, !tbaa !310
  %i.amj = getelementptr inbounds nuw i8, ptr %.17402729.i, i64 16
  br label %bb.cc

bb.cb:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.01678.0.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 0
  store float %.sroa.01678.0.vec.extract.i, ptr %.17402729.i, align 4, !tbaa !39
  %.sroa.01678.4.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 1
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.17402729.i, i64 %i.nc
  store float %.sroa.01678.4.vec.extract.i, ptr %i.amk, align 4, !tbaa !39
  %.sroa.01678.8.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 2
  %i.aml = getelementptr inbounds nuw i8, ptr %.17402729.i, i64 %.idx.i
  store float %.sroa.01678.8.vec.extract.i, ptr %i.aml, align 4, !tbaa !39
  %.sroa.01678.12.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 3
  %i.amm = getelementptr inbounds nuw i8, ptr %.17402729.i, i64 %.idx921.i
  store float %.sroa.01678.12.vec.extract.i, ptr %i.amm, align 4, !tbaa !39
  %i.amn = getelementptr inbounds nuw i8, ptr %.17402729.i, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3742.i = phi ptr [ %i.amn, %bb.cb ], [ %.17402729.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.amj, %.thread.i ] ; 2 uses
  %i.amo = add nuw nsw i32 %.07482728.i, 1        ; 2 uses
  %exitcond3322.not.i = icmp eq i32 %i.amo, %i.ll
  br i1 %exitcond3322.not.i, label %._crit_edge.i, label %bb.ay, !llvm.loop !364

._crit_edge2961.split.i:                          ; preds = %._crit_edge2959.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2734.i
  %i.amp = shl nsw i32 %i.ka, 1                   ; 2 uses
  %i.amq = add nsw i32 %i.amp, %i.jy
  %i.amr = icmp slt i32 %i.amq, %i.iw
  br i1 %i.amr, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge2961.split.i
  %i.ams = load i32, ptr %i.ak, align 8, !tbaa !68
  %.fr3031.i = freeze i32 %i.ams                  ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.amu = load i32, ptr %i.amt, align 8, !tbaa !70
  %i.amv = mul i32 %i.amu, %.fr3031.i             ; 14 uses
  %i.amw = load i32, ptr %i.ag, align 4, !tbaa !56 ; 6 uses
  %i.amx = load i32, ptr %i.ah, align 8, !tbaa !279 ; 5 uses
  %i.amy = load i32, ptr %i.ci, align 4, !tbaa !56 ; 2 uses
  %i.amz = load i32, ptr %i.cj, align 16, !tbaa !279 ; 2 uses
  %i.ana = load ptr, ptr %4, align 16, !tbaa !18, !noalias !365
  %i.anb = load i64, ptr %i.cl, align 16, !tbaa !20, !noalias !365
  %i.anc = load i64, ptr %i.ce, align 16, !tbaa !57, !noalias !365
  %factor.op.mul3152.i = mul i64 %i.anc, %i.anb
  %i.and = icmp slt i32 %i.amz, 1
  %i.ane = icmp slt i32 %i.amy, 1
  %i.anf = icmp sgt i32 %i.amv, 7
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge3161.i = select i1 %i.and, i1 true, i1 %i.ane
  br i1 %brmerge3161.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.anj = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !368
  %i.ank = load i64, ptr %i.ani, align 8, !tbaa !20, !noalias !368
  %i.anl = load i64, ptr %i.anh, align 8, !tbaa !57, !noalias !368
  %factor.op.mul3155.i = mul i64 %i.anl, %i.ank
  %i.anm = add i32 %i.amv, -8                     ; 2 uses
  %i.ann = lshr i32 %i.anm, 1
  %i.ano = and i32 %i.ann, 2147483644
  %narrow3573.i = add nuw i32 %i.ano, 4
  %i.anp = zext i32 %narrow3573.i to i64
  %i.anq = and i32 %i.anm, -8
  %i.anr = add i32 %i.anq, 8
  %i.ans = sext i32 %i.amv to i64
  %i.ant = sext i32 %i.jy to i64
  %i.anu = sext i32 %i.amp to i64
  %i.anv = add nsw i64 %i.anu, %i.ant
  %i.anw = sext i32 %i.iw to i64
  %invariant.op3591.i = add nsw i64 %i.ans, -7
  %i.anx = sext i32 %i.amw to i64                 ; 5 uses
  %i.any = and i32 %i.amv, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge2959.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3411.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3412.i, %._crit_edge2959.i ] ; 2 uses
  %i.anz = shl nuw nsw i64 %indvars.iv3411.i, 1
  %i.aoa = add nsw i64 %i.anz, %i.ld              ; 4 uses
  %.reass.i = mul i64 %i.aoa, %factor.op.mul.i
  %i.aob = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass.i
  %i.aoc = add nsw i64 %i.aoa, 1
  %.reass2964.i = mul i64 %i.aoc, %factor.op.mul.i
  %i.aod = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass2964.i
  %i.aoe = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.aoe, null
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.aoe, i64 %i.aoa
  %i.aog = trunc nsw i64 %i.aoa to i32            ; 3 uses
  %i.aoh = sdiv i32 %i.aog, 8
  %i.aoi = srem i32 %i.aog, 8
  %.lhs.trunc2410.i = trunc nsw i32 %i.aoi to i8
  %i.aoj = sdiv i8 %.lhs.trunc2410.i, 4
  %.sext2411.i = sext i8 %i.aoj to i32
  %i.aok = add nsw i32 %i.aoh, %.sext2411.i
  %i.aol = srem i32 %i.aog, 4
  %.lhs.trunc2412.i = trunc nsw i32 %i.aol to i8
  %i.aom = sdiv i8 %.lhs.trunc2412.i, 2
  %.sext2413.i = sext i8 %i.aom to i32
  %i.aon = add nsw i32 %i.aok, %.sext2413.i
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = load i32, ptr %i.g, align 4
  %.reass2968.i = mul i64 %factor.op.mul2967.i, %i.aoo
  %i.aoq = getelementptr i8, ptr %i.kt, i64 %.reass2968.i ; 3 uses
  br label %.preheader2493.i

.preheader2493.i:                                 ; preds = %._crit_edge2953.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08042958.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2447.i, %._crit_edge2953.i ]
  %.08052957.i = phi ptr [ %i.aod, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bep, %._crit_edge2953.i ]
  %.08072956.i = phi ptr [ %i.aob, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.beo, %._crit_edge2953.i ]
  %i.aor = load i32, ptr %i.b, align 4            ; 2 uses
  %i.aos = icmp sgt i32 %i.aor, 0                 ; 4 uses
  %.neg2447.i = add nuw nsw i32 %.08042958.i, 1   ; 6 uses
  %i.aot = load i32, ptr %i.k, align 4            ; 4 uses
  %i.aou = shl i32 %i.aot, 4
  %i.aov = sext i32 %i.aou to i64                 ; 2 uses
  %i.aow = shl i32 %i.aot, 3
  %i.aox = sext i32 %i.aow to i64                 ; 3 uses
  %i.aoy = shl i32 %i.aot, 2
  %i.aoz = sext i32 %i.aoy to i64                 ; 3 uses
  %i.apa = shl nsw i32 %i.aot, 1
  %i.apb = sext i32 %i.apa to i64
  %i.apc = mul nsw i64 %i.aov, %i.kz
  %scevgep3330.i = getelementptr i8, ptr %i.aoq, i64 %i.apc
  %wide.trip.count3345.i = zext nneg i32 %i.aor to i64 ; 5 uses
  br label %bb.cd

._crit_edge2959.i:                                ; preds = %._crit_edge2953.i
  %indvars.iv.next3412.i = add nuw nsw i64 %indvars.iv3411.i, 1 ; 2 uses
  %exitcond3415.not.i = icmp eq i64 %indvars.iv.next3412.i, %wide.trip.count3414.i
  br i1 %exitcond3415.not.i, label %._crit_edge2961.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !371

._crit_edge2953.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3410.not.i = icmp eq i32 %.neg2447.i, %i.kj
  br i1 %exitcond3410.not.i, label %._crit_edge2959.i, label %.preheader2493.i, !llvm.loop !372

bb.cd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2493.i
  %.08032952.i = phi i32 [ 0, %.preheader2493.i ], [ %i.beq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18062951.i = phi ptr [ %.08052957.i, %.preheader2493.i ], [ %i.bep, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18082950.i = phi ptr [ %.08072956.i, %.preheader2493.i ], [ %i.beo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.apd = load <2 x float>, ptr %i.aof, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.ce, %bb.cd
  %i.ape = phi <2 x float> [ %i.apd, %bb.ce ], [ zeroinitializer, %bb.cd ]
  br i1 %i.kp, label %.preheader2491.lr.ph.i, label %._crit_edge2765.i

.preheader2491.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.apf = load i32, ptr %i.d, align 4
  %i.apg = load i32, ptr %i.j, align 4
  %invariant.op2754.i = sub i32 %.neg2447.i, %i.apg
  %i.aph = load i32, ptr %i.f, align 4            ; 2 uses
  %i.api = load i32, ptr %i.a, align 4
  %.fr3165.i = freeze i32 %i.api                  ; 2 uses
  %i.apj = load i32, ptr %i.c, align 4
  %i.apk = load i32, ptr %i.i, align 4
  %.neg2449.i = add nuw nsw i32 %.08032952.i, 1
  %invariant.op2745.i = sub i32 %.neg2449.i, %i.apk
  %i.apl = load i32, ptr %i.e, align 4            ; 2 uses
  %i.apm = icmp sgt i32 %.fr3165.i, 0
  %or.cond3619.i = and i1 %i.aos, %i.apm
  br i1 %or.cond3619.i, label %.preheader2491.us.us.preheader.i, label %._crit_edge2765.i

.preheader2491.us.us.preheader.i:                 ; preds = %.preheader2491.lr.ph.i
  %i.apn = zext nneg i32 %.fr3165.i to i64        ; 2 uses
  br label %.preheader2491.us.us.i

.preheader2491.us.us.i:                           ; preds = %._crit_edge2751.split.us.us.us.i, %.preheader2491.us.us.preheader.i
  %indvars.iv3347.i = phi i64 [ 0, %.preheader2491.us.us.preheader.i ], [ %indvars.iv.next3348.i, %._crit_edge2751.split.us.us.us.i ] ; 11 uses
  %.07672761.us.us.i = phi ptr [ %i.aoq, %.preheader2491.us.us.preheader.i ], [ %i.asl, %._crit_edge2751.split.us.us.us.i ] ; 2 uses
  %.023792760.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2491.us.us.preheader.i ], [ %.42383.us.us.us.i, %._crit_edge2751.split.us.us.us.i ]
  %.023842759.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2491.us.us.preheader.i ], [ %.42388.us.us.us.i, %._crit_edge2751.split.us.us.us.i ]
  %i.apo = lshr exact i64 %indvars.iv3347.i, 2    ; 2 uses
  %i.app = or disjoint i64 %i.apo, 1
  %i.apq = lshr exact i64 %indvars.iv3347.i, 3
  %i.apr = or disjoint i64 %indvars.iv3347.i, 1
  %i.aps = or disjoint i64 %indvars.iv3347.i, 2
  %i.apt = or disjoint i64 %indvars.iv3347.i, 3
  %i.apu = or disjoint i64 %indvars.iv3347.i, 4
  %i.apv = or disjoint i64 %indvars.iv3347.i, 5
  %i.apw = or disjoint i64 %indvars.iv3347.i, 6
  %i.apx = or disjoint i64 %indvars.iv3347.i, 7
  br label %bb.cf

bb.cf:                                            ; preds = %..loopexit2487_crit_edge.us.us.us.i, %.preheader2491.us.us.i
  %indvars.iv3342.i = phi i64 [ %indvars.iv.next3343.i, %..loopexit2487_crit_edge.us.us.us.i ], [ 0, %.preheader2491.us.us.i ] ; 3 uses
  %.123802748.us.us.us.i = phi <8 x float> [ %.42383.us.us.us.i, %..loopexit2487_crit_edge.us.us.us.i ], [ %.023792760.us.us.i, %.preheader2491.us.us.i ] ; 3 uses
  %.123852747.us.us.us.i = phi <8 x float> [ %.42388.us.us.us.i, %..loopexit2487_crit_edge.us.us.us.i ], [ %.023842759.us.us.i, %.preheader2491.us.us.i ] ; 3 uses
  %i.apy = trunc i64 %indvars.iv3342.i to i32
  %i.apz = mul i32 %i.apf, %i.apy
  %.reass2755.us.us.us.i = add i32 %i.apz, %invariant.op2754.i ; 3 uses
  %i.aqa = icmp slt i32 %.reass2755.us.us.us.i, 0
  br i1 %i.aqa, label %..loopexit2487_crit_edge.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aqb = srem i32 %.reass2755.us.us.us.i, %i.aph
  %i.aqc = sdiv i32 %.reass2755.us.us.us.i, %i.aph ; 2 uses
  %.not916.us.us.us.i = icmp eq i32 %i.aqb, 0
  %.not917.us.us.us.i = icmp slt i32 %i.aqc, %i.kh
  %or.cond423 = select i1 %.not916.us.us.us.i, i1 %.not917.us.us.us.i, i1 false
  br i1 %or.cond423, label %.preheader2486.us.us.us.i, label %..loopexit2487_crit_edge.us.us.us.i

bb.ch:                                            ; preds = %.preheader2486.us.us.us.i, %bb.ck
  %indvars.iv3337.i = phi i64 [ 0, %.preheader2486.us.us.us.i ], [ %indvars.iv.next3338.i, %bb.ck ] ; 3 uses
  %.223812741.us.us.us.i = phi <8 x float> [ %.123802748.us.us.us.i, %.preheader2486.us.us.us.i ], [ %.32382.us.us.us.i, %bb.ck ] ; 4 uses
  %.223862740.us.us.us.i = phi <8 x float> [ %.123852747.us.us.us.i, %.preheader2486.us.us.us.i ], [ %.32387.us.us.us.i, %bb.ck ] ; 4 uses
  %i.aqd = trunc i64 %indvars.iv3337.i to i32
  %i.aqe = mul i32 %i.apj, %i.aqd
  %.reass2746.us.us.us.i = add i32 %invariant.op2745.i, %i.aqe ; 3 uses
  %i.aqf = icmp slt i32 %.reass2746.us.us.us.i, 0
  br i1 %i.aqf, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aqg = srem i32 %.reass2746.us.us.us.i, %i.apl
  %i.aqh = sdiv i32 %.reass2746.us.us.us.i, %i.apl ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.aqg, 0
  %.not919.us.us.us.i = icmp slt i32 %i.aqh, %i.kg
  %or.cond424 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond424, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aqi = add nuw nsw i64 %indvars.iv3337.i, %i.asi
  %i.aqj = shl i64 %i.aqi, 4
  %i.aqk = and i64 %i.aqj, 4294967280
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.07672761.us.us.i, i64 %i.aqk ; 2 uses
  switch i32 %.fr2811.i, label %bb.ck [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.cj
  %i.aqm = load ptr, ptr %1, align 8, !tbaa !18, !noalias !373
  %i.aqn = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !373
  %i.aqo = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !373 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.aqo, %i.aqn ; 8 uses
  %i.aqp = mul i64 %i.ask, %i.aqo
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.aqm, i64 %i.aqp
  %i.aqq = sext i32 %i.aqh to i64
  %invariant.gep2737.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.aqq ; 8 uses
  %.reass.us.us2777.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3347.i
  %gep2738.us.us.us.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.i
  %i.aqr = load float, ptr %gep2738.us.us.us.i, align 4, !tbaa !39
  %.sroa.03506.0.vec.insert.i = insertelement <8 x float> poison, float %i.aqr, i64 0
  %.reass.us.us2777.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.apr
  %gep2738.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.1.i
  %i.aqs = load float, ptr %gep2738.us.us.us.1.i, align 4, !tbaa !39
  %.sroa.03506.4.vec.insert.i = insertelement <8 x float> %.sroa.03506.0.vec.insert.i, float %i.aqs, i64 1
  %.reass.us.us2777.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.aps
  %gep2738.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.2.i
  %i.aqt = load float, ptr %gep2738.us.us.us.2.i, align 4, !tbaa !39
  %.sroa.03506.8.vec.insert.i = insertelement <8 x float> %.sroa.03506.4.vec.insert.i, float %i.aqt, i64 2
  %.reass.us.us2777.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.apt
  %gep2738.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.3.i
  %i.aqu = load float, ptr %gep2738.us.us.us.3.i, align 4, !tbaa !39
  %.sroa.03506.12.vec.insert.i = insertelement <8 x float> %.sroa.03506.8.vec.insert.i, float %i.aqu, i64 3
  %.reass.us.us2777.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.apu
  %gep2738.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.4.i
  %i.aqv = load float, ptr %gep2738.us.us.us.4.i, align 4, !tbaa !39
  %.sroa.03506.16.vec.insert.i = insertelement <8 x float> %.sroa.03506.12.vec.insert.i, float %i.aqv, i64 4
  %.reass.us.us2777.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.apv
  %gep2738.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2737.us.us.us.i, i64 %.reass.us.us2777.us.5.i
  %i.aqw = load float, ptr %gep2738.us.us.us.5.i, align 4, !tbaa !39
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ct = atomicrmw add ptr %.pre167, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.bh, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cw)
          to label %.thread unwind label %bb.h, !inline_history !66

bb.t:                                             ; preds = %bb.r
  %.not.i18.i = icmp eq ptr %i.cw, null
  br i1 %.not.i18.i, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.cw) #10
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %bb.p, %bb.s, %bb.u, %bb.t
  %i.da = load <2 x ptr>, ptr %2, align 8, !tbaa !67
  store <2 x ptr> %i.da, ptr %4, align 16, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !57
  store i64 %i.dc, ptr %i.bf, align 16, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !68
  store i32 %i.de, ptr %i.bg, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17
  store ptr %i.dg, ptr %i.bh, align 16, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.di = load <4 x i32>, ptr %i.dh, align 8, !tbaa !69
  store <4 x i32> %i.di, ptr %i.bi, align 8, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !70
  store i32 %i.dk, ptr %i.bl, align 8, !tbaa !70
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20
  store i64 %i.dm, ptr %i.bm, align 16, !tbaa !20
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e, %bb.g, %.thread
  %.sink254 = phi i64 [ 8, %.thread ], [ 16, %bb.g ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %._crit_edge ]
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 %.sink254
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !307
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.ak, i32 noundef %i.ap, i32 noundef %i.bd, i64 noundef %i.bc, i32 noundef %.031, ptr noundef %i.do)
          to label %bb.v unwind label %bb.h

bb.v:                                             ; preds = %.thread.invoke
  %i.dp = load ptr, ptr %4, align 16, !tbaa !18
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42

_ZNK4ncnn3Mat5emptyEv.exit42:                     ; preds = %bb.v
  %i.dr = load i64, ptr %i.bm, align 16, !tbaa !20
  %i.ds = load i32, ptr %i.bl, align 8, !tbaa !70
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dr, %i.dt
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dy = load i32, ptr %i.r, align 4, !tbaa !49  ; 3 uses
  %i.dz = load i32, ptr %i.t, align 8, !tbaa !50  ; 3 uses
  %i.ea = load i32, ptr %i.q, align 4, !tbaa !295 ; 2 uses
  %i.eb = load i32, ptr %i.s, align 8, !tbaa !296 ; 2 uses
  %i.ec = load i32, ptr %i.u, align 4, !tbaa !297
  %i.ed = load i32, ptr %i.x, align 8, !tbaa !298
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.eh = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !69
  store i32 %i.dz, ptr %i.b, align 4, !tbaa !69
  store i32 %i.ea, ptr %i.c, align 4, !tbaa !69
  store i32 %i.eb, ptr %i.d, align 4, !tbaa !69
  store i32 %i.ec, ptr %i.e, align 4, !tbaa !69
  store i32 %i.ed, ptr %i.f, align 4, !tbaa !69
  store i32 %i.ef, ptr %i.g, align 4, !tbaa !69
  %i.ei = load i32, ptr %i.bg, align 8, !tbaa !68 ; 2 uses
  %i.ej = load i32, ptr %i.bl, align 8, !tbaa !70
  %i.ek = mul nsw i32 %i.ej, %i.ei                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.el = load i64, ptr %i.bm, align 16, !tbaa !20
  %i.em = sext i32 %i.ei to i64
  %i.en = mul i64 %i.el, %i.em
  store i64 %i.en, ptr %i.h, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.eo = add nsw i32 %i.dy, -1
  %i.ep = mul nsw i32 %i.ea, %i.eo
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.i, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.er = add nsw i32 %i.dz, -1
  %i.es = mul nsw i32 %i.eb, %i.er
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.j, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.eu = mul nsw i32 %i.dz, %i.dy
  store i32 %i.eu, ptr %i.k, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !18
  store ptr %i.ev, ptr %i.l, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !69
  %i.ew = sdiv i32 %i.ek, 8
  store i32 %i.ew, ptr %i.m, align 4, !tbaa !69
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !312
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.eh, i32 %i.ey)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.dw, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.eg, ptr nonnull %i.h)
  %i.ez = load i32, ptr %i.m, align 4, !tbaa !69
  %i.fa = shl nsw i32 %i.ez, 3
  %i.fb = load i32, ptr %i.n, align 4, !tbaa !69
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 3 uses
  %i.fd = sub nsw i32 %i.ek, %i.fc                ; 2 uses
  %i.fe = sdiv i32 %i.fd, 4                       ; 2 uses
  %i.ff = icmp sgt i32 %i.fd, 3
  br i1 %i.ff, label %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i, label %._crit_edge2804.i

_ZN4ncnn3MatD2Ev.exit978.lr.ph.i:                 ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.fm = load i32, ptr %i.bk, align 16, !tbaa !279
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %_ZN4ncnn3MatD2Ev.exit978.preheader.i, label %._crit_edge2804.i

_ZN4ncnn3MatD2Ev.exit978.preheader.i:             ; preds = %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i
  %i.fo = sext i32 %i.fc to i64
  %wide.trip.count3397.i = zext nneg i32 %i.fe to i64
  br label %_ZN4ncnn3MatD2Ev.exit978.i

._crit_edge2804.i:                                ; preds = %._crit_edge2802.split.i, %_ZN4ncnn3MatD2Ev.exit978.lr.ph.i, %bb.w
  %i.fp = shl nsw i32 %i.fe, 2
  %i.fq = add nsw i32 %i.fp, %i.fc                ; 5 uses
  store i32 %i.fq, ptr %i.n, align 4, !tbaa !69
  %i.fr = sub nsw i32 %i.ek, %i.fq                ; 2 uses
  %i.fs = sdiv i32 %i.fr, 2                       ; 3 uses
  store i32 %i.fs, ptr %i.m, align 4, !tbaa !69
  %i.ft = icmp sgt i32 %i.fr, 1
  br i1 %i.ft, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, label %._crit_edge3031.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.i:                 ; preds = %._crit_edge2804.i
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !68
  %.fr2881.i = freeze i32 %i.fv                   ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !70
  %i.fy = mul i32 %i.fx, %.fr2881.i               ; 14 uses
  %i.fz = load i32, ptr %i.o, align 4, !tbaa !56  ; 6 uses
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !279 ; 5 uses
  %i.gb = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.gc = load i32, ptr %i.bk, align 16, !tbaa !279 ; 2 uses
  %i.gd = load ptr, ptr %4, align 16, !tbaa !18, !noalias !516 ; 2 uses
  %i.ge = load i64, ptr %i.bm, align 16, !tbaa !20, !noalias !516
  %i.gf = load i64, ptr %i.bf, align 16, !tbaa !57, !noalias !516
  %factor.op.mul.i = mul i64 %i.gf, %i.ge         ; 2 uses
  %i.gg = icmp slt i32 %i.gc, 1
  %i.gh = icmp slt i32 %i.gb, 1
  %i.gi = icmp sgt i32 %i.fy, 7
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge.i = select i1 %i.gg, i1 true, i1 %i.gh
  br i1 %brmerge.i, label %._crit_edge3031.split.i, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gn = load ptr, ptr %i.dw, align 8, !tbaa !18, !noalias !519
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !20, !noalias !519
  %i.gp = load i64, ptr %i.gl, align 8, !tbaa !57, !noalias !519
  %factor.op.mul3037.i = mul i64 %i.gp, %i.go
  %i.gq = add i32 %i.fy, -8                       ; 2 uses
  %i.gr = lshr i32 %i.gq, 2
  %i.gs = and i32 %i.gr, 1073741822
  %narrow3644.i = add nuw nsw i32 %i.gs, 2
  %i.gt = zext nneg i32 %narrow3644.i to i64
  %i.gu = and i32 %i.gq, -8
  %i.gv = add i32 %i.gu, 8
  %i.gw = sext i32 %i.fy to i64
  %i.gx = sext i32 %i.fq to i64
  %wide.trip.count3484.i = zext nneg i32 %i.fs to i64
  %invariant.op3667.i = add nsw i64 %i.gw, -7
  %i.gy = sext i32 %i.fz to i64                   ; 5 uses
  %i.gz = and i32 %i.fy, -8
  br label %_ZN4ncnn3MatD2Ev.exit957.i

_ZN4ncnn3MatD2Ev.exit978.i:                       ; preds = %._crit_edge2802.split.i, %_ZN4ncnn3MatD2Ev.exit978.preheader.i
  %indvars.iv3394.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit978.preheader.i ], [ %indvars.iv.next3395.i, %._crit_edge2802.split.i ] ; 2 uses
  %i.ha = load i32, ptr %i.fg, align 8, !tbaa !68
  %.fr2664.i = freeze i32 %i.ha                   ; 3 uses
  %i.hb = load i32, ptr %i.fh, align 8, !tbaa !70
  %i.hc = mul i32 %i.hb, %.fr2664.i               ; 13 uses
  %i.hd = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.he = load i32, ptr %i.p, align 8, !tbaa !279 ; 5 uses
  %i.hf = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.hg = load i32, ptr %i.bk, align 16, !tbaa !279 ; 2 uses
  %i.hh = load i32, ptr %i.bg, align 8, !tbaa !68 ; 2 uses
  %i.hi = icmp sgt i32 %i.hg, 0
  br i1 %i.hi, label %.preheader2579.lr.ph.i, label %._crit_edge2802.split.i

.preheader2579.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit978.i
  %i.hj = shl nuw nsw i64 %indvars.iv3394.i, 2
  %i.hk = add nsw i64 %i.hj, %i.fo                ; 2 uses
  %i.hl = trunc nsw i64 %i.hk to i32              ; 3 uses
  %i.hm = icmp sgt i32 %i.hf, 0
  %i.hn = sdiv i32 %i.hl, 8
  %i.ho = srem i32 %i.hl, 8
  %.lhs.trunc.i = trunc nsw i32 %i.ho to i8
  %i.hp = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.hp to i32
  %i.hq = add nsw i32 %i.hn, %.sext.i
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp sgt i32 %i.hc, 7
  %i.ht = load i32, ptr %i.g, align 4
  br i1 %i.hm, label %.preheader2579.preheader.i, label %._crit_edge2802.split.i

.preheader2579.preheader.i:                       ; preds = %.preheader2579.lr.ph.i
  %i.hu = load ptr, ptr %4, align 16, !tbaa !18, !noalias !522
  %i.hv = load i64, ptr %i.bm, align 16, !tbaa !20, !noalias !522
  %i.hw = sdiv i32 %i.hl, %i.hh
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul i64 %i.hv, %i.hx
  %i.hz = load i64, ptr %i.bf, align 16, !tbaa !57, !noalias !522
  %i.ia = mul i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ia
  %i.ic = add i32 %i.hc, -8                       ; 2 uses
  %i.id = lshr i32 %i.ic, 2
  %i.ie = and i32 %i.id, 1073741822
  %narrow.i = add nuw nsw i32 %i.ie, 2
  %i.if = zext nneg i32 %narrow.i to i64
  %i.ig = and i32 %i.ic, -8
  %i.ih = add i32 %i.ig, 8                        ; 2 uses
  %i.ii = sext i32 %i.hc to i64
  %invariant.op3666.i = add nsw i64 %i.ii, -7
  br label %.preheader2579.i

.preheader2579.i:                                 ; preds = %._crit_edge.i, %.preheader2579.preheader.i
  %.07392801.i = phi ptr [ %.3742.i, %._crit_edge.i ], [ %i.ib, %.preheader2579.preheader.i ]
  %.07462800.i = phi i32 [ %.neg2533.i, %._crit_edge.i ], [ 0, %.preheader2579.preheader.i ]
  %i.ij = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0                   ; 4 uses
  %.neg2533.i = add nuw nsw i32 %.07462800.i, 1   ; 6 uses
  %i.il = load i32, ptr %i.k, align 4             ; 4 uses
  %i.im = shl i32 %i.il, 5
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = shl i32 %i.il, 4
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = shl i32 %i.il, 3
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = shl nsw i32 %i.il, 2
  %i.it = sext i32 %i.is to i64
  %i.iu = mul nsw i64 %i.in, %i.if
  %wide.trip.count3336.i = zext nneg i32 %i.ij to i64 ; 5 uses
  %.pre169 = load ptr, ptr %i.l, align 8, !tbaa !314
  br label %bb.x

._crit_edge2802.split.i:                          ; preds = %._crit_edge.i, %.preheader2579.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit978.i
  %indvars.iv.next3395.i = add nuw nsw i64 %indvars.iv3394.i, 1 ; 2 uses
  %exitcond3398.not.i = icmp eq i64 %indvars.iv.next3395.i, %wide.trip.count3397.i
  br i1 %exitcond3398.not.i, label %._crit_edge2804.i, label %_ZN4ncnn3MatD2Ev.exit978.i, !llvm.loop !525

._crit_edge.i:                                    ; preds = %bb.bb
  %exitcond3393.not.i = icmp eq i32 %.neg2533.i, %i.hg
  br i1 %exitcond3393.not.i, label %._crit_edge2802.split.i, label %.preheader2579.i, !llvm.loop !526

bb.x:                                             ; preds = %bb.bb, %.preheader2579.i
  %i.iv = phi ptr [ %.pre169, %.preheader2579.i ], [ %i.aot, %bb.bb ] ; 4 uses
  %.17402799.i = phi ptr [ %.07392801.i, %.preheader2579.i ], [ %.3742.i, %bb.bb ] ; 8 uses
  %.07482798.i = phi i32 [ 0, %.preheader2579.i ], [ %i.aou, %bb.bb ] ; 5 uses
  %.not920.i = icmp eq ptr %i.iv, null
  br i1 %.not920.i, label %_ZN4ncnn3MatD2Ev.exit977.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.hk
  %i.ix = load <4 x float>, ptr %i.iw, align 1, !tbaa !310
  br label %_ZN4ncnn3MatD2Ev.exit977.i

_ZN4ncnn3MatD2Ev.exit977.i:                       ; preds = %bb.y, %bb.x
  %.02382.i = phi nsz <4 x float> [ zeroinitializer, %bb.x ], [ %i.ix, %bb.y ] ; 3 uses
  %i.iy = load ptr, ptr %i.dw, align 8, !tbaa !18, !noalias !527 ; 2 uses
  %i.iz = load i64, ptr %i.fi, align 8, !tbaa !20, !noalias !527
  %i.ja = mul i64 %i.iz, %i.hr
  %i.jb = load i64, ptr %i.fj, align 8, !tbaa !57, !noalias !527
  %i.jc = mul i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jc ; 2 uses
  br i1 %i.hs, label %.preheader2575.lr.ph.i, label %.preheader2578.i

.preheader2575.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit977.i
  %i.je = load i32, ptr %i.j, align 4
  %invariant.op2599.i = sub i32 %.neg2533.i, %i.je
  %i.jf = load i32, ptr %i.f, align 4             ; 2 uses
  %i.jg = load i32, ptr %i.a, align 4
  %.fr3232.i = freeze i32 %i.jg                   ; 2 uses
  %i.jh = icmp sgt i32 %.fr3232.i, 0
  %i.ji = load i32, ptr %i.i, align 4
  %.neg2535.i = add nuw nsw i32 %.07482798.i, 1
  %invariant.op.i = sub i32 %.neg2535.i, %i.ji
  %i.jj = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ik, label %.preheader2575.us.preheader.i, label %.preheader2575.preheader.i

.preheader2575.preheader.i:                       ; preds = %.preheader2575.lr.ph.i
  %scevgep.i = getelementptr i8, ptr %i.iy, i64 %i.iu
  %scevgep3331.i = getelementptr i8, ptr %scevgep.i, i64 %i.jc
  br label %.preheader2578.i

.preheader2575.us.preheader.i:                    ; preds = %.preheader2575.lr.ph.i
  %i.jk = load i32, ptr %i.c, align 4
  %i.jl = load i32, ptr %i.d, align 4
  %i.jm = zext i32 %.fr3232.i to i64              ; 2 uses
  br label %.preheader2575.us.i

.preheader2575.us.i:                              ; preds = %._crit_edge.us.i, %.preheader2575.us.preheader.i
  %indvars.iv3338.i = phi i64 [ 0, %.preheader2575.us.preheader.i ], [ %indvars.iv.next3339.i, %._crit_edge.us.i ] ; 11 uses
  %.07512609.us.i = phi ptr [ %i.jd, %.preheader2575.us.preheader.i ], [ %i.jx, %._crit_edge.us.i ] ; 2 uses
  %.123832607.us.i = phi <4 x float> [ %.02382.i, %.preheader2575.us.preheader.i ], [ %.us-phi2603.us.i, %._crit_edge.us.i ] ; 2 uses
  %.023992606.us.i = phi <4 x float> [ zeroinitializer, %.preheader2575.us.preheader.i ], [ %.us-phi2602.us.i, %._crit_edge.us.i ] ; 2 uses
  %.024142605.us.i = phi <4 x float> [ zeroinitializer, %.preheader2575.us.preheader.i ], [ %.us-phi2601.us.i, %._crit_edge.us.i ] ; 2 uses
  %.024242604.us.i = phi <4 x float> [ zeroinitializer, %.preheader2575.us.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 2 uses
  %i.jn = or disjoint i64 %indvars.iv3338.i, 7
  %i.jo = or disjoint i64 %indvars.iv3338.i, 1
  %i.jp = or disjoint i64 %indvars.iv3338.i, 2
  %i.jq = or disjoint i64 %indvars.iv3338.i, 3
  %i.jr = or disjoint i64 %indvars.iv3338.i, 4
  %i.js = or disjoint i64 %indvars.iv3338.i, 5
  %i.jt = or disjoint i64 %indvars.iv3338.i, 6
  %i.ju = lshr exact i64 %indvars.iv3338.i, 2     ; 2 uses
  %i.jv = or disjoint i64 %i.ju, 1
  %i.jw = lshr exact i64 %indvars.iv3338.i, 3
  br i1 %i.jh, label %.lr.ph2594.split.us.us.i, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %..loopexit2571_crit_edge.us.us.i, %.preheader2575.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242604.us.i, %.preheader2575.us.i ], [ %.42428.us.us.i, %..loopexit2571_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2601.us.i = phi <4 x float> [ %.024142605.us.i, %.preheader2575.us.i ], [ %.42418.us.us.i, %..loopexit2571_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2602.us.i = phi <4 x float> [ %.023992606.us.i, %.preheader2575.us.i ], [ %.42403.us.us.i, %..loopexit2571_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2603.us.i = phi <4 x float> [ %.123832607.us.i, %.preheader2575.us.i ], [ %.5.us.us.i, %..loopexit2571_crit_edge.us.us.i ] ; 2 uses
  %i.jx = getelementptr inbounds [2 x i8], ptr %.07512609.us.i, i64 %i.in ; 2 uses
  %indvars.iv.next3339.i = add nuw nsw i64 %indvars.iv3338.i, 8 ; 2 uses
  %i.jy = icmp slt i64 %indvars.iv.next3339.i, %invariant.op3666.i
  br i1 %i.jy, label %.preheader2575.us.i, label %.preheader2578.i, !llvm.loop !530

.lr.ph2594.split.us.us.i:                         ; preds = %.preheader2575.us.i, %..loopexit2571_crit_edge.us.us.i
  %indvars.iv3333.i = phi i64 [ %indvars.iv.next3334.i, %..loopexit2571_crit_edge.us.us.i ], [ 0, %.preheader2575.us.i ] ; 3 uses
  %.223842592.us.us.i = phi <4 x float> [ %.5.us.us.i, %..loopexit2571_crit_edge.us.us.i ], [ %.123832607.us.i, %.preheader2575.us.i ] ; 3 uses
  %.124002591.us.us.i = phi <4 x float> [ %.42403.us.us.i, %..loopexit2571_crit_edge.us.us.i ], [ %.023992606.us.i, %.preheader2575.us.i ] ; 3 uses
  %.124152590.us.us.i = phi <4 x float> [ %.42418.us.us.i, %..loopexit2571_crit_edge.us.us.i ], [ %.024142605.us.i, %.preheader2575.us.i ] ; 3 uses
  %.124252589.us.us.i = phi <4 x float> [ %.42428.us.us.i, %..loopexit2571_crit_edge.us.us.i ], [ %.024242604.us.i, %.preheader2575.us.i ] ; 3 uses
  %i.jz = trunc i64 %indvars.iv3333.i to i32
  %i.ka = mul i32 %i.jl, %i.jz
  %.reass2600.us.us.i = add i32 %i.ka, %invariant.op2599.i ; 3 uses
  %i.kb = icmp slt i32 %.reass2600.us.us.i, 0
  br i1 %i.kb, label %..loopexit2571_crit_edge.us.us.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph2594.split.us.us.i
  %i.kc = srem i32 %.reass2600.us.us.i, %i.jf
  %i.kd = sdiv i32 %.reass2600.us.us.i, %i.jf     ; 2 uses
  %.not934.us.us.i = icmp eq i32 %i.kc, 0
  %.not935.us.us.i = icmp slt i32 %i.kd, %i.he
  %or.cond = select i1 %.not934.us.us.i, i1 %.not935.us.us.i, i1 false
  br i1 %or.cond, label %.preheader2570.us.us.i, label %..loopexit2571_crit_edge.us.us.i

bb.aa:                                            ; preds = %.preheader2570.us.us.i, %bb.ad
  %indvars.iv.i = phi i64 [ 0, %.preheader2570.us.us.i ], [ %indvars.iv.next.i, %bb.ad ] ; 3 uses
  %.323852584.us.us.i = phi <4 x float> [ %.223842592.us.us.i, %.preheader2570.us.us.i ], [ %.42386.us.us.i, %bb.ad ] ; 4 uses
  %.224012583.us.us.i = phi <4 x float> [ %.124002591.us.us.i, %.preheader2570.us.us.i ], [ %.32402.us.us.i, %bb.ad ] ; 4 uses
  %.224162582.us.us.i = phi <4 x float> [ %.124152590.us.us.i, %.preheader2570.us.us.i ], [ %.32417.us.us.i, %bb.ad ] ; 4 uses
  %.224262581.us.us.i = phi <4 x float> [ %.124252589.us.us.i, %.preheader2570.us.us.i ], [ %.32427.us.us.i, %bb.ad ] ; 4 uses
  %i.ke = trunc i64 %indvars.iv.i to i32
  %i.kf = mul i32 %i.jk, %i.ke
  %.reass.us.us.i = add i32 %invariant.op.i, %i.kf ; 3 uses
  %i.kg = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.kg, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kh = srem i32 %.reass.us.us.i, %i.jj
  %i.ki = sdiv i32 %.reass.us.us.i, %i.jj         ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.kh, 0
  %.not937.us.us.i = icmp slt i32 %i.ki, %i.hd
  %or.cond314 = select i1 %.not936.us.us.i, i1 %.not937.us.us.i, i1 false
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.akc = add <4 x i32> %i.akb, splat (i32 1065353216)
  %i.akd = bitcast <4 x i32> %i.akc to <4 x float>
  %i.ake = fmul fast <4 x float> %i.ajz, %i.akd
  %i.akf = fadd fast <4 x float> %i.ake, splat (float 1.000000e+00)
  %i.akg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.akf
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ay:                                            ; preds = %._crit_edge2784.i
  %i.akh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ail, <4 x float> splat (float f0x42B0C0A5))
  %i.aki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akj = fmul fast <4 x float> %i.aki, splat (float f0x3FB8AA3B)
  %i.akk = fadd fast <4 x float> %i.akj, splat (float 5.000000e-01) ; 2 uses
  %i.akl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akk)
  %i.akm = sitofp fast <4 x i32> %i.akl to <4 x float> ; 2 uses
  %i.akn = fcmp fast olt <4 x float> %i.akk, %i.akm
  %i.ako = select <4 x i1> %i.akn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akp = fsub fast <4 x float> %i.akm, %i.ako   ; 2 uses
  %i.akq = fneg fast <4 x float> %i.akp           ; 2 uses
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.akq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aki)
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.akq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.akr) ; 8 uses
  %i.akt = fmul fast <4 x float> %i.aks, %i.aks
  %i.aku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.akv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aku, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3C088908))
  %i.akw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akv, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3D2AA9C1))
  %i.akx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akw, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0x3E2AAAAA))
  %i.aky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.akx, <4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float 5.000000e-01))
  %i.akz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aky, <4 x float> nofpclass(nan inf) %i.akt, <4 x float> nofpclass(nan inf) %i.aks)
  %i.ala = fadd fast <4 x float> %i.akz, splat (float 1.000000e+00)
  %i.alb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akp)
  %i.alc = shl <4 x i32> %i.alb, splat (i32 23)
  %i.ald = add <4 x i32> %i.alc, splat (i32 1065353216)
  %i.ale = bitcast <4 x i32> %i.ald to <4 x float>
  %i.alf = fmul fast <4 x float> %i.ala, %i.ale
  %i.alg = fadd fast <4 x float> %i.alf, splat (float 1.000000e+00) ; 2 uses
  %i.alh = fcmp fast ole <4 x float> %i.alg, zeroinitializer
  %i.ali = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alg, <4 x float> splat (float f0x00800000))
  %i.alj = bitcast <4 x float> %i.ali to <4 x i32> ; 2 uses
  %i.alk = lshr <4 x i32> %i.alj, splat (i32 23)
  %i.all = and <4 x i32> %i.alj, splat (i32 -2139095041)
  %i.alm = or disjoint <4 x i32> %i.all, splat (i32 1056964608)
  %i.aln = bitcast <4 x i32> %i.alm to <4 x float> ; 3 uses
  %i.alo = add nsw <4 x i32> %i.alk, splat (i32 -127)
  %i.alp = sitofp fast <4 x i32> %i.alo to <4 x float> ; 2 uses
  %i.alq = fadd fast <4 x float> %i.alp, splat (float 1.000000e+00)
  %i.alr = fcmp fast olt <4 x float> %i.aln, splat (float f0x3F3504F3) ; 2 uses
  %i.als = select <4 x i1> %i.alr, <4 x float> %i.aln, <4 x float> zeroinitializer
  %i.alt = fadd fast <4 x float> %i.aln, splat (float -1.000000e+00)
  %i.alu = select fast <4 x i1> %i.alr, <4 x float> %i.alp, <4 x float> %i.alq ; 2 uses
  %i.alv = fadd fast <4 x float> %i.alt, %i.als   ; 12 uses
  %i.alw = fmul fast <4 x float> %i.alv, %i.alv   ; 2 uses
  %i.alx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.aly = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alx, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3DEF251A))
  %i.alz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aly, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBDFE5D4F))
  %i.ama = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alz, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3E11E9BF))
  %i.amb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ama, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBE2AAE50))
  %i.amc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amb, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3E4CCEAC))
  %i.amd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amc, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0xBE7FFFFC))
  %i.ame = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amd, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x3EAAAAAA))
  %i.amf = fmul fast <4 x float> %i.alw, %i.alv
  %i.amg = fmul fast <4 x float> %i.amf, %i.ame
  %i.amh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.amg)
  %i.ami = fneg fast <4 x float> %i.alw
  %i.amj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ami, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.amh)
  %i.amk = fadd fast <4 x float> %i.amj, %i.alv
  %i.aml = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amk)
  %.neg.i = fmul fast <4 x float> %i.aml, splat (float -2.000000e+00)
  %i.amm = select fast <4 x i1> %i.alh, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.amn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amm, <4 x float> splat (float f0x42B0C0A5))
  %i.amo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amp = fmul fast <4 x float> %i.amo, splat (float f0x3FB8AA3B)
  %i.amq = fadd fast <4 x float> %i.amp, splat (float 5.000000e-01) ; 2 uses
  %i.amr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amq)
  %i.ams = sitofp fast <4 x i32> %i.amr to <4 x float> ; 2 uses
  %i.amt = fcmp fast olt <4 x float> %i.amq, %i.ams
  %i.amu = select <4 x i1> %i.amt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.amv = fsub fast <4 x float> %i.ams, %i.amu   ; 2 uses
  %i.amw = fneg fast <4 x float> %i.amv           ; 2 uses
  %i.amx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amo)
  %i.amy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.amx) ; 8 uses
  %i.amz = fmul fast <4 x float> %i.amy, %i.amy
  %i.ana = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.anb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ana, <4 x float> nofpclass(nan inf) %i.amy, <4 x float> splat (float f0x3C088908))
  %i.anc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anb, <4 x float> nofpclass(nan inf) %i.amy, <4 x float> splat (float f0x3D2AA9C1))
  %i.and = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anc, <4 x float> nofpclass(nan inf) %i.amy, <4 x float> splat (float f0x3E2AAAAA))
  %i.ane = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.and, <4 x float> nofpclass(nan inf) %i.amy, <4 x float> splat (float 5.000000e-01))
  %i.anf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ane, <4 x float> nofpclass(nan inf) %i.amz, <4 x float> nofpclass(nan inf) %i.amy)
  %i.ang = fadd fast <4 x float> %i.anf, splat (float 1.000000e+00)
  %i.anh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amv)
  %i.ani = shl <4 x i32> %i.anh, splat (i32 23)
  %i.anj = add <4 x i32> %i.ani, splat (i32 1065353216)
  %i.ank = bitcast <4 x i32> %i.anj to <4 x float>
  %i.anl = fmul fast <4 x float> %i.ang, %i.ank
  %i.anm = fadd fast <4 x float> %i.anl, splat (float 1.000000e+00)
  %i.ann = fdiv fast <4 x float> splat (float 2.000000e+00), %i.anm
  %i.ano = fadd fast <4 x float> %i.ann, splat (float -1.000000e+00)
  %i.anp = fmul fast <4 x float> %i.ano, %i.ail
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.az:                                            ; preds = %._crit_edge2784.i
  %i.anq = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.anr = load float, ptr %i.anq, align 4, !tbaa !39
  %i.ans = insertelement <4 x float> poison, float %i.anr, i64 0
  %i.ant = shufflevector <4 x float> %i.ans, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anq, i64 4
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !39
  %i.anw = insertelement <4 x float> poison, float %i.anv, i64 0
  %i.anx = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.any = fmul fast <4 x float> %i.ant, %i.ail
  %i.anz = fadd fast <4 x float> %i.any, %i.anx
  %i.aoa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.anz, <4 x float> zeroinitializer)
  %i.aob = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aoa, <4 x float> splat (float 1.000000e+00))
  %i.aoc = fmul fast <4 x float> %i.aob, %i.ail
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %._crit_edge2784.i
  %.0.i.i = phi nsz <4 x float> [ %i.aoc, %bb.az ], [ %i.aim, %bb.au ], [ %i.aiu, %bb.av ], [ %i.aje, %bb.aw ], [ %i.akg, %bb.ax ], [ %i.anp, %bb.ay ], [ %i.ail, %._crit_edge2784.i ] ; 2 uses
  switch i32 %i.hh, label %bb.bb [
    i32 4, label %.thread.i
    i32 1, label %bb.ba
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.aod = bitcast <4 x float> %.0.i.i to <4 x i32>
  %i.aoe = lshr <4 x i32> %i.aod, splat (i32 16)
  %i.aof = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aoe, <4 x i32> poison)
  %i.aog = bitcast <8 x i16> %i.aof to <2 x i64>
  %i.aoh = extractelement <2 x i64> %i.aog, i64 0
  store i64 %i.aoh, ptr %.17402799.i, align 1, !tbaa !310
  %i.aoi = getelementptr inbounds nuw i8, ptr %.17402799.i, i64 8
  %.pre168 = load ptr, ptr %i.l, align 8, !tbaa !314
  br label %bb.bb

bb.ba:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.aoj = bitcast <4 x float> %.0.i.i to <8 x i16> ; 4 uses
  %i.aok = extractelement <8 x i16> %i.aoj, i64 1
  store i16 %i.aok, ptr %.17402799.i, align 2, !tbaa !461
  %i.aol = extractelement <8 x i16> %i.aoj, i64 3
  %i.aom = load i64, ptr %i.h, align 8, !tbaa !313 ; 3 uses
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %.17402799.i, i64 %i.aom
  store i16 %i.aol, ptr %i.aon, align 2, !tbaa !461
  %i.aoo = extractelement <8 x i16> %i.aoj, i64 5
  %.idx.i = shl i64 %i.aom, 2
  %i.aop = getelementptr inbounds nuw i8, ptr %.17402799.i, i64 %.idx.i
  store i16 %i.aoo, ptr %i.aop, align 2, !tbaa !461
  %i.aoq = extractelement <8 x i16> %i.aoj, i64 7
  %.idx921.i = mul i64 %i.aom, 6
  %i.aor = getelementptr inbounds nuw i8, ptr %.17402799.i, i64 %.idx921.i
  store i16 %i.aoq, ptr %i.aor, align 2, !tbaa !461
  %i.aos = getelementptr inbounds nuw i8, ptr %.17402799.i, i64 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.aot = phi ptr [ %i.iv, %bb.ba ], [ %i.iv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %.pre168, %.thread.i ]
  %.3742.i = phi ptr [ %i.aos, %bb.ba ], [ %.17402799.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.aoi, %.thread.i ] ; 2 uses
  %i.aou = add nuw nsw i32 %.07482798.i, 1        ; 2 uses
  %exitcond3392.not.i = icmp eq i32 %i.aou, %i.hf
  br i1 %exitcond3392.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !563

._crit_edge3031.split.i:                          ; preds = %._crit_edge3029.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2804.i
  %i.aov = shl nsw i32 %i.fs, 1                   ; 2 uses
  %i.aow = add nsw i32 %i.aov, %i.fq
  %i.aox = icmp slt i32 %i.aow, %i.ek
  br i1 %i.aox, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge3031.split.i
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !68
  %.fr3101.i = freeze i32 %i.aoz                  ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !70
  %i.apc = mul i32 %i.apb, %.fr3101.i             ; 14 uses
  %i.apd = load i32, ptr %i.o, align 4, !tbaa !56 ; 6 uses
  %i.ape = load i32, ptr %i.p, align 8, !tbaa !279 ; 5 uses
  %i.apf = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.apg = load i32, ptr %i.bk, align 16, !tbaa !279 ; 2 uses
  %i.aph = load ptr, ptr %4, align 16, !tbaa !18, !noalias !564
  %i.api = load i64, ptr %i.bm, align 16, !tbaa !20, !noalias !564
  %i.apj = load i64, ptr %i.bf, align 16, !tbaa !57, !noalias !564
  %factor.op.mul3222.i = mul i64 %i.apj, %i.api
  %i.apk = icmp slt i32 %i.apg, 1
  %i.apl = icmp slt i32 %i.apf, 1
  %i.apm = icmp sgt i32 %i.apc, 7
  %i.apn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge3231.i = select i1 %i.apk, i1 true, i1 %i.apl
  br i1 %brmerge3231.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.apq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.apr = load ptr, ptr %i.dw, align 8, !tbaa !18, !noalias !567
  %i.aps = load i64, ptr %i.apq, align 8, !tbaa !20, !noalias !567
  %i.apt = load i64, ptr %i.app, align 8, !tbaa !57, !noalias !567
  %factor.op.mul3225.i = mul i64 %i.apt, %i.aps
  %i.apu = add i32 %i.apc, -8                     ; 2 uses
  %i.apv = lshr i32 %i.apu, 2
  %i.apw = and i32 %i.apv, 1073741822
  %narrow3648.i = add nuw nsw i32 %i.apw, 2
  %i.apx = zext nneg i32 %narrow3648.i to i64
  %i.apy = and i32 %i.apu, -8
  %i.apz = add i32 %i.apy, 8
  %i.aqa = sext i32 %i.apc to i64
  %i.aqb = sext i32 %i.fq to i64
  %i.aqc = sext i32 %i.aov to i64
  %i.aqd = add nsw i64 %i.aqc, %i.aqb
  %i.aqe = sext i32 %i.ek to i64
  %invariant.op3668.i = add nsw i64 %i.aqa, -7
  %i.aqf = sext i32 %i.apd to i64                 ; 5 uses
  %i.aqg = and i32 %i.apc, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge3029.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3481.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3482.i, %._crit_edge3029.i ] ; 2 uses
  %i.aqh = shl nuw nsw i64 %indvars.iv3481.i, 1
  %i.aqi = add nsw i64 %i.aqh, %i.gx              ; 4 uses
  %.reass.i = mul i64 %i.aqi, %factor.op.mul.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass.i
  %i.aqk = add nsw i64 %i.aqi, 1
  %.reass3034.i = mul i64 %i.aqk, %factor.op.mul.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass3034.i
  %i.aqm = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.aqm, null
  %i.aqn = getelementptr inbounds [4 x i8], ptr %i.aqm, i64 %i.aqi
  %i.aqo = trunc nsw i64 %i.aqi to i32            ; 3 uses
  %i.aqp = sdiv i32 %i.aqo, 8
  %i.aqq = srem i32 %i.aqo, 8
  %.lhs.trunc2480.i = trunc nsw i32 %i.aqq to i8
  %i.aqr = sdiv i8 %.lhs.trunc2480.i, 4
  %.sext2481.i = sext i8 %i.aqr to i32
  %i.aqs = add nsw i32 %i.aqp, %.sext2481.i
  %i.aqt = srem i32 %i.aqo, 4
  %.lhs.trunc2482.i = trunc nsw i32 %i.aqt to i8
  %i.aqu = sdiv i8 %.lhs.trunc2482.i, 2
  %.sext2483.i = sext i8 %i.aqu to i32
  %i.aqv = add nsw i32 %i.aqs, %.sext2483.i
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = load i32, ptr %i.g, align 4
  %.reass3038.i = mul i64 %factor.op.mul3037.i, %i.aqw
  %i.aqy = getelementptr i8, ptr %i.gn, i64 %.reass3038.i ; 3 uses
  br label %.preheader2563.i

.preheader2563.i:                                 ; preds = %._crit_edge3023.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08043028.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2517.i, %._crit_edge3023.i ]
  %.08053027.i = phi ptr [ %i.aql, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bka, %._crit_edge3023.i ]
  %.08073026.i = phi ptr [ %i.aqj, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bjz, %._crit_edge3023.i ]
  %i.aqz = load i32, ptr %i.b, align 4            ; 2 uses
  %i.ara = icmp sgt i32 %i.aqz, 0                 ; 4 uses
  %.neg2517.i = add nuw nsw i32 %.08043028.i, 1   ; 6 uses
  %i.arb = load i32, ptr %i.k, align 4            ; 4 uses
  %i.arc = shl i32 %i.arb, 4
  %i.ard = sext i32 %i.arc to i64                 ; 2 uses
  %i.are = shl i32 %i.arb, 3
  %i.arf = sext i32 %i.are to i64                 ; 3 uses
  %i.arg = shl i32 %i.arb, 2
  %i.arh = sext i32 %i.arg to i64                 ; 3 uses
  %i.ari = shl nsw i32 %i.arb, 1
  %i.arj = sext i32 %i.ari to i64
  %i.ark = mul nsw i64 %i.ard, %i.gt
  %scevgep3400.i = getelementptr i8, ptr %i.aqy, i64 %i.ark
  %wide.trip.count3415.i = zext nneg i32 %i.aqz to i64 ; 5 uses
  br label %bb.bc

._crit_edge3029.i:                                ; preds = %._crit_edge3023.i
  %indvars.iv.next3482.i = add nuw nsw i64 %indvars.iv3481.i, 1 ; 2 uses
  %exitcond3485.not.i = icmp eq i64 %indvars.iv.next3482.i, %wide.trip.count3484.i
  br i1 %exitcond3485.not.i, label %._crit_edge3031.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !570

._crit_edge3023.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3480.not.i = icmp eq i32 %.neg2517.i, %i.gc
  br i1 %exitcond3480.not.i, label %._crit_edge3029.i, label %.preheader2563.i, !llvm.loop !571

bb.bc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2563.i
  %.08033022.i = phi i32 [ 0, %.preheader2563.i ], [ %i.bkb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18063021.i = phi ptr [ %.08053027.i, %.preheader2563.i ], [ %i.bka, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18083020.i = phi ptr [ %.08073026.i, %.preheader2563.i ], [ %i.bjz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.arl = load <2 x float>, ptr %i.aqn, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.bd, %bb.bc
  %i.arm = phi <2 x float> [ %i.arl, %bb.bd ], [ zeroinitializer, %bb.bc ]
  br i1 %i.gi, label %.preheader2561.lr.ph.i, label %._crit_edge2835.i

.preheader2561.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.arn = load i32, ptr %i.d, align 4
  %i.aro = load i32, ptr %i.j, align 4
  %invariant.op2824.i = sub i32 %.neg2517.i, %i.aro
  %i.arp = load i32, ptr %i.f, align 4            ; 2 uses
  %i.arq = load i32, ptr %i.a, align 4
  %.fr3235.i = freeze i32 %i.arq                  ; 2 uses
  %i.arr = load i32, ptr %i.c, align 4
  %i.ars = load i32, ptr %i.i, align 4
  %.neg2519.i = add nuw nsw i32 %.08033022.i, 1
  %invariant.op2815.i = sub i32 %.neg2519.i, %i.ars
  %i.art = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aru = icmp sgt i32 %.fr3235.i, 0
  %or.cond3730.i = and i1 %i.ara, %i.aru
  br i1 %or.cond3730.i, label %.preheader2561.us.us.preheader.i, label %._crit_edge2835.i

.preheader2561.us.us.preheader.i:                 ; preds = %.preheader2561.lr.ph.i
  %i.arv = zext nneg i32 %.fr3235.i to i64        ; 2 uses
  br label %.preheader2561.us.us.i

.preheader2561.us.us.i:                           ; preds = %._crit_edge2821.split.us.us.us.i, %.preheader2561.us.us.preheader.i
  %indvars.iv3417.i = phi i64 [ 0, %.preheader2561.us.us.preheader.i ], [ %indvars.iv.next3418.i, %._crit_edge2821.split.us.us.us.i ] ; 11 uses
  %.07672831.us.us.i = phi ptr [ %i.aqy, %.preheader2561.us.us.preheader.i ], [ %i.awc, %._crit_edge2821.split.us.us.us.i ] ; 2 uses
  %.024492830.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2561.us.us.preheader.i ], [ %.42453.us.us.us.i, %._crit_edge2821.split.us.us.us.i ]
  %.024542829.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2561.us.us.preheader.i ], [ %.42458.us.us.us.i, %._crit_edge2821.split.us.us.us.i ]
  %i.arw = lshr exact i64 %indvars.iv3417.i, 2    ; 2 uses
  %i.arx = or disjoint i64 %i.arw, 1
  %i.ary = lshr exact i64 %indvars.iv3417.i, 3
  %i.arz = or disjoint i64 %indvars.iv3417.i, 1
  %i.asa = or disjoint i64 %indvars.iv3417.i, 2
  %i.asb = or disjoint i64 %indvars.iv3417.i, 3
  %i.asc = or disjoint i64 %indvars.iv3417.i, 4
  %i.asd = or disjoint i64 %indvars.iv3417.i, 5
  %i.ase = or disjoint i64 %indvars.iv3417.i, 6
  %i.asf = or disjoint i64 %indvars.iv3417.i, 7
  br label %bb.be

bb.be:                                            ; preds = %..loopexit2557_crit_edge.us.us.us.i, %.preheader2561.us.us.i
  %indvars.iv3412.i = phi i64 [ %indvars.iv.next3413.i, %..loopexit2557_crit_edge.us.us.us.i ], [ 0, %.preheader2561.us.us.i ] ; 3 uses
  %.124502818.us.us.us.i = phi <8 x float> [ %.42453.us.us.us.i, %..loopexit2557_crit_edge.us.us.us.i ], [ %.024492830.us.us.i, %.preheader2561.us.us.i ] ; 3 uses
  %.124552817.us.us.us.i = phi <8 x float> [ %.42458.us.us.us.i, %..loopexit2557_crit_edge.us.us.us.i ], [ %.024542829.us.us.i, %.preheader2561.us.us.i ] ; 3 uses
  %i.asg = trunc i64 %indvars.iv3412.i to i32
  %i.ash = mul i32 %i.arn, %i.asg
  %.reass2825.us.us.us.i = add i32 %i.ash, %invariant.op2824.i ; 3 uses
  %i.asi = icmp slt i32 %.reass2825.us.us.us.i, 0
  br i1 %i.asi, label %..loopexit2557_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.asj = srem i32 %.reass2825.us.us.us.i, %i.arp
  %i.ask = sdiv i32 %.reass2825.us.us.us.i, %i.arp ; 2 uses
  %.not916.us.us.us.i = icmp eq i32 %i.asj, 0
  %.not917.us.us.us.i = icmp slt i32 %i.ask, %i.ga
  %or.cond323 = select i1 %.not916.us.us.us.i, i1 %.not917.us.us.us.i, i1 false
  br i1 %or.cond323, label %.preheader2556.us.us.us.i, label %..loopexit2557_crit_edge.us.us.us.i

bb.bg:                                            ; preds = %.preheader2556.us.us.us.i, %bb.bj
  %indvars.iv3407.i = phi i64 [ 0, %.preheader2556.us.us.us.i ], [ %indvars.iv.next3408.i, %bb.bj ] ; 3 uses
  %.224512811.us.us.us.i = phi <8 x float> [ %.124502818.us.us.us.i, %.preheader2556.us.us.us.i ], [ %.32452.us.us.us.i, %bb.bj ] ; 4 uses
  %.224562810.us.us.us.i = phi <8 x float> [ %.124552817.us.us.us.i, %.preheader2556.us.us.us.i ], [ %.32457.us.us.us.i, %bb.bj ] ; 4 uses
  %i.asl = trunc i64 %indvars.iv3407.i to i32
  %i.asm = mul i32 %i.arr, %i.asl
  %.reass2816.us.us.us.i = add i32 %invariant.op2815.i, %i.asm ; 3 uses
  %i.asn = icmp slt i32 %.reass2816.us.us.us.i, 0
  br i1 %i.asn, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aso = srem i32 %.reass2816.us.us.us.i, %i.art
  %i.asp = sdiv i32 %.reass2816.us.us.us.i, %i.art ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.aso, 0
  %.not919.us.us.us.i = icmp slt i32 %i.asp, %i.fz
  %or.cond324 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond324, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.asq = add nuw nsw i64 %indvars.iv3407.i, %i.avz
  %i.asr = shl i64 %i.asq, 4
  %i.ass = and i64 %i.asr, 4294967280
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %.07672831.us.us.i, i64 %i.ass ; 2 uses
  switch i32 %.fr2881.i, label %bb.bj [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.bi
  %i.asu = load ptr, ptr %1, align 8, !tbaa !18, !noalias !572
  %i.asv = load i64, ptr %i.gj, align 8, !tbaa !20, !noalias !572
  %i.asw = load i64, ptr %i.gk, align 8, !tbaa !57, !noalias !572 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.asw, %i.asv ; 8 uses
  %i.asx = mul i64 %i.awb, %i.asw
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.asu, i64 %i.asx
  %i.asy = sext i32 %i.asp to i64
  %invariant.gep2807.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.asy ; 8 uses
  %.reass.us.us2847.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3417.i
  %gep2808.us.us.us.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.i
  %i.asz = load i16, ptr %gep2808.us.us.us.i, align 2, !tbaa !461
  %.reass.us.us2847.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.arz
  %gep2808.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.1.i
  %i.ata = load i16, ptr %gep2808.us.us.us.1.i, align 2, !tbaa !461
  %.reass.us.us2847.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.asa
  %gep2808.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.2.i
  %i.atb = load i16, ptr %gep2808.us.us.us.2.i, align 2, !tbaa !461
  %.reass.us.us2847.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.asb
  %gep2808.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.3.i
  %i.atc = load i16, ptr %gep2808.us.us.us.3.i, align 2, !tbaa !461
  %.reass.us.us2847.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.asc
  %gep2808.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.4.i
  %i.atd = load i16, ptr %gep2808.us.us.us.4.i, align 2, !tbaa !461
  %.reass.us.us2847.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.asd
  %gep2808.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.5.i
  %i.ate = load i16, ptr %gep2808.us.us.us.5.i, align 2, !tbaa !461
  %.reass.us.us2847.us.6.i = mul i64 %factor.op.mul.us.us.us.i, %i.ase
  %gep2808.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.6.i
  %i.atf = load i16, ptr %gep2808.us.us.us.6.i, align 2, !tbaa !461
  %.reass.us.us2847.us.7.i = mul i64 %factor.op.mul.us.us.us.i, %i.asf
  %gep2808.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2807.us.us.us.i, i64 %.reass.us.us2847.us.7.i
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.fz = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !39
  store <8 x float> %broadcast.splat, ptr %i.fx, align 4, !tbaa !39
  store <8 x float> %broadcast.splat, ptr %i.fy, align 4, !tbaa !39
  store <8 x float> %broadcast.splat, ptr %i.fz, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gb = getelementptr i8, ptr %i.fs, i64 %i.fd
  %broadcast.splatinsert175 = insertelement <8 x float> poison, float %i.fu, i64 0
  %broadcast.splat176 = shufflevector <8 x float> %broadcast.splatinsert175, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 2 uses
  %i.gc = shl i64 %index177, 2
  %next.gep178 = getelementptr i8, ptr %i.fs, i64 %i.gc
  store <8 x float> %broadcast.splat176, ptr %next.gep178, align 4, !tbaa !39
  %index.next179 = add nuw i64 %index177, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !675

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n180, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i55.us112.ph = phi i32 [ 0, %iter.check ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ]
  %.05.i54.us113.ph = phi ptr [ %i.fs, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0.i55.us112 = phi i32 [ %i.gf, %vec.epilog.scalar.ph ], [ %.0.i55.us112.ph, %vec.epilog.scalar.ph.preheader ]
  %.05.i54.us113 = phi ptr [ %i.ge, %vec.epilog.scalar.ph ], [ %.05.i54.us113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i54.us113, i64 4
  store float %i.fu, ptr %.05.i54.us113, align 4, !tbaa !39
  %i.gf = add nuw nsw i32 %.0.i55.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %i.an
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.scalar.ph, !llvm.loop !676

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.ex, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %iter.check

._crit_edge.loopexit215.unr-lcssa:                ; preds = %.noexc44.us98
  %lcmp.mod223.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %._crit_edge, label %.noexc44.us98.epil.preheader

.noexc44.us98.epil.preheader:                     ; preds = %._crit_edge.loopexit215.unr-lcssa, %.noexc44.us98.preheader
  %indvar129.epil.init = phi i64 [ 0, %.noexc44.us98.preheader ], [ %indvar.next130.3, %._crit_edge.loopexit215.unr-lcssa ]
  %lcmp.mod224 = icmp ne i32 %xtraiter221, 0
  call void @llvm.assume(i1 %lcmp.mod224)
  br label %.noexc44.us98.epil

.noexc44.us98.epil:                               ; preds = %.noexc44.us98.epil, %.noexc44.us98.epil.preheader
  %indvar129.epil = phi i64 [ %indvar129.epil.init, %.noexc44.us98.epil.preheader ], [ %indvar.next130.epil, %.noexc44.us98.epil ] ; 2 uses
  %epil.iter222 = phi i32 [ 0, %.noexc44.us98.epil.preheader ], [ %epil.iter222.next, %.noexc44.us98.epil ]
  %i.gg = add i64 %indvar129.epil, %i.ec
  %i.gh = mul i64 %factor.op.mul86, %i.gg
  %scevgep131.epil = getelementptr i8, ptr %i.s, i64 %i.gh
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep131.epil, i8 0, i64 %i.ee, i1 false), !tbaa !39
  %indvar.next130.epil = add nuw nsw i64 %indvar129.epil, 1
  %epil.iter222.next = add i32 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i32 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %._crit_edge, label %.noexc44.us98.epil, !llvm.loop !677

._crit_edge.loopexit216.unr-lcssa:                ; preds = %.noexc44.us108.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.noexc44.us108.us.epil.preheader

.noexc44.us108.us.epil.preheader:                 ; preds = %._crit_edge.loopexit216.unr-lcssa, %.noexc44.us108.us.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc44.us108.us.preheader ], [ %indvar.next.3, %._crit_edge.loopexit216.unr-lcssa ]
  %lcmp.mod218 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.noexc44.us108.us.epil

.noexc44.us108.us.epil:                           ; preds = %.noexc44.us108.us.epil, %.noexc44.us108.us.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc44.us108.us.epil.preheader ], [ %indvar.next.epil, %.noexc44.us108.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc44.us108.us.epil.preheader ], [ %epil.iter.next, %.noexc44.us108.us.epil ]
  %i.gi = add i64 %indvar.epil, %i.ew
  %i.gj = mul i64 %factor.op.mul86, %i.gi
  %scevgep.epil = getelementptr i8, ptr %i.s, i64 %i.gj
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ff, i1 false), !tbaa !39
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.noexc44.us108.us.epil, !llvm.loop !678

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, %._crit_edge.loopexit216.unr-lcssa, %.noexc44.us108.us.epil, %._crit_edge.loopexit215.unr-lcssa, %.noexc44.us98.epil, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not1424 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1424, label %._crit_edge1426, label %.noexc527.lr.ph

.noexc527.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !279
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1426

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1423.split
  %.03391425 = phi i32 [ %i.bi, %._crit_edge1423.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !68
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !70
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !279 ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !279 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !68  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader1258.lr.ph, label %._crit_edge1423.split

.preheader1258.lr.ph:                             ; preds = %.noexc527
  %i.aj = load i32, ptr %3, align 4, !tbaa !69
  %i.ak = shl nsw i32 %.03391425, 3
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 7
  br i1 %i.am, label %.preheader1258.preheader, label %._crit_edge1423.split

.preheader1258.preheader:                         ; preds = %.preheader1258.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !679
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !679
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !679
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -8                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483644
  %narrow = add nuw i32 %i.bb, 4
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -8
  %i.be = add i32 %i.bd, 8
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -8
  %i.bh = add i32 %i.bg, 8
  %invariant.op = add nsw i64 %i.bf, -7
  br label %.preheader1258

.preheader1258:                                   ; preds = %.preheader1258.preheader, %._crit_edge
  %.03341422 = phi i32 [ %.neg1242, %._crit_edge ], [ 0, %.preheader1258.preheader ]
  %.03351421 = phi ptr [ %.4, %._crit_edge ], [ %i.ay, %.preheader1258.preheader ]
  %.neg1242 = add nuw nsw i32 %.03341422, 1       ; 6 uses
  br label %bb.c

._crit_edge1423.split:                            ; preds = %._crit_edge, %.preheader1258.lr.ph, %.noexc527
  %i.bi = add i32 %.03391425, 1
  %exitcond1487.not = icmp eq i32 %.03391425, %i.j
  br i1 %exitcond1487.not, label %._crit_edge1426, label %.noexc527, !llvm.loop !682

._crit_edge:                                      ; preds = %.thread1227
  %exitcond1486.not = icmp eq i32 %.neg1242, %i.ag
  br i1 %exitcond1486.not, label %._crit_edge1423.split, label %.preheader1258, !llvm.loop !683

bb.c:                                             ; preds = %.preheader1258, %.thread1227
  %.03331420 = phi i32 [ 0, %.preheader1258 ], [ %i.abq, %.thread1227 ] ; 5 uses
  %.13361419 = phi ptr [ %.03351421, %.preheader1258 ], [ %.4, %.thread1227 ] ; 15 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !314   ; 2 uses
  %.not364 = icmp eq ptr %i.bj, null
  br i1 %.not364, label %_ZN4ncnn3MatD2Ev.exit404, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <8 x float>, ptr %i.bk, align 1, !tbaa !310
  br label %_ZN4ncnn3MatD2Ev.exit404

_ZN4ncnn3MatD2Ev.exit404:                         ; preds = %bb.d, %bb.c
  %.01177 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !18, !noalias !684 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !684
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !684
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader1254.lr.ph, label %.preheader1257

.preheader1254.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit404
  %i.bs = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg1244 = add nuw nsw i32 %.03331420, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !69
  %i.bv = shl i32 %i.bu, 6
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader1254.lr.ph.split.us, label %.preheader1254.preheader

.preheader1254.preheader:                         ; preds = %.preheader1254.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader1257

.preheader1254.lr.ph.split.us:                    ; preds = %.preheader1254.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !69
  %i.ca = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1277.us = sub i32 %.neg1242, %i.ca
  br label %.preheader1254.us

.preheader1254.us:                                ; preds = %._crit_edge.us, %.preheader1254.lr.ph.split.us
  %indvars.iv1447 = phi i64 [ %indvars.iv.next1448, %._crit_edge.us ], [ 0, %.preheader1254.lr.ph.split.us ] ; 11 uses
  %.03291283.us = phi ptr [ %i.ki, %._crit_edge.us ], [ %i.br, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.111781282.us = phi <8 x float> [ %.7.us, %._crit_edge.us ], [ %.01177, %.preheader1254.lr.ph.split.us ]
  %.011821281.us = phi <8 x float> [ %.61188.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %.012001280.us = phi <8 x float> [ %.61206.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %.012131279.us = phi <8 x float> [ %.61219.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1254.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv1447, 7
  %i.cc = or disjoint i64 %indvars.iv1447, 1
  %i.cd = or disjoint i64 %indvars.iv1447, 2
  %i.ce = or disjoint i64 %indvars.iv1447, 3
  %i.cf = or disjoint i64 %indvars.iv1447, 4
  %i.cg = or disjoint i64 %indvars.iv1447, 5
  %i.ch = or disjoint i64 %indvars.iv1447, 6
  %i.ci = lshr exact i64 %indvars.iv1447, 2       ; 2 uses
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = lshr exact i64 %indvars.iv1447, 3
  br label %bb.e

bb.e:                                             ; preds = %.preheader1254.us, %.loopexit1250.us
  %.03271271.us = phi i32 [ 0, %.preheader1254.us ], [ %i.kb, %.loopexit1250.us ] ; 3 uses
  %.211791270.us = phi <8 x float> [ %.111781282.us, %.preheader1254.us ], [ %.7.us, %.loopexit1250.us ] ; 4 uses
  %.111831269.us = phi <8 x float> [ %.011821281.us, %.preheader1254.us ], [ %.61188.us, %.loopexit1250.us ] ; 4 uses
  %.112011268.us = phi <8 x float> [ %.012001280.us, %.preheader1254.us ], [ %.61206.us, %.loopexit1250.us ] ; 4 uses
  %.112141267.us = phi <8 x float> [ %.012131279.us, %.preheader1254.us ], [ %.61219.us, %.loopexit1250.us ] ; 4 uses
  %i.cl = mul nsw i32 %i.bz, %.03271271.us
  %.reass1278.us = add i32 %i.cl, %invariant.op1277.us ; 3 uses
  %i.cm = icmp slt i32 %.reass1278.us, 0
  br i1 %i.cm, label %.loopexit1250.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load i32, ptr %11, align 4, !tbaa !69   ; 2 uses
  %i.co = srem i32 %.reass1278.us, %i.cn
  %i.cp = sdiv i32 %.reass1278.us, %i.cn          ; 2 uses
  %.not382.us = icmp eq i32 %i.co, 0
  %.not383.us = icmp slt i32 %i.cp, %i.ae
  %or.cond = select i1 %.not382.us, i1 %.not383.us, i1 false
  br i1 %or.cond, label %.preheader1249.us, label %.loopexit1250.us

bb.g:                                             ; preds = %.lr.ph.us, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.311801262.us = phi <8 x float> [ %.211791270.us, %.lr.ph.us ], [ %.6.us, %bb.k ] ; 4 uses
  %.211841261.us = phi <8 x float> [ %.111831269.us, %.lr.ph.us ], [ %.51187.us, %bb.k ] ; 4 uses
  %.212021260.us = phi <8 x float> [ %.112011268.us, %.lr.ph.us ], [ %.51205.us, %bb.k ] ; 4 uses
  %.212151259.us = phi <8 x float> [ %.112141267.us, %.lr.ph.us ], [ %.51218.us, %bb.k ] ; 4 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.ke, %i.cq
  %.reass.us = add i32 %i.cr, %invariant.op.us    ; 3 uses
  %i.cs = icmp slt i32 %.reass.us, 0
  br i1 %i.cs, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.cu = srem i32 %.reass.us, %i.ct
  %i.cv = sdiv i32 %.reass.us, %i.ct              ; 4 uses
  %.not384.us = icmp eq i32 %i.cu, 0
  %.not385.us = icmp slt i32 %i.cv, %i.ad
  %or.cond1559 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1559, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.kg, %i.cw
  %i.cy = shl nsw i32 %i.cx, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.03291283.us, i64 %i.cz ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.db = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !687
  %i.dc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !687 ; 8 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !687 ; 8 uses
  %i.de = mul i64 %i.dd, %indvars.iv1447
  %i.df = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !687 ; 9 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.kh
  %i.dk = mul i64 %i.dj, %i.df                    ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 8 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = mul i64 %i.dd, %i.cc
  %i.dp = mul i64 %i.do, %i.df
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = mul i64 %i.dd, %i.cd
  %i.du = mul i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dk
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = mul i64 %i.dd, %i.ce
  %i.dz = mul i64 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dm
  %i.ed = mul i64 %i.dd, %i.cf
  %i.ee = mul i64 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dk
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.dm
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = mul i64 %i.dd, %i.cb
  %i.es = mul i64 %i.er, %i.df
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dk
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load float, ptr %i.dn, align 1, !tbaa !310
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fa = load float, ptr %i.ds, align 1, !tbaa !310
  %i.fb = insertelement <8 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load float, ptr %i.dx, align 1, !tbaa !310
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = load float, ptr %i.ec, align 1, !tbaa !310
  %i.fh = insertelement <8 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load float, ptr %i.eh, align 1, !tbaa !310
  %i.fk = insertelement <8 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> zeroinitializer
end_hunk_4
begin_hunk_5_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  store <8 x float> %.0.i, ptr %.13361419, align 32, !tbaa !310
  %i.abb = getelementptr inbounds nuw i8, ptr %.13361419, i64 32
  br label %.thread1227

bb.ae:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.abc = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.abc, ptr %.13361419, align 16, !tbaa !310
  %i.abd = load i64, ptr %19, align 8, !tbaa !313
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.13361419, i64 %i.abd
  %i.abf = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.abf, ptr %i.abe, align 16, !tbaa !310
  %i.abg = getelementptr inbounds nuw i8, ptr %.13361419, i64 16
  br label %.thread1227

bb.af:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <8 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.13361419, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <8 x float> %.0.i, i64 1
  %i.abh = load i64, ptr %19, align 8, !tbaa !313 ; 7 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.13361419, i64 %i.abh
  store float %.sroa.0.4.vec.extract, ptr %i.abi, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %.idx = shl i64 %i.abh, 3
  %i.abj = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.abj, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %.idx365 = mul i64 %i.abh, 12
  %i.abk = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx365
  store float %.sroa.0.12.vec.extract, ptr %i.abk, align 4, !tbaa !39
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %.idx366 = shl i64 %i.abh, 4
  %i.abl = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx366
  store float %.sroa.0.16.vec.extract, ptr %i.abl, align 4, !tbaa !39
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %.idx367 = mul i64 %i.abh, 20
  %i.abm = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx367
  store float %.sroa.0.20.vec.extract, ptr %i.abm, align 4, !tbaa !39
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %.idx368 = mul i64 %i.abh, 24
  %i.abn = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx368
  store float %.sroa.0.24.vec.extract, ptr %i.abn, align 4, !tbaa !39
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %.idx369 = mul i64 %i.abh, 28
  %i.abo = getelementptr inbounds nuw i8, ptr %.13361419, i64 %.idx369
  store float %.sroa.0.28.vec.extract, ptr %i.abo, align 4, !tbaa !39
  %i.abp = getelementptr inbounds nuw i8, ptr %.13361419, i64 4
  br label %.thread1227

.thread1227:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ae, %.thread, %bb.af
  %.4 = phi ptr [ %i.abp, %bb.af ], [ %.13361419, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.abb, %.thread ], [ %i.abg, %bb.ae ] ; 2 uses
  %i.abq = add nuw nsw i32 %.03331420, 1          ; 2 uses
  %exitcond1485.not = icmp eq i32 %i.abq, %i.af
  br i1 %exitcond1485.not, label %._crit_edge, label %bb.c, !llvm.loop !720

._crit_edge1426:                                  ; preds = %._crit_edge1423.split, %.noexc527.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1426, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #15

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not1497 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1497, label %._crit_edge1499, label %.noexc527.lr.ph

.noexc527.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !279
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1499

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1496.split
  %.03391498 = phi i32 [ %i.bi, %._crit_edge1496.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !68
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !70
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !279 ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !279 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !68  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader1331.lr.ph, label %._crit_edge1496.split

.preheader1331.lr.ph:                             ; preds = %.noexc527
  %i.aj = load i32, ptr %3, align 4, !tbaa !69
  %i.ak = shl nsw i32 %.03391498, 3
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 8
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 7
  br i1 %i.am, label %.preheader1331.preheader, label %._crit_edge1496.split

.preheader1331.preheader:                         ; preds = %.preheader1331.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !721
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !721
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !721
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -8                       ; 3 uses
  %i.ba = lshr i32 %i.az, 2
  %i.bb = and i32 %i.ba, 1073741822
  %narrow = add nuw nsw i32 %i.bb, 2
  %i.bc = zext nneg i32 %narrow to i64
  %i.bd = and i32 %i.az, -8
  %i.be = add i32 %i.bd, 8
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -8
  %i.bh = add i32 %i.bg, 8
  %invariant.op = add nsw i64 %i.bf, -7
  br label %.preheader1331

.preheader1331:                                   ; preds = %.preheader1331.preheader, %._crit_edge
  %.03341495 = phi i32 [ %.neg1315, %._crit_edge ], [ 0, %.preheader1331.preheader ]
  %.03351494 = phi ptr [ %.4, %._crit_edge ], [ %i.ay, %.preheader1331.preheader ]
  %.neg1315 = add nuw nsw i32 %.03341495, 1       ; 6 uses
  br label %bb.c

._crit_edge1496.split:                            ; preds = %._crit_edge, %.preheader1331.lr.ph, %.noexc527
  %i.bi = add i32 %.03391498, 1
  %exitcond1560.not = icmp eq i32 %.03391498, %i.j
  br i1 %exitcond1560.not, label %._crit_edge1499, label %.noexc527, !llvm.loop !724

._crit_edge:                                      ; preds = %.thread1300
  %exitcond1559.not = icmp eq i32 %.neg1315, %i.ag
  br i1 %exitcond1559.not, label %._crit_edge1496.split, label %.preheader1331, !llvm.loop !725

bb.c:                                             ; preds = %.preheader1331, %.thread1300
  %.03331493 = phi i32 [ 0, %.preheader1331 ], [ %i.ail, %.thread1300 ] ; 5 uses
  %.13361492 = phi ptr [ %.03351494, %.preheader1331 ], [ %.4, %.thread1300 ] ; 15 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !314   ; 2 uses
  %.not364 = icmp eq ptr %i.bj, null
  br i1 %.not364, label %_ZN4ncnn3MatD2Ev.exit404, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <8 x float>, ptr %i.bk, align 1, !tbaa !310
  br label %_ZN4ncnn3MatD2Ev.exit404

_ZN4ncnn3MatD2Ev.exit404:                         ; preds = %bb.d, %bb.c
  %.01250 = phi nsz <8 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !18, !noalias !726 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !726
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !726
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader1327.lr.ph, label %.preheader1330

.preheader1327.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit404
  %i.bs = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg1317 = add nuw nsw i32 %.03331493, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !69
  %i.bv = shl i32 %i.bu, 6
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader1327.lr.ph.split.us, label %.preheader1327.preheader

.preheader1327.preheader:                         ; preds = %.preheader1327.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader1330

.preheader1327.lr.ph.split.us:                    ; preds = %.preheader1327.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !69
  %i.ca = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1350.us = sub i32 %.neg1315, %i.ca
  br label %.preheader1327.us

.preheader1327.us:                                ; preds = %._crit_edge.us, %.preheader1327.lr.ph.split.us
  %indvars.iv1520 = phi i64 [ %indvars.iv.next1521, %._crit_edge.us ], [ 0, %.preheader1327.lr.ph.split.us ] ; 11 uses
  %.03291356.us = phi ptr [ %i.nm, %._crit_edge.us ], [ %i.br, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.112511355.us = phi <8 x float> [ %.7.us, %._crit_edge.us ], [ %.01250, %.preheader1327.lr.ph.split.us ]
  %.012551354.us = phi <8 x float> [ %.61261.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %.012731353.us = phi <8 x float> [ %.61279.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %.012861352.us = phi <8 x float> [ %.61292.us, %._crit_edge.us ], [ zeroinitializer, %.preheader1327.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv1520, 7
  %i.cc = or disjoint i64 %indvars.iv1520, 1
  %i.cd = or disjoint i64 %indvars.iv1520, 2
  %i.ce = or disjoint i64 %indvars.iv1520, 3
  %i.cf = or disjoint i64 %indvars.iv1520, 4
  %i.cg = or disjoint i64 %indvars.iv1520, 5
  %i.ch = or disjoint i64 %indvars.iv1520, 6
  %i.ci = lshr exact i64 %indvars.iv1520, 2       ; 2 uses
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = lshr exact i64 %indvars.iv1520, 3
  br label %bb.e

bb.e:                                             ; preds = %.preheader1327.us, %.loopexit1323.us
  %.03271344.us = phi i32 [ 0, %.preheader1327.us ], [ %i.nf, %.loopexit1323.us ] ; 3 uses
  %.212521343.us = phi <8 x float> [ %.112511355.us, %.preheader1327.us ], [ %.7.us, %.loopexit1323.us ] ; 4 uses
  %.112561342.us = phi <8 x float> [ %.012551354.us, %.preheader1327.us ], [ %.61261.us, %.loopexit1323.us ] ; 4 uses
  %.112741341.us = phi <8 x float> [ %.012731353.us, %.preheader1327.us ], [ %.61279.us, %.loopexit1323.us ] ; 4 uses
  %.112871340.us = phi <8 x float> [ %.012861352.us, %.preheader1327.us ], [ %.61292.us, %.loopexit1323.us ] ; 4 uses
  %i.cl = mul nsw i32 %i.bz, %.03271344.us
  %.reass1351.us = add i32 %i.cl, %invariant.op1350.us ; 3 uses
  %i.cm = icmp slt i32 %.reass1351.us, 0
  br i1 %i.cm, label %.loopexit1323.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load i32, ptr %11, align 4, !tbaa !69   ; 2 uses
  %i.co = srem i32 %.reass1351.us, %i.cn
  %i.cp = sdiv i32 %.reass1351.us, %i.cn          ; 2 uses
  %.not382.us = icmp eq i32 %i.co, 0
  %.not383.us = icmp slt i32 %i.cp, %i.ae
  %or.cond = select i1 %.not382.us, i1 %.not383.us, i1 false
  br i1 %or.cond, label %.preheader1322.us, label %.loopexit1323.us

bb.g:                                             ; preds = %.lr.ph.us, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.312531335.us = phi <8 x float> [ %.212521343.us, %.lr.ph.us ], [ %.6.us, %bb.k ] ; 4 uses
  %.212571334.us = phi <8 x float> [ %.112561342.us, %.lr.ph.us ], [ %.51260.us, %bb.k ] ; 4 uses
  %.212751333.us = phi <8 x float> [ %.112741341.us, %.lr.ph.us ], [ %.51278.us, %bb.k ] ; 4 uses
  %.212881332.us = phi <8 x float> [ %.112871340.us, %.lr.ph.us ], [ %.51291.us, %bb.k ] ; 4 uses
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = mul i32 %i.ni, %i.cq
  %.reass.us = add i32 %i.cr, %invariant.op.us    ; 3 uses
  %i.cs = icmp slt i32 %.reass.us, 0
  br i1 %i.cs, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.cu = srem i32 %.reass.us, %i.ct
  %i.cv = sdiv i32 %.reass.us, %i.ct              ; 4 uses
  %.not384.us = icmp eq i32 %i.cu, 0
  %.not385.us = icmp slt i32 %i.cv, %i.ad
  %or.cond1715 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1715, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.nk, %i.cw
  %i.cy = shl nsw i32 %i.cx, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.03291356.us, i64 %i.cz ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.db = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !729
  %i.dc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !729 ; 8 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !729 ; 8 uses
  %i.de = mul i64 %i.dd, %indvars.iv1520
  %i.df = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !729 ; 9 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.nl
  %i.dk = mul i64 %i.dj, %i.df                    ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 8 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.dl, i64 %i.dm
  %i.do = mul i64 %i.dd, %i.cc
  %i.dp = mul i64 %i.do, %i.df
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = mul i64 %i.dd, %i.cd
  %i.du = mul i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dk
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = mul i64 %i.dd, %i.ce
  %i.dz = mul i64 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.dm
  %i.ed = mul i64 %i.dd, %i.cf
  %i.ee = mul i64 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dk
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.dm
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.dm
  %i.es = mul i64 %i.dd, %i.cb
  %i.et = mul i64 %i.es, %i.df
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.dk
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load i16, ptr %i.dn, align 2, !tbaa !461
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load i16, ptr %i.ds, align 2, !tbaa !461
  %i.fe = zext i16 %i.fd to i32
  %i.ff = shl nuw i32 %i.fe, 16
  %i.fg = insertelement <8 x i32> poison, i32 %i.ff, i64 0
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load i16, ptr %i.dx, align 2, !tbaa !461
  %i.fk = zext i16 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 16
end_hunk_5
